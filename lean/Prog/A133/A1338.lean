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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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
# A133800: Triangle read by rows in which row n gives number of ways to partition n labeled elements into k pie slices allowing the pie to be turned over (n >= 1, 1 <= k <= n).

The programs for A133800, there is no canonical definition to state claims against.
-/

/-! ## A133800.P8106148799014920118

`lcm(2, A163626(n))/2`
-/

namespace A133800.P8106148799014920118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A163626 n) : ℚ) / 2

end

end A133800.P8106148799014920118

/-! ## A133800.P16810927978429691324

`A028246(n+1)/gcd(2, A163626(n))`
-/

namespace A133800.P16810927978429691324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (Int.gcd 2 (A163626 n) : ℚ)

end

end A133800.P16810927978429691324

/-! ## A133800.P7618421981579678395

`abs(A163626(n)/A020639(A233543(n)))`
-/

namespace A133800.P7618421981579678395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A163626 n : ℚ) / (A020639 (A233543 n).toNat : ℚ)|

end

end A133800.P7618421981579678395

/-! ## A133800.P4454467701898953244

`A001710(A002262(n))*A008277(n+1)`
-/

namespace A133800.P4454467701898953244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (A002262 n).toNat * A008277 (n + 1)

end

end A133800.P4454467701898953244

/-! ## A133800.P13480246674335090705

`A008277(n+1)*A273943(A233543(n))`
-/

namespace A133800.P13480246674335090705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A273943 (A233543 n).toNat

end

end A133800.P13480246674335090705

/-! ## A133800.P575752345678528352

`A028246(n+1)/A087039(A059268(n))`
-/

namespace A133800.P575752345678528352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A087039 (A059268 n).toNat : ℚ)

end

end A133800.P575752345678528352

/-! ## A133800.P1188479905002962628

`A028246(n+1)/A020639(A232089(n))`
-/

namespace A133800.P1188479905002962628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A020639 (A232089 n).toNat : ℚ)

end

end A133800.P1188479905002962628

/-! ## A133800.P6060893442844358687

`A028246(n+1)/A020639(A233543(n))`
-/

namespace A133800.P6060893442844358687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A020639 (A233543 n).toNat : ℚ)

end

end A133800.P6060893442844358687

/-! ## A133800.P4782514281769010473

`A028246(n+1)/A020639(A054526(n+1))`
-/

namespace A133800.P4782514281769010473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A020639 (A054526 (n + 1)).toNat : ℚ)

end

end A133800.P4782514281769010473

/-! ## A133800.P614059598827939377

`A028246(n+1)/A020639(A208332(n+1))`
-/

namespace A133800.P614059598827939377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A020639 (A208332 (n + 1)).toNat : ℚ)

end

end A133800.P614059598827939377

/-!
# A133801: Number of distinct prime divisors of 3^n - 1.

The programs for A133801, there is no canonical definition to state claims against.
-/

/-! ## A133801.P10200754579448648247

`A083399(C(A185974(n), A023645(n+1)))`
-/

namespace A133801.P10200754579448648247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (Nat.choose (A185974 n).toNat (A023645 (n + 1)).toNat)

end

end A133801.P10200754579448648247

/-! ## A133801.P7146146150768469568

`or(A000035(A056511(n+1)), A076984(n+1))`
-/

namespace A133801.P7146146150768469568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A056511 (n + 1)).toNat) (A076984 (n + 1))

end

end A133801.P7146146150768469568

/-! ## A133801.P17842916101320589897

`A087133(A213243(n+1)%A285453(2*n+5))`
-/

namespace A133801.P17842916101320589897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (Int.tmod (A213243 (n + 1)) (A285453 (2 * n + 5))).toNat

end

end A133801.P17842916101320589897

/-! ## A133801.P9407931652001774532

`A087133(A213243(n+1))`
-/

namespace A133801.P9407931652001774532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (A213243 (n + 1)).toNat

end

end A133801.P9407931652001774532

/-! ## A133801.P1108238471069185306

`A043290(2*(n+2))+A001221(A213243(n+1))`
-/

namespace A133801.P1108238471069185306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (2 * (n + 2)) + A001221 (A213243 (n + 1)).toNat

end

end A133801.P1108238471069185306

/-!
# A133803: Floor log A055213(n).

The programs for A133803, there is no canonical definition to state claims against.
-/

/-! ## A133803.P11182945016911383527

`floor(sqrt(17*A054519(2*n)))`
-/

namespace A133803.P11182945016911383527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (17 * A054519 (2 * n))

end

end A133803.P11182945016911383527

/-! ## A133803.P6074835960967905422

`A000196(17*A099055(n))`
-/

namespace A133803.P6074835960967905422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (17 * A099055 n).toNat

end

end A133803.P6074835960967905422

/-! ## A133803.P1179207924029040431

`∑[5-A043568(A123861(n))]`
-/

namespace A133803.P1179207924029040431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A043568 (A123861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133803.P1179207924029040431

/-! ## A133803.P15477605921459097367

`A000006(A338901(6*(n+1)))`
-/

namespace A133803.P15477605921459097367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A338901 (6 * (n + 1))).toNat

end

end A133803.P15477605921459097367

/-! ## A133803.P14728474509935493899

`A000196(17*A054519(2*n))`
-/

namespace A133803.P14728474509935493899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (17 * A054519 (2 * n)).toNat

end

end A133803.P14728474509935493899

/-!
# A133804: Triangle read by rows: A007318 * A133080 * A133566 as infinite lower triangular matrices.

The programs for A133804, there is no canonical definition to state claims against.
-/

/-! ## A133804.P16457925684714872488

`A166724(A142589(n))+A004736(n+1)`
-/

namespace A133804.P16457925684714872488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166724 (A142589 n).toNat + A004736 (n + 1)

end

end A133804.P16457925684714872488

/-! ## A133804.P5155444320175112925

`A216602(A280547(n+6))+A034356(n+1)`
-/

namespace A133804.P5155444320175112925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A280547 (n + 6)).toNat + A034356 (n + 1)

end

end A133804.P5155444320175112925

/-!
# A133805: Triangle read by rows: A007318 * A133566 * A133080 as infinite lower triangular matrices.

The programs for A133805, the canonical program `A133805.P12564843643079496267` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133805 has offset 0).

The definition of A133805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133805.P9531136584508507288

`A131110(n+1)+A007318(n)-A133084(n+1)`
-/

namespace A133805.P9531136584508507288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131110 (n + 1) + (A007318 n - A133084 (n + 1))

end

end A133805.P9531136584508507288

namespace A133805

/-- `A131110(n+1)+A007318(n)-A133084(n+1)` -/
def P9531136584508507288.Spec : Prop :=
  ∀ n, P9531136584508507288.a n = A133805 n

end A133805

/-! ## A133805.P12564843643079496267

`A198321(n+1)+A133567(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A133805

/-- `A198321(n+1)+A133567(n+2)` -/
def P12564843643079496267.Spec : Prop :=
  ∀ n, P12564843643079496267.a n = A133805 n

theorem P12564843643079496267.correct : P12564843643079496267.Spec := by
  intro n
  simp only [A133805]

end A133805

/-! ## A133805.P15665415412427421846

`A268057(A022173(n))+A049780(n)`
-/

namespace A133805.P15665415412427421846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268057 (A022173 n).toNat + A049780 n

end

end A133805.P15665415412427421846

namespace A133805

/-- `A268057(A022173(n))+A049780(n)` -/
def P15665415412427421846.Spec : Prop :=
  ∀ n, P15665415412427421846.a n = A133805 n

end A133805

/-! ## A133805.P970072190054006510

`A049780(n)%A158009(n+4)+1`
-/

namespace A133805.P970072190054006510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049780 n) (A158009 (n + 4)) + 1

end

end A133805.P970072190054006510

namespace A133805

/-- `A049780(n)%A158009(n+4)+1` -/
def P970072190054006510.Spec : Prop :=
  ∀ n, P970072190054006510.a n = A133805 n

end A133805

/-! ## A133805.P1252387992745028576

`A070939(A108084(n)^A333733(n))`
-/

namespace A133805.P1252387992745028576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A108084 n : ℚ) ^ (A333733 n : ℤ))).toNat

end

end A133805.P1252387992745028576

namespace A133805

/-- `A070939(A108084(n)^A333733(n))` -/
def P1252387992745028576.Spec : Prop :=
  ∀ n, P1252387992745028576.a n = A133805 n

end A133805

/-!
# A133806: Alternate terms of A131708 and A000079.

The programs for A133806, the canonical program `A133806.P9687229716002277301` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133806 has offset 0).

The definition of A133806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133806.P9687229716002277301

`Δ[A024495(A065033(n))+A016116(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133806

/-- `Δ[A024495(A065033(n))+A016116(n)]` -/
def P9687229716002277301.Spec : Prop :=
  ∀ n, P9687229716002277301.a n = A133806 n

theorem P9687229716002277301.correct : P9687229716002277301.Spec := by
  intro n
  simp only [A133806]

end A133806

/-! ## A133806.P943269192187187011

`A307078(∑[n-gcd(n, ∑[n])]+n)%(3^n)`
-/

namespace A133806.P943269192187187011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307078 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat) (3 ^ n : ℤ)

end

end A133806.P943269192187187011

namespace A133806

/-- `A307078(∑[n-gcd(n, ∑[n])]+n)%(3^n)` -/
def P943269192187187011.Spec : Prop :=
  ∀ n, P943269192187187011.a n = A133806 n

end A133806

/-! ## A133806.P1319091316618263895

`A002264(A214332(n)+A164073(n+1))`
-/

namespace A133806.P1319091316618263895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A214332 n + A164073 (n + 1)).toNat

end

end A133806.P1319091316618263895

namespace A133806

/-- `A002264(A214332(n)+A164073(n+1))` -/
def P1319091316618263895.Spec : Prop :=
  ∀ n, P1319091316618263895.a n = A133806 n

end A133806

/-! ## A133806.P8156630754664661425

`A008620(A214332(n)+A164073(n+1))-1`
-/

namespace A133806.P8156630754664661425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A214332 n + A164073 (n + 1)).toNat - 1

end

end A133806.P8156630754664661425

namespace A133806

/-- `A008620(A214332(n)+A164073(n+1))-1` -/
def P8156630754664661425.Spec : Prop :=
  ∀ n, P8156630754664661425.a n = A133806 n

end A133806

/-!
# A133807: Triangle read by rows: A007318 * (A097806 + A133566 - I) as infinite lower triangular matrices, where I is the identity matrix.

The programs for A133807, the canonical program `A133807.P1554400217598503188` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133807 has offset 0).

The definition of A133807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133807.P1554400217598503188

`A131768(n)+1-A133084(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133807

/-- `A131768(n)+1-A133084(n+1)` -/
def P1554400217598503188.Spec : Prop :=
  ∀ n, P1554400217598503188.a n = A133807 n

theorem P1554400217598503188.correct : P1554400217598503188.Spec := by
  intro n
  simp only [A133807]

end A133807

/-! ## A133807.P1223256969592867636

`2*A135278(n)-A133084(n+1)`
-/

namespace A133807.P1223256969592867636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A133084 (n + 1)

end

end A133807.P1223256969592867636

namespace A133807

/-- `2*A135278(n)-A133084(n+1)` -/
def P1223256969592867636.Spec : Prop :=
  ∀ n, P1223256969592867636.a n = A133807 n

end A133807

/-! ## A133807.P1978789774351758487

`A028326(comp[∑[n]])-A133084(n+1)`
-/

namespace A133807.P1978789774351758487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A133084 (n + 1)

end

end A133807.P1978789774351758487

namespace A133807

/-- `A028326(comp[∑[n]])-A133084(n+1)` -/
def P1978789774351758487.Spec : Prop :=
  ∀ n, P1978789774351758487.a n = A133807 n

end A133807

/-! ## A133807.P2438068311911584359

`A198321(A038722(n+2))+A133567(n+1)`
-/

namespace A133807.P2438068311911584359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (A038722 (n + 2)).toNat + A133567 (n + 1)

end

end A133807.P2438068311911584359

namespace A133807

/-- `A198321(A038722(n+2))+A133567(n+1)` -/
def P2438068311911584359.Spec : Prop :=
  ∀ n, P2438068311911584359.a n = A133807 n

end A133807

/-! ## A133807.P10660184299979413565

`A133567(n+1)+A051597(n)-A074909(n)`
-/

namespace A133807.P10660184299979413565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) + (A051597 n - A074909 n)

end

end A133807.P10660184299979413565

namespace A133807

/-- `A133567(n+1)+A051597(n)-A074909(n)` -/
def P10660184299979413565.Spec : Prop :=
  ∀ n, P10660184299979413565.a n = A133807 n

end A133807

/-! ## A133807.P2242804521356019422

`A206735(n+1)+A133567(n+1)`
-/

namespace A133807.P2242804521356019422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A133567 (n + 1)

end

end A133807.P2242804521356019422

namespace A133807

/-- `A206735(n+1)+A133567(n+1)` -/
def P2242804521356019422.Spec : Prop :=
  ∀ n, P2242804521356019422.a n = A133807 n

end A133807

/-! ## A133807.P6440400622288565199

`A029618(comp[∑[n]])-A133601(n)`
-/

namespace A133807.P6440400622288565199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A133601 n

end

end A133807.P6440400622288565199

namespace A133807

/-- `A029618(comp[∑[n]])-A133601(n)` -/
def P6440400622288565199.Spec : Prop :=
  ∀ n, P6440400622288565199.a n = A133807 n

end A133807

/-! ## A133807.P14578345735013762144

`A133567(n+1)+A071919(comp[∑[n]])`
-/

namespace A133807.P14578345735013762144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) + A071919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A133807.P14578345735013762144

namespace A133807

/-- `A133567(n+1)+A071919(comp[∑[n]])` -/
def P14578345735013762144.Spec : Prop :=
  ∀ n, P14578345735013762144.a n = A133807 n

end A133807

/-! ## A133807.P4378056574784466643

`A029653(n)+A134239(n+1)%A028326(n+1)`
-/

namespace A133807.P4378056574784466643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + Int.tmod (A134239 (n + 1)) (A028326 (n + 1))

end

end A133807.P4378056574784466643

namespace A133807

/-- `A029653(n)+A134239(n+1)%A028326(n+1)` -/
def P4378056574784466643.Spec : Prop :=
  ∀ n, P4378056574784466643.a n = A133807 n

end A133807

/-! ## A133807.P4097529830181556089

`A004277(A135278(n))-A133084(n+1)`
-/

namespace A133807.P4097529830181556089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A135278 n).toNat - A133084 (n + 1)

end

end A133807.P4097529830181556089

namespace A133807

/-- `A004277(A135278(n))-A133084(n+1)` -/
def P4097529830181556089.Spec : Prop :=
  ∀ n, P4097529830181556089.a n = A133807 n

end A133807

/-!
# A133808: Numbers that are primally tight, have 2 as first prime and weakly ascending powers.

The programs for A133808, there is no canonical definition to state claims against.
-/

/-! ## A133808.P12107919224995018903

`record[A071364(A133810(n+1))]`
-/

namespace A133808.P12107919224995018903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A133810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133808.P12107919224995018903

/-! ## A133808.P9364588714917790915

`filter[A133810(n+1), A365429(#)]`
-/

namespace A133808.P9364588714917790915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A133808.P9364588714917790915

/-! ## A133808.P12598623816041048608

`∩[A055932(n+1), A133810(n+1)]`
-/

namespace A133808.P12598623816041048608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P12598623816041048608

/-! ## A133808.P16007407549486112310

`∩[A133810(n+1), A151999(n+1)]`
-/

namespace A133808.P16007407549486112310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P16007407549486112310

/-! ## A133808.P14764987309213442604

`∩[A133810(n+1), A239063(n+1)]`
-/

namespace A133808.P14764987309213442604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P14764987309213442604

/-! ## A133808.P14953462465119535294

`∩[A133810(n+1), A267817(n+1)]`
-/

namespace A133808.P14953462465119535294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P14953462465119535294

/-! ## A133808.P13779610301974376576

`∩[A133810(n+1), A290822(n+1)]`
-/

namespace A133808.P13779610301974376576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P13779610301974376576

/-! ## A133808.P7507912953944604049

`∩[A133810(n+1), A331828(n+1)]`
-/

namespace A133808.P7507912953944604049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P7507912953944604049

/-! ## A133808.P1566065687851572919

`∩[A133810(n+1), A359420(n+1)]`
-/

namespace A133808.P1566065687851572919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P1566065687851572919

/-! ## A133808.P14261203023769003665

`∩[A133810(n+1), A371177(n+1)]`
-/

namespace A133808.P14261203023769003665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133808.P14261203023769003665

/-!
# A133809: Numbers that are primally tight, have 2 as first prime and strictly ascending powers.

The programs for A133809, there is no canonical definition to state claims against.
-/

/-! ## A133809.P4796008256774985860

`∩[A133808(n+1), A356021(n+1)]`
-/

namespace A133809.P4796008256774985860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133809.P4796008256774985860

/-! ## A133809.P15347885720900375030

`record[A071364(A133811(n+1))]`
-/

namespace A133809.P15347885720900375030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A133811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133809.P15347885720900375030

/-! ## A133809.P4759125206060277980

`filter[A133811(n+1), A365429(#)]`
-/

namespace A133809.P4759125206060277980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A133809.P4759125206060277980

/-! ## A133809.P12353981234106362472

`filter[A133811(n+1), A378550(#)]`
-/

namespace A133809.P12353981234106362472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A133809.P12353981234106362472

/-! ## A133809.P10303719071932011582

`∩[A005153(n+1), A133811(n+1)]`
-/

namespace A133809.P10303719071932011582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133809.P10303719071932011582

/-!
# A133810: Numbers that are primally tight and have weakly ascending powers.

The programs for A133810, there is no canonical definition to state claims against.
-/

/-! ## A133810.P14111323319764128329

`record[A034699(n+1)*A330749(n+1)]`
-/

namespace A133810.P14111323319764128329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) * A330749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133810.P14111323319764128329

/-! ## A133810.P615566765881869703

`filter[A304678(n+1), A137794(#)]`
-/

namespace A133810.P615566765881869703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A133810.P615566765881869703

/-! ## A133810.P4764647862450737369

`∩[A073491(n+1), A304678(n+1)]`
-/

namespace A133810.P4764647862450737369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133810.P4764647862450737369

/-! ## A133810.P9394522336842624588

`record[(n+1)/A284600(A319626(n+1))]`
-/

namespace A133810.P9394522336842624588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284600 (A319626 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133810.P9394522336842624588

/-! ## A133810.P16545526675494297126

`eq[A046523(n+1), A137502(n+1)]+1`
-/

namespace A133810.P16545526675494297126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133810.P16545526675494297126

/-! ## A133810.P4774261606083168711

`eq[A034699(n+1), A319626(n+1)]+1`
-/

namespace A133810.P4774261606083168711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133810.P4774261606083168711

/-! ## A133810.P15099184217050862898

`eq[A053585(n+1), A319626(n+1)]+1`
-/

namespace A133810.P15099184217050862898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133810.P15099184217050862898

/-! ## A133810.P7815173672817227177

`record[A309639(A319626(n+1))*A330749(n+1)]`
-/

namespace A133810.P7815173672817227177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (A319626 (n + 1)).toNat * A330749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133810.P7815173672817227177

/-!
# A133811: Numbers that are primally tight and have strictly ascending powers.

The programs for A133811, there is no canonical definition to state claims against.
-/

/-! ## A133811.P16948128576685770755

`filter[A133810(n+1), A351564(#)]`
-/

namespace A133811.P16948128576685770755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A133811.P16948128576685770755

/-! ## A133811.P7670926694076100707

`∩[A130091(n+1), A133810(n+1)]`
-/

namespace A133811.P7670926694076100707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133811.P7670926694076100707

/-! ## A133811.P5503738714495433215

`record[A327498(A133810(n+1))]`
-/

namespace A133811.P5503738714495433215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A133810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133811.P5503738714495433215

/-! ## A133811.P16971581642988250702

`eq[A137502(n+1), A328400(n+1)]+1`
-/

namespace A133811.P16971581642988250702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133811.P16971581642988250702

/-! ## A133811.P15121513202719652925

`filter[A334965(n+1), A137794(#)]`
-/

namespace A133811.P15121513202719652925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A133811.P15121513202719652925

/-! ## A133811.P15201286988899779710

`∩[A081306(n+1), A334965(n+1)]`
-/

namespace A133811.P15201286988899779710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133811.P15201286988899779710

/-! ## A133811.P10301700528388424646

`∩[A133810(n+1), A334965(n+1)]`
-/

namespace A133811.P10301700528388424646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133811.P10301700528388424646

/-!
# A133812: Numbers that are primally tight and have weakly descending powers.

The programs for A133812, there is no canonical definition to state claims against.
-/

/-! ## A133812.P13778323316635403325

`record[A328469(n+1)+n]-n`
-/

namespace A133812.P13778323316635403325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328469 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A133812.P13778323316635403325

/-! ## A133812.P18208910691852443133

`filter[A242031(n+1), A137794(#)]`
-/

namespace A133812.P18208910691852443133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A133812.P18208910691852443133

/-! ## A133812.P10677934270901906982

`∩[A073491(n+1), A242031(n+1)]`
-/

namespace A133812.P10677934270901906982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133812.P10677934270901906982

/-! ## A133812.P90142823024288988

`record[A028233(n+1)*A322361(n+1)]`
-/

namespace A133812.P90142823024288988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) * A322361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133812.P90142823024288988

/-! ## A133812.P4428012816556656455

`eq[A137502(A046523(n+1)), A137502(n+1)]+1`
-/

namespace A133812.P4428012816556656455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A046523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133812.P4428012816556656455

/-! ## A133812.P1324893144794413832

`eq[A246277(A046523(n+1)), A246277(n+1)]+1`
-/

namespace A133812.P1324893144794413832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133812.P1324893144794413832

/-! ## A133812.P17480962123205804627

`eq[A305897(A046523(n+1)), A305897(n+1)]+1`
-/

namespace A133812.P17480962123205804627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A046523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133812.P17480962123205804627

/-!
# A133813: Numbers that are primally tight and have strictly descending powers.

The programs for A133813, there is no canonical definition to state claims against.
-/

/-! ## A133813.P326013307162251284

`filter[A133812(n+1), A351564(#)]`
-/

namespace A133813.P326013307162251284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A133813.P326013307162251284

/-! ## A133813.P17599534616049891555

`filter[A304686(n+1), A137794(#)]`
-/

namespace A133813.P17599534616049891555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A133813.P17599534616049891555

/-! ## A133813.P13984817841725137172

`∩[A073491(n+1), A304686(n+1)]`
-/

namespace A133813.P13984817841725137172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133813.P13984817841725137172

/-! ## A133813.P1067274886124343132

`∩[A133812(n+1), A304686(n+1)]`
-/

namespace A133813.P1067274886124343132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133813.P1067274886124343132

/-! ## A133813.P11972969542471525505

`∩[A130091(n+1), A133812(n+1)]`
-/

namespace A133813.P11972969542471525505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133813.P11972969542471525505

/-! ## A133813.P4006704272460598465

`record[A327498(A133812(n+1))]`
-/

namespace A133813.P4006704272460598465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A133812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133813.P4006704272460598465

/-! ## A133813.P11536593982120229032

`eq[A328400(n+1), A348717(n+1)]+1`
-/

namespace A133813.P11536593982120229032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133813.P11536593982120229032

/-! ## A133813.P2312111693988810622

`eq[A137502(n+1), A137502(A328400(n+1))]+1`
-/

namespace A133813.P2312111693988810622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A328400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133813.P2312111693988810622

/-!
# A133818: a(n) = (8*n+3)*(8*n+5)*(8*n+7)*(8*n+9).

The programs for A133818, the canonical program `A133818.P14878114627599809351` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133818 has offset 0).

The definition of A133818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)*(8*n+5)*(8*n+7)*(8*n+9)` (program `A133818.P14878114627599809351`, by `A133818.P14878114627599809351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133818.P14878114627599809351

