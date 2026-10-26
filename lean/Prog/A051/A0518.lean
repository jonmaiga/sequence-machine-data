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
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051800: Numbers k such that 1 plus twice the product of the first k primes is also a prime.

The programs for A051800, there is no canonical definition to state claims against.
-/

/-! ## A051800.P17519238093526248502

`A000720(A119834(n+1))`
-/

namespace A051800.P17519238093526248502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119834 (n + 1)).toNat

end

end A051800.P17519238093526248502

/-! ## A051800.P3846921023970674062

`eq[1, A098929(n+1)]+1`
-/

namespace A051800.P3846921023970674062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051800.P3846921023970674062

/-! ## A051800.P1590158935311166486

`eq[2, A051887(n+1)]+1`
-/

namespace A051800.P1590158935311166486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051887 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051800.P1590158935311166486

/-!
# A051801: Product of the nonzero digits of n.

The programs for A051801, the canonical program `A051801.P15997932515151970978` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051801 has offset 0).

The definition of A051801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051801.P15997932515151970978

`∏{digits}[n, gcd(#, #!²)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051801

/-- `∏{digits}[n, gcd(#, #!²)]` -/
def P15997932515151970978.Spec : Prop :=
  ∀ n, (P15997932515151970978.a n : ℤ) = A051801 n

theorem P15997932515151970978.correct : P15997932515151970978.Spec := by
  intro n
  simp only [A051801]

end A051801

/-! ## A051801.P3265338572631568941

`∏{digits}[n, #^ceil(#/(n+1))]`
-/

namespace A051801.P3265338572631568941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (⌈(x : ℚ) / (n + 1 : ℚ)⌉ : ℤ)).prod

end

end A051801.P3265338572631568941

namespace A051801

/-- `∏{digits}[n, #^ceil(#/(n+1))]` -/
def P3265338572631568941.Spec : Prop :=
  ∀ n, P3265338572631568941.a n = (A051801 n : ℚ)

end A051801

/-! ## A051801.P9688381037489280023

`∏{digits}[n, A219209(#)]%(n+2)`
-/

namespace A051801.P9688381037489280023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219209 x).prod (n + 2 : ℤ)

end

end A051801.P9688381037489280023

namespace A051801

/-- `∏{digits}[n, A219209(#)]%(n+2)` -/
def P9688381037489280023.Spec : Prop :=
  ∀ n, P9688381037489280023.a n = A051801 n

end A051801

/-! ## A051801.P5842524732181777439

`A089898(A235049(n))`
-/

namespace A051801.P5842524732181777439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A235049 n).toNat

end

end A051801.P5842524732181777439

namespace A051801

/-- `A089898(A235049(n))` -/
def P5842524732181777439.Spec : Prop :=
  ∀ n, P5842524732181777439.a n = A051801 n

end A051801

/-! ## A051801.P11595923361833124743

`A007954(A004185(A000007(n)+n))`
-/

namespace A051801.P11595923361833124743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004185 (A000007 n + (n : ℤ)).toNat).toNat

end

end A051801.P11595923361833124743

namespace A051801

/-- `A007954(A004185(A000007(n)+n))` -/
def P11595923361833124743.Spec : Prop :=
  ∀ n, P11595923361833124743.a n = A051801 n

end A051801

/-! ## A051801.P4001693194574534026

`A063114(A028310(n))-A028310(n)`
-/

namespace A051801.P4001693194574534026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (A028310 n).toNat - A028310 n

end

end A051801.P4001693194574534026

namespace A051801

/-- `A063114(A028310(n))-A028310(n)` -/
def P4001693194574534026.Spec : Prop :=
  ∀ n, P4001693194574534026.a n = A051801 n

end A051801

/-! ## A051801.P6039058527757526920

`A004525(2*∏{digits}[n, A219209(#)])`
-/

namespace A051801.P6039058527757526920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219209 x).prod).toNat

end

end A051801.P6039058527757526920

namespace A051801

/-- `A004525(2*∏{digits}[n, A219209(#)])` -/
def P6039058527757526920.Spec : Prop :=
  ∀ n, P6039058527757526920.a n = A051801 n

end A051801

/-! ## A051801.P10402660119885807419

`A230101(A017281(n))/A017281(n)`
-/

namespace A051801.P10402660119885807419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230101 (A017281 n).toNat : ℚ) / (A017281 n : ℚ)

end

end A051801.P10402660119885807419

namespace A051801

/-- `A230101(A017281(n))/A017281(n)` -/
def P10402660119885807419.Spec : Prop :=
  ∀ n, P10402660119885807419.a n = (A051801 n : ℚ)

end A051801

/-! ## A051801.P7464242951670514779

`gcd(A230101(A017281(n)), A230101(n))`
-/

namespace A051801.P7464242951670514779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230101 (A017281 n).toNat) (A230101 n)

end

end A051801.P7464242951670514779

namespace A051801

/-- `gcd(A230101(A017281(n)), A230101(n))` -/
def P7464242951670514779.Spec : Prop :=
  ∀ n, (P7464242951670514779.a n : ℤ) = A051801 n

end A051801

/-! ## A051801.P7074742151746260243

`A230101(A008706(2*n))/A008706(2*n)`
-/

namespace A051801.P7074742151746260243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230101 (A008706 (2 * n)).toNat : ℚ) / (A008706 (2 * n) : ℚ)

end

end A051801.P7074742151746260243

namespace A051801

/-- `A230101(A008706(2*n))/A008706(2*n)` -/
def P7074742151746260243.Spec : Prop :=
  ∀ n, P7074742151746260243.a n = (A051801 n : ℚ)

end A051801

/-! ## A051801.P11073644029156952306

`A003963(A113581(n))`
-/

namespace A051801.P11073644029156952306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A113581 n).toNat

end

end A051801.P11073644029156952306

namespace A051801

/-- `A003963(A113581(n))` -/
def P11073644029156952306.Spec : Prop :=
  ∀ n, P11073644029156952306.a n = A051801 n

end A051801

/-! ## A051801.P1601412222166120943

`A008706(A230101(n))/A008706(n)`
-/

namespace A051801.P1601412222166120943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 (A230101 n).toNat : ℚ) / (A008706 n : ℚ)

end

end A051801.P1601412222166120943

namespace A051801

/-- `A008706(A230101(n))/A008706(n)` -/
def P1601412222166120943.Spec : Prop :=
  ∀ n, P1601412222166120943.a n = (A051801 n : ℚ)

end A051801

/-! ## A051801.P6497017317612914565

`∏{digits}[n, A219209(#)]^A014963(∑[n+1])`
-/

namespace A051801.P6497017317612914565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219209 x).prod : ℤ) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A051801.P6497017317612914565

namespace A051801

/-- `∏{digits}[n, A219209(#)]^A014963(∑[n+1])` -/
def P6497017317612914565.Spec : Prop :=
  ∀ n, P6497017317612914565.a n = (A051801 n : ℚ)

end A051801

/-!
# A051802: Nonzero multiplicative digital root of n.

The programs for A051802, the canonical program `A051802.P4212363599025183031` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051802 has offset 0).

The definition of A051802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051802.P4212363599025183031

`a(A051801(n))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051802

/-- `a(A051801(n))` -/
def P4212363599025183031.Spec : Prop :=
  ∀ n, (P4212363599025183031.a n : ℤ) = A051802 n

theorem P4212363599025183031.correct : P4212363599025183031.Spec := by
  intro n
  simp only [A051802]

end A051802

/-! ## A051802.P11559039947410453999

`A007954(A051801(A007953(A069035(A051801(n)))))`
-/

namespace A051802.P11559039947410453999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A051801 (A007953 (A069035 (A051801 n).toNat).toNat).toNat).toNat

end

end A051802.P11559039947410453999

namespace A051802

/-- `A007954(A051801(A007953(A069035(A051801(n)))))` -/
def P11559039947410453999.Spec : Prop :=
  ∀ n, P11559039947410453999.a n = A051802 n

end A051802

/-! ## A051802.P8821239184114068246

`A051801(∏{digits}[n, gcd(#, #!²)]%A275249(n+1))`
-/

namespace A051802.P8821239184114068246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℤ) (A275249 (n + 1))).toNat

end

end A051802.P8821239184114068246

namespace A051802

/-- `A051801(∏{digits}[n, gcd(#, #!²)]%A275249(n+1))` -/
def P8821239184114068246.Spec : Prop :=
  ∀ n, P8821239184114068246.a n = A051802 n

end A051802

/-! ## A051802.P12876548790662967347

`A051801(∏{digits}[n, #^ceil(#/(n+1))]%A280636(n+1))`
-/

namespace A051802.P12876548790662967347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (⌈(x : ℚ) / (n + 1 : ℚ)⌉ : ℤ)).prod) (A280636 (n + 1))).toNat

end

end A051802.P12876548790662967347

namespace A051802

/-- `A051801(∏{digits}[n, #^ceil(#/(n+1))]%A280636(n+1))` -/
def P12876548790662967347.Spec : Prop :=
  ∀ n, P12876548790662967347.a n = A051802 n

end A051802

/-! ## A051802.P14106421641937265297

`A051801(A051801(n)%A104576(n+1))`
-/

namespace A051802.P14106421641937265297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (Int.tmod (A051801 n) (A104576 (n + 1))).toNat

end

end A051802.P14106421641937265297

namespace A051802

/-- `A051801(A051801(n)%A104576(n+1))` -/
def P14106421641937265297.Spec : Prop :=
  ∀ n, P14106421641937265297.a n = A051802 n

end A051802

/-!
# A051803: Numbers with nonzero multiplicative digital root 1.

The programs for A051803, the canonical program `A051803.P17294987635553116970` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051803 has offset 1).

The definition of A051803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051803.P1571131551500629300

`eq[1, A051802(A004086(n))]`
-/

namespace A051803.P1571131551500629300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051803.P1571131551500629300

namespace A051803

/-- `eq[1, A051802(A004086(n))]` -/
def P1571131551500629300.Spec : Prop :=
  ∀ n, (P1571131551500629300.a n : ℤ) = A051803 (n + 1)

end A051803

/-! ## A051803.P17294987635553116970