`(8*n+3)*(8*n+5)*(8*n+7)*(8*n+9)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133818

/-- `(8*n+3)*(8*n+5)*(8*n+7)*(8*n+9)` -/
def P14878114627599809351.Spec : Prop :=
  ∀ n, (P14878114627599809351.a n : ℤ) = A133818 n

theorem P14878114627599809351.correct : P14878114627599809351.Spec := by
  intro n
  simp only [A133818]

end A133818

/-! ## A133818.P6239322891581245678

`A146301(n)/A146302(n)^-1`
-/

namespace A133818.P6239322891581245678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146301 n : ℚ) / (A146302 n : ℚ) ^ (-1 : ℤ)

end

end A133818.P6239322891581245678

namespace A133818

/-- `A146301(n)/A146302(n)^-1` -/
def P6239322891581245678.Spec : Prop :=
  ∀ n, P6239322891581245678.a n = (A133818 n : ℚ)

end A133818

/-! ## A133818.P10597505460869642382

`A117465(8*n+7)`
-/

namespace A133818.P10597505460869642382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117465 (8 * n + 7)

end

end A133818.P10597505460869642382

namespace A133818

/-- `A117465(8*n+7)` -/
def P10597505460869642382.Spec : Prop :=
  ∀ n, P10597505460869642382.a n = A133818 n

end A133818

/-! ## A133818.P6162479644632186757

`A190577(eq[2, val(n+1, 2)])`
-/

namespace A133818.P6162479644632186757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190577 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A133818.P6162479644632186757

namespace A133818

/-- `A190577(eq[2, val(n+1, 2)])` -/
def P6162479644632186757.Spec : Prop :=
  ∀ n, P6162479644632186757.a n = A133818 n

end A133818

/-! ## A133818.P6260551165768992482

`A190577(7*(n+1)+n-4)`
-/

namespace A133818.P6260551165768992482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190577 ((7 * (n + 1) : ℤ) + ((n : ℤ) - 4)).toNat

end

end A133818.P6260551165768992482

namespace A133818

/-- `A190577(7*(n+1)+n-4)` -/
def P6260551165768992482.Spec : Prop :=
  ∀ n, P6260551165768992482.a n = A133818 n

end A133818

/-!
# A133819: Triangle whose rows are sequences of increasing squares: 1; 1,4; 1,4,9; ... .

The programs for A133819, the canonical program `A133819.P12070590966735174216` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133819 has offset 1).

The definition of A133819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133819.P16432249467295657198

`(1-C(∑[char[∑[n]]], 2)+n)²`
-/

namespace A133819.P16432249467295657198
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ 2

end

end A133819.P16432249467295657198

namespace A133819

/-- `(1-C(∑[char[∑[n]]], 2)+n)²` -/
def P16432249467295657198.Spec : Prop :=
  ∀ n, P16432249467295657198.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P18062497717981636700

`(1-(C(∑[char[∑[n]]], 2)-n))²`
-/

namespace A133819.P18062497717981636700
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) ^ 2

end

end A133819.P18062497717981636700

namespace A133819

/-- `(1-(C(∑[char[∑[n]]], 2)-n))²` -/
def P18062497717981636700.Spec : Prop :=
  ∀ n, P18062497717981636700.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P13269169876568694631

`(1-C(∑[char[∑[n]]], 2)+n)^2`
-/

namespace A133819.P13269169876568694631
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ 2

end

end A133819.P13269169876568694631

namespace A133819

/-- `(1-C(∑[char[∑[n]]], 2)+n)^2` -/
def P13269169876568694631.Spec : Prop :=
  ∀ n, P13269169876568694631.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P4356835899238729496

`(1-(C(∑[char[∑[n]]], 2)-n))^2`
-/

namespace A133819.P4356835899238729496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) ^ 2

end

end A133819.P4356835899238729496

namespace A133819

/-- `(1-(C(∑[char[∑[n]]], 2)-n))^2` -/
def P4356835899238729496.Spec : Prop :=
  ∀ n, P4356835899238729496.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P9674368879836587157

`(n+1-C(round(sqrt(2*n+1)), 2))²`
-/

namespace A133819.P9674368879836587157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ)) ^ 2

end

end A133819.P9674368879836587157

namespace A133819

/-- `(n+1-C(round(sqrt(2*n+1)), 2))²` -/
def P9674368879836587157.Spec : Prop :=
  ∀ n, P9674368879836587157.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P14974446183141654825

`((n+1)%(C(∑[char[∑[n]]], 2)+1)+1)²`
-/

namespace A133819.P14974446183141654825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1) + 1) ^ 2

end

end A133819.P14974446183141654825

namespace A133819

/-- `((n+1)%(C(∑[char[∑[n]]], 2)+1)+1)²` -/
def P14974446183141654825.Spec : Prop :=
  ∀ n, (P14974446183141654825.a n : ℤ) = A133819 (n + 1)

end A133819

/-! ## A133819.P12070590966735174216

`A002260(n+1)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133819

/-- `A002260(n+1)²` -/
def P12070590966735174216.Spec : Prop :=
  ∀ n, P12070590966735174216.a n = A133819 (n + 1)

theorem P12070590966735174216.correct : P12070590966735174216.Spec := by
  intro n
  simp only [A133819, Nat.add_sub_cancel]

end A133819

/-! ## A133819.P10082439793227026164

`(A002262(n)+1)²`
-/

namespace A133819.P10082439793227026164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2

end

end A133819.P10082439793227026164

namespace A133819

/-- `(A002262(n)+1)²` -/
def P10082439793227026164.Spec : Prop :=
  ∀ n, P10082439793227026164.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P14039117328504843374

`A140756(n+1)²`
-/

namespace A133819.P14039117328504843374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) ^ 2

end

end A133819.P14039117328504843374

namespace A133819

/-- `A140756(n+1)²` -/
def P14039117328504843374.Spec : Prop :=
  ∀ n, P14039117328504843374.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P11623752338316426959

`sqrt(A133821(n+1))`
-/

namespace A133819.P11623752338316426959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133821 (n + 1) : ℝ)

end

end A133819.P11623752338316426959

namespace A133819

/-- `sqrt(A133821(n+1))` -/
def P11623752338316426959.Spec : Prop :=
  ∀ n, P11623752338316426959.a n = (A133819 (n + 1) : ℝ)

end A133819

/-! ## A133819.P12673091687877906183

`(sqrt(A143844(n))+1)²`
-/

namespace A133819.P12673091687877906183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 1) ^ 2

end

end A133819.P12673091687877906183

namespace A133819

/-- `(sqrt(A143844(n))+1)²` -/
def P12673091687877906183.Spec : Prop :=
  ∀ n, P12673091687877906183.a n = (A133819 (n + 1) : ℝ)

end A133819

/-! ## A133819.P3369833171602239813

`(log2(A059268(n))+1)²`
-/

namespace A133819.P3369833171602239813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 1) ^ 2

end

end A133819.P3369833171602239813

namespace A133819

/-- `(log2(A059268(n))+1)²` -/
def P3369833171602239813.Spec : Prop :=
  ∀ n, P3369833171602239813.a n = (A133819 (n + 1) : ℝ)

end A133819

/-! ## A133819.P6697356865379865266

`(1-A057944(n)+n)²`
-/

namespace A133819.P6697356865379865266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) ^ 2

end

end A133819.P6697356865379865266

namespace A133819

/-- `(1-A057944(n)+n)²` -/
def P6697356865379865266.Spec : Prop :=
  ∀ n, P6697356865379865266.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P3340481308410208547

`(A132118(n+1)-n)²`
-/

namespace A133819.P3340481308410208547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) ^ 2

end

end A133819.P3340481308410208547

namespace A133819

/-- `(A132118(n+1)-n)²` -/
def P3340481308410208547.Spec : Prop :=
  ∀ n, P3340481308410208547.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P7251280794074857056

`(Δ[n²]-A061885(n))²`
-/

namespace A133819.P7251280794074857056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A061885 n) ^ 2

end

end A133819.P7251280794074857056

namespace A133819

/-- `(Δ[n²]-A061885(n))²` -/
def P7251280794074857056.Spec : Prop :=
  ∀ n, P7251280794074857056.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P359453898041605099

`∑[2-A130296(n+1)]²`
-/

namespace A133819.P359453898041605099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A133819.P359453898041605099

namespace A133819

/-- `∑[2-A130296(n+1)]²` -/
def P359453898041605099.Spec : Prop :=
  ∀ n, P359453898041605099.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P11709651225651722080

`(val(A018900(n+1), 2)+1)²`
-/

namespace A133819.P11709651225651722080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A018900 (n + 1)).toNat 2 + 1) ^ 2

end

end A133819.P11709651225651722080

namespace A133819

/-- `(val(A018900(n+1), 2)+1)²` -/
def P11709651225651722080.Spec : Prop :=
  ∀ n, (P11709651225651722080.a n : ℤ) = A133819 (n + 1)

end A133819

/-! ## A133819.P9943655724743473596

`A051668(A112367(n))`
-/

namespace A133819.P9943655724743473596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 (A112367 n).toNat

end

end A133819.P9943655724743473596

namespace A133819

/-- `A051668(A112367(n))` -/
def P9943655724743473596.Spec : Prop :=
  ∀ n, P9943655724743473596.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P257286634955544571

`A110001(A174028(n))`
-/

namespace A133819.P257286634955544571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A174028 n).toNat

end

end A133819.P257286634955544571

namespace A133819

/-- `A110001(A174028(n))` -/
def P257286634955544571.Spec : Prop :=
  ∀ n, P257286634955544571.a n = A133819 (n + 1)

end A133819

/-! ## A133819.P1775201456797809417

`A000290(A002262(n)+1)`
-/

namespace A133819.P1775201456797809417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002262 n + 1).toNat

end

end A133819.P1775201456797809417

namespace A133819

/-- `A000290(A002262(n)+1)` -/
def P1775201456797809417.Spec : Prop :=
  ∀ n, P1775201456797809417.a n = A133819 (n + 1)

end A133819

/-!
# A133820: Triangle whose rows are sequences of increasing cubes: 1; 1,8; 1,8,27; ... .

The programs for A133820, the canonical program `A133820.P16676047363186325377` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133820 has offset 1).

The definition of A133820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133820.P5887102415009223650

`(1-C(∑[char[∑[n]]], 2)+n)^3`
-/

namespace A133820.P5887102415009223650
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ 3

end

end A133820.P5887102415009223650

namespace A133820

/-- `(1-C(∑[char[∑[n]]], 2)+n)^3` -/
def P5887102415009223650.Spec : Prop :=
  ∀ n, P5887102415009223650.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P10405529490044737575

`(1-(C(∑[char[∑[n]]], 2)-n))^3`
-/

namespace A133820.P10405529490044737575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) ^ 3

end

end A133820.P10405529490044737575

namespace A133820

/-- `(1-(C(∑[char[∑[n]]], 2)-n))^3` -/
def P10405529490044737575.Spec : Prop :=
  ∀ n, P10405529490044737575.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P16676047363186325377

`A002260(n+1)^3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133820

/-- `A002260(n+1)^3` -/
def P16676047363186325377.Spec : Prop :=
  ∀ n, P16676047363186325377.a n = A133820 (n + 1)

theorem P16676047363186325377.correct : P16676047363186325377.Spec := by
  intro n
  simp only [A133820, Nat.add_sub_cancel]

end A133820

/-! ## A133820.P1649830680095568008

`(A002262(n)+1)^3`
-/

namespace A133820.P1649830680095568008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 3

end

end A133820.P1649830680095568008

namespace A133820

/-- `(A002262(n)+1)^3` -/
def P1649830680095568008.Spec : Prop :=
  ∀ n, P1649830680095568008.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P8374590037517432522

`sqrt(A133819(n+1)^3)`
-/

namespace A133820.P8374590037517432522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) ^ 3 : ℝ)

end

end A133820.P8374590037517432522

namespace A133820

/-- `sqrt(A133819(n+1)^3)` -/
def P8374590037517432522.Spec : Prop :=
  ∀ n, P8374590037517432522.a n = (A133820 (n + 1) : ℝ)

end A133820

/-! ## A133820.P7059469217945241719

`(1-A057944(n)+n)^3`
-/

namespace A133820.P7059469217945241719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) ^ 3

end

end A133820.P7059469217945241719

namespace A133820

/-- `(1-A057944(n)+n)^3` -/
def P7059469217945241719.Spec : Prop :=
  ∀ n, P7059469217945241719.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P2689990092023431447

`(A132118(n+1)-n)^3`
-/

namespace A133820.P2689990092023431447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) ^ 3

end

end A133820.P2689990092023431447

namespace A133820

/-- `(A132118(n+1)-n)^3` -/
def P2689990092023431447.Spec : Prop :=
  ∀ n, P2689990092023431447.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P10428054675962264432

`A125166(A112367(n))`
-/

namespace A133820.P10428054675962264432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125166 (A112367 n).toNat

end

end A133820.P10428054675962264432

namespace A133820

/-- `A125166(A112367(n))` -/
def P10428054675962264432.Spec : Prop :=
  ∀ n, P10428054675962264432.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P14107919450823587727

`A110003(A174028(n))`
-/

namespace A133820.P14107919450823587727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A174028 n).toNat

end

end A133820.P14107919450823587727

namespace A133820

/-- `A110003(A174028(n))` -/
def P14107919450823587727.Spec : Prop :=
  ∀ n, P14107919450823587727.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P311858882957398386

`A000578(A002260(n+1))`
-/

namespace A133820.P311858882957398386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A002260 (n + 1)).toNat

end

end A133820.P311858882957398386

namespace A133820

/-- `A000578(A002260(n+1))` -/
def P311858882957398386.Spec : Prop :=
  ∀ n, P311858882957398386.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P6095914455142409606

`A000578(A002262(n)+1)`
-/

namespace A133820.P6095914455142409606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A002262 n + 1).toNat

end

end A133820.P6095914455142409606

namespace A133820

/-- `A000578(A002262(n)+1)` -/
def P6095914455142409606.Spec : Prop :=
  ∀ n, P6095914455142409606.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P11281225624816995186

`A109900(A158405(n+1))`
-/

namespace A133820.P11281225624816995186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (A158405 (n + 1)).toNat

end

end A133820.P11281225624816995186

namespace A133820

/-- `A109900(A158405(n+1))` -/
def P11281225624816995186.Spec : Prop :=
  ∀ n, P11281225624816995186.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P17638084015158020442

`A110001(A174028(n)+1)`
-/

namespace A133820.P17638084015158020442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A174028 n + 1).toNat

end

end A133820.P17638084015158020442

namespace A133820

/-- `A110001(A174028(n)+1)` -/
def P17638084015158020442.Spec : Prop :=
  ∀ n, P17638084015158020442.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P12307384108506026673

`A110008(A174028(n)+1)`
-/

namespace A133820.P12307384108506026673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A174028 n + 1).toNat

end

end A133820.P12307384108506026673

namespace A133820

/-- `A110008(A174028(n)+1)` -/
def P12307384108506026673.Spec : Prop :=
  ∀ n, P12307384108506026673.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P17697431264808301213

`A384816(A037126(n+1))`
-/

namespace A133820.P17697431264808301213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384816 (A037126 (n + 1)).toNat

end

end A133820.P17697431264808301213

namespace A133820

/-- `A384816(A037126(n+1))` -/
def P17697431264808301213.Spec : Prop :=
  ∀ n, P17697431264808301213.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P12412779533204423492

`A068601(A002262(n)+1)+1`
-/

namespace A133820.P12412779533204423492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (A002262 n + 1).toNat + 1

end

end A133820.P12412779533204423492

namespace A133820

/-- `A068601(A002262(n)+1)+1` -/
def P12412779533204423492.Spec : Prop :=
  ∀ n, P12412779533204423492.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P15351851269692488344

`A033431(A002262(n)+1)/2`
-/

namespace A133820.P15351851269692488344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033431 (A002262 n + 1).toNat : ℚ) / 2

end

end A133820.P15351851269692488344

namespace A133820

/-- `A033431(A002262(n)+1)/2` -/
def P15351851269692488344.Spec : Prop :=
  ∀ n, P15351851269692488344.a n = (A133820 (n + 1) : ℚ)

end A133820

/-! ## A133820.P14409536597964333089

`A000578(1-A057944(n)+n)`
-/

namespace A133820.P14409536597964333089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (1 - A057944 n + (n : ℤ)).toNat

end

end A133820.P14409536597964333089

namespace A133820

/-- `A000578(1-A057944(n)+n)` -/
def P14409536597964333089.Spec : Prop :=
  ∀ n, P14409536597964333089.a n = A133820 (n + 1)

end A133820

/-! ## A133820.P11182649347642674703

`A000578(1-(A057944(n)-n))`
-/

namespace A133820.P11182649347642674703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (1 - (A057944 n - (n : ℤ))).toNat

end

end A133820.P11182649347642674703

namespace A133820

/-- `A000578(1-(A057944(n)-n))` -/
def P11182649347642674703.Spec : Prop :=
  ∀ n, P11182649347642674703.a n = A133820 (n + 1)

end A133820

/-!
# A133821: Triangle whose rows are sequences of increasing fourth powers: 1; 1,16; 1,16,81; ... .

The programs for A133821, the canonical program `A133821.P6099152858526993787` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133821 has offset 1).

The definition of A133821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133821.P11743790187169698279

`(1-C(∑[char[∑[n]]], 2)+n)^4`
-/

namespace A133821.P11743790187169698279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ 4

end

end A133821.P11743790187169698279

namespace A133821

/-- `(1-C(∑[char[∑[n]]], 2)+n)^4` -/
def P11743790187169698279.Spec : Prop :=
  ∀ n, P11743790187169698279.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P2474361720635113125

`(1-(C(∑[char[∑[n]]], 2)-n))^4`
-/

namespace A133821.P2474361720635113125
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) ^ 4

end

end A133821.P2474361720635113125

namespace A133821

/-- `(1-(C(∑[char[∑[n]]], 2)-n))^4` -/
def P2474361720635113125.Spec : Prop :=
  ∀ n, P2474361720635113125.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P8998316739873760654

`(1-C(∑[char[∑[n]]], 2)+n)²²`
-/

namespace A133821.P8998316739873760654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A133821.P8998316739873760654

namespace A133821

/-- `(1-C(∑[char[∑[n]]], 2)+n)²²` -/
def P8998316739873760654.Spec : Prop :=
  ∀ n, P8998316739873760654.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P17380296055645688268

`(1-(C(∑[char[∑[n]]], 2)-n))²²`
-/

namespace A133821.P17380296055645688268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) ^ 2) ^ 2

end

end A133821.P17380296055645688268

namespace A133821

/-- `(1-(C(∑[char[∑[n]]], 2)-n))²²` -/
def P17380296055645688268.Spec : Prop :=
  ∀ n, P17380296055645688268.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P5990406145746309019

`(n+1-C(round(sqrt(2*n+1)), 2))²²`
-/

namespace A133821.P5990406145746309019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ)) ^ 2) ^ 2

end

end A133821.P5990406145746309019

namespace A133821

/-- `(n+1-C(round(sqrt(2*n+1)), 2))²²` -/
def P5990406145746309019.Spec : Prop :=
  ∀ n, P5990406145746309019.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P540725888051782089

`((n+1)%(C(∑[char[∑[n]]], 2)+1)+1)²²`
-/

namespace A133821.P540725888051782089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) % (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1) + 1) ^ 2) ^ 2

end

end A133821.P540725888051782089

namespace A133821

/-- `((n+1)%(C(∑[char[∑[n]]], 2)+1)+1)²²` -/
def P540725888051782089.Spec : Prop :=
  ∀ n, (P540725888051782089.a n : ℤ) = A133821 (n + 1)

end A133821

/-! ## A133821.P6099152858526993787

`A133819(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A133821

/-- `A133819(n+1)²` -/
def P6099152858526993787.Spec : Prop :=
  ∀ n, P6099152858526993787.a n = A133821 (n + 1)

theorem P6099152858526993787.correct : P6099152858526993787.Spec := by
  intro n
  simp only [A133821, Nat.add_sub_cancel]

end A133821

/-! ## A133821.P8382510110489289012

`A002260(n+1)^4`
-/

namespace A133821.P8382510110489289012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 4

end

end A133821.P8382510110489289012

namespace A133821

/-- `A002260(n+1)^4` -/
def P8382510110489289012.Spec : Prop :=
  ∀ n, P8382510110489289012.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P13806051762154606087

`A140756(n+1)^4`
-/

namespace A133821.P13806051762154606087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) ^ 4

end

end A133821.P13806051762154606087

namespace A133821

/-- `A140756(n+1)^4` -/
def P13806051762154606087.Spec : Prop :=
  ∀ n, P13806051762154606087.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P6396847452316664360

`(A002262(n)+1)²²`
-/

namespace A133821.P6396847452316664360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002262 n + 1) ^ 2) ^ 2

end

end A133821.P6396847452316664360

namespace A133821

/-- `(A002262(n)+1)²²` -/
def P6396847452316664360.Spec : Prop :=
  ∀ n, P6396847452316664360.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P12374918080694397161

`A002260(comp[∑[n]])²²`
-/

namespace A133821.P12374918080694397161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2) ^ 2

end

end A133821.P12374918080694397161

namespace A133821

/-- `A002260(comp[∑[n]])²²` -/
def P12374918080694397161.Spec : Prop :=
  ∀ n, P12374918080694397161.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P7453138635929674092

`(sqrt(A143844(n))+1)²²`
-/

namespace A133821.P7453138635929674092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A143844 n : ℝ) + 1) ^ 2) ^ 2

end

end A133821.P7453138635929674092

namespace A133821

/-- `(sqrt(A143844(n))+1)²²` -/
def P7453138635929674092.Spec : Prop :=
  ∀ n, P7453138635929674092.a n = (A133821 (n + 1) : ℝ)

end A133821

/-! ## A133821.P10560914025714420387

`(1-A057944(n)+n)²²`
-/

namespace A133821.P10560914025714420387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A057944 n + (n : ℤ)) ^ 2) ^ 2

end

end A133821.P10560914025714420387

namespace A133821

/-- `(1-A057944(n)+n)²²` -/
def P10560914025714420387.Spec : Prop :=
  ∀ n, P10560914025714420387.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P3705845142263039993

`(A132118(n+1)-n)²²`
-/

namespace A133821.P3705845142263039993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A132118 (n + 1) - (n : ℤ)) ^ 2) ^ 2

end

end A133821.P3705845142263039993

namespace A133821

/-- `(A132118(n+1)-n)²²` -/
def P3705845142263039993.Spec : Prop :=
  ∀ n, P3705845142263039993.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P5937693336100442769

`∑[2-A130296(n+1)]²²`
-/

namespace A133821.P5937693336100442769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A133821.P5937693336100442769

namespace A133821

/-- `∑[2-A130296(n+1)]²²` -/
def P5937693336100442769.Spec : Prop :=
  ∀ n, P5937693336100442769.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P10749312595758642655

`(round(sqrt(2*n+1))-A025581(n))²²`
-/

namespace A133821.P10749312595758642655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A025581 n) ^ 2) ^ 2

end

end A133821.P10749312595758642655

namespace A133821

/-- `(round(sqrt(2*n+1))-A025581(n))²²` -/
def P10749312595758642655.Spec : Prop :=
  ∀ n, P10749312595758642655.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P3327643189548095314

`A110008(A174028(n))`
-/

namespace A133821.P3327643189548095314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A174028 n).toNat

end

end A133821.P3327643189548095314

namespace A133821

/-- `A110008(A174028(n))` -/
def P3327643189548095314.Spec : Prop :=
  ∀ n, P3327643189548095314.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P6080111128262824826

`A000583(A002260(n+1))`
-/

namespace A133821.P6080111128262824826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A002260 (n + 1)).toNat

end

end A133821.P6080111128262824826

namespace A133821

/-- `A000583(A002260(n+1))` -/
def P6080111128262824826.Spec : Prop :=
  ∀ n, P6080111128262824826.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P11704705079086979987

`A212764(A158405(n+1))`
-/

namespace A133821.P11704705079086979987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212764 (A158405 (n + 1)).toNat

end

end A133821.P11704705079086979987

namespace A133821

/-- `A212764(A158405(n+1))` -/
def P11704705079086979987.Spec : Prop :=
  ∀ n, P11704705079086979987.a n = A133821 (n + 1)

end A133821