`eq[1, A051802(A051801(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051803

/-- `eq[1, A051802(A051801(n))]` -/
def P17294987635553116970.Spec : Prop :=
  ∀ n, (P17294987635553116970.a n : ℤ) = A051803 (n + 1)

theorem P17294987635553116970.correct : P17294987635553116970.Spec := by
  intro n
  simp only [A051803, Nat.add_sub_cancel]

end A051803

/-! ## A051803.P2529272614998217247

`eq[1, A051802(n)]`
-/

namespace A051803.P2529272614998217247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051803.P2529272614998217247

namespace A051803

/-- `eq[1, A051802(n)]` -/
def P2529272614998217247.Spec : Prop :=
  ∀ n, (P2529272614998217247.a n : ℤ) = A051803 (n + 1)

end A051803

/-! ## A051803.P14877331102901381172

`record[sqrt(A000290(n))/A051802(n)]`
-/

namespace A051803.P14877331102901381172
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000290 n : ℝ) / (A051802 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051803.P14877331102901381172

namespace A051803

/-- `record[sqrt(A000290(n))/A051802(n)]` -/
def P14877331102901381172.Spec : Prop :=
  ∀ n, P14877331102901381172.a n = (A051803 (n + 1) : ℝ)

end A051803

/-! ## A051803.P2300491093813390542

`record[A057163(A057163(n))/A051802(n)]`
-/

namespace A051803.P2300491093813390542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057163 (A057163 n).toNat : ℚ) / (A051802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051803.P2300491093813390542

namespace A051803

/-- `record[A057163(A057163(n))/A051802(n)]` -/
def P2300491093813390542.Spec : Prop :=
  ∀ n, P2300491093813390542.a n = (A051803 (n + 1) : ℚ)

end A051803

/-! ## A051803.P7458457441337865756

`record[A004526(2*n)/A051802(n)]`
-/

namespace A051803.P7458457441337865756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * n) : ℚ) / (A051802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051803.P7458457441337865756

namespace A051803

/-- `record[A004526(2*n)/A051802(n)]` -/
def P7458457441337865756.Spec : Prop :=
  ∀ n, P7458457441337865756.a n = (A051803 (n + 1) : ℚ)

end A051803

/-! ## A051803.P1060067645130845204

`record[A004526(n)/A051802(A004526(n))²]`
-/

namespace A051803.P1060067645130845204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / (A051802 (A004526 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051803.P1060067645130845204

namespace A051803

/-- `record[A004526(n)/A051802(A004526(n))²]` -/
def P1060067645130845204.Spec : Prop :=
  ∀ n, P1060067645130845204.a n = (A051803 (n + 1) : ℚ)

end A051803

/-!
# A051804: Numbers with nonzero multiplicative digital root 2.

The programs for A051804, the canonical program `A051804.P929861666918418574` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051804 has offset 1).

The definition of A051804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051804.P929861666918418574

`eq[2, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051804

/-- `eq[2, A051802(n)]` -/
def P929861666918418574.Spec : Prop :=
  ∀ n, (P929861666918418574.a n : ℤ) = A051804 (n + 1)

theorem P929861666918418574.correct : P929861666918418574.Spec := by
  intro n
  simp only [A051804, Nat.add_sub_cancel]

end A051804

/-! ## A051804.P2758370896606208380

`lt[(A051802(n+1)-2)², 1]+1`
-/

namespace A051804.P2758370896606208380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051802 (n + 1) - 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051804.P2758370896606208380

namespace A051804

/-- `lt[(A051802(n+1)-2)², 1]+1` -/
def P2758370896606208380.Spec : Prop :=
  ∀ n, (P2758370896606208380.a n : ℤ) = A051804 (n + 1)

end A051804

/-! ## A051804.P11872268375651587391

`lt[(A051802(A028310(n))-2)², 1]`
-/

namespace A051804.P11872268375651587391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051802 (A028310 n).toNat - 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051804.P11872268375651587391

namespace A051804

/-- `lt[(A051802(A028310(n))-2)², 1]` -/
def P11872268375651587391.Spec : Prop :=
  ∀ n, (P11872268375651587391.a n : ℤ) = A051804 (n + 1)

end A051804

/-! ## A051804.P11120916328490450867

`lt[(A051802(A051801(n))-2)², 1]`
-/

namespace A051804.P11120916328490450867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051802 (A051801 n).toNat - 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051804.P11120916328490450867

namespace A051804

/-- `lt[(A051802(A051801(n))-2)², 1]` -/
def P11120916328490450867.Spec : Prop :=
  ∀ n, (P11120916328490450867.a n : ℤ) = A051804 (n + 1)

end A051804

/-! ## A051804.P13222083445424289533

`lt[A335452(a(A051802(n)-1)+2), 1]` with `a(0)=8`
-/

namespace A051804.P13222083445424289533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A335452 (f1 (A051802 n - 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051804.P13222083445424289533

namespace A051804

/-- `lt[A335452(a(A051802(n)-1)+2), 1]` -/
def P13222083445424289533.Spec : Prop :=
  ∀ n, (P13222083445424289533.a n : ℤ) = A051804 (n + 1)

end A051804

/-!
# A051805: Numbers with nonzero multiplicative digital root 3.

The programs for A051805, the canonical program `A051805.P10692238855703908079` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051805 has offset 1).

The definition of A051805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051805.P10692238855703908079

`eq[3, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051805

/-- `eq[3, A051802(n)]` -/
def P10692238855703908079.Spec : Prop :=
  ∀ n, (P10692238855703908079.a n : ℤ) = A051805 (n + 1)

theorem P10692238855703908079.correct : P10692238855703908079.Spec := by
  intro n
  simp only [A051805, Nat.add_sub_cancel]

end A051805

/-! ## A051805.P7127044385633775512

`lt[A335452(a(A051802(n)-1)+2), 1]` with `a(0)=3, a(1)=4`
-/

namespace A051805.P7127044385633775512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  A335452 (f1 (A051802 n - 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051805.P7127044385633775512

namespace A051805

/-- `lt[A335452(a(A051802(n)-1)+2), 1]` -/
def P7127044385633775512.Spec : Prop :=
  ∀ n, (P7127044385633775512.a n : ℤ) = A051805 (n + 1)

end A051805

/-! ## A051805.P16942405166873697674

`lt[2, A272008(4*a(A051802(n)-1)+1)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A051805.P16942405166873697674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  A272008 (4 * f2 (A051802 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051805.P16942405166873697674

namespace A051805

/-- `lt[2, A272008(4*a(A051802(n)-1)+1)]` -/
def P16942405166873697674.Spec : Prop :=
  ∀ n, (P16942405166873697674.a n : ℤ) = A051805 (n + 1)

end A051805

/-! ## A051805.P7112597849032103919

`eq[3, A051801(A051801(A051801(n)))]`
-/

namespace A051805.P7112597849032103919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A051801 (A051801 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051805.P7112597849032103919

namespace A051805

/-- `eq[3, A051801(A051801(A051801(n)))]` -/
def P7112597849032103919.Spec : Prop :=
  ∀ n, (P7112597849032103919.a n : ℤ) = A051805 (n + 1)

end A051805

/-!
# A051806: Numbers with nonzero multiplicative digital root 4.

The programs for A051806, the canonical program `A051806.P3686198131234600742` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051806 has offset 1).

The definition of A051806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051806.P3686198131234600742

`eq[4, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051806

/-- `eq[4, A051802(n)]` -/
def P3686198131234600742.Spec : Prop :=
  ∀ n, (P3686198131234600742.a n : ℤ) = A051806 (n + 1)

theorem P3686198131234600742.correct : P3686198131234600742.Spec := by
  intro n
  simp only [A051806, Nat.add_sub_cancel]

end A051806

/-! ## A051806.P17733954856397862715

`lt[(4-A051802(abs(1-n)+1))², 1]`
-/

namespace A051806.P17733954856397862715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A051802 (|1 - (n : ℤ)| + 1).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051806.P17733954856397862715

namespace A051806

/-- `lt[(4-A051802(abs(1-n)+1))², 1]` -/
def P17733954856397862715.Spec : Prop :=
  ∀ n, (P17733954856397862715.a n : ℤ) = A051806 (n + 1)

end A051806

/-! ## A051806.P14098571795875708092

`lt[A335452(a(A051802(n)-1)+2), 1]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A051806.P14098571795875708092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  A335452 (f1 (A051802 n - 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051806.P14098571795875708092

namespace A051806

/-- `lt[A335452(a(A051802(n)-1)+2), 1]` -/
def P14098571795875708092.Spec : Prop :=
  ∀ n, (P14098571795875708092.a n : ℤ) = A051806 (n + 1)

end A051806

/-! ## A051806.P9088963324224396199

`lt[(4-A031298(A051802(n)/gcd(n, n+1)))², 1]`
-/

namespace A051806.P9088963324224396199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A031298 (SequenceMachineLib.roundAway ((A051802 n : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051806.P9088963324224396199

namespace A051806

/-- `lt[(4-A031298(A051802(n)/gcd(n, n+1)))², 1]` -/
def P9088963324224396199.Spec : Prop :=
  ∀ n, (P9088963324224396199.a n : ℤ) = A051806 (n + 1)

end A051806

/-! ## A051806.P17561656789343692814

`lt[2, A272008(4*a(A051802(n)-1)+1)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A051806.P17561656789343692814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n f2 =>
  A272008 (4 * f2 (A051802 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051806.P17561656789343692814

namespace A051806

/-- `lt[2, A272008(4*a(A051802(n)-1)+1)]` -/
def P17561656789343692814.Spec : Prop :=
  ∀ n, (P17561656789343692814.a n : ℤ) = A051806 (n + 1)

end A051806

/-!
# A051807: Numbers with nonzero multiplicative digital root 5.

The programs for A051807, the canonical program `A051807.P4293244900954420581` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051807 has offset 1).

The definition of A051807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051807.P4293244900954420581

`eq[5, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051807

/-- `eq[5, A051802(n)]` -/
def P4293244900954420581.Spec : Prop :=
  ∀ n, (P4293244900954420581.a n : ℤ) = A051807 (n + 1)

theorem P4293244900954420581.correct : P4293244900954420581.Spec := by
  intro n
  simp only [A051807, Nat.add_sub_cancel]

end A051807

/-! ## A051807.P16741582350327144504

`lt[A051802(A051801(n))%5, 1]`
-/

namespace A051807.P16741582350327144504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051802 (A051801 n).toNat) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051807.P16741582350327144504

namespace A051807

/-- `lt[A051802(A051801(n))%5, 1]` -/
def P16741582350327144504.Spec : Prop :=
  ∀ n, (P16741582350327144504.a n : ℤ) = A051807 (n + 1)

end A051807

/-! ## A051807.P1013326982142848306

`lt[A000038(n)!, gcd(5, A051802(n))]`
-/

namespace A051807.P1013326982142848306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A051802 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051807.P1013326982142848306

namespace A051807

/-- `lt[A000038(n)!, gcd(5, A051802(n))]` -/
def P1013326982142848306.Spec : Prop :=
  ∀ n, (P1013326982142848306.a n : ℤ) = A051807 (n + 1)

end A051807

/-! ## A051807.P3075671223965348593

`lt[A335452(a(A051802(n)-1)+2), 1]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A051807.P3075671223965348593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4] fun n f1 =>
  A335452 (f1 (A051802 n - 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051807.P3075671223965348593

namespace A051807

/-- `lt[A335452(a(A051802(n)-1)+2), 1]` -/
def P3075671223965348593.Spec : Prop :=
  ∀ n, (P3075671223965348593.a n : ℤ) = A051807 (n + 1)

end A051807

/-! ## A051807.P5649417713748706179

`lt[2, A272008(4*a(A051802(n)-1)+1)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A051807.P5649417713748706179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n f2 =>
  A272008 (4 * f2 (A051802 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051807.P5649417713748706179

namespace A051807

/-- `lt[2, A272008(4*a(A051802(n)-1)+1)]` -/
def P5649417713748706179.Spec : Prop :=
  ∀ n, (P5649417713748706179.a n : ℤ) = A051807 (n + 1)

end A051807

/-!
# A051808: Numbers with nonzero multiplicative digital root 6.

The programs for A051808, the canonical program `A051808.P3656897858601393824` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051808 has offset 1).

The definition of A051808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051808.P3656897858601393824

`eq[6, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051808

/-- `eq[6, A051802(n)]` -/
def P3656897858601393824.Spec : Prop :=
  ∀ n, (P3656897858601393824.a n : ℤ) = A051808 (n + 1)

theorem P3656897858601393824.correct : P3656897858601393824.Spec := by
  intro n
  simp only [A051808, Nat.add_sub_cancel]

end A051808

/-! ## A051808.P13088686464786212605

`lt[4, A272008(A051802(n)+n²%(n+1)+1)]`
-/

namespace A051808.P13088686464786212605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272008 (A051802 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051808.P13088686464786212605

namespace A051808

/-- `lt[4, A272008(A051802(n)+n²%(n+1)+1)]` -/
def P13088686464786212605.Spec : Prop :=
  ∀ n, (P13088686464786212605.a n : ℤ) = A051808 (n + 1)

end A051808

/-! ## A051808.P278103061553811166

`lt[A335452(a(A051802(n)-1)+2), 1]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=3, a(4)=4`
-/

namespace A051808.P278103061553811166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 3, 4] fun n f1 =>
  A335452 (f1 (A051802 n - 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051808.P278103061553811166

namespace A051808

/-- `lt[A335452(a(A051802(n)-1)+2), 1]` -/
def P278103061553811166.Spec : Prop :=
  ∀ n, (P278103061553811166.a n : ℤ) = A051808 (n + 1)

end A051808

/-! ## A051808.P17813758394248281618

`lt[2, A272008(4*a(A051802(n)-1)+1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=2`
-/

namespace A051808.P17813758394248281618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 0, 2] fun n f2 =>
  A272008 (4 * f2 (A051802 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051808.P17813758394248281618

namespace A051808

/-- `lt[2, A272008(4*a(A051802(n)-1)+1)]` -/
def P17813758394248281618.Spec : Prop :=
  ∀ n, (P17813758394248281618.a n : ℤ) = A051808 (n + 1)

end A051808

/-! ## A051808.P4853597028467937767

`lt[A051810(n+1), gcd(6, A051802(n))!]`
-/

namespace A051808.P4853597028467937767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051810 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.gcd 6 (A051802 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051808.P4853597028467937767

namespace A051808

/-- `lt[A051810(n+1), gcd(6, A051802(n))!]` -/
def P4853597028467937767.Spec : Prop :=
  ∀ n, (P4853597028467937767.a n : ℤ) = A051808 (n + 1)

end A051808

/-!
# A051809: Numbers with nonzero multiplicative digital root 7.

The programs for A051809, the canonical program `A051809.P8083613344598909675` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051809 has offset 1).

The definition of A051809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051809.P8083613344598909675

`eq[7, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051809

/-- `eq[7, A051802(n)]` -/
def P8083613344598909675.Spec : Prop :=
  ∀ n, (P8083613344598909675.a n : ℤ) = A051809 (n + 1)

theorem P8083613344598909675.correct : P8083613344598909675.Spec := by
  intro n
  simp only [A051809, Nat.add_sub_cancel]

end A051809

/-! ## A051809.P5094680677600928104

`lt[(7-A051802(abs(1-n)+1))², 1]`
-/

namespace A051809.P5094680677600928104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 - A051802 (|1 - (n : ℤ)| + 1).toNat) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051809.P5094680677600928104

namespace A051809

/-- `lt[(7-A051802(abs(1-n)+1))², 1]` -/
def P5094680677600928104.Spec : Prop :=
  ∀ n, (P5094680677600928104.a n : ℤ) = A051809 (n + 1)

end A051809

/-! ## A051809.P15978138569093301160

`eq[7, A051801(A051801(n))]`
-/

namespace A051809.P15978138569093301160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051809.P15978138569093301160

namespace A051809

/-- `eq[7, A051801(A051801(n))]` -/
def P15978138569093301160.Spec : Prop :=
  ∀ n, (P15978138569093301160.a n : ℤ) = A051809 (n + 1)

end A051809

/-! ## A051809.P15739825613423580795

`lt[2, A272008(4*a(A051802(n)-1)+1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=2`
-/

namespace A051809.P15739825613423580795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 0, 2] fun n f2 =>
  A272008 (4 * f2 (A051802 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051809.P15739825613423580795

namespace A051809

/-- `lt[2, A272008(4*a(A051802(n)-1)+1)]` -/
def P15739825613423580795.Spec : Prop :=
  ∀ n, (P15739825613423580795.a n : ℤ) = A051809 (n + 1)

end A051809

/-! ## A051809.P10954684965073347917

`lt[A051810(n+1), gcd(7, A051802(n))!]`
-/

namespace A051809.P10954684965073347917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051810 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.gcd 7 (A051802 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051809.P10954684965073347917

namespace A051809

/-- `lt[A051810(n+1), gcd(7, A051802(n))!]` -/
def P10954684965073347917.Spec : Prop :=
  ∀ n, (P10954684965073347917.a n : ℤ) = A051809 (n + 1)

end A051809

/-!
# A051810: Numbers with nonzero multiplicative digital root 8.

The programs for A051810, the canonical program `A051810.P7616896201699025823` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051810 has offset 1).

The definition of A051810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051810.P7616896201699025823

`eq[8, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051810

/-- `eq[8, A051802(n)]` -/
def P7616896201699025823.Spec : Prop :=
  ∀ n, (P7616896201699025823.a n : ℤ) = A051810 (n + 1)

theorem P7616896201699025823.correct : P7616896201699025823.Spec := by
  intro n
  simp only [A051810, Nat.add_sub_cancel]

end A051810

/-! ## A051810.P5878140169324785843

`lt[A040002(n), gcd(8, A051802(n))]`
-/

namespace A051810.P5878140169324785843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A051802 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051810.P5878140169324785843

namespace A051810

/-- `lt[A040002(n), gcd(8, A051802(n))]` -/
def P5878140169324785843.Spec : Prop :=
  ∀ n, (P5878140169324785843.a n : ℤ) = A051810 (n + 1)

end A051810

/-! ## A051810.P18094746462229549251

`lt[A335452(a(A051802(n)-1)+2), 1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=4, a(5)=3, a(6)=4`
-/

namespace A051810.P18094746462229549251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 4, 3, 4] fun n f1 =>
  A335452 (f1 (A051802 n - 1).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051810.P18094746462229549251

namespace A051810

/-- `lt[A335452(a(A051802(n)-1)+2), 1]` -/
def P18094746462229549251.Spec : Prop :=
  ∀ n, (P18094746462229549251.a n : ℤ) = A051810 (n + 1)

end A051810

/-! ## A051810.P14276131863758111804

`lt[2, A272008(4*a(A051802(n)-1)+1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=0, a(7)=2`
-/

namespace A051810.P14276131863758111804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1, 0, 2] fun n f2 =>
  A272008 (4 * f2 (A051802 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051810.P14276131863758111804

namespace A051810

/-- `lt[2, A272008(4*a(A051802(n)-1)+1)]` -/
def P14276131863758111804.Spec : Prop :=
  ∀ n, (P14276131863758111804.a n : ℤ) = A051810 (n + 1)

end A051810

/-! ## A051810.P13645310608117504648

`A034055(n+1)-A025456(A016958(n))`
-/

namespace A051810.P13645310608117504648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1) - A025456 (A016958 n).toNat

end

end A051810.P13645310608117504648

namespace A051810

/-- `A034055(n+1)-A025456(A016958(n))` -/
def P13645310608117504648.Spec : Prop :=
  ∀ n, P13645310608117504648.a n = A051810 (n + 1)

end A051810

/-!
# A051811: Numbers with nonzero multiplicative digital root 9.

The programs for A051811, the canonical program `A051811.P7186394499949268145` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051811 has offset 1).

The definition of A051811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051811.P7186394499949268145

`lt[8, A051802(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051811

/-- `lt[8, A051802(n)]` -/
def P7186394499949268145.Spec : Prop :=
  ∀ n, (P7186394499949268145.a n : ℤ) = A051811 (n + 1)

theorem P7186394499949268145.correct : P7186394499949268145.Spec := by
  intro n
  simp only [A051811, Nat.add_sub_cancel]

end A051811

/-! ## A051811.P7152282687163227357

`eq[9, A051802(round(acot(n)+n))]`
-/

namespace A051811.P7152282687163227357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051811.P7152282687163227357

namespace A051811

/-- `eq[9, A051802(round(acot(n)+n))]` -/
def P7152282687163227357.Spec : Prop :=
  ∀ n, (P7152282687163227357.a n : ℤ) = A051811 (n + 1)

end A051811

/-! ## A051811.P10403768351000963204

`A000027(eq[9, A051802(n)])`
-/

namespace A051811.P10403768351000963204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051811.P10403768351000963204

namespace A051811

/-- `A000027(eq[9, A051802(n)])` -/
def P10403768351000963204.Spec : Prop :=
  ∀ n, P10403768351000963204.a n = A051811 (n + 1)

end A051811

/-! ## A051811.P17599437447787216091

`eq[9, A051802(A004086(n))]`
-/

namespace A051811.P17599437447787216091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051811.P17599437447787216091

namespace A051811

/-- `eq[9, A051802(A004086(n))]` -/
def P17599437447787216091.Spec : Prop :=
  ∀ n, (P17599437447787216091.a n : ℤ) = A051811 (n + 1)

end A051811

/-! ## A051811.P4571240293221525769

`eq[9, A051802(A028310(n))]`
-/

namespace A051811.P4571240293221525769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051811.P4571240293221525769

namespace A051811

/-- `eq[9, A051802(A028310(n))]` -/
def P4571240293221525769.Spec : Prop :=
  ∀ n, (P4571240293221525769.a n : ℤ) = A051811 (n + 1)

end A051811

/-! ## A051811.P6541160920045413973

`eq[A051802(n), A168094(n)]`
-/

namespace A051811.P6541160920045413973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051811.P6541160920045413973

namespace A051811

/-- `eq[A051802(n), A168094(n)]` -/
def P6541160920045413973.Spec : Prop :=
  ∀ n, (P6541160920045413973.a n : ℤ) = A051811 (n + 1)

end A051811

/-! ## A051811.P17284716811474541936

`eq[A051802(n), A180599(n)]`
-/

namespace A051811.P17284716811474541936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051811.P17284716811474541936

namespace A051811

/-- `eq[A051802(n), A180599(n)]` -/
def P17284716811474541936.Spec : Prop :=
  ∀ n, (P17284716811474541936.a n : ℤ) = A051811 (n + 1)

end A051811

/-! ## A051811.P6816499654275140363

`eq[A051802(n), A066586(n+1)]`
-/

namespace A051811.P6816499654275140363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051811.P6816499654275140363

namespace A051811

/-- `eq[A051802(n), A066586(n+1)]` -/
def P6816499654275140363.Spec : Prop :=
  ∀ n, (P6816499654275140363.a n : ℤ) = A051811 (n + 1)

end A051811

/-! ## A051811.P17183930003924286830

`eq[A051802(n), A094327(n+1)]`
-/

namespace A051811.P17183930003924286830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051811.P17183930003924286830

namespace A051811

/-- `eq[A051802(n), A094327(n+1)]` -/
def P17183930003924286830.Spec : Prop :=
  ∀ n, (P17183930003924286830.a n : ℤ) = A051811 (n + 1)

end A051811

/-!
# A051812: Number of n-digit numbers with nonzero multiplicative digital root 1.

The programs for A051812, there is no canonical definition to state claims against.
-/

/-! ## A051812.P13219860430236273836

`Δ[A051821(A051801(n))%A051820(2*n+1)]`
-/

namespace A051812.P13219860430236273836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051821 (A051801 n).toNat) (A051820 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051812.P13219860430236273836

/-!
# A051814: Number of n-digit numbers with nonzero multiplicative digital root 3.

The programs for A051814, there is no canonical definition to state claims against.
-/

/-! ## A051814.P2250438971971552697

`A285870(floor(sqrt(A054392(3*n+4))))`
-/

namespace A051814.P2250438971971552697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (Int.sqrt (A054392 (3 * n + 4))).toNat

end

end A051814.P2250438971971552697

/-!
# A051816: Number of n-digit numbers with nonzero multiplicative digital root 5.

The programs for A051816, there is no canonical definition to state claims against.
-/

/-! ## A051816.P11402988207479210464

`A129657(A036291(n)+1)`
-/

namespace A051816.P11402988207479210464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (A036291 n + 1).toNat

end

end A051816.P11402988207479210464

/-!
# A051818: Number of n-digit numbers with nonzero multiplicative digital root 7.

The programs for A051818, there is no canonical definition to state claims against.
-/

/-! ## A051818.P2741912142714258188

`Δ[A051827(A051801(n))%A051820(2*n+1)]`
-/

namespace A051818.P2741912142714258188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051827 (A051801 n).toNat) (A051820 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051818.P2741912142714258188

/-!
# A051820: Number of n-digit numbers with nonzero multiplicative digital root 9.

The programs for A051820, there is no canonical definition to state claims against.
-/

/-! ## A051820.P2041775112631283247

`5*A302478(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A051820.P2041775112631283247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * A302478 (a (n - 1) + a (n - 2)).toNat

end

end A051820.P2041775112631283247

/-!
# A051821: Number of numbers below 10^n with nonzero multiplicative digital root 1 (not counting 0).

The programs for A051821, there is no canonical definition to state claims against.
-/

/-! ## A051821.P17038701630403832533

`∑[A051812(n+1)]`
-/

namespace A051821.P17038701630403832533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051821.P17038701630403832533

/-! ## A051821.P11770319758026469467

`∑[record[A051812(A000174(n))]]`
-/

namespace A051821.P11770319758026469467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051812 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051821.P11770319758026469467

/-! ## A051821.P16040971880175371504

`∑[record[A051812(A028920(n))]]`
-/

namespace A051821.P16040971880175371504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051812 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051821.P16040971880175371504

/-! ## A051821.P1588002588737381944

`∑[record[A051812(A038569(n))]]`
-/

namespace A051821.P1588002588737381944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051812 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051821.P1588002588737381944

/-! ## A051821.P15603700871782765024

`∑{d}[2^n, A051812(A000005(#))]`
-/

namespace A051821.P15603700871782765024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051812 (A000005 d).toNat

end

end A051821.P15603700871782765024

/-!
# A051822: Number of numbers below 10^n with nonzero multiplicative digital root 2.

The programs for A051822, there is no canonical definition to state claims against.
-/

/-! ## A051822.P10946351100048119704

`∑[A051813(n+1)]`
-/

namespace A051822.P10946351100048119704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051822.P10946351100048119704

/-! ## A051822.P16010783522934107155

`∑[record[A051813(A028920(n))]]`
-/

namespace A051822.P16010783522934107155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051813 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051822.P16010783522934107155

/-! ## A051822.P3236772233486722246

`∑[record[A051813(A033930(n))]]`
-/

namespace A051822.P3236772233486722246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051813 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051822.P3236772233486722246

/-! ## A051822.P15308587479984154529

`∑[record[A051813(A065648(n))]]`
-/

namespace A051822.P15308587479984154529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051813 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051822.P15308587479984154529

/-! ## A051822.P10221435430193671738

`∑[record[A051813(A067595(n))]]`
-/

namespace A051822.P10221435430193671738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051813 (A067595 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051822.P10221435430193671738

/-!
# A051823: Number of numbers below 10^n with nonzero multiplicative digital root 3.

The programs for A051823, there is no canonical definition to state claims against.
-/

/-! ## A051823.P52547619324275311

`∑[A051814(n+1)]`
-/

namespace A051823.P52547619324275311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051823.P52547619324275311

/-! ## A051823.P17860737233256510825

`A051814(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A051823.P17860737233256510825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051814 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A051823.P17860737233256510825

/-! ## A051823.P5310317263425051143

`∑[record[A051814(A028920(n))]]`
-/

namespace A051823.P5310317263425051143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051814 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051823.P5310317263425051143

/-! ## A051823.P1978084056901313559

`∑[record[A051814(A051340(n))]]`
-/

namespace A051823.P1978084056901313559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051814 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051823.P1978084056901313559

/-! ## A051823.P1082388969291198578

`∑[record[A051814(A133310(n))]]`
-/

namespace A051823.P1082388969291198578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051814 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051823.P1082388969291198578

/-!
# A051824: Number of numbers below 10^n with nonzero multiplicative digital root 4.

The programs for A051824, there is no canonical definition to state claims against.
-/

/-! ## A051824.P14443558021621391613

`∑[A051815(n+1)]`
-/

namespace A051824.P14443558021621391613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051824.P14443558021621391613

/-! ## A051824.P12046750386848209397

`∑[record[A051815(A028920(n))]]`
-/

namespace A051824.P12046750386848209397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051815 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051824.P12046750386848209397

/-! ## A051824.P8777875340473639900

`∑[record[A051815(A065648(n))]]`
-/

namespace A051824.P8777875340473639900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051815 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051824.P8777875340473639900

/-! ## A051824.P4291936010137357905

`∑[record[A051815(A106466(n))]]`
-/

namespace A051824.P4291936010137357905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051815 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051824.P4291936010137357905

/-! ## A051824.P2059811021424245498

`∑{d}[2^n, A051815(A000005(#))]`
-/

namespace A051824.P2059811021424245498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051815 (A000005 d).toNat

end

end A051824.P2059811021424245498

/-!
# A051825: Number of numbers below 10^n with nonzero multiplicative digital root 5.

The programs for A051825, there is no canonical definition to state claims against.
-/

/-! ## A051825.P10608732608934918330

`∑[A051816(n+1)]`
-/

namespace A051825.P10608732608934918330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051825.P10608732608934918330

/-! ## A051825.P3244366800071876916

`∑[record[A051816(A028920(n))]]`
-/

namespace A051825.P3244366800071876916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051816 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051825.P3244366800071876916

/-! ## A051825.P16719452058961710057

`∑[record[A051816(A134478(n))]]`
-/

namespace A051825.P16719452058961710057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051816 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051825.P16719452058961710057

/-! ## A051825.P208802081390630365

`∑[record[A051816(A137734(n))]]`
-/

namespace A051825.P208802081390630365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051816 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051825.P208802081390630365

/-! ## A051825.P7256075479777643626

`∑{d}[2^n, A051816(A000005(#))]`
-/

namespace A051825.P7256075479777643626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051816 (A000005 d).toNat

end

end A051825.P7256075479777643626

/-!
# A051826: Number of numbers below 10^n with nonzero multiplicative digital root 6.

The programs for A051826, there is no canonical definition to state claims against.
-/

/-! ## A051826.P9375538851630639293

`∑[A051817(n+1)]`
-/

namespace A051826.P9375538851630639293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051826.P9375538851630639293

/-! ## A051826.P1466205366968371841

`∑[record[A051817(A028920(n))]]`
-/

namespace A051826.P1466205366968371841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051817 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051826.P1466205366968371841

/-! ## A051826.P4783145337850645172

`∑[record[A051817(A086742(n))]]`
-/

namespace A051826.P4783145337850645172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051817 (A086742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051826.P4783145337850645172

/-! ## A051826.P4984832457860100770

`∑[record[A051817(A112382(n))]]`
-/

namespace A051826.P4984832457860100770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051817 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051826.P4984832457860100770

/-! ## A051826.P18334735969928049056

`∑{d}[2^n, A051817(A000005(#))]`
-/

namespace A051826.P18334735969928049056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051817 (A000005 d).toNat

end

end A051826.P18334735969928049056

/-!
# A051827: Number of numbers below 10^n with nonzero multiplicative digital root 7.

The programs for A051827, there is no canonical definition to state claims against.
-/

/-! ## A051827.P11449358887694234601

`∑[A051818(n+1)]`
-/

namespace A051827.P11449358887694234601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051827.P11449358887694234601

/-! ## A051827.P16774375561796322076

`∑[record[A051818(A022446(n))]]`
-/

namespace A051827.P16774375561796322076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051818 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051827.P16774375561796322076

/-! ## A051827.P13512834388737105015

`∑[record[A051818(A028920(n))]]`
-/

namespace A051827.P13512834388737105015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051818 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051827.P13512834388737105015

/-! ## A051827.P9433772311060381563

`∑[record[A051818(A051340(n))]]`
-/

namespace A051827.P9433772311060381563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051818 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051827.P9433772311060381563

/-! ## A051827.P12456229642755404396

`∑[record[A051818(A059126(n))]]`
-/

namespace A051827.P12456229642755404396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051818 (A059126 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051827.P12456229642755404396

/-!
# A051828: Number of numbers below 10^n with nonzero multiplicative digital root 8.

The programs for A051828, there is no canonical definition to state claims against.
-/

/-! ## A051828.P11004399763830065781

`∑[A051819(n+1)]`
-/

namespace A051828.P11004399763830065781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051828.P11004399763830065781

/-! ## A051828.P13608855710675151452

`∑[record[A051819(A028920(n))]]`
-/

namespace A051828.P13608855710675151452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051819 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051828.P13608855710675151452

/-! ## A051828.P7829046331682801588

`∑[record[A051819(A038569(n))]]`
-/

namespace A051828.P7829046331682801588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051819 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051828.P7829046331682801588

/-! ## A051828.P12290723727101987621

`∑[record[A051819(A065648(n))]]`
-/

namespace A051828.P12290723727101987621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051819 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051828.P12290723727101987621

/-! ## A051828.P2130157424343784203

`∑[record[A051819(A133310(n))]]`
-/

namespace A051828.P2130157424343784203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051819 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051828.P2130157424343784203

/-!
# A051829: Number of numbers below 10^n with nonzero multiplicative digital root 9.

The programs for A051829, there is no canonical definition to state claims against.
-/

/-! ## A051829.P5173687532575928614

`∑[A051820(n+1)]`
-/

namespace A051829.P5173687532575928614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051829.P5173687532575928614

/-! ## A051829.P9013763622810051905

`∑[record[A051820(A000174(n))]]`
-/

namespace A051829.P9013763622810051905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051820 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051829.P9013763622810051905

/-! ## A051829.P9446604218041150183

`∑[record[A051820(A022446(n))]]`
-/

namespace A051829.P9446604218041150183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051820 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051829.P9446604218041150183

/-! ## A051829.P17029649401645176780

`∑[record[A051820(A028920(n))]]`
-/

namespace A051829.P17029649401645176780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051820 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051829.P17029649401645176780

/-! ## A051829.P17393360172929311306

`∑[record[A051820(A033930(n))]]`
-/

namespace A051829.P17393360172929311306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051820 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051829.P17393360172929311306

/-!
# A051830: a(n) = Fibonacci(p(n)+1) mod p(n), where p(n) is the n-th prime.

The programs for A051830, the canonical program `A051830.P1801367669445689366` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051830 has offset 1).

The definition of A051830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000040(n+1)+1)%A000040(n+1)` (program `A051830.P1801367669445689366`, by `A051830.P1801367669445689366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051830.P1801367669445689366

`A000045(A000040(n+1)+1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051830

/-- `A000045(A000040(n+1)+1)%A000040(n+1)` -/
def P1801367669445689366.Spec : Prop :=
  ∀ n, P1801367669445689366.a n = A051830 (n + 1)

theorem P1801367669445689366.correct : P1801367669445689366.Spec := by
  intro n
  simp only [A051830, Nat.add_sub_cancel]

end A051830

/-! ## A051830.P12717639235161789422

`A166011(n+1)%5`
-/

namespace A051830.P12717639235161789422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166011 (n + 1)) 5

end

end A051830.P12717639235161789422

namespace A051830

/-- `A166011(n+1)%5` -/
def P12717639235161789422.Spec : Prop :=
  ∀ n, P12717639235161789422.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P18057110438361940045

`C(A006093(n+1)-1, 2)%5`
-/

namespace A051830.P18057110438361940045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 1) - 1).toNat 2 % 5

end

end A051830.P18057110438361940045

namespace A051830

/-- `C(A006093(n+1)-1, 2)%5` -/
def P18057110438361940045.Spec : Prop :=
  ∀ n, (P18057110438361940045.a n : ℤ) = A051830 (n + 1)

end A051830

/-! ## A051830.P2231700832345071009

`C(A000040(n+1)-2, 2)%5`
-/

namespace A051830.P2231700832345071009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) - 2).toNat 2 % 5

end

end A051830.P2231700832345071009

namespace A051830

/-- `C(A000040(n+1)-2, 2)%5` -/
def P2231700832345071009.Spec : Prop :=
  ∀ n, (P2231700832345071009.a n : ℤ) = A051830 (n + 1)

end A051830

/-! ## A051830.P6097601972461597186

`C(A014689(n+1)+n-1, 2)%5`
-/

namespace A051830.P6097601972461597186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014689 (n + 1) + ((n : ℤ) - 1)).toNat 2 % 5

end

end A051830.P6097601972461597186

namespace A051830

/-- `C(A014689(n+1)+n-1, 2)%5` -/
def P6097601972461597186.Spec : Prop :=
  ∀ n, (P6097601972461597186.a n : ℤ) = A051830 (n + 1)

end A051830

/-! ## A051830.P14930557906385380037

`A106278(A161625(n+1))`
-/

namespace A051830.P14930557906385380037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106278 (A161625 (n + 1)).toNat

end

end A051830.P14930557906385380037

namespace A051830

/-- `A106278(A161625(n+1))` -/
def P14930557906385380037.Spec : Prop :=
  ∀ n, P14930557906385380037.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P8407903044183944333

`(3*(p?[xor(1, n)]²-4))%5`
-/

namespace A051830.P8407903044183944333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℤ) - 4)) 5

end

end A051830.P8407903044183944333

namespace A051830

/-- `(3*(p?[xor(1, n)]²-4))%5` -/
def P8407903044183944333.Spec : Prop :=
  ∀ n, P8407903044183944333.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P16065075774825268266

`∑{d}[record[A020639(n+2)], 3*#²]%5`
-/

namespace A051830.P16065075774825268266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, 3 * d ^ 2) % 5

end

end A051830.P16065075774825268266

namespace A051830

/-- `∑{d}[record[A020639(n+2)], 3*#²]%5` -/
def P16065075774825268266.Spec : Prop :=
  ∀ n, (P16065075774825268266.a n : ℤ) = A051830 (n + 1)

end A051830

/-! ## A051830.P854124350216793321

`A000217(A000040(n+1)+2)%5`
-/

namespace A051830.P854124350216793321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A000040 (n + 1) + 2).toNat) 5

end

end A051830.P854124350216793321

namespace A051830

/-- `A000217(A000040(n+1)+2)%5` -/
def P854124350216793321.Spec : Prop :=
  ∀ n, P854124350216793321.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P14051552820349495431

`A000217(record[A000010(n+1)+3])%5`
-/

namespace A051830.P14051552820349495431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 5

end

end A051830.P14051552820349495431

namespace A051830

/-- `A000217(record[A000010(n+1)+3])%5` -/
def P14051552820349495431.Spec : Prop :=
  ∀ n, P14051552820349495431.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P2813813717517369320

`A000217(p?[A206074(n+1)]+2)%5`
-/

namespace A051830.P2813813717517369320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat) 5

end

end A051830.P2813813717517369320

namespace A051830

/-- `A000217(p?[A206074(n+1)]+2)%5` -/
def P2813813717517369320.Spec : Prop :=
  ∀ n, P2813813717517369320.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P11729271131649263746

`A002726(p?[xor(1, n)])`
-/

namespace A051830.P11729271131649263746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A051830.P11729271131649263746

namespace A051830

/-- `A002726(p?[xor(1, n)])` -/
def P11729271131649263746.Spec : Prop :=
  ∀ n, P11729271131649263746.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P8639973635919966141

`A002726(A000040(n+1))`
-/

namespace A051830.P8639973635919966141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (A000040 (n + 1)).toNat

end

end A051830.P8639973635919966141

namespace A051830

/-- `A002726(A000040(n+1))` -/
def P8639973635919966141.Spec : Prop :=
  ∀ n, P8639973635919966141.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P12107638228546693821

`A002726(A006005(n+1))`
-/

namespace A051830.P12107638228546693821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (A006005 (n + 1)).toNat

end

end A051830.P12107638228546693821

namespace A051830

/-- `A002726(A006005(n+1))` -/
def P12107638228546693821.Spec : Prop :=
  ∀ n, P12107638228546693821.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P13435675049114936833

`A002726(A008578(n+2))`
-/

namespace A051830.P13435675049114936833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (A008578 (n + 2)).toNat

end

end A051830.P13435675049114936833

namespace A051830

/-- `A002726(A008578(n+2))` -/
def P13435675049114936833.Spec : Prop :=
  ∀ n, P13435675049114936833.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P893127136450739356

`A002726(A075643(n+2))`
-/

namespace A051830.P893127136450739356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (A075643 (n + 2)).toNat

end

end A051830.P893127136450739356

namespace A051830

/-- `A002726(A075643(n+2))` -/
def P893127136450739356.Spec : Prop :=
  ∀ n, P893127136450739356.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P2689358565671001661

`A002726(A171525(n+2))`
-/

namespace A051830.P2689358565671001661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (A171525 (n + 2)).toNat

end

end A051830.P2689358565671001661

namespace A051830

/-- `A002726(A171525(n+2))` -/
def P2689358565671001661.Spec : Prop :=
  ∀ n, P2689358565671001661.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P1977008354413005500

`A002726(A182986(n+2))`
-/

namespace A051830.P1977008354413005500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (A182986 (n + 2)).toNat

end

end A051830.P1977008354413005500

namespace A051830

/-- `A002726(A182986(n+2))` -/
def P1977008354413005500.Spec : Prop :=
  ∀ n, P1977008354413005500.a n = A051830 (n + 1)

end A051830

/-! ## A051830.P7325181415732128513

`A002726(record[A006530(n+2)])`
-/

namespace A051830.P7325181415732128513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051830.P7325181415732128513

namespace A051830

/-- `A002726(record[A006530(n+2)])` -/
def P7325181415732128513.Spec : Prop :=
  ∀ n, P7325181415732128513.a n = A051830 (n + 1)

end A051830

/-!
# A051831: a(n) = Fibonacci(prime(n)) mod prime(n), where prime(n) is the n-th prime.

The programs for A051831, the canonical program `A051831.P11336313005533487489` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051831 has offset 1).

The definition of A051831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000040(n+1))%A000040(n+1)` (program `A051831.P11336313005533487489`, by `A051831.P11336313005533487489.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051831.P11336313005533487489

`A000045(A000040(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051831

/-- `A000045(A000040(n+1))%A000040(n+1)` -/
def P11336313005533487489.Spec : Prop :=
  ∀ n, P11336313005533487489.a n = A051831 (n + 1)

theorem P11336313005533487489.correct : P11336313005533487489.Spec := by
  intro n
  simp only [A051831, Nat.add_sub_cancel]

end A051831

/-! ## A051831.P18052919724517300726

`floor(sqrt(A113651(n+1)))`
-/

namespace A051831.P18052919724517300726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A113651 (n + 1))

end

end A051831.P18052919724517300726

namespace A051831

/-- `floor(sqrt(A113651(n+1)))` -/
def P18052919724517300726.Spec : Prop :=
  ∀ n, P18052919724517300726.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P13276925425429206331

`A236395(n+1)%A000040(n+1)`
-/

namespace A051831.P13276925425429206331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236395 (n + 1)) (A000040 (n + 1))

end

end A051831.P13276925425429206331

namespace A051831

/-- `A236395(n+1)%A000040(n+1)` -/
def P13276925425429206331.Spec : Prop :=
  ∀ n, P13276925425429206331.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P1650842089299090131

`A354443(p?[comp[n²]])`
-/

namespace A051831.P1650842089299090131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354443 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A051831.P1650842089299090131

namespace A051831

/-- `A354443(p?[comp[n²]])` -/
def P1650842089299090131.Spec : Prop :=
  ∀ n, P1650842089299090131.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P11695229802751525736

`A002708(Δ[A007504(n)])`
-/

namespace A051831.P11695229802751525736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (f1 (n + 1) - f1 n).toNat

end

end A051831.P11695229802751525736

namespace A051831

/-- `A002708(Δ[A007504(n)])` -/
def P11695229802751525736.Spec : Prop :=
  ∀ n, P11695229802751525736.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P16444356532280266646

`A002708(A000040(n+1))`
-/

namespace A051831.P16444356532280266646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A000040 (n + 1)).toNat

end

end A051831.P16444356532280266646

namespace A051831

/-- `A002708(A000040(n+1))` -/
def P16444356532280266646.Spec : Prop :=
  ∀ n, P16444356532280266646.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P17961287979227811206

`A002708(A161847(n+1))`
-/

namespace A051831.P17961287979227811206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A161847 (n + 1)).toNat

end

end A051831.P17961287979227811206

namespace A051831

/-- `A002708(A161847(n+1))` -/
def P17961287979227811206.Spec : Prop :=
  ∀ n, P17961287979227811206.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P17533545873271276493

`A002708(A008578(n+2))`
-/

namespace A051831.P17533545873271276493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A008578 (n + 2)).toNat

end

end A051831.P17533545873271276493

namespace A051831

/-- `A002708(A008578(n+2))` -/
def P17533545873271276493.Spec : Prop :=
  ∀ n, P17533545873271276493.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P2672302724482724123

`A002708(A182986(n+2))`
-/

namespace A051831.P2672302724482724123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A182986 (n + 2)).toNat

end

end A051831.P2672302724482724123

namespace A051831

/-- `A002708(A182986(n+2))` -/
def P2672302724482724123.Spec : Prop :=
  ∀ n, P2672302724482724123.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P17664084691311926222

`A002708(record[A006530(n+2)])`
-/

namespace A051831.P17664084691311926222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051831.P17664084691311926222

namespace A051831

/-- `A002708(record[A006530(n+2)])` -/
def P17664084691311926222.Spec : Prop :=
  ∀ n, P17664084691311926222.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P6417212566367331553

`A002708(record[A014963(n+2)])`
-/

namespace A051831.P6417212566367331553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051831.P6417212566367331553

namespace A051831

/-- `A002708(record[A014963(n+2)])` -/
def P6417212566367331553.Spec : Prop :=
  ∀ n, P6417212566367331553.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P10184064481652613255

`A002708(record[A020639(n+2)])`
-/

namespace A051831.P10184064481652613255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051831.P10184064481652613255

namespace A051831

/-- `A002708(record[A020639(n+2)])` -/
def P10184064481652613255.Spec : Prop :=
  ∀ n, P10184064481652613255.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P12680396473386604129

`A354443(record[A006530(n+2)])`
-/

namespace A051831.P12680396473386604129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051831.P12680396473386604129

namespace A051831

/-- `A354443(record[A006530(n+2)])` -/
def P12680396473386604129.Spec : Prop :=
  ∀ n, P12680396473386604129.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P2639740718671951796

`A354443(record[A014963(n+2)])`
-/

namespace A051831.P2639740718671951796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051831.P2639740718671951796

namespace A051831

/-- `A354443(record[A014963(n+2)])` -/
def P2639740718671951796.Spec : Prop :=
  ∀ n, P2639740718671951796.a n = A051831 (n + 1)

end A051831

/-! ## A051831.P9251711364083174237

`A354443(record[A020639(n+2)])`
-/

namespace A051831.P9251711364083174237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051831.P9251711364083174237

namespace A051831

/-- `A354443(record[A020639(n+2)])` -/
def P9251711364083174237.Spec : Prop :=
  ∀ n, P9251711364083174237.a n = A051831 (n + 1)

end A051831

/-!
# A051834: a(n) = Fibonacci(Pn-1) mod Pn, where Pn is the n-th prime.

The programs for A051834, the canonical program `A051834.P9756172995456044290` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051834 has offset 1).

The definition of A051834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051834.P9756172995456044290

`A000045(A000040(n+1)-1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051834

/-- `A000045(A000040(n+1)-1)%A000040(n+1)` -/
def P9756172995456044290.Spec : Prop :=
  ∀ n, P9756172995456044290.a n = A051834 (n + 1)

theorem P9756172995456044290.correct : P9756172995456044290.Spec := by
  intro n
  simp only [A051834, Nat.add_sub_cancel]

end A051834

/-! ## A051834.P18435519954726751258

`(2*A084920(n+1))%5`
-/

namespace A051834.P18435519954726751258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A084920 (n + 1)) 5

end

end A051834.P18435519954726751258

namespace A051834

/-- `(2*A084920(n+1))%5` -/
def P18435519954726751258.Spec : Prop :=
  ∀ n, P18435519954726751258.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P7365852355208869063

`(A079704(n+1)-7)%5`
-/

namespace A051834.P7365852355208869063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079704 (n + 1) - 7) 5

end

end A051834.P7365852355208869063

namespace A051834

/-- `(A079704(n+1)-7)%5` -/
def P7365852355208869063.Spec : Prop :=
  ∀ n, P7365852355208869063.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P17065733870883630534

`(2*(A001248(n+1)-1))%5`
-/

namespace A051834.P17065733870883630534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A001248 (n + 1) - 1)) 5

end

end A051834.P17065733870883630534

namespace A051834

/-- `(2*(A001248(n+1)-1))%5` -/
def P17065733870883630534.Spec : Prop :=
  ∀ n, P17065733870883630534.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P10453974817144402014

`round(A000040(n+1)²/8)%5`
-/

namespace A051834.P10453974817144402014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000040 (n + 1) ^ 2 : ℚ) / 8)) 5

end

end A051834.P10453974817144402014

namespace A051834

/-- `round(A000040(n+1)²/8)%5` -/
def P10453974817144402014.Spec : Prop :=
  ∀ n, P10453974817144402014.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P772886209022197490

`A002752(A095959(n+1))`
-/

namespace A051834.P772886209022197490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (A095959 (n + 1)).toNat

end

end A051834.P772886209022197490

namespace A051834

/-- `A002752(A095959(n+1))` -/
def P772886209022197490.Spec : Prop :=
  ∀ n, P772886209022197490.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P579916321319908223

`A030620(A161625(n+1))`
-/

namespace A051834.P579916321319908223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030620 (A161625 (n + 1)).toNat

end

end A051834.P579916321319908223

namespace A051834

/-- `A030620(A161625(n+1))` -/
def P579916321319908223.Spec : Prop :=
  ∀ n, P579916321319908223.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P2009228736897406472

`A008402(n)%A137807(n+1)`
-/

namespace A051834.P2009228736897406472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008402 n) (A137807 (n + 1))

end

end A051834.P2009228736897406472

namespace A051834

/-- `A008402(n)%A137807(n+1)` -/
def P2009228736897406472.Spec : Prop :=
  ∀ n, P2009228736897406472.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P17053762881984427988

`A016779(n)%A137807(n+1)`
-/

namespace A051834.P17053762881984427988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016779 n) (A137807 (n + 1))

end

end A051834.P17053762881984427988

namespace A051834

/-- `A016779(n)%A137807(n+1)` -/
def P17053762881984427988.Spec : Prop :=
  ∀ n, P17053762881984427988.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P15422571128750486285

`A306381(n)%A137807(n+1)`
-/

namespace A051834.P15422571128750486285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306381 n) (A137807 (n + 1))

end

end A051834.P15422571128750486285

namespace A051834

/-- `A306381(n)%A137807(n+1)` -/
def P15422571128750486285.Spec : Prop :=
  ∀ n, P15422571128750486285.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P536071618190276444

`A060544(n+1)%A137807(n+1)`
-/

namespace A051834.P536071618190276444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060544 (n + 1)) (A137807 (n + 1))

end

end A051834.P536071618190276444

namespace A051834

/-- `A060544(n+1)%A137807(n+1)` -/
def P536071618190276444.Spec : Prop :=
  ∀ n, P536071618190276444.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P2101153351538181851

`A083990(n+1)%A137807(n+1)`
-/

namespace A051834.P2101153351538181851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083990 (n + 1)) (A137807 (n + 1))

end

end A051834.P2101153351538181851

namespace A051834

/-- `A083990(n+1)%A137807(n+1)` -/
def P2101153351538181851.Spec : Prop :=
  ∀ n, P2101153351538181851.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P8802440195943835026

`A088406(n+1)%A137807(n+1)`
-/

namespace A051834.P8802440195943835026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088406 (n + 1)) (A137807 (n + 1))

end

end A051834.P8802440195943835026

namespace A051834

/-- `A088406(n+1)%A137807(n+1)` -/
def P8802440195943835026.Spec : Prop :=
  ∀ n, P8802440195943835026.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P15859115522291430895

`A088407(n+1)%A137807(n+1)`
-/

namespace A051834.P15859115522291430895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088407 (n + 1)) (A137807 (n + 1))

end

end A051834.P15859115522291430895

namespace A051834

/-- `A088407(n+1)%A137807(n+1)` -/
def P15859115522291430895.Spec : Prop :=
  ∀ n, P15859115522291430895.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P1738863575607428091

`A142326(n+1)%A137807(n+1)`
-/

namespace A051834.P1738863575607428091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142326 (n + 1)) (A137807 (n + 1))

end

end A051834.P1738863575607428091

namespace A051834

/-- `A142326(n+1)%A137807(n+1)` -/
def P1738863575607428091.Spec : Prop :=
  ∀ n, P1738863575607428091.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P13981149844439347128

`A142915(n+1)%A137807(n+1)`
-/

namespace A051834.P13981149844439347128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142915 (n + 1)) (A137807 (n + 1))

end

end A051834.P13981149844439347128

namespace A051834

/-- `A142915(n+1)%A137807(n+1)` -/
def P13981149844439347128.Spec : Prop :=
  ∀ n, P13981149844439347128.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P2542121438487038059

`A142920(n+1)%A137807(n+1)`
-/

namespace A051834.P2542121438487038059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142920 (n + 1)) (A137807 (n + 1))

end

end A051834.P2542121438487038059

namespace A051834

/-- `A142920(n+1)%A137807(n+1)` -/
def P2542121438487038059.Spec : Prop :=
  ∀ n, P2542121438487038059.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P14641225199167860665

`A175170(n+1)%A137807(n+1)`
-/

namespace A051834.P14641225199167860665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175170 (n + 1)) (A137807 (n + 1))

end

end A051834.P14641225199167860665

namespace A051834

/-- `A175170(n+1)%A137807(n+1)` -/
def P14641225199167860665.Spec : Prop :=
  ∀ n, P14641225199167860665.a n = A051834 (n + 1)

end A051834

/-! ## A051834.P535476100575114625

`A000217(floor(A000040(n+1)/2))%5`
-/

namespace A051834.P535476100575114625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat) 5

end

end A051834.P535476100575114625

namespace A051834

/-- `A000217(floor(A000040(n+1)/2))%5` -/
def P535476100575114625.Spec : Prop :=
  ∀ n, P535476100575114625.a n = A051834 (n + 1)

end A051834

/-!
# A051835: Palindromic Sophie Germain primes.

The programs for A051835, there is no canonical definition to state claims against.
-/

/-! ## A051835.P15591861852037151455

`∩[A002385(n+1), A118573(n+1)]`
-/

namespace A051835.P15591861852037151455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P15591861852037151455

/-! ## A051835.P15993913433037652911

`∩[A062687(n+1), A118573(n+1)]`
-/

namespace A051835.P15993913433037652911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P15993913433037652911

/-! ## A051835.P14625248061687655170

`∩[A072299(n+1), A118573(n+1)]`
-/

namespace A051835.P14625248061687655170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P14625248061687655170

/-! ## A051835.P15473556008994271042

`∩[A075800(n+1), A118573(n+1)]`
-/

namespace A051835.P15473556008994271042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P15473556008994271042

/-! ## A051835.P8742803989916090555

`∩[A080716(n+1), A118573(n+1)]`
-/

namespace A051835.P8742803989916090555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P8742803989916090555

/-! ## A051835.P13061823983426903806

`∩[A083136(n+1), A118573(n+1)]`
-/

namespace A051835.P13061823983426903806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P13061823983426903806

/-! ## A051835.P16462548822639254896

`∩[A083137(n+1), A118573(n+1)]`
-/

namespace A051835.P16462548822639254896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P16462548822639254896

/-! ## A051835.P12383180774546416160

`∩[A084092(n+1), A118573(n+1)]`
-/

namespace A051835.P12383180774546416160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P12383180774546416160

/-! ## A051835.P1573595048242544057

`∩[A118573(n+1), A169829(n+1)]`
-/

namespace A051835.P1573595048242544057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P1573595048242544057

/-! ## A051835.P17258242869570245189

`∩[A118573(n+1), A188650(n+1)]`
-/

namespace A051835.P17258242869570245189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051835.P17258242869570245189

/-!
# A051836: a(n) = n*(n+1)*(n+2)*(n+3)*(3*n+2)/120.

The programs for A051836, the canonical program `A051836.P14815993383635968968` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051836 has offset 0).

The definition of A051836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(n+3)*(3*n+2)/120` (program `A051836.P9592439288482490687`, by `A051836.P9592439288482490687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051836.P12495276296929915860

`C(n+3, 4)*(3*n+2)/5`
-/

namespace A051836.P12495276296929915860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 4 * (3 * n + 2) : ℚ) / 5

end

end A051836.P12495276296929915860

namespace A051836

/-- `C(n+3, 4)*(3*n+2)/5` -/
def P12495276296929915860.Spec : Prop :=
  ∀ n, P12495276296929915860.a n = (A051836 n : ℚ)

theorem P12495276296929915860.correct : P12495276296929915860.Spec := by
  intro n
  simp only [A051836, Nat.add_sub_cancel, A051836.P12495276296929915860.a, A051836.P14815993383635968968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051836

/-! ## A051836.P9592439288482490687

`n*(n+1)*(n+2)*(n+3)*(3*n+2)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051836.P9592439288482490687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) * (3 * n + 2) : ℚ) / 120

end

end A051836.P9592439288482490687

namespace A051836

/-- `n*(n+1)*(n+2)*(n+3)*(3*n+2)/120` -/
def P9592439288482490687.Spec : Prop :=
  ∀ n, P9592439288482490687.a n = (A051836 n : ℚ)

theorem P9592439288482490687.correct : P9592439288482490687.Spec := by
  intro n
  simp only [A051836, Nat.add_sub_cancel, A051836.P9592439288482490687.a, A051836.P14815993383635968968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051836

/-! ## A051836.P13184660602129344742

`Δ[n/2*C(n+3, 5)]`
-/

namespace A051836.P13184660602129344742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (Nat.choose (n + 3) 5 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051836.P13184660602129344742

namespace A051836

/-- `Δ[n/2*C(n+3, 5)]` -/
def P13184660602129344742.Spec : Prop :=
  ∀ n, P13184660602129344742.a n = (A051836 n : ℚ)

theorem P13184660602129344742.correct : P13184660602129344742.Spec := by
  intro n
  simp only [A051836, Nat.add_sub_cancel, A051836.P13184660602129344742.f1, A051836.P13184660602129344742.a, A051836.P14815993383635968968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051836

/-! ## A051836.P9724851576737304818

`∑[∑[∑[∑[a(n-1)+3]]]]` with `a(0)=0, a(1)=1`
-/

namespace A051836.P9724851576737304818
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f4 =>
  f4 (n - 1) + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P9724851576737304818

namespace A051836

/-- `∑[∑[∑[∑[a(n-1)+3]]]]` -/
def P9724851576737304818.Spec : Prop :=
  ∀ n, (P9724851576737304818.a n : ℤ) = A051836 n

end A051836

/-! ## A051836.P14815993383635968968

`C(n+4, 5)+2*C(n+3, 5)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051836

/-- `C(n+4, 5)+2*C(n+3, 5)` -/
def P14815993383635968968.Spec : Prop :=
  ∀ n, (P14815993383635968968.a n : ℤ) = A051836 n

theorem P14815993383635968968.correct : P14815993383635968968.Spec := by
  intro n
  simp only [A051836]

end A051836

/-! ## A051836.P11478604018304075812

`∑[A001296(n)]`
-/

namespace A051836.P11478604018304075812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P11478604018304075812

namespace A051836

/-- `∑[A001296(n)]` -/
def P11478604018304075812.Spec : Prop :=
  ∀ n, P11478604018304075812.a n = A051836 n

end A051836

/-! ## A051836.P2010187820361626002

`∑[∑[A002411(n)]]`
-/

namespace A051836.P2010187820361626002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P2010187820361626002

namespace A051836

/-- `∑[∑[A002411(n)]]` -/
def P2010187820361626002.Spec : Prop :=
  ∀ n, P2010187820361626002.a n = A051836 n

end A051836

/-! ## A051836.P18150008271129339341

`∑[A153978(n+1)/2]`
-/

namespace A051836.P18150008271129339341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153978 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P18150008271129339341

namespace A051836

/-- `∑[A153978(n+1)/2]` -/
def P18150008271129339341.Spec : Prop :=
  ∀ n, P18150008271129339341.a n = (A051836 n : ℚ)

end A051836

/-! ## A051836.P7227142644959151085

`∑[∑[A064808(n)-(n+1)]]`
-/

namespace A051836.P7227142644959151085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P7227142644959151085

namespace A051836

/-- `∑[∑[A064808(n)-(n+1)]]` -/
def P7227142644959151085.Spec : Prop :=
  ∀ n, P7227142644959151085.a n = A051836 n

end A051836

/-! ## A051836.P4218857555767931816

`∑[A130218(n+1)-(n+1)]`
-/

namespace A051836.P4218857555767931816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130218 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P4218857555767931816

namespace A051836

/-- `∑[A130218(n+1)-(n+1)]` -/
def P4218857555767931816.Spec : Prop :=
  ∀ n, P4218857555767931816.a n = A051836 n

end A051836

/-! ## A051836.P13488662927976910978

`A271662(n)-A271663(n)`
-/

namespace A051836.P13488662927976910978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n - A271663 n

end

end A051836.P13488662927976910978

namespace A051836

/-- `A271662(n)-A271663(n)` -/
def P13488662927976910978.Spec : Prop :=
  ∀ n, P13488662927976910978.a n = A051836 n

end A051836

/-! ## A051836.P11102882402235866493

`A108650(n)-A086689(n+1)`
-/

namespace A051836.P11102882402235866493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n - A086689 (n + 1)

end

end A051836.P11102882402235866493

namespace A051836

/-- `A108650(n)-A086689(n+1)` -/
def P11102882402235866493.Spec : Prop :=
  ∀ n, P11102882402235866493.a n = A051836 n

end A051836

/-! ## A051836.P14974682413250956587

`A244882(n)-A005585(n+1)`
-/

namespace A051836.P14974682413250956587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n - A005585 (n + 1)

end

end A051836.P14974682413250956587

namespace A051836

/-- `A244882(n)-A005585(n+1)` -/
def P14974682413250956587.Spec : Prop :=
  ∀ n, P14974682413250956587.a n = A051836 n

end A051836

/-! ## A051836.P6677843573116266237

`A293475(n)%A067056(n+1)`
-/

namespace A051836.P6677843573116266237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293475 n) (A067056 (n + 1))

end

end A051836.P6677843573116266237

namespace A051836

/-- `A293475(n)%A067056(n+1)` -/
def P6677843573116266237.Spec : Prop :=
  ∀ n, P6677843573116266237.a n = A051836 n

end A051836

/-! ## A051836.P13696470250731609622

`A110159(n)-A024166(n+1)`
-/

namespace A051836.P13696470250731609622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110159 n - A024166 (n + 1)

end

end A051836.P13696470250731609622

namespace A051836

/-- `A110159(n)-A024166(n+1)` -/
def P13696470250731609622.Spec : Prop :=
  ∀ n, P13696470250731609622.a n = A051836 n

end A051836

/-! ## A051836.P12120029196764988802

`A051923(n+1)-(A132117(n+2)+A051923(n))`
-/

namespace A051836.P12120029196764988802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 (n + 1) - (A132117 (n + 2) + A051923 n)

end

end A051836.P12120029196764988802

namespace A051836

/-- `A051923(n+1)-(A132117(n+2)+A051923(n))` -/
def P12120029196764988802.Spec : Prop :=
  ∀ n, P12120029196764988802.a n = A051836 n

end A051836

/-! ## A051836.P12899328948265657419

`∑[∑[A188067(2*n)]]`
-/

namespace A051836.P12899328948265657419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P12899328948265657419

namespace A051836

/-- `∑[∑[A188067(2*n)]]` -/
def P12899328948265657419.Spec : Prop :=
  ∀ n, P12899328948265657419.a n = A051836 n

end A051836

/-! ## A051836.P1912190429194502104

`A154324(2*n+1)-A154322(n)`
-/

namespace A051836.P1912190429194502104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154324 (2 * n + 1) - A154322 n

end

end A051836.P1912190429194502104

namespace A051836

/-- `A154324(2*n+1)-A154322(n)` -/
def P1912190429194502104.Spec : Prop :=
  ∀ n, P1912190429194502104.a n = A051836 n

end A051836

/-! ## A051836.P14263040829771970384

`∑[record[A133722(n+1)]]`
-/

namespace A051836.P14263040829771970384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P14263040829771970384

namespace A051836

/-- `∑[record[A133722(n+1)]]` -/
def P14263040829771970384.Spec : Prop :=
  ∀ n, P14263040829771970384.a n = A051836 n

end A051836

/-! ## A051836.P8906781396996853692

`∑[A034261(∑[n+3])]`
-/

namespace A051836.P8906781396996853692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051836.P8906781396996853692

namespace A051836

/-- `∑[A034261(∑[n+3])]` -/
def P8906781396996853692.Spec : Prop :=
  ∀ n, P8906781396996853692.a n = A051836 n

end A051836

/-!
# A051837: Rank of Demjanenko matrix mod n-th prime.

The programs for A051837, there is no canonical definition to state claims against.
-/

/-! ## A051837.P17411480188079498863

`A005097(n+2)-A061853(A028785(3*(n+1)))`
-/

namespace A051837.P17411480188079498863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - A061853 (A028785 (3 * (n + 1))).toNat

end

end A051837.P17411480188079498863

/-! ## A051837.P13407075967266674987

`A102781(n+3)-A280292(A286624(2*(n+2)))`
-/

namespace A051837.P13407075967266674987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 3) - A280292 (A286624 (2 * (n + 2))).toNat

end

end A051837.P13407075967266674987

/-! ## A051837.P8302620816734658107

`A111333(n+3)-A276317(A268448(n+1))`
-/

namespace A051837.P8302620816734658107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 3) - A276317 (A268448 (n + 1)).toNat

end

end A051837.P8302620816734658107

/-! ## A051837.P17912414075614185676

`∑[A270969(2*n+1)-A076392(2*n+3)%2]`
-/

namespace A051837.P17912414075614185676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270969 (2 * n + 1) - Int.tmod (A076392 (2 * n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051837.P17912414075614185676

/-! ## A051837.P10796723316184302844

`A005097(n+2)-A239657(A095892(n))`
-/

namespace A051837.P10796723316184302844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - A239657 (A095892 n).toNat

end

end A051837.P10796723316184302844

/-!
# A051838: Numbers k such that sum of first k primes divides product of first k primes.

The programs for A051838, the canonical program `A051838.P6178273382808269284` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051838 has offset 1).

The definition of A051838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051838.P6178273382808269284

`eq[1, A121755(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051838

/-- `eq[1, A121755(n+1)]+1` -/
def P6178273382808269284.Spec : Prop :=
  ∀ n, (P6178273382808269284.a n : ℤ) = A051838 (n + 1)

theorem P6178273382808269284.correct : P6178273382808269284.Spec := by
  intro n
  simp only [A051838, Nat.add_sub_cancel]

end A051838

/-! ## A051838.P6981343664159999478

`lt[A255217(n+1), 1]+1`
-/

namespace A051838.P6981343664159999478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255217 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051838.P6981343664159999478

namespace A051838

/-- `lt[A255217(n+1), 1]+1` -/
def P6981343664159999478.Spec : Prop :=
  ∀ n, (P6981343664159999478.a n : ℤ) = A051838 (n + 1)

end A051838

/-! ## A051838.P14466423237122932288

`A102283(3*n)+lt[A121755(n+1), 2]+1`
-/

namespace A051838.P14466423237122932288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A051838.P14466423237122932288

namespace A051838

/-- `A102283(3*n)+lt[A121755(n+1), 2]+1` -/
def P14466423237122932288.Spec : Prop :=
  ∀ n, P14466423237122932288.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P17910120472413148905

`A000720(A140761(n+1))`
-/

namespace A051838.P17910120472413148905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A140761 (n + 1)).toNat

end

end A051838.P17910120472413148905

namespace A051838

/-- `A000720(A140761(n+1))` -/
def P17910120472413148905.Spec : Prop :=
  ∀ n, P17910120472413148905.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P1212631445679277834

`∑{d}[A140761(n+1), A061395(#)]`
-/

namespace A051838.P1212631445679277834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A051838.P1212631445679277834

namespace A051838

/-- `∑{d}[A140761(n+1), A061395(#)]` -/
def P1212631445679277834.Spec : Prop :=
  ∀ n, P1212631445679277834.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P6385995002180862841

`A061395(A140761(n+1))%A017353(n)`
-/

namespace A051838.P6385995002180862841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A140761 (n + 1)).toNat) (A017353 n)

end

end A051838.P6385995002180862841

namespace A051838

/-- `A061395(A140761(n+1))%A017353(n)` -/
def P6385995002180862841.Spec : Prop :=
  ∀ n, P6385995002180862841.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P4846135395863670903

`A297109(2*A140761(n+1)-A140761(n+1))`
-/

namespace A051838.P4846135395863670903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (2 * A140761 (n + 1) - A140761 (n + 1)).toNat

end

end A051838.P4846135395863670903

namespace A051838

/-- `A297109(2*A140761(n+1)-A140761(n+1))` -/
def P4846135395863670903.Spec : Prop :=
  ∀ n, P4846135395863670903.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P8845701489647111024

`A061395(2*A140761(n+1))`
-/

namespace A051838.P8845701489647111024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A140761 (n + 1)).toNat

end

end A051838.P8845701489647111024

namespace A051838

/-- `A061395(2*A140761(n+1))` -/
def P8845701489647111024.Spec : Prop :=
  ∀ n, P8845701489647111024.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P12154301275891717435

`A061395(lcm(2, A140761(n+1)))`
-/

namespace A051838.P12154301275891717435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A140761 (n + 1)))

end

end A051838.P12154301275891717435

namespace A051838

/-- `A061395(lcm(2, A140761(n+1)))` -/
def P12154301275891717435.Spec : Prop :=
  ∀ n, P12154301275891717435.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P5627146781645852106

`∑{d}[A140761(n+1), A252464(#)]`
-/

namespace A051838.P5627146781645852106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252464 d

end

end A051838.P5627146781645852106

namespace A051838

/-- `∑{d}[A140761(n+1), A252464(#)]` -/
def P5627146781645852106.Spec : Prop :=
  ∀ n, P5627146781645852106.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P15867467718845617403

`A049084(A140761(n+1))%A030665(n+1)`
-/

namespace A051838.P15867467718845617403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A140761 (n + 1)).toNat) (A030665 (n + 1))

end

end A051838.P15867467718845617403

namespace A051838

/-- `A049084(A140761(n+1))%A030665(n+1)` -/
def P15867467718845617403.Spec : Prop :=
  ∀ n, P15867467718845617403.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P2540062723316749025

`A049084(A140761(n+1)%A173089(n+1))`
-/

namespace A051838.P2540062723316749025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A140761 (n + 1)) (A173089 (n + 1))).toNat

end

end A051838.P2540062723316749025

namespace A051838

/-- `A049084(A140761(n+1)%A173089(n+1))` -/
def P2540062723316749025.Spec : Prop :=
  ∀ n, P2540062723316749025.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P12836713027390393970

`A252464(2*A140761(n+1)-A140761(n+1))`
-/

namespace A051838.P12836713027390393970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A140761 (n + 1) - A140761 (n + 1)).toNat

end

end A051838.P12836713027390393970

namespace A051838

/-- `A252464(2*A140761(n+1)-A140761(n+1))` -/
def P12836713027390393970.Spec : Prop :=
  ∀ n, P12836713027390393970.a n = A051838 (n + 1)

end A051838

/-! ## A051838.P7910506329180089039

`A252464(2*A140761(n+1))-1`
-/

namespace A051838.P7910506329180089039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A140761 (n + 1)).toNat - 1

end

end A051838.P7910506329180089039

namespace A051838

/-- `A252464(2*A140761(n+1))-1` -/
def P7910506329180089039.Spec : Prop :=
  ∀ n, P7910506329180089039.a n = A051838 (n + 1)

end A051838

/-!
# A051839: Number of partitions of n with parts (with repetitions) forming a division lattice (i.e., closed under GCD and LCM).

The programs for A051839, there is no canonical definition to state claims against.
-/

/-! ## A051839.P4637148964045255969

`A130714(n+1)-A178798(A116680(n))`
-/

namespace A051839.P4637148964045255969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130714 (n + 1) - A178798 (A116680 n).toNat

end

end A051839.P4637148964045255969

/-! ## A051839.P12606320134701462536

`A130714(n+1)-A185284(2*n+3)`
-/

namespace A051839.P12606320134701462536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130714 (n + 1) - A185284 (2 * n + 3)

end

end A051839.P12606320134701462536

/-! ## A051839.P12440003359336154160

`A178798(A208331(n+1))+A130714(n+1)`
-/

namespace A051839.P12440003359336154160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A208331 (n + 1)).toNat + A130714 (n + 1)

end

end A051839.P12440003359336154160

/-! ## A051839.P6146213077533134826

`A130714(n+1)-A080995(A272564(3*n+1))`
-/

namespace A051839.P6146213077533134826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130714 (n + 1) - A080995 (A272564 (3 * n + 1)).toNat

end

end A051839.P6146213077533134826

/-!
# A051840: Integer part of the Verhulst sequence x(n)=x(n-1)+3*(1-x(n-1))*x(n-1), x(0)=.1.

The programs for A051840, there is no canonical definition to state claims against.
-/

/-! ## A051840.P1402726313118001474

`A000035(A347621(n)+A274933(n+1))`
-/

namespace A051840.P1402726313118001474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347621 n + A274933 (n + 1)).toNat

end

end A051840.P1402726313118001474

/-! ## A051840.P7864435549740334562

`A000034(A347621(n)+A274933(n+1))-1`
-/

namespace A051840.P7864435549740334562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A347621 n + A274933 (n + 1)).toNat - 1

end

end A051840.P7864435549740334562

/-! ## A051840.P7792275582343688848

`A000290(A347621(n)+A274933(n+1))%2`
-/

namespace A051840.P7792275582343688848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A347621 n + A274933 (n + 1)).toNat) 2

end

end A051840.P7792275582343688848

/-! ## A051840.P15071864451603956387

`A103542(A347621(n)+A274933(n+1))%2`
-/

namespace A051840.P15071864451603956387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103542 (A347621 n + A274933 (n + 1)).toNat) 2

end

end A051840.P15071864451603956387

/-! ## A051840.P11657841155986740853

`A135461(A087467(n+8)%A134244(n+1))`
-/

namespace A051840.P11657841155986740853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (Int.tmod (A087467 (n + 8)) (A134244 (n + 1))).toNat

end

end A051840.P11657841155986740853

/-!
# A051841: Number of binary Lyndon words with an even number of 1's.

The programs for A051841, the canonical program `A051841.P14927050222339071837` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051841 has offset 1).

The definition of A051841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051841.P17342793741873178975

`A042980(n+1)+A042979(n+1)`
-/

namespace A051841.P17342793741873178975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042980 (n + 1) + A042979 (n + 1)

end

end A051841.P17342793741873178975

namespace A051841

/-- `A042980(n+1)+A042979(n+1)` -/
def P17342793741873178975.Spec : Prop :=
  ∀ n, P17342793741873178975.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P14927050222339071837

`A001037(n+1)-A000048(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A051841

/-- `A001037(n+1)-A000048(n+1)` -/
def P14927050222339071837.Spec : Prop :=
  ∀ n, P14927050222339071837.a n = A051841 (n + 1)

theorem P14927050222339071837.correct : P14927050222339071837.Spec := by
  intro n
  simp only [A051841, Nat.add_sub_cancel]

end A051841

/-! ## A051841.P488407401420017548

`A074028(n+1)+A074027(n+1)`
-/

namespace A051841.P488407401420017548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074028 (n + 1) + A074027 (n + 1)

end

end A051841.P488407401420017548

namespace A051841

/-- `A074028(n+1)+A074027(n+1)` -/
def P488407401420017548.Spec : Prop :=
  ∀ n, P488407401420017548.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P762458179104805796

`A000016(n+1)+A115118(n+1)-A066656(n+1)`
-/

namespace A051841.P762458179104805796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A115118 (n + 1) - A066656 (n + 1))

end

end A051841.P762458179104805796

namespace A051841

/-- `A000016(n+1)+A115118(n+1)-A066656(n+1)` -/
def P762458179104805796.Spec : Prop :=
  ∀ n, P762458179104805796.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P14085399240445575192

`A059966(n+1)-A056303(n+1)`
-/

namespace A051841.P14085399240445575192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A056303 (n + 1)

end

end A051841.P14085399240445575192

namespace A051841

/-- `A059966(n+1)-A056303(n+1)` -/
def P14085399240445575192.Spec : Prop :=
  ∀ n, P14085399240445575192.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P4709090783260671997

`A001037(n+1)-(A056303(n+1)+A000007(n))`
-/

namespace A051841.P4709090783260671997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - (A056303 (n + 1) + A000007 n)

end

end A051841.P4709090783260671997

namespace A051841

/-- `A001037(n+1)-(A056303(n+1)+A000007(n))` -/
def P4709090783260671997.Spec : Prop :=
  ∀ n, P4709090783260671997.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P9615338703575319308

`A001037(n+1)+A173278(n)-A173278(n+1)`
-/

namespace A051841.P9615338703575319308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A173278 n - A173278 (n + 1))

end

end A051841.P9615338703575319308

namespace A051841

/-- `A001037(n+1)+A173278(n)-A173278(n+1)` -/
def P9615338703575319308.Spec : Prop :=
  ∀ n, P9615338703575319308.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P7564616929736729187

`A000031(n+1)-(A066656(n+1)+A000048(n+1))`
-/

namespace A051841.P7564616929736729187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A066656 (n + 1) + A000048 (n + 1))

end

end A051841.P7564616929736729187

namespace A051841

/-- `A000031(n+1)-(A066656(n+1)+A000048(n+1))` -/
def P7564616929736729187.Spec : Prop :=
  ∀ n, P7564616929736729187.a n = A051841 (n + 1)

theorem P7564616929736729187.correct : P7564616929736729187.Spec := by
  intro n
  simp only [A051841, Nat.add_sub_cancel, A051841.P7564616929736729187.a, A051841.P14927050222339071837.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A000048, A000048.P16452762028424782785.a, A001037, A001037.P3072020637183991904.a, A066656, A066656.P10645985252166079910.a, A045664, A045664.P10163269847227854319.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A233583, A233583.P15026547221992958741.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P18254306604665478110.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051841

/-! ## A051841.P3824990046808492032

`A001037(n+1)+A115118(n+1)-A000013(n+1)`
-/

namespace A051841.P3824990046808492032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A115118 (n + 1) - A000013 (n + 1))

end

end A051841.P3824990046808492032

namespace A051841

/-- `A001037(n+1)+A115118(n+1)-A000013(n+1)` -/
def P3824990046808492032.Spec : Prop :=
  ∀ n, P3824990046808492032.a n = A051841 (n + 1)

theorem P3824990046808492032.correct : P3824990046808492032.Spec := by
  intro n
  simp only [A051841, Nat.add_sub_cancel, A051841.P3824990046808492032.a, A051841.P14927050222339071837.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000048, A000048.P16452762028424782785.a, A001037, A001037.P3072020637183991904.a, A115118, A115118.P6546194884082821130.a, A045664, A045664.P10163269847227854319.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A233583, A233583.P15026547221992958741.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P18254306604665478110.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A008965, A008965.P16924218572130557635.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051841

/-! ## A051841.P10750332899388657251

`Δ[A173270(n)-A173278(n)]`
-/

namespace A051841.P10750332899388657251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n - A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051841.P10750332899388657251

namespace A051841

/-- `Δ[A173270(n)-A173278(n)]` -/
def P10750332899388657251.Spec : Prop :=
  ∀ n, P10750332899388657251.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P17718987288328268850

`A328742(n+1)-A328740(n+1)`
-/

namespace A051841.P17718987288328268850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - A328740 (n + 1)

end

end A051841.P17718987288328268850

namespace A051841

/-- `A328742(n+1)-A328740(n+1)` -/
def P17718987288328268850.Spec : Prop :=
  ∀ n, P17718987288328268850.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P8762066079512809968

`A328743(n+1)-(A328741(n+1)+A328740(n+1))`
-/

namespace A051841.P8762066079512809968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 (n + 1) - (A328741 (n + 1) + A328740 (n + 1))

end

end A051841.P8762066079512809968

namespace A051841

/-- `A328743(n+1)-(A328741(n+1)+A328740(n+1))` -/
def P8762066079512809968.Spec : Prop :=
  ∀ n, P8762066079512809968.a n = A051841 (n + 1)

end A051841

/-! ## A051841.P14811219669589042203

`A107847(n+1)+A110981(n+1)-A000048(n+1)`
-/

namespace A051841.P14811219669589042203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107847 (n + 1) + (A110981 (n + 1) - A000048 (n + 1))

end

end A051841.P14811219669589042203

namespace A051841

/-- `A107847(n+1)+A110981(n+1)-A000048(n+1)` -/
def P14811219669589042203.Spec : Prop :=
  ∀ n, P14811219669589042203.a n = A051841 (n + 1)

end A051841

/-!
# A051843: Partial sums of A002419.

The programs for A051843, the canonical program `A051843.P4930616310442020541` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051843 has offset 0).

The definition of A051843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051843.P4930616310442020541

`(6*n-1)*C(n+3, 4)/5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051843

/-- `(6*n-1)*C(n+3, 4)/5` -/
def P4930616310442020541.Spec : Prop :=
  ∀ n, P4930616310442020541.a n = (A051843 n : ℚ)

end A051843

/-! ## A051843.P12500996196163064735

`n*(n+1)*(n+2)*(n+3)*(6*n-1)/120`
-/

namespace A051843.P12500996196163064735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) * (n + 2) * (n + 3) : ℤ) * ((6 * n : ℤ) - 1) : ℚ) / 120

end

end A051843.P12500996196163064735

namespace A051843

/-- `n*(n+1)*(n+2)*(n+3)*(6*n-1)/120` -/
def P12500996196163064735.Spec : Prop :=
  ∀ n, P12500996196163064735.a n = (A051843 n : ℚ)

end A051843

/-! ## A051843.P11840609149705834460

`Δ[(n-1)*C(n+3, 5)]`
-/

namespace A051843.P11840609149705834460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 3) 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051843.P11840609149705834460

namespace A051843

/-- `Δ[(n-1)*C(n+3, 5)]` -/
def P11840609149705834460.Spec : Prop :=
  ∀ n, P11840609149705834460.a n = A051843 n

end A051843

/-! ## A051843.P1973684384557140133

`∑[C(n+1, 3)+∑[n]²]`
-/

namespace A051843.P1973684384557140133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051843.P1973684384557140133

namespace A051843

/-- `∑[C(n+1, 3)+∑[n]²]` -/
def P1973684384557140133.Spec : Prop :=
  ∀ n, (P1973684384557140133.a n : ℤ) = A051843 n

end A051843

/-! ## A051843.P3004588283110082911

`∑[∑[(2*n-1)*C(n+1, 2)]]`
-/

namespace A051843.P3004588283110082911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.choose (n + 1) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051843.P3004588283110082911

namespace A051843

/-- `∑[∑[(2*n-1)*C(n+1, 2)]]` -/
def P3004588283110082911.Spec : Prop :=
  ∀ n, P3004588283110082911.a n = A051843 n

end A051843

/-! ## A051843.P745154355704928478

`∑[∑[(n+1)*C(2*n, 2)/2]]`
-/

namespace A051843.P745154355704928478
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.choose (2 * n) 2 : ℚ) / 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051843.P745154355704928478

namespace A051843

/-- `∑[∑[(n+1)*C(2*n, 2)/2]]` -/
def P745154355704928478.Spec : Prop :=
  ∀ n, P745154355704928478.a n = (A051843 n : ℚ)

end A051843

/-! ## A051843.P16657846477567719696

`A212560(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A051843.P16657846477567719696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A212560 n + a (n - 2)

end

end A051843.P16657846477567719696

namespace A051843

/-- `A212560(n)+a(n-2)` -/
def P16657846477567719696.Spec : Prop :=
  ∀ n, P16657846477567719696.a n = A051843 n

end A051843

/-! ## A051843.P14783520292742973172

`A225007(n)-A051880(n)`
-/

namespace A051843.P14783520292742973172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n - A051880 n

end

end A051843.P14783520292742973172

namespace A051843

/-- `A225007(n)-A051880(n)` -/
def P14783520292742973172.Spec : Prop :=
  ∀ n, P14783520292742973172.a n = A051843 n

end A051843

/-! ## A051843.P17917715432924681163

`A271663(n)-A002417(n+1)`
-/

namespace A051843.P17917715432924681163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 n - A002417 (n + 1)

end

end A051843.P17917715432924681163

namespace A051843

/-- `A271663(n)-A002417(n+1)` -/
def P17917715432924681163.Spec : Prop :=
  ∀ n, P17917715432924681163.a n = A051843 n

end A051843

/-! ## A051843.P15839836696129939881

`A112851(n)+n*A000292(n)`
-/

namespace A051843.P15839836696129939881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 n + (n : ℤ) * A000292 n

end

end A051843.P15839836696129939881

namespace A051843

/-- `A112851(n)+n*A000292(n)` -/
def P15839836696129939881.Spec : Prop :=
  ∀ n, P15839836696129939881.a n = A051843 n

end A051843

/-! ## A051843.P12372299910624463040

`∑[A006011(n)]+n*A000292(n)`
-/

namespace A051843.P12372299910624463040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A000292 n

end

end A051843.P12372299910624463040

namespace A051843

/-- `∑[A006011(n)]+n*A000292(n)` -/
def P12372299910624463040.Spec : Prop :=
  ∀ n, P12372299910624463040.a n = A051843 n

end A051843

/-! ## A051843.P14914367263111522672

`A095166(n+1)-A033455(n+1)`
-/

namespace A051843.P14914367263111522672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1) - A033455 (n + 1)

end

end A051843.P14914367263111522672

namespace A051843

/-- `A095166(n+1)-A033455(n+1)` -/
def P14914367263111522672.Spec : Prop :=
  ∀ n, P14914367263111522672.a n = A051843 n

end A051843

/-! ## A051843.P9670924148702700503

`∑[A002419(n+1)]-A002419(n+1)`
-/

namespace A051843.P9670924148702700503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002419 (n + 1)

end

end A051843.P9670924148702700503

namespace A051843

/-- `∑[A002419(n+1)]-A002419(n+1)` -/
def P9670924148702700503.Spec : Prop :=
  ∀ n, P9670924148702700503.a n = A051843 n

end A051843

/-! ## A051843.P3009677419461020740

`∑[A000292(n)]+A024166(n)-A000292(n)`
-/

namespace A051843.P3009677419461020740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A024166 n - A000292 n)

end

end A051843.P3009677419461020740

namespace A051843

/-- `∑[A000292(n)]+A024166(n)-A000292(n)` -/
def P3009677419461020740.Spec : Prop :=
  ∀ n, P3009677419461020740.a n = A051843 n

end A051843

/-! ## A051843.P3489044758913395514

`∑[A033487(n)+A000292(n)]-A033487(n)`
-/

namespace A051843.P3489044758913395514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033487 n

end

end A051843.P3489044758913395514

namespace A051843

/-- `∑[A033487(n)+A000292(n)]-A033487(n)` -/
def P3489044758913395514.Spec : Prop :=
  ∀ n, P3489044758913395514.a n = A051843 n

end A051843

/-! ## A051843.P4497502978086682635

`∑[∑[n+1]²]-A002418(n+1)`
-/

namespace A051843.P4497502978086682635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002418 (n + 1)

end

end A051843.P4497502978086682635

namespace A051843

/-- `∑[∑[n+1]²]-A002418(n+1)` -/
def P4497502978086682635.Spec : Prop :=
  ∀ n, P4497502978086682635.a n = A051843 n

end A051843

/-! ## A051843.P10639425204791885997

`A024166(n)+A000332(n+2)`
-/

namespace A051843.P10639425204791885997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 n + A000332 (n + 2)

end

end A051843.P10639425204791885997

namespace A051843

/-- `A024166(n)+A000332(n+2)` -/
def P10639425204791885997.Spec : Prop :=
  ∀ n, P10639425204791885997.a n = A051843 n

end A051843

/-! ## A051843.P9514451061501996747

`A000332(n+2)+∑[A000537(n)]`
-/

namespace A051843.P9514451061501996747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051843.P9514451061501996747

namespace A051843

/-- `A000332(n+2)+∑[A000537(n)]` -/
def P9514451061501996747.Spec : Prop :=
  ∀ n, P9514451061501996747.a n = A051843 n

end A051843

/-! ## A051843.P3787900261546752629

`∑[∑[A111384(2*n+1)]]`
-/

namespace A051843.P3787900261546752629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051843.P3787900261546752629

namespace A051843

/-- `∑[∑[A111384(2*n+1)]]` -/
def P3787900261546752629.Spec : Prop :=
  ∀ n, P3787900261546752629.a n = A051843 n

end A051843

/-!
# A051844: a(n) = LCM_{k=0..n} (2^k + 1).

The programs for A051844, there is no canonical definition to state claims against.
-/

/-! ## A051844.P9436908125894767012

`lcm(2^n+1, a(n-1))` with `a(0)=2`
-/

namespace A051844.P9436908125894767012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (2 ^ n + 1) (a (n - 1))

end

end A051844.P9436908125894767012

/-! ## A051844.P17388486850809446636

`∏[A019320(2*n)]`
-/

namespace A051844.P17388486850809446636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051844.P17388486850809446636

/-! ## A051844.P1809216780355419284

`a(n-1)*A066845(n)` with `a(0)=2`
-/

namespace A051844.P1809216780355419284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A066845 n

end

end A051844.P1809216780355419284

/-! ## A051844.P15165458786358746985

`lcm(a(n-1), A000051(n))` with `a(0)=2`
-/

namespace A051844.P15165458786358746985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000051 n)

end

end A051844.P15165458786358746985

/-! ## A051844.P18033848256167230867

`A057643(2^n)`
-/

namespace A051844.P18033848256167230867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057643 (2 ^ n)

end

end A051844.P18033848256167230867

/-!
# A051845: Triangle T(n,k) read by rows, in which row n gives all permutations of digits 1..n interpreted in base n+1.

The programs for A051845, there is no canonical definition to state claims against.
-/

/-! ## A051845.P5034745165404679323

`A134640(A220696(n+2))`
-/

namespace A051845.P5034745165404679323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A220696 (n + 2)).toNat

end

end A051845.P5034745165404679323

/-! ## A051845.P14468561863019966321

`A068505(A030299(n+1))`
-/

namespace A051845.P14468561863019966321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A030299 (n + 1)).toNat

end

end A051845.P14468561863019966321

/-! ## A051845.P17862756798954858341

`A068505(A352991(n+1))`
-/

namespace A051845.P17862756798954858341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A352991 (n + 1)).toNat

end

end A051845.P17862756798954858341

/-! ## A051845.P8760078953366281789

`A068505(∩[A227073(n+1), A288528(n+1)])`
-/

namespace A051845.P8760078953366281789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288528 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A051845.P8760078953366281789

/-! ## A051845.P14443020130289102031

`A068505(∑[A220664(n+1)]+1-A220664(n+1))`
-/

namespace A051845.P14443020130289102031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A220664 (n + 1))).toNat

end

end A051845.P14443020130289102031

/-!
# A051846: Digits 1..n in strict descending order n..1 interpreted in base n+1.

The programs for A051846, the canonical program `A051846.P2782381068158070263` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051846 has offset 1).

The definition of A051846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051846.P2895664376718028236

`n*A058128(n+2)+1`
-/

namespace A051846.P2895664376718028236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058128 (n + 2) + 1

end

end A051846.P2895664376718028236

namespace A051846

/-- `n*A058128(n+2)+1` -/
def P2895664376718028236.Spec : Prop :=
  ∀ n, P2895664376718028236.a n = A051846 (n + 1)

end A051846

/-! ## A051846.P9252097816330582255

`A028310(n)*A023811(n+2)+A199969(n+2)`
-/

namespace A051846.P9252097816330582255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A023811 (n + 2) + A199969 (n + 2)

end

end A051846.P9252097816330582255

namespace A051846

/-- `A028310(n)*A023811(n+2)+A199969(n+2)` -/
def P9252097816330582255.Spec : Prop :=
  ∀ n, P9252097816330582255.a n = A051846 (n + 1)

end A051846

/-! ## A051846.P2782381068158070263

`((n+2)^(n+2)*n+1)/(n+1)²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051846

/-- `((n+2)^(n+2)*n+1)/(n+1)²` -/
def P2782381068158070263.Spec : Prop :=
  ∀ n, P2782381068158070263.a n = (A051846 (n + 1) : ℚ)

end A051846

/-! ## A051846.P17717061307219035293

`A062806(n+2)/(n+2)-(n+2)^(n+2)`
-/

namespace A051846.P17717061307219035293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062806 (n + 2) : ℚ) / (n + 2 : ℚ) - ((n + 2) ^ (n + 2) : ℚ)

end

end A051846.P17717061307219035293

namespace A051846

/-- `A062806(n+2)/(n+2)-(n+2)^(n+2)` -/
def P17717061307219035293.Spec : Prop :=
  ∀ n, P17717061307219035293.a n = (A051846 (n + 1) : ℚ)

end A051846

/-! ## A051846.P4869156465877066317

`n*A023811(n+2)+1+n`
-/

namespace A051846.P4869156465877066317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023811 (n + 2) + 1 + (n : ℤ)

end

end A051846.P4869156465877066317

namespace A051846

/-- `n*A023811(n+2)+1+n` -/
def P4869156465877066317.Spec : Prop :=
  ∀ n, P4869156465877066317.a n = A051846 (n + 1)

end A051846

/-! ## A051846.P10968743664614512634

`A000169(n+2)-A060073(n+2)`
-/

namespace A051846.P10968743664614512634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 2) - A060073 (n + 2)

end

end A051846.P10968743664614512634

namespace A051846

/-- `A000169(n+2)-A060073(n+2)` -/
def P10968743664614512634.Spec : Prop :=
  ∀ n, P10968743664614512634.a n = A051846 (n + 1)

end A051846

/-!
# A051847: Bisection of A051846, divided by the term position.

The programs for A051847, the canonical program `A051847.P18058728621329617621` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051847 has offset 1).

The definition of A051847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051847.P16968846633416067937

`A221740(2*n+1)`
-/

namespace A051847.P16968846633416067937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221740 (2 * n + 1)

end

end A051847.P16968846633416067937

namespace A051847

/-- `A221740(2*n+1)` -/
def P16968846633416067937.Spec : Prop :=
  ∀ n, P16968846633416067937.a n = A051847 (n + 1)

end A051847

/-! ## A051847.P18058728621329617621

`A051846(2*(n+1)-1)/(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051847

/-- `A051846(2*(n+1)-1)/(2*(n+1)-1)` -/
def P18058728621329617621.Spec : Prop :=
  ∀ n, P18058728621329617621.a n = (A051847 (n + 1) : ℚ)

end A051847

/-! ## A051847.P14223738991380660235

`record[A221740(n+1)/A033999(n)]`
-/

namespace A051847.P14223738991380660235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221740 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051847.P14223738991380660235

namespace A051847

/-- `record[A221740(n+1)/A033999(n)]` -/
def P14223738991380660235.Spec : Prop :=
  ∀ n, P14223738991380660235.a n = (A051847 (n + 1) : ℚ)

end A051847

/-! ## A051847.P5829143230475512202

`record[gcd(A221726(n+1), A221740(n+1))]`
-/

namespace A051847.P5829143230475512202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221726 (n + 1)) (A221740 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051847.P5829143230475512202

namespace A051847

/-- `record[gcd(A221726(n+1), A221740(n+1))]` -/
def P5829143230475512202.Spec : Prop :=
  ∀ n, (P5829143230475512202.a n : ℤ) = A051847 (n + 1)

end A051847

/-! ## A051847.P5088591208327224648

`A058128(2*(n+1))-A051848(n+1)`
-/

namespace A051847.P5088591208327224648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058128 (2 * (n + 1)) - A051848 (n + 1)

end

end A051847.P5088591208327224648

namespace A051847

/-- `A058128(2*(n+1))-A051848(n+1)` -/
def P5088591208327224648.Spec : Prop :=
  ∀ n, P5088591208327224648.a n = A051847 (n + 1)

end A051847

/-!
# A051848: Bisection of A023811, divided by the term position.

The programs for A051848, there is no canonical definition to state claims against.
-/

/-! ## A051848.P18149540472848899830

`A221741(2*n+1)`
-/

namespace A051848.P18149540472848899830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221741 (2 * n + 1)

end

end A051848.P18149540472848899830

/-! ## A051848.P10595625703854225619

`A023811(2*(n+1))/(2*(n+1)-1)`
-/

namespace A051848.P10595625703854225619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023811 (2 * (n + 1)) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A051848.P10595625703854225619

/-! ## A051848.P14049907149664393447

`or(1, A221741(Δ[n²]))`
-/

namespace A051848.P14049907149664393447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A221741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A051848.P14049907149664393447

/-! ## A051848.P5046942499228151708

`record[A221741(C(n, 2*floor(n/2)))]`
-/

namespace A051848.P5046942499228151708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221741 (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051848.P5046942499228151708

/-! ## A051848.P8706631384831877483

`record[A221741(abs(A030640(n)))]`
-/

namespace A051848.P8706631384831877483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221741 |A030640 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051848.P8706631384831877483

/-!
# A051849: Table in which n-th row gives all compositions of n interpreted as digits in base n+1.

The programs for A051849, there is no canonical definition to state claims against.
-/

/-! ## A051849.P8335556358747727089

`∑[A036987(n)]*A051850(n+1)`
-/

namespace A051849.P8335556358747727089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A051850 (n + 1)

end

end A051849.P8335556358747727089

/-! ## A051849.P17301100831999183165

`Δ[A083652(n)]*A051850(n+1)`
-/

namespace A051849.P17301100831999183165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A051850 (n + 1)

end

end A051849.P17301100831999183165

/-! ## A051849.P1670370709690858103

`A051850(n+1)*A113473(n+1)`
-/

namespace A051849.P1670370709690858103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051850 (n + 1) * A113473 (n + 1)

end

end A051849.P1670370709690858103

/-! ## A051849.P11442471658800809424

`∑[char[A000225(n)]]*A051850(n+1)`
-/

namespace A051849.P11442471658800809424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051850 (n + 1)

end

end A051849.P11442471658800809424

/-! ## A051849.P13646445093066010883

`(A000523(n+1)+1)*A051850(n+1)`
-/

namespace A051849.P13646445093066010883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000523 (n + 1) + 1) * A051850 (n + 1)

end

end A051849.P13646445093066010883

/-! ## A051849.P10753865252239503971

`A005555(A000523(n+1))*A051850(n+1)`
-/

namespace A051849.P10753865252239503971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A000523 (n + 1)).toNat * A051850 (n + 1)

end

end A051849.P10753865252239503971

/-! ## A051849.P15556535151285703297

`A051850(n+1)*A070939(n+1)`
-/

namespace A051849.P15556535151285703297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051850 (n + 1) * A070939 (n + 1)

end

end A051849.P15556535151285703297

/-! ## A051849.P16885057665499420592

`A000523(A051755(n+2))*A051850(n+1)`
-/

namespace A051849.P16885057665499420592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A051755 (n + 2)).toNat * A051850 (n + 1)

end

end A051849.P16885057665499420592

/-! ## A051849.P6013199382466773910

`A000523(A144396(n+1))*A051850(n+1)`
-/

namespace A051849.P6013199382466773910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A144396 (n + 1)).toNat * A051850 (n + 1)

end

end A051849.P6013199382466773910

/-!
# A051850: a(n) = A051849(n)/floor(log_2(n)+1).

The programs for A051850, there is no canonical definition to state claims against.
-/

/-! ## A051850.P18085216611051291773

`A051849(n+1)/floor(log2(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051850.P18085216611051291773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051849 (n + 1) : ℚ) / (⌊Real.logb 2 (n + 1 : ℝ) + 1⌋ : ℚ)

end

end A051850.P18085216611051291773

/-!
# A051851: Table in which n-th row gives all partitions of n interpreted in base n+1. (A subset of A051849 with each term having a non-descending digit-sequence in base n+1).

The programs for A051851, there is no canonical definition to state claims against.
-/

/-! ## A051851.P17235978974361297610

`A051852(n+1)*A161511(A161919(n+1))`
-/

namespace A051851.P17235978974361297610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051852 (n + 1) * A161511 (A161919 (n + 1)).toNat

end

end A051851.P17235978974361297610

/-! ## A051851.P1781605344741343270

`∑[A155972(n)]*A051852(n+1)`
-/

namespace A051851.P1781605344741343270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A051852 (n + 1)

end

end A051851.P1781605344741343270

/-! ## A051851.P10662067163533750216

`A118759(A002024(n+1)*A051852(n+1))`
-/

namespace A051851.P10662067163533750216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A002024 (n + 1) * A051852 (n + 1)).toNat

end

end A051851.P10662067163533750216

/-! ## A051851.P12818890569461060067

`A167976(A002024(n+1)*A051852(n+1))`
-/

namespace A051851.P12818890569461060067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (A002024 (n + 1) * A051852 (n + 1)).toNat

end

end A051851.P12818890569461060067

/-! ## A051851.P15542024640775259457

`A269394(A002024(n+1)*A051852(n+1))`
-/

namespace A051851.P15542024640775259457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A002024 (n + 1) * A051852 (n + 1)).toNat

end

end A051851.P15542024640775259457

/-!
# A051852: A051851(n)/row_index_of(n).

The programs for A051852, there is no canonical definition to state claims against.
-/

/-! ## A051852.P13818705388164542214

`A051851(n+1)/A161511(A161919(n+1))`
-/

namespace A051852.P13818705388164542214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051851 (n + 1) : ℚ) / (A161511 (A161919 (n + 1)).toNat : ℚ)

end

end A051852.P13818705388164542214

/-! ## A051852.P2933617823054712190

`A051851(n+1)/∑[A155972(n)]`
-/

namespace A051852.P2933617823054712190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155972 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051851 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A051852.P2933617823054712190