/-! ## A133821.P8059359741614556690

`A000720(A037126(n+1))²²`
-/

namespace A133821.P8059359741614556690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000720 (A037126 (n + 1)).toNat ^ 2) ^ 2

end

end A133821.P8059359741614556690

namespace A133821

/-- `A000720(A037126(n+1))²²` -/
def P8059359741614556690.Spec : Prop :=
  ∀ n, P8059359741614556690.a n = A133821 (n + 1)

end A133821

/-!
# A133822: E.g.f. satisfies: A(x) = x*(sinh(tan(A(x)))+1).

The programs for A133822, there is no canonical definition to state claims against.
-/

/-! ## A133822.P15100325625239679028

`A133892(A004869(n+1))`
-/

namespace A133822.P15100325625239679028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133892 (A004869 (n + 1)).toNat

end

end A133822.P15100325625239679028

/-! ## A133822.P13980822407599338587

`A133892(A004880(n+1))`
-/

namespace A133822.P13980822407599338587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133892 (A004880 (n + 1)).toNat

end

end A133822.P13980822407599338587

/-! ## A133822.P16516972858264466136

`A133892(A032551(n+1))`
-/

namespace A133822.P16516972858264466136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133892 (A032551 (n + 1)).toNat

end

end A133822.P16516972858264466136

/-! ## A133822.P4767408817667255001

`A133892(A133898(n)-56)`
-/

namespace A133822.P4767408817667255001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133892 (A133898 n - 56).toNat

end

end A133822.P4767408817667255001

/-!
# A133823: Triangle whose rows are sequences of increasing and decreasing cubes:1; 1,8,1; 1,8,27,8,1; ... .

The programs for A133823, the canonical program `A133823.P6955847078214213763` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133823 has offset 0).

The definition of A133823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133823.P6955847078214213763

`A004737(n+1)^3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133823

/-- `A004737(n+1)^3` -/
def P6955847078214213763.Spec : Prop :=
  ∀ n, P6955847078214213763.a n = A133823 n

theorem P6955847078214213763.correct : P6955847078214213763.Spec := by
  intro n
  simp only [A133823]

end A133823

/-! ## A133823.P2216557965900768581

`sqrt(round(1/2+n-round(sqrt(n))²)²^3)`
-/

namespace A133823.P2216557965900768581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2) ^ 3 : ℝ)

end

end A133823.P2216557965900768581

namespace A133823

/-- `sqrt(round(1/2+n-round(sqrt(n))²)²^3)` -/
def P2216557965900768581.Spec : Prop :=
  ∀ n, P2216557965900768581.a n = (A133823 n : ℝ)

end A133823

/-! ## A133823.P9753537260910279553

`A098360(A133825(n))`
-/

namespace A133823.P9753537260910279553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (A133825 n).toNat

end

end A133823.P9753537260910279553

namespace A133823

/-- `A098360(A133825(n))` -/
def P9753537260910279553.Spec : Prop :=
  ∀ n, P9753537260910279553.a n = A133823 n

end A133823

/-! ## A133823.P202964680561585525

`A000578(A004737(n+1))`
-/

namespace A133823.P202964680561585525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004737 (n + 1)).toNat

end

end A133823.P202964680561585525

namespace A133823

/-- `A000578(A004737(n+1))` -/
def P202964680561585525.Spec : Prop :=
  ∀ n, P202964680561585525.a n = A133823 n

end A133823

/-! ## A133823.P16082315034604902000

`A133824(n)/A004737(n+1)`
-/

namespace A133823.P16082315034604902000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133824 n : ℚ) / (A004737 (n + 1) : ℚ)

end

end A133823.P16082315034604902000

namespace A133823

/-- `A133824(n)/A004737(n+1)` -/
def P16082315034604902000.Spec : Prop :=
  ∀ n, P16082315034604902000.a n = (A133823 n : ℚ)

end A133823

/-! ## A133823.P7101566581057658138

`A004737(n+1)*A124258(n+1)`
-/

namespace A133823.P7101566581057658138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A124258 (n + 1)

end

end A133823.P7101566581057658138

namespace A133823

/-- `A004737(n+1)*A124258(n+1)` -/
def P7101566581057658138.Spec : Prop :=
  ∀ n, P7101566581057658138.a n = A133823 n

end A133823

/-! ## A133823.P10155640830278019799

`A004737(A000027(n+1))²*A004737(n+1)`
-/

namespace A133823.P10155640830278019799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A000027 (n + 1)).toNat ^ 2 * A004737 (n + 1)

end

end A133823.P10155640830278019799

namespace A133823

/-- `A004737(A000027(n+1))²*A004737(n+1)` -/
def P10155640830278019799.Spec : Prop :=
  ∀ n, P10155640830278019799.a n = A133823 n

end A133823

/-! ## A133823.P4445892786210459067

`A004737(n+1)*A048760(A004737(n+1)²)`
-/

namespace A133823.P4445892786210459067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A048760 (A004737 (n + 1) ^ 2).toNat

end

end A133823.P4445892786210459067

namespace A133823

/-- `A004737(n+1)*A048760(A004737(n+1)²)` -/
def P4445892786210459067.Spec : Prop :=
  ∀ n, P4445892786210459067.a n = A133823 n

end A133823

/-! ## A133823.P13566211709588915767

`A004737(n+1)*A053187(A004737(n+1)²)`
-/

namespace A133823.P13566211709588915767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A053187 (A004737 (n + 1) ^ 2).toNat

end

end A133823.P13566211709588915767

namespace A133823

/-- `A004737(n+1)*A053187(A004737(n+1)²)` -/
def P13566211709588915767.Spec : Prop :=
  ∀ n, P13566211709588915767.a n = A133823 n

end A133823

/-! ## A133823.P13219027712469489494

`A004737(n+1)*A068165(A004737(n+1)²)`
-/

namespace A133823.P13219027712469489494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A068165 (A004737 (n + 1) ^ 2).toNat

end

end A133823.P13219027712469489494

namespace A133823

/-- `A004737(n+1)*A068165(A004737(n+1)²)` -/
def P13219027712469489494.Spec : Prop :=
  ∀ n, P13219027712469489494.a n = A133823 n

end A133823

/-! ## A133823.P12793837272616381188

`A004737(n+1)²*A004737(A181440(n+1))`
-/

namespace A133823.P12793837272616381188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2 * A004737 (A181440 (n + 1)).toNat

end

end A133823.P12793837272616381188

namespace A133823

/-- `A004737(n+1)²*A004737(A181440(n+1))` -/
def P12793837272616381188.Spec : Prop :=
  ∀ n, P12793837272616381188.a n = A133823 n

end A133823

/-! ## A133823.P11372463663741557322

`A000290(A004737(n+1)²)/A004737(n+1)`
-/

namespace A133823.P11372463663741557322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A004737 (n + 1) ^ 2).toNat : ℚ) / (A004737 (n + 1) : ℚ)

end

end A133823.P11372463663741557322

namespace A133823

/-- `A000290(A004737(n+1)²)/A004737(n+1)` -/
def P11372463663741557322.Spec : Prop :=
  ∀ n, P11372463663741557322.a n = (A133823 n : ℚ)

end A133823

/-! ## A133823.P2762954897664256115

`A002620(2*A004737(n+1))*A004737(n+1)`
-/

namespace A133823.P2762954897664256115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A004737 (n + 1)).toNat * A004737 (n + 1)

end

end A133823.P2762954897664256115

namespace A133823

/-- `A002620(2*A004737(n+1))*A004737(n+1)` -/
def P2762954897664256115.Spec : Prop :=
  ∀ n, P2762954897664256115.a n = A133823 n

end A133823

/-! ## A133823.P13777080896481116273

`A004739(A164386(n+1))²*A004739(A164386(n+1))`
-/

namespace A133823.P13777080896481116273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A164386 (n + 1)).toNat ^ 2 * A004739 (A164386 (n + 1)).toNat

end

end A133823.P13777080896481116273

namespace A133823

/-- `A004739(A164386(n+1))²*A004739(A164386(n+1))` -/
def P13777080896481116273.Spec : Prop :=
  ∀ n, P13777080896481116273.a n = A133823 n

end A133823

/-! ## A133823.P14448806111985840283

`A004739(comp[n²])^3`
-/

namespace A133823.P14448806111985840283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 3

end

end A133823.P14448806111985840283

namespace A133823

/-- `A004739(comp[n²])^3` -/
def P14448806111985840283.Spec : Prop :=
  ∀ n, P14448806111985840283.a n = A133823 n

end A133823

/-! ## A133823.P15215373257727661709

`A053615(∑[char[n²]]+n)^3`
-/

namespace A133823.P15215373257727661709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 3

end

end A133823.P15215373257727661709

namespace A133823

/-- `A053615(∑[char[n²]]+n)^3` -/
def P15215373257727661709.Spec : Prop :=
  ∀ n, P15215373257727661709.a n = A133823 n

end A133823

/-! ## A133823.P15074289133569647199

`A000093(A124258(n+1))`
-/

namespace A133823.P15074289133569647199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A124258 (n + 1)).toNat

end

end A133823.P15074289133569647199

namespace A133823

/-- `A000093(A124258(n+1))` -/
def P15074289133569647199.Spec : Prop :=
  ∀ n, P15074289133569647199.a n = A133823 n

end A133823

/-! ## A133823.P16812176364334903660

`A004737(n+1)²*A004739(comp[n²])`
-/

namespace A133823.P16812176364334903660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2 * A004739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A133823.P16812176364334903660

namespace A133823

/-- `A004737(n+1)²*A004739(comp[n²])` -/
def P16812176364334903660.Spec : Prop :=
  ∀ n, P16812176364334903660.a n = A133823 n

end A133823

/-! ## A133823.P586710045999570460

`A004737(n+1)²*A053615(∑[char[n²]]+n)`
-/

namespace A133823.P586710045999570460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 2 * A053615 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A133823.P586710045999570460

namespace A133823

/-- `A004737(n+1)²*A053615(∑[char[n²]]+n)` -/
def P586710045999570460.Spec : Prop :=
  ∀ n, P586710045999570460.a n = A133823 n

end A133823

/-! ## A133823.P17829503449265801516

`A004739(A124258(n+1)+1)*A124258(n+1)`
-/

namespace A133823.P17829503449265801516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A124258 (n + 1) + 1).toNat * A124258 (n + 1)

end

end A133823.P17829503449265801516

namespace A133823

/-- `A004739(A124258(n+1)+1)*A124258(n+1)` -/
def P17829503449265801516.Spec : Prop :=
  ∀ n, P17829503449265801516.a n = A133823 n

end A133823

/-!
# A133824: Triangle whose rows are sequences of increasing and decreasing fourth powers: 1; 1,16,1; 1,16,81,16,1; ... .

The programs for A133824, the canonical program `A133824.P3351664802800838771` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133824 has offset 0).

The definition of A133824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124258, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133824.P3351664802800838771

`A124258(n+1)²`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133824

/-- `A124258(n+1)²` -/
def P3351664802800838771.Spec : Prop :=
  ∀ n, P3351664802800838771.a n = A133824 n

theorem P3351664802800838771.correct : P3351664802800838771.Spec := by
  intro n
  simp only [A133824]

end A133824

/-! ## A133824.P16313517360960392254

`A004737(n+1)^4`
-/

namespace A133824.P16313517360960392254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) ^ 4

end

end A133824.P16313517360960392254

namespace A133824

/-- `A004737(n+1)^4` -/
def P16313517360960392254.Spec : Prop :=
  ∀ n, P16313517360960392254.a n = A133824 n

end A133824

/-! ## A133824.P9900057418232486099

`round(1/2+n-round(sqrt(n))²)²²`
-/

namespace A133824.P9900057418232486099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2) ^ 2

end

end A133824.P9900057418232486099

namespace A133824

/-- `round(1/2+n-round(sqrt(n))²)²²` -/
def P9900057418232486099.Spec : Prop :=
  ∀ n, P9900057418232486099.a n = A133824 n

end A133824

/-! ## A133824.P15567876566343954372

`A133823(n)^(4/3)`
-/

namespace A133824.P15567876566343954372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℝ) ^ ((4 : ℚ) / 3 : ℝ)

end

end A133824.P15567876566343954372

namespace A133824

/-- `A133823(n)^(4/3)` -/
def P15567876566343954372.Spec : Prop :=
  ∀ n, P15567876566343954372.a n = (A133824 n : ℝ)

end A133824

/-! ## A133824.P13121493096624691692

`(-A004737(Δ[n²]-n))^4`
-/

namespace A133824.P13121493096624691692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A004737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) ^ 4

end

end A133824.P13121493096624691692

namespace A133824

/-- `(-A004737(Δ[n²]-n))^4` -/
def P13121493096624691692.Spec : Prop :=
  ∀ n, P13121493096624691692.a n = A133824 n

end A133824

/-! ## A133824.P7213203620280792213

`A133821(A133825(n))`
-/

namespace A133824.P7213203620280792213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133821 (A133825 n).toNat

end

end A133824.P7213203620280792213

namespace A133824

/-- `A133821(A133825(n))` -/
def P7213203620280792213.Spec : Prop :=
  ∀ n, P7213203620280792213.a n = A133824 n

end A133824

/-! ## A133824.P1332933097318663964

`A000583(A004737(n+1))`
-/

namespace A133824.P1332933097318663964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A004737 (n + 1)).toNat

end

end A133824.P1332933097318663964

namespace A133824

/-- `A000583(A004737(n+1))` -/
def P1332933097318663964.Spec : Prop :=
  ∀ n, P1332933097318663964.a n = A133824 n

end A133824

/-! ## A133824.P10958912761729650663

`A000290(A004737(n+1)²)`
-/

namespace A133824.P10958912761729650663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A004737 (n + 1) ^ 2).toNat

end

end A133824.P10958912761729650663

namespace A133824

/-- `A000290(A004737(n+1)²)` -/
def P10958912761729650663.Spec : Prop :=
  ∀ n, P10958912761729650663.a n = A133824 n

end A133824

/-! ## A133824.P1547627012065339709

`A004737(n+1)*A133823(n)`
-/

namespace A133824.P1547627012065339709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A133823 n

end

end A133824.P1547627012065339709

namespace A133824

/-- `A004737(n+1)*A133823(n)` -/
def P1547627012065339709.Spec : Prop :=
  ∀ n, P1547627012065339709.a n = A133824 n

end A133824

/-! ## A133824.P15913728600832296742

`A124258(n+1)*A133819(A133825(n))`
-/

namespace A133824.P15913728600832296742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124258 (n + 1) * A133819 (A133825 n).toNat

end

end A133824.P15913728600832296742

namespace A133824

/-- `A124258(n+1)*A133819(A133825(n))` -/
def P15913728600832296742.Spec : Prop :=
  ∀ n, P15913728600832296742.a n = A133824 n

end A133824

/-! ## A133824.P15954209193477692839

`A000290(A004737(n+1)*A004737(n+1))`
-/

namespace A133824.P15954209193477692839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A004737 (n + 1) * A004737 (n + 1)).toNat

end

end A133824.P15954209193477692839

namespace A133824

/-- `A000290(A004737(n+1)*A004737(n+1))` -/
def P15954209193477692839.Spec : Prop :=
  ∀ n, P15954209193477692839.a n = A133824 n

end A133824

/-! ## A133824.P6883523435142715615

`A133823(n)/A124258(n+1)*A133823(n)`
-/

namespace A133824.P6883523435142715615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℚ) / (A124258 (n + 1) : ℚ) * (A133823 n : ℚ)

end

end A133824.P6883523435142715615

namespace A133824

/-- `A133823(n)/A124258(n+1)*A133823(n)` -/
def P6883523435142715615.Spec : Prop :=
  ∀ n, P6883523435142715615.a n = (A133824 n : ℚ)

end A133824

/-! ## A133824.P13094250090750335191

`A004737(n+1)*A004737(n+1)*A124258(n+1)`
-/

namespace A133824.P13094250090750335191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A004737 (n + 1) * A124258 (n + 1)

end

end A133824.P13094250090750335191

namespace A133824

/-- `A004737(n+1)*A004737(n+1)*A124258(n+1)` -/
def P13094250090750335191.Spec : Prop :=
  ∀ n, P13094250090750335191.a n = A133824 n

end A133824

/-! ## A133824.P15169927206744207343

`A004739(comp[n²])^4`
-/

namespace A133824.P15169927206744207343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 4

end

end A133824.P15169927206744207343

namespace A133824

/-- `A004739(comp[n²])^4` -/
def P15169927206744207343.Spec : Prop :=
  ∀ n, P15169927206744207343.a n = A133824 n

end A133824

/-! ## A133824.P6713045398511468086

`A053615(∑[char[n²]]+n)^4`
-/

namespace A133824.P6713045398511468086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 4

end

end A133824.P6713045398511468086

namespace A133824

/-- `A053615(∑[char[n²]]+n)^4` -/
def P6713045398511468086.Spec : Prop :=
  ∀ n, P6713045398511468086.a n = A133824 n

end A133824

/-! ## A133824.P14256098895661157769

`A133821(2*A124258(n+1))`
-/

namespace A133824.P14256098895661157769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133821 (2 * A124258 (n + 1)).toNat

end

end A133824.P14256098895661157769

namespace A133824

/-- `A133821(2*A124258(n+1))` -/
def P14256098895661157769.Spec : Prop :=
  ∀ n, P14256098895661157769.a n = A133824 n

end A133824

/-! ## A133824.P11497633490927361131

`A133821(A124258(n+1)+A124258(n+1))`
-/

namespace A133824.P11497633490927361131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133821 (A124258 (n + 1) + A124258 (n + 1)).toNat

end

end A133824.P11497633490927361131

namespace A133824

/-- `A133821(A124258(n+1)+A124258(n+1))` -/
def P11497633490927361131.Spec : Prop :=
  ∀ n, P11497633490927361131.a n = A133824 n

end A133824

/-! ## A133824.P5648219658793314356

`A253909(A325181(n)²)`
-/

namespace A133824.P5648219658793314356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (A325181 n ^ 2).toNat

end

end A133824.P5648219658793314356

namespace A133824

/-- `A253909(A325181(n)²)` -/
def P5648219658793314356.Spec : Prop :=
  ∀ n, P5648219658793314356.a n = A133824 n

end A133824

/-! ## A133824.P17038731350569791783

`A048760(A004737(n+1)²²)`
-/

namespace A133824.P17038731350569791783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 ((A004737 (n + 1) ^ 2) ^ 2).toNat

end

end A133824.P17038731350569791783

namespace A133824

/-- `A048760(A004737(n+1)²²)` -/
def P17038731350569791783.Spec : Prop :=
  ∀ n, P17038731350569791783.a n = A133824 n

end A133824

/-!
# A133825: Triangle whose rows are sequences of increasing and decreasing triangular numbers: 1; 1,3,1; 1,3,6,3,1; ... .

The programs for A133825, the canonical program `A133825.P698855924864636132` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133825 has offset 0).

The definition of A133825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004737, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133825.P698855924864636132

`A004737(n+1)*(A004737(n+1)+1)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133825

/-- `A004737(n+1)*(A004737(n+1)+1)/2` -/
def P698855924864636132.Spec : Prop :=
  ∀ n, P698855924864636132.a n = (A133825 n : ℚ)

end A133825

/-! ## A133825.P2887371421469676610

`C(A004737(n+1)+1, 2)`
-/

namespace A133825.P2887371421469676610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004737 (n + 1) + 1).toNat 2

end

end A133825.P2887371421469676610

namespace A133825

/-- `C(A004737(n+1)+1, 2)` -/
def P2887371421469676610.Spec : Prop :=
  ∀ n, (P2887371421469676610.a n : ℤ) = A133825 n

end A133825

/-! ## A133825.P4002533717782271786

`A000217(A004737(n+1))`
-/

namespace A133825.P4002533717782271786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004737 (n + 1)).toNat

end

end A133825.P4002533717782271786

namespace A133825

/-- `A000217(A004737(n+1))` -/
def P4002533717782271786.Spec : Prop :=
  ∀ n, P4002533717782271786.a n = A133825 n

end A133825

/-! ## A133825.P6743723590358931913

`A037458(A124258(n+1))`
-/

namespace A133825.P6743723590358931913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A124258 (n + 1)).toNat

end

end A133825.P6743723590358931913

namespace A133825

/-- `A037458(A124258(n+1))` -/
def P6743723590358931913.Spec : Prop :=
  ∀ n, P6743723590358931913.a n = A133825 n

end A133825

/-! ## A133825.P6210455664992766710

`A000217(root(A133823(n), 3))`
-/

namespace A133825.P6210455664992766710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A133823 n : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A133825.P6210455664992766710

namespace A133825

/-- `A000217(root(A133823(n), 3))` -/
def P6210455664992766710.Spec : Prop :=
  ∀ n, P6210455664992766710.a n = A133825 n

end A133825

/-! ## A133825.P8394866241457453280

`A259549(A004737(n+1)²)`
-/

namespace A133825.P8394866241457453280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A004737 (n + 1) ^ 2).toNat

end

end A133825.P8394866241457453280

namespace A133825

/-- `A259549(A004737(n+1)²)` -/
def P8394866241457453280.Spec : Prop :=
  ∀ n, P8394866241457453280.a n = A133825 n

end A133825

/-! ## A133825.P17184668238902434247

`A161680(A004737(n+1)+1)`
-/

namespace A133825.P17184668238902434247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004737 (n + 1) + 1).toNat

end

end A133825.P17184668238902434247

namespace A133825

/-- `A161680(A004737(n+1)+1)` -/
def P17184668238902434247.Spec : Prop :=
  ∀ n, P17184668238902434247.a n = A133825 n

end A133825

/-! ## A133825.P908736814387189120

`A000037(A004737(n+1)²)/2`
-/

namespace A133825.P908736814387189120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A004737 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A133825.P908736814387189120

namespace A133825

/-- `A000037(A004737(n+1)²)/2` -/
def P908736814387189120.Spec : Prop :=
  ∀ n, P908736814387189120.a n = (A133825 n : ℚ)

end A133825

/-! ## A133825.P16286792742805913524

`A135668(A004737(n+1)²)/2`
-/

namespace A133825.P16286792742805913524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135668 (A004737 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A133825.P16286792742805913524

namespace A133825

/-- `A135668(A004737(n+1)²)/2` -/
def P16286792742805913524.Spec : Prop :=
  ∀ n, P16286792742805913524.a n = (A133825 n : ℚ)

end A133825

/-! ## A133825.P13479194035433933444

`A000217(∑[char[n²]]-A053615(n))`
-/

namespace A133825.P13479194035433933444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053615 n).toNat

end

end A133825.P13479194035433933444

namespace A133825

/-- `A000217(∑[char[n²]]-A053615(n))` -/
def P13479194035433933444.Spec : Prop :=
  ∀ n, P13479194035433933444.a n = A133825 n

end A133825

/-! ## A133825.P13465756393495502022

`A000096(A004737(n+1)-1)+1`
-/

namespace A133825.P13465756393495502022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004737 (n + 1) - 1).toNat + 1

end

end A133825.P13465756393495502022

namespace A133825

/-- `A000096(A004737(n+1)-1)+1` -/
def P13465756393495502022.Spec : Prop :=
  ∀ n, P13465756393495502022.a n = A133825 n

end A133825

/-! ## A133825.P9560158889580030624

`A007401(∑[n-A000194(n)²]+1)`
-/

namespace A133825.P9560158889580030624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000194 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A133825.P9560158889580030624

namespace A133825

/-- `A007401(∑[n-A000194(n)²]+1)` -/
def P9560158889580030624.Spec : Prop :=
  ∀ n, P9560158889580030624.a n = A133825 n

end A133825

/-! ## A133825.P4019610384928493789

`(A124258(n+1)+A004737(n+1))/2`
-/

namespace A133825.P4019610384928493789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124258 (n + 1) + A004737 (n + 1) : ℚ) / 2

end

end A133825.P4019610384928493789

namespace A133825

/-- `(A124258(n+1)+A004737(n+1))/2` -/
def P4019610384928493789.Spec : Prop :=
  ∀ n, P4019610384928493789.a n = (A133825 n : ℚ)

end A133825

/-! ## A133825.P8586777659615190660

`A259549(A004737(n+1)*A004737(n+1))`
-/