/-!
# A051853: Table of solutions to all possible Chinese Remainder Equations x = a1 mod p1, x = a2 mod p2, ..., x = an mod pn, where p1 - pn are the first n primes and each a1 - an varies between 1 and (its respective) p-1, with the leftmost a varying fastest.

The programs for A051853, there is no canonical definition to state claims against.
-/

/-! ## A051853.P15771391498313276290

`A343404(A328574(n+2))`
-/

namespace A051853.P15771391498313276290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343404 (A328574 (n + 2)).toNat

end

end A051853.P15771391498313276290

/-! ## A051853.P13521623477111249190

`A343404(lt[0, A355037(n)])`
-/

namespace A051853.P13521623477111249190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343404 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051853.P13521623477111249190

/-! ## A051853.P12212711743901174517

`A343404(lt[0, ∏{digits}[A049345(n), #]])`
-/

namespace A051853.P12212711743901174517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343404 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051853.P12212711743901174517

/-!
# A051855: Numbers k such that (k!)^4+1 is prime.

The programs for A051855, there is no canonical definition to state claims against.
-/

/-! ## A051855.P13849266739459189924

`A387044(A377271(n+1))`
-/

namespace A051855.P13849266739459189924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387044 (A377271 (n + 1)).toNat

end

end A051855.P13849266739459189924

/-! ## A051855.P4364846559981097951

`A025480(A113597(n))+n`
-/

namespace A051855.P4364846559981097951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A113597 n).toNat + (n : ℤ)

end

end A051855.P4364846559981097951

/-! ## A051855.P9793468626149167875

`A080593(A063443(n))+n`
-/

namespace A051855.P9793468626149167875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080593 (A063443 n).toNat + (n : ℤ)

end

end A051855.P9793468626149167875

/-!
# A051857: Numbers n such that (n!)^2-n!+1 is prime.

The programs for A051857, there is no canonical definition to state claims against.
-/

/-! ## A051857.P17675520548001116020

`A064216(A330572(n)+A326375(n))`
-/

namespace A051857.P17675520548001116020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A330572 n + A326375 n).toNat

end

end A051857.P17675520548001116020

/-! ## A051857.P11745519794968913204

`A026741(A014516(n)+A006894(n+1))`
-/

namespace A051857.P11745519794968913204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A014516 n + A006894 (n + 1)).toNat

end

end A051857.P11745519794968913204

/-!
# A051858: Values of B (the even leg) of a Pythagorean triangle with A and C both prime and part of a twin prime.

The programs for A051858, there is no canonical definition to state claims against.
-/

/-! ## A051858.P24721012738559699

`2*A051891(n+1)*A051892(n+1)`
-/

namespace A051858.P24721012738559699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051891 (n + 1) * A051892 (n + 1))

end

end A051858.P24721012738559699

/-! ## A051858.P15214478215049202363

`A051859(n+1)-1`
-/

namespace A051858.P15214478215049202363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051859 (n + 1) - 1

end

end A051858.P15214478215049202363

/-! ## A051858.P10388574575985873045

`xor(1, A051859(A000027(n+1)))`
-/

namespace A051858.P10388574575985873045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A051859 (A000027 (n + 1)).toNat)

end

end A051858.P10388574575985873045

/-! ## A051858.P3307111564980882281

`xor(A008683(A005117(n+1))², A051859(n+1))`
-/

namespace A051858.P3307111564980882281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A005117 (n + 1)).toNat ^ 2) (A051859 (n + 1))

end

end A051858.P3307111564980882281

/-! ## A051858.P8943144758040115426

`xor(A007318(A020639(10*n+5)), A051859(n+1))`
-/

namespace A051858.P8943144758040115426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A020639 (10 * n + 5)).toNat) (A051859 (n + 1))

end

end A051858.P8943144758040115426

/-! ## A051858.P16377148109701440267

`floor(A051642(n)²/2)`
-/

namespace A051858.P16377148109701440267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051642 n ^ 2 : ℚ) / 2⌋

end

end A051858.P16377148109701440267

/-! ## A051858.P6124516298365715900

`(A051642(n)+1)*A051892(n+1)`
-/

namespace A051858.P6124516298365715900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051642 n + 1) * A051892 (n + 1)

end

end A051858.P6124516298365715900

/-! ## A051858.P16489984304234838520

`(A051642(n)-1)*A051891(n+1)`
-/

namespace A051858.P16489984304234838520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051642 n - 1) * A051891 (n + 1)

end

end A051858.P16489984304234838520

/-! ## A051858.P4459111458341306207

`xor(A007318(∑[n]), A051859(n+1))`
-/

namespace A051858.P4459111458341306207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A051859 (n + 1))

end

end A051858.P4459111458341306207

/-! ## A051858.P4422673973978145133

`xor(A008459(∑[n]), A051859(n+1))`
-/

namespace A051858.P4422673973978145133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008459 (∑ j ∈ Finset.range (n + 1), f1 j)) (A051859 (n + 1))

end

end A051858.P4422673973978145133

/-!
# A051859: Values of C (the hypotenuse) of a Pythagorean triangle with A (the short leg) and C both prime and part of a twin prime.

The programs for A051859, there is no canonical definition to state claims against.
-/

/-! ## A051859.P17035227909015774000

`A051858(n+1)+1`
-/

namespace A051859.P17035227909015774000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051858 (n + 1) + 1

end

end A051859.P17035227909015774000

/-! ## A051859.P7242026321630526925

`A051891(n+1)²+A051892(n+1)²`
-/

namespace A051859.P7242026321630526925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051891 (n + 1) ^ 2 + A051892 (n + 1) ^ 2

end

end A051859.P7242026321630526925

/-! ## A051859.P16654027212277543187

`ceil(A051642(n)²/2)`
-/

namespace A051859.P16654027212277543187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051642 n ^ 2 : ℚ) / 2⌉

end

end A051859.P16654027212277543187

/-! ## A051859.P11688721252566462684

`A051891(n+1)+C(A051642(n), 2)`
-/

namespace A051859.P11688721252566462684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051891 (n + 1) + (Nat.choose (A051642 n).toNat 2 : ℤ)

end

end A051859.P11688721252566462684

/-! ## A051859.P2699952173139237854

`A051642(n)+2*A051892(n+1)²`
-/

namespace A051859.P2699952173139237854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051642 n + 2 * A051892 (n + 1) ^ 2

end

end A051859.P2699952173139237854

/-! ## A051859.P14332336686507582651

`A093829(A006047(n))²*round(A051642(n)²/2)`
-/

namespace A051859.P14332336686507582651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A006047 n).toNat ^ 2 * SequenceMachineLib.roundAway ((A051642 n ^ 2 : ℚ) / 2)

end

end A051859.P14332336686507582651

/-! ## A051859.P8194235811213926871

`A051891(n+1)+A051642(n)*A051892(n+1)`
-/

namespace A051859.P8194235811213926871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051891 (n + 1) + A051642 n * A051892 (n + 1)

end

end A051859.P8194235811213926871

/-! ## A051859.P3229154390522584783

`round(A051642(n)²/2)*A059841(A005843(n))`
-/

namespace A051859.P3229154390522584783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A051642 n ^ 2 : ℚ) / 2) * A059841 (A005843 n).toNat

end

end A051859.P3229154390522584783

/-! ## A051859.P14982724411439118409

`A007318(A256909(n))*round(A051642(n)²/2)`
-/

namespace A051859.P14982724411439118409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A256909 n).toNat * SequenceMachineLib.roundAway ((A051642 n ^ 2 : ℚ) / 2)

end

end A051859.P14982724411439118409

/-!
# A051860: Distinct prime numbers in order of their appearance in A051686.

The programs for A051860, there is no canonical definition to state claims against.
-/

/-! ## A051860.P5368391204086126178

`A089367(A051861(n+1))`
-/

namespace A051860.P5368391204086126178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (A051861 (n + 1)).toNat

end

end A051860.P5368391204086126178

/-! ## A051860.P4833361041379199684

`A051686(A051861(n+1)/2)`
-/

namespace A051860.P4833361041379199684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (SequenceMachineLib.roundAway ((A051861 (n + 1) : ℚ) / 2)).toNat

end

end A051860.P4833361041379199684

/-!
# A051861: Twice the positions in A051686 at which new primes appear in that sequence.

The programs for A051861, there is no canonical definition to state claims against.
-/

/-! ## A051861.P3307407110511107949

`A051692(∑{d}[A051860(n+1), A000720(#)])`
-/

namespace A051861.P3307407110511107949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051692 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A051861.P3307407110511107949

/-!
# A051864: Sum of transposition distances (divided by 2) present in the permutation produced by inverses of 1..(p-1) computed in Zp, where p is n-th prime.

The programs for A051864, there is no canonical definition to state claims against.
-/

/-! ## A051864.P12637683530593378015

`A075443(p?[xor(1, n)])`
-/

namespace A051864.P12637683530593378015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A051864.P12637683530593378015

/-! ## A051864.P14541485358022915790

`A075443(A000040(n+1))`
-/

namespace A051864.P14541485358022915790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A000040 (n + 1)).toNat

end

end A051864.P14541485358022915790

/-! ## A051864.P4492385153928116058

`A075443(A006005(n+1))`
-/

namespace A051864.P4492385153928116058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A006005 (n + 1)).toNat

end

end A051864.P4492385153928116058

/-! ## A051864.P5352693129352092991

`A075443(A171577(n+1))`
-/

namespace A051864.P5352693129352092991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A171577 (n + 1)).toNat

end

end A051864.P5352693129352092991

/-! ## A051864.P4722411019007881958

`A075443(A008578(n+2))`
-/

namespace A051864.P4722411019007881958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A008578 (n + 2)).toNat

end

end A051864.P4722411019007881958

/-! ## A051864.P15119182487032327813

`A075443(A075643(n+2))`
-/

namespace A051864.P15119182487032327813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A075643 (n + 2)).toNat

end

end A051864.P15119182487032327813

/-! ## A051864.P7555369115563958553

`A075443(A171525(n+2))`
-/

namespace A051864.P7555369115563958553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A171525 (n + 2)).toNat

end

end A051864.P7555369115563958553

/-! ## A051864.P10016289647362328623

`A075443(A175787(n+2))`
-/

namespace A051864.P10016289647362328623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A175787 (n + 2)).toNat

end

end A051864.P10016289647362328623

/-! ## A051864.P15596434142221319002

`A075443(A182986(n+2))`
-/

namespace A051864.P15596434142221319002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A182986 (n + 2)).toNat

end

end A051864.P15596434142221319002

/-! ## A051864.P17104620594935265928

`A075443(record[A006530(n+2)])`
-/

namespace A051864.P17104620594935265928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051864.P17104620594935265928

/-! ## A051864.P10959329495146439622

`A075443(record[A014963(n+2)])`
-/

namespace A051864.P10959329495146439622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051864.P10959329495146439622

/-! ## A051864.P8959009930869192188

`A075443(record[A020639(n+2)])`
-/

namespace A051864.P8959009930869192188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051864.P8959009930869192188

/-! ## A051864.P9749314348691979263

`A075443(eq[1, A001222(n+1)]+1)`
-/

namespace A051864.P9749314348691979263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051864.P9749314348691979263

/-!
# A051865: 13-gonal (or tridecagonal) numbers: a(n) = n*(11*n - 9)/2.

The programs for A051865, the canonical program `A051865.P6403725485047841460` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051865 has offset 0).

The definition of A051865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-9)/2` (program `A051865.P1886666013426743869`, by `A051865.P1886666013426743869.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051865.P1886666013426743869

`n*(11*n-9)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051865.P1886666013426743869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((11 * n : ℤ) - 9) : ℚ) / 2

end

end A051865.P1886666013426743869

namespace A051865

/-- `n*(11*n-9)/2` -/
def P1886666013426743869.Spec : Prop :=
  ∀ n, P1886666013426743869.a n = (A051865 n : ℚ)

theorem P1886666013426743869.correct : P1886666013426743869.Spec := by
  intro n
  induction n with
  | zero => simp [A051865, A051865.P1886666013426743869.a, A051865.P6403725485047841460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051865, Nat.add_sub_cancel, A051865.P1886666013426743869.a, A051865.P6403725485047841460.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051865

/-! ## A051865.P6403725485047841460

`11*n+a(n-1)-10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051865

/-- `11*n+a(n-1)-10` -/
def P6403725485047841460.Spec : Prop :=
  ∀ n, P6403725485047841460.a n = A051865 n

theorem P6403725485047841460.correct : P6403725485047841460.Spec := by
  intro n
  simp only [A051865]

end A051865

/-! ## A051865.P207686059759302494

`11*C(n, 2)+n`
-/

namespace A051865.P207686059759302494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2 + n

end

end A051865.P207686059759302494

namespace A051865

/-- `11*C(n, 2)+n` -/
def P207686059759302494.Spec : Prop :=
  ∀ n, (P207686059759302494.a n : ℤ) = A051865 n

end A051865

/-! ## A051865.P14066841079901475029

`∑[a(n-1)+11]` with `a(0)=0, a(1)=1`
-/

namespace A051865.P14066841079901475029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051865.P14066841079901475029

namespace A051865

/-- `∑[a(n-1)+11]` -/
def P14066841079901475029.Spec : Prop :=
  ∀ n, (P14066841079901475029.a n : ℤ) = A051865 n

end A051865

/-! ## A051865.P17675503811822272721

`∑[ogf((x+10x^2)/(1-2x+x^2))]`
-/

namespace A051865.P17675503811822272721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051865.P17675503811822272721

namespace A051865

/-- `∑[ogf((x+10x^2)/(1-2x+x^2))]` -/
def P17675503811822272721.Spec : Prop :=
  ∀ n, P17675503811822272721.a n = A051865 n

end A051865

/-! ## A051865.P258940330203898668

`ogf((x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051865.P258940330203898668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10] [1, -3, 3, -1] n

end

end A051865.P258940330203898668

namespace A051865

/-- `ogf((x+10x^2)/(1-3x+3x^2-x^3))` -/
def P258940330203898668.Spec : Prop :=
  ∀ n, P258940330203898668.a n = A051865 n

end A051865

/-! ## A051865.P817503272991197791

`A180223(n)-n`
-/

namespace A051865.P817503272991197791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n - (n : ℤ)

end

end A051865.P817503272991197791

namespace A051865

/-- `A180223(n)-n` -/
def P817503272991197791.Spec : Prop :=
  ∀ n, P817503272991197791.a n = A051865 n

end A051865

/-! ## A051865.P10322204977750952772

`A226488(n)-n²`
-/

namespace A051865.P10322204977750952772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n - (n ^ 2 : ℤ)

end

end A051865.P10322204977750952772

namespace A051865

/-- `A226488(n)-n²` -/
def P10322204977750952772.Spec : Prop :=
  ∀ n, P10322204977750952772.a n = A051865 n

end A051865

/-! ## A051865.P6569800327242949766

`A139267(n)-∑[n]`
-/

namespace A051865.P6569800327242949766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051865.P6569800327242949766

namespace A051865

/-- `A139267(n)-∑[n]` -/
def P6569800327242949766.Spec : Prop :=
  ∀ n, P6569800327242949766.a n = A051865 n

end A051865

/-! ## A051865.P17831735326060476115

`A226492(n)-2*n`
-/

namespace A051865.P17831735326060476115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n - (2 * n : ℤ)

end

end A051865.P17831735326060476115

namespace A051865

/-- `A226492(n)-2*n` -/
def P17831735326060476115.Spec : Prop :=
  ∀ n, P17831735326060476115.a n = A051865 n

end A051865

/-! ## A051865.P8856672428994019796

`A022268(n)-4*n`
-/

namespace A051865.P8856672428994019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n - (4 * n : ℤ)

end

end A051865.P8856672428994019796

namespace A051865

/-- `A022268(n)-4*n` -/
def P8856672428994019796.Spec : Prop :=
  ∀ n, P8856672428994019796.a n = A051865 n

end A051865

/-! ## A051865.P1908518247885866811

`A022269(n)-5*n`
-/

namespace A051865.P1908518247885866811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n - (5 * n : ℤ)

end

end A051865.P1908518247885866811

namespace A051865

/-- `A022269(n)-5*n` -/
def P1908518247885866811.Spec : Prop :=
  ∀ n, P1908518247885866811.a n = A051865 n

end A051865

/-! ## A051865.P14029579829582138556

`abs(7*A000217(n)-n*(9*n-1))`
-/

namespace A051865.P14029579829582138556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 * A000217 n - (n : ℤ) * ((9 * n : ℤ) - 1)|

end

end A051865.P14029579829582138556

namespace A051865

/-- `abs(7*A000217(n)-n*(9*n-1))` -/
def P14029579829582138556.Spec : Prop :=
  ∀ n, P14029579829582138556.a n = A051865 n

end A051865

/-! ## A051865.P816145634546479036

`A067998(n)+A062708(n)`
-/

namespace A051865.P816145634546479036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n + A062708 n

end

end A051865.P816145634546479036

namespace A051865

/-- `A067998(n)+A062708(n)` -/
def P816145634546479036.Spec : Prop :=
  ∀ n, P816145634546479036.a n = A051865 n

end A051865

/-! ## A051865.P5979037837517889803

`A161680(n)+A051624(n)`
-/

namespace A051865.P5979037837517889803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051624 n

end

end A051865.P5979037837517889803

namespace A051865

/-- `A161680(n)+A051624(n)` -/
def P5979037837517889803.Spec : Prop :=
  ∀ n, P5979037837517889803.a n = A051865 n

end A051865

/-! ## A051865.P1972758491034627978

`A218471(n)+A014107(n)`
-/

namespace A051865.P1972758491034627978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + A014107 n

end

end A051865.P1972758491034627978

namespace A051865

/-- `A218471(n)+A014107(n)` -/
def P1972758491034627978.Spec : Prop :=
  ∀ n, P1972758491034627978.a n = A051865 n

end A051865

/-! ## A051865.P7128680594971978470

`A165900(n)+A117625(n)`
-/

namespace A051865.P7128680594971978470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A117625 n

end

end A051865.P7128680594971978470

namespace A051865

/-- `A165900(n)+A117625(n)` -/
def P7128680594971978470.Spec : Prop :=
  ∀ n, P7128680594971978470.a n = A051865 n

end A051865

/-! ## A051865.P17761942771223046535

`A326725(n)+A049450(n)`
-/

namespace A051865.P17761942771223046535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A049450 n

end

end A051865.P17761942771223046535

namespace A051865

/-- `A326725(n)+A049450(n)` -/
def P17761942771223046535.Spec : Prop :=
  ∀ n, P17761942771223046535.a n = A051865 n

end A051865

/-! ## A051865.P16902802488631245802

`A014642(n)-A022271(n)`
-/

namespace A051865.P16902802488631245802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - A022271 n

end

end A051865.P16902802488631245802

namespace A051865

/-- `A014642(n)-A022271(n)` -/
def P16902802488631245802.Spec : Prop :=
  ∀ n, P16902802488631245802.a n = A051865 n

end A051865

/-! ## A051865.P5945142151746197434

`A014635(n)-A028895(n)`
-/

namespace A051865.P5945142151746197434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - A028895 n

end

end A051865.P5945142151746197434

namespace A051865

/-- `A014635(n)-A028895(n)` -/
def P5945142151746197434.Spec : Prop :=
  ∀ n, P5945142151746197434.a n = A051865 n

end A051865

/-!
# A051866: 14-gonal (or tetradecagonal) numbers: a(n) = n*(6*n-5).

The programs for A051866, the canonical program `A051866.P7037994286834974710` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051866 has offset 0).

The definition of A051866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n-5)` (program `A051866.P7037994286834974710`, by `A051866.P7037994286834974710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051866.P7037994286834974710

`n*(6*n-5)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051866

/-- `n*(6*n-5)` -/
def P7037994286834974710.Spec : Prop :=
  ∀ n, P7037994286834974710.a n = A051866 n

theorem P7037994286834974710.correct : P7037994286834974710.Spec := by
  intro n
  simp only [A051866]

end A051866

/-! ## A051866.P11276300519959742544

`A033568(n)-1`
-/

namespace A051866.P11276300519959742544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n - 1

end

end A051866.P11276300519959742544

namespace A051866

/-- `A033568(n)-1` -/
def P11276300519959742544.Spec : Prop :=
  ∀ n, P11276300519959742544.a n = A051866 n

theorem P11276300519959742544.correct : P11276300519959742544.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P11276300519959742544.a, A051866.P7037994286834974710.a, A033568, A033568.P8873267953823805199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P6439247015011434773

`12*C(n, 2)+n`
-/

namespace A051866.P6439247015011434773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose n 2 + n

end

end A051866.P6439247015011434773

namespace A051866

/-- `12*C(n, 2)+n` -/
def P6439247015011434773.Spec : Prop :=
  ∀ n, (P6439247015011434773.a n : ℤ) = A051866 n

theorem P6439247015011434773.correct : P6439247015011434773.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P6439247015011434773.a, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P14669426062272849359

`∑[a(n-1)+12]` with `a(0)=0, a(1)=1`
-/

namespace A051866.P14669426062272849359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051866.P14669426062272849359

namespace A051866

/-- `∑[a(n-1)+12]` -/
def P14669426062272849359.Spec : Prop :=
  ∀ n, (P14669426062272849359.a n : ℤ) = A051866 n

end A051866

/-! ## A051866.P13558505207993369578

`11-∑[a(n-1)-12]` with `a(0)=11`
-/

namespace A051866.P13558505207993369578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051866.P13558505207993369578

namespace A051866

/-- `11-∑[a(n-1)-12]` -/
def P13558505207993369578.Spec : Prop :=
  ∀ n, P13558505207993369578.a n = A051866 n

end A051866

/-! ## A051866.P11043932992664539539

`∑[ogf((2x+10x^2)/(1-2x+x^2))]-n`
-/

namespace A051866.P11043932992664539539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A051866.P11043932992664539539

namespace A051866

/-- `∑[ogf((2x+10x^2)/(1-2x+x^2))]-n` -/
def P11043932992664539539.Spec : Prop :=
  ∀ n, P11043932992664539539.a n = A051866 n

end A051866

/-! ## A051866.P3056672010356572151

`(12*n²+1+n)%(∑[12*n]+1)`
-/

namespace A051866.P3056672010356572151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 + 1 + n) % (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051866.P3056672010356572151

namespace A051866

/-- `(12*n²+1+n)%(∑[12*n]+1)` -/
def P3056672010356572151.Spec : Prop :=
  ∀ n, (P3056672010356572151.a n : ℤ) = A051866 n

end A051866

/-! ## A051866.P5433147555958779156

`A139267(n)-n`
-/

namespace A051866.P5433147555958779156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n - (n : ℤ)

end

end A051866.P5433147555958779156

namespace A051866

/-- `A139267(n)-n` -/
def P5433147555958779156.Spec : Prop :=
  ∀ n, P5433147555958779156.a n = A051866 n

theorem P5433147555958779156.correct : P5433147555958779156.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P5433147555958779156.a, A051866.P7037994286834974710.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P5366665914141912538

`A139268(n)-n²`
-/

namespace A051866.P5366665914141912538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n - (n ^ 2 : ℤ)

end

end A051866.P5366665914141912538

namespace A051866

/-- `A139268(n)-n²` -/
def P5366665914141912538.Spec : Prop :=
  ∀ n, P5366665914141912538.a n = A051866 n

theorem P5366665914141912538.correct : P5366665914141912538.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P5366665914141912538.a, A051866.P7037994286834974710.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P9833860951543237419

`A226488(n)-∑[n]`
-/

namespace A051866.P9833860951543237419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051866.P9833860951543237419

namespace A051866

/-- `A226488(n)-∑[n]` -/
def P9833860951543237419.Spec : Prop :=
  ∀ n, P9833860951543237419.a n = A051866 n

end A051866

/-! ## A051866.P13639253919624994110

`A103115(n)+1+n`
-/

namespace A051866.P13639253919624994110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + 1 + (n : ℤ)

end

end A051866.P13639253919624994110

namespace A051866

/-- `A103115(n)+1+n` -/
def P13639253919624994110.Spec : Prop :=
  ∀ n, P13639253919624994110.a n = A051866 n

theorem P13639253919624994110.correct : P13639253919624994110.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P13639253919624994110.a, A051866.P7037994286834974710.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P2807322009183469325

`2*A000567(n)-n`
-/

namespace A051866.P2807322009183469325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000567 n - (n : ℤ)

end

end A051866.P2807322009183469325

namespace A051866

/-- `2*A000567(n)-n` -/
def P2807322009183469325.Spec : Prop :=
  ∀ n, P2807322009183469325.a n = A051866 n

theorem P2807322009183469325.correct : P2807322009183469325.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P2807322009183469325.a, A051866.P7037994286834974710.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P12082214877634009176

`A064200(n)/2+n`
-/

namespace A051866.P12082214877634009176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064200 n : ℚ) / 2 + (n : ℚ)

end

end A051866.P12082214877634009176

namespace A051866

/-- `A064200(n)/2+n` -/
def P12082214877634009176.Spec : Prop :=
  ∀ n, P12082214877634009176.a n = (A051866 n : ℚ)

theorem P12082214877634009176.correct : P12082214877634009176.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P12082214877634009176.a, A051866.P7037994286834974710.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P11818106156492083045

`A094159(n)-2*n`
-/

namespace A051866.P11818106156492083045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n - (2 * n : ℤ)

end

end A051866.P11818106156492083045

namespace A051866

/-- `A094159(n)-2*n` -/
def P11818106156492083045.Spec : Prop :=
  ∀ n, P11818106156492083045.a n = A051866 n

theorem P11818106156492083045.correct : P11818106156492083045.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P11818106156492083045.a, A051866.P7037994286834974710.a, A094159, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P17745750022469642212

`(A255185(n)+n)/2`
-/

namespace A051866.P17745750022469642212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255185 n + (n : ℤ) : ℚ) / 2

end

end A051866.P17745750022469642212

namespace A051866

/-- `(A255185(n)+n)/2` -/
def P17745750022469642212.Spec : Prop :=
  ∀ n, P17745750022469642212.a n = (A051866 n : ℚ)

theorem P17745750022469642212.correct : P17745750022469642212.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P17745750022469642212.a, A051866.P7037994286834974710.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P1735104401814787230

`A033579(n)-3*n`
-/

namespace A051866.P1735104401814787230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - (3 * n : ℤ)

end

end A051866.P1735104401814787230

namespace A051866

/-- `A033579(n)-3*n` -/
def P1735104401814787230.Spec : Prop :=
  ∀ n, P1735104401814787230.a n = A051866 n

theorem P1735104401814787230.correct : P1735104401814787230.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P1735104401814787230.a, A051866.P7037994286834974710.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P8992516115257047767

`(A152767(n)-n)/2`
-/

namespace A051866.P8992516115257047767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 n - (n : ℤ) : ℚ) / 2

end

end A051866.P8992516115257047767

namespace A051866

/-- `(A152767(n)-n)/2` -/
def P8992516115257047767.Spec : Prop :=
  ∀ n, P8992516115257047767.a n = (A051866 n : ℚ)

theorem P8992516115257047767.correct : P8992516115257047767.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P8992516115257047767.a, A051866.P7037994286834974710.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P421214929777738955

`A153794(n)/2-n`
-/

namespace A051866.P421214929777738955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153794 n : ℚ) / 2 - (n : ℚ)

end

end A051866.P421214929777738955

namespace A051866

/-- `A153794(n)/2-n` -/
def P421214929777738955.Spec : Prop :=
  ∀ n, P421214929777738955.a n = (A051866 n : ℚ)

theorem P421214929777738955.correct : P421214929777738955.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P421214929777738955.a, A051866.P7037994286834974710.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P11672118107070351271

`A049452(n)-4*n`
-/

namespace A051866.P11672118107070351271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - (4 * n : ℤ)

end

end A051866.P11672118107070351271

namespace A051866

/-- `A049452(n)-4*n` -/
def P11672118107070351271.Spec : Prop :=
  ∀ n, P11672118107070351271.a n = A051866 n

theorem P11672118107070351271.correct : P11672118107070351271.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P11672118107070351271.a, A051866.P7037994286834974710.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-! ## A051866.P12756349881234679812

`A153796(n)/3-n`
-/

namespace A051866.P12756349881234679812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153796 n : ℚ) / 3 - (n : ℚ)

end

end A051866.P12756349881234679812

namespace A051866

/-- `A153796(n)/3-n` -/
def P12756349881234679812.Spec : Prop :=
  ∀ n, P12756349881234679812.a n = (A051866 n : ℚ)

theorem P12756349881234679812.correct : P12756349881234679812.Spec := by
  intro n
  simp only [A051866, Nat.add_sub_cancel, A051866.P12756349881234679812.a, A051866.P7037994286834974710.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051866

/-!
# A051867: 15-gonal (or pentadecagonal) numbers: n*(13n-11)/2.

The programs for A051867, the canonical program `A051867.P10177706605214258555` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051867 has offset 0).

The definition of A051867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-11)/2` (program `A051867.P6306204323938020602`, by `A051867.P6306204323938020602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051867.P6306204323938020602

`n*(13*n-11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051867.P6306204323938020602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((13 * n : ℤ) - 11) : ℚ) / 2

end

end A051867.P6306204323938020602

namespace A051867

/-- `n*(13*n-11)/2` -/
def P6306204323938020602.Spec : Prop :=
  ∀ n, P6306204323938020602.a n = (A051867 n : ℚ)

theorem P6306204323938020602.correct : P6306204323938020602.Spec := by
  intro n
  induction n with
  | zero => simp [A051867, A051867.P6306204323938020602.a, A051867.P10177706605214258555.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051867, Nat.add_sub_cancel, A051867.P6306204323938020602.a, A051867.P10177706605214258555.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051867

/-! ## A051867.P10177706605214258555

`13*n+a(n-1)-12` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051867

/-- `13*n+a(n-1)-12` -/
def P10177706605214258555.Spec : Prop :=
  ∀ n, P10177706605214258555.a n = A051867 n

theorem P10177706605214258555.correct : P10177706605214258555.Spec := by
  intro n
  simp only [A051867]

end A051867

/-! ## A051867.P16320064671257560901

`13*C(n, 2)+n`
-/

namespace A051867.P16320064671257560901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * Nat.choose n 2 + n

end

end A051867.P16320064671257560901

namespace A051867

/-- `13*C(n, 2)+n` -/
def P16320064671257560901.Spec : Prop :=
  ∀ n, (P16320064671257560901.a n : ℤ) = A051867 n

end A051867

/-! ## A051867.P11460292100374275163

`∑[a(n-1)+13]` with `a(0)=0, a(1)=1`
-/

namespace A051867.P11460292100374275163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051867.P11460292100374275163

namespace A051867

/-- `∑[a(n-1)+13]` -/
def P11460292100374275163.Spec : Prop :=
  ∀ n, (P11460292100374275163.a n : ℤ) = A051867 n

end A051867

/-! ## A051867.P1074210857272866162

`A226488(n)-n`
-/

namespace A051867.P1074210857272866162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n - (n : ℤ)

end

end A051867.P1074210857272866162

namespace A051867

/-- `A226488(n)-n` -/
def P1074210857272866162.Spec : Prop :=
  ∀ n, P1074210857272866162.a n = A051867 n

end A051867

/-! ## A051867.P7572842164312919319

`A226489(n)-n²`
-/

namespace A051867.P7572842164312919319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n - (n ^ 2 : ℤ)

end

end A051867.P7572842164312919319

namespace A051867

/-- `A226489(n)-n²` -/
def P7572842164312919319.Spec : Prop :=
  ∀ n, P7572842164312919319.a n = A051867 n

end A051867

/-! ## A051867.P12372628038718684475

`A139268(n)-∑[n]`
-/

namespace A051867.P12372628038718684475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051867.P12372628038718684475

namespace A051867

/-- `A139268(n)-∑[n]` -/
def P12372628038718684475.Spec : Prop :=
  ∀ n, P12372628038718684475.a n = A051867 n

end A051867

/-! ## A051867.P8237806999674612189

`A186030(n)-4*n`
-/

namespace A051867.P8237806999674612189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n - (4 * n : ℤ)

end

end A051867.P8237806999674612189

namespace A051867

/-- `A186030(n)-4*n` -/
def P8237806999674612189.Spec : Prop :=
  ∀ n, P8237806999674612189.a n = A051867 n

end A051867

/-! ## A051867.P9133714304340625698

`A022270(n)-5*n`
-/

namespace A051867.P9133714304340625698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n - (5 * n : ℤ)

end

end A051867.P9133714304340625698

namespace A051867

/-- `A022270(n)-5*n` -/
def P9133714304340625698.Spec : Prop :=
  ∀ n, P9133714304340625698.a n = A051867 n

end A051867

/-! ## A051867.P5081542345860636020

`A152773(n)-(n²+n)`
-/

namespace A051867.P5081542345860636020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n - (n ^ 2 + n : ℤ)

end

end A051867.P5081542345860636020

namespace A051867

/-- `A152773(n)-(n²+n)` -/
def P5081542345860636020.Spec : Prop :=
  ∀ n, P5081542345860636020.a n = A051867 n

end A051867

/-! ## A051867.P72395751943614580

`A062708(n)+A014107(n)`
-/

namespace A051867.P72395751943614580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + A014107 n

end

end A051867.P72395751943614580

namespace A051867

/-- `A062708(n)+A014107(n)` -/
def P72395751943614580.Spec : Prop :=
  ∀ n, P72395751943614580.a n = A051867 n

end A051867

/-! ## A051867.P17957878149208531897

`A103115(n)+A000124(n)`
-/

namespace A051867.P17957878149208531897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + A000124 n

end

end A051867.P17957878149208531897

namespace A051867

/-- `A103115(n)+A000124(n)` -/
def P17957878149208531897.Spec : Prop :=
  ∀ n, P17957878149208531897.a n = A051867 n

end A051867

/-! ## A051867.P4897297324844313915

`A161680(n)+A051866(n)`
-/

namespace A051867.P4897297324844313915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051866 n

end

end A051867.P4897297324844313915

namespace A051867

/-- `A161680(n)+A051866(n)` -/
def P4897297324844313915.Spec : Prop :=
  ∀ n, P4897297324844313915.a n = A051867 n

end A051867

/-! ## A051867.P11037334507476356577

`A180223(n)+A067998(n)`
-/

namespace A051867.P11037334507476356577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + A067998 n

end

end A051867.P11037334507476356577

namespace A051867

/-- `A180223(n)+A067998(n)` -/
def P11037334507476356577.Spec : Prop :=
  ∀ n, P11037334507476356577.a n = A051867 n

end A051867

/-! ## A051867.P8348623931516592488

`A326725(n)+A002939(n)`
-/

namespace A051867.P8348623931516592488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A002939 n

end

end A051867.P8348623931516592488

namespace A051867

/-- `A326725(n)+A002939(n)` -/
def P8348623931516592488.Spec : Prop :=
  ∀ n, P8348623931516592488.a n = A051867 n

end A051867

/-! ## A051867.P13789042232598347935

`A022271(n)-A008588(n)`
-/

namespace A051867.P13789042232598347935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n - A008588 n

end

end A051867.P13789042232598347935

namespace A051867

/-- `A022271(n)-A008588(n)` -/
def P13789042232598347935.Spec : Prop :=
  ∀ n, P13789042232598347935.a n = A051867 n

end A051867

/-! ## A051867.P16322398215969087295

`A022272(n)-A028557(n)`
-/

namespace A051867.P16322398215969087295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n - A028557 n

end

end A051867.P16322398215969087295

namespace A051867

/-- `A022272(n)-A028557(n)` -/
def P16322398215969087295.Spec : Prop :=
  ∀ n, P16322398215969087295.a n = A051867 n

end A051867

/-! ## A051867.P1340012731056151018

`A022273(n)-A028560(n)`
-/

namespace A051867.P1340012731056151018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - A028560 n

end

end A051867.P1340012731056151018

namespace A051867

/-- `A022273(n)-A028560(n)` -/
def P1340012731056151018.Spec : Prop :=
  ∀ n, P1340012731056151018.a n = A051867 n

end A051867

/-! ## A051867.P4259802489865054070

`A028994(n)-A022276(n)`
-/

namespace A051867.P4259802489865054070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 n - A022276 n

end

end A051867.P4259802489865054070

namespace A051867

/-- `A028994(n)-A022276(n)` -/
def P4259802489865054070.Spec : Prop :=
  ∀ n, P4259802489865054070.a n = A051867 n

end A051867

/-! ## A051867.P16167919759086665696

`A022274(n)-A033537(n)`
-/

namespace A051867.P16167919759086665696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n - A033537 n

end

end A051867.P16167919759086665696

namespace A051867

/-- `A022274(n)-A033537(n)` -/
def P16167919759086665696.Spec : Prop :=
  ∀ n, P16167919759086665696.a n = A051867 n

end A051867

/-!
# A051868: 16-gonal (or hexadecagonal) numbers: a(n) = n*(7*n-6).

The programs for A051868, the canonical program `A051868.P8510755596375269483` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051868 has offset 0).

The definition of A051868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-6)` (program `A051868.P8510755596375269483`, by `A051868.P8510755596375269483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051868.P8510755596375269483

`n*(7*n-6)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051868

/-- `n*(7*n-6)` -/
def P8510755596375269483.Spec : Prop :=
  ∀ n, P8510755596375269483.a n = A051868 n

theorem P8510755596375269483.correct : P8510755596375269483.Spec := by
  intro n
  simp only [A051868]

end A051868

/-! ## A051868.P16629548367642726757

`14*C(n, 2)+n`
-/

namespace A051868.P16629548367642726757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * Nat.choose n 2 + n

end

end A051868.P16629548367642726757

namespace A051868

/-- `14*C(n, 2)+n` -/
def P16629548367642726757.Spec : Prop :=
  ∀ n, (P16629548367642726757.a n : ℤ) = A051868 n

theorem P16629548367642726757.correct : P16629548367642726757.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P16629548367642726757.a, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P13177055991960216234

`∑[a(n-1)+14]` with `a(0)=0, a(1)=1`
-/

namespace A051868.P13177055991960216234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051868.P13177055991960216234

namespace A051868

/-- `∑[a(n-1)+14]` -/
def P13177055991960216234.Spec : Prop :=
  ∀ n, (P13177055991960216234.a n : ℤ) = A051868 n

end A051868

/-! ## A051868.P18428085451993235616

`13-∑[a(n-1)-14]` with `a(0)=13`
-/

namespace A051868.P18428085451993235616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051868.P18428085451993235616

namespace A051868

/-- `13-∑[a(n-1)-14]` -/
def P18428085451993235616.Spec : Prop :=
  ∀ n, P18428085451993235616.a n = A051868 n

end A051868

/-! ## A051868.P11818875410485294463

`A139268(n)-n`
-/

namespace A051868.P11818875410485294463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n - (n : ℤ)

end

end A051868.P11818875410485294463

namespace A051868

/-- `A139268(n)-n` -/
def P11818875410485294463.Spec : Prop :=
  ∀ n, P11818875410485294463.a n = A051868 n

theorem P11818875410485294463.correct : P11818875410485294463.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P11818875410485294463.a, A051868.P8510755596375269483.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P10477750624921310244

`A139271(n)-n²`
-/

namespace A051868.P10477750624921310244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - (n ^ 2 : ℤ)

end

end A051868.P10477750624921310244

namespace A051868

/-- `A139271(n)-n²` -/
def P10477750624921310244.Spec : Prop :=
  ∀ n, P10477750624921310244.a n = A051868 n

theorem P10477750624921310244.correct : P10477750624921310244.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P10477750624921310244.a, A051868.P8510755596375269483.a, A139271, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P3174988626256475869

`A226489(n)-∑[n]`
-/

namespace A051868.P3174988626256475869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051868.P3174988626256475869

namespace A051868

/-- `A226489(n)-∑[n]` -/
def P3174988626256475869.Spec : Prop :=
  ∀ n, P3174988626256475869.a n = A051868 n

end A051868

/-! ## A051868.P11810448723441477775

`A239449(n)-(n+1)`
-/

namespace A051868.P11810448723441477775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239449 n - (n + 1 : ℤ)

end

end A051868.P11810448723441477775

namespace A051868

/-- `A239449(n)-(n+1)` -/
def P11810448723441477775.Spec : Prop :=
  ∀ n, P11810448723441477775.a n = A051868 n

theorem P11810448723441477775.correct : P11810448723441477775.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P11810448723441477775.a, A051868.P8510755596375269483.a, A239449, A239449.P12701582002852355718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P16805663269027080421

`2*A001106(n)-n`
-/

namespace A051868.P16805663269027080421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001106 n - (n : ℤ)

end

end A051868.P16805663269027080421

namespace A051868

/-- `2*A001106(n)-n` -/
def P16805663269027080421.Spec : Prop :=
  ∀ n, P16805663269027080421.a n = A051868 n

end A051868

/-! ## A051868.P10286430660575479214

`(A254474(n)+n)/2`
-/

namespace A051868.P10286430660575479214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254474 n + (n : ℤ) : ℚ) / 2

end

end A051868.P10286430660575479214

namespace A051868

/-- `(A254474(n)+n)/2` -/
def P10286430660575479214.Spec : Prop :=
  ∀ n, P10286430660575479214.a n = (A051868 n : ℚ)

theorem P10286430660575479214.correct : P10286430660575479214.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P10286430660575479214.a, A051868.P8510755596375269483.a, A254474, A254474.P15703138997127178640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P6031795523518221024

`A152760(n)/2-n`
-/

namespace A051868.P6031795523518221024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152760 n : ℚ) / 2 - (n : ℚ)

end

end A051868.P6031795523518221024

namespace A051868

/-- `A152760(n)/2-n` -/
def P6031795523518221024.Spec : Prop :=
  ∀ n, P6031795523518221024.a n = (A051868 n : ℚ)

theorem P6031795523518221024.correct : P6031795523518221024.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P6031795523518221024.a, A051868.P8510755596375269483.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P9760541515723265264

`(A195021(n)-n)/2`
-/

namespace A051868.P9760541515723265264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195021 n - (n : ℤ) : ℚ) / 2

end

end A051868.P9760541515723265264

namespace A051868

/-- `(A195021(n)-n)/2` -/
def P9760541515723265264.Spec : Prop :=
  ∀ n, P9760541515723265264.a n = (A051868 n : ℚ)

theorem P9760541515723265264.correct : P9760541515723265264.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P9760541515723265264.a, A051868.P8510755596375269483.a, A195021, A195021.P8547858062426879313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P1630806822782580854

`A135703(n)-4*n`
-/

namespace A051868.P1630806822782580854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135703 n - (4 * n : ℤ)

end

end A051868.P1630806822782580854

namespace A051868

/-- `A135703(n)-4*n` -/
def P1630806822782580854.Spec : Prop :=
  ∀ n, P1630806822782580854.a n = A051868 n

theorem P1630806822782580854.correct : P1630806822782580854.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P1630806822782580854.a, A051868.P8510755596375269483.a, A135703, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P9474489654299311683

`A051869(n)-C(n, 2)`
-/

namespace A051868.P9474489654299311683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n - (Nat.choose n 2 : ℤ)

end

end A051868.P9474489654299311683

namespace A051868

/-- `A051869(n)-C(n, 2)` -/
def P9474489654299311683.Spec : Prop :=
  ∀ n, P9474489654299311683.a n = A051868 n

end A051868

/-! ## A051868.P4183620712882294798

`n²+A103115(n)+1`
-/

namespace A051868.P4183620712882294798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A103115 n + 1)

end

end A051868.P4183620712882294798

namespace A051868

/-- `n²+A103115(n)+1` -/
def P4183620712882294798.Spec : Prop :=
  ∀ n, P4183620712882294798.a n = A051868 n

theorem P4183620712882294798.correct : P4183620712882294798.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P4183620712882294798.a, A051868.P8510755596375269483.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P2098044965311395245

`A033567(n)-(n²+1)`
-/

namespace A051868.P2098044965311395245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n - (n ^ 2 + 1 : ℤ)

end

end A051868.P2098044965311395245

namespace A051868

/-- `A033567(n)-(n²+1)` -/
def P2098044965311395245.Spec : Prop :=
  ∀ n, P2098044965311395245.a n = A051868 n

theorem P2098044965311395245.correct : P2098044965311395245.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P2098044965311395245.a, A051868.P8510755596375269483.a, A033567, A033567.P4876348831150855649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P6050355551317629811

`A080856(n)-(n+1)²`
-/

namespace A051868.P6050355551317629811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - ((n + 1) ^ 2 : ℤ)

end

end A051868.P6050355551317629811

namespace A051868

/-- `A080856(n)-(n+1)²` -/
def P6050355551317629811.Spec : Prop :=
  ∀ n, P6050355551317629811.a n = A051868 n

theorem P6050355551317629811.correct : P6050355551317629811.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P6050355551317629811.a, A051868.P8510755596375269483.a, A080856, A080856.P3251155691184586344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P10056377577546669085

`n²+A064200(n)/2`
-/

namespace A051868.P10056377577546669085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A064200 n : ℚ) / 2

end

end A051868.P10056377577546669085

namespace A051868

/-- `n²+A064200(n)/2` -/
def P10056377577546669085.Spec : Prop :=
  ∀ n, P10056377577546669085.a n = (A051868 n : ℚ)

theorem P10056377577546669085.correct : P10056377577546669085.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P10056377577546669085.a, A051868.P8510755596375269483.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P7582169917113096206

`(A161935(n)+n²)/2`
-/

namespace A051868.P7582169917113096206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161935 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A051868.P7582169917113096206

namespace A051868

/-- `(A161935(n)+n²)/2` -/
def P7582169917113096206.Spec : Prop :=
  ∀ n, P7582169917113096206.a n = (A051868 n : ℚ)

theorem P7582169917113096206.correct : P7582169917113096206.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P7582169917113096206.a, A051868.P8510755596375269483.a, A161935, A161935.P14335868775891492350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-! ## A051868.P192274682116261947

`(A153448(n)-n²)/2`
-/

namespace A051868.P192274682116261947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153448 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A051868.P192274682116261947

namespace A051868

/-- `(A153448(n)-n²)/2` -/
def P192274682116261947.Spec : Prop :=
  ∀ n, P192274682116261947.a n = (A051868 n : ℚ)

theorem P192274682116261947.correct : P192274682116261947.Spec := by
  intro n
  simp only [A051868, Nat.add_sub_cancel, A051868.P192274682116261947.a, A051868.P8510755596375269483.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051868

/-!
# A051869: 17-gonal (or heptadecagonal) numbers: a(n) = n*(15*n-13)/2.

The programs for A051869, the canonical program `A051869.P14633679652413140002` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051869 has offset 0).

The definition of A051869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-13)/2` (program `A051869.P8149456069839428245`, by `A051869.P8149456069839428245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051869.P8149456069839428245

`n*(15*n-13)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051869.P8149456069839428245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((15 * n : ℤ) - 13) : ℚ) / 2

end

end A051869.P8149456069839428245

namespace A051869

/-- `n*(15*n-13)/2` -/
def P8149456069839428245.Spec : Prop :=
  ∀ n, P8149456069839428245.a n = (A051869 n : ℚ)

theorem P8149456069839428245.correct : P8149456069839428245.Spec := by
  intro n
  induction n with
  | zero => simp [A051869, A051869.P8149456069839428245.a, A051869.P14633679652413140002.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051869, Nat.add_sub_cancel, A051869.P8149456069839428245.a, A051869.P14633679652413140002.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051869

/-! ## A051869.P14633679652413140002

`a(n-1)+15*n-14` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051869

/-- `a(n-1)+15*n-14` -/
def P14633679652413140002.Spec : Prop :=
  ∀ n, P14633679652413140002.a n = A051869 n

theorem P14633679652413140002.correct : P14633679652413140002.Spec := by
  intro n
  simp only [A051869]

end A051869

/-! ## A051869.P13919891738396965166

`A226489(n)-n`
-/

namespace A051869.P13919891738396965166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n - (n : ℤ)

end

end A051869.P13919891738396965166

namespace A051869

/-- `A226489(n)-n` -/
def P13919891738396965166.Spec : Prop :=
  ∀ n, P13919891738396965166.a n = A051869 n

end A051869

/-! ## A051869.P14816231929712798438

`15*C(n, 2)+n`
-/

namespace A051869.P14816231929712798438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose n 2 + n

end

end A051869.P14816231929712798438

namespace A051869

/-- `15*C(n, 2)+n` -/
def P14816231929712798438.Spec : Prop :=
  ∀ n, (P14816231929712798438.a n : ℤ) = A051869 n

end A051869

/-! ## A051869.P7271452825498218557

`∑[a(n-1)+15]` with `a(0)=0, a(1)=1`
-/

namespace A051869.P7271452825498218557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051869.P7271452825498218557

namespace A051869

/-- `∑[a(n-1)+15]` -/
def P7271452825498218557.Spec : Prop :=
  ∀ n, (P7271452825498218557.a n : ℤ) = A051869 n

end A051869

/-! ## A051869.P16538416959274578131

`A180232(n)-n²`
-/

namespace A051869.P16538416959274578131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n - (n ^ 2 : ℤ)

end

end A051869.P16538416959274578131

namespace A051869

/-- `A180232(n)-n²` -/
def P16538416959274578131.Spec : Prop :=
  ∀ n, P16538416959274578131.a n = A051869 n

end A051869

/-! ## A051869.P5906449999595210336

`A139271(n)-∑[n]`
-/

namespace A051869.P5906449999595210336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051869.P5906449999595210336

namespace A051869

/-- `A139271(n)-∑[n]` -/
def P5906449999595210336.Spec : Prop :=
  ∀ n, P5906449999595210336.a n = A051869 n

end A051869

/-! ## A051869.P1873820450387266651

`A152773(n)-2*n`
-/

namespace A051869.P1873820450387266651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n - (2 * n : ℤ)

end

end A051869.P1873820450387266651

namespace A051869

/-- `A152773(n)-2*n` -/
def P1873820450387266651.Spec : Prop :=
  ∀ n, P1873820450387266651.a n = A051869 n

end A051869

/-! ## A051869.P12630424532814626389

`A152734(n)-4*n`
-/

namespace A051869.P12630424532814626389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n - (4 * n : ℤ)

end

end A051869.P12630424532814626389

namespace A051869

/-- `A152734(n)-4*n` -/
def P12630424532814626389.Spec : Prop :=
  ∀ n, P12630424532814626389.a n = A051869 n

end A051869

/-! ## A051869.P822646045902407683

`A383464(n)-∑[n+1]`
-/

namespace A051869.P822646045902407683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383464 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051869.P822646045902407683

namespace A051869

/-- `A383464(n)-∑[n+1]` -/
def P822646045902407683.Spec : Prop :=
  ∀ n, P822646045902407683.a n = A051869 n

end A051869

/-! ## A051869.P14223575850240417853

`(2*A004277(n)-3)*2*n-∑[n]`
-/

namespace A051869.P14223575850240417853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A004277 n - 3) * (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051869.P14223575850240417853

namespace A051869

/-- `(2*A004277(n)-3)*2*n-∑[n]` -/
def P14223575850240417853.Spec : Prop :=
  ∀ n, P14223575850240417853.a n = A051869 n

end A051869

/-! ## A051869.P8817141958288945192

`A180223(n)+A014107(n)`
-/

namespace A051869.P8817141958288945192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + A014107 n

end

end A051869.P8817141958288945192

namespace A051869

/-- `A180223(n)+A014107(n)` -/
def P8817141958288945192.Spec : Prop :=
  ∀ n, P8817141958288945192.a n = A051869 n

end A051869

/-! ## A051869.P12058773004304125975

`A161680(n)+A051868(n)`
-/

namespace A051869.P12058773004304125975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051868 n

end

end A051869.P12058773004304125975

namespace A051869

/-- `A161680(n)+A051868(n)` -/
def P12058773004304125975.Spec : Prop :=
  ∀ n, P12058773004304125975.a n = A051869 n

end A051869

/-! ## A051869.P13484148356326824565

`A143689(n)+A103115(n)`
-/

namespace A051869.P13484148356326824565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n + A103115 n

end

end A051869.P13484148356326824565

namespace A051869

/-- `A143689(n)+A103115(n)` -/
def P13484148356326824565.Spec : Prop :=
  ∀ n, P13484148356326824565.a n = A051869 n

end A051869

/-! ## A051869.P18332553634089823212

`A226488(n)+A067998(n)`
-/

namespace A051869.P18332553634089823212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + A067998 n

end

end A051869.P18332553634089823212

namespace A051869

/-- `A226488(n)+A067998(n)` -/
def P18332553634089823212.Spec : Prop :=
  ∀ n, P18332553634089823212.a n = A051869 n

end A051869

/-! ## A051869.P9815955892448480333

`A326725(n)+A135706(n)`
-/

namespace A051869.P9815955892448480333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A135706 n

end

end A051869.P9815955892448480333

namespace A051869

/-- `A326725(n)+A135706(n)` -/
def P9815955892448480333.Spec : Prop :=
  ∀ n, P9815955892448480333.a n = A051869 n

end A051869

/-! ## A051869.P5321736804874422568

`A022272(n)-A008588(n)`
-/

namespace A051869.P5321736804874422568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n - A008588 n

end

end A051869.P5321736804874422568

namespace A051869

/-- `A022272(n)-A008588(n)` -/
def P5321736804874422568.Spec : Prop :=
  ∀ n, P5321736804874422568.a n = A051869 n

end A051869

/-! ## A051869.P4005234640844025679

`A022273(n)-A008589(n)`
-/

namespace A051869.P4005234640844025679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - A008589 n

end

end A051869.P4005234640844025679

namespace A051869

/-- `A022273(n)-A008589(n)` -/
def P4005234640844025679.Spec : Prop :=
  ∀ n, P4005234640844025679.a n = A051869 n

end A051869

/-! ## A051869.P714540367694585861

`A033567(n)-A000124(n)`
-/

namespace A051869.P714540367694585861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n - A000124 n

end

end A051869.P714540367694585861

namespace A051869

/-- `A033567(n)-A000124(n)` -/
def P714540367694585861.Spec : Prop :=
  ∀ n, P714540367694585861.a n = A051869 n

end A051869

/-! ## A051869.P9635340442296610392

`A022274(n)-A028560(n)`
-/

namespace A051869.P9635340442296610392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n - A028560 n

end

end A051869.P9635340442296610392

namespace A051869

/-- `A022274(n)-A028560(n)` -/
def P9635340442296610392.Spec : Prop :=
  ∀ n, P9635340442296610392.a n = A051869 n

end A051869

/-!
# A051870: 18-gonal (or octadecagonal) numbers: a(n) = n*(8*n-7).

The programs for A051870, the canonical program `A051870.P3674433124874018284` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051870 has offset 0).

The definition of A051870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n-7)` (program `A051870.P3674433124874018284`, by `A051870.P3674433124874018284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051870.P3674433124874018284

`n*(8*n-7)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051870

/-- `n*(8*n-7)` -/
def P3674433124874018284.Spec : Prop :=
  ∀ n, P3674433124874018284.a n = A051870 n

theorem P3674433124874018284.correct : P3674433124874018284.Spec := by
  intro n
  simp only [A051870]

end A051870

/-! ## A051870.P12323367553037685577

`∑[a(n-1)+16]` with `a(0)=0, a(1)=1`
-/

namespace A051870.P12323367553037685577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051870.P12323367553037685577

namespace A051870

/-- `∑[a(n-1)+16]` -/
def P12323367553037685577.Spec : Prop :=
  ∀ n, (P12323367553037685577.a n : ℤ) = A051870 n

end A051870

/-! ## A051870.P8899685858732753303

`15-∑[a(n-1)-16]` with `a(0)=15`
-/

namespace A051870.P8899685858732753303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051870.P8899685858732753303

namespace A051870

/-- `15-∑[a(n-1)-16]` -/
def P8899685858732753303.Spec : Prop :=
  ∀ n, P8899685858732753303.a n = A051870 n

end A051870

/-! ## A051870.P14735113909945665349

`(32*C(n, 2)+n+n)/2`
-/

namespace A051870.P14735113909945665349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 * Nat.choose n 2 + n + n : ℚ) / 2

end

end A051870.P14735113909945665349

namespace A051870

/-- `(32*C(n, 2)+n+n)/2` -/
def P14735113909945665349.Spec : Prop :=
  ∀ n, P14735113909945665349.a n = (A051870 n : ℚ)

theorem P14735113909945665349.correct : P14735113909945665349.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P14735113909945665349.a, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P6341821909617564051

`A125201(n)-1`
-/

namespace A051870.P6341821909617564051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n - 1

end

end A051870.P6341821909617564051

namespace A051870

/-- `A125201(n)-1` -/
def P6341821909617564051.Spec : Prop :=
  ∀ n, P6341821909617564051.a n = A051870 n

theorem P6341821909617564051.correct : P6341821909617564051.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P6341821909617564051.a, A051870.P3674433124874018284.a, A125201, A125201.P9072291273738928373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P14135761824671800052

`A360417(n)-2`
-/

namespace A051870.P14135761824671800052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360417 n - 2

end

end A051870.P14135761824671800052

namespace A051870

/-- `A360417(n)-2` -/
def P14135761824671800052.Spec : Prop :=
  ∀ n, P14135761824671800052.a n = A051870 n

theorem P14135761824671800052.correct : P14135761824671800052.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P14135761824671800052.a, A051870.P3674433124874018284.a, A360417, A360417.P12269292350835026614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P11553196683772149016

`A139271(n)-n`
-/

namespace A051870.P11553196683772149016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - (n : ℤ)

end

end A051870.P11553196683772149016

namespace A051870

/-- `A139271(n)-n` -/
def P11553196683772149016.Spec : Prop :=
  ∀ n, P11553196683772149016.a n = A051870 n

theorem P11553196683772149016.correct : P11553196683772149016.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P11553196683772149016.a, A051870.P3674433124874018284.a, A139271, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P5284329086224964331

`A152995(n)-n²`
-/

namespace A051870.P5284329086224964331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n ^ 2 : ℤ)

end

end A051870.P5284329086224964331

namespace A051870

/-- `A152995(n)-n²` -/
def P5284329086224964331.Spec : Prop :=
  ∀ n, P5284329086224964331.a n = A051870 n

theorem P5284329086224964331.correct : P5284329086224964331.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P5284329086224964331.a, A051870.P3674433124874018284.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P419937172441978726

`A180232(n)-∑[n]`
-/

namespace A051870.P419937172441978726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051870.P419937172441978726

namespace A051870

/-- `A180232(n)-∑[n]` -/
def P419937172441978726.Spec : Prop :=
  ∀ n, P419937172441978726.a n = A051870 n

end A051870

/-! ## A051870.P553637123251202985

`A033567(n)-(n+1)`
-/

namespace A051870.P553637123251202985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n - (n + 1 : ℤ)

end

end A051870.P553637123251202985

namespace A051870

/-- `A033567(n)-(n+1)` -/
def P553637123251202985.Spec : Prop :=
  ∀ n, P553637123251202985.a n = A051870 n

theorem P553637123251202985.correct : P553637123251202985.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P553637123251202985.a, A051870.P3674433124874018284.a, A033567, A033567.P4876348831150855649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P11855475090717667913

`2*A001107(n)-n`
-/

namespace A051870.P11855475090717667913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001107 n - (n : ℤ)

end

end A051870.P11855475090717667913

namespace A051870

/-- `2*A001107(n)-n` -/
def P11855475090717667913.Spec : Prop :=
  ∀ n, P11855475090717667913.a n = A051870 n

theorem P11855475090717667913.correct : P11855475090717667913.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P11855475090717667913.a, A051870.P3674433124874018284.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P16838740192089870785

`A139272(n)-2*n`
-/

namespace A051870.P16838740192089870785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n - (2 * n : ℤ)

end

end A051870.P16838740192089870785

namespace A051870

/-- `A139272(n)-2*n` -/
def P16838740192089870785.Spec : Prop :=
  ∀ n, P16838740192089870785.a n = A051870 n

theorem P16838740192089870785.correct : P16838740192089870785.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P16838740192089870785.a, A051870.P3674433124874018284.a, A139272, A139272.P2664436555885625264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P5797279031773299065

`(A282854(n)+n)/2`
-/

namespace A051870.P5797279031773299065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282854 n + (n : ℤ) : ℚ) / 2

end

end A051870.P5797279031773299065

namespace A051870

/-- `(A282854(n)+n)/2` -/
def P5797279031773299065.Spec : Prop :=
  ∀ n, P5797279031773299065.a n = (A051870 n : ℚ)

theorem P5797279031773299065.correct : P5797279031773299065.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P5797279031773299065.a, A051870.P3674433124874018284.a, A282854, A282854.P10479849519924556517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P5841385134730042862

`A085250(n)-3*n`
-/

namespace A051870.P5841385134730042862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n - (3 * n : ℤ)

end

end A051870.P5841385134730042862

namespace A051870

/-- `A085250(n)-3*n` -/
def P5841385134730042862.Spec : Prop :=
  ∀ n, P5841385134730042862.a n = A051870 n

theorem P5841385134730042862.correct : P5841385134730042862.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P5841385134730042862.a, A051870.P3674433124874018284.a, A085250, A085250.P6274301986790995116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P8821485445439970084

`A139273(n)-4*n`
-/

namespace A051870.P8821485445439970084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n - (4 * n : ℤ)

end

end A051870.P8821485445439970084

namespace A051870

/-- `A139273(n)-4*n` -/
def P8821485445439970084.Spec : Prop :=
  ∀ n, P8821485445439970084.a n = A051870 n

theorem P8821485445439970084.correct : P8821485445439970084.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P8821485445439970084.a, A051870.P3674433124874018284.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P8086322836240444724

`A014635(n)-5*n`
-/

namespace A051870.P8086322836240444724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (5 * n : ℤ)

end

end A051870.P8086322836240444724

namespace A051870

/-- `A014635(n)-5*n` -/
def P8086322836240444724.Spec : Prop :=
  ∀ n, P8086322836240444724.a n = A051870 n

theorem P8086322836240444724.correct : P8086322836240444724.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P8086322836240444724.a, A051870.P3674433124874018284.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P15752670063227227810

`A051869(n)+C(n, 2)`
-/

namespace A051870.P15752670063227227810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + (Nat.choose n 2 : ℤ)

end

end A051870.P15752670063227227810

namespace A051870

/-- `A051869(n)+C(n, 2)` -/
def P15752670063227227810.Spec : Prop :=
  ∀ n, P15752670063227227810.a n = A051870 n

end A051870

/-! ## A051870.P9357190947527761382

`A383464(n)-Δ[n²]`
-/

namespace A051870.P9357190947527761382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383464 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A051870.P9357190947527761382

namespace A051870

/-- `A383464(n)-Δ[n²]` -/
def P9357190947527761382.Spec : Prop :=
  ∀ n, P9357190947527761382.a n = A051870 n

theorem P9357190947527761382.correct : P9357190947527761382.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P9357190947527761382.f1, A051870.P9357190947527761382.a, A051870.P3674433124874018284.a, A383464, A383464.P11239286275469596508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-! ## A051870.P788949091789904015

`(A098923(n)+∑[n])/2`
-/

namespace A051870.P788949091789904015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098923 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A051870.P788949091789904015

namespace A051870

/-- `(A098923(n)+∑[n])/2` -/
def P788949091789904015.Spec : Prop :=
  ∀ n, P788949091789904015.a n = (A051870 n : ℚ)

end A051870

/-! ## A051870.P14251347876121122381

`n²+A051868(n)-n`
-/

namespace A051870.P14251347876121122381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051868 n - (n : ℤ))

end

end A051870.P14251347876121122381

namespace A051870

/-- `n²+A051868(n)-n` -/
def P14251347876121122381.Spec : Prop :=
  ∀ n, P14251347876121122381.a n = A051870 n

theorem P14251347876121122381.correct : P14251347876121122381.Spec := by
  intro n
  simp only [A051870, Nat.add_sub_cancel, A051870.P14251347876121122381.a, A051870.P3674433124874018284.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051870

/-!
# A051871: 19-gonal (or enneadecagonal) numbers: n(17n-15)/2.

The programs for A051871, the canonical program `A051871.P17734771156437103142` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051871 has offset 0).

The definition of A051871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-15)/2` (program `A051871.P12816986754764336953`, by `A051871.P12816986754764336953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051871.P12816986754764336953

`n*(17*n-15)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051871.P12816986754764336953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((17 * n : ℤ) - 15) : ℚ) / 2

end

end A051871.P12816986754764336953

namespace A051871

/-- `n*(17*n-15)/2` -/
def P12816986754764336953.Spec : Prop :=
  ∀ n, P12816986754764336953.a n = (A051871 n : ℚ)

theorem P12816986754764336953.correct : P12816986754764336953.Spec := by
  intro n
  induction n with
  | zero => simp [A051871, A051871.P12816986754764336953.a, A051871.P17734771156437103142.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051871, Nat.add_sub_cancel, A051871.P12816986754764336953.a, A051871.P17734771156437103142.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051871

/-! ## A051871.P17734771156437103142

`17*n+a(n-1)-16` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051871

/-- `17*n+a(n-1)-16` -/
def P17734771156437103142.Spec : Prop :=
  ∀ n, P17734771156437103142.a n = A051871 n

theorem P17734771156437103142.correct : P17734771156437103142.Spec := by
  intro n
  simp only [A051871]

end A051871

/-! ## A051871.P15374278248555706169

`17*C(n, 2)+n`
-/

namespace A051871.P15374278248555706169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * Nat.choose n 2 + n

end

end A051871.P15374278248555706169

namespace A051871

/-- `17*C(n, 2)+n` -/
def P15374278248555706169.Spec : Prop :=
  ∀ n, (P15374278248555706169.a n : ℤ) = A051871 n

end A051871

/-! ## A051871.P14822009135878856457

`∑[a(n-1)+17]` with `a(0)=0, a(1)=1`
-/

namespace A051871.P14822009135878856457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051871.P14822009135878856457

namespace A051871

/-- `∑[a(n-1)+17]` -/
def P14822009135878856457.Spec : Prop :=
  ∀ n, (P14822009135878856457.a n : ℤ) = A051871 n

end A051871

/-! ## A051871.P1540564471016314852

`A180232(n)-n`
-/

namespace A051871.P1540564471016314852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n - (n : ℤ)

end

end A051871.P1540564471016314852

namespace A051871

/-- `A180232(n)-n` -/
def P1540564471016314852.Spec : Prop :=
  ∀ n, P1540564471016314852.a n = A051871 n

end A051871

/-! ## A051871.P12641215906922909857

`A226490(n)-n²`
-/

namespace A051871.P12641215906922909857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n - (n ^ 2 : ℤ)

end

end A051871.P12641215906922909857

namespace A051871

/-- `A226490(n)-n²` -/
def P12641215906922909857.Spec : Prop :=
  ∀ n, P12641215906922909857.a n = A051871 n

end A051871

/-! ## A051871.P460913463323801847

`A152995(n)-∑[n]`
-/

namespace A051871.P460913463323801847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051871.P460913463323801847

namespace A051871

/-- `A152995(n)-∑[n]` -/
def P460913463323801847.Spec : Prop :=
  ∀ n, P460913463323801847.a n = A051871 n

end A051871

/-! ## A051871.P664586058321955711

`∑[A298035(n)-(n+1)]`
-/

namespace A051871.P664586058321955711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051871.P664586058321955711

namespace A051871

/-- `∑[A298035(n)-(n+1)]` -/
def P664586058321955711.Spec : Prop :=
  ∀ n, P664586058321955711.a n = A051871 n

end A051871

/-! ## A051871.P7386453727238352933

`A161680(n)+A051870(n)`
-/

namespace A051871.P7386453727238352933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051870 n

end

end A051871.P7386453727238352933

namespace A051871

/-- `A161680(n)+A051870(n)` -/
def P7386453727238352933.Spec : Prop :=
  ∀ n, P7386453727238352933.a n = A051871 n

end A051871

/-! ## A051871.P16101974668434300583

`A226488(n)+A014107(n)`
-/

namespace A051871.P16101974668434300583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + A014107 n

end

end A051871.P16101974668434300583

namespace A051871

/-- `A226488(n)+A014107(n)` -/
def P16101974668434300583.Spec : Prop :=
  ∀ n, P16101974668434300583.a n = A051871 n

end A051871

/-! ## A051871.P13936523828544874335

`A226489(n)+A067998(n)`
-/

namespace A051871.P13936523828544874335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n + A067998 n

end

end A051871.P13936523828544874335

namespace A051871

/-- `A226489(n)+A067998(n)` -/
def P13936523828544874335.Spec : Prop :=
  ∀ n, P13936523828544874335.a n = A051871 n

end A051871

/-! ## A051871.P2666010234012932892

`A192136(n)+A103115(n)`
-/

namespace A051871.P2666010234012932892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + A103115 n

end

end A051871.P2666010234012932892

namespace A051871

/-- `A192136(n)+A103115(n)` -/
def P2666010234012932892.Spec : Prop :=
  ∀ n, P2666010234012932892.a n = A051871 n

end A051871

/-! ## A051871.P18174455775426319829

`A326725(n)+A139267(n)`
-/

namespace A051871.P18174455775426319829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A139267 n

end

end A051871.P18174455775426319829

namespace A051871

/-- `A326725(n)+A139267(n)` -/
def P18174455775426319829.Spec : Prop :=
  ∀ n, P18174455775426319829.a n = A051871 n

end A051871

/-! ## A051871.P212584424443701112

`A022274(n)-A008589(n)`
-/

namespace A051871.P212584424443701112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022274 n - A008589 n

end

end A051871.P212584424443701112

namespace A051871

/-- `A022274(n)-A008589(n)` -/
def P212584424443701112.Spec : Prop :=
  ∀ n, P212584424443701112.a n = A051871 n

end A051871

/-! ## A051871.P4674698100727652595

`A022275(n)-A008590(n)`
-/

namespace A051871.P4674698100727652595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n - A008590 n

end

end A051871.P4674698100727652595

namespace A051871

/-- `A022275(n)-A008590(n)` -/
def P4674698100727652595.Spec : Prop :=
  ∀ n, P4674698100727652595.a n = A051871 n

end A051871

/-! ## A051871.P9025264709657989290

`A014642(n)-A024966(n)`
-/

namespace A051871.P9025264709657989290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - A024966 n

end

end A051871.P9025264709657989290

namespace A051871

/-- `A014642(n)-A024966(n)` -/
def P9025264709657989290.Spec : Prop :=
  ∀ n, P9025264709657989290.a n = A051871 n

end A051871

/-! ## A051871.P13965859160404686731

`A022276(n)-A028563(n)`
-/

namespace A051871.P13965859160404686731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n - A028563 n

end

end A051871.P13965859160404686731

namespace A051871

/-- `A022276(n)-A028563(n)` -/
def P13965859160404686731.Spec : Prop :=
  ∀ n, P13965859160404686731.a n = A051871 n

end A051871

/-! ## A051871.P4527699221232085721

`A022277(n)-A028566(n)`
-/

namespace A051871.P4527699221232085721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n - A028566 n

end

end A051871.P4527699221232085721

namespace A051871

/-- `A022277(n)-A028566(n)` -/
def P4527699221232085721.Spec : Prop :=
  ∀ n, P4527699221232085721.a n = A051871 n

end A051871

/-! ## A051871.P14317052319868589638

`A013656(n)-A056115(n)`
-/

namespace A051871.P14317052319868589638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n - A056115 n

end

end A051871.P14317052319868589638

namespace A051871

/-- `A013656(n)-A056115(n)` -/
def P14317052319868589638.Spec : Prop :=
  ∀ n, P14317052319868589638.a n = A051871 n

end A051871

/-!
# A051872: 20-gonal (or icosagonal) numbers: a(n) = n*(9*n-8).

The programs for A051872, the canonical program `A051872.P14981514250328426150` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051872 has offset 0).

The definition of A051872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-8)` (program `A051872.P14981514250328426150`, by `A051872.P14981514250328426150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051872.P14981514250328426150

`n*(9*n-8)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051872

/-- `n*(9*n-8)` -/
def P14981514250328426150.Spec : Prop :=
  ∀ n, P14981514250328426150.a n = A051872 n

theorem P14981514250328426150.correct : P14981514250328426150.Spec := by
  intro n
  simp only [A051872]

end A051872

/-! ## A051872.P17042398021739850271

`∑[n]+17*C(n, 2)`
-/

namespace A051872.P17042398021739850271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 17 * Nat.choose n 2

end

end A051872.P17042398021739850271

namespace A051872

/-- `∑[n]+17*C(n, 2)` -/
def P17042398021739850271.Spec : Prop :=
  ∀ n, (P17042398021739850271.a n : ℤ) = A051872 n

end A051872

/-! ## A051872.P8544887828907010056

`∑[a(n-1)+18]` with `a(0)=0, a(1)=1`
-/

namespace A051872.P8544887828907010056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051872.P8544887828907010056

namespace A051872

/-- `∑[a(n-1)+18]` -/
def P8544887828907010056.Spec : Prop :=
  ∀ n, (P8544887828907010056.a n : ℤ) = A051872 n

end A051872

/-! ## A051872.P15430196106042250961

`2*9*C(n, 2)+n`
-/

namespace A051872.P15430196106042250961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (9 * Nat.choose n 2) + n

end

end A051872.P15430196106042250961

namespace A051872

/-- `2*9*C(n, 2)+n` -/
def P15430196106042250961.Spec : Prop :=
  ∀ n, (P15430196106042250961.a n : ℤ) = A051872 n

theorem P15430196106042250961.correct : P15430196106042250961.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P15430196106042250961.a, A051872.P14981514250328426150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P7653397740151405405

`17-∑[a(n-1)-18]` with `a(0)=17`
-/

namespace A051872.P7653397740151405405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051872.P7653397740151405405

namespace A051872

/-- `17-∑[a(n-1)-18]` -/
def P7653397740151405405.Spec : Prop :=
  ∀ n, P7653397740151405405.a n = A051872 n

end A051872

/-! ## A051872.P1264031185558452879

`A154254(n)-2`
-/

namespace A051872.P1264031185558452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154254 n - 2

end

end A051872.P1264031185558452879

namespace A051872

/-- `A154254(n)-2` -/
def P1264031185558452879.Spec : Prop :=
  ∀ n, P1264031185558452879.a n = A051872 n

theorem P1264031185558452879.correct : P1264031185558452879.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P1264031185558452879.a, A051872.P14981514250328426150.a, A154254, A154254.P71931021741422176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P3573080797477106378

`A152995(n)-n`
-/

namespace A051872.P3573080797477106378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n : ℤ)

end

end A051872.P3573080797477106378

namespace A051872

/-- `A152995(n)-n` -/
def P3573080797477106378.Spec : Prop :=
  ∀ n, P3573080797477106378.a n = A051872 n

theorem P3573080797477106378.correct : P3573080797477106378.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P3573080797477106378.a, A051872.P14981514250328426150.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P1840809266084413405

`A152965(n)-n²`
-/

namespace A051872.P1840809266084413405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n - (n ^ 2 : ℤ)

end

end A051872.P1840809266084413405

namespace A051872

/-- `A152965(n)-n²` -/
def P1840809266084413405.Spec : Prop :=
  ∀ n, P1840809266084413405.a n = A051872 n