namespace A133825.P8586777659615190660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A004737 (n + 1) * A004737 (n + 1)).toNat

end

end A133825.P8586777659615190660

namespace A133825

/-- `A259549(A004737(n+1)*A004737(n+1))` -/
def P8586777659615190660.Spec : Prop :=
  ∀ n, P8586777659615190660.a n = A133825 n

end A133825

/-! ## A133825.P5249211074161237686

`A380763(A078358(n+1))`
-/

namespace A133825.P5249211074161237686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380763 (A078358 (n + 1)).toNat

end

end A133825.P5249211074161237686

namespace A133825

/-- `A380763(A078358(n+1))` -/
def P5249211074161237686.Spec : Prop :=
  ∀ n, P5249211074161237686.a n = A133825 n

end A133825

/-! ## A133825.P4630263780023685539

`filter[A380763(n), A023532(#)]`
-/

namespace A133825.P4630263780023685539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A133825.P4630263780023685539

namespace A133825

/-- `filter[A380763(n), A023532(#)]` -/
def P4630263780023685539.Spec : Prop :=
  ∀ n, P4630263780023685539.a n = A133825 n

end A133825

/-! ## A133825.P7006121649898750107

`filter[A380763(n), A073424(#)]`
-/

namespace A133825.P7006121649898750107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A133825.P7006121649898750107

namespace A133825

/-- `filter[A380763(n), A073424(#)]` -/
def P7006121649898750107.Spec : Prop :=
  ∀ n, P7006121649898750107.a n = A133825 n

end A133825

/-! ## A133825.P6562944990706021924

`filter[A380763(n), A276398(#)]`
-/

namespace A133825.P6562944990706021924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A133825.P6562944990706021924

namespace A133825

/-- `filter[A380763(n), A276398(#)]` -/
def P6562944990706021924.Spec : Prop :=
  ∀ n, P6562944990706021924.a n = A133825 n

end A133825

/-! ## A133825.P15161677203145221747

`A220693(A004737(n+1)²+1)`
-/

namespace A133825.P15161677203145221747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (A004737 (n + 1) ^ 2 + 1).toNat

end

end A133825.P15161677203145221747

namespace A133825

/-- `A220693(A004737(n+1)²+1)` -/
def P15161677203145221747.Spec : Prop :=
  ∀ n, P15161677203145221747.a n = A133825 n

end A133825

/-! ## A133825.P8070443153630729306

`A004526(A004737(n+1)+A004737(n+1)²)`
-/

namespace A133825.P8070443153630729306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004737 (n + 1) + A004737 (n + 1) ^ 2).toNat

end

end A133825.P8070443153630729306

namespace A133825

/-- `A004526(A004737(n+1)+A004737(n+1)²)` -/
def P8070443153630729306.Spec : Prop :=
  ∀ n, P8070443153630729306.a n = A133825 n

end A133825

/-!
# A133826: Triangle whose rows are sequences of increasing and decreasing tetrahedral numbers: 1; 1,4,1; 1,4,10,4,1; ... .

The programs for A133826, the canonical program `A133826.P5294897765685283564` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133826 has offset 0).

The definition of A133826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133826.P5294897765685283564

`C(A004737(n+1)+2, 3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133826

/-- `C(A004737(n+1)+2, 3)` -/
def P5294897765685283564.Spec : Prop :=
  ∀ n, (P5294897765685283564.a n : ℤ) = A133826 n

theorem P5294897765685283564.correct : P5294897765685283564.Spec := by
  intro n
  simp only [A133826]

end A133826

/-! ## A133826.P12022849551346123316

`A014370(A133825(n))`
-/

namespace A133826.P12022849551346123316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (A133825 n).toNat

end

end A133826.P12022849551346123316

namespace A133826

/-- `A014370(A133825(n))` -/
def P12022849551346123316.Spec : Prop :=
  ∀ n, P12022849551346123316.a n = A133826 n

end A133826

/-! ## A133826.P4834732709610281846

`A000292(A004737(n+1))`
-/

namespace A133826.P4834732709610281846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A004737 (n + 1)).toNat

end

end A133826.P4834732709610281846

namespace A133826

/-- `A000292(A004737(n+1))` -/
def P4834732709610281846.Spec : Prop :=
  ∀ n, P4834732709610281846.a n = A133826 n

end A133826

/-! ## A133826.P1357277083227670915

`A143368(A133825(n)+1)`
-/

namespace A133826.P1357277083227670915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143368 (A133825 n + 1).toNat

end

end A133826.P1357277083227670915

namespace A133826

/-- `A143368(A133825(n)+1)` -/
def P1357277083227670915.Spec : Prop :=
  ∀ n, P1357277083227670915.a n = A133826 n

end A133826

/-! ## A133826.P3399537473430827094

`A277949(2*A124258(n+1))`
-/

namespace A133826.P3399537473430827094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277949 (2 * A124258 (n + 1)).toNat

end

end A133826.P3399537473430827094

namespace A133826

/-- `A277949(2*A124258(n+1))` -/
def P3399537473430827094.Spec : Prop :=
  ∀ n, P3399537473430827094.a n = A133826 n

end A133826

/-! ## A133826.P8611572451928841276

`A006918(2*A004737(n+1))/2`
-/

namespace A133826.P8611572451928841276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (2 * A004737 (n + 1)).toNat : ℚ) / 2

end

end A133826.P8611572451928841276

namespace A133826

/-- `A006918(2*A004737(n+1))/2` -/
def P8611572451928841276.Spec : Prop :=
  ∀ n, P8611572451928841276.a n = (A133826 n : ℚ)

end A133826

/-! ## A133826.P10581175779887318311

`A000292(A004738(A124258(n+1)))`
-/

namespace A133826.P10581175779887318311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A004738 (A124258 (n + 1)).toNat).toNat

end

end A133826.P10581175779887318311

namespace A133826

/-- `A000292(A004738(A124258(n+1)))` -/
def P10581175779887318311.Spec : Prop :=
  ∀ n, P10581175779887318311.a n = A133826 n

end A133826

/-! ## A133826.P12524533819578914804

`A007318(A027379(A004737(n+1))+6)`
-/

namespace A133826.P12524533819578914804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A027379 (A004737 (n + 1)).toNat + 6).toNat

end

end A133826.P12524533819578914804

namespace A133826

/-- `A007318(A027379(A004737(n+1))+6)` -/
def P12524533819578914804.Spec : Prop :=
  ∀ n, P12524533819578914804.a n = A133826 n

end A133826

/-! ## A133826.P3633183764669197631

`A000292(A209302(n+1)-A000196(n))`
-/

namespace A133826.P3633183764669197631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A209302 (n + 1) - A000196 n).toNat

end

end A133826.P3633183764669197631

namespace A133826

/-- `A000292(A209302(n+1)-A000196(n))` -/
def P3633183764669197631.Spec : Prop :=
  ∀ n, P3633183764669197631.a n = A133826 n

end A133826

/-! ## A133826.P17630571666713531902

`A277949(A124258(n+1)+A124258(n+1))`
-/

namespace A133826.P17630571666713531902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277949 (A124258 (n + 1) + A124258 (n + 1)).toNat

end

end A133826.P17630571666713531902

namespace A133826

/-- `A277949(A124258(n+1)+A124258(n+1))` -/
def P17630571666713531902.Spec : Prop :=
  ∀ n, P17630571666713531902.a n = A133826 n

end A133826

/-! ## A133826.P2709351276166295529

`A006918(A004737(n+1)+A004737(n+1))/2`
-/

namespace A133826.P2709351276166295529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (A004737 (n + 1) + A004737 (n + 1)).toNat : ℚ) / 2

end

end A133826.P2709351276166295529

namespace A133826

/-- `A006918(A004737(n+1)+A004737(n+1))/2` -/
def P2709351276166295529.Spec : Prop :=
  ∀ n, P2709351276166295529.a n = (A133826 n : ℚ)

end A133826

/-!
# A133827: Number of solutions to x + 7 * y = 2 * n in triangular numbers.

The programs for A133827, the canonical program `A133827.P13919680985496141564` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133827 has offset 0).

The definition of A133827 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133827.P13919680985496141564

`A035162(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133827

/-- `A035162(2*n+1)` -/
def P13919680985496141564.Spec : Prop :=
  ∀ n, P13919680985496141564.a n = A133827 n

theorem P13919680985496141564.correct : P13919680985496141564.Spec := by
  intro n
  simp only [A133827]

end A133827

/-! ## A133827.P3304494112801670533

`A035182(2*n+1)`
-/

namespace A133827.P3304494112801670533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (2 * n + 1)

end

end A133827.P3304494112801670533

namespace A133827

/-- `A035182(2*n+1)` -/
def P3304494112801670533.Spec : Prop :=
  ∀ n, P3304494112801670533.a n = A133827 n

end A133827

/-! ## A133827.P15804526117302895240

`A110399(2*n+1)`
-/

namespace A133827.P15804526117302895240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (2 * n + 1)

end

end A133827.P15804526117302895240

namespace A133827

/-- `A110399(2*n+1)` -/
def P15804526117302895240.Spec : Prop :=
  ∀ n, P15804526117302895240.a n = A133827 n

end A133827

/-! ## A133827.P4521589025547575257

`A121454(2*n+1)`
-/

namespace A133827.P4521589025547575257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121454 (2 * n + 1)

end

end A133827.P4521589025547575257

namespace A133827

/-- `A121454(2*n+1)` -/
def P4521589025547575257.Spec : Prop :=
  ∀ n, P4521589025547575257.a n = A133827 n

end A133827

/-! ## A133827.P4206328257199997266

`A002652(Δ[n²])/2`
-/

namespace A133827.P4206328257199997266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A133827.P4206328257199997266

namespace A133827

/-- `A002652(Δ[n²])/2` -/
def P4206328257199997266.Spec : Prop :=
  ∀ n, P4206328257199997266.a n = (A133827 n : ℚ)

end A133827

/-! ## A133827.P9319360366300722236

`A033719(Δ[n²])/2`
-/

namespace A133827.P9319360366300722236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033719 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A133827.P9319360366300722236

namespace A133827

/-- `A033719(Δ[n²])/2` -/
def P9319360366300722236.Spec : Prop :=
  ∀ n, P9319360366300722236.a n = (A133827 n : ℚ)

end A133827

/-! ## A133827.P17716136518869640065

`∑{d}[2*n+1, A175629(#)]`
-/

namespace A133827.P17716136518869640065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175629 d

end

end A133827.P17716136518869640065

namespace A133827

/-- `∑{d}[2*n+1, A175629(#)]` -/
def P17716136518869640065.Spec : Prop :=
  ∀ n, P17716136518869640065.a n = A133827 n

end A133827

/-! ## A133827.P17806496474110451374

`A001281(A002652(2*n+1))`
-/

namespace A133827.P17806496474110451374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002652 (2 * n + 1)).toNat

end

end A133827.P17806496474110451374

namespace A133827

/-- `A001281(A002652(2*n+1))` -/
def P17806496474110451374.Spec : Prop :=
  ∀ n, P17806496474110451374.a n = A133827 n

end A133827

/-! ## A133827.P5144909733968510757

`A001281(A033719(2*n+1))`
-/

namespace A133827.P5144909733968510757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033719 (2 * n + 1)).toNat

end

end A133827.P5144909733968510757

namespace A133827

/-- `A001281(A033719(2*n+1))` -/
def P5144909733968510757.Spec : Prop :=
  ∀ n, P5144909733968510757.a n = A133827 n

end A133827

/-! ## A133827.P12651956090872110909

`A004524(A033719(2*n+1)+1)`
-/

namespace A133827.P12651956090872110909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A033719 (2 * n + 1) + 1).toNat

end

end A133827.P12651956090872110909

namespace A133827

/-- `A004524(A033719(2*n+1)+1)` -/
def P12651956090872110909.Spec : Prop :=
  ∀ n, P12651956090872110909.a n = A133827 n

end A133827

/-! ## A133827.P9690525372561466320

`A004526(A033719(2*n+1)+1)`
-/

namespace A133827.P9690525372561466320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033719 (2 * n + 1) + 1).toNat

end

end A133827.P9690525372561466320

namespace A133827

/-- `A004526(A033719(2*n+1)+1)` -/
def P9690525372561466320.Spec : Prop :=
  ∀ n, P9690525372561466320.a n = A133827 n

end A133827

/-! ## A133827.P9160327711902814763

`A028242(A033719(2*n+1)+1)`
-/

namespace A133827.P9160327711902814763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A033719 (2 * n + 1) + 1).toNat

end

end A133827.P9160327711902814763

namespace A133827

/-- `A028242(A033719(2*n+1)+1)` -/
def P9160327711902814763.Spec : Prop :=
  ∀ n, P9160327711902814763.a n = A133827 n

end A133827

/-! ## A133827.P4244006326967511647

`A123108(A033719(2*n+1)+1)`
-/

namespace A133827.P4244006326967511647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A033719 (2 * n + 1) + 1).toNat

end

end A133827.P4244006326967511647

namespace A133827

/-- `A123108(A033719(2*n+1)+1)` -/
def P4244006326967511647.Spec : Prop :=
  ∀ n, P4244006326967511647.a n = A133827 n

end A133827

/-! ## A133827.P4695981930254889268

`A002265(2*A033719(2*n+1))`
-/

namespace A133827.P4695981930254889268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A033719 (2 * n + 1)).toNat

end

end A133827.P4695981930254889268

namespace A133827

/-- `A002265(2*A033719(2*n+1))` -/
def P4695981930254889268.Spec : Prop :=
  ∀ n, P4695981930254889268.a n = A133827 n

end A133827

/-! ## A133827.P17327559244250625379

`A216512(8*(2*n+1))`
-/

namespace A133827.P17327559244250625379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216512 (8 * (2 * n + 1))

end

end A133827.P17327559244250625379

namespace A133827

/-- `A216512(8*(2*n+1))` -/
def P17327559244250625379.Spec : Prop :=
  ∀ n, P17327559244250625379.a n = A133827 n

end A133827

/-! ## A133827.P13708927306247087407

`A002408(2*n+1)%7`
-/

namespace A133827.P13708927306247087407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002408 (2 * n + 1)) 7

end

end A133827.P13708927306247087407

namespace A133827

/-- `A002408(2*n+1)%7` -/
def P13708927306247087407.Spec : Prop :=
  ∀ n, P13708927306247087407.a n = A133827 n

end A133827

/-! ## A133827.P12030563811480181568

`A216511(8*(2*n+1))`
-/

namespace A133827.P12030563811480181568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216511 (8 * (2 * n + 1))

end

end A133827.P12030563811480181568

namespace A133827

/-- `A216511(8*(2*n+1))` -/
def P12030563811480181568.Spec : Prop :=
  ∀ n, P12030563811480181568.a n = A133827 n

end A133827

/-! ## A133827.P13709351476456174723

`A073706(2*n+1)%7`
-/

namespace A133827.P13709351476456174723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073706 (2 * n + 1)) 7

end

end A133827.P13709351476456174723

namespace A133827

/-- `A073706(2*n+1)%7` -/
def P13709351476456174723.Spec : Prop :=
  ∀ n, P13709351476456174723.a n = A133827 n

end A133827

/-! ## A133827.P1082060874115228756

`A397518(n)/2`
-/

namespace A133827.P1082060874115228756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397518 n : ℚ) / 2

end

end A133827.P1082060874115228756

namespace A133827

/-- `A397518(n)/2` -/
def P1082060874115228756.Spec : Prop :=
  ∀ n, P1082060874115228756.a n = (A133827 n : ℚ)

end A133827

/-!
# A133828: a(n) = the smallest "isolated divisor" of n, or 0 if no such divisor exists. A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A133828, there is no canonical definition to state claims against.
-/

/-! ## A133828.P15685686635323249327

`and(A138221(n+1), A325563(A279253(n)))`
-/

namespace A133828.P15685686635323249327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138221 (n + 1)) (A325563 (A279253 n).toNat)

end

end A133828.P15685686635323249327

/-! ## A133828.P5739668715192613998

`A052409(A024500(n+1))*A152271(n)`
-/

namespace A133828.P5739668715192613998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A024500 (n + 1)).toNat * A152271 n

end

end A133828.P5739668715192613998

/-!
# A133829: a(n) = the largest "non-isolated divisor" of 2n. A positive divisor k of n is non-isolated if k-1 or k+1 also divides n.

The programs for A133829, there is no canonical definition to state claims against.
-/

/-! ## A133829.P14709752935612941803

`A083312(n+1)+1`
-/

namespace A133829.P14709752935612941803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (n + 1) + 1

end

end A133829.P14709752935612941803

/-! ## A133829.P2722648820872592186

`ceil(sqrt(2*A115017(n+1)))`
-/

namespace A133829.P2722648820872592186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A115017 (n + 1) : ℝ)⌉

end

end A133829.P2722648820872592186

/-! ## A133829.P15179941644994843563

`round(sqrt(2*A115017(C(n+1, n))))+1`
-/

namespace A133829.P15179941644994843563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A115017 (Nat.choose (n + 1) n) : ℝ)) + 1

end

end A133829.P15179941644994843563

/-! ## A133829.P13370744035398555090

`floor(sqrt(2*A115017(1-char[1]+n)))+1`
-/

namespace A133829.P13370744035398555090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A115017 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat) + 1

end

end A133829.P13370744035398555090

/-! ## A133829.P14627098619216747958

`A014430(A115017(n+1))`
-/

namespace A133829.P14627098619216747958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A115017 (n + 1)).toNat

end

end A133829.P14627098619216747958

/-! ## A133829.P4793897195102183610

`A002024(A115017(n+1)+1)`
-/

namespace A133829.P4793897195102183610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A115017 (n + 1) + 1).toNat

end

end A133829.P4793897195102183610

/-! ## A133829.P851968897293846805

`A003057(A115017(n+1)+1)`
-/

namespace A133829.P851968897293846805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A115017 (n + 1) + 1).toNat

end

end A133829.P851968897293846805

/-! ## A133829.P2624926104079347853

`A003506(A115017(n+1)+1)`
-/

namespace A133829.P2624926104079347853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A115017 (n + 1) + 1).toNat

end

end A133829.P2624926104079347853

/-! ## A133829.P17255619873792488227

`A004736(A115017(n+1)+1)`
-/

namespace A133829.P17255619873792488227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A115017 (n + 1) + 1).toNat

end

end A133829.P17255619873792488227

/-! ## A133829.P5957615332745233532

`floor(sqrt(2*A115017(n+1)))%A000040(n+1)+1`
-/

namespace A133829.P5957615332745233532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (2 * A115017 (n + 1))) (A000040 (n + 1)) + 1

end

end A133829.P5957615332745233532

/-!
# A133830: Least positive number k < n such that the binary trinomial 1 + 2^n + 2^k is prime, or 0 if there is no such k.

The programs for A133830, there is no canonical definition to state claims against.
-/

/-! ## A133830.P13406730754982780776

`A133831(n+2)%A133832(n+2)`
-/

namespace A133830.P13406730754982780776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133831 (n + 2)) (A133832 (n + 2))

end

end A133830.P13406730754982780776

/-! ## A133830.P11374955950027376875

`A133831(n+2)%A018900(A089408(n))`
-/

namespace A133830.P11374955950027376875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133831 (n + 2)) (A018900 (A089408 n).toNat)

end

end A133830.P11374955950027376875

/-! ## A133830.P9585094857782093862

`A067760(A011782(n+2))%A125987(n+3)`
-/

namespace A133830.P9585094857782093862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067760 (A011782 (n + 2)).toNat) (A125987 (n + 3))

end

end A133830.P9585094857782093862

/-!
# A133831: Least positive number k != n such that the binary trinomial 1 + 2^n + 2^k is prime, or 0 if there is no such k.

The programs for A133831, there is no canonical definition to state claims against.
-/

/-! ## A133831.P10440209995457133317

`A067760(A171559(n))`
-/

namespace A133831.P10440209995457133317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A171559 n).toNat

end

end A133831.P10440209995457133317

/-! ## A133831.P10670540415824710762

`A067760(xor(1, A000051(n)))`
-/

namespace A133831.P10670540415824710762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (Int.xor 1 (A000051 n)).toNat

end

end A133831.P10670540415824710762

/-! ## A133831.P9798914312016429033

`A067760(2^n)+A000007(n)`
-/

namespace A133831.P9798914312016429033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (2 ^ n) + A000007 n

end

end A133831.P9798914312016429033

/-! ## A133831.P16242595853632276410

`A067760(A000079(n))+floor(1/(n+1))`
-/

namespace A133831.P16242595853632276410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A000079 n).toNat + ⌊1 / (n + 1 : ℚ)⌋

end

end A133831.P16242595853632276410

/-! ## A133831.P1925501045330068464

`A067760(A000079(n)+A000038(n))`
-/

namespace A133831.P1925501045330068464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (A000079 n + A000038 n).toNat

end

end A133831.P1925501045330068464

/-!
# A133833: Smallest and largest primes with number of decimal digits equal to n-th prime.

The programs for A133833, there is no canonical definition to state claims against.
-/

/-! ## A133833.P17380929793235777724

`∪[A064490(n+1), A133836(n+1)]`
-/

namespace A133833.P17380929793235777724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133833.P17380929793235777724

/-! ## A133833.P1356234438819382649

`∪[A003618(A000040(n+1)), A064490(n+1)]`
-/

namespace A133833.P1356234438819382649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133833.P1356234438819382649

/-! ## A133833.P11897962219496548024

`∪[A003617(A000040(n+1)), A133836(n+1)]`
-/

namespace A133833.P11897962219496548024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133833.P11897962219496548024

/-! ## A133833.P13896033100006177545

`∪[A003618(A006093(n+1)+1), A064490(n+1)]`
-/

namespace A133833.P13896033100006177545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (A006093 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133833.P13896033100006177545

/-! ## A133833.P11668444826528161532

`∪[A003617(A006093(n+1)+1), A133836(n+1)]`
-/

namespace A133833.P11668444826528161532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A006093 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133833.P11668444826528161532

/-!
# A133835: Slowest increasing sequence of primes such that two neighbor terms share at least two digits (counted with multiplicity).

The programs for A133835, there is no canonical definition to state claims against.
-/

/-! ## A133835.P13411237675429673888

`p?[A222212(A175839(n+1))+n]`
-/

namespace A133835.P13411237675429673888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 (A175839 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133835.P13411237675429673888

/-! ## A133835.P17707609116375235697

`A000040(A046511(n+1)%A014120(2*n+1))`
-/

namespace A133835.P17707609116375235697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A046511 (n + 1)) (A014120 (2 * n + 1))).toNat

end

end A133835.P17707609116375235697

/-!
# A133836: Largest prime with number of decimal digits equal to n-th prime.

The programs for A133836, there is no canonical definition to state claims against.
-/

/-! ## A133836.P9206975547186571724

`A003618(A000040(n+1))`
-/

namespace A133836.P9206975547186571724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (A000040 (n + 1)).toNat

end

end A133836.P9206975547186571724

/-! ## A133836.P2001302550144731924

`A003618(record[A006530(n+2)])`
-/

namespace A133836.P2001302550144731924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133836.P2001302550144731924

/-! ## A133836.P502739720354250479

`A003618(record[A020639(n+2)])`
-/

namespace A133836.P502739720354250479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133836.P502739720354250479

/-! ## A133836.P6650889871551699882

`A003618(A006093(n+1)+1)`
-/

namespace A133836.P6650889871551699882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (A006093 (n + 1) + 1).toNat

end

end A133836.P6650889871551699882

/-! ## A133836.P5161898953409773241

`A101592(2*A000040(n+1))`
-/

namespace A133836.P5161898953409773241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * A000040 (n + 1)).toNat

end

end A133836.P5161898953409773241

/-!
# A133837: Semiprimes from partition of sequence of positive integers.

The programs for A133837, there is no canonical definition to state claims against.
-/

/-! ## A133837.P2900906440133243225

`Δ[C(A109825(n+1), 2)]`
-/

namespace A133837.P2900906440133243225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109825 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A133837.P2900906440133243225

/-! ## A133837.P18440174412925635628

`Δ[A145018(A109825(n+1))]`
-/