theorem P1840809266084413405.correct : P1840809266084413405.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P1840809266084413405.a, A051872.P14981514250328426150.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P11046188379463917611

`A226490(n)-∑[n]`
-/

namespace A051872.P11046188379463917611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051872.P11046188379463917611

namespace A051872

/-- `A226490(n)-∑[n]` -/
def P11046188379463917611.Spec : Prop :=
  ∀ n, P11046188379463917611.a n = A051872 n

end A051872

/-! ## A051872.P13352572592340600026

`2*A051682(n)-n`
-/

namespace A051872.P13352572592340600026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051682 n - (n : ℤ)

end

end A051872.P13352572592340600026

namespace A051872

/-- `2*A051682(n)-n` -/
def P13352572592340600026.Spec : Prop :=
  ∀ n, P13352572592340600026.a n = A051872 n

end A051872

/-! ## A051872.P14887184553919471573

`A152751(n)-2*n`
-/

namespace A051872.P14887184553919471573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n - (2 * n : ℤ)

end

end A051872.P14887184553919471573

namespace A051872

/-- `A152751(n)-2*n` -/
def P14887184553919471573.Spec : Prop :=
  ∀ n, P14887184553919471573.a n = A051872 n

theorem P14887184553919471573.correct : P14887184553919471573.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P14887184553919471573.a, A051872.P14981514250328426150.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P2698435686838091561

`(A282850(n)+n)/2`
-/

namespace A051872.P2698435686838091561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282850 n + (n : ℤ) : ℚ) / 2

end

end A051872.P2698435686838091561

namespace A051872

/-- `(A282850(n)+n)/2` -/
def P2698435686838091561.Spec : Prop :=
  ∀ n, P2698435686838091561.a n = (A051872 n : ℚ)

theorem P2698435686838091561.correct : P2698435686838091561.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P2698435686838091561.a, A051872.P14981514250328426150.a, A282850, A282850.P10636471792818135754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P5365064629671389536

`A152743(n)-5*n`
-/

namespace A051872.P5365064629671389536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n - (5 * n : ℤ)

end

end A051872.P5365064629671389536

namespace A051872

/-- `A152743(n)-5*n` -/
def P5365064629671389536.Spec : Prop :=
  ∀ n, P5365064629671389536.a n = A051872 n

theorem P5365064629671389536.correct : P5365064629671389536.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P5365064629671389536.a, A051872.P14981514250328426150.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P10040428149107025556

`∑[A298035(n)-2]+1`
-/

namespace A051872.P10040428149107025556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A051872.P10040428149107025556

namespace A051872

/-- `∑[A298035(n)-2]+1` -/
def P10040428149107025556.Spec : Prop :=
  ∀ n, P10040428149107025556.a n = A051872 n

end A051872

/-! ## A051872.P3391488807689135492

`(A282853(n)+n²)/2`
-/

namespace A051872.P3391488807689135492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282853 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A051872.P3391488807689135492

namespace A051872

/-- `(A282853(n)+n²)/2` -/
def P3391488807689135492.Spec : Prop :=
  ∀ n, P3391488807689135492.a n = (A051872 n : ℚ)

theorem P3391488807689135492.correct : P3391488807689135492.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P3391488807689135492.a, A051872.P14981514250328426150.a, A282853, A282853.P10274591526643661106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P12199393313394909188

`n²+A051870(n)-n`
-/

namespace A051872.P12199393313394909188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051870 n - (n : ℤ))

end

end A051872.P12199393313394909188

namespace A051872

/-- `n²+A051870(n)-n` -/
def P12199393313394909188.Spec : Prop :=
  ∀ n, P12199393313394909188.a n = A051872 n

theorem P12199393313394909188.correct : P12199393313394909188.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P12199393313394909188.a, A051872.P14981514250328426150.a, A051870, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P2512843818931666851

`A051874(n)+n-n²`
-/

namespace A051872.P2512843818931666851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A051872.P2512843818931666851

namespace A051872

/-- `A051874(n)+n-n²` -/
def P2512843818931666851.Spec : Prop :=
  ∀ n, P2512843818931666851.a n = A051872 n

theorem P2512843818931666851.correct : P2512843818931666851.Spec := by
  intro n
  simp only [A051872, Nat.add_sub_cancel, A051872.P2512843818931666851.a, A051872.P14981514250328426150.a, A051874, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051872

/-! ## A051872.P3146914184014527792

`∑[n]+A051871(n)-n`
-/

namespace A051872.P3146914184014527792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A051871 n - (n : ℤ))

end

end A051872.P3146914184014527792

namespace A051872

/-- `∑[n]+A051871(n)-n` -/
def P3146914184014527792.Spec : Prop :=
  ∀ n, P3146914184014527792.a n = A051872 n

end A051872

/-! ## A051872.P6018104627262427555

`A051873(n)+n-∑[n]`
-/

namespace A051872.P6018104627262427555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A051872.P6018104627262427555

namespace A051872

/-- `A051873(n)+n-∑[n]` -/
def P6018104627262427555.Spec : Prop :=
  ∀ n, P6018104627262427555.a n = A051872 n

end A051872

/-! ## A051872.P5481586286348431630

`2*A256649(n)/(n+1)`
-/

namespace A051872.P5481586286348431630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A256649 n : ℚ) / (n + 1 : ℚ)

end

end A051872.P5481586286348431630

namespace A051872

/-- `2*A256649(n)/(n+1)` -/
def P5481586286348431630.Spec : Prop :=
  ∀ n, P5481586286348431630.a n = (A051872 n : ℚ)

end A051872

/-!
# A051873: 21-gonal numbers: a(n) = n*(19n - 17)/2.

The programs for A051873, the canonical program `A051873.P12199030438265474004` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051873 has offset 0).

The definition of A051873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-17)/2` (program `A051873.P9088191218204258134`, by `A051873.P9088191218204258134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051873.P9088191218204258134

`n*(19*n-17)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051873.P9088191218204258134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((19 * n : ℤ) - 17) : ℚ) / 2

end

end A051873.P9088191218204258134

namespace A051873

/-- `n*(19*n-17)/2` -/
def P9088191218204258134.Spec : Prop :=
  ∀ n, P9088191218204258134.a n = (A051873 n : ℚ)

theorem P9088191218204258134.correct : P9088191218204258134.Spec := by
  intro n
  induction n with
  | zero => simp [A051873, A051873.P9088191218204258134.a, A051873.P12199030438265474004.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051873, Nat.add_sub_cancel, A051873.P9088191218204258134.a, A051873.P12199030438265474004.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051873

/-! ## A051873.P12199030438265474004

`19*n+a(n-1)-18` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051873

/-- `19*n+a(n-1)-18` -/
def P12199030438265474004.Spec : Prop :=
  ∀ n, P12199030438265474004.a n = A051873 n

theorem P12199030438265474004.correct : P12199030438265474004.Spec := by
  intro n
  simp only [A051873]

end A051873

/-! ## A051873.P10851992172021648720

`A226490(n)-n`
-/

namespace A051873.P10851992172021648720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n - (n : ℤ)

end

end A051873.P10851992172021648720

namespace A051873

/-- `A226490(n)-n` -/
def P10851992172021648720.Spec : Prop :=
  ∀ n, P10851992172021648720.a n = A051873 n

end A051873

/-! ## A051873.P14843839752482944821

`19*C(n, 2)+n`
-/

namespace A051873.P14843839752482944821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * Nat.choose n 2 + n

end

end A051873.P14843839752482944821

namespace A051873

/-- `19*C(n, 2)+n` -/
def P14843839752482944821.Spec : Prop :=
  ∀ n, (P14843839752482944821.a n : ℤ) = A051873 n

end A051873

/-! ## A051873.P11999178412395180414

`∑[a(n-1)+19]` with `a(0)=0, a(1)=1`
-/

namespace A051873.P11999178412395180414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051873.P11999178412395180414

namespace A051873

/-- `∑[a(n-1)+19]` -/
def P11999178412395180414.Spec : Prop :=
  ∀ n, (P11999178412395180414.a n : ℤ) = A051873 n

end A051873

/-! ## A051873.P16227987198819802981

`18-∑[a(n-1)-19]` with `a(0)=18`
-/

namespace A051873.P16227987198819802981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051873.P16227987198819802981

namespace A051873

/-- `18-∑[a(n-1)-19]` -/
def P16227987198819802981.Spec : Prop :=
  ∀ n, P16227987198819802981.a n = A051873 n

end A051873

/-! ## A051873.P5196969039354148829

`A226491(n)-n²`
-/

namespace A051873.P5196969039354148829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n - (n ^ 2 : ℤ)

end

end A051873.P5196969039354148829

namespace A051873

/-- `A226491(n)-n²` -/
def P5196969039354148829.Spec : Prop :=
  ∀ n, P5196969039354148829.a n = A051873 n

end A051873

/-! ## A051873.P16723066213120280131

`A152965(n)-∑[n]`
-/

namespace A051873.P16723066213120280131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051873.P16723066213120280131

namespace A051873

/-- `A152965(n)-∑[n]` -/
def P16723066213120280131.Spec : Prop :=
  ∀ n, P16723066213120280131.a n = A051873 n

end A051873

/-! ## A051873.P14010271591985632994

`A158186(n)-∑[n+1]`
-/

namespace A051873.P14010271591985632994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051873.P14010271591985632994

namespace A051873

/-- `A158186(n)-∑[n+1]` -/
def P14010271591985632994.Spec : Prop :=
  ∀ n, P14010271591985632994.a n = A051873 n

end A051873

/-! ## A051873.P5152999946518950153

`A152759(n)-(n²+n)`
-/

namespace A051873.P5152999946518950153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n - (n ^ 2 + n : ℤ)

end

end A051873.P5152999946518950153

namespace A051873

/-- `A152759(n)-(n²+n)` -/
def P5152999946518950153.Spec : Prop :=
  ∀ n, P5152999946518950153.a n = A051873 n

end A051873

/-! ## A051873.P15228451701539371531

`A153784(n)-n-∑[n]-n`
-/

namespace A051873.P15228451701539371531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n - (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A051873.P15228451701539371531

namespace A051873

/-- `A153784(n)-n-∑[n]-n` -/
def P15228451701539371531.Spec : Prop :=
  ∀ n, P15228451701539371531.a n = A051873 n

end A051873

/-! ## A051873.P4739043217177904164

`abs(2*C(2*n, 2)-A153783(n))`
-/

namespace A051873.P4739043217177904164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (2 * n) 2 : ℤ) - A153783 n|

end

end A051873.P4739043217177904164

namespace A051873

/-- `abs(2*C(2*n, 2)-A153783(n))` -/
def P4739043217177904164.Spec : Prop :=
  ∀ n, P4739043217177904164.a n = A051873 n

end A051873

/-! ## A051873.P14479902584152802871

`A161680(n)+A051872(n)`
-/

namespace A051873.P14479902584152802871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051872 n

end

end A051873.P14479902584152802871

namespace A051873

/-- `A161680(n)+A051872(n)` -/
def P14479902584152802871.Spec : Prop :=
  ∀ n, P14479902584152802871.a n = A051873 n

end A051873

/-! ## A051873.P11066819666273194238

`A226489(n)+A014107(n)`
-/

namespace A051873.P11066819666273194238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n + A014107 n

end

end A051873.P11066819666273194238

namespace A051873

/-- `A226489(n)+A014107(n)` -/
def P11066819666273194238.Spec : Prop :=
  ∀ n, P11066819666273194238.a n = A051873 n

end A051873

/-! ## A051873.P18395564202798210617

`A180232(n)+A067998(n)`
-/

namespace A051873.P18395564202798210617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n + A067998 n

end

end A051873.P18395564202798210617

namespace A051873

/-- `A180232(n)+A067998(n)` -/
def P18395564202798210617.Spec : Prop :=
  ∀ n, P18395564202798210617.a n = A051873 n

end A051873

/-! ## A051873.P8156036865665501019

`A326725(n)+A139268(n)`
-/

namespace A051873.P8156036865665501019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A139268 n

end

end A051873.P8156036865665501019

namespace A051873

/-- `A326725(n)+A139268(n)` -/
def P8156036865665501019.Spec : Prop :=
  ∀ n, P8156036865665501019.a n = A051873 n

end A051873

/-! ## A051873.P11329602649058259694

`A389608(n)+A103115(n)`
-/

namespace A051873.P11329602649058259694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n + A103115 n

end

end A051873.P11329602649058259694

namespace A051873

/-- `A389608(n)+A103115(n)` -/
def P11329602649058259694.Spec : Prop :=
  ∀ n, P11329602649058259694.a n = A051873 n

end A051873

/-! ## A051873.P1463488931850629816

`A022276(n)-A008590(n)`
-/

namespace A051873.P1463488931850629816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022276 n - A008590 n

end

end A051873.P1463488931850629816

namespace A051873

/-- `A022276(n)-A008590(n)` -/
def P1463488931850629816.Spec : Prop :=
  ∀ n, P1463488931850629816.a n = A051873 n

end A051873

/-! ## A051873.P1805761732090811735

`A022277(n)-A008591(n)`
-/

namespace A051873.P1805761732090811735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022277 n - A008591 n

end

end A051873.P1805761732090811735

namespace A051873

/-- `A022277(n)-A008591(n)` -/
def P1805761732090811735.Spec : Prop :=
  ∀ n, P1805761732090811735.a n = A051873 n

end A051873

/-! ## A051873.P15223491630590130338

`A022278(n)-A028566(n)`
-/

namespace A051873.P15223491630590130338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n - A028566 n

end

end A051873.P15223491630590130338

namespace A051873

/-- `A022278(n)-A028566(n)` -/
def P15223491630590130338.Spec : Prop :=
  ∀ n, P15223491630590130338.a n = A051873 n

end A051873

/-!
# A051874: 22-gonal numbers: a(n) = n*(10*n-9).

The programs for A051874, the canonical program `A051874.P13000992848419538759` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051874 has offset 0).

The definition of A051874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(10*n-9)` (program `A051874.P13000992848419538759`, by `A051874.P13000992848419538759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051874.P13000992848419538759

`n*(10*n-9)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051874

/-- `n*(10*n-9)` -/
def P13000992848419538759.Spec : Prop :=
  ∀ n, P13000992848419538759.a n = A051874 n

theorem P13000992848419538759.correct : P13000992848419538759.Spec := by
  intro n
  simp only [A051874]

end A051874

/-! ## A051874.P10861268574329523701

`20*C(n, 2)+n`
-/

namespace A051874.P10861268574329523701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * Nat.choose n 2 + n

end

end A051874.P10861268574329523701

namespace A051874

/-- `20*C(n, 2)+n` -/
def P10861268574329523701.Spec : Prop :=
  ∀ n, (P10861268574329523701.a n : ℤ) = A051874 n

theorem P10861268574329523701.correct : P10861268574329523701.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P10861268574329523701.a, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P11864508079050333820

`∑[a(n-1)+20]` with `a(0)=0, a(1)=1`
-/

namespace A051874.P11864508079050333820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051874.P11864508079050333820

namespace A051874

/-- `∑[a(n-1)+20]` -/
def P11864508079050333820.Spec : Prop :=
  ∀ n, (P11864508079050333820.a n : ℤ) = A051874 n

end A051874

/-! ## A051874.P14128937661493072930

`19-∑[a(n-1)-20]` with `a(0)=19`
-/

namespace A051874.P14128937661493072930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051874.P14128937661493072930

namespace A051874

/-- `19-∑[a(n-1)-20]` -/
def P14128937661493072930.Spec : Prop :=
  ∀ n, P14128937661493072930.a n = A051874 n

end A051874

/-! ## A051874.P6743456351903553377

`A152965(n)-n`
-/

namespace A051874.P6743456351903553377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n - (n : ℤ)

end

end A051874.P6743456351903553377

namespace A051874

/-- `A152965(n)-n` -/
def P6743456351903553377.Spec : Prop :=
  ∀ n, P6743456351903553377.a n = A051874 n

theorem P6743456351903553377.correct : P6743456351903553377.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P6743456351903553377.a, A051874.P13000992848419538759.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P5453169696659574438

`A152997(n)-n²`
-/

namespace A051874.P5453169696659574438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n - (n ^ 2 : ℤ)

end

end A051874.P5453169696659574438

namespace A051874

/-- `A152997(n)-n²` -/
def P5453169696659574438.Spec : Prop :=
  ∀ n, P5453169696659574438.a n = A051874 n

theorem P5453169696659574438.correct : P5453169696659574438.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P5453169696659574438.a, A051874.P13000992848419538759.a, A152997, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P12845635465911774944

`A226491(n)-∑[n]`
-/

namespace A051874.P12845635465911774944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051874.P12845635465911774944

namespace A051874

/-- `A226491(n)-∑[n]` -/
def P12845635465911774944.Spec : Prop :=
  ∀ n, P12845635465911774944.a n = A051874 n

end A051874

/-! ## A051874.P4421332975505922556

`2*A051624(n)-n`
-/

namespace A051874.P4421332975505922556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051624 n - (n : ℤ)

end

end A051874.P4421332975505922556

namespace A051874

/-- `2*A051624(n)-n` -/
def P4421332975505922556.Spec : Prop :=
  ∀ n, P4421332975505922556.a n = A051874 n

theorem P4421332975505922556.correct : P4421332975505922556.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P4421332975505922556.a, A051874.P13000992848419538759.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P17144317700363253039

`A153784(n)-3*n`
-/

namespace A051874.P17144317700363253039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n - (3 * n : ℤ)

end

end A051874.P17144317700363253039

namespace A051874

/-- `A153784(n)-3*n` -/
def P17144317700363253039.Spec : Prop :=
  ∀ n, P17144317700363253039.a n = A051874 n

theorem P17144317700363253039.correct : P17144317700363253039.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P17144317700363253039.a, A051874.P13000992848419538759.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P2940534439971828021

`A152745(n)-4*n`
-/

namespace A051874.P2940534439971828021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152745 n - (4 * n : ℤ)

end

end A051874.P2940534439971828021

namespace A051874

/-- `A152745(n)-4*n` -/
def P2940534439971828021.Spec : Prop :=
  ∀ n, P2940534439971828021.a n = A051874 n

theorem P2940534439971828021.correct : P2940534439971828021.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P2940534439971828021.a, A051874.P13000992848419538759.a, A152745, A152745.P16319448158655216416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P5881887463355477197

`A158186(n)-Δ[n²]`
-/

namespace A051874.P5881887463355477197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A051874.P5881887463355477197

namespace A051874

/-- `A158186(n)-Δ[n²]` -/
def P5881887463355477197.Spec : Prop :=
  ∀ n, P5881887463355477197.a n = A051874 n

theorem P5881887463355477197.correct : P5881887463355477197.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P5881887463355477197.f1, A051874.P5881887463355477197.a, A051874.P13000992848419538759.a, A158186, A158186.P854451765404364871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P2724880548335658184

`(A261191(n)+n²)/2`
-/

namespace A051874.P2724880548335658184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261191 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A051874.P2724880548335658184

namespace A051874

/-- `(A261191(n)+n²)/2` -/
def P2724880548335658184.Spec : Prop :=
  ∀ n, P2724880548335658184.a n = (A051874 n : ℚ)

theorem P2724880548335658184.correct : P2724880548335658184.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P2724880548335658184.a, A051874.P13000992848419538759.a, A261191, A261191.P14259318423697160448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P1224726560821543252

`n²+A051872(n)-n`
-/

namespace A051874.P1224726560821543252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051872 n - (n : ℤ))

end

end A051874.P1224726560821543252

namespace A051874

/-- `n²+A051872(n)-n` -/
def P1224726560821543252.Spec : Prop :=
  ∀ n, P1224726560821543252.a n = A051874 n

theorem P1224726560821543252.correct : P1224726560821543252.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P1224726560821543252.a, A051874.P13000992848419538759.a, A051872, A051872.P14981514250328426150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P1529671429739591439

`A051876(n)+n-n²`
-/

namespace A051874.P1529671429739591439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A051874.P1529671429739591439

namespace A051874

/-- `A051876(n)+n-n²` -/
def P1529671429739591439.Spec : Prop :=
  ∀ n, P1529671429739591439.a n = A051874 n

theorem P1529671429739591439.correct : P1529671429739591439.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P1529671429739591439.a, A051874.P13000992848419538759.a, A051876, A051876.P7910470835603757038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P6161895215420950609

`∑[n]+A051873(n)-n`
-/

namespace A051874.P6161895215420950609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A051873 n - (n : ℤ))

end

end A051874.P6161895215420950609

namespace A051874

/-- `∑[n]+A051873(n)-n` -/
def P6161895215420950609.Spec : Prop :=
  ∀ n, P6161895215420950609.a n = A051874 n

end A051874

/-! ## A051874.P2619619131390939808

`A051875(n)+n-∑[n]`
-/

namespace A051874.P2619619131390939808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A051874.P2619619131390939808

namespace A051874

/-- `A051875(n)+n-∑[n]` -/
def P2619619131390939808.Spec : Prop :=
  ∀ n, P2619619131390939808.a n = A051874 n

end A051874

/-! ## A051874.P691960529468799254

`A152759(n)-(∑[n]+n)`
-/

namespace A051874.P691960529468799254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A051874.P691960529468799254

namespace A051874

/-- `A152759(n)-(∑[n]+n)` -/
def P691960529468799254.Spec : Prop :=
  ∀ n, P691960529468799254.a n = A051874 n

end A051874

/-! ## A051874.P18363953054767027756

`A139271(n)+A014107(n)`
-/

namespace A051874.P18363953054767027756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + A014107 n

end

end A051874.P18363953054767027756

namespace A051874

/-- `A139271(n)+A014107(n)` -/
def P18363953054767027756.Spec : Prop :=
  ∀ n, P18363953054767027756.a n = A051874 n

theorem P18363953054767027756.correct : P18363953054767027756.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P18363953054767027756.a, A051874.P13000992848419538759.a, A014107, A014107.P7046062318563033165.a, A139271, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P17904034858240314594

`A103115(n)+A054552(n)`
-/

namespace A051874.P17904034858240314594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + A054552 n

end

end A051874.P17904034858240314594

namespace A051874

/-- `A103115(n)+A054552(n)` -/
def P17904034858240314594.Spec : Prop :=
  ∀ n, P17904034858240314594.a n = A051874 n

theorem P17904034858240314594.correct : P17904034858240314594.Spec := by
  intro n
  simp only [A051874, Nat.add_sub_cancel, A051874.P17904034858240314594.a, A051874.P13000992848419538759.a, A054552, A054552.P9181386657183712970.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051874

/-! ## A051874.P16716585980687400955

`A161680(n)+A051873(n)`
-/

namespace A051874.P16716585980687400955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051873 n

end

end A051874.P16716585980687400955

namespace A051874

/-- `A161680(n)+A051873(n)` -/
def P16716585980687400955.Spec : Prop :=
  ∀ n, P16716585980687400955.a n = A051874 n

end A051874

/-!
# A051875: 23-gonal numbers: a(n) = n(21n-19)/2.

The programs for A051875, the canonical program `A051875.P4877701948217654249` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051875 has offset 0).

The definition of A051875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-19)/2` (program `A051875.P8955559354146230753`, by `A051875.P8955559354146230753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051875.P8955559354146230753

`n*(21*n-19)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051875.P8955559354146230753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((21 * n : ℤ) - 19) : ℚ) / 2

end

end A051875.P8955559354146230753

namespace A051875

/-- `n*(21*n-19)/2` -/
def P8955559354146230753.Spec : Prop :=
  ∀ n, P8955559354146230753.a n = (A051875 n : ℚ)

theorem P8955559354146230753.correct : P8955559354146230753.Spec := by
  intro n
  induction n with
  | zero => simp [A051875, A051875.P8955559354146230753.a, A051875.P4877701948217654249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051875, Nat.add_sub_cancel, A051875.P8955559354146230753.a, A051875.P4877701948217654249.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051875

/-! ## A051875.P4877701948217654249

`21*n+a(n-1)-20` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051875

/-- `21*n+a(n-1)-20` -/
def P4877701948217654249.Spec : Prop :=
  ∀ n, P4877701948217654249.a n = A051875 n

theorem P4877701948217654249.correct : P4877701948217654249.Spec := by
  intro n
  simp only [A051875]

end A051875

/-! ## A051875.P7739115930371208991

`A226491(n)-n`
-/

namespace A051875.P7739115930371208991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n - (n : ℤ)

end

end A051875.P7739115930371208991

namespace A051875

/-- `A226491(n)-n` -/
def P7739115930371208991.Spec : Prop :=
  ∀ n, P7739115930371208991.a n = A051875 n

end A051875

/-! ## A051875.P10909879723590256473

`∑[a(n-1)+21]` with `a(0)=0, a(1)=1`
-/

namespace A051875.P10909879723590256473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051875.P10909879723590256473

namespace A051875

/-- `∑[a(n-1)+21]` -/
def P10909879723590256473.Spec : Prop :=
  ∀ n, (P10909879723590256473.a n : ℤ) = A051875 n

end A051875

/-! ## A051875.P3146965840805017235

`3*7*C(n, 2)+n`
-/

namespace A051875.P3146965840805017235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (7 * Nat.choose n 2) + n

end

end A051875.P3146965840805017235

namespace A051875

/-- `3*7*C(n, 2)+n` -/
def P3146965840805017235.Spec : Prop :=
  ∀ n, (P3146965840805017235.a n : ℤ) = A051875 n

end A051875

/-! ## A051875.P13626851517654099198

`A152997(n)-∑[n]`
-/

namespace A051875.P13626851517654099198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051875.P13626851517654099198

namespace A051875

/-- `A152997(n)-∑[n]` -/
def P13626851517654099198.Spec : Prop :=
  ∀ n, P13626851517654099198.a n = A051875 n

end A051875

/-! ## A051875.P14271941188824301166

`A152759(n)-2*n`
-/

namespace A051875.P14271941188824301166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n - (2 * n : ℤ)

end

end A051875.P14271941188824301166

namespace A051875

/-- `A152759(n)-2*n` -/
def P14271941188824301166.Spec : Prop :=
  ∀ n, P14271941188824301166.a n = A051875 n

end A051875

/-! ## A051875.P12622041749843313359

`abs((2*n)²-∑[n]-A152760(n))`
-/

namespace A051875.P12622041749843313359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A152760 n|

end

end A051875.P12622041749843313359

namespace A051875

/-- `abs((2*n)²-∑[n]-A152760(n))` -/
def P12622041749843313359.Spec : Prop :=
  ∀ n, P12622041749843313359.a n = A051875 n

end A051875

/-! ## A051875.P9504725658688321020

`A180232(n)+A014107(n)`
-/

namespace A051875.P9504725658688321020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n + A014107 n

end

end A051875.P9504725658688321020

namespace A051875

/-- `A180232(n)+A014107(n)` -/
def P9504725658688321020.Spec : Prop :=
  ∀ n, P9504725658688321020.a n = A051875 n

end A051875

/-! ## A051875.P3516876529995528552

`A161680(n)+A051874(n)`
-/

namespace A051875.P3516876529995528552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051874 n

end

end A051875.P3516876529995528552

namespace A051875

/-- `A161680(n)+A051874(n)` -/
def P3516876529995528552.Spec : Prop :=
  ∀ n, P3516876529995528552.a n = A051875 n

end A051875

/-! ## A051875.P10437211012713912324

`A117625(n)+A103115(n)`
-/

namespace A051875.P10437211012713912324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n + A103115 n

end

end A051875.P10437211012713912324

namespace A051875

/-- `A117625(n)+A103115(n)` -/
def P10437211012713912324.Spec : Prop :=
  ∀ n, P10437211012713912324.a n = A051875 n

end A051875

/-! ## A051875.P2345648934611626855

`A226490(n)+A067998(n)`
-/

namespace A051875.P2345648934611626855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n + A067998 n

end

end A051875.P2345648934611626855

namespace A051875

/-- `A226490(n)+A067998(n)` -/
def P2345648934611626855.Spec : Prop :=
  ∀ n, P2345648934611626855.a n = A051875 n

end A051875

/-! ## A051875.P10514290324587013385

`A326725(n)+A139271(n)`
-/

namespace A051875.P10514290324587013385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A139271 n

end

end A051875.P10514290324587013385

namespace A051875

/-- `A326725(n)+A139271(n)` -/
def P10514290324587013385.Spec : Prop :=
  ∀ n, P10514290324587013385.a n = A051875 n

end A051875

/-! ## A051875.P10337644524837166694

`A022278(n)-A008591(n)`
-/

namespace A051875.P10337644524837166694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n - A008591 n

end

end A051875.P10337644524837166694

namespace A051875

/-- `A022278(n)-A008591(n)` -/
def P10337644524837166694.Spec : Prop :=
  ∀ n, P10337644524837166694.a n = A051875 n

end A051875

/-! ## A051875.P2511010237240304215

`A022279(n)-A008592(n)`
-/

namespace A051875.P2511010237240304215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n - A008592 n

end

end A051875.P2511010237240304215

namespace A051875

/-- `A022279(n)-A008592(n)` -/
def P2511010237240304215.Spec : Prop :=
  ∀ n, P2511010237240304215.a n = A051875 n

end A051875

/-! ## A051875.P14478891057674430637

`A022280(n)-A028569(n)`
-/

namespace A051875.P14478891057674430637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022280 n - A028569 n

end

end A051875.P14478891057674430637

namespace A051875

/-- `A022280(n)-A028569(n)` -/
def P14478891057674430637.Spec : Prop :=
  ∀ n, P14478891057674430637.a n = A051875 n

end A051875

/-! ## A051875.P6276607974903581963

`A014642(n)-A059845(n)`
-/

namespace A051875.P6276607974903581963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - A059845 n

end

end A051875.P6276607974903581963

namespace A051875

/-- `A014642(n)-A059845(n)` -/
def P6276607974903581963.Spec : Prop :=
  ∀ n, P6276607974903581963.a n = A051875 n

end A051875

/-! ## A051875.P13654155850851273829

`A080857(n)-A001844(n)`
-/

namespace A051875.P13654155850851273829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n - A001844 n

end

end A051875.P13654155850851273829

namespace A051875

/-- `A080857(n)-A001844(n)` -/
def P13654155850851273829.Spec : Prop :=
  ∀ n, P13654155850851273829.a n = A051875 n

end A051875

/-! ## A051875.P15807059721734944259

`A022281(n)-A098603(n)`
-/

namespace A051875.P15807059721734944259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n - A098603 n

end

end A051875.P15807059721734944259

namespace A051875

/-- `A022281(n)-A098603(n)` -/
def P15807059721734944259.Spec : Prop :=
  ∀ n, P15807059721734944259.a n = A051875 n

end A051875

/-! ## A051875.P18059424304490671466

`A134154(n)-A006137(n)`
-/

namespace A051875.P18059424304490671466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134154 n - A006137 n

end

end A051875.P18059424304490671466

namespace A051875

/-- `A134154(n)-A006137(n)` -/
def P18059424304490671466.Spec : Prop :=
  ∀ n, P18059424304490671466.a n = A051875 n

end A051875

/-!
# A051876: 24-gonal numbers: a(n) = n*(11*n-10).

The programs for A051876, the canonical program `A051876.P7910470835603757038` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051876 has offset 0).

The definition of A051876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-10)` (program `A051876.P7910470835603757038`, by `A051876.P7910470835603757038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051876.P7910470835603757038

`n*(11*n-10)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051876

/-- `n*(11*n-10)` -/
def P7910470835603757038.Spec : Prop :=
  ∀ n, P7910470835603757038.a n = A051876 n

theorem P7910470835603757038.correct : P7910470835603757038.Spec := by
  intro n
  simp only [A051876]

end A051876

/-! ## A051876.P10367555821310543478

`∑[a(n-1)+22]` with `a(0)=0, a(1)=1`
-/

namespace A051876.P10367555821310543478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051876.P10367555821310543478

namespace A051876

/-- `∑[a(n-1)+22]` -/
def P10367555821310543478.Spec : Prop :=
  ∀ n, (P10367555821310543478.a n : ℤ) = A051876 n

end A051876

/-! ## A051876.P13440102737430879939

`A152997(n)-n`
-/

namespace A051876.P13440102737430879939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n - (n : ℤ)

end

end A051876.P13440102737430879939

namespace A051876

/-- `A152997(n)-n` -/
def P13440102737430879939.Spec : Prop :=
  ∀ n, P13440102737430879939.a n = A051876 n

theorem P13440102737430879939.correct : P13440102737430879939.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P13440102737430879939.a, A051876.P7910470835603757038.a, A152997, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P12374814696438635005

`2*A051865(n)-n`
-/

namespace A051876.P12374814696438635005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051865 n - (n : ℤ)

end

end A051876.P12374814696438635005

namespace A051876

/-- `2*A051865(n)-n` -/
def P12374814696438635005.Spec : Prop :=
  ∀ n, P12374814696438635005.a n = A051876 n

end A051876

/-! ## A051876.P6970632845571340737

`A033584(n)-10*n`
-/

namespace A051876.P6970632845571340737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n - (10 * n : ℤ)

end

end A051876.P6970632845571340737

namespace A051876

/-- `A033584(n)-10*n` -/
def P6970632845571340737.Spec : Prop :=
  ∀ n, P6970632845571340737.a n = A051876 n

theorem P6970632845571340737.correct : P6970632845571340737.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P6970632845571340737.a, A051876.P7910470835603757038.a, A033584, A033584.P5749212620470657919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P224502722581352729

`A255184(n)-C(n, 2)`
-/

namespace A051876.P224502722581352729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255184 n - (Nat.choose n 2 : ℤ)

end

end A051876.P224502722581352729

namespace A051876

/-- `A255184(n)-C(n, 2)` -/
def P224502722581352729.Spec : Prop :=
  ∀ n, P224502722581352729.a n = A051876 n

theorem P224502722581352729.correct : P224502722581352729.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P224502722581352729.a, A051876.P7910470835603757038.a, A255184, A255184.P18276031424336409620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P5339202310762313414

`A185212(n)-(n+1)²`
-/

namespace A051876.P5339202310762313414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 n - ((n + 1) ^ 2 : ℤ)

end

end A051876.P5339202310762313414

namespace A051876

/-- `A185212(n)-(n+1)²` -/
def P5339202310762313414.Spec : Prop :=
  ∀ n, P5339202310762313414.a n = A051876 n

theorem P5339202310762313414.correct : P5339202310762313414.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P5339202310762313414.a, A051876.P7910470835603757038.a, A185212, A185212.P9778455479555571894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P6986980672846462821

`n²+A051874(n)-n`
-/

namespace A051876.P6986980672846462821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A051874 n - (n : ℤ))

end

end A051876.P6986980672846462821

namespace A051876

/-- `n²+A051874(n)-n` -/
def P6986980672846462821.Spec : Prop :=
  ∀ n, P6986980672846462821.a n = A051876 n

theorem P6986980672846462821.correct : P6986980672846462821.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P6986980672846462821.a, A051876.P7910470835603757038.a, A051874, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P4103014237050080085

`A255185(n)+n-n²`
-/

namespace A051876.P4103014237050080085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A051876.P4103014237050080085

namespace A051876

/-- `A255185(n)+n-n²` -/
def P4103014237050080085.Spec : Prop :=
  ∀ n, P4103014237050080085.a n = A051876 n

theorem P4103014237050080085.correct : P4103014237050080085.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P4103014237050080085.a, A051876.P7910470835603757038.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P17561881506265427088

`∑[n]+A051875(n)-n`
-/

namespace A051876.P17561881506265427088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A051875 n - (n : ℤ))

end

end A051876.P17561881506265427088

namespace A051876

/-- `∑[n]+A051875(n)-n` -/
def P17561881506265427088.Spec : Prop :=
  ∀ n, P17561881506265427088.a n = A051876 n

end A051876

/-! ## A051876.P14357383295492082329

`A033578(n)-((n+1)²+n)`
-/

namespace A051876.P14357383295492082329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033578 n - ((n + 1) ^ 2 + n : ℤ)

end

end A051876.P14357383295492082329

namespace A051876

/-- `A033578(n)-((n+1)²+n)` -/
def P14357383295492082329.Spec : Prop :=
  ∀ n, P14357383295492082329.a n = A051876 n

theorem P14357383295492082329.correct : P14357383295492082329.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P14357383295492082329.a, A051876.P7910470835603757038.a, A033578, A033578.P7557653025791932754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P17118016859427259366

`A064200(n)+n-(n²-n)`
-/

namespace A051876.P17118016859427259366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + (n : ℤ) - ((n ^ 2 : ℤ) - (n : ℤ))

end

end A051876.P17118016859427259366

namespace A051876

/-- `A064200(n)+n-(n²-n)` -/
def P17118016859427259366.Spec : Prop :=
  ∀ n, P17118016859427259366.a n = A051876 n

theorem P17118016859427259366.correct : P17118016859427259366.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P17118016859427259366.a, A051876.P7910470835603757038.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P4177435781761555426

`A152995(n)+A014107(n)`
-/

namespace A051876.P4177435781761555426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n + A014107 n

end

end A051876.P4177435781761555426

namespace A051876

/-- `A152995(n)+A014107(n)` -/
def P4177435781761555426.Spec : Prop :=
  ∀ n, P4177435781761555426.a n = A051876 n

theorem P4177435781761555426.correct : P4177435781761555426.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P4177435781761555426.a, A051876.P7910470835603757038.a, A014107, A014107.P7046062318563033165.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P13588946015735020837

`A161680(n)+A051875(n)`
-/

namespace A051876.P13588946015735020837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051875 n

end

end A051876.P13588946015735020837

namespace A051876

/-- `A161680(n)+A051875(n)` -/
def P13588946015735020837.Spec : Prop :=
  ∀ n, P13588946015735020837.a n = A051876 n

end A051876

/-! ## A051876.P947349552975230621

`A152965(n)+A067998(n)`
-/

namespace A051876.P947349552975230621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n + A067998 n

end

end A051876.P947349552975230621

namespace A051876

/-- `A152965(n)+A067998(n)` -/
def P947349552975230621.Spec : Prop :=
  ∀ n, P947349552975230621.a n = A051876 n

theorem P947349552975230621.correct : P947349552975230621.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P947349552975230621.a, A051876.P7910470835603757038.a, A067998, A067998.P12062298001294777272.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P11702198661123257553

`A190816(n)+A103115(n)`
-/

namespace A051876.P11702198661123257553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n + A103115 n

end

end A051876.P11702198661123257553

namespace A051876

/-- `A190816(n)+A103115(n)` -/
def P11702198661123257553.Spec : Prop :=
  ∀ n, P11702198661123257553.a n = A051876 n

theorem P11702198661123257553.correct : P11702198661123257553.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P11702198661123257553.a, A051876.P7910470835603757038.a, A103115, A103115.P1586163232865090376.a, A190816, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P12975266383068255904

`A326725(n)+A180232(n)`
-/

namespace A051876.P12975266383068255904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326725 n + A180232 n

end

end A051876.P12975266383068255904

namespace A051876

/-- `A326725(n)+A180232(n)` -/
def P12975266383068255904.Spec : Prop :=
  ∀ n, P12975266383068255904.a n = A051876 n

end A051876

/-! ## A051876.P9943415496973529833

`A014642(n)-A028560(n)`
-/

namespace A051876.P9943415496973529833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - A028560 n

end

end A051876.P9943415496973529833

namespace A051876

/-- `A014642(n)-A028560(n)` -/
def P9943415496973529833.Spec : Prop :=
  ∀ n, P9943415496973529833.a n = A051876 n

theorem P9943415496973529833.correct : P9943415496973529833.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P9943415496973529833.a, A051876.P7910470835603757038.a, A014642, A014642.P1230047363248524840.a, A028560, A028560.P2309686278855513759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P1030205963204300452

`A081589(n)-A005892(n)`
-/

namespace A051876.P1030205963204300452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081589 n - A005892 n

end

end A051876.P1030205963204300452

namespace A051876

/-- `A081589(n)-A005892(n)` -/
def P1030205963204300452.Spec : Prop :=
  ∀ n, P1030205963204300452.a n = A051876 n

theorem P1030205963204300452.correct : P1030205963204300452.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P1030205963204300452.a, A051876.P7910470835603757038.a, A005892, A005892.P14421385829800175738.a, A081589, A081589.P14858353134158145363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-! ## A051876.P12019334488390065422

`A062783(n)-A028563(n)`
-/

namespace A051876.P12019334488390065422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n - A028563 n

end

end A051876.P12019334488390065422

namespace A051876

/-- `A062783(n)-A028563(n)` -/
def P12019334488390065422.Spec : Prop :=
  ∀ n, P12019334488390065422.a n = A051876 n

theorem P12019334488390065422.correct : P12019334488390065422.Spec := by
  intro n
  simp only [A051876, Nat.add_sub_cancel, A051876.P12019334488390065422.a, A051876.P7910470835603757038.a, A028563, A028563.P15186121141906373506.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051876

/-!
# A051877: Partial sums of A051740.

The programs for A051877, the canonical program `A051877.P10674959506263942616` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051877 has offset 0).

The definition of A051877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051877.P10674959506263942616

`(7*n+5)*C(n+4, 4)/5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051877

/-- `(7*n+5)*C(n+4, 4)/5` -/
def P10674959506263942616.Spec : Prop :=
  ∀ n, P10674959506263942616.a n = (A051877 n : ℚ)

end A051877

/-! ## A051877.P12107355348430392645

`(n+1)*(n+2)*(n+3)*(n+4)*(7*n+5)/120`
-/

namespace A051877.P12107355348430392645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (7 * n + 5) : ℚ) / 120

end

end A051877.P12107355348430392645

namespace A051877

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(7*n+5)/120` -/
def P12107355348430392645.Spec : Prop :=
  ∀ n, P12107355348430392645.a n = (A051877 n : ℚ)

end A051877

/-! ## A051877.P11388773535501795561

`∑[A051740(n)]`
-/

namespace A051877.P11388773535501795561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051877.P11388773535501795561

namespace A051877

/-- `∑[A051740(n)]` -/
def P11388773535501795561.Spec : Prop :=
  ∀ n, P11388773535501795561.a n = A051877 n

end A051877

/-! ## A051877.P11461564231638121520

`A086755(n)-A244882(n)`
-/

namespace A051877.P11461564231638121520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n - A244882 n

end

end A051877.P11461564231638121520

namespace A051877

/-- `A086755(n)-A244882(n)` -/
def P11461564231638121520.Spec : Prop :=
  ∀ n, P11461564231638121520.a n = A051877 n

end A051877

/-! ## A051877.P17664110808356142333

`A271567(n)-A174002(n)`
-/

namespace A051877.P17664110808356142333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - A174002 n

end

end A051877.P17664110808356142333

namespace A051877

/-- `A271567(n)-A174002(n)` -/
def P17664110808356142333.Spec : Prop :=
  ∀ n, P17664110808356142333.a n = A051877 n

end A051877

/-! ## A051877.P18007965373228194282

`A130857(n+1)+A006414(n)`
-/

namespace A051877.P18007965373228194282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130857 (n + 1) + A006414 n

end

end A051877.P18007965373228194282

namespace A051877

/-- `A130857(n+1)+A006414(n)` -/
def P18007965373228194282.Spec : Prop :=
  ∀ n, P18007965373228194282.a n = A051877 n

end A051877

/-! ## A051877.P7526546727491452354

`A174002(n)+A005585(n+1)`
-/

namespace A051877.P7526546727491452354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A005585 (n + 1)

end

end A051877.P7526546727491452354

namespace A051877

/-- `A174002(n)+A005585(n+1)` -/
def P7526546727491452354.Spec : Prop :=
  ∀ n, P7526546727491452354.a n = A051877 n

end A051877

/-! ## A051877.P10760820981938090723

`A277935(n+1)+A027800(n)`
-/

namespace A051877.P10760820981938090723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A027800 n

end

end A051877.P10760820981938090723

namespace A051877

/-- `A277935(n+1)+A027800(n)` -/
def P10760820981938090723.Spec : Prop :=
  ∀ n, P10760820981938090723.a n = A051877 n

end A051877

/-! ## A051877.P16548753678612685701

`A051879(n)-A277935(n+1)`
-/

namespace A051877.P16548753678612685701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n - A277935 (n + 1)

end

end A051877.P16548753678612685701

namespace A051877

/-- `A051879(n)-A277935(n+1)` -/
def P16548753678612685701.Spec : Prop :=
  ∀ n, P16548753678612685701.a n = A051877 n

end A051877

/-! ## A051877.P1065035425905332160

`2*A051878(n)-A051879(n)`
-/

namespace A051877.P1065035425905332160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051878 n - A051879 n

end

end A051877.P1065035425905332160

namespace A051877

/-- `2*A051878(n)-A051879(n)` -/
def P1065035425905332160.Spec : Prop :=
  ∀ n, P1065035425905332160.a n = A051877 n

end A051877

/-! ## A051877.P10444203093849065118

`2*A051879(n)-A056118(n)`
-/

namespace A051877.P10444203093849065118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051879 n - A056118 n

end

end A051877.P10444203093849065118

namespace A051877

/-- `2*A051879(n)-A056118(n)` -/
def P10444203093849065118.Spec : Prop :=
  ∀ n, P10444203093849065118.a n = A051877 n

end A051877

/-! ## A051877.P2466462815670081976

`A271567(n)-A266732(n)/2`
-/

namespace A051877.P2466462815670081976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271567 n : ℚ) - (A266732 n : ℚ) / 2

end

end A051877.P2466462815670081976

namespace A051877

/-- `A271567(n)-A266732(n)/2` -/
def P2466462815670081976.Spec : Prop :=
  ∀ n, P2466462815670081976.a n = (A051877 n : ℚ)

end A051877

/-! ## A051877.P18259180209767971045

`A034263(n)+∑[A033487(n)/2]`
-/

namespace A051877.P18259180209767971045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033487 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034263 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051877.P18259180209767971045

namespace A051877

/-- `A034263(n)+∑[A033487(n)/2]` -/
def P18259180209767971045.Spec : Prop :=
  ∀ n, P18259180209767971045.a n = (A051877 n : ℚ)

end A051877

/-! ## A051877.P665259577717082031

`A167566(n+3)-A000292(n+1)`
-/

namespace A051877.P665259577717082031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167566 (n + 3) - A000292 (n + 1)

end

end A051877.P665259577717082031

namespace A051877

/-- `A167566(n+3)-A000292(n+1)` -/
def P665259577717082031.Spec : Prop :=
  ∀ n, P665259577717082031.a n = A051877 n

end A051877

/-! ## A051877.P7308726182642052341

`A005585(n+1)+A266732(n)/2`
-/

namespace A051877.P7308726182642052341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 1) : ℚ) + (A266732 n : ℚ) / 2

end

end A051877.P7308726182642052341

namespace A051877

/-- `A005585(n+1)+A266732(n)/2` -/
def P7308726182642052341.Spec : Prop :=
  ∀ n, P7308726182642052341.a n = (A051877 n : ℚ)

end A051877

/-! ## A051877.P11554472877473668556

`A056118(n)-2*A277935(n+1)`
-/

namespace A051877.P11554472877473668556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n - 2 * A277935 (n + 1)

end

end A051877.P11554472877473668556

namespace A051877

/-- `A056118(n)-2*A277935(n+1)` -/
def P11554472877473668556.Spec : Prop :=
  ∀ n, P11554472877473668556.a n = A051877 n

end A051877

/-! ## A051877.P11575008997592456083

`A051878(n)-A277935(n+1)/2`
-/

namespace A051877.P11575008997592456083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051878 n : ℚ) - (A277935 (n + 1) : ℚ) / 2

end

end A051877.P11575008997592456083

namespace A051877

/-- `A051878(n)-A277935(n+1)/2` -/
def P11575008997592456083.Spec : Prop :=
  ∀ n, P11575008997592456083.a n = (A051877 n : ℚ)

end A051877

/-! ## A051877.P16804527108311708160

`A027800(n)+A051880(n)-A051878(n)`
-/

namespace A051877.P16804527108311708160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A051880 n - A051878 n)

end

end A051877.P16804527108311708160

namespace A051877

/-- `A027800(n)+A051880(n)-A051878(n)` -/
def P16804527108311708160.Spec : Prop :=
  ∀ n, P16804527108311708160.a n = A051877 n

end A051877

/-! ## A051877.P6173147237404101884

`A027800(n)+A271567(n)-A051880(n)`
-/

namespace A051877.P6173147237404101884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A271567 n - A051880 n)

end

end A051877.P6173147237404101884

namespace A051877

/-- `A027800(n)+A271567(n)-A051880(n)` -/
def P6173147237404101884.Spec : Prop :=
  ∀ n, P6173147237404101884.a n = A051877 n

end A051877

/-! ## A051877.P4888804993380632044

`A027800(n)+A034263(n)-A005585(n+1)`
-/

namespace A051877.P4888804993380632044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A034263 n - A005585 (n + 1))

end

end A051877.P4888804993380632044

namespace A051877

/-- `A027800(n)+A034263(n)-A005585(n+1)` -/
def P4888804993380632044.Spec : Prop :=
  ∀ n, P4888804993380632044.a n = A051877 n

end A051877

/-!
# A051878: Partial sums of A051797.

The programs for A051878, the canonical program `A051878.P13469698408055676922` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051878 has offset 0).

The definition of A051878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051878.P13469698408055676922

`(8*n+5)*C(n+4, 4)/5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051878

/-- `(8*n+5)*C(n+4, 4)/5` -/
def P13469698408055676922.Spec : Prop :=
  ∀ n, P13469698408055676922.a n = (A051878 n : ℚ)

end A051878

/-! ## A051878.P3848727559817738217

`∑[∑[∑[∑[8*n+1]]]]`
-/

namespace A051878.P3848727559817738217
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051878.P3848727559817738217

namespace A051878

/-- `∑[∑[∑[∑[8*n+1]]]]` -/
def P3848727559817738217.Spec : Prop :=
  ∀ n, (P3848727559817738217.a n : ℤ) = A051878 n

end A051878

/-! ## A051878.P13552085622664246325

`a(n-1)+(2*n+1)*C(n+3, 3)` with `a(0)=1`
-/

namespace A051878.P13552085622664246325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * Nat.choose (n + 3) 3

end

end A051878.P13552085622664246325

namespace A051878

/-- `a(n-1)+(2*n+1)*C(n+3, 3)` -/
def P13552085622664246325.Spec : Prop :=
  ∀ n, (P13552085622664246325.a n : ℤ) = A051878 n

end A051878

/-! ## A051878.P6807167789578637461

`A051797(n)+a(n-1)` with `a(0)=1`
-/

namespace A051878.P6807167789578637461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051797 n + a (n - 1)

end

end A051878.P6807167789578637461

namespace A051878

/-- `A051797(n)+a(n-1)` -/
def P6807167789578637461.Spec : Prop :=
  ∀ n, P6807167789578637461.a n = A051878 n

end A051878

/-! ## A051878.P5964621847183416833

`∑[A006324(n+1)]+C(n+3, 4)`
-/

namespace A051878.P5964621847183416833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 3) 4 : ℤ)

end

end A051878.P5964621847183416833

namespace A051878

/-- `∑[A006324(n+1)]+C(n+3, 4)` -/
def P5964621847183416833.Spec : Prop :=
  ∀ n, P5964621847183416833.a n = A051878 n

end A051878

/-! ## A051878.P11086535356809214049

`a(n-1)+Δ[n²]*A000292(n+1)` with `a(0)=1`
-/

namespace A051878.P11086535356809214049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000292 (n + 1)

end

end A051878.P11086535356809214049

namespace A051878

/-- `a(n-1)+Δ[n²]*A000292(n+1)` -/
def P11086535356809214049.Spec : Prop :=
  ∀ n, P11086535356809214049.a n = A051878 n

end A051878

/-! ## A051878.P5273293092728665463

`∑[A051797(n)]%A017476(n)`
-/

namespace A051878.P5273293092728665463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017476 n)

end

end A051878.P5273293092728665463

namespace A051878

/-- `∑[A051797(n)]%A017476(n)` -/
def P5273293092728665463.Spec : Prop :=
  ∀ n, P5273293092728665463.a n = A051878 n

end A051878

/-! ## A051878.P12454814505758184452

`A277229(n)+A213549(n+1)`
-/

namespace A051878.P12454814505758184452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 n + A213549 (n + 1)

end

end A051878.P12454814505758184452

namespace A051878

/-- `A277229(n)+A213549(n+1)` -/
def P12454814505758184452.Spec : Prop :=
  ∀ n, P12454814505758184452.a n = A051878 n

end A051878

/-! ## A051878.P13911830099259581991

`A051880(n)-A277935(n+1)`
-/

namespace A051878.P13911830099259581991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n - A277935 (n + 1)

end

end A051878.P13911830099259581991

namespace A051878

/-- `A051880(n)-A277935(n+1)` -/
def P13911830099259581991.Spec : Prop :=
  ∀ n, P13911830099259581991.a n = A051878 n

end A051878

/-! ## A051878.P11240610674556190504

`(A056118(n)+A027800(n))/2`
-/

namespace A051878.P11240610674556190504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056118 n + A027800 n : ℚ) / 2

end

end A051878.P11240610674556190504

namespace A051878

/-- `(A056118(n)+A027800(n))/2` -/
def P11240610674556190504.Spec : Prop :=
  ∀ n, P11240610674556190504.a n = (A051878 n : ℚ)

end A051878

/-! ## A051878.P8491955662260388482

`2*A051879(n)-A051880(n)`
-/

namespace A051878.P8491955662260388482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051879 n - A051880 n

end

end A051878.P8491955662260388482

namespace A051878

/-- `2*A051879(n)-A051880(n)` -/
def P8491955662260388482.Spec : Prop :=
  ∀ n, P8491955662260388482.a n = A051878 n

end A051878

/-! ## A051878.P12900262028700747099

`(A051879(n)+A051877(n))/2`
-/

namespace A051878.P12900262028700747099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051879 n + A051877 n : ℚ) / 2

end

end A051878.P12900262028700747099

namespace A051878

/-- `(A051879(n)+A051877(n))/2` -/
def P12900262028700747099.Spec : Prop :=
  ∀ n, P12900262028700747099.a n = (A051878 n : ℚ)

end A051878

/-! ## A051878.P683032695151998788

`(A271567(n)+A034263(n))/2`
-/

namespace A051878.P683032695151998788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271567 n + A034263 n : ℚ) / 2

end

end A051878.P683032695151998788

namespace A051878

/-- `(A271567(n)+A034263(n))/2` -/
def P683032695151998788.Spec : Prop :=
  ∀ n, P683032695151998788.a n = (A051878 n : ℚ)

end A051878

/-! ## A051878.P6890192502207794103

`2*A051880(n)-A271567(n)`
-/

namespace A051878.P6890192502207794103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051880 n - A271567 n

end

end A051878.P6890192502207794103

namespace A051878

/-- `2*A051880(n)-A271567(n)` -/
def P6890192502207794103.Spec : Prop :=
  ∀ n, P6890192502207794103.a n = A051878 n

end A051878

/-! ## A051878.P15138413510006333703

`A085462(n+1)-A201106(n+1)`
-/

namespace A051878.P15138413510006333703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A201106 (n + 1)

end

end A051878.P15138413510006333703

namespace A051878

/-- `A085462(n+1)-A201106(n+1)` -/
def P15138413510006333703.Spec : Prop :=
  ∀ n, P15138413510006333703.a n = A051878 n

end A051878

/-! ## A051878.P16348437031931931701

`A034263(n)+2*A277935(n+1)`
-/

namespace A051878.P16348437031931931701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + 2 * A277935 (n + 1)

end

end A051878.P16348437031931931701

namespace A051878

/-- `A034263(n)+2*A277935(n+1)` -/
def P16348437031931931701.Spec : Prop :=
  ∀ n, P16348437031931931701.a n = A051878 n

end A051878

/-! ## A051878.P12563815579948285805

`2*A027800(n)-A005585(n+1)`
-/

namespace A051878.P12563815579948285805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027800 n - A005585 (n + 1)

end

end A051878.P12563815579948285805

namespace A051878

/-- `2*A027800(n)-A005585(n+1)` -/
def P12563815579948285805.Spec : Prop :=
  ∀ n, P12563815579948285805.a n = A051878 n

end A051878

/-! ## A051878.P10592996348193055656

`A051877(n)+A277935(n+1)/2`
-/

namespace A051878.P10592996348193055656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051877 n : ℚ) + (A277935 (n + 1) : ℚ) / 2

end

end A051878.P10592996348193055656

namespace A051878

/-- `A051877(n)+A277935(n+1)/2` -/
def P10592996348193055656.Spec : Prop :=
  ∀ n, P10592996348193055656.a n = (A051878 n : ℚ)

end A051878

/-! ## A051878.P8131213963573925535

`A271567(n)-2*A277935(n+1)`
-/

namespace A051878.P8131213963573925535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - 2 * A277935 (n + 1)

end

end A051878.P8131213963573925535

namespace A051878

/-- `A271567(n)-2*A277935(n+1)` -/
def P8131213963573925535.Spec : Prop :=
  ∀ n, P8131213963573925535.a n = A051878 n

end A051878

/-! ## A051878.P16543939466081193262

`A051879(n)-A277935(n+1)/2`
-/

namespace A051878.P16543939466081193262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051879 n : ℚ) - (A277935 (n + 1) : ℚ) / 2

end

end A051878.P16543939466081193262

namespace A051878

/-- `A051879(n)-A277935(n+1)/2` -/
def P16543939466081193262.Spec : Prop :=
  ∀ n, P16543939466081193262.a n = (A051878 n : ℚ)

end A051878

/-!
# A051879: Partial sums of A051798.

The programs for A051879, the canonical program `A051879.P9136658527219938201` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051879 has offset 0).

The definition of A051879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051879.P9136658527219938201

`C(n+4, 4)*(9*n+5)/5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051879

/-- `C(n+4, 4)*(9*n+5)/5` -/
def P9136658527219938201.Spec : Prop :=
  ∀ n, P9136658527219938201.a n = (A051879 n : ℚ)

end A051879

/-! ## A051879.P10767466119121987300

`(1+n)*(2+n)*(3+n)*(4+n)*(5+9*n)/120`
-/

namespace A051879.P10767466119121987300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) * (2 + n) * (3 + n) * (4 + n) * (5 + 9 * n) : ℚ) / 120

end

end A051879.P10767466119121987300

namespace A051879

/-- `(1+n)*(2+n)*(3+n)*(4+n)*(5+9*n)/120` -/
def P10767466119121987300.Spec : Prop :=
  ∀ n, P10767466119121987300.a n = (A051879 n : ℚ)

end A051879

/-! ## A051879.P15654445904497074915

`∑[∑[∑[∑[a(n-1)+9]]]]` with `a(0)=1`
-/

namespace A051879.P15654445904497074915
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051879.P15654445904497074915

namespace A051879

/-- `∑[∑[∑[∑[a(n-1)+9]]]]` -/
def P15654445904497074915.Spec : Prop :=
  ∀ n, (P15654445904497074915.a n : ℤ) = A051879 n

end A051879

/-! ## A051879.P2822293478356120829

`∑[∑[(2*n+1+n)*C(n+2, 2)]]`
-/

namespace A051879.P2822293478356120829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * Nat.choose (n + 2) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051879.P2822293478356120829

namespace A051879

/-- `∑[∑[(2*n+1+n)*C(n+2, 2)]]` -/
def P2822293478356120829.Spec : Prop :=
  ∀ n, (P2822293478356120829.a n : ℤ) = A051879 n

end A051879

/-! ## A051879.P14730070860043314996

`∑[A051798(n)]`
-/

namespace A051879.P14730070860043314996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051879.P14730070860043314996

namespace A051879

/-- `∑[A051798(n)]` -/
def P14730070860043314996.Spec : Prop :=
  ∀ n, P14730070860043314996.a n = A051879 n

end A051879

/-! ## A051879.P15837567303442446690

`∑[A088941(n)+1]`
-/

namespace A051879.P15837567303442446690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088941 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051879.P15837567303442446690

namespace A051879

/-- `∑[A088941(n)+1]` -/
def P15837567303442446690.Spec : Prop :=
  ∀ n, P15837567303442446690.a n = A051879 n

end A051879

/-! ## A051879.P16560263611794871700

`A174002(n)+A034263(n)`
-/

namespace A051879.P16560263611794871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A034263 n

end

end A051879.P16560263611794871700

namespace A051879

/-- `A174002(n)+A034263(n)` -/
def P16560263611794871700.Spec : Prop :=
  ∀ n, P16560263611794871700.a n = A051879 n

end A051879

/-! ## A051879.P7101583416631868969

`A271662(n)+A033488(n)`
-/

namespace A051879.P7101583416631868969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n + A033488 n

end

end A051879.P7101583416631868969

namespace A051879

/-- `A271662(n)+A033488(n)` -/
def P7101583416631868969.Spec : Prop :=
  ∀ n, P7101583416631868969.a n = A051879 n

end A051879

/-! ## A051879.P10912911096931392217

`A277935(n+1)+A051877(n)`
-/

namespace A051879.P10912911096931392217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A051877 n

end

end A051879.P10912911096931392217

namespace A051879

/-- `A277935(n+1)+A051877(n)` -/
def P10912911096931392217.Spec : Prop :=
  ∀ n, P10912911096931392217.a n = A051879 n

end A051879

/-! ## A051879.P7614868631953687512

`A056118(n)-A277935(n+1)`
-/

namespace A051879.P7614868631953687512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n - A277935 (n + 1)

end

end A051879.P7614868631953687512

namespace A051879

/-- `A056118(n)-A277935(n+1)` -/
def P7614868631953687512.Spec : Prop :=
  ∀ n, P7614868631953687512.a n = A051879 n

end A051879

/-! ## A051879.P15933699337437013488

`A027777(n+2)-A096943(n)`
-/

namespace A051879.P15933699337437013488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) - A096943 n

end

end A051879.P15933699337437013488

namespace A051879

/-- `A027777(n+2)-A096943(n)` -/
def P15933699337437013488.Spec : Prop :=
  ∀ n, P15933699337437013488.a n = A051879 n

end A051879

/-! ## A051879.P14951398858886572278

`2*A051877(n)-A027800(n)`
-/

namespace A051879.P14951398858886572278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051877 n - A027800 n

end

end A051879.P14951398858886572278

namespace A051879

/-- `2*A051877(n)-A027800(n)` -/
def P14951398858886572278.Spec : Prop :=
  ∀ n, P14951398858886572278.a n = A051879 n

end A051879

/-! ## A051879.P5813220984750162760

`2*A051878(n)-A051877(n)`
-/

namespace A051879.P5813220984750162760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051878 n - A051877 n

end

end A051879.P5813220984750162760

namespace A051879

/-- `2*A051878(n)-A051877(n)` -/
def P5813220984750162760.Spec : Prop :=
  ∀ n, P5813220984750162760.a n = A051879 n

end A051879

/-! ## A051879.P5108135334397271461

`2*A051880(n)-A056118(n)`
-/

namespace A051879.P5108135334397271461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051880 n - A056118 n

end

end A051879.P5108135334397271461

namespace A051879

/-- `2*A051880(n)-A056118(n)` -/
def P5108135334397271461.Spec : Prop :=
  ∀ n, P5108135334397271461.a n = A051879 n

end A051879

/-! ## A051879.P17809501111077130950

`∑[2*A051740(n)]-A027800(n)`
-/

namespace A051879.P17809501111077130950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027800 n

end

end A051879.P17809501111077130950

namespace A051879

/-- `∑[2*A051740(n)]-A027800(n)` -/
def P17809501111077130950.Spec : Prop :=
  ∀ n, P17809501111077130950.a n = A051879 n

end A051879

/-! ## A051879.P7426309888108891741

`A027789(n+1)-A000574(n+3)`
-/

namespace A051879.P7426309888108891741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027789 (n + 1) - A000574 (n + 3)

end

end A051879.P7426309888108891741

namespace A051879

/-- `A027789(n+1)-A000574(n+3)` -/
def P7426309888108891741.Spec : Prop :=
  ∀ n, P7426309888108891741.a n = A051879 n

end A051879

/-! ## A051879.P11881729951368593749

`A027800(n)+2*A277935(n+1)`
-/

namespace A051879.P11881729951368593749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + 2 * A277935 (n + 1)

end

end A051879.P11881729951368593749

namespace A051879

/-- `A027800(n)+2*A277935(n+1)` -/
def P11881729951368593749.Spec : Prop :=
  ∀ n, P11881729951368593749.a n = A051879 n

end A051879

/-! ## A051879.P4815727392366779755

`A034263(n)+A051880(n)-A027800(n)`
-/

namespace A051879.P4815727392366779755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A051880 n - A027800 n)

end

end A051879.P4815727392366779755

namespace A051879

/-- `A034263(n)+A051880(n)-A027800(n)` -/
def P4815727392366779755.Spec : Prop :=
  ∀ n, P4815727392366779755.a n = A051879 n

end A051879

/-! ## A051879.P9800536553594083503

`A027800(n)+A271567(n)-A051878(n)`
-/

namespace A051879.P9800536553594083503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (A271567 n - A051878 n)

end

end A051879.P9800536553594083503

namespace A051879

/-- `A027800(n)+A271567(n)-A051878(n)` -/
def P9800536553594083503.Spec : Prop :=
  ∀ n, P9800536553594083503.a n = A051879 n

end A051879

/-! ## A051879.P15439274428612369390

`A005585(n+1)+A056118(n)-A034263(n)`
-/

namespace A051879.P15439274428612369390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A056118 n - A034263 n)

end

end A051879.P15439274428612369390

namespace A051879

/-- `A005585(n+1)+A056118(n)-A034263(n)` -/
def P15439274428612369390.Spec : Prop :=
  ∀ n, P15439274428612369390.a n = A051879 n

end A051879

/-!
# A051880: a(n) = binomial(n+4,4)*(2*n+1).

The programs for A051880, the canonical program `A051880.P18339695450162809644` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051880 has offset 0).

The definition of A051880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*(2*n+1)` (program `A051880.P18339695450162809644`, by `A051880.P18339695450162809644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051880.P18339695450162809644