namespace A133837.P18440174412925635628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (A109825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133837.P18440174412925635628

/-! ## A133837.P16011179156888125664

`Δ[A000124(A109825(n+1)-1)]`
-/

namespace A133837.P16011179156888125664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A109825 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133837.P16011179156888125664

/-! ## A133837.P5432244927606506070

`Δ[A000217(A109825(n+1)-1)]`
-/

namespace A133837.P5432244927606506070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A109825 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133837.P5432244927606506070

/-! ## A133837.P5835818006524375066

`Δ[A161680(A109825(-xor(n, -1)))]`
-/

namespace A133837.P5835818006524375066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A109825 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133837.P5835818006524375066

/-! ## A133837.P6390517081199694167

`A004525(Δ[A002061(A109825(n+1))])`
-/

namespace A133837.P6390517081199694167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A109825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A133837.P6390517081199694167

/-! ## A133837.P2624290078066447406

`A014682(Δ[A002061(A109825(n+1))])`
-/

namespace A133837.P2624290078066447406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A109825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A133837.P2624290078066447406

/-! ## A133837.P6394397957939606902

`A026741(Δ[A002061(A109825(n+1))])`
-/

namespace A133837.P6394397957939606902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A109825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A133837.P6394397957939606902

/-! ## A133837.P6696145739118018469

`A038572(Δ[A002061(A109825(n+1))])`
-/

namespace A133837.P6696145739118018469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A109825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (n + 1) - f1 n).toNat

end

end A133837.P6696145739118018469

/-! ## A133837.P9433250156057164885

`Δ[A002061(A109825(n+1))/A020639(2*(n+1))]`
-/

namespace A133837.P9433250156057164885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 (A109825 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133837.P9433250156057164885

/-!
# A133846: a(n)*a(n-7) = a(n-1)a(n-6)+a(n-3)+a(n-4) with initial terms a(1)=...=a(7)=1.

The programs for A133846, the canonical program `A133846.P3881167313828599608` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133846 has offset 1).

The definition of A133846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133846.P3881167313828599608

`(a(n-1)*a(n-6)+a(n-3)+a(n-4))/a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133846

/-- `(a(n-1)*a(n-6)+a(n-3)+a(n-4))/a(n-7)` -/
def P3881167313828599608.Spec : Prop :=
  ∀ n, P3881167313828599608.a n = (A133846 (n + 1) : ℚ)

end A133846

/-! ## A133846.P6634042942088964673

`A178832(A186085(n))`
-/

namespace A133846.P6634042942088964673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A186085 n).toNat

end

end A133846.P6634042942088964673

namespace A133846

/-- `A178832(A186085(n))` -/
def P6634042942088964673.Spec : Prop :=
  ∀ n, P6634042942088964673.a n = A133846 (n + 1)

end A133846

/-! ## A133846.P13213795708816164219

`A178832(A293545(n))`
-/

namespace A133846.P13213795708816164219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A293545 n).toNat

end

end A133846.P13213795708816164219

namespace A133846

/-- `A178832(A293545(n))` -/
def P13213795708816164219.Spec : Prop :=
  ∀ n, P13213795708816164219.a n = A133846 (n + 1)

end A133846

/-! ## A133846.P7035966586978754155

`A178832(A293546(n))`
-/

namespace A133846.P7035966586978754155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A293546 n).toNat

end

end A133846.P7035966586978754155

namespace A133846

/-- `A178832(A293546(n))` -/
def P7035966586978754155.Spec : Prop :=
  ∀ n, P7035966586978754155.a n = A133846 (n + 1)

end A133846

/-! ## A133846.P4063454608478387133

`A178832(A293547(n))`
-/

namespace A133846.P4063454608478387133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A293547 n).toNat

end

end A133846.P4063454608478387133

namespace A133846

/-- `A178832(A293547(n))` -/
def P4063454608478387133.Spec : Prop :=
  ∀ n, P4063454608478387133.a n = A133846 (n + 1)

end A133846

/-!
# A133847: a(n)*a(n-9) = a(n-1)*a(n-8)+a(n-4)+a(n-5) with initial terms a(1)=...=a(9)=1.

The programs for A133847, the canonical program `A133847.P7648430169081235813` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133847 has offset 1).

The definition of A133847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133847.P7648430169081235813

`(a(n-1)*a(n-8)+a(n-4)+a(n-5))/a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133847

/-- `(a(n-1)*a(n-8)+a(n-4)+a(n-5))/a(n-9)` -/
def P7648430169081235813.Spec : Prop :=
  ∀ n, P7648430169081235813.a n = (A133847 (n + 1) : ℚ)

end A133847

/-!
# A133851: Sloping binary representation of powers of 4 (A000302), slope = -1 .

The programs for A133851, the canonical program `A133851.P11327651455349499787` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133851 has offset 0).

The definition of A133851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133851.P4974637693294775830

`Δ[2^ceil(n/3)]²`
-/

namespace A133851.P4974637693294775830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 3⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A133851.P4974637693294775830

namespace A133851

/-- `Δ[2^ceil(n/3)]²` -/
def P4974637693294775830.Spec : Prop :=
  ∀ n, P4974637693294775830.a n = (A133851 n : ℚ)

end A133851

/-! ## A133851.P11327651455349499787

`4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133851

/-- `4*a(n-3)` -/
def P11327651455349499787.Spec : Prop :=
  ∀ n, (P11327651455349499787.a n : ℤ) = A133851 n

theorem P11327651455349499787.correct : P11327651455349499787.Spec := by
  intro n
  simp only [A133851]

end A133851

/-! ## A133851.P17843799797083876285

`a(n-3)/(1/2)²` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A133851.P17843799797083876285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ 2

end

end A133851.P17843799797083876285

namespace A133851

/-- `a(n-3)/(1/2)²` -/
def P17843799797083876285.Spec : Prop :=
  ∀ n, P17843799797083876285.a n = (A133851 n : ℚ)

end A133851

/-! ## A133851.P9398704416287997099

`a(n-3)+lcm(3, a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A133851.P9398704416287997099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) + Nat.lcm 3 (a (n - 3))

end

end A133851.P9398704416287997099

namespace A133851

/-- `a(n-3)+lcm(3, a(n-3))` -/
def P9398704416287997099.Spec : Prop :=
  ∀ n, (P9398704416287997099.a n : ℤ) = A133851 n

end A133851

/-! ## A133851.P562979890716786178

`A168090(n-1)²-a(n-1)` with `a(0)=1`
-/

namespace A133851.P562979890716786178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168090 (n - 1) ^ 2 - a (n - 1)

end

end A133851.P562979890716786178

namespace A133851

/-- `A168090(n-1)²-a(n-1)` -/
def P562979890716786178.Spec : Prop :=
  ∀ n, P562979890716786178.a n = A133851 n

end A133851

/-! ## A133851.P15583024746813907091

`A102561(A004773(n))`
-/

namespace A133851.P15583024746813907091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102561 (A004773 n).toNat

end

end A133851.P15583024746813907091

namespace A133851

/-- `A102561(A004773(n))` -/
def P15583024746813907091.Spec : Prop :=
  ∀ n, P15583024746813907091.a n = A133851 n

end A133851

/-! ## A133851.P907480800558574158

`A199572(A004396(n))`
-/

namespace A133851.P907480800558574158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199572 (A004396 n).toNat

end

end A133851.P907480800558574158

namespace A133851

/-- `A199572(A004396(n))` -/
def P907480800558574158.Spec : Prop :=
  ∀ n, P907480800558574158.a n = A133851 n

end A133851

/-! ## A133851.P16979234732103061597

`A102561(A131452(n))`
-/

namespace A133851.P16979234732103061597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102561 (A131452 n).toNat

end

end A133851.P16979234732103061597

namespace A133851

/-- `A102561(A131452(n))` -/
def P16979234732103061597.Spec : Prop :=
  ∀ n, P16979234732103061597.a n = A133851 n

end A133851

/-! ## A133851.P16307686782648484077

`A199572(A092942(n))`
-/

namespace A133851.P16307686782648484077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199572 (A092942 n).toNat

end

end A133851.P16307686782648484077

namespace A133851

/-- `A199572(A092942(n))` -/
def P16307686782648484077.Spec : Prop :=
  ∀ n, P16307686782648484077.a n = A133851 n

end A133851

/-! ## A133851.P15589135423605931711

`A099430(A005131(n+1))`
-/

namespace A133851.P15589135423605931711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 (A005131 (n + 1)).toNat

end

end A133851.P15589135423605931711

namespace A133851

/-- `A099430(A005131(n+1))` -/
def P15589135423605931711.Spec : Prop :=
  ∀ n, P15589135423605931711.a n = A133851 n

end A133851

/-! ## A133851.P17934742873756676411

`A077958(A047240(n+1))`
-/

namespace A133851.P17934742873756676411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (A047240 (n + 1)).toNat

end

end A133851.P17934742873756676411

namespace A133851

/-- `A077958(A047240(n+1))` -/
def P17934742873756676411.Spec : Prop :=
  ∀ n, P17934742873756676411.a n = A133851 n

end A133851

/-! ## A133851.P18370531879465485086

`A119332(A047474(n+1))`
-/

namespace A133851.P18370531879465485086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A047474 (n + 1)).toNat

end

end A133851.P18370531879465485086

namespace A133851

/-- `A119332(A047474(n+1))` -/
def P18370531879465485086.Spec : Prop :=
  ∀ n, P18370531879465485086.a n = A133851 n

end A133851

/-! ## A133851.P13481269600407856997

`A119332(A047475(n+1))`
-/

namespace A133851.P13481269600407856997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A047475 (n + 1)).toNat

end

end A133851.P13481269600407856997

namespace A133851

/-- `A119332(A047475(n+1))` -/
def P13481269600407856997.Spec : Prop :=
  ∀ n, P13481269600407856997.a n = A133851 n

end A133851

/-! ## A133851.P3563876607700316231

`A168090(A088439(2*n))`
-/

namespace A133851.P3563876607700316231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168090 (A088439 (2 * n)).toNat

end

end A133851.P3563876607700316231

namespace A133851

/-- `A168090(A088439(2*n))` -/
def P3563876607700316231.Spec : Prop :=
  ∀ n, P3563876607700316231.a n = A133851 n

end A133851

/-! ## A133851.P15738951201663191820

`A017979(n)*A077958(n)`
-/

namespace A133851.P15738951201663191820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n * A077958 n

end

end A133851.P15738951201663191820

namespace A133851

/-- `A017979(n)*A077958(n)` -/
def P15738951201663191820.Spec : Prop :=
  ∀ n, P15738951201663191820.a n = A133851 n

end A133851

/-! ## A133851.P3243058201659424569

`A017980(n)*A077958(n)`
-/

namespace A133851.P3243058201659424569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 n * A077958 n

end

end A133851.P3243058201659424569

namespace A133851

/-- `A017980(n)*A077958(n)` -/
def P3243058201659424569.Spec : Prop :=
  ∀ n, P3243058201659424569.a n = A133851 n

end A133851

/-! ## A133851.P935808786428756877

`A017981(n)*A077958(n)`
-/

namespace A133851.P935808786428756877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n * A077958 n

end

end A133851.P935808786428756877

namespace A133851

/-- `A017981(n)*A077958(n)` -/
def P935808786428756877.Spec : Prop :=
  ∀ n, P935808786428756877.a n = A133851 n

end A133851

/-! ## A133851.P18084755888588785648

`A077959(n)*A077959(n)`
-/

namespace A133851.P18084755888588785648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 n * A077959 n

end

end A133851.P18084755888588785648

namespace A133851

/-- `A077959(n)*A077959(n)` -/
def P18084755888588785648.Spec : Prop :=
  ∀ n, P18084755888588785648.a n = A133851 n

end A133851

/-! ## A133851.P10258550679820663894

`A077958(n)*A078029(n)`
-/

namespace A133851.P10258550679820663894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n * A078029 n

end

end A133851.P10258550679820663894

namespace A133851

/-- `A077958(n)*A078029(n)` -/
def P10258550679820663894.Spec : Prop :=
  ∀ n, P10258550679820663894.a n = A133851 n

end A133851

/-! ## A133851.P4705081860784722796

`A077958(n)*A118263(n)`
-/

namespace A133851.P4705081860784722796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n * A118263 n

end

end A133851.P4705081860784722796

namespace A133851

/-- `A077958(n)*A118263(n)` -/
def P4705081860784722796.Spec : Prop :=
  ∀ n, P4705081860784722796.a n = A133851 n

end A133851

/-!
# A133853: a(n) = (64^n - 1)/63.

The programs for A133853, the canonical program `A133853.P11055336459851744303` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133853 has offset 0).

The definition of A133853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133853.P11055336459851744303

`(64^n-1)/63`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133853

/-- `(64^n-1)/63` -/
def P11055336459851744303.Spec : Prop :=
  ∀ n, P11055336459851744303.a n = (A133853 n : ℚ)

end A133853

/-! ## A133853.P2473336801027861844

`64*a(n-1)+1` with `a(0)=0`
-/

namespace A133853.P2473336801027861844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  64 * a (n - 1) + 1

end

end A133853.P2473336801027861844

namespace A133853

/-- `64*a(n-1)+1` -/
def P2473336801027861844.Spec : Prop :=
  ∀ n, (P2473336801027861844.a n : ℤ) = A133853 n

end A133853

/-! ## A133853.P5504535070660167066

`lcm(64, a(n-1))+1` with `a(0)=0`
-/

namespace A133853.P5504535070660167066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 64 (a (n - 1)) + 1

end

end A133853.P5504535070660167066

namespace A133853

/-- `lcm(64, a(n-1))+1` -/
def P5504535070660167066.Spec : Prop :=
  ∀ n, (P5504535070660167066.a n : ℤ) = A133853 n

end A133853

/-! ## A133853.P13819254637464232907

`or(1, 64*a(n-1))` with `a(0)=0`
-/

namespace A133853.P13819254637464232907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (64 * a (n - 1))

end

end A133853.P13819254637464232907

namespace A133853

/-- `or(1, 64*a(n-1))` -/
def P13819254637464232907.Spec : Prop :=
  ∀ n, (P13819254637464232907.a n : ℤ) = A133853 n

end A133853

/-! ## A133853.P10856773673143151017

`∑[64*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A133853.P10856773673143151017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  64 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133853.P10856773673143151017

namespace A133853

/-- `∑[64*a(n-1)]` -/
def P10856773673143151017.Spec : Prop :=
  ∀ n, (P10856773673143151017.a n : ℤ) = A133853 n

end A133853

/-! ## A133853.P6271026102341725364

`abs(xor(64*a(n-1), -1))` with `a(0)=0`
-/

namespace A133853.P6271026102341725364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (64 * a (n - 1)) (-1)|

end

end A133853.P6271026102341725364

namespace A133853

/-- `abs(xor(64*a(n-1), -1))` -/
def P6271026102341725364.Spec : Prop :=
  ∀ n, P6271026102341725364.a n = A133853 n

end A133853

/-! ## A133853.P8350551970680363763

`a(n-1)/(1/8)²+1` with `a(0)=0`
-/

namespace A133853.P8350551970680363763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 8) ^ 2 + 1

end

end A133853.P8350551970680363763

namespace A133853

/-- `a(n-1)/(1/8)²+1` -/
def P8350551970680363763.Spec : Prop :=
  ∀ n, P8350551970680363763.a n = (A133853 n : ℚ)

end A133853

/-! ## A133853.P5205140300830132273

`a(n-1)+(8^(n-1))²` with `a(0)=0`
-/

namespace A133853.P5205140300830132273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2

end

end A133853.P5205140300830132273

namespace A133853

/-- `a(n-1)+(8^(n-1))²` -/
def P5205140300830132273.Spec : Prop :=
  ∀ n, P5205140300830132273.a n = (A133853 n : ℚ)

end A133853

/-! ## A133853.P17627941343160037611

`or((8^(n-1))², a(n-1))` with `a(0)=0`
-/

namespace A133853.P17627941343160037611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (SequenceMachineLib.roundAway (((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2)) (a (n - 1))

end

end A133853.P17627941343160037611

namespace A133853

/-- `or((8^(n-1))², a(n-1))` -/
def P17627941343160037611.Spec : Prop :=
  ∀ n, P17627941343160037611.a n = A133853 n

end A133853

/-! ## A133853.P4283784932352870262

`xor((8^(n-1))², a(n-1))` with `a(0)=0`
-/

namespace A133853.P4283784932352870262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway (((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2)) (a (n - 1))

end

end A133853.P4283784932352870262

namespace A133853

/-- `xor((8^(n-1))², a(n-1))` -/
def P4283784932352870262.Spec : Prop :=
  ∀ n, P4283784932352870262.a n = A133853 n

end A133853

/-!
# A133855: Primes p such that p-1 and p+1 are abundant numbers.

The programs for A133855, the canonical program `A133855.P8562869399152242532` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133855 has offset 1).

The definition of A133855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133855.P8562869399152242532

`A276049((n+1)%(2*n+1)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133855

/-- `A276049((n+1)%(2*n+1)+1)` -/
def P8562869399152242532.Spec : Prop :=
  ∀ n, P8562869399152242532.a n = A133855 (n + 1)

theorem P8562869399152242532.correct : P8562869399152242532.Spec := by
  intro n
  simp only [A133855, Nat.add_sub_cancel]

end A133855

/-! ## A133855.P8040671147196766309

`A276049(A065475(n+1))`
-/

namespace A133855.P8040671147196766309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (A065475 (n + 1)).toNat

end

end A133855.P8040671147196766309

namespace A133855

/-- `A276049(A065475(n+1))` -/
def P8040671147196766309.Spec : Prop :=
  ∀ n, P8040671147196766309.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P10052381898340214225

`A276049(A181440(n+2))`
-/

namespace A133855.P10052381898340214225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (A181440 (n + 2)).toNat

end

end A133855.P10052381898340214225

namespace A133855

/-- `A276049(A181440(n+2))` -/
def P10052381898340214225.Spec : Prop :=
  ∀ n, P10052381898340214225.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P13955052546792705026

`A276049(A184985(n+2))`
-/

namespace A133855.P13955052546792705026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (A184985 (n + 2)).toNat

end

end A133855.P13955052546792705026

namespace A133855

/-- `A276049(A184985(n+2))` -/
def P13955052546792705026.Spec : Prop :=
  ∀ n, P13955052546792705026.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P10950621223348602524

`∩[A164320(n+1), A276049(n+1)]`
-/

namespace A133855.P10950621223348602524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P10950621223348602524

namespace A133855

/-- `∩[A164320(n+1), A276049(n+1)]` -/
def P10950621223348602524.Spec : Prop :=
  ∀ n, (P10950621223348602524.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P316513126342341780

`∩[A164318(n+1), A276049(n+1)]`
-/

namespace A133855.P316513126342341780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P316513126342341780

namespace A133855

/-- `∩[A164318(n+1), A276049(n+1)]` -/
def P316513126342341780.Spec : Prop :=
  ∀ n, (P316513126342341780.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P1504460302090095314

`p?[A231086(n+1)+1]`
-/

namespace A133855.P1504460302090095314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133855.P1504460302090095314

namespace A133855

/-- `p?[A231086(n+1)+1]` -/
def P1504460302090095314.Spec : Prop :=
  ∀ n, P1504460302090095314.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P7056754126850330355

`∩[A138837(n+1), A164320(n+1)]`
-/

namespace A133855.P7056754126850330355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P7056754126850330355

namespace A133855

/-- `∩[A138837(n+1), A164320(n+1)]` -/
def P7056754126850330355.Spec : Prop :=
  ∀ n, (P7056754126850330355.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P8515175745972740274

`∩[A181901(n+1), A276049(n+1)]`
-/

namespace A133855.P8515175745972740274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P8515175745972740274

namespace A133855

/-- `∩[A181901(n+1), A276049(n+1)]` -/
def P8515175745972740274.Spec : Prop :=
  ∀ n, (P8515175745972740274.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P9491597947502437805

`∩[A276049(n+1), A387959(n+1)]`
-/

namespace A133855.P9491597947502437805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P9491597947502437805

namespace A133855

/-- `∩[A276049(n+1), A387959(n+1)]` -/
def P9491597947502437805.Spec : Prop :=
  ∀ n, (P9491597947502437805.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P11594064731973725199

`A276049(p?[A001951(n)]%2+n+1)`
-/

namespace A133855.P11594064731973725199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 + (n : ℤ) + 1).toNat

end

end A133855.P11594064731973725199

namespace A133855

/-- `A276049(p?[A001951(n)]%2+n+1)` -/
def P11594064731973725199.Spec : Prop :=
  ∀ n, P11594064731973725199.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P16788257718708281001

`p?[Δ[A039725(n+1)²]]`
-/

namespace A133855.P16788257718708281001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133855.P16788257718708281001

namespace A133855

/-- `p?[Δ[A039725(n+1)²]]` -/
def P16788257718708281001.Spec : Prop :=
  ∀ n, P16788257718708281001.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P3361548050716950309

`∩[A164318(n+1), A316100(n+1)]`
-/

namespace A133855.P3361548050716950309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P3361548050716950309

namespace A133855

/-- `∩[A164318(n+1), A316100(n+1)]` -/
def P3361548050716950309.Spec : Prop :=
  ∀ n, (P3361548050716950309.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P3706586053770551837

`∩[A164320(n+1), A316100(n+1)]`
-/

namespace A133855.P3706586053770551837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P3706586053770551837

namespace A133855

/-- `∩[A164320(n+1), A316100(n+1)]` -/
def P3706586053770551837.Spec : Prop :=
  ∀ n, (P3706586053770551837.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P5027279782200568420

`p?[A005101(A303741(n+1))+1]`
-/

namespace A133855.P5027279782200568420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A303741 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133855.P5027279782200568420

namespace A133855

/-- `p?[A005101(A303741(n+1))+1]` -/
def P5027279782200568420.Spec : Prop :=
  ∀ n, P5027279782200568420.a n = A133855 (n + 1)

end A133855

/-! ## A133855.P8181297433582435769

`∩[A164320(n+1), A185208(n+1)]`
-/

namespace A133855.P8181297433582435769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P8181297433582435769

namespace A133855

/-- `∩[A164320(n+1), A185208(n+1)]` -/
def P8181297433582435769.Spec : Prop :=
  ∀ n, (P8181297433582435769.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P3714427992643010922

`∩[A164320(n+1), A294277(n+1)]`
-/

namespace A133855.P3714427992643010922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P3714427992643010922

namespace A133855

/-- `∩[A164320(n+1), A294277(n+1)]` -/
def P3714427992643010922.Spec : Prop :=
  ∀ n, (P3714427992643010922.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P17145561578412081096

`∩[A164320(n+1), A295584(n+1)]`
-/

namespace A133855.P17145561578412081096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P17145561578412081096

namespace A133855

/-- `∩[A164320(n+1), A295584(n+1)]` -/
def P17145561578412081096.Spec : Prop :=
  ∀ n, (P17145561578412081096.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P17544038991873829809

`∩[A161790(n+1), A164320(n+1)]`
-/

namespace A133855.P17544038991873829809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P17544038991873829809

namespace A133855

/-- `∩[A161790(n+1), A164320(n+1)]` -/
def P17544038991873829809.Spec : Prop :=
  ∀ n, (P17544038991873829809.a n : ℤ) = A133855 (n + 1)

end A133855

/-! ## A133855.P13645883444142491121

`∩[A276049(n+1), A349762(n+1)]`
-/

namespace A133855.P13645883444142491121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133855.P13645883444142491121

namespace A133855

/-- `∩[A276049(n+1), A349762(n+1)]` -/
def P13645883444142491121.Spec : Prop :=
  ∀ n, (P13645883444142491121.a n : ℤ) = A133855 (n + 1)

end A133855

/-!
# A133869: Numbers k such that 32*k + 1 is prime.

The programs for A133869, the canonical program `A133869.P3744791445234372630` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133869 has offset 1).

The definition of A133869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133869.P3744791445234372630

`floor(A133870(n+1)/32)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A133869

/-- `floor(A133870(n+1)/32)` -/
def P3744791445234372630.Spec : Prop :=
  ∀ n, P3744791445234372630.a n = A133869 (n + 1)

theorem P3744791445234372630.correct : P3744791445234372630.Spec := by
  intro n
  simp only [A133869, Nat.add_sub_cancel]

end A133869

/-! ## A133869.P390637240387595720

`record[A155942(n+2)/A020639(A155942(n+2))]`
-/

namespace A133869.P390637240387595720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155942 (n + 2) : ℚ) / (A020639 (A155942 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133869.P390637240387595720

namespace A133869

/-- `record[A155942(n+2)/A020639(A155942(n+2))]` -/
def P390637240387595720.Spec : Prop :=
  ∀ n, P390637240387595720.a n = (A133869 (n + 1) : ℚ)

end A133869

/-! ## A133869.P15400960637027818634

`floor(p?[a(n-1)+32]/32)` with `a(0)=1`
-/

namespace A133869.P15400960637027818634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 32⌋

end

end A133869.P15400960637027818634

namespace A133869

/-- `floor(p?[a(n-1)+32]/32)` -/
def P15400960637027818634.Spec : Prop :=
  ∀ n, P15400960637027818634.a n = A133869 (n + 1)

end A133869

/-! ## A133869.P562404078134648533

`eq[2, A305973(A158057(n))]`
-/

namespace A133869.P562404078134648533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A158057 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P562404078134648533

namespace A133869

/-- `eq[2, A305973(A158057(n))]` -/
def P562404078134648533.Spec : Prop :=
  ∀ n, (P562404078134648533.a n : ℤ) = A133869 (n + 1)

end A133869

/-! ## A133869.P15758709062115232942

`eq[1, A101264(16*n)]`
-/

namespace A133869.P15758709062115232942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (16 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P15758709062115232942

namespace A133869

/-- `eq[1, A101264(16*n)]` -/
def P15758709062115232942.Spec : Prop :=
  ∀ n, (P15758709062115232942.a n : ℤ) = A133869 (n + 1)

end A133869

/-! ## A133869.P12271926245178178174

`eq[1, A001222(32*n+1)]`
-/

namespace A133869.P12271926245178178174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (32 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P12271926245178178174

namespace A133869

/-- `eq[1, A001222(32*n+1)]` -/
def P12271926245178178174.Spec : Prop :=
  ∀ n, (P12271926245178178174.a n : ℤ) = A133869 (n + 1)

end A133869

/-! ## A133869.P3395168753664274701

`eq[2, A000005(32*n+1)]`
-/

namespace A133869.P3395168753664274701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (32 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P3395168753664274701

namespace A133869

/-- `eq[2, A000005(32*n+1)]` -/
def P3395168753664274701.Spec : Prop :=
  ∀ n, (P3395168753664274701.a n : ℤ) = A133869 (n + 1)

end A133869

/-! ## A133869.P7583464661740657419

`eq[1, A054024(31*n+1+n)]`
-/

namespace A133869.P7583464661740657419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (31 * n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P7583464661740657419

namespace A133869

/-- `eq[1, A054024(31*n+1+n)]` -/
def P7583464661740657419.Spec : Prop :=
  ∀ n, (P7583464661740657419.a n : ℤ) = A133869 (n + 1)

end A133869

/-! ## A133869.P12958855155118281272

`eq[2, A051686(2*A008574(n))]`
-/

namespace A133869.P12958855155118281272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (2 * A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P12958855155118281272

namespace A133869

/-- `eq[2, A051686(2*A008574(n))]` -/
def P12958855155118281272.Spec : Prop :=
  ∀ n, (P12958855155118281272.a n : ℤ) = A133869 (n + 1)

end A133869

/-! ## A133869.P5056245111442731628

`eq[2, A061142(32*n+1)]`
-/

namespace A133869.P5056245111442731628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (32 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133869.P5056245111442731628

namespace A133869

/-- `eq[2, A061142(32*n+1)]` -/
def P5056245111442731628.Spec : Prop :=
  ∀ n, (P5056245111442731628.a n : ℤ) = A133869 (n + 1)

end A133869

/-!
# A133870: Primes of the form 32*n + 1.

The programs for A133870, the canonical program `A133870.P10221949335420814383` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133870 has offset 1).

The definition of A133870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133870.P3360185777751999921

`∪[A105128(n+1), A142925(n+1)]`
-/

namespace A133870.P3360185777751999921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P3360185777751999921

namespace A133870

/-- `∪[A105128(n+1), A142925(n+1)]` -/
def P3360185777751999921.Spec : Prop :=
  ∀ n, (P3360185777751999921.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P10221949335420814383

`A209554(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133870

/-- `A209554(n+2)` -/
def P10221949335420814383.Spec : Prop :=
  ∀ n, P10221949335420814383.a n = A133870 (n + 1)

theorem P10221949335420814383.correct : P10221949335420814383.Spec := by
  intro n
  simp only [A133870, Nat.add_sub_cancel]

end A133870

/-! ## A133870.P12324455580469736136

`∩[A094407(n+1), A214643(n+1)]`
-/

namespace A133870.P12324455580469736136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P12324455580469736136

namespace A133870

/-- `∩[A094407(n+1), A214643(n+1)]` -/
def P12324455580469736136.Spec : Prop :=
  ∀ n, (P12324455580469736136.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P3368219044794857012

`p?[32*n+1]`
-/

namespace A133870.P3368219044794857012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A133870.P3368219044794857012

namespace A133870

/-- `p?[32*n+1]` -/
def P3368219044794857012.Spec : Prop :=
  ∀ n, (P3368219044794857012.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P9601645524608617510

`or(1, p?[or(1, 32*n)])`
-/

namespace A133870.P9601645524608617510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (32 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A133870.P9601645524608617510

namespace A133870

/-- `or(1, p?[or(1, 32*n)])` -/
def P9601645524608617510.Spec : Prop :=
  ∀ n, (P9601645524608617510.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P3762283990970560335

`∑{p}[p?[xor(1, 32*n)], #]`
-/

namespace A133870.P3762283990970560335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (32 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A133870.P3762283990970560335

namespace A133870

/-- `∑{p}[p?[xor(1, 32*n)], #]` -/
def P3762283990970560335.Spec : Prop :=
  ∀ n, (P3762283990970560335.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P9940393202779339297

`∩[A001132(n+1), A239128(n+1)+2]`
-/

namespace A133870.P9940393202779339297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P9940393202779339297

namespace A133870

/-- `∩[A001132(n+1), A239128(n+1)+2]` -/
def P9940393202779339297.Spec : Prop :=
  ∀ n, (P9940393202779339297.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P5947190814692619593

`∩[A038873(n+1), A239128(n+1)+2]`
-/

namespace A133870.P5947190814692619593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P5947190814692619593

namespace A133870

/-- `∩[A038873(n+1), A239128(n+1)+2]` -/
def P5947190814692619593.Spec : Prop :=
  ∀ n, (P5947190814692619593.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P4302843477604419105

`∩[A097958(n+1), A239128(n+1)+2]`
-/

namespace A133870.P4302843477604419105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P4302843477604419105

namespace A133870

/-- `∩[A097958(n+1), A239128(n+1)+2]` -/
def P4302843477604419105.Spec : Prop :=
  ∀ n, (P4302843477604419105.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P11478285860050074618

`∩[A214588(n+1), A214643(n+1)]`
-/

namespace A133870.P11478285860050074618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P11478285860050074618

namespace A133870

/-- `∩[A214588(n+1), A214643(n+1)]` -/
def P11478285860050074618.Spec : Prop :=
  ∀ n, (P11478285860050074618.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P11190198950868864227

`∩[A055673(n+1), A239128(n+1)+2]`
-/

namespace A133870.P11190198950868864227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P11190198950868864227

namespace A133870

/-- `∩[A055673(n+1), A239128(n+1)+2]` -/
def P11190198950868864227.Spec : Prop :=
  ∀ n, (P11190198950868864227.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P5775628518112447138

`or(1, p?[A151983(n+1)])`
-/

namespace A133870.P5775628518112447138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A133870.P5775628518112447138

namespace A133870

/-- `or(1, p?[A151983(n+1)])` -/
def P5775628518112447138.Spec : Prop :=
  ∀ n, P5775628518112447138.a n = A133870 (n + 1)

end A133870

/-! ## A133870.P15892729531306477341

`∩[A214643(n+1), A158057(n)]`
-/

namespace A133870.P15892729531306477341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P15892729531306477341

namespace A133870

/-- `∩[A214643(n+1), A158057(n)]` -/
def P15892729531306477341.Spec : Prop :=
  ∀ n, (P15892729531306477341.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P4575778858141326622

`∩[A001132(n+1), A151983(n+1)]`
-/

namespace A133870.P4575778858141326622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P4575778858141326622

namespace A133870

/-- `∩[A001132(n+1), A151983(n+1)]` -/
def P4575778858141326622.Spec : Prop :=
  ∀ n, (P4575778858141326622.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P13089644011752828364

`∩[A002144(n+1), A151983(n+1)]`
-/

namespace A133870.P13089644011752828364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P13089644011752828364

namespace A133870

/-- `∩[A002144(n+1), A151983(n+1)]` -/
def P13089644011752828364.Spec : Prop :=
  ∀ n, (P13089644011752828364.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P11987448224103905076

`∩[A002313(n+1), A151983(n+1)]`
-/

namespace A133870.P11987448224103905076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P11987448224103905076

namespace A133870

/-- `∩[A002313(n+1), A151983(n+1)]` -/
def P11987448224103905076.Spec : Prop :=
  ∀ n, (P11987448224103905076.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P7470863398665403472

`∩[A007519(n+1), A151983(n+1)]`
-/

namespace A133870.P7470863398665403472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P7470863398665403472

namespace A133870

/-- `∩[A007519(n+1), A151983(n+1)]` -/
def P7470863398665403472.Spec : Prop :=
  ∀ n, (P7470863398665403472.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P8498270240916941766

`∩[A033200(n+1), A151983(n+1)]`
-/

namespace A133870.P8498270240916941766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P8498270240916941766

namespace A133870

/-- `∩[A033200(n+1), A151983(n+1)]` -/
def P8498270240916941766.Spec : Prop :=
  ∀ n, (P8498270240916941766.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P13650767162167903671

`∩[A033203(n+1), A151983(n+1)]`
-/

namespace A133870.P13650767162167903671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P13650767162167903671

namespace A133870

/-- `∩[A033203(n+1), A151983(n+1)]` -/
def P13650767162167903671.Spec : Prop :=
  ∀ n, (P13650767162167903671.a n : ℤ) = A133870 (n + 1)

end A133870

/-! ## A133870.P14644440604191525233

`∩[A038873(n+1), A151983(n+1)]`
-/

namespace A133870.P14644440604191525233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133870.P14644440604191525233

namespace A133870

/-- `∩[A038873(n+1), A151983(n+1)]` -/
def P14644440604191525233.Spec : Prop :=
  ∀ n, (P14644440604191525233.a n : ℤ) = A133870 (n + 1)

end A133870

/-!
# A133871: a(n) = the definite integral Integral_{0..1} Product_{j=1..n} 4*sin^2(Pi*j*x) dx.

The programs for A133871, there is no canonical definition to state claims against.
-/

/-! ## A133871.P7018655878761976342

`record[abs(A304080(A233583(n+1)))]`
-/

namespace A133871.P7018655878761976342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304080 (A233583 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133871.P7018655878761976342

/-! ## A133871.P2208599483569565681

`A089869(2*A007211(n+1))`
-/

namespace A133871.P2208599483569565681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (2 * A007211 (n + 1)).toNat

end

end A133871.P2208599483569565681

/-! ## A133871.P67323864983314140

`2*A007211(A032555(n+1))`
-/

namespace A133871.P67323864983314140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007211 (A032555 (n + 1)).toNat

end

end A133871.P67323864983314140

/-! ## A133871.P15161981937560302728

`2*A007211(A032557(n+1))`
-/

namespace A133871.P15161981937560302728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007211 (A032557 (n + 1)).toNat

end

end A133871.P15161981937560302728

/-! ## A133871.P2106420972752843795

`2*A007211(A032559(n+1))`
-/

namespace A133871.P2106420972752843795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007211 (A032559 (n + 1)).toNat

end

end A133871.P2106420972752843795

/-!
# A133872: Period 4: repeat [1, 1, 0, 0].

The programs for A133872, the canonical program `A133872.P12915600647969890054` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133872 has offset 0).

The definition of A133872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133872.P12915600647969890054

`(1+(-1)^floor(n/2))/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133872

/-- `(1+(-1)^floor(n/2))/2` -/
def P12915600647969890054.Spec : Prop :=
  ∀ n, P12915600647969890054.a n = (A133872 n : ℚ)

end A133872

/-!
# A133873: n modulo 3 repeated 3 times.

The programs for A133873, the canonical program `A133873.P15886751564317174757` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133873 has offset 0).

The definition of A133873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133873.P15886751564317174757

`1+floor(n/3)-3*floor((n+3)/9)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133873

/-- `1+floor(n/3)-3*floor((n+3)/9)` -/
def P15886751564317174757.Spec : Prop :=
  ∀ n, P15886751564317174757.a n = A133873 n

theorem P15886751564317174757.correct : P15886751564317174757.Spec := by
  intro n
  simp only [A133873]

end A133873

/-!
# A133874: N modulo 4 repeated 4 times.

The programs for A133874, the canonical program `A133874.P7841861204745887885` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133874 has offset 0).

The definition of A133874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133874.P7841861204745887885

`1+floor(n/4)-4*floor((n+4)/16)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133874

/-- `1+floor(n/4)-4*floor((n+4)/16)` -/
def P7841861204745887885.Spec : Prop :=
  ∀ n, P7841861204745887885.a n = A133874 n

theorem P7841861204745887885.correct : P7841861204745887885.Spec := by
  intro n
  simp only [A133874]

end A133874

/-!
# A133875: n modulo 5 repeated 5 times.

The programs for A133875, the canonical program `A133875.P7498059089641737372` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133875 has offset 0).

The definition of A133875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133875.P7498059089641737372

`(1+floor(n/5))%5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133875

/-- `(1+floor(n/5))%5` -/
def P7498059089641737372.Spec : Prop :=
  ∀ n, P7498059089641737372.a n = A133875 n

theorem P7498059089641737372.correct : P7498059089641737372.Spec := by
  intro n
  simp only [A133875]

end A133875

/-!
# A133876: n modulo 6 repeated 6 times.

The programs for A133876, the canonical program `A133876.P9828521478134137736` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133876 has offset 0).

The definition of A133876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133876.P9828521478134137736

`1+floor(n/6)-6*floor((n+6)/36)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133876

/-- `1+floor(n/6)-6*floor((n+6)/36)` -/
def P9828521478134137736.Spec : Prop :=
  ∀ n, P9828521478134137736.a n = A133876 n

theorem P9828521478134137736.correct : P9828521478134137736.Spec := by
  intro n
  simp only [A133876]

end A133876

/-!
# A133877: N modulo 7 repeated 7 times.

The programs for A133877, the canonical program `A133877.P8105132696027600601` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133877 has offset 0).

The definition of A133877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133877.P8105132696027600601

`1+floor(n/7)-7*floor((n+7)/49)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133877

/-- `1+floor(n/7)-7*floor((n+7)/49)` -/
def P8105132696027600601.Spec : Prop :=
  ∀ n, P8105132696027600601.a n = A133877 n

theorem P8105132696027600601.correct : P8105132696027600601.Spec := by
  intro n
  simp only [A133877]

end A133877

/-!
# A133878: n modulo 8 repeated 8 times.

The programs for A133878, the canonical program `A133878.P14477036935571103662` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133878 has offset 0).

The definition of A133878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133878.P14477036935571103662

`1+floor(n/8)-8*floor((n+8)/64)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133878

/-- `1+floor(n/8)-8*floor((n+8)/64)` -/
def P14477036935571103662.Spec : Prop :=
  ∀ n, P14477036935571103662.a n = A133878 n

theorem P14477036935571103662.correct : P14477036935571103662.Spec := by
  intro n
  simp only [A133878]

end A133878

/-!
# A133879: n modulo 9 repeated 9 times.

The programs for A133879, the canonical program `A133879.P5641127838129535009` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133879 has offset 0).

The definition of A133879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133879.P5641127838129535009

`1+floor(n/9)-9*floor((n+9)/81)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133879

/-- `1+floor(n/9)-9*floor((n+9)/81)` -/
def P5641127838129535009.Spec : Prop :=
  ∀ n, P5641127838129535009.a n = A133879 n

theorem P5641127838129535009.correct : P5641127838129535009.Spec := by
  intro n
  simp only [A133879]

end A133879

/-!
# A133880: n modulo p repeated p times (where p=10).

The programs for A133880, the canonical program `A133880.P14408305710728388466` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133880 has offset 0).

The definition of A133880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133880.P14408305710728388466

`∑[char[10*n]]%10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133880

/-- `∑[char[10*n]]%10` -/
def P14408305710728388466.Spec : Prop :=
  ∀ n, (P14408305710728388466.a n : ℤ) = A133880 n

theorem P14408305710728388466.correct : P14408305710728388466.Spec := by
  intro n
  simp only [A133880]

end A133880

/-!
# A133881: Even numbers k such that binomial(k+p,k) mod k = 1, where p=10.

The programs for A133881, the canonical program `A133881.P5486026362602944694` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133881 has offset 1).

The definition of A133881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133881.P5486026362602944694

`filter[A133630(n+1), A121262(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133881

/-- `filter[A133630(n+1), A121262(#)]` -/
def P5486026362602944694.Spec : Prop :=
  ∀ n, P5486026362602944694.a n = A133881 (n + 1)

theorem P5486026362602944694.correct : P5486026362602944694.Spec := by
  intro n
  simp only [A133881, Nat.add_sub_cancel]

end A133881

/-! ## A133881.P227252782370726487

`filter[A133630(n+1), A342023(#)]`
-/

namespace A133881.P227252782370726487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A133881.P227252782370726487

namespace A133881

/-- `filter[A133630(n+1), A342023(#)]` -/
def P227252782370726487.Spec : Prop :=
  ∀ n, P227252782370726487.a n = A133881 (n + 1)

end A133881

/-! ## A133881.P5616393281523254913

`filter[A133630(n+1), A369070(#)]`
-/

namespace A133881.P5616393281523254913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A133881.P5616393281523254913

namespace A133881

/-- `filter[A133630(n+1), A369070(#)]` -/
def P5616393281523254913.Spec : Prop :=
  ∀ n, P5616393281523254913.a n = A133881 (n + 1)

end A133881

/-! ## A133881.P16095739513968931706

`∩[A133630(n+1), A017113(n)]`
-/

namespace A133881.P16095739513968931706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P16095739513968931706

namespace A133881

/-- `∩[A133630(n+1), A017113(n)]` -/
def P16095739513968931706.Spec : Prop :=
  ∀ n, (P16095739513968931706.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P14902148078973159489

`∩[A100717(n+1), A133630(n+1)]`
-/

namespace A133881.P14902148078973159489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P14902148078973159489

namespace A133881

/-- `∩[A100717(n+1), A133630(n+1)]` -/
def P14902148078973159489.Spec : Prop :=
  ∀ n, (P14902148078973159489.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P431572405956083860

`∩[A108269(n+1), A133630(n+1)]`
-/

namespace A133881.P431572405956083860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P431572405956083860

namespace A133881

/-- `∩[A108269(n+1), A133630(n+1)]` -/
def P431572405956083860.Spec : Prop :=
  ∀ n, (P431572405956083860.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P3147637206174288004

`∩[A119413(n+1), A133630(n+1)]`
-/

namespace A133881.P3147637206174288004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P3147637206174288004

namespace A133881

/-- `∩[A119413(n+1), A133630(n+1)]` -/
def P3147637206174288004.Spec : Prop :=
  ∀ n, (P3147637206174288004.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P10020404080816988407

`∩[A133630(n+1), A213258(n+1)]`
-/

namespace A133881.P10020404080816988407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P10020404080816988407

namespace A133881

/-- `∩[A133630(n+1), A213258(n+1)]` -/
def P10020404080816988407.Spec : Prop :=
  ∀ n, (P10020404080816988407.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P3935311942210957083

`∩[A133630(n+1), A365883(n+1)]`
-/

namespace A133881.P3935311942210957083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P3935311942210957083

namespace A133881

/-- `∩[A133630(n+1), A365883(n+1)]` -/
def P3935311942210957083.Spec : Prop :=
  ∀ n, (P3935311942210957083.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P3045343350005554905

`∩[A133630(n+1), A365889(n+1)]`
-/

namespace A133881.P3045343350005554905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P3045343350005554905

namespace A133881

/-- `∩[A133630(n+1), A365889(n+1)]` -/
def P3045343350005554905.Spec : Prop :=
  ∀ n, (P3045343350005554905.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P15383201363816005112

`∩[2*A047463(n+1), A133630(n+1)]`
-/

namespace A133881.P15383201363816005112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P15383201363816005112

namespace A133881

/-- `∩[2*A047463(n+1), A133630(n+1)]` -/
def P15383201363816005112.Spec : Prop :=
  ∀ n, (P15383201363816005112.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P6759661217138223582

`∩[A133630(n+1), A310525(n)]`
-/

namespace A133881.P6759661217138223582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P6759661217138223582

namespace A133881

/-- `∩[A133630(n+1), A310525(n)]` -/
def P6759661217138223582.Spec : Prop :=
  ∀ n, (P6759661217138223582.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P11145307494751031721

`∩[A133630(n+1), A267958(n+1)]`
-/

namespace A133881.P11145307494751031721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P11145307494751031721

namespace A133881

/-- `∩[A133630(n+1), A267958(n+1)]` -/
def P11145307494751031721.Spec : Prop :=
  ∀ n, (P11145307494751031721.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P12972520663200188548

`∩[A133630(n+1), A342090(n+1)]`
-/

namespace A133881.P12972520663200188548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P12972520663200188548

namespace A133881

/-- `∩[A133630(n+1), A342090(n+1)]` -/
def P12972520663200188548.Spec : Prop :=
  ∀ n, (P12972520663200188548.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P471601807246350441

`∩[A133630(n+1), A217319(n+1)]`
-/

namespace A133881.P471601807246350441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P471601807246350441

namespace A133881

/-- `∩[A133630(n+1), A217319(n+1)]` -/
def P471601807246350441.Spec : Prop :=
  ∀ n, (P471601807246350441.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P7969694468892878555

`∩[A133630(n+1), A370596(n+1)]`
-/

namespace A133881.P7969694468892878555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P7969694468892878555

namespace A133881

/-- `∩[A133630(n+1), A370596(n+1)]` -/
def P7969694468892878555.Spec : Prop :=
  ∀ n, (P7969694468892878555.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P14800534000453867210

`∩[A034045(n+1), A133630(n+1)]`
-/

namespace A133881.P14800534000453867210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P14800534000453867210

namespace A133881

/-- `∩[A034045(n+1), A133630(n+1)]` -/
def P14800534000453867210.Spec : Prop :=
  ∀ n, (P14800534000453867210.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P2922853776956710264

`∩[A133630(n+1), A008574(n)]`
-/

namespace A133881.P2922853776956710264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P2922853776956710264

namespace A133881

/-- `∩[A133630(n+1), A008574(n)]` -/
def P2922853776956710264.Spec : Prop :=
  ∀ n, (P2922853776956710264.a n : ℤ) = A133881 (n + 1)

end A133881

/-! ## A133881.P7261292790796509268

`∩[A133630(n+1), A008586(n)]`
-/

namespace A133881.P7261292790796509268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133881.P7261292790796509268

namespace A133881

/-- `∩[A133630(n+1), A008586(n)]` -/
def P7261292790796509268.Spec : Prop :=
  ∀ n, (P7261292790796509268.a n : ℤ) = A133881 (n + 1)

end A133881

/-!
# A133882: a(n) = binomial(n+2,n) mod 2^2.

The programs for A133882, the canonical program `A133882.P1925375188917007446` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133882 has offset 0).

The definition of A133882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133882.P1925375188917007446

`C(n+2, n)%4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133882

/-- `C(n+2, n)%4` -/
def P1925375188917007446.Spec : Prop :=
  ∀ n, (P1925375188917007446.a n : ℤ) = A133882 n

theorem P1925375188917007446.correct : P1925375188917007446.Spec := by
  intro n
  simp only [A133882]

end A133882

/-!
# A133883: a(n) = binomial(n+3,n) mod 3^2.

The programs for A133883, the canonical program `A133883.P9704378471869750924` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133883 has offset 0).

The definition of A133883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133883.P9704378471869750924

`C(n+3, n)%9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133883

/-- `C(n+3, n)%9` -/
def P9704378471869750924.Spec : Prop :=
  ∀ n, (P9704378471869750924.a n : ℤ) = A133883 n

theorem P9704378471869750924.correct : P9704378471869750924.Spec := by
  intro n
  simp only [A133883]

end A133883

/-!
# A133884: a(n) = binomial(n+4,n) mod 4.

The programs for A133884, the canonical program `A133884.P7315409345274538146` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133884 has offset 0).

The definition of A133884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133884.P7315409345274538146

`C(n+4, 4)%4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133884

/-- `C(n+4, 4)%4` -/
def P7315409345274538146.Spec : Prop :=
  ∀ n, (P7315409345274538146.a n : ℤ) = A133884 n

theorem P7315409345274538146.correct : P7315409345274538146.Spec := by
  intro n
  simp only [A133884]

end A133884

/-!
# A133885: Binomial(n+5,n) mod 5^2.

The programs for A133885, the canonical program `A133885.P15008163070040150645` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133885 has offset 0).

The definition of A133885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133885.P15008163070040150645

`C(n+5, 5)%25`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133885

/-- `C(n+5, 5)%25` -/
def P15008163070040150645.Spec : Prop :=
  ∀ n, (P15008163070040150645.a n : ℤ) = A133885 n

theorem P15008163070040150645.correct : P15008163070040150645.Spec := by
  intro n
  simp only [A133885]

end A133885

/-!
# A133886: a(n) = binomial(n+6,n) mod 6.

The programs for A133886, the canonical program `A133886.P15535989707996574482` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133886 has offset 0).

The definition of A133886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133886.P15535989707996574482

`C(n+6, n)%6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133886

/-- `C(n+6, n)%6` -/
def P15535989707996574482.Spec : Prop :=
  ∀ n, (P15535989707996574482.a n : ℤ) = A133886 n

theorem P15535989707996574482.correct : P15535989707996574482.Spec := by
  intro n
  simp only [A133886]

end A133886

/-!
# A133887: Binomial(n+7,n) mod 7^2.

The programs for A133887, the canonical program `A133887.P7469164367812143137` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133887 has offset 0).

The definition of A133887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133887.P7469164367812143137

`C(n+7, 7)%49`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133887

/-- `C(n+7, 7)%49` -/
def P7469164367812143137.Spec : Prop :=
  ∀ n, (P7469164367812143137.a n : ℤ) = A133887 n

theorem P7469164367812143137.correct : P7469164367812143137.Spec := by
  intro n
  simp only [A133887]

end A133887

/-!
# A133888: Binomial(n+8,n) mod 8.

The programs for A133888, the canonical program `A133888.P5276964605548194533` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133888 has offset 0).

The definition of A133888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133888.P5276964605548194533

`C(n+8, 8)%8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133888

/-- `C(n+8, 8)%8` -/
def P5276964605548194533.Spec : Prop :=
  ∀ n, (P5276964605548194533.a n : ℤ) = A133888 n

theorem P5276964605548194533.correct : P5276964605548194533.Spec := by
  intro n
  simp only [A133888]

end A133888

/-!
# A133889: a(n) = binomial(n+9,n) mod 9.

The programs for A133889, the canonical program `A133889.P1705443861666179566` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133889 has offset 0).

The definition of A133889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133889.P1705443861666179566

`C(n+9, 9)%9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133889

/-- `C(n+9, 9)%9` -/
def P1705443861666179566.Spec : Prop :=
  ∀ n, (P1705443861666179566.a n : ℤ) = A133889 n

theorem P1705443861666179566.correct : P1705443861666179566.Spec := by
  intro n
  simp only [A133889]

end A133889

/-!
# A133890: Binomial(n+10,n) mod 10.

The programs for A133890, the canonical program `A133890.P9459473839182311348` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133890 has offset 0).

The definition of A133890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133890.P9459473839182311348

`C(n+10, 10)%10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133890

/-- `C(n+10, 10)%10` -/
def P9459473839182311348.Spec : Prop :=
  ∀ n, (P9459473839182311348.a n : ℤ) = A133890 n

theorem P9459473839182311348.correct : P9459473839182311348.Spec := by
  intro n
  simp only [A133890]

end A133890

/-!
# A133891: a(n) = binomial(n+p,n) mod p, where p=12.

The programs for A133891, the canonical program `A133891.P5678527088218291566` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133891 has offset 0).

The definition of A133891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133891.P5678527088218291566

`C(n+12, n)%12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133891

/-- `C(n+12, n)%12` -/
def P5678527088218291566.Spec : Prop :=
  ∀ n, (P5678527088218291566.a n : ℤ) = A133891 n

theorem P5678527088218291566.correct : P5678527088218291566.Spec := by
  intro n
  simp only [A133891]

end A133891

/-!
# A133893: Numbers m such that binomial(m+3,m) mod 3 = 0.

The programs for A133893, the canonical program `A133893.P3187084854909269944` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133893 has offset 0).

The definition of A133893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133893.P3187084854909269944

`∑[gcd(7, n%3)]-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133893

/-- `∑[gcd(7, n%3)]-1` -/
def P3187084854909269944.Spec : Prop :=
  ∀ n, P3187084854909269944.a n = A133893 n

theorem P3187084854909269944.correct : P3187084854909269944.Spec := by
  intro n
  simp only [A133893]

end A133893

/-! ## A133893.P2259357419777614269

`record[6%gcd(9, n)+n]`
-/

namespace A133893.P2259357419777614269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 9 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133893.P2259357419777614269

namespace A133893

/-- `record[6%gcd(9, n)+n]` -/
def P2259357419777614269.Spec : Prop :=
  ∀ n, (P2259357419777614269.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P11560899401279250357

`comp[n-gcd(4, dr(n)!)]`
-/

namespace A133893.P11560899401279250357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 4 (Nat.factorial (SequenceMachineLib.digitalRoot (n : ℤ))) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133893.P11560899401279250357

namespace A133893

/-- `comp[n-gcd(4, dr(n)!)]` -/
def P11560899401279250357.Spec : Prop :=
  ∀ n, (P11560899401279250357.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P3954177921088959674

`a(n-3)+9` with `a(0)=6, a(1)=7, a(2)=8`
-/

namespace A133893.P3954177921088959674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 7, 8] fun n a =>
  a (n - 3) + 9

end

end A133893.P3954177921088959674

namespace A133893

/-- `a(n-3)+9` -/
def P3954177921088959674.Spec : Prop :=
  ∀ n, (P3954177921088959674.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P17650144886731628706

`lt[C(n, 6), lcm(3, C(n, 6))]`
-/

namespace A133893.P17650144886731628706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.choose n 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133893.P17650144886731628706

namespace A133893

/-- `lt[C(n, 6), lcm(3, C(n, 6))]` -/
def P17650144886731628706.Spec : Prop :=
  ∀ n, (P17650144886731628706.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P14484671321874008427

`comp[3*floor(n/6)+n]`
-/

namespace A133893.P14484671321874008427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 6⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133893.P14484671321874008427

namespace A133893

/-- `comp[3*floor(n/6)+n]` -/
def P14484671321874008427.Spec : Prop :=
  ∀ n, (P14484671321874008427.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P10505215694932886968

`∑[abs(a(n-3))]` with `a(0)=6, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A133893.P10505215694932886968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 1, 7] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133893.P10505215694932886968

namespace A133893

/-- `∑[abs(a(n-3))]` -/
def P10505215694932886968.Spec : Prop :=
  ∀ n, (P10505215694932886968.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P13474337964609444687

`∑[or(1, a(n-3))]` with `a(0)=6, a(1)=1, a(2)=1`
-/

namespace A133893.P13474337964609444687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 1] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133893.P13474337964609444687

namespace A133893

/-- `∑[or(1, a(n-3))]` -/
def P13474337964609444687.Spec : Prop :=
  ∀ n, (P13474337964609444687.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P6186410515660959020

`∑[floor(a(n-3))]` with `a(0)=6, a(1)=1, a(2)=1, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A133893.P6186410515660959020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 1, 7] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133893.P6186410515660959020

namespace A133893

/-- `∑[floor(a(n-3))]` -/
def P6186410515660959020.Spec : Prop :=
  ∀ n, (P6186410515660959020.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P3399774549437396512

`∑[round(a(n-3))]` with `a(0)=6, a(1)=1, a(2)=1, a(3)=7`

`round` is left out, it is the identity on integers.
-/

namespace A133893.P3399774549437396512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 1, 7] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133893.P3399774549437396512

namespace A133893

/-- `∑[round(a(n-3))]` -/
def P3399774549437396512.Spec : Prop :=
  ∀ n, (P3399774549437396512.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P9046678118784733450

`∑[dr(Δ[(n+1)^3])]-1`
-/

namespace A133893.P9046678118784733450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A133893.P9046678118784733450

namespace A133893

/-- `∑[dr(Δ[(n+1)^3])]-1` -/
def P9046678118784733450.Spec : Prop :=
  ∀ n, P9046678118784733450.a n = A133893 n

end A133893

/-! ## A133893.P4320868795825982486

`lt[n, n*(dr(n+1)-5)]`
-/

namespace A133893.P4320868795825982486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133893.P4320868795825982486

namespace A133893

/-- `lt[n, n*(dr(n+1)-5)]` -/
def P4320868795825982486.Spec : Prop :=
  ∀ n, (P4320868795825982486.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P17575671136529309111

`lt[6*n, n*dr(n+1)]`
-/

namespace A133893.P17575671136529309111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133893.P17575671136529309111

namespace A133893

/-- `lt[6*n, n*dr(n+1)]` -/
def P17575671136529309111.Spec : Prop :=
  ∀ n, (P17575671136529309111.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P9251296805413912726

`3*(n+2)-(2*n)%6`
-/

namespace A133893.P9251296805413912726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - ((2 * n % 6 : ℕ) : ℤ)

end

end A133893.P9251296805413912726

namespace A133893

/-- `3*(n+2)-(2*n)%6` -/
def P9251296805413912726.Spec : Prop :=
  ∀ n, P9251296805413912726.a n = A133893 n

end A133893

/-! ## A133893.P11208164254428130183

`lt[(n+3)%9, 3%(n+1)]`
-/

namespace A133893.P11208164254428130183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133893.P11208164254428130183

namespace A133893

/-- `lt[(n+3)%9, 3%(n+1)]` -/
def P11208164254428130183.Spec : Prop :=
  ∀ n, (P11208164254428130183.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P9096839189378689989

`eq[0, C(n, a(n-3)²)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A133893.P9096839189378689989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  Nat.choose n (f2 (n - 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133893.P9096839189378689989

namespace A133893

/-- `eq[0, C(n, a(n-3)²)]` -/
def P9096839189378689989.Spec : Prop :=
  ∀ n, (P9096839189378689989.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P17090343509873366795

`lt[n+1, dr(n+1)-5+n]`
-/

namespace A133893.P17090343509873366795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) - 5 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133893.P17090343509873366795

namespace A133893

/-- `lt[n+1, dr(n+1)-5+n]` -/
def P17090343509873366795.Spec : Prop :=
  ∀ n, (P17090343509873366795.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P4110763958506694380

`lt[n+2, dr(n+1)/3+n]`
-/

namespace A133893.P4110763958506694380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) / 3 + (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A133893.P4110763958506694380

namespace A133893

/-- `lt[n+2, dr(n+1)/3+n]` -/
def P4110763958506694380.Spec : Prop :=
  ∀ n, (P4110763958506694380.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P18051451002209034058

`∑[a(n-3)^a(n-1)]` with `a(0)=6, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A133893.P18051451002209034058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1, 1, 7] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133893.P18051451002209034058

namespace A133893

/-- `∑[a(n-3)^a(n-1)]` -/
def P18051451002209034058.Spec : Prop :=
  ∀ n, (P18051451002209034058.a n : ℤ) = A133893 n

end A133893

/-! ## A133893.P2537826454317326307

`∑[8-a(n-1)*a(n-2)]` with `a(0)=6, a(1)=1, a(2)=1`
-/

namespace A133893.P2537826454317326307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, 1] fun n f1 =>
  8 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133893.P2537826454317326307

namespace A133893

/-- `∑[8-a(n-1)*a(n-2)]` -/
def P2537826454317326307.Spec : Prop :=
  ∀ n, P2537826454317326307.a n = A133893 n

end A133893

/-!
# A133894: Numbers m such that binomial(m+4,m) mod 4 = 0.

The programs for A133894, the canonical program `A133894.P2377023795074649558` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133894 has offset 1).

The definition of A133894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133894.P2377023795074649558

`record[or(12, n)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133894

/-- `record[or(12, n)]` -/
def P2377023795074649558.Spec : Prop :=
  ∀ n, (P2377023795074649558.a n : ℤ) = A133894 (n + 1)

theorem P2377023795074649558.correct : P2377023795074649558.Spec := by
  intro n
  simp only [A133894, Nat.add_sub_cancel]

end A133894

/-! ## A133894.P13477064380775773432

`record[xor(12, n)]`
-/

namespace A133894.P13477064380775773432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 12 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133894.P13477064380775773432

namespace A133894

/-- `record[xor(12, n)]` -/
def P13477064380775773432.Spec : Prop :=
  ∀ n, (P13477064380775773432.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P17767697154711951125

`eq[n, or(12, n)]`
-/

namespace A133894.P17767697154711951125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 12 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133894.P17767697154711951125

namespace A133894

/-- `eq[n, or(12, n)]` -/
def P17767697154711951125.Spec : Prop :=
  ∀ n, (P17767697154711951125.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P2371801343040548469

`lt[or(12, n), n+1]`
-/

namespace A133894.P2371801343040548469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 12 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133894.P2371801343040548469

namespace A133894

/-- `lt[or(12, n), n+1]` -/
def P2371801343040548469.Spec : Prop :=
  ∀ n, (P2371801343040548469.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P3960028106177432437

`lt[13, xor(n, n+4)]`
-/

namespace A133894.P3960028106177432437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133894.P3960028106177432437

namespace A133894

/-- `lt[13, xor(n, n+4)]` -/
def P3960028106177432437.Spec : Prop :=
  ∀ n, (P3960028106177432437.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P618952010580066276

`eq[12, and(n, 11-n)]`
-/

namespace A133894.P618952010580066276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (11 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133894.P618952010580066276

namespace A133894

/-- `eq[12, and(n, 11-n)]` -/
def P618952010580066276.Spec : Prop :=
  ∀ n, (P618952010580066276.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P9394890686266509343

`lt[4, and(n, -(n+5))]`
-/

namespace A133894.P9394890686266509343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 5 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133894.P9394890686266509343

namespace A133894

/-- `lt[4, and(n, -(n+5))]` -/
def P9394890686266509343.Spec : Prop :=
  ∀ n, (P9394890686266509343.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P18077232993689655273

`or(12, a(n-1)+1)` with `a(0)=12`
-/

namespace A133894.P18077232993689655273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  Nat.lor 12 (a (n - 1) + 1)

end

end A133894.P18077232993689655273

namespace A133894

/-- `or(12, a(n-1)+1)` -/
def P18077232993689655273.Spec : Prop :=
  ∀ n, (P18077232993689655273.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P1732079356036921260

`3*or(3, n)+n+3`
-/

namespace A133894.P1732079356036921260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 3 n + (n + 3)

end

end A133894.P1732079356036921260

namespace A133894

/-- `3*or(3, n)+n+3` -/
def P1732079356036921260.Spec : Prop :=
  ∀ n, (P1732079356036921260.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P2046041955402530396

`a(n-4)+16` with `a(0)=12, a(1)=13, a(2)=14, a(3)=15`
-/

namespace A133894.P2046041955402530396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 13, 14, 15] fun n a =>
  a (n - 4) + 16

end

end A133894.P2046041955402530396

namespace A133894

/-- `a(n-4)+16` -/
def P2046041955402530396.Spec : Prop :=
  ∀ n, (P2046041955402530396.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P13799664279298793595

`comp[and(n-1, or(4, n+3))]`
-/

namespace A133894.P13799664279298793595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (Nat.lor 4 (n + 3) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133894.P13799664279298793595

namespace A133894

/-- `comp[and(n-1, or(4, n+3))]` -/
def P13799664279298793595.Spec : Prop :=
  ∀ n, (P13799664279298793595.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P8059009495832897794

`comp[and(n-1, xor(4, n+3))]`
-/

namespace A133894.P8059009495832897794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (Nat.xor 4 (n + 3) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133894.P8059009495832897794

namespace A133894

/-- `comp[and(n-1, xor(4, n+3))]` -/
def P8059009495832897794.Spec : Prop :=
  ∀ n, (P8059009495832897794.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P16349419021090124718

`4*(n+3)-3*n%4`
-/

namespace A133894.P16349419021090124718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 3) : ℤ) - ((3 * (n % 4) : ℕ) : ℤ)

end

end A133894.P16349419021090124718

namespace A133894

/-- `4*(n+3)-3*n%4` -/
def P16349419021090124718.Spec : Prop :=
  ∀ n, P16349419021090124718.a n = A133894 (n + 1)

end A133894

/-! ## A133894.P7000892385060264910

`eq[0, C(n, a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A133894.P7000892385060264910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f2 =>
  Nat.choose n (f2 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133894.P7000892385060264910

namespace A133894

/-- `eq[0, C(n, a(n-4))]` -/
def P7000892385060264910.Spec : Prop :=
  ∀ n, (P7000892385060264910.a n : ℤ) = A133894 (n + 1)

end A133894

/-! ## A133894.P10514282467037632772

`3*4*∑[∑[ogf(1/(1+x+x^2+x^3))]]+n`
-/

namespace A133894.P10514282467037632772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) + (n : ℤ)

end

end A133894.P10514282467037632772

namespace A133894

/-- `3*4*∑[∑[ogf(1/(1+x+x^2+x^3))]]+n` -/
def P10514282467037632772.Spec : Prop :=
  ∀ n, P10514282467037632772.a n = A133894 (n + 1)

end A133894

/-! ## A133894.P14288042322328049038

`12*A008621(n)+n`
-/

namespace A133894.P14288042322328049038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A008621 n + (n : ℤ)

end

end A133894.P14288042322328049038

namespace A133894

/-- `12*A008621(n)+n` -/
def P14288042322328049038.Spec : Prop :=
  ∀ n, P14288042322328049038.a n = A133894 (n + 1)

end A133894

/-! ## A133894.P17104866109770581277

`3*A244584(n)+n+3`
-/

namespace A133894.P17104866109770581277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A244584 n + (n + 3 : ℤ)

end

end A133894.P17104866109770581277

namespace A133894

/-- `3*A244584(n)+n+3` -/
def P17104866109770581277.Spec : Prop :=
  ∀ n, P17104866109770581277.a n = A133894 (n + 1)

end A133894

/-! ## A133894.P547617786688385796

`A017653(A002265(n))+1+n`
-/

namespace A133894.P547617786688385796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A002265 n).toNat + 1 + (n : ℤ)

end

end A133894.P547617786688385796

namespace A133894

/-- `A017653(A002265(n))+1+n` -/
def P547617786688385796.Spec : Prop :=
  ∀ n, P547617786688385796.a n = A133894 (n + 1)

end A133894

/-! ## A133894.P3664610554757847858

`A096022(n+1)-A017425(n)`
-/

namespace A133894.P3664610554757847858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096022 (n + 1) - A017425 n

end

end A133894.P3664610554757847858

namespace A133894

/-- `A096022(n+1)-A017425(n)` -/
def P3664610554757847858.Spec : Prop :=
  ∀ n, P3664610554757847858.a n = A133894 (n + 1)

end A133894

/-! ## A133894.P2920150695236457087

`A016969(2*A002265(n)+1)+n+1`
-/

namespace A133894.P2920150695236457087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * A002265 n + 1).toNat + (n + 1 : ℤ)

end

end A133894.P2920150695236457087

namespace A133894

/-- `A016969(2*A002265(n)+1)+n+1` -/
def P2920150695236457087.Spec : Prop :=
  ∀ n, P2920150695236457087.a n = A133894 (n + 1)

end A133894

/-!
# A133895: Numbers m such that binomial(m+5,m) mod 5 = 0.

The programs for A133895, the canonical program `A133895.P16881434976279844777` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133895 has offset 0).

The definition of A133895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133895.P1603860743987089479

`∑[20*char[5*n]]+n`
-/

namespace A133895.P1603860743987089479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A133895.P1603860743987089479

namespace A133895

/-- `∑[20*char[5*n]]+n` -/
def P1603860743987089479.Spec : Prop :=
  ∀ n, (P1603860743987089479.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P16881434976279844777

`lt[lcm(5, ceil((n+1)/5)), n]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133895

/-- `lt[lcm(5, ceil((n+1)/5)), n]` -/
def P16881434976279844777.Spec : Prop :=
  ∀ n, (P16881434976279844777.a n : ℤ) = A133895 n

theorem P16881434976279844777.correct : P16881434976279844777.Spec := by
  intro n
  simp only [A133895]

end A133895

/-! ## A133895.P8768003862968061501

`lt[(C(n, 5)+1)%5, acot(or(2, n))]`
-/

namespace A133895.P8768003862968061501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 + 1) % 5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.lor 2 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A133895.P8768003862968061501

namespace A133895

/-- `lt[(C(n, 5)+1)%5, acot(or(2, n))]` -/
def P8768003862968061501.Spec : Prop :=
  ∀ n, (P8768003862968061501.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P16396784848943287148

`abs(∑[gcd(5, n)-gcd(5, n)²]-n)`
-/

namespace A133895.P16396784848943287148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 5 n : ℤ) - (Nat.gcd 5 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A133895.P16396784848943287148

namespace A133895

/-- `abs(∑[gcd(5, n)-gcd(5, n)²]-n)` -/
def P16396784848943287148.Spec : Prop :=
  ∀ n, P16396784848943287148.a n = A133895 n

end A133895

/-! ## A133895.P3739712060611026516

`eq[3*C(n+5, 5), lcm(15, 3*C(n+5, 5))]`
-/

namespace A133895.P3739712060611026516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 5) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 15 (3 * Nat.choose (n + 5) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P3739712060611026516

namespace A133895

/-- `eq[3*C(n+5, 5), lcm(15, 3*C(n+5, 5))]` -/
def P3739712060611026516.Spec : Prop :=
  ∀ n, (P3739712060611026516.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P8295372154325002382

`comp[5*A002266(floor(n/4))+n]`
-/

namespace A133895.P8295372154325002382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002266 ⌊(n : ℚ) / 4⌋.toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133895.P8295372154325002382

namespace A133895

/-- `comp[5*A002266(floor(n/4))+n]` -/
def P8295372154325002382.Spec : Prop :=
  ∀ n, (P8295372154325002382.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P6201645094923678822

`lt[4, gcd(n, A133875(n))]`
-/

namespace A133895.P6201645094923678822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A133875 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133895.P6201645094923678822

namespace A133895

/-- `lt[4, gcd(n, A133875(n))]` -/
def P6201645094923678822.Spec : Prop :=
  ∀ n, (P6201645094923678822.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P1263373202701289619

`eq[0, A027810(n)%(5*(n+1))]`
-/

namespace A133895.P1263373202701289619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027810 n) (5 * (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133895.P1263373202701289619

namespace A133895

/-- `eq[0, A027810(n)%(5*(n+1))]` -/
def P1263373202701289619.Spec : Prop :=
  ∀ n, (P1263373202701289619.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P15730230013231324477

`eq[A066156(n), A133875(n)]`
-/

namespace A133895.P15730230013231324477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P15730230013231324477

namespace A133895

/-- `eq[A066156(n), A133875(n)]` -/
def P15730230013231324477.Spec : Prop :=
  ∀ n, (P15730230013231324477.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P3171299585318297225

`eq[A117911(n), A133875(n)]`
-/

namespace A133895.P3171299585318297225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P3171299585318297225

namespace A133895

/-- `eq[A117911(n), A133875(n)]` -/
def P3171299585318297225.Spec : Prop :=
  ∀ n, (P3171299585318297225.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P13029052632802307419

`eq[A133875(n), A143090(n)]`
-/

namespace A133895.P13029052632802307419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P13029052632802307419

namespace A133895

/-- `eq[A133875(n), A143090(n)]` -/
def P13029052632802307419.Spec : Prop :=
  ∀ n, (P13029052632802307419.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P9901675257702621460

`eq[A133875(n), A143722(n)]`
-/

namespace A133895.P9901675257702621460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P9901675257702621460

namespace A133895

/-- `eq[A133875(n), A143722(n)]` -/
def P9901675257702621460.Spec : Prop :=
  ∀ n, (P9901675257702621460.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P8480598386811408981

`eq[A133875(n), A143733(n)]`
-/

namespace A133895.P8480598386811408981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P8480598386811408981

namespace A133895

/-- `eq[A133875(n), A143733(n)]` -/
def P8480598386811408981.Spec : Prop :=
  ∀ n, (P8480598386811408981.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P6657054343853851170

`eq[A133875(n), A143741(n)]`
-/

namespace A133895.P6657054343853851170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P6657054343853851170

namespace A133895

/-- `eq[A133875(n), A143741(n)]` -/
def P6657054343853851170.Spec : Prop :=
  ∀ n, (P6657054343853851170.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P13913205512143064893

`eq[A133875(n), A143755(n)]`
-/

namespace A133895.P13913205512143064893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143755 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P13913205512143064893

namespace A133895

/-- `eq[A133875(n), A143755(n)]` -/
def P13913205512143064893.Spec : Prop :=
  ∀ n, (P13913205512143064893.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P16513998239154356326

`eq[A133875(n), A143757(n)]`
-/

namespace A133895.P16513998239154356326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P16513998239154356326

namespace A133895

/-- `eq[A133875(n), A143757(n)]` -/
def P16513998239154356326.Spec : Prop :=
  ∀ n, (P16513998239154356326.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P2876796668816530873

`eq[A133875(n), A143758(n)]`
-/

namespace A133895.P2876796668816530873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P2876796668816530873

namespace A133895

/-- `eq[A133875(n), A143758(n)]` -/
def P2876796668816530873.Spec : Prop :=
  ∀ n, (P2876796668816530873.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P4792540368424713906

`eq[A133875(n), A143846(n)]`
-/

namespace A133895.P4792540368424713906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P4792540368424713906

namespace A133895

/-- `eq[A133875(n), A143846(n)]` -/
def P4792540368424713906.Spec : Prop :=
  ∀ n, (P4792540368424713906.a n : ℤ) = A133895 n

end A133895

/-! ## A133895.P6483603069177726307

`eq[A133875(n), A143847(n)]`
-/

namespace A133895.P6483603069177726307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133895.P6483603069177726307

namespace A133895

/-- `eq[A133875(n), A143847(n)]` -/
def P6483603069177726307.Spec : Prop :=
  ∀ n, (P6483603069177726307.a n : ℤ) = A133895 n

end A133895

/-!
# A133896: Numbers m such that binomial(m+6,m) mod 6 = 0.

The programs for A133896, the canonical program `A133896.P15552091516857492334` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133896 has offset 0).

The definition of A133896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133896.P15552091516857492334

`eq[n, C(n+6, 6)%6+n]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133896

/-- `eq[n, C(n+6, 6)%6+n]` -/
def P15552091516857492334.Spec : Prop :=
  ∀ n, (P15552091516857492334.a n : ℤ) = A133896 n

theorem P15552091516857492334.correct : P15552091516857492334.Spec := by
  intro n
  simp only [A133896]

end A133896

/-! ## A133896.P12023797032794251321

`eq[C(n+6, 6)%6, A002483(n)]`
-/

namespace A133896.P12023797032794251321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 6 % 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133896.P12023797032794251321

namespace A133896

/-- `eq[C(n+6, 6)%6, A002483(n)]` -/
def P12023797032794251321.Spec : Prop :=
  ∀ n, (P12023797032794251321.a n : ℤ) = A133896 n

end A133896

/-! ## A133896.P2743268741532110970

`record[A004492(2*floor((n+1)/6)+n)]`
-/

namespace A133896.P2743268741532110970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (2 * ⌊(n + 1 : ℚ) / 6⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133896.P2743268741532110970

namespace A133896

/-- `record[A004492(2*floor((n+1)/6)+n)]` -/
def P2743268741532110970.Spec : Prop :=
  ∀ n, P2743268741532110970.a n = A133896 n

end A133896

/-! ## A133896.P6216717946498241516

`lt[0, val(A060104(n), 6)]`
-/

namespace A133896.P6216717946498241516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060104 n).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133896.P6216717946498241516

namespace A133896

/-- `lt[0, val(A060104(n), 6)]` -/
def P6216717946498241516.Spec : Prop :=
  ∀ n, (P6216717946498241516.a n : ℤ) = A133896 n

end A133896

/-! ## A133896.P306445604338617849

`eq[n, A133886(n)+n]`
-/

namespace A133896.P306445604338617849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133886 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133896.P306445604338617849

namespace A133896

/-- `eq[n, A133886(n)+n]` -/
def P306445604338617849.Spec : Prop :=
  ∀ n, (P306445604338617849.a n : ℤ) = A133896 n

end A133896

/-! ## A133896.P14917052246659951794

`lt[and(A004495(n)+1, -(n+1))/4, 1]`
-/

namespace A133896.P14917052246659951794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A004495 n + 1) (-(n + 1 : ℤ)) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A133896.P14917052246659951794

namespace A133896

/-- `lt[and(A004495(n)+1, -(n+1))/4, 1]` -/
def P14917052246659951794.Spec : Prop :=
  ∀ n, (P14917052246659951794.a n : ℤ) = A133896 n

end A133896

/-! ## A133896.P8929281234563407189

`eq[A002483(n), A133886(n)]`
-/

namespace A133896.P8929281234563407189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133886 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133896.P8929281234563407189

namespace A133896

/-- `eq[A002483(n), A133886(n)]` -/
def P8929281234563407189.Spec : Prop :=
  ∀ n, (P8929281234563407189.a n : ℤ) = A133896 n

end A133896

/-! ## A133896.P1063348094258255018

`eq[A133886(n), A185012(n)]`
-/

namespace A133896.P1063348094258255018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133896.P1063348094258255018

namespace A133896

/-- `eq[A133886(n), A185012(n)]` -/
def P1063348094258255018.Spec : Prop :=
  ∀ n, (P1063348094258255018.a n : ℤ) = A133896 n

end A133896

/-! ## A133896.P13711538881396592834

`lt[A133886(n), cos(A010815(n))]`
-/

namespace A133896.P13711538881396592834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133886 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A010815 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A133896.P13711538881396592834

namespace A133896

/-- `lt[A133886(n), cos(A010815(n))]` -/
def P13711538881396592834.Spec : Prop :=
  ∀ n, (P13711538881396592834.a n : ℤ) = A133896 n

end A133896

/-!
# A133897: Numbers m such that binomial(m+7,m) mod 7 = 0.

The programs for A133897, the canonical program `A133897.P3472898211061348910` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133897 has offset 0).

The definition of A133897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133897.P3472898211061348910

`∑[7*gcd(7, n)-6]-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133897

/-- `∑[7*gcd(7, n)-6]-1` -/
def P3472898211061348910.Spec : Prop :=
  ∀ n, P3472898211061348910.a n = A133897 n

theorem P3472898211061348910.correct : P3472898211061348910.Spec := by
  intro n
  simp only [A133897]

end A133897

/-! ## A133897.P8073813214538008029

`lt[lcm(7, ceil((n+1)/7)), n]`
-/

namespace A133897.P8073813214538008029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 ⌈(n + 1 : ℚ) / 7⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133897.P8073813214538008029

namespace A133897

/-- `lt[lcm(7, ceil((n+1)/7)), n]` -/
def P8073813214538008029.Spec : Prop :=
  ∀ n, (P8073813214538008029.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P6051433311683279965

`eq[n, A133877(n)+n]`
-/

namespace A133897.P6051433311683279965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133897.P6051433311683279965

namespace A133897

/-- `eq[n, A133877(n)+n]` -/
def P6051433311683279965.Spec : Prop :=
  ∀ n, (P6051433311683279965.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P16708437717455591699

`eq[A066156(n), A133877(n)]`
-/

namespace A133897.P16708437717455591699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P16708437717455591699

namespace A133897

/-- `eq[A066156(n), A133877(n)]` -/
def P16708437717455591699.Spec : Prop :=
  ∀ n, (P16708437717455591699.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P14138871631772437590

`eq[A095228(n), A133877(n)]`
-/

namespace A133897.P14138871631772437590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P14138871631772437590

namespace A133897

/-- `eq[A095228(n), A133877(n)]` -/
def P14138871631772437590.Spec : Prop :=
  ∀ n, (P14138871631772437590.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P1204018546640106751

`eq[A117911(n), A133877(n)]`
-/

namespace A133897.P1204018546640106751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P1204018546640106751

namespace A133897

/-- `eq[A117911(n), A133877(n)]` -/
def P1204018546640106751.Spec : Prop :=
  ∀ n, (P1204018546640106751.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P6797503070865248979

`eq[A133877(n), A143733(n)]`
-/

namespace A133897.P6797503070865248979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P6797503070865248979

namespace A133897

/-- `eq[A133877(n), A143733(n)]` -/
def P6797503070865248979.Spec : Prop :=
  ∀ n, (P6797503070865248979.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P6486124724181367984

`eq[A133877(n), A143741(n)]`
-/

namespace A133897.P6486124724181367984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P6486124724181367984

namespace A133897

/-- `eq[A133877(n), A143741(n)]` -/
def P6486124724181367984.Spec : Prop :=
  ∀ n, (P6486124724181367984.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P10600112558245730034

`eq[A133877(n), A143847(n)]`
-/

namespace A133897.P10600112558245730034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P10600112558245730034

namespace A133897

/-- `eq[A133877(n), A143847(n)]` -/
def P10600112558245730034.Spec : Prop :=
  ∀ n, (P10600112558245730034.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P13950368342822078856

`eq[A133877(n), A167858(n)]`
-/

namespace A133897.P13950368342822078856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P13950368342822078856

namespace A133897

/-- `eq[A133877(n), A167858(n)]` -/
def P13950368342822078856.Spec : Prop :=
  ∀ n, (P13950368342822078856.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P5642488915228723345

`eq[A133877(n), A185017(n)]`
-/

namespace A133897.P5642488915228723345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P5642488915228723345

namespace A133897

/-- `eq[A133877(n), A185017(n)]` -/
def P5642488915228723345.Spec : Prop :=
  ∀ n, (P5642488915228723345.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P3329741417126127155

`eq[A133877(n), A189071(n)]`
-/

namespace A133897.P3329741417126127155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P3329741417126127155

namespace A133897

/-- `eq[A133877(n), A189071(n)]` -/
def P3329741417126127155.Spec : Prop :=
  ∀ n, (P3329741417126127155.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P5931597393768064716

`eq[lcm(21, A253947(n+6)), A253947(n+6)]`
-/

namespace A133897.P5931597393768064716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 21 (A253947 (n + 6))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133897.P5931597393768064716

namespace A133897

/-- `eq[lcm(21, A253947(n+6)), A253947(n+6)]` -/
def P5931597393768064716.Spec : Prop :=
  ∀ n, (P5931597393768064716.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P9354992171081943661

`eq[A038554(n)-A133877(n), A038554(n)]`
-/

namespace A133897.P9354992171081943661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n - A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P9354992171081943661

namespace A133897

/-- `eq[A038554(n)-A133877(n), A038554(n)]` -/
def P9354992171081943661.Spec : Prop :=
  ∀ n, (P9354992171081943661.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P16251487153447974951

`eq[A324654(n)-A133877(n), A324654(n)]`
-/

namespace A133897.P16251487153447974951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324654 n - A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133897.P16251487153447974951

namespace A133897

/-- `eq[A324654(n)-A133877(n), A324654(n)]` -/
def P16251487153447974951.Spec : Prop :=
  ∀ n, (P16251487153447974951.a n : ℤ) = A133897 n

end A133897

/-! ## A133897.P17705892133368442973

`eq[1, A016355(ceil((n+1)/7))]`
-/

namespace A133897.P17705892133368442973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016355 ⌈(n + 1 : ℚ) / 7⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133897.P17705892133368442973

namespace A133897

/-- `eq[1, A016355(ceil((n+1)/7))]` -/
def P17705892133368442973.Spec : Prop :=
  ∀ n, (P17705892133368442973.a n : ℤ) = A133897 n

end A133897

/-!
# A133898: Numbers m such that binomial(m+8,m) mod 8 = 0.

The programs for A133898, the canonical program `A133898.P4326741027526620990` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133898 has offset 0).

The definition of A133898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133898.P4326741027526620990

`8*n+56-n%8*7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A133898

/-- `8*n+56-n%8*7` -/
def P4326741027526620990.Spec : Prop :=
  ∀ n, P4326741027526620990.a n = A133898 n

theorem P4326741027526620990.correct : P4326741027526620990.Spec := by
  intro n
  simp only [A133898]

end A133898

/-! ## A133898.P698663641915965471

`record[or(56, n)]`
-/

namespace A133898.P698663641915965471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 56 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133898.P698663641915965471

namespace A133898

/-- `record[or(56, n)]` -/
def P698663641915965471.Spec : Prop :=
  ∀ n, (P698663641915965471.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P13740861313856002958

`record[xor(56, n)]`
-/

namespace A133898.P13740861313856002958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 56 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133898.P13740861313856002958

namespace A133898

/-- `record[xor(56, n)]` -/
def P13740861313856002958.Spec : Prop :=
  ∀ n, (P13740861313856002958.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P11176588126057196702

`eq[n, or(56, n)]`
-/

namespace A133898.P11176588126057196702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 56 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P11176588126057196702

namespace A133898

/-- `eq[n, or(56, n)]` -/
def P11176588126057196702.Spec : Prop :=
  ∀ n, (P11176588126057196702.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P11573200983716843578

`lt[or(56, n), n+1]`
-/

namespace A133898.P11573200983716843578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 56 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133898.P11573200983716843578

namespace A133898

/-- `lt[or(56, n), n+1]` -/
def P11573200983716843578.Spec : Prop :=
  ∀ n, (P11573200983716843578.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P5491893441401229083

`lt[or(56, n)-1, n]`
-/

namespace A133898.P5491893441401229083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 56 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133898.P5491893441401229083

namespace A133898

/-- `lt[or(56, n)-1, n]` -/
def P5491893441401229083.Spec : Prop :=
  ∀ n, (P5491893441401229083.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P3586877195916900295

`eq[n, A133878(n)+n]`
-/

namespace A133898.P3586877195916900295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133878 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133898.P3586877195916900295

namespace A133898

/-- `eq[n, A133878(n)+n]` -/
def P3586877195916900295.Spec : Prop :=
  ∀ n, (P3586877195916900295.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P16288111439341975489

`eq[n, A133888(n)+n]`
-/

namespace A133898.P16288111439341975489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133898.P16288111439341975489

namespace A133898

/-- `eq[n, A133888(n)+n]` -/
def P16288111439341975489.Spec : Prop :=
  ∀ n, (P16288111439341975489.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P17985286804465128175

`eq[A005926(n), A133878(n)]`
-/

namespace A133898.P17985286804465128175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P17985286804465128175

namespace A133898

/-- `eq[A005926(n), A133878(n)]` -/
def P17985286804465128175.Spec : Prop :=
  ∀ n, (P17985286804465128175.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P17933049087543185398

`eq[A005926(n), A133888(n)]`
-/

namespace A133898.P17933049087543185398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P17933049087543185398

namespace A133898

/-- `eq[A005926(n), A133888(n)]` -/
def P17933049087543185398.Spec : Prop :=
  ∀ n, (P17933049087543185398.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P5627896351827649854

`eq[A034160(n), A133888(n)]`
-/

namespace A133898.P5627896351827649854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P5627896351827649854

namespace A133898

/-- `eq[A034160(n), A133888(n)]` -/
def P5627896351827649854.Spec : Prop :=
  ∀ n, (P5627896351827649854.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P9654694703653674676

`eq[A066156(n), A133878(n)]`
-/

namespace A133898.P9654694703653674676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P9654694703653674676

namespace A133898

/-- `eq[A066156(n), A133878(n)]` -/
def P9654694703653674676.Spec : Prop :=
  ∀ n, (P9654694703653674676.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P15663512402805623052

`eq[A066156(n), A133888(n)]`
-/

namespace A133898.P15663512402805623052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P15663512402805623052

namespace A133898

/-- `eq[A066156(n), A133888(n)]` -/
def P15663512402805623052.Spec : Prop :=
  ∀ n, (P15663512402805623052.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P5124916046045357330

`eq[A108907(n), A133888(n)]`
-/

namespace A133898.P5124916046045357330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P5124916046045357330

namespace A133898

/-- `eq[A108907(n), A133888(n)]` -/
def P5124916046045357330.Spec : Prop :=
  ∀ n, (P5124916046045357330.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P16435157440497620443

`eq[A117911(n), A133878(n)]`
-/

namespace A133898.P16435157440497620443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P16435157440497620443

namespace A133898

/-- `eq[A117911(n), A133878(n)]` -/
def P16435157440497620443.Spec : Prop :=
  ∀ n, (P16435157440497620443.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P142430060876428595

`eq[A133888(n), A143090(n)]`
-/

namespace A133898.P142430060876428595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P142430060876428595

namespace A133898

/-- `eq[A133888(n), A143090(n)]` -/
def P142430060876428595.Spec : Prop :=
  ∀ n, (P142430060876428595.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P6524271814718961675

`eq[A133888(n), A143645(n)]`
-/

namespace A133898.P6524271814718961675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P6524271814718961675

namespace A133898

/-- `eq[A133888(n), A143645(n)]` -/
def P6524271814718961675.Spec : Prop :=
  ∀ n, (P6524271814718961675.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P7235996859516749790

`eq[A133878(n), A143733(n)]`
-/

namespace A133898.P7235996859516749790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P7235996859516749790

namespace A133898

/-- `eq[A133878(n), A143733(n)]` -/
def P7235996859516749790.Spec : Prop :=
  ∀ n, (P7235996859516749790.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P8069796577995169707

`eq[A133888(n), A143722(n)]`
-/

namespace A133898.P8069796577995169707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P8069796577995169707

namespace A133898

/-- `eq[A133888(n), A143722(n)]` -/
def P8069796577995169707.Spec : Prop :=
  ∀ n, (P8069796577995169707.a n : ℤ) = A133898 n

end A133898

/-! ## A133898.P3674281994149004703

`eq[A133878(n), A143741(n)]`
-/

namespace A133898.P3674281994149004703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133898.P3674281994149004703

namespace A133898

/-- `eq[A133878(n), A143741(n)]` -/
def P3674281994149004703.Spec : Prop :=
  ∀ n, (P3674281994149004703.a n : ℤ) = A133898 n

end A133898

/-!
# A133899: Numbers m such that binomial(m+9,m) mod 9 = 0.

The programs for A133899, the canonical program `A133899.P5836067810427085228` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133899 has offset 0).

The definition of A133899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133899.P5836067810427085228

`eq[n, A133879(n)+n]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133899

/-- `eq[n, A133879(n)+n]` -/
def P5836067810427085228.Spec : Prop :=
  ∀ n, (P5836067810427085228.a n : ℤ) = A133899 n

theorem P5836067810427085228.correct : P5836067810427085228.Spec := by
  intro n
  simp only [A133899]

end A133899

/-! ## A133899.P4617273324715557975

`eq[n, A133889(n)+n]`
-/

namespace A133899.P4617273324715557975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133899.P4617273324715557975

namespace A133899

/-- `eq[n, A133889(n)+n]` -/
def P4617273324715557975.Spec : Prop :=
  ∀ n, (P4617273324715557975.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P13135478494725958322

`eq[A066156(n), A133879(n)]`
-/

namespace A133899.P13135478494725958322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P13135478494725958322

namespace A133899

/-- `eq[A066156(n), A133879(n)]` -/
def P13135478494725958322.Spec : Prop :=
  ∀ n, (P13135478494725958322.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P5294084900666140217

`eq[A066156(n), A133889(n)]`
-/

namespace A133899.P5294084900666140217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P5294084900666140217

namespace A133899

/-- `eq[A066156(n), A133889(n)]` -/
def P5294084900666140217.Spec : Prop :=
  ∀ n, (P5294084900666140217.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P14709147788481761093

`eq[A117911(n), A133879(n)]`
-/

namespace A133899.P14709147788481761093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P14709147788481761093

namespace A133899

/-- `eq[A117911(n), A133879(n)]` -/
def P14709147788481761093.Spec : Prop :=
  ∀ n, (P14709147788481761093.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P7022168511925130655

`eq[A117911(n), A133889(n)]`
-/

namespace A133899.P7022168511925130655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P7022168511925130655

namespace A133899

/-- `eq[A117911(n), A133889(n)]` -/
def P7022168511925130655.Spec : Prop :=
  ∀ n, (P7022168511925130655.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P12563952858160182470

`eq[A133889(n), A143645(n)]`
-/

namespace A133899.P12563952858160182470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P12563952858160182470

namespace A133899

/-- `eq[A133889(n), A143645(n)]` -/
def P12563952858160182470.Spec : Prop :=
  ∀ n, (P12563952858160182470.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P12102724951954815171

`eq[A133889(n), A143722(n)]`
-/

namespace A133899.P12102724951954815171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P12102724951954815171

namespace A133899

/-- `eq[A133889(n), A143722(n)]` -/
def P12102724951954815171.Spec : Prop :=
  ∀ n, (P12102724951954815171.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P1664012841809111232

`eq[A133889(n), A143756(n)]`
-/

namespace A133899.P1664012841809111232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P1664012841809111232

namespace A133899

/-- `eq[A133889(n), A143756(n)]` -/
def P1664012841809111232.Spec : Prop :=
  ∀ n, (P1664012841809111232.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P7766062100421102276

`eq[A133889(n), A143757(n)]`
-/

namespace A133899.P7766062100421102276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P7766062100421102276

namespace A133899

/-- `eq[A133889(n), A143757(n)]` -/
def P7766062100421102276.Spec : Prop :=
  ∀ n, (P7766062100421102276.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P830908540489691522

`eq[A133889(n), A143758(n)]`
-/

namespace A133899.P830908540489691522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P830908540489691522

namespace A133899

/-- `eq[A133889(n), A143758(n)]` -/
def P830908540489691522.Spec : Prop :=
  ∀ n, (P830908540489691522.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P16866976611837092737

`eq[A133889(n), A143919(n)]`
-/

namespace A133899.P16866976611837092737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P16866976611837092737

namespace A133899

/-- `eq[A133889(n), A143919(n)]` -/
def P16866976611837092737.Spec : Prop :=
  ∀ n, (P16866976611837092737.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P5713078840475618757

`eq[A133879(n), A167858(n)]`
-/

namespace A133899.P5713078840475618757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P5713078840475618757

namespace A133899

/-- `eq[A133879(n), A167858(n)]` -/
def P5713078840475618757.Spec : Prop :=
  ∀ n, (P5713078840475618757.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P18317531700681451598

`eq[A133889(n), A167858(n)]`
-/

namespace A133899.P18317531700681451598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P18317531700681451598

namespace A133899

/-- `eq[A133889(n), A167858(n)]` -/
def P18317531700681451598.Spec : Prop :=
  ∀ n, (P18317531700681451598.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P13615762230655557546

`eq[A133889(n), A185013(n)]`
-/

namespace A133899.P13615762230655557546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P13615762230655557546

namespace A133899

/-- `eq[A133889(n), A185013(n)]` -/
def P13615762230655557546.Spec : Prop :=
  ∀ n, (P13615762230655557546.a n : ℤ) = A133899 n

end A133899

/-! ## A133899.P2267660941077172347

`eq[A133889(n), A185014(n)]`
-/

namespace A133899.P2267660941077172347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133899.P2267660941077172347

namespace A133899

/-- `eq[A133889(n), A185014(n)]` -/
def P2267660941077172347.Spec : Prop :=
  ∀ n, (P2267660941077172347.a n : ℤ) = A133899 n

end A133899