`C(n+4, 4)*(2*n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051880

/-- `C(n+4, 4)*(2*n+1)` -/
def P18339695450162809644.Spec : Prop :=
  ∀ n, (P18339695450162809644.a n : ℤ) = A051880 n

theorem P18339695450162809644.correct : P18339695450162809644.Spec := by
  intro n
  simp only [A051880]

end A051880

/-! ## A051880.P3822793787081852010

`∑[∑[∑[∑[10*n+1]]]]`
-/

namespace A051880.P3822793787081852010
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051880.P3822793787081852010

namespace A051880

/-- `∑[∑[∑[∑[10*n+1]]]]` -/
def P3822793787081852010.Spec : Prop :=
  ∀ n, (P3822793787081852010.a n : ℤ) = A051880 n

end A051880

/-! ## A051880.P4840115238646451778

`∑[∑[n+1]]/(n+1)^(-2)-a(n-1)` with `a(0)=1`
-/

namespace A051880.P4840115238646451778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ) - a (n - 1)

end

end A051880.P4840115238646451778

namespace A051880

/-- `∑[∑[n+1]]/(n+1)^(-2)-a(n-1)` -/
def P4840115238646451778.Spec : Prop :=
  ∀ n, P4840115238646451778.a n = (A051880 n : ℚ)

end A051880

/-! ## A051880.P684174264554792994

`2*∑[A051799(n)/2]`
-/

namespace A051880.P684174264554792994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051799 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051880.P684174264554792994

namespace A051880

/-- `2*∑[A051799(n)/2]` -/
def P684174264554792994.Spec : Prop :=
  ∀ n, P684174264554792994.a n = (A051880 n : ℚ)

end A051880

/-! ## A051880.P3878135582884764418

`(2*n+1)*sqrt(A288876(n))`
-/

namespace A051880.P3878135582884764418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) * Real.sqrt (A288876 n : ℝ)

end

end A051880.P3878135582884764418

namespace A051880

/-- `(2*n+1)*sqrt(A288876(n))` -/
def P3878135582884764418.Spec : Prop :=
  ∀ n, P3878135582884764418.a n = (A051880 n : ℝ)

end A051880

/-! ## A051880.P8495247241063365300

`A174002(n)+A027800(n)`
-/

namespace A051880.P8495247241063365300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A027800 n

end

end A051880.P8495247241063365300

namespace A051880

/-- `A174002(n)+A027800(n)` -/
def P8495247241063365300.Spec : Prop :=
  ∀ n, P8495247241063365300.a n = A051880 n

theorem P8495247241063365300.correct : P8495247241063365300.Spec := by
  intro n
  simp only [A051880, Nat.add_sub_cancel, A051880.P8495247241063365300.a, A051880.P18339695450162809644.a, A027800, A027800.P6346572312768476247.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051880

/-! ## A051880.P9108584376271360883

`A225007(n)-A051843(n)`
-/

namespace A051880.P9108584376271360883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n - A051843 n

end

end A051880.P9108584376271360883

namespace A051880

/-- `A225007(n)-A051843(n)` -/
def P9108584376271360883.Spec : Prop :=
  ∀ n, P9108584376271360883.a n = A051880 n

end A051880

/-! ## A051880.P6871882863184049703

`A034263(n)+∑[A033487(n)]`
-/

namespace A051880.P6871882863184049703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051880.P6871882863184049703

namespace A051880

/-- `A034263(n)+∑[A033487(n)]` -/
def P6871882863184049703.Spec : Prop :=
  ∀ n, P6871882863184049703.a n = A051880 n

end A051880

/-! ## A051880.P12300538485817085121

`A095166(n+1)+A033487(n)`
-/

namespace A051880.P12300538485817085121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1) + A033487 n

end

end A051880.P12300538485817085121

namespace A051880

/-- `A095166(n+1)+A033487(n)` -/
def P12300538485817085121.Spec : Prop :=
  ∀ n, P12300538485817085121.a n = A051880 n

end A051880

/-! ## A051880.P10172451491061963793

`A277935(n+1)+A051878(n)`
-/

namespace A051880.P10172451491061963793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A051878 n

end

end A051880.P10172451491061963793

namespace A051880

/-- `A277935(n+1)+A051878(n)` -/
def P10172451491061963793.Spec : Prop :=
  ∀ n, P10172451491061963793.a n = A051880 n

end A051880

/-! ## A051880.P3162069838098086059

`A271567(n)-A277935(n+1)`
-/

namespace A051880.P3162069838098086059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - A277935 (n + 1)

end

end A051880.P3162069838098086059

namespace A051880

/-- `A271567(n)-A277935(n+1)` -/
def P3162069838098086059.Spec : Prop :=
  ∀ n, P3162069838098086059.a n = A051880 n

end A051880

/-! ## A051880.P10239072816224417248

`A027777(n+2)-A154286(n)`
-/

namespace A051880.P10239072816224417248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) - A154286 n

end

end A051880.P10239072816224417248

namespace A051880

/-- `A027777(n+2)-A154286(n)` -/
def P10239072816224417248.Spec : Prop :=
  ∀ n, P10239072816224417248.a n = A051880 n

theorem P10239072816224417248.correct : P10239072816224417248.Spec := by
  intro n
  simp only [A051880, Nat.add_sub_cancel, A051880.P10239072816224417248.a, A051880.P18339695450162809644.a, A027777, A027777.P16503156280263900957.a, A154286, A154286.P11538623933304528328.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051880

/-! ## A051880.P8723711677185596124

`2*A051877(n)-A034263(n)`
-/

namespace A051880.P8723711677185596124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051877 n - A034263 n

end

end A051880.P8723711677185596124

namespace A051880

/-- `2*A051877(n)-A034263(n)` -/
def P8723711677185596124.Spec : Prop :=
  ∀ n, P8723711677185596124.a n = A051880 n

end A051880

/-! ## A051880.P1338612211846788210

`2*A051879(n)-A051878(n)`
-/

namespace A051880.P1338612211846788210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051879 n - A051878 n

end

end A051880.P1338612211846788210

namespace A051880

/-- `2*A051879(n)-A051878(n)` -/
def P1338612211846788210.Spec : Prop :=
  ∀ n, P1338612211846788210.a n = A051880 n

end A051880

/-! ## A051880.P4108541747581346144

`(A056118(n)+A051879(n))/2`
-/

namespace A051880.P4108541747581346144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056118 n + A051879 n : ℚ) / 2

end

end A051880.P4108541747581346144

namespace A051880

/-- `(A056118(n)+A051879(n))/2` -/
def P4108541747581346144.Spec : Prop :=
  ∀ n, P4108541747581346144.a n = (A051880 n : ℚ)

end A051880

/-! ## A051880.P1196388201328476507

`(A271567(n)+A051878(n))/2`
-/

namespace A051880.P1196388201328476507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271567 n + A051878 n : ℚ) / 2

end

end A051880.P1196388201328476507

namespace A051880

/-- `(A271567(n)+A051878(n))/2` -/
def P1196388201328476507.Spec : Prop :=
  ∀ n, P1196388201328476507.a n = (A051880 n : ℚ)

end A051880

/-! ## A051880.P10150119552845771111

`2*A056118(n)-A271567(n)`
-/

namespace A051880.P10150119552845771111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056118 n - A271567 n

end

end A051880.P10150119552845771111

namespace A051880

/-- `2*A056118(n)-A271567(n)` -/
def P10150119552845771111.Spec : Prop :=
  ∀ n, P10150119552845771111.a n = A051880 n

end A051880

/-! ## A051880.P16002521266102152936

`A266732(n)+∑[A000292(n+1)]`
-/

namespace A051880.P16002521266102152936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266732 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051880.P16002521266102152936

namespace A051880

/-- `A266732(n)+∑[A000292(n+1)]` -/
def P16002521266102152936.Spec : Prop :=
  ∀ n, P16002521266102152936.a n = A051880 n

end A051880

/-! ## A051880.P2528307277357335679

`∑[A000292(n+1)]*A005408(n)`
-/

namespace A051880.P2528307277357335679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005408 n

end

end A051880.P2528307277357335679

namespace A051880

/-- `∑[A000292(n+1)]*A005408(n)` -/
def P2528307277357335679.Spec : Prop :=
  ∀ n, P2528307277357335679.a n = A051880 n

end A051880

/-! ## A051880.P11459503616607009957

`A034263(n)+A056118(n)-A027800(n)`
-/

namespace A051880.P11459503616607009957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A056118 n - A027800 n)

end

end A051880.P11459503616607009957

namespace A051880

/-- `A034263(n)+A056118(n)-A027800(n)` -/
def P11459503616607009957.Spec : Prop :=
  ∀ n, P11459503616607009957.a n = A051880 n

theorem P11459503616607009957.correct : P11459503616607009957.Spec := by
  intro n
  simp only [A051880, Nat.add_sub_cancel, A051880.P11459503616607009957.a, A051880.P18339695450162809644.a, A027800, A027800.P6346572312768476247.a, A034263, A034263.P5868129197671622568.a, A056118, A056118.P6591570600101730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051880

/-!
# A051881: Number of subgroups of order n in special orthogonal group SO(3).

The programs for A051881, there is no canonical definition to state claims against.
-/

/-! ## A051881.P10997150205574956127

`ceil(π^(A128114(n+1)/(n+1)))`
-/

namespace A051881.P10997150205574956127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((A128114 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌉

end

end A051881.P10997150205574956127

/-!
# A051882: Call m strict-sense Egyptian if we can partition m = x_1+x_2+...+x_k into distinct positive integers x_i such that Sum_{i=1..k} 1/x_i = 1; sequence gives all numbers that are not strict-sense Egyptian.

The programs for A051882, there is no canonical definition to state claims against.
-/

/-! ## A051882.P68554343905398785

`eq[0, A051907(n+1)]+1`
-/

namespace A051882.P68554343905398785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051882.P68554343905398785

/-! ## A051882.P9023207347785475419

`record[gcd(n+2, A051907(n+2))]`
-/

namespace A051882.P9023207347785475419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A051907 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051882.P9023207347785475419

/-! ## A051882.P1870023095111803066

`eq[0, A051907(A028310(n))]`
-/

namespace A051882.P1870023095111803066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051882.P1870023095111803066

/-! ## A051882.P7985500460630742828

`eq[1, A001222(a(A051907(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A051882.P7985500460630742828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A001222 (f2 (A051907 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051882.P7985500460630742828

/-! ## A051882.P17213716721099623613

`comp[A052428(A077028(n))-2]+2`
-/

namespace A051882.P17213716721099623613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052428 (A077028 n).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A051882.P17213716721099623613

/-!
# A051884: Smallest number larger than the previous term which is not a prime but is relatively prime to the previous term.

The programs for A051884, there is no canonical definition to state claims against.
-/

/-! ## A051884.P5453705701650301764

`A113484(a(n-1))` with `a(0)=1`
-/

namespace A051884.P5453705701650301764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113484 (a (n - 1)).toNat

end

end A051884.P5453705701650301764

/-! ## A051884.P15057472648776659080

`A113484(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A051884.P15057472648776659080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113484 |a (A023443 n).toNat|.toNat

end

end A051884.P15057472648776659080

/-! ## A051884.P9702263794724755721

`A113484(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051884.P9702263794724755721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113484 (a (A023443 n).toNat).toNat

end

end A051884.P9702263794724755721

/-! ## A051884.P4613130546156555290

`A113484(ceil(a(A023443(n))))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A051884.P4613130546156555290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113484 (a (A023443 n).toNat).toNat

end

end A051884.P4613130546156555290

/-! ## A051884.P14366720741659414526

`record[A113484(a(A276331(n)))]` with `a(0)=1`
-/

namespace A051884.P14366720741659414526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A113484 (f1 (A276331 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051884.P14366720741659414526

/-!
# A051885: Smallest number whose sum of digits is n.

The programs for A051885, the canonical program `A051885.P11585152797781986562` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051885 has offset 0).

The definition of A051885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051885.P17930717732475100314

`(n%9+1)*10^floor(n/9)-1`
-/

namespace A051885.P17930717732475100314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 9 + 1 : ℕ) : ℚ) * (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ) - 1

end

end A051885.P17930717732475100314

namespace A051885

/-- `(n%9+1)*10^floor(n/9)-1` -/
def P17930717732475100314.Spec : Prop :=
  ∀ n, P17930717732475100314.a n = (A051885 n : ℚ)

end A051885

/-! ## A051885.P15978849551550182438

`a(n-1)+10^floor((n-1)/9)` with `a(0)=0`
-/

namespace A051885.P15978849551550182438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ)

end

end A051885.P15978849551550182438

namespace A051885

/-- `a(n-1)+10^floor((n-1)/9)` -/
def P15978849551550182438.Spec : Prop :=
  ∀ n, P15978849551550182438.a n = (A051885 n : ℚ)

end A051885

/-! ## A051885.P11585152797781986562

`A037124(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051885

/-- `A037124(n+1)-1` -/
def P11585152797781986562.Spec : Prop :=
  ∀ n, P11585152797781986562.a n = A051885 n

theorem P11585152797781986562.correct : P11585152797781986562.Spec := by
  intro n
  simp only [A051885]

end A051885

/-! ## A051885.P9874255945861001819

`∑[A010785(n-dr(n))]+n`
-/

namespace A051885.P9874255945861001819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n - SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A051885.P9874255945861001819

namespace A051885

/-- `∑[A010785(n-dr(n))]+n` -/
def P9874255945861001819.Spec : Prop :=
  ∀ n, P9874255945861001819.a n = A051885 n

end A051885

/-! ## A051885.P7229904367119240840

`A057428(n+1)+A037124(n+1)`
-/

namespace A051885.P7229904367119240840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A037124 (n + 1)

end

end A051885.P7229904367119240840

namespace A051885

/-- `A057428(n+1)+A037124(n+1)` -/
def P7229904367119240840.Spec : Prop :=
  ∀ n, P7229904367119240840.a n = A051885 n

theorem P7229904367119240840.correct : P7229904367119240840.Spec := by
  intro n
  simp only [A051885, Nat.add_sub_cancel, A051885.P7229904367119240840.a, A051885.P11585152797781986562.a, A037124, A037124.P10531659379818548989.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051885

/-! ## A051885.P6161998905310579992

`∩[A085133(n+1), A193460(n+1)]-1`
-/

namespace A051885.P6161998905310579992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A051885.P6161998905310579992

namespace A051885

/-- `∩[A085133(n+1), A193460(n+1)]-1` -/
def P6161998905310579992.Spec : Prop :=
  ∀ n, P6161998905310579992.a n = A051885 n

end A051885

/-! ## A051885.P9260057236824244832

`A230861(A141310(2*n+1))+A037124(n+1)`
-/

namespace A051885.P9260057236824244832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230861 (A141310 (2 * n + 1)).toNat + A037124 (n + 1)

end

end A051885.P9260057236824244832

namespace A051885

/-- `A230861(A141310(2*n+1))+A037124(n+1)` -/
def P9260057236824244832.Spec : Prop :=
  ∀ n, P9260057236824244832.a n = A051885 n

end A051885

/-! ## A051885.P2923948032423835626

`∪[A131668(n), A133296(n)]`
-/

namespace A051885.P2923948032423835626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133296 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051885.P2923948032423835626

namespace A051885

/-- `∪[A131668(n), A133296(n)]` -/
def P2923948032423835626.Spec : Prop :=
  ∀ n, (P2923948032423835626.a n : ℤ) = A051885 n

end A051885

/-! ## A051885.P13753659142990543008

`Δ[∑[A037124(A028310(n))]-n]`
-/

namespace A051885.P13753659142990543008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051885.P13753659142990543008

namespace A051885

/-- `Δ[∑[A037124(A028310(n))]-n]` -/
def P13753659142990543008.Spec : Prop :=
  ∀ n, P13753659142990543008.a n = A051885 n

end A051885

/-! ## A051885.P7193840949031861580

`∩[A002473(n+1), A125289(n+1)]-1`
-/

namespace A051885.P7193840949031861580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A051885.P7193840949031861580

namespace A051885

/-- `∩[A002473(n+1), A125289(n+1)]-1` -/
def P7193840949031861580.Spec : Prop :=
  ∀ n, P7193840949031861580.a n = A051885 n

end A051885

/-!
# A051886: a(n) is the minimal prime p such that 2^n * p + 1 is prime.

The programs for A051886, there is no canonical definition to state claims against.
-/

/-! ## A051886.P18359687394213680440

`(A051900(n)-1)/2^n`
-/

namespace A051886.P18359687394213680440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051900 n - 1 : ℚ) / (2 ^ n : ℚ)

end

end A051886.P18359687394213680440

/-! ## A051886.P6830535274785482532

`A089367(A043529(n)^n)`
-/

namespace A051886.P6830535274785482532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (A043529 n ^ n).toNat

end

end A051886.P6830535274785482532

/-! ## A051886.P15726834419753080868

`A089367(A194294(n+1)^n)`
-/

namespace A051886.P15726834419753080868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (A194294 (n + 1) ^ n).toNat

end

end A051886.P15726834419753080868

/-! ## A051886.P2617046739757906422

`A089367(A194302(n+1)^n)`
-/

namespace A051886.P2617046739757906422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (A194302 (n + 1) ^ n).toNat

end

end A051886.P2617046739757906422

/-! ## A051886.P15001015534971354828

`A051686(A043529(n)^(n-1))`
-/

namespace A051886.P15001015534971354828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (SequenceMachineLib.roundAway ((A043529 n : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A051886.P15001015534971354828

/-!
# A051888: a(n) is the smallest prime p such that p*n! + 1 is prime.

The programs for A051888, there is no canonical definition to state claims against.
-/

/-! ## A051888.P7308945061264785191

`(A051901(n)-1)/n!`
-/

namespace A051888.P7308945061264785191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051901 n - 1 : ℚ) / (Nat.factorial n : ℚ)

end

end A051888.P7308945061264785191

/-!
# A051889: a(n) = min{m: Sum_{j=0..m} binomial(n,j)*(1/6)^j*(1-1/6)^(n-j) >= 0.95}.

The programs for A051889, there is no canonical definition to state claims against.
-/

/-! ## A051889.P14251027542851791847

`round(A005408(n)/log2(A187797(n+1)))`
-/

namespace A051889.P14251027542851791847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005408 n : ℝ) / Real.logb 2 (A187797 (n + 1) : ℝ))

end

end A051889.P14251027542851791847

/-! ## A051889.P14787376499473674616

`round(A250090(2*n)/log2(A187797(n+1)))`
-/

namespace A051889.P14787376499473674616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250090 (2 * n) : ℝ) / Real.logb 2 (A187797 (n + 1) : ℝ))

end

end A051889.P14787376499473674616

/-! ## A051889.P1282636146918483962

`A108611(A327706(2*(n+1))+n)`
-/

namespace A051889.P1282636146918483962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A327706 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A051889.P1282636146918483962

/-! ## A051889.P4840953313271575338

`A002266(lt[A184400(n+1), A220204(n+1)])`
-/

namespace A051889.P4840953313271575338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051889.P4840953313271575338

/-!
# A051890: a(n) = 2*(n^2 - n + 1).

The programs for A051890, the canonical program `A051890.P17202989188408252135` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051890 has offset 0).

The definition of A051890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n²-n+1)` (program `A051890.P17202989188408252135`, by `A051890.P17202989188408252135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051890.P12339158727209940222

`4*C(n, 2)+2`
-/

namespace A051890.P12339158727209940222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 2

end

end A051890.P12339158727209940222

namespace A051890

/-- `4*C(n, 2)+2` -/
def P12339158727209940222.Spec : Prop :=
  ∀ n, (P12339158727209940222.a n : ℤ) = A051890 n

theorem P12339158727209940222.correct : P12339158727209940222.Spec := by
  intro n
  simp only [A051890, Nat.add_sub_cancel, A051890.P12339158727209940222.a, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051890

/-! ## A051890.P17202989188408252135

`2*(n²-n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051890

/-- `2*(n²-n+1)` -/
def P17202989188408252135.Spec : Prop :=
  ∀ n, P17202989188408252135.a n = A051890 n

theorem P17202989188408252135.correct : P17202989188408252135.Spec := by
  intro n
  simp only [A051890]

end A051890

/-! ## A051890.P8311122497204202702

`4*n+a(n-1)-4` with `a(0)=2`
-/

namespace A051890.P8311122497204202702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * n : ℤ) + a (n - 1) - 4

end

end A051890.P8311122497204202702

namespace A051890

/-- `4*n+a(n-1)-4` -/
def P8311122497204202702.Spec : Prop :=
  ∀ n, P8311122497204202702.a n = A051890 n

theorem P8311122497204202702.correct : P8311122497204202702.Spec := by
  intro n
  induction n with
  | zero => simp [A051890, A051890.P8311122497204202702.a, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051890, Nat.add_sub_cancel, A051890.P8311122497204202702.a, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051890

/-! ## A051890.P8784246000831372987

`or(2, 4*C(n, 2))`
-/

namespace A051890.P8784246000831372987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * Nat.choose n 2)

end

end A051890.P8784246000831372987

namespace A051890

/-- `or(2, 4*C(n, 2))` -/
def P8784246000831372987.Spec : Prop :=
  ∀ n, (P8784246000831372987.a n : ℤ) = A051890 n

end A051890

/-! ## A051890.P7965850339372585780

`xor(2, 4*C(n, 2))`
-/

namespace A051890.P7965850339372585780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * Nat.choose n 2)

end

end A051890.P7965850339372585780

namespace A051890

/-- `xor(2, 4*C(n, 2))` -/
def P7965850339372585780.Spec : Prop :=
  ∀ n, (P7965850339372585780.a n : ℤ) = A051890 n

end A051890

/-! ## A051890.P14974574875416850913

`∑[xor(2, record[lcm(2, n)])]`
-/

namespace A051890.P14974574875416850913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051890.P14974574875416850913

namespace A051890

/-- `∑[xor(2, record[lcm(2, n)])]` -/
def P14974574875416850913.Spec : Prop :=
  ∀ n, (P14974574875416850913.a n : ℤ) = A051890 n

end A051890

/-! ## A051890.P16214066254067080940

`or(2, 2*(n²-n))`
-/

namespace A051890.P16214066254067080940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (2 * ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A051890.P16214066254067080940

namespace A051890

/-- `or(2, 2*(n²-n))` -/
def P16214066254067080940.Spec : Prop :=
  ∀ n, P16214066254067080940.a n = A051890 n

end A051890

/-! ## A051890.P5288376215034379033

`xor(2, 2*(n²-n))`
-/

namespace A051890.P5288376215034379033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (2 * ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A051890.P5288376215034379033

namespace A051890

/-- `xor(2, 2*(n²-n))` -/
def P5288376215034379033.Spec : Prop :=
  ∀ n, P5288376215034379033.a n = A051890 n

end A051890

/-! ## A051890.P7001914242338993072

`floor(2/Δ[atan(n-1)])`
-/

namespace A051890.P7001914242338993072
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (f1 (n + 1) - f1 n)⌋

end

end A051890.P7001914242338993072

namespace A051890

/-- `floor(2/Δ[atan(n-1)])` -/
def P7001914242338993072.Spec : Prop :=
  ∀ n, P7001914242338993072.a n = A051890 n

end A051890

/-! ## A051890.P6161913871640294112

`∑[a(n-1)+4]` with `a(0)=2, a(1)=0`
-/

namespace A051890.P6161913871640294112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051890.P6161913871640294112

namespace A051890

/-- `∑[a(n-1)+4]` -/
def P6161913871640294112.Spec : Prop :=
  ∀ n, (P6161913871640294112.a n : ℤ) = A051890 n

end A051890

/-! ## A051890.P8898828061597411432

`2-(n-C(2*n, 2))`
-/

namespace A051890.P8898828061597411432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n : ℤ) - (Nat.choose (2 * n) 2 : ℤ))

end

end A051890.P8898828061597411432

namespace A051890

/-- `2-(n-C(2*n, 2))` -/
def P8898828061597411432.Spec : Prop :=
  ∀ n, P8898828061597411432.a n = A051890 n

theorem P8898828061597411432.correct : P8898828061597411432.Spec := by
  intro n
  simp only [A051890, Nat.add_sub_cancel, A051890.P8898828061597411432.a, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051890

/-! ## A051890.P16553114897030513

`∑[ogf((2-4x+6x^2)/(1-2x+x^2))]`
-/

namespace A051890.P16553114897030513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051890.P16553114897030513

namespace A051890

/-- `∑[ogf((2-4x+6x^2)/(1-2x+x^2))]` -/
def P16553114897030513.Spec : Prop :=
  ∀ n, P16553114897030513.a n = A051890 n

end A051890

/-! ## A051890.P11439751857461852836

`ogf((2-4x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051890.P11439751857461852836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 6] [1, -3, 3, -1] n

end

end A051890.P11439751857461852836

namespace A051890

/-- `ogf((2-4x+6x^2)/(1-3x+3x^2-x^3))` -/
def P11439751857461852836.Spec : Prop :=
  ∀ n, P11439751857461852836.a n = A051890 n

end A051890

/-! ## A051890.P14250731750155715302

`lcm(4, n-(n²+1))/2`
-/

namespace A051890.P14250731750155715302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 ((n : ℤ) - (n ^ 2 + 1 : ℤ)) : ℚ) / 2

end

end A051890.P14250731750155715302

namespace A051890

/-- `lcm(4, n-(n²+1))/2` -/
def P14250731750155715302.Spec : Prop :=
  ∀ n, P14250731750155715302.a n = (A051890 n : ℚ)

end A051890

/-! ## A051890.P15439838300458921486

`abs(or(2, 2*n*(n-1)))`
-/

namespace A051890.P15439838300458921486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (2 * ((n : ℤ) * ((n : ℤ) - 1)))|

end

end A051890.P15439838300458921486

namespace A051890

/-- `abs(or(2, 2*n*(n-1)))` -/
def P15439838300458921486.Spec : Prop :=
  ∀ n, P15439838300458921486.a n = A051890 n

end A051890

/-! ## A051890.P12383118042091340405

`abs(xor(2, 2*n*(n-1)))`
-/

namespace A051890.P12383118042091340405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (2 * ((n : ℤ) * ((n : ℤ) - 1)))|

end

end A051890.P12383118042091340405

namespace A051890

/-- `abs(xor(2, 2*n*(n-1)))` -/
def P12383118042091340405.Spec : Prop :=
  ∀ n, P12383118042091340405.a n = A051890 n

end A051890

/-! ## A051890.P14236368456907124559

`xor(5, (n-1+n)²)/2`
-/

namespace A051890.P14236368456907124559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 5 (((n : ℤ) - 1 + (n : ℤ)) ^ 2) : ℚ) / 2

end

end A051890.P14236368456907124559

namespace A051890

/-- `xor(5, (n-1+n)²)/2` -/
def P14236368456907124559.Spec : Prop :=
  ∀ n, P14236368456907124559.a n = (A051890 n : ℚ)

end A051890

/-! ## A051890.P3861247509941231043

`4*n-(4-a(n-1))` with `a(0)=2`
-/

namespace A051890.P3861247509941231043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * n : ℤ) - (4 - a (n - 1))

end

end A051890.P3861247509941231043

namespace A051890

/-- `4*n-(4-a(n-1))` -/
def P3861247509941231043.Spec : Prop :=
  ∀ n, P3861247509941231043.a n = A051890 n

theorem P3861247509941231043.correct : P3861247509941231043.Spec := by
  intro n
  induction n with
  | zero => simp [A051890, A051890.P3861247509941231043.a, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051890, Nat.add_sub_cancel, A051890.P3861247509941231043.a, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051890

/-! ## A051890.P15398212159658643367

`-xor((n-1)*2*n, -2)`
-/

namespace A051890.P15398212159658643367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((n : ℤ) - 1) * (2 * n : ℤ)) (-2)

end

end A051890.P15398212159658643367

namespace A051890

/-- `-xor((n-1)*2*n, -2)` -/
def P15398212159658643367.Spec : Prop :=
  ∀ n, P15398212159658643367.a n = A051890 n

end A051890

/-! ## A051890.P8858394630103180656

`and((n-1)*2*n+2, -2)`
-/

namespace A051890.P8858394630103180656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - 1) * (2 * n : ℤ) + 2) (-2)

end

end A051890.P8858394630103180656

namespace A051890

/-- `and((n-1)*2*n+2, -2)` -/
def P8858394630103180656.Spec : Prop :=
  ∀ n, P8858394630103180656.a n = A051890 n

end A051890

/-!
# A051891: Values of m, the main key or generating number for Pythagorean triangles in which S (the odd short leg) and U (the hypotenuse) are twin primes.

The programs for A051891, there is no canonical definition to state claims against.
-/

/-! ## A051891.P16530897225587701571

`(A051642(n)+1)/2`
-/

namespace A051891.P16530897225587701571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051642 n + 1 : ℚ) / 2

end

end A051891.P16530897225587701571

/-! ## A051891.P6899237415020554312

`A051892(n+1)+1`
-/

namespace A051891.P6899237415020554312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051892 (n + 1) + 1

end

end A051891.P6899237415020554312

/-! ## A051891.P10099738978557572769

`round(sqrt(A051859(n+1)/2))`
-/

namespace A051891.P10099738978557572769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A051859 (n + 1) : ℚ) / 2 : ℝ))

end

end A051891.P10099738978557572769

/-! ## A051891.P10260297969242193697

`ceil(A051642(n)/2)`
-/

namespace A051891.P10260297969242193697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051642 n : ℚ) / 2⌉

end

end A051891.P10260297969242193697

/-! ## A051891.P16500158824119308477

`A051859(n+1)%A051642(n)`
-/

namespace A051891.P16500158824119308477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051859 (n + 1)) (A051642 n)

end

end A051891.P16500158824119308477

/-! ## A051891.P10135823238669956455

`A000027(round(A051642(n)/2))`
-/

namespace A051891.P10135823238669956455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A051642 n : ℚ) / 2)).toNat

end

end A051891.P10135823238669956455

/-! ## A051891.P1263426570637244610

`A014682(A051642(n)+1)`
-/

namespace A051891.P1263426570637244610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A051642 n + 1).toNat

end

end A051891.P1263426570637244610

/-!
# A051892: Values of e, the lesser key or generating number for Pythagorean triangles in which S (the odd short leg) and U (the hypotenuse) are twin primes.

The programs for A051892, there is no canonical definition to state claims against.
-/

/-! ## A051892.P4675076671511232019

`A051891(n+1)-1`
-/

namespace A051892.P4675076671511232019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051891 (n + 1) - 1

end

end A051892.P4675076671511232019

/-! ## A051892.P16543339742945523805

`A051858(n+1)/(2*A051891(n+1))`
-/

namespace A051892.P16543339742945523805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051858 (n + 1) : ℚ) / (2 * A051891 (n + 1) : ℚ)

end

end A051892.P16543339742945523805

/-! ## A051892.P15588965458499451426

`floor(sqrt(A051859(n+1)/2))`
-/

namespace A051892.P15588965458499451426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A051859 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A051892.P15588965458499451426

/-! ## A051892.P16137181012695666550

`floor(A051642(n)/2)`
-/

namespace A051892.P16137181012695666550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051642 n : ℚ) / 2⌋

end

end A051892.P16137181012695666550

/-! ## A051892.P13791908633420798478

`A051858(n+1)%A051642(n)`
-/

namespace A051892.P13791908633420798478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051858 (n + 1)) (A051642 n)

end

end A051892.P13791908633420798478

/-! ## A051892.P13700463693952813772

`A051642(n)%A051891(n+1)`
-/

namespace A051892.P13700463693952813772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051642 n) (A051891 (n + 1))

end

end A051892.P13700463693952813772

/-! ## A051892.P8131704512734910353

`(A051642(n)-A059841(A005843(n)))/2`
-/

namespace A051892.P8131704512734910353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051642 n - A059841 (A005843 n).toNat : ℚ) / 2

end

end A051892.P8131704512734910353

/-! ## A051892.P3462139105488494838

`(A051642(n)-A007318(A256909(n)))/2`
-/

namespace A051892.P3462139105488494838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051642 n - A007318 (A256909 n).toNat : ℚ) / 2

end

end A051892.P3462139105488494838

/-! ## A051892.P17414223778350347450

`A000027((A051642(n)-1)/2)`
-/

namespace A051892.P17414223778350347450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A051642 n - 1 : ℚ) / 2)).toNat

end

end A051892.P17414223778350347450

/-! ## A051892.P17760858645465739533

`A014682(A051642(n)-1)`
-/

namespace A051892.P17760858645465739533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A051642 n - 1).toNat

end

end A051892.P17760858645465739533

/-!
# A051893: a(n) = Sum_{i=1..n-1} i^2*a(i), a(1) = 1.

The programs for A051893, there is no canonical definition to state claims against.
-/

/-! ## A051893.P7828199705883037650

`(A003703(n+1)²+A009454(n+1)²+A000007(n))/2`
-/

namespace A051893.P7828199705883037650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003703 (n + 1) ^ 2 + A009454 (n + 1) ^ 2 + A000007 n : ℚ) / 2

end

end A051893.P7828199705883037650

/-! ## A051893.P13206762864332539089

`ceil(∏[n²+1]/2)`
-/

namespace A051893.P13206762864332539089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A051893.P13206762864332539089

/-! ## A051893.P5475613288445490481

`(n²+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A051893.P5475613288445490481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n ^ 2 + 1) * a (n - 1)

end

end A051893.P5475613288445490481

/-! ## A051893.P6536635029762390742

`a(n-1)/cos(atan(n))²` with `a(0)=1, a(1)=1`
-/

namespace A051893.P6536635029762390742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A051893.P6536635029762390742

/-! ## A051893.P4243468753652991461

`a(n-1)/sin(acot(n))²` with `a(0)=1, a(1)=1`
-/

namespace A051893.P4243468753652991461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A051893.P4243468753652991461

/-!
# A051894: Number of monic polynomials with integer coefficients of degree n with all roots in unit disc.

The programs for A051894, there is no canonical definition to state claims against.
-/

/-! ## A051894.P1582663619682495209

`∑[A120963(n)]`
-/

namespace A051894.P1582663619682495209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051894.P1582663619682495209

/-! ## A051894.P17685875469757788119

`∑[∑[A347428(n)]]`
-/

namespace A051894.P17685875469757788119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051894.P17685875469757788119

/-! ## A051894.P2508159949293383546

`2*A361152(n)+1`
-/

namespace A051894.P2508159949293383546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A361152 n + 1

end

end A051894.P2508159949293383546

/-! ## A051894.P12825132528203228633

`A120963(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A051894.P12825132528203228633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120963 n + a (A023443 n).toNat

end

end A051894.P12825132528203228633

/-! ## A051894.P5949115919191349610

`A120963(n%A001157(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A051894.P5949115919191349610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120963 (Int.tmod (n : ℤ) (A001157 (n + 1))).toNat + a (n - 1)

end

end A051894.P5949115919191349610

/-! ## A051894.P12094049748777917248

`a(n-1)+A120963(n)%A120963(n+1)` with `a(0)=1`
-/

namespace A051894.P12094049748777917248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A120963 n) (A120963 (n + 1))

end

end A051894.P12094049748777917248

/-!
# A051895: Partial sums of second pentagonal numbers with even index (A049453).

The programs for A051895, the canonical program `A051895.P13989922458305069876` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051895 has offset 0).

The definition of A051895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051895.P3932348230185145945

`n*(n+1)*(4*n+3)/2`
-/

namespace A051895.P3932348230185145945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (4 * n + 3) : ℚ) / 2

end

end A051895.P3932348230185145945

namespace A051895

/-- `n*(n+1)*(4*n+3)/2` -/
def P3932348230185145945.Spec : Prop :=
  ∀ n, P3932348230185145945.a n = (A051895 n : ℚ)

theorem P3932348230185145945.correct : P3932348230185145945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051895, Nat.add_sub_cancel, A051895.P3932348230185145945.a, A051895.P13989922458305069876.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051895, Nat.add_sub_cancel, A051895.P3932348230185145945.a, A051895.P13989922458305069876.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051895

/-! ## A051895.P13989922458305069876

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=33, a(3)=90`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051895

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13989922458305069876.Spec : Prop :=
  ∀ n, P13989922458305069876.a n = A051895 n

theorem P13989922458305069876.correct : P13989922458305069876.Spec := by
  intro n
  simp only [A051895]

end A051895

/-! ## A051895.P8811000150113137631

`A002492(n)+A016061(n)`
-/

namespace A051895.P8811000150113137631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + A016061 n

end

end A051895.P8811000150113137631

namespace A051895

/-- `A002492(n)+A016061(n)` -/
def P8811000150113137631.Spec : Prop :=
  ∀ n, P8811000150113137631.a n = A051895 n

end A051895

/-! ## A051895.P2598135560778241745

`∑[n]*record[xor(3, n)]`
-/

namespace A051895.P2598135560778241745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A051895.P2598135560778241745

namespace A051895

/-- `∑[n]*record[xor(3, n)]` -/
def P2598135560778241745.Spec : Prop :=
  ∀ n, (P2598135560778241745.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P11334180148044681247

`or(3, 4*n)*∑[n]`
-/

namespace A051895.P11334180148044681247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (4 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051895.P11334180148044681247

namespace A051895

/-- `or(3, 4*n)*∑[n]` -/
def P11334180148044681247.Spec : Prop :=
  ∀ n, (P11334180148044681247.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P17699210675146699277

`xor(3, 4*n)*∑[n]`
-/

namespace A051895.P17699210675146699277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (4 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051895.P17699210675146699277

namespace A051895

/-- `xor(3, 4*n)*∑[n]` -/
def P17699210675146699277.Spec : Prop :=
  ∀ n, (P17699210675146699277.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P7464695253233463312

`Δ[C(n², 2)]+∑[n]`
-/

namespace A051895.P7464695253233463312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A051895.P7464695253233463312

namespace A051895

/-- `Δ[C(n², 2)]+∑[n]` -/
def P7464695253233463312.Spec : Prop :=
  ∀ n, P7464695253233463312.a n = A051895 n

end A051895

/-! ## A051895.P13470673318422568016

`∑[n]*Δ[C(2*n+1, 2)]`
-/

namespace A051895.P13470673318422568016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A051895.P13470673318422568016

namespace A051895

/-- `∑[n]*Δ[C(2*n+1, 2)]` -/
def P13470673318422568016.Spec : Prop :=
  ∀ n, P13470673318422568016.a n = A051895 n

end A051895

/-! ## A051895.P16184289571416704480

`∑[n]*Δ[lcm(n, 2*n+1)]`
-/

namespace A051895.P16184289571416704480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A051895.P16184289571416704480

namespace A051895

/-- `∑[n]*Δ[lcm(n, 2*n+1)]` -/
def P16184289571416704480.Spec : Prop :=
  ∀ n, P16184289571416704480.a n = A051895 n

end A051895

/-! ## A051895.P4137250425752346538

`(∑[n+3]-C(n, 2))*∑[n]`
-/

namespace A051895.P4137250425752346538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A051895.P4137250425752346538

namespace A051895

/-- `(∑[n+3]-C(n, 2))*∑[n]` -/
def P4137250425752346538.Spec : Prop :=
  ∀ n, P4137250425752346538.a n = A051895 n

end A051895

/-! ## A051895.P10614846462107063388

`n/2*∑[a(n-1)+8]` with `a(0)=3`
-/

namespace A051895.P10614846462107063388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A051895.P10614846462107063388

namespace A051895

/-- `n/2*∑[a(n-1)+8]` -/
def P10614846462107063388.Spec : Prop :=
  ∀ n, P10614846462107063388.a n = (A051895 n : ℚ)

end A051895

/-! ## A051895.P17711487882423052636

`6*n²+a(n-1)+n` with `a(0)=0`
-/

namespace A051895.P17711487882423052636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  6 * n ^ 2 + (a (n - 1) + n)

end

end A051895.P17711487882423052636

namespace A051895

/-- `6*n²+a(n-1)+n` -/
def P17711487882423052636.Spec : Prop :=
  ∀ n, (P17711487882423052636.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P3168132260939760869

`2*n*record[(n-1)²]-∑[n]`
-/

namespace A051895.P3168132260939760869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A051895.P3168132260939760869

namespace A051895

/-- `2*n*record[(n-1)²]-∑[n]` -/
def P3168132260939760869.Spec : Prop :=
  ∀ n, P3168132260939760869.a n = A051895 n

end A051895

/-! ## A051895.P17752487281780129560

`∑[n]+n*∑[a(n-1)+4]` with `a(0)=1`
-/

namespace A051895.P17752487281780129560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A051895.P17752487281780129560

namespace A051895

/-- `∑[n]+n*∑[a(n-1)+4]` -/
def P17752487281780129560.Spec : Prop :=
  ∀ n, (P17752487281780129560.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P13424733323443728585

`2*n*(n+1)²-C(n+1, 2)`
-/

namespace A051895.P13424733323443728585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * (n + 1) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A051895.P13424733323443728585

namespace A051895

/-- `2*n*(n+1)²-C(n+1, 2)` -/
def P13424733323443728585.Spec : Prop :=
  ∀ n, P13424733323443728585.a n = A051895 n

end A051895

/-! ## A051895.P16382603174767567271

`∑[n]+(n+1)*C(2*n+1, 2)`
-/

namespace A051895.P16382603174767567271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * Nat.choose (2 * n + 1) 2

end

end A051895.P16382603174767567271

namespace A051895

/-- `∑[n]+(n+1)*C(2*n+1, 2)` -/
def P16382603174767567271.Spec : Prop :=
  ∀ n, (P16382603174767567271.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P13716720896362021059

`Δ[(2*n+1+n)*C(n+1, 3)]`
-/

namespace A051895.P13716720896362021059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n) * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051895.P13716720896362021059

namespace A051895

/-- `Δ[(2*n+1+n)*C(n+1, 3)]` -/
def P13716720896362021059.Spec : Prop :=
  ∀ n, P13716720896362021059.a n = A051895 n

end A051895

/-! ## A051895.P3972784156644269492

`(2*(2*n+1)+1)*C(n+1, 2)`
-/

namespace A051895.P3972784156644269492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n + 1) + 1) * Nat.choose (n + 1) 2

end

end A051895.P3972784156644269492

namespace A051895

/-- `(2*(2*n+1)+1)*C(n+1, 2)` -/
def P3972784156644269492.Spec : Prop :=
  ∀ n, (P3972784156644269492.a n : ℤ) = A051895 n

end A051895

/-! ## A051895.P17729806151092943266

`a(n-1)+n*(5*n+n+1)` with `a(0)=0`
-/

namespace A051895.P17729806151092943266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (5 * n + (n + 1))

end

end A051895.P17729806151092943266

namespace A051895

/-- `a(n-1)+n*(5*n+n+1)` -/
def P17729806151092943266.Spec : Prop :=
  ∀ n, (P17729806151092943266.a n : ℤ) = A051895 n

end A051895

/-!
# A051897: Values of n such that 90n+11, 90n+13, 90n+17, 90n+19 are all primes.

The programs for A051897, the canonical program `A051897.P8902770767646687647` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051897 has offset 1).

The definition of A051897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051897.P8902770767646687647

`∩[A224854(n+1), A224855(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051897

/-- `∩[A224854(n+1), A224855(n+1)]` -/
def P8902770767646687647.Spec : Prop :=
  ∀ n, (P8902770767646687647.a n : ℤ) = A051897 (n + 1)

theorem P8902770767646687647.correct : P8902770767646687647.Spec := by
  intro n
  simp only [A051897, Nat.add_sub_cancel]

end A051897

/-! ## A051897.P10950362745228592661

`record[A058281(A061668(n+1))-A061668(n+1)]`
-/

namespace A051897.P10950362745228592661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A061668 (n + 1)).toNat - A061668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051897.P10950362745228592661

namespace A051897

/-- `record[A058281(A061668(n+1))-A061668(n+1)]` -/
def P10950362745228592661.Spec : Prop :=
  ∀ n, P10950362745228592661.a n = A051897 (n + 1)

end A051897

/-! ## A051897.P2801306215578400431

`record[A137241(∑[A159910(n+1)])]`
-/

namespace A051897.P2801306215578400431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159910 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051897.P2801306215578400431

namespace A051897

/-- `record[A137241(∑[A159910(n+1)])]` -/
def P2801306215578400431.Spec : Prop :=
  ∀ n, P2801306215578400431.a n = A051897 (n + 1)

end A051897

/-! ## A051897.P14782334593843330805

`record[A137241(A061668(n+1)-1)]`
-/

namespace A051897.P14782334593843330805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A061668 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051897.P14782334593843330805

namespace A051897

/-- `record[A137241(A061668(n+1)-1)]` -/
def P14782334593843330805.Spec : Prop :=
  ∀ n, P14782334593843330805.a n = A051897 (n + 1)

end A051897

/-! ## A051897.P2999600607528996638

`record[A137241(floor(A007811(n+1)/3))]`
-/

namespace A051897.P2999600607528996638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 ⌊(A007811 (n + 1) : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051897.P2999600607528996638

namespace A051897

/-- `record[A137241(floor(A007811(n+1)/3))]` -/
def P2999600607528996638.Spec : Prop :=
  ∀ n, P2999600607528996638.a n = A051897 (n + 1)

end A051897

/-!
# A051899: Smallest prime p such that (p-1)/(2*n) is also a prime.

The programs for A051899, there is no canonical definition to state claims against.
-/

/-! ## A051899.P3333067252633162910

`2*(n+1)*A051686(n+1)+1`
-/

namespace A051899.P3333067252633162910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A051686 (n + 1)) + 1

end

end A051899.P3333067252633162910

/-! ## A051899.P17858173975568397002

`2*(n+1)*A089367(2*(n+1))+1`
-/

namespace A051899.P17858173975568397002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A089367 (2 * (n + 1)) + 1

end

end A051899.P17858173975568397002

/-! ## A051899.P7412078184866867455

`A341845((n+1)*A051686(n+1))`
-/

namespace A051899.P7412078184866867455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 ((n + 1 : ℤ) * A051686 (n + 1)).toNat

end

end A051899.P7412078184866867455

/-! ## A051899.P7837601114610752816

`A005408((n+1)*A051686(n+1))`
-/

namespace A051899.P7837601114610752816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n + 1 : ℤ) * A051686 (n + 1)).toNat

end

end A051899.P7837601114610752816

/-! ## A051899.P9658460150878728946

`A051445((n+1)*A051686(n+1))`
-/

namespace A051899.P9658460150878728946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 ((n + 1 : ℤ) * A051686 (n + 1)).toNat

end

end A051899.P9658460150878728946

/-! ## A051899.P18390427246638962964

`A088732((n+1)*A051686(n+1))`
-/

namespace A051899.P18390427246638962964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 ((n + 1 : ℤ) * A051686 (n + 1)).toNat

end

end A051899.P18390427246638962964

