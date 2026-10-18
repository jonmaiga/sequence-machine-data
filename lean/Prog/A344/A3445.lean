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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

/-!
# A344500: a(n) = Sum_{k=0..n} binomial(n, k)*CT(n, k) = Sum_{k=0..n} (-1)^(n-k)*binomial(n, k)*CT(n, k), where CT(n, k) is the Catalan triangle A053121.

The programs for A344500, there is no canonical definition to state claims against.
-/

/-! ## A344500.P1659431148427061281

`A008615(A118929(n)+A060557(n))`
-/

namespace A344500.P1659431148427061281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A118929 n + A060557 n).toNat

end

end A344500.P1659431148427061281

/-! ## A344500.P7301428264626738958

`A008612(A317024(n+1)+A006497(n))`
-/

namespace A344500.P7301428264626738958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A317024 (n + 1) + A006497 n).toNat

end

end A344500.P7301428264626738958

/-! ## A344500.P12590780985640946697

`A007595(n+1)-A059841(A000112(n))`
-/

namespace A344500.P12590780985640946697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007595 (n + 1) - A059841 (A000112 n).toNat

end

end A344500.P12590780985640946697

/-! ## A344500.P1440998730394505453

`A103221(A100230(n)-A144029(n+1))`
-/

namespace A344500.P1440998730394505453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A100230 n - A144029 (n + 1)).toNat

end

end A344500.P1440998730394505453

/-!
# A344501: a(n) = Sum_{k=0..n} binomial(n, k)*HT(n, k) = Sum_{k=0..n} (-1)^(n-k)*binomial(n, k)*HT(n, k), where HT(n, k) is the Hermite triangle A099174.

The programs for A344501, there is no canonical definition to state claims against.
-/

/-! ## A344501.P2038904786171805446

`∏{p}[A076310((n+1)^n), #-1]`
-/

namespace A344501.P2038904786171805446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 ((n + 1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A344501.P2038904786171805446

/-! ## A344501.P4300605886673245820

`A360910(∏[n!/floor(n/2)!²])`
-/

namespace A344501.P4300605886673245820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344501.P4300605886673245820

/-!
# A344502: a(n) = Sum_{k=0..n} binomial(n, k)^2 * hypergeom([(k-n)/2, (k-n+1)/2], [k+2], 4).

The programs for A344502, there is no canonical definition to state claims against.
-/

/-! ## A344502.P8579521720059073069

`A348840(A001844(n)+1)`
-/

namespace A344502.P8579521720059073069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348840 (A001844 n + 1).toNat

end

end A344502.P8579521720059073069

/-! ## A344502.P5854376351155974493

`A348840(A051890(n+1))`
-/

namespace A344502.P5854376351155974493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348840 (A051890 (n + 1)).toNat

end

end A344502.P5854376351155974493

/-! ## A344502.P2287911807823016832

`A348840(A046092(n)+2)`
-/

namespace A344502.P2287911807823016832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348840 (A046092 n + 2).toNat

end

end A344502.P2287911807823016832

/-! ## A344502.P10432824728971538778

`A348840(∑[2*A004277(n)])`
-/

namespace A344502.P10432824728971538778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344502.P10432824728971538778

/-! ## A344502.P8116963370492434890

`A348840(A000124(2*n)+n+1)`
-/

namespace A344502.P8116963370492434890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348840 (A000124 (2 * n) + (n + 1 : ℤ)).toNat

end

end A344502.P8116963370492434890

/-!
# A344503: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n, k)^2*hypergeom([(k-n)/2, (k-n+1)/2], [k+2], 4).

The programs for A344503, the canonical program `A344503.P18144269787827029836` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344503 has offset 0).

The definition of A344503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344503.P18144269787827029836

`(1-n%3)*A051033(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344503

/-- `(1-n%3)*A051033(n)` -/
def P18144269787827029836.Spec : Prop :=
  ∀ n, P18144269787827029836.a n = A344503 n

theorem P18144269787827029836.correct : P18144269787827029836.Spec := by
  intro n
  simp only [A344503]

end A344503

/-! ## A344503.P1813470579564938047

`A051033(n)*A057078(n)`
-/

namespace A344503.P1813470579564938047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 n * A057078 n

end

end A344503.P1813470579564938047

namespace A344503

/-- `A051033(n)*A057078(n)` -/
def P1813470579564938047.Spec : Prop :=
  ∀ n, P1813470579564938047.a n = A344503 n

end A344503

/-! ## A344503.P7312833198901922578

`∑[A099837(n)]*A051033(n)`
-/

namespace A344503.P7312833198901922578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A051033 n

end

end A344503.P7312833198901922578

namespace A344503

/-- `∑[A099837(n)]*A051033(n)` -/
def P7312833198901922578.Spec : Prop :=
  ∀ n, P7312833198901922578.a n = A344503 n

end A344503

/-!
# A344504: a(n) = [x^n] ((x - 1)/sqrt(4/(x + 1) - 3) + x + 1)/(2*x*(3*x - 1)).

The programs for A344504, the canonical program `A344504.P10024715158106452626` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344504 has offset 0).

The definition of A344504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344504.P6182384023502344268

`A025566(n+1)+3*a(n-1)` with `a(0)=0`
-/

namespace A344504.P6182384023502344268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A025566 (n + 1) + 3 * a (n - 1)

end

end A344504.P6182384023502344268

namespace A344504

/-- `A025566(n+1)+3*a(n-1)` -/
def P6182384023502344268.Spec : Prop :=
  ∀ n, P6182384023502344268.a n = A344504 n

end A344504

/-! ## A344504.P10024715158106452626

`Δ[A005773(n)]+3*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344504

/-- `Δ[A005773(n)]+3*a(n-1)` -/
def P10024715158106452626.Spec : Prop :=
  ∀ n, P10024715158106452626.a n = A344504 n

theorem P10024715158106452626.correct : P10024715158106452626.Spec := by
  intro n
  simp only [A344504]

end A344504

/-! ## A344504.P14948692976918757531

`Δ[A307789(n+1)]+3*a(n-1)` with `a(0)=0`
-/

namespace A344504.P14948692976918757531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + 3 * a (n - 1)

end

end A344504.P14948692976918757531

namespace A344504

/-- `Δ[A307789(n+1)]+3*a(n-1)` -/
def P14948692976918757531.Spec : Prop :=
  ∀ n, P14948692976918757531.a n = A344504 n

end A344504

/-!
# A344506: a(n) = [x^n] 2 / (1 - 7*x + sqrt(1 - 2*x - 3*x^2)).

The programs for A344506, the canonical program `A344506.P15708619125602312537` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344506 has offset 0).

The definition of A344506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344506.P15708619125602312537

`(39*(2-n)*a(n-3)-(17*n+5)*a(n-2)+(19*n+10)*a(n-1))/(3*(n+1))` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A344506

/-- `(39*(2-n)*a(n-3)-(17*n+5)*a(n-2)+(19*n+10)*a(n-1))/(3*(n+1))` -/
def P15708619125602312537.Spec : Prop :=
  ∀ n, P15708619125602312537.a n = (A344506 n : ℚ)

end A344506

/-! ## A344506.P1226026074809653210

`A330792(A167614(n+2))`
-/

namespace A344506.P1226026074809653210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330792 (A167614 (n + 2)).toNat

end

end A344506.P1226026074809653210

namespace A344506

/-- `A330792(A167614(n+2))` -/
def P1226026074809653210.Spec : Prop :=
  ∀ n, P1226026074809653210.a n = A344506 n

end A344506

/-! ## A344506.P1396549701810242210

`A330792(A141214(n)+6)`
-/

namespace A344506.P1396549701810242210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330792 (A141214 n + 6).toNat

end

end A344506.P1396549701810242210

namespace A344506

/-- `A330792(A141214(n)+6)` -/
def P1396549701810242210.Spec : Prop :=
  ∀ n, P1396549701810242210.a n = A344506 n

end A344506

/-! ## A344506.P227705558084236725

`A330792(A052905(n)+8)`
-/

namespace A344506.P227705558084236725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330792 (A052905 n + 8).toNat

end

end A344506.P227705558084236725

namespace A344506

/-- `A330792(A052905(n)+8)` -/
def P227705558084236725.Spec : Prop :=
  ∀ n, P227705558084236725.a n = A344506 n

end A344506

/-!
# A344507: a(n) = [x^n] 2/(3*x + sqrt((1 - 3*x)*(x + 1)) + 1).

The programs for A344507, the canonical program `A344507.P8322352465595459952` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344507 has offset 0).

The definition of A344507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344507.P9675573020340431675

`A138461(n+1)+A138461(n)`
-/

namespace A344507.P9675573020340431675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138461 (n + 1) + A138461 n

end

end A344507.P9675573020340431675

namespace A344507

/-- `A138461(n+1)+A138461(n)` -/
def P9675573020340431675.Spec : Prop :=
  ∀ n, P9675573020340431675.a n = A344507 n

end A344507

/-! ## A344507.P8322352465595459952

`(A086246(n+1)-a(n-1))/2-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344507

/-- `(A086246(n+1)-a(n-1))/2-a(n-1)` -/
def P8322352465595459952.Spec : Prop :=
  ∀ n, P8322352465595459952.a n = (A344507 n : ℚ)

end A344507

/-!
# A344508: a(n) = Sum_{k=1..n} k * lcm(k,n).

The programs for A344508, the canonical program `A344508.P1759457213405242040` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344508 has offset 1).

The definition of A344508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344508.P6409291178088143594

`(n+1)*A344509(n+1)`
-/

namespace A344508.P6409291178088143594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A344509 (n + 1)

end

end A344508.P6409291178088143594

namespace A344508

/-- `(n+1)*A344509(n+1)` -/
def P6409291178088143594.Spec : Prop :=
  ∀ n, P6409291178088143594.a n = A344508 (n + 1)

end A344508

/-! ## A344508.P1759457213405242040

`(n+1)*∑{d}[n+1, #*A053818((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A344508

/-- `(n+1)*∑{d}[n+1, #*A053818((n+1)/#)]` -/
def P1759457213405242040.Spec : Prop :=
  ∀ n, P1759457213405242040.a n = A344508 (n + 1)

theorem P1759457213405242040.correct : P1759457213405242040.Spec := by
  intro n
  simp only [A344508, Nat.add_sub_cancel]

end A344508

/-! ## A344508.P7291882217277072360

`(n+1)*(A051193(n+1)-A006580(n+1))`
-/

namespace A344508.P7291882217277072360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A051193 (n + 1) - A006580 (n + 1))

end

end A344508.P7291882217277072360

namespace A344508

/-- `(n+1)*(A051193(n+1)-A006580(n+1))` -/
def P7291882217277072360.Spec : Prop :=
  ∀ n, P7291882217277072360.a n = A344508 (n + 1)

end A344508

/-! ## A344508.P9404383465127333852

`∑{d}[n+1, A000010(#)*A332654((n+1)/#)]*(n+1)`
-/

namespace A344508.P9404383465127333852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A000010 d * A332654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * (n + 1 : ℤ)

end

end A344508.P9404383465127333852

namespace A344508

/-- `∑{d}[n+1, A000010(#)*A332654((n+1)/#)]*(n+1)` -/
def P9404383465127333852.Spec : Prop :=
  ∀ n, P9404383465127333852.a n = A344508 (n + 1)

end A344508

/-! ## A344508.P12737647858665903194

`∑{d}[n+1, A320941(#)*A328502((n+1)/#)]*(n+1)`
-/

namespace A344508.P12737647858665903194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A320941 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * (n + 1 : ℤ)

end

end A344508.P12737647858665903194

namespace A344508

/-- `∑{d}[n+1, A320941(#)*A328502((n+1)/#)]*(n+1)` -/
def P12737647858665903194.Spec : Prop :=
  ∀ n, P12737647858665903194.a n = A344508 (n + 1)

end A344508

/-!
# A344509: a(n) = (1/n) * Sum_{k=1..n} k * lcm(k,n).

The programs for A344509, the canonical program `A344509.P5578026115865339711` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344509 has offset 1).

The definition of A344509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344508, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344509.P5578026115865339711

`A344508(n+1)/(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344509

/-- `A344508(n+1)/(n+1)` -/
def P5578026115865339711.Spec : Prop :=
  ∀ n, P5578026115865339711.a n = (A344509 (n + 1) : ℚ)

end A344509

/-! ## A344509.P9615805851537553168

`∑{d}[n+1, #*A053818((n+1)/#)]`
-/

namespace A344509.P9615805851537553168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A053818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344509.P9615805851537553168

namespace A344509

/-- `∑{d}[n+1, #*A053818((n+1)/#)]` -/
def P9615805851537553168.Spec : Prop :=
  ∀ n, P9615805851537553168.a n = A344509 (n + 1)

end A344509

/-! ## A344509.P11625833330311122263

`A051193(n+1)-A006580(n+1)`
-/

namespace A344509.P11625833330311122263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051193 (n + 1) - A006580 (n + 1)

end

end A344509.P11625833330311122263

namespace A344509

/-- `A051193(n+1)-A006580(n+1)` -/
def P11625833330311122263.Spec : Prop :=
  ∀ n, P11625833330311122263.a n = A344509 (n + 1)

end A344509

/-! ## A344509.P14393739219288266834

`∑{d}[n+1, A000010(#)*A332654((n+1)/#)]`
-/

namespace A344509.P14393739219288266834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A332654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344509.P14393739219288266834

namespace A344509

/-- `∑{d}[n+1, A000010(#)*A332654((n+1)/#)]` -/
def P14393739219288266834.Spec : Prop :=
  ∀ n, P14393739219288266834.a n = A344509 (n + 1)

end A344509

/-! ## A344509.P17410565071949010813

`∑{d}[n+1, A320941(#)*A328502((n+1)/#)]`
-/

namespace A344509.P17410565071949010813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320941 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344509.P17410565071949010813

namespace A344509

/-- `∑{d}[n+1, A320941(#)*A328502((n+1)/#)]` -/
def P17410565071949010813.Spec : Prop :=
  ∀ n, P17410565071949010813.a n = A344509 (n + 1)

end A344509

/-!
# A344510: a(n) = Sum_{k=1..n} k * gcd(k,n).

The programs for A344510, the canonical program `A344510.P7382493440535881526` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344510 has offset 1).

The definition of A344510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344510.P7382493440535881526

`(n+1)*(n+1+A018804(n+1))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344510

/-- `(n+1)*(n+1+A018804(n+1))/2` -/
def P7382493440535881526.Spec : Prop :=
  ∀ n, P7382493440535881526.a n = (A344510 (n + 1) : ℚ)

end A344510

/-! ## A344510.P2877332266785366430

`(n+1)/2*A209295(n+1)`
-/

namespace A344510.P2877332266785366430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A209295 (n + 1) : ℚ)

end

end A344510.P2877332266785366430

namespace A344510

/-- `(n+1)/2*A209295(n+1)` -/
def P2877332266785366430.Spec : Prop :=
  ∀ n, P2877332266785366430.a n = (A344510 (n + 1) : ℚ)

end A344510

/-! ## A344510.P9911639813664579844

`∑{d}[n+1, A000217(#)*A002618((n+1)/#)]`
-/

namespace A344510.P9911639813664579844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P9911639813664579844

namespace A344510

/-- `∑{d}[n+1, A000217(#)*A002618((n+1)/#)]` -/
def P9911639813664579844.Spec : Prop :=
  ∀ n, P9911639813664579844.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P10545853262985207391

`∑{d}[n+1, A000290(#)*A023896((n+1)/#)]`
-/

namespace A344510.P10545853262985207391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P10545853262985207391

namespace A344510

/-- `∑{d}[n+1, A000290(#)*A023896((n+1)/#)]` -/
def P10545853262985207391.Spec : Prop :=
  ∀ n, P10545853262985207391.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P15534984823715096206

`∑{d}[n+1, A007434(#)*A057661((n+1)/#)]`
-/

namespace A344510.P15534984823715096206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P15534984823715096206

namespace A344510

/-- `∑{d}[n+1, A007434(#)*A057661((n+1)/#)]` -/
def P15534984823715096206.Spec : Prop :=
  ∀ n, P15534984823715096206.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P5686205982930428836

`∑{d}[n+1, A007438(#)*A057660((n+1)/#)]`
-/

namespace A344510.P5686205982930428836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P5686205982930428836

namespace A344510

/-- `∑{d}[n+1, A007438(#)*A057660((n+1)/#)]` -/
def P5686205982930428836.Spec : Prop :=
  ∀ n, P5686205982930428836.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P1693874498716725962

`∑{d}[n+1, A007437(#)*A063445((n+1)/#)]`
-/

namespace A344510.P1693874498716725962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P1693874498716725962

namespace A344510

/-- `∑{d}[n+1, A007437(#)*A063445((n+1)/#)]` -/
def P1693874498716725962.Spec : Prop :=
  ∀ n, P1693874498716725962.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P5959267006426236747

`∑{d}[n+1, A034714(#)*A125287((n+1)/#)]`
-/

namespace A344510.P5959267006426236747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P5959267006426236747

namespace A344510

/-- `∑{d}[n+1, A034714(#)*A125287((n+1)/#)]` -/
def P5959267006426236747.Spec : Prop :=
  ∀ n, P5959267006426236747.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P14027765534513086754

`∑{d}[n+1, A055615(#)*A309732((n+1)/#)]`
-/

namespace A344510.P14027765534513086754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A309732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P14027765534513086754

namespace A344510

/-- `∑{d}[n+1, A055615(#)*A309732((n+1)/#)]` -/
def P14027765534513086754.Spec : Prop :=
  ∀ n, P14027765534513086754.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P8912231100186497965

`∑{d}[n+1, A254520(#)*A390808((n+1)/#)]`
-/

namespace A344510.P8912231100186497965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A390808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P8912231100186497965

namespace A344510

/-- `∑{d}[n+1, A254520(#)*A390808((n+1)/#)]` -/
def P8912231100186497965.Spec : Prop :=
  ∀ n, P8912231100186497965.a n = A344510 (n + 1)

end A344510

/-! ## A344510.P10354036803269619344

`∑{d}[n+1, A309322(#)*A340850((n+1)/#)]`
-/

namespace A344510.P10354036803269619344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309322 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P10354036803269619344

namespace A344510

/-- `∑{d}[n+1, A309322(#)*A340850((n+1)/#)]` -/
def P10354036803269619344.Spec : Prop :=
  ∀ n, P10354036803269619344.a n = A344510 (n + 1)

end A344510

/-!
# A344511: a(n) = Sum_{k >= 0} sign(d_k) * 2^k for any number n with decimal expansion Sum_{k >= 0} d_k * 10^k.

The programs for A344511, there is no canonical definition to state claims against.
-/

/-! ## A344511.P10230837768887622482

`a(n-(A235049(n)+1))+1` with `a(0)=0`
-/

namespace A344511.P10230837768887622482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - (A235049 n + 1)).toNat + 1

end

end A344511.P10230837768887622482

/-!
# A344512: a(n) is the least number larger than 1 which is a self number in all the bases 2 <= b <= n.

The programs for A344512, there is no canonical definition to state claims against.
-/

/-! ## A344512.P12124310017150837690

`A067396(∏{d}[A081478(n+1), #])`
-/

namespace A344512.P12124310017150837690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067396 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A344512.P12124310017150837690

/-! ## A344512.P13024086168698503493

`A344513(A344499(2*n)+A344462(n+1))`
-/

namespace A344512.P13024086168698503493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344513 (A344499 (2 * n) + A344462 (n + 1)).toNat

end

end A344512.P13024086168698503493

/-!
# A344514: a(n) = Sum_{k=1..n} floor(n/k^2)^k.

The programs for A344514, there is no canonical definition to state claims against.
-/

/-! ## A344514.P6904355571806250904

`∑[A323432(A328855(n+1)^A208879(n))]`
-/

namespace A344514.P6904355571806250904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323432 (SequenceMachineLib.roundAway ((A328855 (n + 1) : ℚ) ^ (A208879 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344514.P6904355571806250904

/-!
# A344515: Primes p such that 2^p-1 has exactly 3 distinct prime factors.

The programs for A344515, there is no canonical definition to state claims against.
-/

/-! ## A344515.P17613807595586620173

`p?[eq[3, A046800(n)]]`
-/

namespace A344515.P17613807595586620173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A344515.P17613807595586620173

/-! ## A344515.P8732830345693942335

`eq[A046800(n), A323774(n)]`
-/

namespace A344515.P8732830345693942335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344515.P8732830345693942335

/-! ## A344515.P9987413795510517172

`A045319(eq[3, A088863(n+1)])`
-/

namespace A344515.P9987413795510517172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344515.P9987413795510517172

/-! ## A344515.P15792611176113504464

`eq[A007012(n)+1, A046800(n)]`
-/

namespace A344515.P15792611176113504464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344515.P15792611176113504464

/-! ## A344515.P11579031786737702261

`eq[A092976(n)+1, A046800(n)]`
-/

namespace A344515.P11579031786737702261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344515.P11579031786737702261

/-!
# A344516: Numbers k such that (2^k-5, 2^k-3) are twin primes.

The programs for A344516, there is no canonical definition to state claims against.
-/

/-! ## A344516.P12795960397053402909

`A128945(A340610(n+1))`
-/

namespace A344516.P12795960397053402909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128945 (A340610 (n + 1)).toNat

end

end A344516.P12795960397053402909

/-! ## A344516.P12121777959894188415

`A177907(A353980(n+1))`
-/

namespace A344516.P12121777959894188415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177907 (A353980 (n + 1)).toNat

end

end A344516.P12121777959894188415

/-! ## A344516.P17586365716162042627

`∑[A103314(A266769(n))]+2`
-/

namespace A344516.P17586365716162042627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 (A266769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A344516.P17586365716162042627

/-!
# A344517: Minimum diameter of 4-regular circulant graphs of order n.

The programs for A344517, the canonical program `A344517.P1512129004115283548` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344517 has offset 4).

The definition of A344517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344517.P1512129004115283548

`ceil((sqrt(2*(n+4)-1)-1)/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A344517

/-- `ceil((sqrt(2*(n+4)-1)-1)/2)` -/
def P1512129004115283548.Spec : Prop :=
  ∀ n, P1512129004115283548.a n = A344517 (n + 4)

theorem P1512129004115283548.correct : P1512129004115283548.Spec := by
  intro n
  simp only [A344517, Nat.add_sub_cancel]

end A344517

/-! ## A344517.P16867183370139709810

`dr(round(∏[sqrt(ratio[n+2])]))`
-/

namespace A344517.P16867183370139709810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A344517.P16867183370139709810

namespace A344517

/-- `dr(round(∏[sqrt(ratio[n+2])]))` -/
def P16867183370139709810.Spec : Prop :=
  ∀ n, (P16867183370139709810.a n : ℤ) = A344517 (n + 4)

end A344517

/-! ## A344517.P14306968352946659628

`round(∏[sqrt(ratio[n+2])])%9`
-/

namespace A344517.P14306968352946659628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) 9

end

end A344517.P14306968352946659628

namespace A344517

/-- `round(∏[sqrt(ratio[n+2])])%9` -/
def P14306968352946659628.Spec : Prop :=
  ∀ n, P14306968352946659628.a n = A344517 (n + 4)

end A344517

/-! ## A344517.P8173239169801312271

`and(39, round(∏[sqrt(ratio[n+2])]))`
-/

namespace A344517.P8173239169801312271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 39 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A344517.P8173239169801312271

namespace A344517

/-- `and(39, round(∏[sqrt(ratio[n+2])]))` -/
def P8173239169801312271.Spec : Prop :=
  ∀ n, P8173239169801312271.a n = A344517 (n + 4)

end A344517

/-! ## A344517.P15218898880322260465

`∑{digits}[round(∏[sqrt(ratio[n+2])]), #]`
-/

namespace A344517.P15218898880322260465
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f3 (n + 1) : ℚ) / (f3 n : ℚ) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A344517.P15218898880322260465

namespace A344517

/-- `∑{digits}[round(∏[sqrt(ratio[n+2])]), #]` -/
def P15218898880322260465.Spec : Prop :=
  ∀ n, (P15218898880322260465.a n : ℤ) = A344517 (n + 4)

end A344517

/-! ## A344517.P12656244738250181158

`∑[char[Δ[lcm(n, n+2)-n]]]`
-/

namespace A344517.P12656244738250181158
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 2) : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344517.P12656244738250181158

namespace A344517

/-- `∑[char[Δ[lcm(n, n+2)-n]]]` -/
def P12656244738250181158.Spec : Prop :=
  ∀ n, (P12656244738250181158.a n : ℤ) = A344517 (n + 4)

end A344517

/-! ## A344517.P9428044235623658505

`∑[char[abs(4*C(n, 2)-1)-1]]`
-/

namespace A344517.P9428044235623658505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * Nat.choose n 2 : ℤ) - 1| - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344517.P9428044235623658505

namespace A344517

/-- `∑[char[abs(4*C(n, 2)-1)-1]]` -/
def P9428044235623658505.Spec : Prop :=
  ∀ n, (P9428044235623658505.a n : ℤ) = A344517 (n + 4)

end A344517

/-! ## A344517.P1915756020257217936

`A371355(n+4)`
-/

namespace A344517.P1915756020257217936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (n + 4)

end

end A344517.P1915756020257217936

namespace A344517

/-- `A371355(n+4)` -/
def P1915756020257217936.Spec : Prop :=
  ∀ n, P1915756020257217936.a n = A344517 (n + 4)

end A344517

/-! ## A344517.P15735045825362756606

`A095861(n+3)+1`
-/

namespace A344517.P15735045825362756606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (n + 3) + 1

end

end A344517.P15735045825362756606

namespace A344517

/-- `A095861(n+3)+1` -/
def P15735045825362756606.Spec : Prop :=
  ∀ n, P15735045825362756606.a n = A344517 (n + 4)

end A344517

/-! ## A344517.P17990052087455391136

`A391618(2*(n+3))`
-/

namespace A344517.P17990052087455391136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (2 * (n + 3))

end

end A344517.P17990052087455391136

namespace A344517

/-- `A391618(2*(n+3))` -/
def P17990052087455391136.Spec : Prop :=
  ∀ n, P17990052087455391136.a n = A344517 (n + 4)

end A344517

/-!
# A344518: Numbers that are the sum of five positive fifth powers in four or more ways.

The programs for A344518, there is no canonical definition to state claims against.
-/

/-! ## A344518.P15312256058128775560

`record[A344519(gcd(n, A058343(n)))]`
-/

namespace A344518.P15312256058128775560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344519 (Int.gcd (n : ℤ) (A058343 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344518.P15312256058128775560

/-! ## A344518.P13090855773271084301

`∏{e}[A291275(3*(n+1)), A344519(n+1)/#]`
-/

namespace A344518.P13090855773271084301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291275 (3 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A344519 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A344518.P13090855773271084301

/-! ## A344518.P9274028605067977210

`A053866(2^(-1%(n+1)+n))*A344519(n+1)`
-/

namespace A344518.P9274028605067977210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ))).toNat * A344519 (n + 1)

end

end A344518.P9274028605067977210

/-! ## A344518.P16016993770964244758

`A053866((2-C(2, n²))^(n-1))*A344519(n+1)`
-/

namespace A344518.P16016993770964244758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (SequenceMachineLib.roundAway ((2 - (Nat.choose 2 (n ^ 2) : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat * A344519 (n + 1)

end

end A344518.P16016993770964244758

/-! ## A344518.P6758188025774014604

`A344519(n+1)+A010054(A054566(n))`
-/

namespace A344518.P6758188025774014604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344519 (n + 1) + A010054 (A054566 n).toNat

end

end A344518.P6758188025774014604

/-!
# A344519: Numbers that are the sum of five positive fifth powers in exactly four ways.

The programs for A344519, there is no canonical definition to state claims against.
-/

/-! ## A344519.P2341028682994246361

`A344518(A080681(n+1)%A109178(n+1))`
-/

namespace A344519.P2341028682994246361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344518 (Int.tmod (A080681 (n + 1)) (A109178 (n + 1))).toNat

end

end A344519.P2341028682994246361

/-! ## A344519.P4519951643018397121

`A344518(∪[A080681(n+1), A109178(n+1)])`
-/

namespace A344519.P4519951643018397121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109178 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344518 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A344519.P4519951643018397121

/-! ## A344519.P8731591414086013287

`A344518(∑[A058343(n+2)!])`
-/

namespace A344519.P8731591414086013287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058343 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344519.P8731591414086013287

/-!
# A344521: a(n) = Sum_{1 <= i <= j <= k <= n} gcd(i,j,k).

The programs for A344521, the canonical program `A344521.P15693344205038939177` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344521 has offset 1).

The definition of A344521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344521.P15693344205038939177

`∑[A309322(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A344521

/-- `∑[A309322(n+1)]` -/
def P15693344205038939177.Spec : Prop :=
  ∀ n, P15693344205038939177.a n = A344521 (n + 1)

theorem P15693344205038939177.correct : P15693344205038939177.Spec := by
  intro n
  simp only [A344521, Nat.add_sub_cancel]

end A344521

/-! ## A344521.P13191512382598620475

`∑[∑{d}[n+1, #*A007438((n+1)/#)]]`
-/

namespace A344521.P13191512382598620475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344521.P13191512382598620475

namespace A344521

/-- `∑[∑{d}[n+1, #*A007438((n+1)/#)]]` -/
def P13191512382598620475.Spec : Prop :=
  ∀ n, P13191512382598620475.a n = A344521 (n + 1)

end A344521

/-! ## A344521.P11253154587699738230

`∑[(A069097(n+1)+A018804(n+1))/2]`
-/

namespace A344521.P11253154587699738230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069097 (n + 1) + A018804 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344521.P11253154587699738230

namespace A344521

/-- `∑[(A069097(n+1)+A018804(n+1))/2]` -/
def P11253154587699738230.Spec : Prop :=
  ∀ n, P11253154587699738230.a n = (A344521 (n + 1) : ℚ)

end A344521

/-! ## A344521.P15455166581682873325

`∑[∑{d}[n+1, A000010(#)*A000217((n+1)/#)]]`
-/

namespace A344521.P15455166581682873325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344521.P15455166581682873325

namespace A344521

/-- `∑[∑{d}[n+1, A000010(#)*A000217((n+1)/#)]]` -/
def P15455166581682873325.Spec : Prop :=
  ∀ n, P15455166581682873325.a n = A344521 (n + 1)

end A344521

/-! ## A344521.P14289406856613821665

`a(n-1)+A309322(n+1)%A309731(n+1)` with `a(0)=1`
-/

namespace A344521.P14289406856613821665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A309322 (n + 1)) (A309731 (n + 1))

end

end A344521.P14289406856613821665

namespace A344521

/-- `a(n-1)+A309322(n+1)%A309731(n+1)` -/
def P14289406856613821665.Spec : Prop :=
  ∀ n, P14289406856613821665.a n = A344521 (n + 1)

end A344521

/-! ## A344521.P7130803504327312029

`∑[A343516(∑[n+2])]`
-/

namespace A344521.P7130803504327312029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344521.P7130803504327312029

namespace A344521

/-- `∑[A343516(∑[n+2])]` -/
def P7130803504327312029.Spec : Prop :=
  ∀ n, P7130803504327312029.a n = A344521 (n + 1)

end A344521

/-! ## A344521.P15494458311823236370

`A345229(∑[n+3]+1)`
-/

namespace A344521.P15494458311823236370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345229 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A344521.P15494458311823236370

namespace A344521

/-- `A345229(∑[n+3]+1)` -/
def P15494458311823236370.Spec : Prop :=
  ∀ n, P15494458311823236370.a n = A344521 (n + 1)

end A344521

/-!
# A344522: a(n) = Sum_{1 <= i, j, k <= n} gcd(i,j,k).

The programs for A344522, the canonical program `A344522.P9914785473880405217` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344522 has offset 1).

The definition of A344522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344522.P9914785473880405217

`∑[A344599(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A344522

/-- `∑[A344599(n+1)]` -/
def P9914785473880405217.Spec : Prop :=
  ∀ n, P9914785473880405217.a n = A344522 (n + 1)

theorem P9914785473880405217.correct : P9914785473880405217.Spec := by
  intro n
  simp only [A344522, Nat.add_sub_cancel]

end A344522

/-! ## A344522.P15110150575619912407

`∑[∑{d}[n+1, #*A344596((n+1)/#)]]`
-/

namespace A344522.P15110150575619912407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A344596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344522.P15110150575619912407

namespace A344522

/-- `∑[∑{d}[n+1, #*A344596((n+1)/#)]]` -/
def P15110150575619912407.Spec : Prop :=
  ∀ n, P15110150575619912407.a n = A344522 (n + 1)

end A344522

/-! ## A344522.P11053084220598519582

`∑[∑{d}[n+1, A000010(#)*A003215((n+1)/#-1)]]`
-/

namespace A344522.P11053084220598519582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A003215 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344522.P11053084220598519582

namespace A344522

/-- `∑[∑{d}[n+1, A000010(#)*A003215((n+1)/#-1)]]` -/
def P11053084220598519582.Spec : Prop :=
  ∀ n, P11053084220598519582.a n = A344522 (n + 1)

end A344522

/-! ## A344522.P7137564626333400065

`A344479(∑[n+3]+1)`
-/

namespace A344522.P7137564626333400065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A344522.P7137564626333400065

namespace A344522

/-- `A344479(∑[n+3]+1)` -/
def P7137564626333400065.Spec : Prop :=
  ∀ n, P7137564626333400065.a n = A344522 (n + 1)

end A344522

/-! ## A344522.P15758747810229139611

`A344479(A034856(n+2))+val(A191106(n+1), 2)`
-/

namespace A344522.P15758747810229139611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A034856 (n + 2)).toNat + (SequenceMachineLib.valuation (A191106 (n + 1)).toNat 2 : ℤ)

end

end A344522.P15758747810229139611

namespace A344522

/-- `A344479(A034856(n+2))+val(A191106(n+1), 2)` -/
def P15758747810229139611.Spec : Prop :=
  ∀ n, P15758747810229139611.a n = A344522 (n + 1)

end A344522

/-!
# A344523: a(n) = Sum_{1 <= i, j, k, l <= n} gcd(i,j,k,l).

The programs for A344523, the canonical program `A344523.P7355579569524219208` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344523 has offset 1).

The definition of A344523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344523.P7355579569524219208

`∑[A344600(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A344523

/-- `∑[A344600(n+1)]` -/
def P7355579569524219208.Spec : Prop :=
  ∀ n, P7355579569524219208.a n = A344523 (n + 1)

theorem P7355579569524219208.correct : P7355579569524219208.Spec := by
  intro n
  simp only [A344523, Nat.add_sub_cancel]

end A344523

/-! ## A344523.P16544916138744511565

`∑[∑{d}[n+1, A000010(#)*A005917((n+1)/#)]]`
-/

namespace A344523.P16544916138744511565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A005917 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344523.P16544916138744511565

namespace A344523

/-- `∑[∑{d}[n+1, A000010(#)*A005917((n+1)/#)]]` -/
def P16544916138744511565.Spec : Prop :=
  ∀ n, P16544916138744511565.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P15962626676583978414

`A344479(A055998(n+2))`
-/

namespace A344523.P15962626676583978414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A055998 (n + 2)).toNat

end

end A344523.P15962626676583978414

namespace A344523

/-- `A344479(A055998(n+2))` -/
def P15962626676583978414.Spec : Prop :=
  ∀ n, P15962626676583978414.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P11845046049220540361

`A344479(A046691(n+2)+1)`
-/

namespace A344523.P11845046049220540361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A046691 (n + 2) + 1).toNat

end

end A344523.P11845046049220540361

namespace A344523

/-- `A344479(A046691(n+2)+1)` -/
def P11845046049220540361.Spec : Prop :=
  ∀ n, P11845046049220540361.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P8343560744290195278

`A344479(A052905(n+1)+2)`
-/

namespace A344523.P8343560744290195278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A052905 (n + 1) + 2).toNat

end

end A344523.P8343560744290195278

namespace A344523

/-- `A344479(A052905(n+1)+2)` -/
def P8343560744290195278.Spec : Prop :=
  ∀ n, P8343560744290195278.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P3822408102145750884

`A344479(A034856(n+3)-1)`
-/

namespace A344523.P3822408102145750884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A034856 (n + 3) - 1).toNat

end

end A344523.P3822408102145750884

namespace A344523

/-- `A344479(A034856(n+3)-1)` -/
def P3822408102145750884.Spec : Prop :=
  ∀ n, P3822408102145750884.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P17641219402730891980

`A344479(A000096(n+2)+n+2)`
-/

namespace A344523.P17641219402730891980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A344523.P17641219402730891980

namespace A344523

/-- `A344479(A000096(n+2)+n+2)` -/
def P17641219402730891980.Spec : Prop :=
  ∀ n, P17641219402730891980.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P15518288753894557405

`A344479(A000217(n+3)+n+1)`
-/

namespace A344523.P15518288753894557405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A344523.P15518288753894557405

namespace A344523

/-- `A344479(A000217(n+3)+n+1)` -/
def P15518288753894557405.Spec : Prop :=
  ∀ n, P15518288753894557405.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P7175448590812839566

`A344479(A167614(n+1)+A005408(n))`
-/

namespace A344523.P7175448590812839566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A167614 (n + 1) + A005408 n).toNat

end

end A344523.P7175448590812839566

namespace A344523

/-- `A344479(A167614(n+1)+A005408(n))` -/
def P7175448590812839566.Spec : Prop :=
  ∀ n, P7175448590812839566.a n = A344523 (n + 1)

end A344523

/-! ## A344523.P14784172192272251569

`A344479(A004273(n+2)+A000124(n+2))`
-/

namespace A344523.P14784172192272251569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A004273 (n + 2) + A000124 (n + 2)).toNat

end

end A344523.P14784172192272251569

namespace A344523

/-- `A344479(A004273(n+2)+A000124(n+2))` -/
def P14784172192272251569.Spec : Prop :=
  ∀ n, P14784172192272251569.a n = A344523 (n + 1)

end A344523

/-!
# A344524: a(n) = Sum_{1 <= i, j, k, l, m <= n} gcd(i,j,k,l,m).

The programs for A344524, there is no canonical definition to state claims against.
-/

/-! ## A344524.P13074357994724241983

`A344479(A046691(n+3))`
-/

namespace A344524.P13074357994724241983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A046691 (n + 3)).toNat

end

end A344524.P13074357994724241983

/-! ## A344524.P16119822135601166338

`A344479(Δ[A023545(n+1)])`
-/

namespace A344524.P16119822135601166338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (f1 (n + 1) - f1 n).toNat

end

end A344524.P16119822135601166338

/-! ## A344524.P6808748555201950757

`A344479(A052905(n+2)+1)`
-/

namespace A344524.P6808748555201950757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A052905 (n + 2) + 1).toNat

end

end A344524.P6808748555201950757

/-! ## A344524.P3214868633582570708

`A344479(A000217(n+5)-4)`
-/

namespace A344524.P3214868633582570708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A000217 (n + 5) - 4).toNat

end

end A344524.P3214868633582570708

/-! ## A344524.P6334162384922138855

`record[A344479(n+11)/A343510(n+16)]`
-/

namespace A344524.P6334162384922138855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344479 (n + 11) : ℚ) / (A343510 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344524.P6334162384922138855

/-! ## A344524.P2565822221343517848

`A344479(A161680(n)+A016969(n+1))`
-/

namespace A344524.P2565822221343517848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A161680 n + A016969 (n + 1)).toNat

end

end A344524.P2565822221343517848

/-! ## A344524.P2548682640194554010

`A344479(A000124(n+7)-A005843(n+9))`
-/

namespace A344524.P2548682640194554010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A000124 (n + 7) - A005843 (n + 9)).toNat

end

end A344524.P2548682640194554010

/-!
# A344525: a(n) = Sum_{1 <= x_1, x_2, ..., x_n <= n} gcd(x_1, x_2, ..., x_n).

The programs for A344525, there is no canonical definition to state claims against.
-/

/-! ## A344525.P4192785409187852176

`A344479((n+1)²+n²)`
-/

namespace A344525.P4192785409187852176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 ((n + 1) ^ 2 + n ^ 2)

end

end A344525.P4192785409187852176

/-! ## A344525.P1678554536579983514

`record[A003982(n)*A344479(n+1)]`
-/

namespace A344525.P1678554536579983514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A344479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344525.P1678554536579983514

/-! ## A344525.P15771184696285082494

`record[gcd(A114327(n), A344479(n+1))]`
-/

namespace A344525.P15771184696285082494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A344479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344525.P15771184696285082494

/-! ## A344525.P5115386372424137417

`gcd(A000038(n), A344479(A001844(n)))`
-/

namespace A344525.P5115386372424137417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A344479 (A001844 n).toNat)

end

end A344525.P5115386372424137417

/-! ## A344525.P12133774044893882173

`or(A000007(n), A344479(A001844(n)))`
-/

namespace A344525.P12133774044893882173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A344479 (A001844 n).toNat)

end

end A344525.P12133774044893882173

/-!
# A344526: a(n) = Sum_{k=1..n} k^3 * phi(k).

The programs for A344526, the canonical program `A344526.P11294186280270292264` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344526 has offset 1).

The definition of A344526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344526.P7559103229322022761

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(n+1)^3]`
-/

namespace A344526.P7559103229322022761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((n + 1) ^ 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P7559103229322022761

namespace A344526

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(n+1)^3]` -/
def P7559103229322022761.Spec : Prop :=
  ∀ n, P7559103229322022761.a n = (A344526 (n + 1) : ℚ)

end A344526

/-! ## A344526.P8672108225664211921

`a(n-1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(n+1)^3` with `a(0)=1`
-/

namespace A344526.P8672108225664211921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((n + 1) ^ 3 : ℚ)

end

end A344526.P8672108225664211921

namespace A344526

/-- `a(n-1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(n+1)^3` -/
def P8672108225664211921.Spec : Prop :=
  ∀ n, P8672108225664211921.a n = (A344526 (n + 1) : ℚ)

end A344526

/-! ## A344526.P11294186280270292264

`∑[A189393(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344526

/-- `∑[A189393(n+1)]` -/
def P11294186280270292264.Spec : Prop :=
  ∀ n, P11294186280270292264.a n = A344526 (n + 1)

theorem P11294186280270292264.correct : P11294186280270292264.Spec := by
  intro n
  simp only [A344526, Nat.add_sub_cancel]

end A344526

/-! ## A344526.P14445729639654599319

`∑[(n+1)*A053191(n+1)]`
-/

namespace A344526.P14445729639654599319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P14445729639654599319

namespace A344526

/-- `∑[(n+1)*A053191(n+1)]` -/
def P14445729639654599319.Spec : Prop :=
  ∀ n, P14445729639654599319.a n = A344526 (n + 1)

end A344526

/-! ## A344526.P4005304913416862714

`∑[A238533(n+1)/(n+1)]`
-/

namespace A344526.P4005304913416862714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P4005304913416862714

namespace A344526

/-- `∑[A238533(n+1)/(n+1)]` -/
def P4005304913416862714.Spec : Prop :=
  ∀ n, P4005304913416862714.a n = (A344526 (n + 1) : ℚ)

end A344526

/-! ## A344526.P2733925490351519796

`∑[A306411(n+1)/(n+1)²]`
-/

namespace A344526.P2733925490351519796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306411 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P2733925490351519796

namespace A344526

/-- `∑[A306411(n+1)/(n+1)²]` -/
def P2733925490351519796.Spec : Prop :=
  ∀ n, P2733925490351519796.a n = (A344526 (n + 1) : ℚ)

end A344526

/-! ## A344526.P11564546409712635836

`∑[∑[A003215(n)]*A000010(n+1)]`
-/

namespace A344526.P11564546409712635836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P11564546409712635836

namespace A344526

/-- `∑[∑[A003215(n)]*A000010(n+1)]` -/
def P11564546409712635836.Spec : Prop :=
  ∀ n, P11564546409712635836.a n = A344526 (n + 1)

end A344526

/-! ## A344526.P6622917907347817989

`∑[A002618((n+1)²)]`
-/

namespace A344526.P6622917907347817989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P6622917907347817989

namespace A344526

/-- `∑[A002618((n+1)²)]` -/
def P6622917907347817989.Spec : Prop :=
  ∀ n, P6622917907347817989.a n = A344526 (n + 1)

end A344526

/-! ## A344526.P14317141286596905716

`∑[A046151((n+1)²)+1]`
-/

namespace A344526.P14317141286596905716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P14317141286596905716

namespace A344526

/-- `∑[A046151((n+1)²)+1]` -/
def P14317141286596905716.Spec : Prop :=
  ∀ n, P14317141286596905716.a n = A344526 (n + 1)

end A344526

/-! ## A344526.P11245832435167414325

`∑[A046152((n+1)²)-1]`
-/

namespace A344526.P11245832435167414325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P11245832435167414325

namespace A344526

/-- `∑[A046152((n+1)²)-1]` -/
def P11245832435167414325.Spec : Prop :=
  ∀ n, P11245832435167414325.a n = A344526 (n + 1)

end A344526

/-! ## A344526.P7126140418263796489

`∑[A071118((n+1)²)/2]`
-/

namespace A344526.P7126140418263796489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P7126140418263796489

namespace A344526

/-- `∑[A071118((n+1)²)/2]` -/
def P7126140418263796489.Spec : Prop :=
  ∀ n, P7126140418263796489.a n = (A344526 (n + 1) : ℚ)

end A344526

/-! ## A344526.P10118911650305059629

`∑[A064400((n+1)²)/3]`
-/

namespace A344526.P10118911650305059629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 ((n + 1) ^ 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P10118911650305059629

namespace A344526

/-- `∑[A064400((n+1)²)/3]` -/
def P10118911650305059629.Spec : Prop :=
  ∀ n, P10118911650305059629.a n = (A344526 (n + 1) : ℚ)

end A344526

/-!
# A344527: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) is the number of ordered k-tuples (x_1, x_2, ..., x_k) with gcd(x_1, x_2, ..., x_k) = 1 (1 <= {x_1, x_2, ..., x_k} <= n).

The programs for A344527, there is no canonical definition to state claims against.
-/

/-! ## A344527.P5068244035229357233

`A108470(n+1)-A010893(A200469(n+1))²`
-/

namespace A344527.P5068244035229357233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108470 (n + 1) - A010893 ((A200469 (n + 1)).toNat + 13) ^ 2

end

end A344527.P5068244035229357233

/-! ## A344527.P17326435027259162209

`A355413(A008277(n+1))`
-/

namespace A344527.P17326435027259162209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355413 (A008277 (n + 1)).toNat

end

end A344527.P17326435027259162209

/-! ## A344527.P7791752353498676864

`A355413(A218577(n+1))`
-/

namespace A344527.P7791752353498676864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355413 (A218577 (n + 1)).toNat

end

end A344527.P7791752353498676864

/-! ## A344527.P13553353273854127471

`A355413(A250119(n+1))`
-/

namespace A344527.P13553353273854127471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355413 (A250119 (n + 1)).toNat

end

end A344527.P13553353273854127471

/-! ## A344527.P6705930717902027348

`A048266(or(1, A008277(n+1)))`
-/

namespace A344527.P6705930717902027348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (Int.lor 1 (A008277 (n + 1))).toNat

end

end A344527.P6705930717902027348

/-!
# A344528: a(n) is the number of integer quadrilaterals (up to congruence) with integer side lengths a,b,c,d with n = Max(a,b,c,d) and integer diagonals e,f.

The programs for A344528, there is no canonical definition to state claims against.
-/

/-! ## A344528.P12341645537236467920

`A342720(n+1)+A342722(n+1)`
-/

namespace A344528.P12341645537236467920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (n + 1) + A342722 (n + 1)

end

end A344528.P12341645537236467920

/-! ## A344528.P11325195794644650131

`A342722(n+1)+A342721(n+1)^n!`
-/

namespace A344528.P11325195794644650131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342722 (n + 1) + A342721 (n + 1) ^ Nat.factorial n

end

end A344528.P11325195794644650131

/-! ## A344528.P16619809849720455218

`A342722(n+1)+A102683(A062860(n))`
-/

namespace A344528.P16619809849720455218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342722 (n + 1) + A102683 (A062860 n).toNat

end

end A344528.P16619809849720455218

/-! ## A344528.P6603985800068520306

`A342722(n+1)+A277165(A001045(n))`
-/

namespace A344528.P6603985800068520306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342722 (n + 1) + A277165 (A001045 n).toNat

end

end A344528.P6603985800068520306

/-! ## A344528.P18179237374336462135

`A342722(n+1)-A016232(A223041(n+1))`
-/

namespace A344528.P18179237374336462135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342722 (n + 1) - A016232 (A223041 (n + 1)).toNat

end

end A344528.P18179237374336462135

/-!
# A344529: a(n) is the number of integer quadrilaterals (up to congruence) with integer side lengths a,b,c,d with n = Max(a,b,c,d), integer diagonals e,f and integer area.

The programs for A344529, there is no canonical definition to state claims against.
-/

/-! ## A344529.P15735844177462532913

`A342721(n+1)+A342723(n+1)`
-/

namespace A344529.P15735844177462532913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342721 (n + 1) + A342723 (n + 1)

end

end A344529.P15735844177462532913

/-! ## A344529.P1098922505403160217

`A078851(A238099(n+1))%A013622(A342723(n+1))`
-/

namespace A344529.P1098922505403160217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078851 (A238099 (n + 1)).toNat) (A013622 (A342723 (n + 1)).toNat)

end

end A344529.P1098922505403160217

/-! ## A344529.P14956182406534755648

`A078851(A013622(n))%A013622(A342723(n+1))`
-/

namespace A344529.P14956182406534755648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078851 (A013622 n).toNat) (A013622 (A342723 (n + 1)).toNat)

end

end A344529.P14956182406534755648

/-! ## A344529.P13573025894851047512

`A001842(A034887(n)+A000045(A073291(n)))`
-/

namespace A344529.P13573025894851047512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A034887 n + A000045 (A073291 n).toNat).toNat

end

end A344529.P13573025894851047512

/-! ## A344529.P16464496389452637170

`A342723(n+1)+A102683(A062860(n))`
-/

namespace A344529.P16464496389452637170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342723 (n + 1) + A102683 (A062860 n).toNat

end

end A344529.P16464496389452637170

/-!
# A344530: For any number n with binary expansion Sum_{k = 1..m} 2^e_k (where 0 <= e_1 < ... < e_m), a(n) = Product_{k = 1..m} prime(1+e_k)^k (where prime(k) denotes the k-th prime number).

The programs for A344530, there is no canonical definition to state claims against.
-/

/-! ## A344530.P18014678427317897454

`a(and(n, n-1))*A019565(n)` with `a(0)=1`
-/

namespace A344530.P18014678427317897454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat * A019565 n

end

end A344530.P18014678427317897454

/-! ## A344530.P17707291056628070618

`a(A129760(n))*A019565(n)` with `a(0)=1`
-/

namespace A344530.P17707291056628070618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A129760 n).toNat * A019565 n

end

end A344530.P17707291056628070618

/-! ## A344530.P6894602135650320022

`a(and(n, n-1))*A302033(A006068(n))` with `a(0)=1, a(1)=2`
-/

namespace A344530.P6894602135650320022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat * A302033 (A006068 n).toNat

end

end A344530.P6894602135650320022

/-! ## A344530.P4980384621132337961

`a(and(n, n-1))*A304537(A304534(n))` with `a(0)=1`
-/

namespace A344530.P4980384621132337961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat * A304537 (A304534 n).toNat

end

end A344530.P4980384621132337961

/-! ## A344530.P13439221244585650471

`A276076(A276082(n))`
-/

namespace A344530.P13439221244585650471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A276082 n).toNat

end

end A344530.P13439221244585650471

/-!
# A344531: a(n) = Sum_{k >= 0} b_k * 2^A061579(k) for any number n with binary expansion Sum_{k >= 0} b_k * 2^k.

The programs for A344531, there is no canonical definition to state claims against.
-/

/-! ## A344531.P15991098428247323858

`A057301(n*A007061(A157156(n)))`
-/

namespace A344531.P15991098428247323858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 ((n : ℤ) * A007061 (A157156 n).toNat).toNat

end

end A344531.P15991098428247323858

/-! ## A344531.P9248648789861898730

`A057301(n*A101211(A174410(n)))`
-/

namespace A344531.P9248648789861898730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 ((n : ℤ) * A101211 (A174410 n).toNat).toNat

end

end A344531.P9248648789861898730

/-! ## A344531.P9360517596991886122

`A057301(n*A332013(A157278(n)))`
-/

namespace A344531.P9360517596991886122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 ((n : ℤ) * A332013 (A157278 n).toNat).toNat

end

end A344531.P9360517596991886122

/-! ## A344531.P11305975341312700851

`A057301(n)*A107027(A185284(2*(n+2)))`
-/

namespace A344531.P11305975341312700851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 n * A107027 (A185284 (2 * (n + 2))).toNat

end

end A344531.P11305975341312700851

/-! ## A344531.P7429036451376214236

`A057301(C(A185328(3*n+4), n²+1)+n)`
-/

namespace A344531.P7429036451376214236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 (Nat.choose (A185328 (3 * n + 4)).toNat (n ^ 2 + 1) + n)

end

end A344531.P7429036451376214236

/-!
# A344533: Given a square forest of n X n trees, with rows and columns separated by 1 meter, a(n) is the number of trees visible to an observer halfway along one side of the forest, exactly one meter outside.

The programs for A344533, there is no canonical definition to state claims against.
-/

/-! ## A344533.P6755122633381801454

`(n+1)²-A344601(n+1)`
-/

namespace A344533.P6755122633381801454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344601 (n + 1)

end

end A344533.P6755122633381801454

/-! ## A344533.P7535739005374026990

`A005563(n)+1-A344601(n+1)`
-/

namespace A344533.P7535739005374026990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A344601 (n + 1))

end

end A344533.P7535739005374026990

/-! ## A344533.P11624420295514094860

`A002378(n)+n+1-A344601(n+1)`
-/

namespace A344533.P11624420295514094860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + ((n + 1 : ℤ) - A344601 (n + 1))

end

end A344533.P11624420295514094860

/-! ## A344533.P3651396412536258841

`A002620(2*n+1)-A344601(n+1)+1+n`
-/

namespace A344533.P3651396412536258841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n + 1) - A344601 (n + 1) + 1 + (n : ℤ)

end

end A344533.P3651396412536258841

/-! ## A344533.P251674484943944942

`A005563(n)-A023443(A344601(n+1))`
-/

namespace A344533.P251674484943944942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A023443 (A344601 (n + 1)).toNat

end

end A344533.P251674484943944942

/-! ## A344533.P3611017123777517138

`A000027(∑[A005408(n)]-A344601(n+1))`
-/

namespace A344533.P3611017123777517138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A344601 (n + 1)).toNat

end

end A344533.P3611017123777517138

/-! ## A344533.P9392890447948474710

`A000027(Δ[A000330(n)]-A344601(n+1))`
-/

namespace A344533.P9392890447948474710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n - A344601 (n + 1)).toNat

end

end A344533.P9392890447948474710

/-! ## A344533.P13353087221375665353

`A000330(n+1)-(A344601(n+1)+A000330(n))`
-/

namespace A344533.P13353087221375665353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - (A344601 (n + 1) + A000330 n)

end

end A344533.P13353087221375665353

/-! ## A344533.P1028769681531627156

`A000027(∑[A000027(2*n+1)]-A344601(n+1))`
-/

namespace A344533.P1028769681531627156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A344601 (n + 1)).toNat

end

end A344533.P1028769681531627156

/-!
# A344534: For any number n with binary expansion Sum_{k = 1..m} 2^e_k (where 0 <= e_1 < ... < e_m), a(n) = Product_{k = 1..m} prime(1+A002262(e_k))^2^A025581(e_k) (where prime(k) denotes the k-th prime number).

The programs for A344534, there is no canonical definition to state claims against.
-/

/-! ## A344534.P17661874938716233765

`A344535(A344531(n))`
-/

namespace A344534.P17661874938716233765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 (A344531 n).toNat

end

end A344534.P17661874938716233765

/-! ## A344534.P4334792633299780663

`A320487(record[A073791(n)])`
-/

namespace A344534.P4334792633299780663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344534.P4334792633299780663

/-! ## A344534.P12954570209968464406

`A320487(eq[n, A073791(n)])`
-/

namespace A344534.P12954570209968464406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344534.P12954570209968464406

/-! ## A344534.P10001190026305492130

`A320487(2*A007090(n)-n)`
-/

namespace A344534.P10001190026305492130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (2 * A007090 n - (n : ℤ)).toNat

end

end A344534.P10001190026305492130

/-! ## A344534.P18011458994386510211

`∏{p}[A001317(n), A000005(A046083(#))]`
-/

namespace A344534.P18011458994386510211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A046083 p).toNat

end

end A344534.P18011458994386510211

/-!
# A344535: For any number n with binary expansion Sum_{k = 1..m} 2^e_k (where 0 <= e_1 < ... < e_m), a(n) = Product_{k = 1..m} prime(1+A025581(e_k))^2^A002262(e_k) (where prime(k) denotes the k-th prime number).

The programs for A344535, there is no canonical definition to state claims against.
-/

/-! ## A344535.P17406612664327833553

`A344534(A344531(n))`
-/

namespace A344535.P17406612664327833553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344534 (A344531 n).toNat

end

end A344535.P17406612664327833553

/-! ## A344535.P17381955470034184171

`filter[A059900(n), A307430(#)]`
-/

namespace A344535.P17381955470034184171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A344535.P17381955470034184171

/-! ## A344535.P2644707642798612584

`A324106(A052330(n)^A340366(3*n+1))`
-/

namespace A344535.P2644707642798612584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324106 (SequenceMachineLib.roundAway ((A052330 n : ℚ) ^ (A340366 (3 * n + 1) : ℤ))).toNat

end

end A344535.P2644707642798612584

/-! ## A344535.P1697592595046584096

`A324106(A052330(n)%A136366(n+1))`
-/

namespace A344535.P1697592595046584096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324106 (Int.tmod (A052330 n) (A136366 (n + 1))).toNat

end

end A344535.P1697592595046584096

/-! ## A344535.P11852910847588546772

`A324106(A052330(n))%A196005(3*(n+1))`
-/

namespace A344535.P11852910847588546772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324106 (A052330 n).toNat) (A196005 (3 * (n + 1)))

end

end A344535.P11852910847588546772

/-!
# A344536: Inverse permutation to A344534.

The programs for A344536, there is no canonical definition to state claims against.
-/

/-! ## A344536.P4606416277039140450

`A344531(A344537(n+1))`
-/

namespace A344536.P4606416277039140450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 (A344537 (n + 1)).toNat

end

end A344536.P4606416277039140450

/-! ## A344536.P9338379492370570840

`A057301(A344537(n+1)*A344590(3*n+2))`
-/

namespace A344536.P9338379492370570840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057301 (A344537 (n + 1) * A344590 (3 * n + 2)).toNat

end

end A344536.P9338379492370570840

/-! ## A344536.P12106230644223077540

`A090881(n+1)*A269254(A324373(n))`
-/

namespace A344536.P12106230644223077540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090881 (n + 1) * A269254 (A324373 n).toNat

end

end A344536.P12106230644223077540

/-!
# A344537: Inverse permutation to A344535.

The programs for A344537, there is no canonical definition to state claims against.
-/

/-! ## A344537.P1067100705538097564

`A344531(A344536(n+1))`
-/

namespace A344537.P1067100705538097564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344531 (A344536 (n + 1)).toNat

end

end A344537.P1067100705538097564

/-!
# A344538: Lexicographically earliest sequence such that |a(n+1)-a(n)| is a cube > 1 and no number occurs twice; a(0) = 0.

The programs for A344538, there is no canonical definition to state claims against.
-/

/-! ## A344538.P17759256566092814418

`A056926(A017066(n))%35`
-/

namespace A344538.P17759256566092814418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A017066 n).toNat) 35

end

end A344538.P17759256566092814418

/-! ## A344538.P6089697151798799297

`A056926(A008590(n)²)%35`
-/

namespace A344538.P6089697151798799297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A008590 n ^ 2).toNat) 35

end

end A344538.P6089697151798799297

/-! ## A344538.P16707919271351159019

`A158393(A158219(2*n+3))%(-35)`
-/

namespace A344538.P16707919271351159019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158393 (A158219 (2 * n + 3)).toNat) (-35)

end

end A344538.P16707919271351159019

/-! ## A344538.P17829675361834969430

`A224787(A220051(n))%35`
-/

namespace A344538.P17829675361834969430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224787 (A220051 n).toNat) 35

end

end A344538.P17829675361834969430

/-!
# A344543: Lexicographically earliest sequence S of distinct positive terms such that the product of the last k digits of S is even, k being the rightmost digit of a(n).

The programs for A344543, there is no canonical definition to state claims against.
-/

/-! ## A344543.P9233614820664617309

`lt[n, ∏{digits}[n, 3*#]]`
-/

namespace A344543.P9233614820664617309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 3 * x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344543.P9233614820664617309

/-! ## A344543.P12001651564961445719

`lt[atan(xor(1, n)), n%10]`
-/

namespace A344543.P12001651564961445719
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Nat.xor 1 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A344543.P12001651564961445719

/-! ## A344543.P5287745971259642745

`comp[a(n-2)+10]` with `a(0)=0, a(1)=11`
-/

namespace A344543.P5287745971259642745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 2) + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A344543.P5287745971259642745

/-! ## A344543.P10290748244552966653

`comp[∑[gcd(9, and(1, n))]]+1`
-/

namespace A344543.P10290748244552966653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A344543.P10290748244552966653

/-! ## A344543.P18239582222103210311

`comp[12*ceil(n/2)-n]`
-/

namespace A344543.P18239582222103210311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ⌈(n : ℚ) / 2⌉ - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344543.P18239582222103210311

/-! ## A344543.P15161672178872283581

`or(1, floor(n/log(55)))+n`
-/

namespace A344543.P15161672178872283581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) / Real.log (55 : ℝ)⌋ + (n : ℤ)

end

end A344543.P15161672178872283581

/-! ## A344543.P9193634368120245024

`record[3^val(n+1, 10)+n]`
-/

namespace A344543.P9193634368120245024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 10 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344543.P9193634368120245024

/-! ## A344543.P5883363564670472313

`record[val((n+1)², 10)+n+1]`
-/

namespace A344543.P5883363564670472313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) 10 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344543.P5883363564670472313

/-! ## A344543.P12118503901273717906

`abs((7-or(7, abs(1-n)))/4-n)+1`
-/

namespace A344543.P12118503901273717906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((7 - Int.lor 7 |1 - (n : ℤ)| : ℚ) / 4 - (n : ℚ))| + 1

end

end A344543.P12118503901273717906

/-! ## A344543.P7964869112510908429

`comp[∑[(((2*(n+1))%4)%3+1)²]]+1`
-/

namespace A344543.P7964869112510908429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) % 4 % 3 + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A344543.P7964869112510908429

/-!
# A344547: Lexicographically earliest sequence of nonnegative terms forming a clockwise square spiral when nothing else is read except the parity of the terms (see the Comments section).

The programs for A344547, there is no canonical definition to state claims against.
-/

/-! ## A344547.P1159901851782086244

`Δ[(A332807((char[2]+1)*n^4+3)%3)!]+n`
-/

namespace A344547.P1159901851782086244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A332807 (((if ∃ j, f2 j = n then 1 else 0) + 1) * n ^ 4 + 3)) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A344547.P1159901851782086244

/-! ## A344547.P3828361974043608566

`A102283(A257890(n))+n`
-/

namespace A344547.P3828361974043608566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A257890 n).toNat + (n : ℤ)

end

end A344547.P3828361974043608566

/-! ## A344547.P9810641006832326650

`Δ[A000034(∑[A194630(n+1)-1])]+n`
-/

namespace A344547.P9810641006832326650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194630 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A344547.P9810641006832326650

/-! ## A344547.P11175126260138615931

`A178691(A269376(n+1))+n-A178691(n)`
-/

namespace A344547.P11175126260138615931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A269376 (n + 1)).toNat + ((n : ℤ) - A178691 n)

end

end A344547.P11175126260138615931

/-! ## A344547.P3232806765659269959

`A160051(n)-A010815(A023393(n))`
-/

namespace A344547.P3232806765659269959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 n - A010815 (A023393 n).toNat

end

end A344547.P3232806765659269959

/-!
# A344548: Lexicographically earliest sequence of nonnegative terms forming a clockwise square spiral when nothing else is read except the parity of the digits (see the Comments section).

The programs for A344548, there is no canonical definition to state claims against.
-/

/-! ## A344548.P8837223140961961847

`A030066(A341903(n+1))`
-/

namespace A344548.P8837223140961961847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030066 (A341903 (n + 1)).toNat

end

end A344548.P8837223140961961847

/-! ## A344548.P7781079194581786042

`A341903(A043317(n+1))`
-/

namespace A344548.P7781079194581786042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A043317 (n + 1)).toNat

end

end A344548.P7781079194581786042

/-! ## A344548.P2248432206508853338

`A341903(A044914(n+1))`
-/

namespace A344548.P2248432206508853338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A044914 (n + 1)).toNat

end

end A344548.P2248432206508853338

/-! ## A344548.P14020697619007880213

`A341903(A055648(n+1))`
-/

namespace A344548.P14020697619007880213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A055648 (n + 1)).toNat

end

end A344548.P14020697619007880213

/-! ## A344548.P11658600735003839376

`A341903(A132378(n+1))`
-/

namespace A344548.P11658600735003839376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A132378 (n + 1)).toNat

end

end A344548.P11658600735003839376

/-!
# A344551: a(n) = Sum_{k=1..n} k^floor((n-k)/k).

The programs for A344551, there is no canonical definition to state claims against.
-/

/-! ## A344551.P11095073841508494486

`lt[A329200(n), A133420(A312497(n))]`
-/

namespace A344551.P11095073841508494486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133420 (A312497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344551.P11095073841508494486

/-! ## A344551.P8820347404539119942

`A238542(n+1)-A046660(A026135(n))`
-/

namespace A344551.P8820347404539119942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238542 (n + 1) - A046660 (A026135 n).toNat

end

end A344551.P8820347404539119942

/-!
# A344552: a(n) = Sum_{k=1..n} floor(k*(n-k)/n).

The programs for A344552, there is no canonical definition to state claims against.
-/

/-! ## A344552.P10911121295870289237

`∑[n]-A014811(n+1)`
-/

namespace A344552.P10911121295870289237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A014811 (n + 1)

end

end A344552.P10911121295870289237

/-! ## A344552.P17837792715072290787

`∑[n+1]-A014785(n+1)`
-/

namespace A344552.P17837792715072290787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A014785 (n + 1)

end

end A344552.P17837792715072290787

/-! ## A344552.P14590216493869032780

`A253145(n)%A014785(n+1)`
-/

namespace A344552.P14590216493869032780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A014785 (n + 1))

end

end A344552.P14590216493869032780

/-! ## A344552.P1809168006519076379

`∑[n]-record[A014811(A328399(n))]`
-/

namespace A344552.P1809168006519076379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014811 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A344552.P1809168006519076379

/-! ## A344552.P16772097546963509907

`abs(A014811(n+1)-A000217(n))`
-/

namespace A344552.P16772097546963509907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014811 (n + 1) - A000217 n|

end

end A344552.P16772097546963509907

/-! ## A344552.P12983626043611605813

`Δ[A000292(n)]%A014785(n+1)`
-/

namespace A344552.P12983626043611605813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A014785 (n + 1))

end

end A344552.P12983626043611605813

/-! ## A344552.P13555919270515953195

`A000096(n)+1-A014785(n+1)`
-/

namespace A344552.P13555919270515953195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A014785 (n + 1))

end

end A344552.P13555919270515953195

/-! ## A344552.P18227313055609301887

`A000124(n)-(A014811(n+1)+1)`
-/

namespace A344552.P18227313055609301887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A014811 (n + 1) + 1)

end

end A344552.P18227313055609301887

/-! ## A344552.P2820734330687080283

`A000124(n)-A014785(n+1)+n`
-/

namespace A344552.P2820734330687080283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A014785 (n + 1) + (n : ℤ)

end

end A344552.P2820734330687080283

/-! ## A344552.P2876744181544944959

`∑[A000027(n+1)]%A014785(n+1)`
-/

namespace A344552.P2876744181544944959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A014785 (n + 1))

end

end A344552.P2876744181544944959

/-!
# A344553: Number of lattice paths from (0,0) to (2n-1,n) using steps E=(1,0), N=(0,1), and D=(1,1) which stay weakly above the line through (0,0) and (2n-1,n).

The programs for A344553, there is no canonical definition to state claims against.
-/

/-! ## A344553.P8055172079541997392

`A108424(n+1)/2`
-/

namespace A344553.P8055172079541997392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108424 (n + 1) : ℚ) / 2

end

end A344553.P8055172079541997392

/-! ## A344553.P14398284497739357560

`abs(A364394(n+1)/2)`
-/

namespace A344553.P14398284497739357560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A364394 (n + 1) : ℚ) / 2|

end

end A344553.P14398284497739357560

/-! ## A344553.P9118457484626009565

`record[A108435(n+1)/2]`
-/

namespace A344553.P9118457484626009565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108435 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344553.P9118457484626009565

/-! ## A344553.P836658272925150357

`(A032349(n+1)+A027307(n))/2`
-/

namespace A344553.P836658272925150357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032349 (n + 1) + A027307 n : ℚ) / 2

end

end A344553.P836658272925150357

/-! ## A344553.P16572778418358559488

`(A032349(n+1)+record[A110682(n)])/2`
-/

namespace A344553.P16572778418358559488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032349 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A344553.P16572778418358559488

/-! ## A344553.P6183432696244067039

`A108427(n+1)/(2*n+1)`
-/

namespace A344553.P6183432696244067039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108427 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A344553.P6183432696244067039

/-! ## A344553.P10753510590715804601

`A240599(n+1)-A108448(n+1)`
-/

namespace A344553.P10753510590715804601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240599 (n + 1) - A108448 (n + 1)

end

end A344553.P10753510590715804601

/-! ## A344553.P225801411391821211

`A108427(n+1)%A108424(n+1)`
-/

namespace A344553.P225801411391821211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108427 (n + 1)) (A108424 (n + 1))

end

end A344553.P225801411391821211

/-! ## A344553.P6809312247891406951

`A114123(2*(n+1)²)/(2*n+1)`
-/

namespace A344553.P6809312247891406951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114123 (2 * (n + 1) ^ 2) : ℚ) / (2 * n + 1 : ℚ)

end

end A344553.P6809312247891406951

/-! ## A344553.P10334719393555222860

`round(A114123(2*(n+1)²)/A005408(n))`
-/

namespace A344553.P10334719393555222860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114123 (2 * (n + 1) ^ 2) : ℚ) / (A005408 n : ℚ))

end

end A344553.P10334719393555222860

/-!
# A344556: a(n) = [x^n] 2 / (1 - (2*n - 1)*x + sqrt(1 - 2*x - 3*x^2)).

The programs for A344556, there is no canonical definition to state claims against.
-/

/-! ## A344556.P4637277154184322182

`A344567(∑[4*n])`
-/

namespace A344556.P4637277154184322182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344567 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344556.P4637277154184322182

/-! ## A344556.P5856310841602544801

`A330792(abs(A056220(n)))`
-/

namespace A344556.P5856310841602544801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330792 |A056220 n|.toNat

end

end A344556.P5856310841602544801

/-!
# A344558: Row sums of A344557.

The programs for A344558, there is no canonical definition to state claims against.
-/

/-! ## A344558.P17734686555783736458

`A233569(A233541(round(ϕ*a(n-1))))` with `a(0)=1, a(1)=2`
-/

namespace A344558.P17734686555783736458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A233569 (A233541 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A344558.P17734686555783736458

/-! ## A344558.P14234507088666756698

`A150717(n)+A083892(A150730(n))`
-/

namespace A344558.P14234507088666756698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150717 n + A083892 (A150730 n).toNat

end

end A344558.P14234507088666756698

/-! ## A344558.P11473047932571488258

`A150717(n)+A083892(2*A150717(n))`
-/

namespace A344558.P11473047932571488258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150717 n + A083892 (2 * A150717 n).toNat

end

end A344558.P11473047932571488258

/-!
# A344559: a(n) = (1/6) * 2^(-n) * n! * [x^n] Exp(2*x, 1)*(Exp(2*x, 3) - 1), where Exp(x, m) = Sum_{k>=0} (x^k / k!)^m.

The programs for A344559, there is no canonical definition to state claims against.
-/

/-! ## A344559.P4923602983538302831

`A344854(n)/2^n`
-/

namespace A344559.P4923602983538302831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344854 n : ℚ) / (2 ^ n : ℚ)

end

end A344559.P4923602983538302831

/-! ## A344559.P12722705187813512501

`floor(A344560(n)/6)`
-/

namespace A344559.P12722705187813512501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344560 n : ℚ) / 6⌋

end

end A344559.P12722705187813512501

/-! ## A344559.P16790852373650531508

`A000108(C(3, n))*round(A344560(n)/6)`
-/

namespace A344559.P16790852373650531508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 3 n) * SequenceMachineLib.roundAway ((A344560 n : ℚ) / 6)

end

end A344559.P16790852373650531508

/-! ## A344559.P2516729922306145519

`A000108(A322075(n+1))+round(A344560(n)/6)-1`
-/

namespace A344559.P2516729922306145519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A322075 (n + 1)).toNat + (SequenceMachineLib.roundAway ((A344560 n : ℚ) / 6) - 1)

end

end A344559.P2516729922306145519

/-! ## A344559.P13882111902279922249

`A007318(∑[n])*round(A344560(n)/6)`
-/

namespace A344559.P13882111902279922249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A344560 n : ℚ) / 6)

end

end A344559.P13882111902279922249

/-!
# A344560: a(n) = hypergeom([-n/3, (1 - n)/3, (2 - n)/3], [1, 1], -27).

The programs for A344560, there is no canonical definition to state claims against.
-/

/-! ## A344560.P8415045901772919192

`6*A344559(n)+1`
-/

namespace A344560.P8415045901772919192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A344559 n + 1

end

end A344560.P8415045901772919192

/-! ## A344560.P15800564143039011904

`or(6*A344559(n), A033999(n)²)`
-/

namespace A344560.P15800564143039011904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 * A344559 n) (A033999 n ^ 2)

end

end A344560.P15800564143039011904

/-! ## A344560.P8796297726972150192

`or(6*A344559(n), A065357(n)²)`
-/

namespace A344560.P8796297726972150192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 * A344559 n) (A065357 n ^ 2)

end

end A344560.P8796297726972150192

/-! ## A344560.P7133198570195887537

`or(6*A344559(n), A007318(∑[n]))`
-/

namespace A344560.P7133198570195887537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 * A344559 n) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A344560.P7133198570195887537

/-! ## A344560.P10945246910247023446

`or(6*A344559(n), and(1, A010844(n)))`
-/

namespace A344560.P10945246910247023446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 * A344559 n) (Int.land 1 (A010844 n))

end

end A344560.P10945246910247023446

/-!
# A344561: Primes which divide a term of A345765. Ordered by their first appearance in the ordered prime factorizations of A345765.

The programs for A344561, there is no canonical definition to state claims against.
-/

/-! ## A344561.P10485165018482046335

`p?[A191614(n+1)]`
-/

namespace A344561.P10485165018482046335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344561.P10485165018482046335

/-!
# A344562: The cumulative product of A344561.

The programs for A344562, there is no canonical definition to state claims against.
-/

/-! ## A344562.P8958007989986598414

`∏[A344561(n+1)]`
-/

namespace A344562.P8958007989986598414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A344562.P8958007989986598414

/-!
# A344563: T(n, k) = binomial(n - 1, k - 1) * binomial(n, k) * 2^k, T(0, 0) = 1. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A344563, there is no canonical definition to state claims against.
-/

/-! ## A344563.P689710066156887743

`A013609(n)*A097805(n)`
-/

namespace A344563.P689710066156887743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A097805 n

end

end A344563.P689710066156887743

/-! ## A344563.P18028720321774163148

`A097805(n)*A182059(n)`
-/

namespace A344563.P18028720321774163148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A182059 n

end

end A344563.P18028720321774163148

/-! ## A344563.P7834064815573469864

`A135225(n)*A182059(n)`
-/

namespace A344563.P7834064815573469864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n * A182059 n

end

end A344563.P7834064815573469864

/-! ## A344563.P4629104933500867929

`A177767(n)*A182059(n)`
-/

namespace A344563.P4629104933500867929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 n * A182059 n

end

end A344563.P4629104933500867929

/-! ## A344563.P9227656056123725780

`A182059(n)*A193554(n)`
-/

namespace A344563.P9227656056123725780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 n * A193554 n

end

end A344563.P9227656056123725780

/-! ## A344563.P14296422984131816047

`A059268(n)*A367267(n)`
-/

namespace A344563.P14296422984131816047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A367267 n

end

end A344563.P14296422984131816047

/-! ## A344563.P11408013359409858604

`A090181(n)*A130128(n+1)`
-/

namespace A344563.P11408013359409858604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A130128 (n + 1)

end

end A344563.P11408013359409858604

/-! ## A344563.P6292339112572778877

`A007318(A056943(n))*A182059(n)`
-/

namespace A344563.P6292339112572778877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056943 n).toNat * A182059 n

end

end A344563.P6292339112572778877

/-! ## A344563.P11642103194842972637

`A007318(n)*A059268(n)*A097805(n)`
-/

namespace A344563.P11642103194842972637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059268 n * A097805 n

end

end A344563.P11642103194842972637

/-!
# A344564: a(n) = [x^n] -3/(2*x - 1)^5.

The programs for A344564, the canonical program `A344564.P18133854979017904915` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344564 has offset 0).

The definition of A344564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344564.P18133854979017904915

`2^(n-3)*(n+1)*(n+2)*(n+3)*(n+4)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A344564

/-- `2^(n-3)*(n+1)*(n+2)*(n+3)*(n+4)` -/
def P18133854979017904915.Spec : Prop :=
  ∀ n, P18133854979017904915.a n = (A344564 n : ℚ)

end A344564

/-! ## A344564.P2913182254846331431

`2*(n+4)*a(n-1)/n` with `a(0)=3`
-/

namespace A344564.P2913182254846331431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * ((n + 4 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A344564.P2913182254846331431

namespace A344564

/-- `2*(n+4)*a(n-1)/n` -/
def P2913182254846331431.Spec : Prop :=
  ∀ n, P2913182254846331431.a n = (A344564 n : ℚ)

end A344564

/-! ## A344564.P7025729930775578473

`∑[3*A006974(n)]`
-/

namespace A344564.P7025729930775578473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344564.P7025729930775578473

namespace A344564

/-- `∑[3*A006974(n)]` -/
def P7025729930775578473.Spec : Prop :=
  ∀ n, P7025729930775578473.a n = A344564 n

end A344564

/-! ## A344564.P15305671539667430429

`A058649(n+1)+2*A001788(n+1)`
-/

namespace A344564.P15305671539667430429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058649 (n + 1) + 2 * A001788 (n + 1)

end

end A344564.P15305671539667430429

namespace A344564

/-- `A058649(n+1)+2*A001788(n+1)` -/
def P15305671539667430429.Spec : Prop :=
  ∀ n, P15305671539667430429.a n = A344564 n

end A344564

/-! ## A344564.P2597704216679709338

`A003472(n+4)+2*A003472(n+4)`
-/

namespace A344564.P2597704216679709338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003472 (n + 4) + 2 * A003472 (n + 4)

end

end A344564.P2597704216679709338

namespace A344564

/-- `A003472(n+4)+2*A003472(n+4)` -/
def P2597704216679709338.Spec : Prop :=
  ∀ n, P2597704216679709338.a n = A344564 n

end A344564

/-! ## A344564.P11913209582916072602

`A001793(n+1)+A000096(n+1)*A001793(n+1)`
-/

namespace A344564.P11913209582916072602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + A000096 (n + 1) * A001793 (n + 1)

end

end A344564.P11913209582916072602

namespace A344564

/-- `A001793(n+1)+A000096(n+1)*A001793(n+1)` -/
def P11913209582916072602.Spec : Prop :=
  ∀ n, P11913209582916072602.a n = A344564 n

end A344564

/-! ## A344564.P13770245906072857655

`A003472(n+4)+A003472(n+5)-A001789(n+4)`
-/

namespace A344564.P13770245906072857655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003472 (n + 4) + (A003472 (n + 5) - A001789 (n + 4))

end

end A344564.P13770245906072857655

namespace A344564

/-- `A003472(n+4)+A003472(n+5)-A001789(n+4)` -/
def P13770245906072857655.Spec : Prop :=
  ∀ n, P13770245906072857655.a n = A344564 n

end A344564

/-! ## A344564.P8214183090494260442

`6*A003472(n+4)/2`
-/

namespace A344564.P8214183090494260442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A003472 (n + 4) : ℚ) / 2

end

end A344564.P8214183090494260442

namespace A344564

/-- `6*A003472(n+4)/2` -/
def P8214183090494260442.Spec : Prop :=
  ∀ n, P8214183090494260442.a n = (A344564 n : ℚ)

end A344564

/-! ## A344564.P11266513371776763048

`(n+1)*A346174(n+2)/2`
-/

namespace A344564.P11266513371776763048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A346174 (n + 2) : ℚ) / 2

end

end A344564.P11266513371776763048

namespace A344564

/-- `(n+1)*A346174(n+2)/2` -/
def P11266513371776763048.Spec : Prop :=
  ∀ n, P11266513371776763048.a n = (A344564 n : ℚ)

end A344564

/-! ## A344564.P14663665993408553798

`A011782(n+1)*A033487(n+1)/2`
-/

namespace A344564.P14663665993408553798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) * A033487 (n + 1) : ℚ) / 2

end

end A344564.P14663665993408553798

namespace A344564

/-- `A011782(n+1)*A033487(n+1)/2` -/
def P14663665993408553798.Spec : Prop :=
  ∀ n, P14663665993408553798.a n = (A344564 n : ℚ)

end A344564

/-! ## A344564.P8652339178293992800

`A001816(n)/4`
-/

namespace A344564.P8652339178293992800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001816 n : ℚ) / 4

end

end A344564.P8652339178293992800

namespace A344564

/-- `A001816(n)/4` -/
def P8652339178293992800.Spec : Prop :=
  ∀ n, P8652339178293992800.a n = (A344564 n : ℚ)

end A344564

/-! ## A344564.P15153322826875015845

`A000217(∑[n+2])/(1/2)^n`
-/

namespace A344564.P15153322826875015845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((1 : ℚ) / 2) ^ n

end

end A344564.P15153322826875015845

namespace A344564

/-- `A000217(∑[n+2])/(1/2)^n` -/
def P15153322826875015845.Spec : Prop :=
  ∀ n, P15153322826875015845.a n = (A344564 n : ℚ)

end A344564

/-!
# A344565: Triangle read by rows, for 0 <= k <= n: T(n, k) = binomial(n, k) * binomial(binomial(n + 3, 2), 2).

The programs for A344565, there is no canonical definition to state claims against.
-/

/-! ## A344565.P4625318831366233548

`3*A178821(n)`
-/

namespace A344565.P4625318831366233548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A178821 n

end

end A344565.P4625318831366233548

/-! ## A344565.P16432572466390866557

`3*A318762(7*A146985(n))`
-/

namespace A344565.P16432572466390866557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A318762 (7 * A146985 n).toNat

end

end A344565.P16432572466390866557

/-! ## A344565.P5434590045134920463

`3*A318808(14*A146985(n))`
-/

namespace A344565.P5434590045134920463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A318808 (14 * A146985 n).toNat

end

end A344565.P5434590045134920463

/-! ## A344565.P5007244513624480136

`3*C(A003056(n)+4, 4)*A007318(n)`
-/

namespace A344565.P5007244513624480136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.choose (A003056 n + 4).toNat 4 : ℤ) * A007318 n)

end

end A344565.P5007244513624480136

/-! ## A344565.P16038151477708987431

`∑{d}[A178821(n), A008486(A000010(#))]`
-/

namespace A344565.P16038151477708987431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008486 (A000010 d).toNat

end

end A344565.P16038151477708987431

/-!
# A344566: T(n, k) = (-1)^(n - k)*binomial(n - 1, k - 1)*hypergeom([-(n - k)/2, -(n - k - 1)/2], [1 - n], 4). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A344566, there is no canonical definition to state claims against.
-/

/-! ## A344566.P2332209792167122888

`a(n-1)-A167655(n-1)` with `a(0)=1`
-/

namespace A344566.P2332209792167122888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A167655 (n - 1)

end

end A344566.P2332209792167122888

/-! ## A344566.P4045825688606153378

`2-∑[A167655(floor(acot(n)+n)-1)]`
-/

namespace A344566.P4045825688606153378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344566.P4045825688606153378

/-! ## A344566.P18420794941041699194

`2-∑[A167655(A028310(n)-1)]`
-/

namespace A344566.P18420794941041699194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344566.P18420794941041699194

/-! ## A344566.P4438154208804580234

`A167655(n)+1-∑[A167655(n)]`
-/

namespace A344566.P4438154208804580234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344566.P4438154208804580234

/-! ## A344566.P11783656776260749769

`A167655(n)-∑[A167655(n)-A000007(n)]`
-/

namespace A344566.P11783656776260749769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167655 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344566.P11783656776260749769

/-!
# A344567: A(n, k) = [x^k] 2 / (1 - (2*n - 1)*x + sqrt(1 - 2*x - 3*x^2)). The number of n-colored Motzkin arcs of length k. Array read by ascending antidiagonals, n >= 0 and k >= 0.

The programs for A344567, there is no canonical definition to state claims against.
-/

/-! ## A344567.P2401726595247514120

`A325678(A047030(n)*A060475(n))`
-/

namespace A344567.P2401726595247514120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A047030 n * A060475 n).toNat

end

end A344567.P2401726595247514120

/-! ## A344567.P8433026850679963736

`A292741(n)+A055641(A183892(n+1))`
-/

namespace A344567.P8433026850679963736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292741 n + A055641 (A183892 (n + 1)).toNat

end

end A344567.P8433026850679963736

/-! ## A344567.P8903939085822353623

`A308497(n+1)-A308583(A308465(n+1))`
-/

namespace A344567.P8903939085822353623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (n + 1) - A308583 (A308465 (n + 1)).toNat

end

end A344567.P8903939085822353623

/-! ## A344567.P16753722608762823681

`A292741(n)+A055641(A038503(n))`
-/

namespace A344567.P16753722608762823681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292741 n + A055641 (A038503 n).toNat

end

end A344567.P16753722608762823681

/-! ## A344567.P9862964081923024846

`A309768(A323483(n))+A292508(n)`
-/

namespace A344567.P9862964081923024846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309768 (A323483 n).toNat + A292508 n

end

end A344567.P9862964081923024846

/-!
# A344571: Number of subgraphs of the directed square lattice with n edges and all vertices reachable from the origin.

The programs for A344571, there is no canonical definition to state claims against.
-/

/-! ## A344571.P10271824840096416203

`A247908(A220726(n+1))`
-/

namespace A344571.P10271824840096416203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A220726 (n + 1)).toNat

end

end A344571.P10271824840096416203

/-! ## A344571.P7932779690251011674

`A108954(A360153(n+1))`
-/

namespace A344571.P7932779690251011674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A360153 (n + 1)).toNat

end

end A344571.P7932779690251011674

/-! ## A344571.P15949522387062983488

`A065719(A308444(n))+A007051(n)`
-/

namespace A344571.P15949522387062983488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A308444 n).toNat + A007051 n

end

end A344571.P15949522387062983488

/-!
# A344572: a(n) = Sum_{d|n} Omega(d!).

The programs for A344572, the canonical program `A344572.P2534658262608735268` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344572 has offset 1).

The definition of A344572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344572.P9040916886629229662

`∑{d}[n+1, A022559(#)]`
-/

namespace A344572.P9040916886629229662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A022559 d

end

end A344572.P9040916886629229662

namespace A344572

/-- `∑{d}[n+1, A022559(#)]` -/
def P9040916886629229662.Spec : Prop :=
  ∀ n, P9040916886629229662.a n = A344572 (n + 1)

end A344572

/-! ## A344572.P2534658262608735268

`∑{d}[n+1, A210241(#)-#]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A344572

/-- `∑{d}[n+1, A210241(#)-#]` -/
def P2534658262608735268.Spec : Prop :=
  ∀ n, P2534658262608735268.a n = A344572 (n + 1)

theorem P2534658262608735268.correct : P2534658262608735268.Spec := by
  intro n
  simp only [A344572, Nat.add_sub_cancel]

end A344572

/-!
# A344573: a(n) = Sum_{d|n} phi(d!).

The programs for A344573, there is no canonical definition to state claims against.
-/

/-! ## A344573.P5949120443590062366

`∑{d}[n+1, A048855(#)]`
-/

namespace A344573.P5949120443590062366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048855 d

end

end A344573.P5949120443590062366

/-! ## A344573.P12490738222050832714

`record[∑{d}[A023443(n), A048855(#)]]`
-/

namespace A344573.P12490738222050832714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A048855 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344573.P12490738222050832714

/-! ## A344573.P6966044082233299148

`record[∑{d}[A123108(n), A048855(#)]]`
-/

namespace A344573.P6966044082233299148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A048855 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344573.P6966044082233299148

/-! ## A344573.P5484635469095089251

`∑{d}[n+1, A000010(#!)]`
-/

namespace A344573.P5484635469095089251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Nat.factorial d)

end

end A344573.P5484635469095089251

/-!
# A344574: Number of ordered pairs (i,j) with 0 < i < j < n such that gcd(i,j,n) > 1.

The programs for A344574, the canonical program `A344574.P13987926843258273889` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344574 has offset 1).

The definition of A344574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344574.P15673514197765694019

`C(n, 2)-A000741(n+1)`
-/

namespace A344574.P15673514197765694019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A000741 (n + 1)

end

end A344574.P15673514197765694019

namespace A344574

/-- `C(n, 2)-A000741(n+1)` -/
def P15673514197765694019.Spec : Prop :=
  ∀ n, P15673514197765694019.a n = A344574 (n + 1)

end A344574

/-! ## A344574.P11395114952138826999

`A161680(n)-A000741(n+1)`
-/

namespace A344574.P11395114952138826999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A000741 (n + 1)

end

end A344574.P11395114952138826999

namespace A344574

/-- `A161680(n)-A000741(n+1)` -/
def P11395114952138826999.Spec : Prop :=
  ∀ n, P11395114952138826999.a n = A344574 (n + 1)

end A344574

/-! ## A344574.P6849036613074702121

`A000217(n)-(A000741(n+1)+n)`
-/

namespace A344574.P6849036613074702121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A000741 (n + 1) + (n : ℤ))

end

end A344574.P6849036613074702121

namespace A344574

/-- `A000217(n)-(A000741(n+1)+n)` -/
def P6849036613074702121.Spec : Prop :=
  ∀ n, P6849036613074702121.a n = A344574 (n + 1)

end A344574

/-! ## A344574.P8146633356627564428

`∑[n]+A001489(n)-A000741(n+1)`
-/

namespace A344574.P8146633356627564428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A001489 n - A000741 (n + 1))

end

end A344574.P8146633356627564428

namespace A344574

/-- `∑[n]+A001489(n)-A000741(n+1)` -/
def P8146633356627564428.Spec : Prop :=
  ∀ n, P8146633356627564428.a n = A344574 (n + 1)

end A344574

/-! ## A344574.P13987926843258273889

`∑{d}[n+1, A157658(#)*A161680((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344574

/-- `∑{d}[n+1, A157658(#)*A161680((n+1)/#-1)]` -/
def P13987926843258273889.Spec : Prop :=
  ∀ n, P13987926843258273889.a n = A344574 (n + 1)

theorem P13987926843258273889.correct : P13987926843258273889.Spec := by
  intro n
  simp only [A344574, Nat.add_sub_cancel]

end A344574

/-!
# A344575: a(n) = Sum_{d|n} d^abs(mu(n/d)).

The programs for A344575, the canonical program `A344575.P18061556302757989114` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344575 has offset 1).

The definition of A344575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344575.P18061556302757989114

`∏{e}[n+1, #+1]+∑{d}[∏{p}[n+1, #], (n+1)/#]-∏{p}[n+1, 2%(#+1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A344575

/-- `∏{e}[n+1, #+1]+∑{d}[∏{p}[n+1, #], (n+1)/#]-∏{p}[n+1, 2%(#+1)]` -/
def P18061556302757989114.Spec : Prop :=
  ∀ n, P18061556302757989114.a n = (A344575 (n + 1) : ℚ)

end A344575

/-! ## A344575.P18180343443656816454

`∑{d}[n+1, ((n+1)/#)^A008683(#)²]`
-/

namespace A344575.P18180343443656816454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A008683 d ^ 2 : ℤ)

end

end A344575.P18180343443656816454

namespace A344575

/-- `∑{d}[n+1, ((n+1)/#)^A008683(#)²]` -/
def P18180343443656816454.Spec : Prop :=
  ∀ n, P18180343443656816454.a n = (A344575 (n + 1) : ℚ)

end A344575

/-! ## A344575.P6436398612129453936

`A048105(n+1)+∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A344575.P6436398612129453936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048105 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)

end

end A344575.P6436398612129453936

namespace A344575

/-- `A048105(n+1)+∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P6436398612129453936.Spec : Prop :=
  ∀ n, P6436398612129453936.a n = (A344575 (n + 1) : ℚ)

end A344575

/-! ## A344575.P14168786471330178733

`A048105(n+1)+A001615(n+1)`
-/

namespace A344575.P14168786471330178733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A001615 (n + 1)

end

end A344575.P14168786471330178733

namespace A344575

/-- `A048105(n+1)+A001615(n+1)` -/
def P14168786471330178733.Spec : Prop :=
  ∀ n, P14168786471330178733.a n = A344575 (n + 1)

end A344575

/-! ## A344575.P5147366760655695641

`A048105(n+1)+(n+1)*∏{p}[n+1, A000203(#)/#]`
-/

namespace A344575.P5147366760655695641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048105 (n + 1) : ℚ) + (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A000203 p : ℚ) / (p : ℚ))

end

end A344575.P5147366760655695641

namespace A344575

/-- `A048105(n+1)+(n+1)*∏{p}[n+1, A000203(#)/#]` -/
def P5147366760655695641.Spec : Prop :=
  ∀ n, P5147366760655695641.a n = (A344575 (n + 1) : ℚ)

end A344575

/-! ## A344575.P3473578871724123618

`A000005(n+1)+A001615(n+1)-A034444(n+1)`
-/

namespace A344575.P3473578871724123618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A001615 (n + 1) - A034444 (n + 1))

end

end A344575.P3473578871724123618

namespace A344575

/-- `A000005(n+1)+A001615(n+1)-A034444(n+1)` -/
def P3473578871724123618.Spec : Prop :=
  ∀ n, P3473578871724123618.a n = A344575 (n + 1)

end A344575

/-! ## A344575.P10937896210343111733

`∑{d}[∏{p}[n+1, #], (n+1)/#]+A001222(A294895(n+1))`
-/

namespace A344575.P10937896210343111733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) + (A001222 (A294895 (n + 1)).toNat : ℚ)

end

end A344575.P10937896210343111733

namespace A344575

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]+A001222(A294895(n+1))` -/
def P10937896210343111733.Spec : Prop :=
  ∀ n, P10937896210343111733.a n = (A344575 (n + 1) : ℚ)

end A344575

/-! ## A344575.P3213378949190344933

`∑{d}[∏{p}[n+1, #], (n+1)/#]+A001222(A294897(n+1))`
-/

namespace A344575.P3213378949190344933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) + (A001222 (A294897 (n + 1)).toNat : ℚ)

end

end A344575.P3213378949190344933

namespace A344575

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]+A001222(A294897(n+1))` -/
def P3213378949190344933.Spec : Prop :=
  ∀ n, P3213378949190344933.a n = (A344575 (n + 1) : ℚ)

end A344575

/-! ## A344575.P8185454217967939105

`A048105(n+1)+A001616((n+1)²)`
-/

namespace A344575.P8185454217967939105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A001616 ((n + 1) ^ 2)

end

end A344575.P8185454217967939105

namespace A344575

/-- `A048105(n+1)+A001616((n+1)²)` -/
def P8185454217967939105.Spec : Prop :=
  ∀ n, P8185454217967939105.a n = A344575 (n + 1)

end A344575

/-!
# A344576: a(n) = f(n,n) where f(0,n) = f(n,0) = Fibonacci(n) and f(m,n) = f(m-1,n) + f(m,n-1) + f(m-1,n-1).

The programs for A344576, there is no canonical definition to state claims against.
-/

/-! ## A344576.P2127913688053826432

`A175126(xor(A291089(n), A291112(n)))`
-/

namespace A344576.P2127913688053826432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.xor (A291089 n) (A291112 n)).toNat

end

end A344576.P2127913688053826432

/-! ## A344576.P1083957800840879312

`Δ[A028242(A249793(n)-1)-A279563(n)]`
-/

namespace A344576.P1083957800840879312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A249793 n - 1).toNat - A279563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344576.P1083957800840879312

/-!
# A344578: a(n) = Sum_{d|n} d * sopf(d).

The programs for A344578, the canonical program `A344578.P9984211468648796667` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344578 has offset 1).

The definition of A344578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344578.P4253623527260660118

`∑{d}[n+1, #*A008472(#)]`
-/

namespace A344578.P4253623527260660118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008472 d

end

end A344578.P4253623527260660118

namespace A344578

/-- `∑{d}[n+1, #*A008472(#)]` -/
def P4253623527260660118.Spec : Prop :=
  ∀ n, P4253623527260660118.a n = A344578 (n + 1)

end A344578

/-! ## A344578.P9984211468648796667

`∑{d}[n+1, #*A005063((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344578

/-- `∑{d}[n+1, #*A005063((n+1)/#)]` -/
def P9984211468648796667.Spec : Prop :=
  ∀ n, P9984211468648796667.a n = A344578 (n + 1)

theorem P9984211468648796667.correct : P9984211468648796667.Spec := by
  intro n
  simp only [A344578, Nat.add_sub_cancel]

end A344578

/-! ## A344578.P11184433048046972475

`∑{p}[n+1, #²*A000203((n+1)/#)]`
-/

namespace A344578.P11184433048046972475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p ^ 2 : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A344578.P11184433048046972475

namespace A344578

/-- `∑{p}[n+1, #²*A000203((n+1)/#)]` -/
def P11184433048046972475.Spec : Prop :=
  ∀ n, P11184433048046972475.a n = A344578 (n + 1)

end A344578

/-! ## A344578.P673934923864655046

`∑{d}[n+1, #*A063958(#²)]`
-/

namespace A344578.P673934923864655046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063958 (d ^ 2)

end

end A344578.P673934923864655046

namespace A344578

/-- `∑{d}[n+1, #*A063958(#²)]` -/
def P673934923864655046.Spec : Prop :=
  ∀ n, P673934923864655046.a n = A344578 (n + 1)

end A344578

/-! ## A344578.P15046656285661697226

`∑{d}[n+1, #*A097974(#²)]`
-/

namespace A344578.P15046656285661697226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A097974 (d ^ 2)

end

end A344578.P15046656285661697226

namespace A344578

/-- `∑{d}[n+1, #*A097974(#²)]` -/
def P15046656285661697226.Spec : Prop :=
  ∀ n, P15046656285661697226.a n = A344578 (n + 1)

end A344578

/-!
# A344579: a(n) = Sum_{d|n} d^sopf(d).

The programs for A344579, there is no canonical definition to state claims against.
-/

/-! ## A344579.P7741376610991305869

`∑{d}[n+1, A176147(#)]`
-/

namespace A344579.P7741376610991305869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176147 d

end

end A344579.P7741376610991305869

/-! ## A344579.P2703386579731801056

`∑{d}[n+1, #^A008472(#)]`
-/

namespace A344579.P2703386579731801056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A008472 d : ℤ)

end

end A344579.P2703386579731801056

/-! ## A344579.P4511008115016332870

`∑{d}[n+1, #^A063958(#²)]`
-/

namespace A344579.P4511008115016332870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A063958 (d ^ 2) : ℤ)

end

end A344579.P4511008115016332870

/-!
# A344580: Numbers k such that A101203(k) is prime.

The programs for A344580, there is no canonical definition to state claims against.
-/

/-! ## A344580.P15766240468787554536

`eq[0, A237053(A101203(n))]`
-/

namespace A344580.P15766240468787554536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A101203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344580.P15766240468787554536

/-! ## A344580.P1794258019888619170

`eq[2, A000005(A101203(n+1))]+1`
-/

namespace A344580.P1794258019888619170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344580.P1794258019888619170

/-! ## A344580.P13013953332787956943

`eq[2, A000005(A101203(A233583(n+1)))]`
-/

namespace A344580.P13013953332787956943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101203 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344580.P13013953332787956943

/-!
# A344581: Numbers k such that A034387(k) and A101203(k) are both prime.

The programs for A344581, there is no canonical definition to state claims against.
-/

/-! ## A344581.P6147099781333950139

`∩[A228102(n+1), A344580(n+1)]`
-/

namespace A344581.P6147099781333950139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344581.P6147099781333950139

/-! ## A344581.P11006154397941523442

`A055872(n+1)+A001223(A014514(n+3))`
-/

namespace A344581.P11006154397941523442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055872 (n + 1) + A001223 (A014514 (n + 3)).toNat

end

end A344581.P11006154397941523442

/-!
# A344584: Difference between the inverse Möbius transform of the arithmetic derivative of n and the sum of the proper divisors of n: a(n) = A319684(n) - A001065(n).

The programs for A344584, the canonical program `A344584.P9009511371490729863` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344584 has offset 1).

The definition of A344584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344584.P8032005316672114488

`A211991(n+1)+A319683(n+1)`
-/

namespace A344584.P8032005316672114488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1) + A319683 (n + 1)

end

end A344584.P8032005316672114488

namespace A344584

/-- `A211991(n+1)+A319683(n+1)` -/
def P8032005316672114488.Spec : Prop :=
  ∀ n, P8032005316672114488.a n = A344584 (n + 1)

end A344584

/-! ## A344584.P9009511371490729863

`A319684(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344584

/-- `A319684(n+1)-A001065(n+1)` -/
def P9009511371490729863.Spec : Prop :=
  ∀ n, P9009511371490729863.a n = A344584 (n + 1)

theorem P9009511371490729863.correct : P9009511371490729863.Spec := by
  intro n
  simp only [A344584, Nat.add_sub_cancel]

end A344584

/-! ## A344584.P17538913677178734495

`∑{d}[n+1, A344178(#)]`
-/

namespace A344584.P17538913677178734495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344178 d

end

end A344584.P17538913677178734495

namespace A344584

/-- `∑{d}[n+1, A344178(#)]` -/
def P17538913677178734495.Spec : Prop :=
  ∀ n, P17538913677178734495.a n = A344584 (n + 1)

end A344584

/-! ## A344584.P16299117179447347112

`∑{d}[n+1, A168036(#)]+1+n`
-/

namespace A344584.P16299117179447347112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168036 d + 1 + (n : ℤ)

end

end A344584.P16299117179447347112

namespace A344584

/-- `∑{d}[n+1, A168036(#)]+1+n` -/
def P16299117179447347112.Spec : Prop :=
  ∀ n, P16299117179447347112.a n = A344584 (n + 1)

end A344584

/-! ## A344584.P3438096061435983275

`∑{d}[n+1, A003415(#)-#]+n+1`
-/

namespace A344584.P3438096061435983275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A003415 d - (d : ℤ)) + (n + 1 : ℤ)

end

end A344584.P3438096061435983275

namespace A344584

/-- `∑{d}[n+1, A003415(#)-#]+n+1` -/
def P3438096061435983275.Spec : Prop :=
  ∀ n, P3438096061435983275.a n = A344584 (n + 1)

end A344584

/-! ## A344584.P13696895093618477290

`A319684(n+1)+n+1-A000203(n+1)`
-/

namespace A344584.P13696895093618477290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

end

end A344584.P13696895093618477290

namespace A344584

/-- `A319684(n+1)+n+1-A000203(n+1)` -/
def P13696895093618477290.Spec : Prop :=
  ∀ n, P13696895093618477290.a n = A344584 (n + 1)

end A344584

/-! ## A344584.P6761877990659896090

`A003415(n+1)+A319683(n+1)-A001065(n+1)`
-/

namespace A344584.P6761877990659896090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A319683 (n + 1) - A001065 (n + 1))

end

end A344584.P6761877990659896090

namespace A344584

/-- `A003415(n+1)+A319683(n+1)-A001065(n+1)` -/
def P6761877990659896090.Spec : Prop :=
  ∀ n, P6761877990659896090.a n = A344584 (n + 1)

end A344584

/-! ## A344584.P9724210274406744008

`A211991(n+1)+A319684(n+1)-A003415(n+1)`
-/

namespace A344584.P9724210274406744008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1) + (A319684 (n + 1) - A003415 (n + 1))

end

end A344584.P9724210274406744008

namespace A344584

/-- `A211991(n+1)+A319684(n+1)-A003415(n+1)` -/
def P9724210274406744008.Spec : Prop :=
  ∀ n, P9724210274406744008.a n = A344584 (n + 1)

end A344584

/-!
# A344585: Numbers whose sum of proper divisors (A001065) is greater than their arithmetic derivative (A003415).

The programs for A344585, the canonical program `A344585.P15926427929207934664` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344585 has offset 1).

The definition of A344585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344585.P15926427929207934664

`lt[A211991(round(acot(n)+n)), 0]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A344585

/-- `lt[A211991(round(acot(n)+n)), 0]` -/
def P15926427929207934664.Spec : Prop :=
  ∀ n, (P15926427929207934664.a n : ℤ) = A344585 (n + 1)

theorem P15926427929207934664.correct : P15926427929207934664.Spec := by
  intro n
  simp only [A344585, Nat.add_sub_cancel]

end A344585

/-! ## A344585.P5144509602394731159

`lt[A211991(n+2), A008683(n+2)]+2`
-/

namespace A344585.P5144509602394731159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A344585.P5144509602394731159

namespace A344585

/-- `lt[A211991(n+2), A008683(n+2)]+2` -/
def P5144509602394731159.Spec : Prop :=
  ∀ n, (P5144509602394731159.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P4869053689680101426

`A114637(lt[A211991(n+1), 0])`
-/

namespace A344585.P4869053689680101426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344585.P4869053689680101426

namespace A344585

/-- `A114637(lt[A211991(n+1), 0])` -/
def P4869053689680101426.Spec : Prop :=
  ∀ n, P4869053689680101426.a n = A344585 (n + 1)

end A344585

/-! ## A344585.P8879865455265481147

`lt[A211991(A028310(n)), 0]`
-/

namespace A344585.P8879865455265481147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344585.P8879865455265481147

namespace A344585

/-- `lt[A211991(A028310(n)), 0]` -/
def P8879865455265481147.Spec : Prop :=
  ∀ n, (P8879865455265481147.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P6073072262779262554

`A153152(lt[A211991(n+1), 0])`
-/

namespace A344585.P6073072262779262554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344585.P6073072262779262554

namespace A344585

/-- `A153152(lt[A211991(n+1), 0])` -/
def P6073072262779262554.Spec : Prop :=
  ∀ n, P6073072262779262554.a n = A344585 (n + 1)

end A344585

/-! ## A344585.P2499134799478828551

`A326178(lt[A211991(n+1), 0])`
-/

namespace A344585.P2499134799478828551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344585.P2499134799478828551

namespace A344585

/-- `A326178(lt[A211991(n+1), 0])` -/
def P2499134799478828551.Spec : Prop :=
  ∀ n, P2499134799478828551.a n = A344585 (n + 1)

end A344585

/-! ## A344585.P8205567750718298460

`lt[(A211991(n+1)+1)*(n+1), A014963(n+1)]+1`
-/

namespace A344585.P8205567750718298460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211991 (n + 1) + 1) * (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344585.P8205567750718298460

namespace A344585

/-- `lt[(A211991(n+1)+1)*(n+1), A014963(n+1)]+1` -/
def P8205567750718298460.Spec : Prop :=
  ∀ n, (P8205567750718298460.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P11365780451587514599

`lt[A003415(n), A001065(A028310(n))]`
-/

namespace A344585.P11365780451587514599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344585.P11365780451587514599

namespace A344585

/-- `lt[A003415(n), A001065(A028310(n))]` -/
def P11365780451587514599.Spec : Prop :=
  ∀ n, (P11365780451587514599.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P573268494817321829

`lt[A129283(n)-n, A001065(A028310(n))]`
-/

namespace A344585.P573268494817321829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344585.P573268494817321829

namespace A344585

/-- `lt[A129283(n)-n, A001065(A028310(n))]` -/
def P573268494817321829.Spec : Prop :=
  ∀ n, (P573268494817321829.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P4423576861095770540

`lt[A319703(n-(1-n)%(n+1)+1), A001065(A028310(n))]`
-/

namespace A344585.P4423576861095770540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344585.P4423576861095770540

namespace A344585

/-- `lt[A319703(n-(1-n)%(n+1)+1), A001065(A028310(n))]` -/
def P4423576861095770540.Spec : Prop :=
  ∀ n, (P4423576861095770540.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P14406687452908470739

`lt[A211991(A233583(n+1)), 0]`
-/

namespace A344585.P14406687452908470739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344585.P14406687452908470739

namespace A344585

/-- `lt[A211991(A233583(n+1)), 0]` -/
def P14406687452908470739.Spec : Prop :=
  ∀ n, (P14406687452908470739.a n : ℤ) = A344585 (n + 1)

end A344585

/-! ## A344585.P6636415516548257703

`lt[A168036(n), A033880(A233583(n+1))]`
-/

namespace A344585.P6636415516548257703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344585.P6636415516548257703

namespace A344585

/-- `lt[A168036(n), A033880(A233583(n+1))]` -/
def P6636415516548257703.Spec : Prop :=
  ∀ n, (P6636415516548257703.a n : ℤ) = A344585 (n + 1)

end A344585

/-!
# A344586: Numbers k for which A003415(k) >= A001065(k), where A003415 gives the arithmetic derivative, and A001065 is the sum of proper divisors.

The programs for A344586, the canonical program `A344586.P11857581262602511769` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344586 has offset 1).

The definition of A344586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344586.P11857581262602511769

`comp[A344585(n+1)-1]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344586

/-- `comp[A344585(n+1)-1]+1` -/
def P11857581262602511769.Spec : Prop :=
  ∀ n, (P11857581262602511769.a n : ℤ) = A344586 (n + 1)

theorem P11857581262602511769.correct : P11857581262602511769.Spec := by
  intro n
  simp only [A344586, Nat.add_sub_cancel]

end A344586

/-! ## A344586.P4139863264589548420

`lt[A343224(round(sqrt(n²+1))), n+1]`
-/

namespace A344586.P4139863264589548420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343224 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344586.P4139863264589548420

namespace A344586

/-- `lt[A343224(round(sqrt(n²+1))), n+1]` -/
def P4139863264589548420.Spec : Prop :=
  ∀ n, (P4139863264589548420.a n : ℤ) = A344586 (n + 1)

end A344586

/-! ## A344586.P11785481145433060918

`lt[A343224(n+1)-1, n+1]+1`
-/

namespace A344586.P11785481145433060918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343224 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344586.P11785481145433060918

namespace A344586

/-- `lt[A343224(n+1)-1, n+1]+1` -/
def P11785481145433060918.Spec : Prop :=
  ∀ n, (P11785481145433060918.a n : ℤ) = A344586 (n + 1)

end A344586

/-! ## A344586.P3415889477504505113

`lt[A039653(n), A129283(n)]`
-/

namespace A344586.P3415889477504505113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344586.P3415889477504505113

namespace A344586

/-- `lt[A039653(n), A129283(n)]` -/
def P3415889477504505113.Spec : Prop :=
  ∀ n, (P3415889477504505113.a n : ℤ) = A344586 (n + 1)

end A344586

/-! ## A344586.P2047064176963467059

`lt[A039653(n), A003415(n)+n]`
-/

namespace A344586.P2047064176963467059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344586.P2047064176963467059

namespace A344586

/-- `lt[A039653(n), A003415(n)+n]` -/
def P2047064176963467059.Spec : Prop :=
  ∀ n, (P2047064176963467059.a n : ℤ) = A344586 (n + 1)

end A344586

/-! ## A344586.P4583645490043150775

`lt[A008683(A020483(n)), A211991(n+1)]+1`
-/

namespace A344586.P4583645490043150775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344586.P4583645490043150775

namespace A344586

/-- `lt[A008683(A020483(n)), A211991(n+1)]+1` -/
def P4583645490043150775.Spec : Prop :=
  ∀ n, (P4583645490043150775.a n : ℤ) = A344586 (n + 1)

end A344586

/-!
# A344587: Deficiency of prime-shifted n: a(n) = 2*A003961(n) - sigma(A003961(n)).

The programs for A344587, the canonical program `A344587.P3683186071812823048` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344587 has offset 1).

The definition of A344587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336851, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344587.P3683186071812823048

`A003961(n+1)-A336851(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A344587

/-- `A003961(n+1)-A336851(n+1)` -/
def P3683186071812823048.Spec : Prop :=
  ∀ n, P3683186071812823048.a n = A344587 (n + 1)

theorem P3683186071812823048.correct : P3683186071812823048.Spec := by
  intro n
  simp only [A344587, Nat.add_sub_cancel]

end A344587

/-! ## A344587.P10569218141113808008

`2*A003961(n+1)-A003973(n+1)`
-/

namespace A344587.P10569218141113808008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 (n + 1) - A003973 (n + 1)

end

end A344587.P10569218141113808008

namespace A344587

/-- `2*A003961(n+1)-A003973(n+1)` -/
def P10569218141113808008.Spec : Prop :=
  ∀ n, P10569218141113808008.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P8513780538394509188

`A033879(A003961(n+1))`
-/

namespace A344587.P8513780538394509188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A003961 (n + 1)).toNat

end

end A344587.P8513780538394509188

namespace A344587

/-- `A033879(A003961(n+1))` -/
def P8513780538394509188.Spec : Prop :=
  ∀ n, P8513780538394509188.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P12742351223939860627

`∑{d}[n+1, A337544(#)]`
-/

namespace A344587.P12742351223939860627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A337544 d

end

end A344587.P12742351223939860627

namespace A344587

/-- `∑{d}[n+1, A337544(#)]` -/
def P12742351223939860627.Spec : Prop :=
  ∀ n, P12742351223939860627.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P12267203042628882164

`A388975(n+1)-A003961(n+1)`
-/

namespace A344587.P12267203042628882164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388975 (n + 1) - A003961 (n + 1)

end

end A344587.P12267203042628882164

namespace A344587

/-- `A388975(n+1)-A003961(n+1)` -/
def P12267203042628882164.Spec : Prop :=
  ∀ n, P12267203042628882164.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P4260266623843771612

`A253885(n)+1-A336851(n+1)`
-/

namespace A344587.P4260266623843771612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (1 - A336851 (n + 1))

end

end A344587.P4260266623843771612

namespace A344587

/-- `A253885(n)+1-A336851(n+1)` -/
def P4260266623843771612.Spec : Prop :=
  ∀ n, P4260266623843771612.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P6618371235368237112

`A346247(n+1)-A346246(n+1)`
-/

namespace A344587.P6618371235368237112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346247 (n + 1) - A346246 (n + 1)

end

end A344587.P6618371235368237112

namespace A344587

/-- `A346247(n+1)-A346246(n+1)` -/
def P6618371235368237112.Spec : Prop :=
  ∀ n, P6618371235368237112.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P14213809861247780748

`A389078(n+1)-A389077(n+1)`
-/

namespace A344587.P14213809861247780748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389078 (n + 1) - A389077 (n + 1)

end

end A344587.P14213809861247780748

namespace A344587

/-- `A389078(n+1)-A389077(n+1)` -/
def P14213809861247780748.Spec : Prop :=
  ∀ n, P14213809861247780748.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P12413115158209882612

`A003973(n+1)-2*A336851(n+1)`
-/

namespace A344587.P12413115158209882612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - 2 * A336851 (n + 1)

end

end A344587.P12413115158209882612

namespace A344587

/-- `A003973(n+1)-2*A336851(n+1)` -/
def P12413115158209882612.Spec : Prop :=
  ∀ n, P12413115158209882612.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P2469835095387979623

`∑{d}[n+1, A003961(#)*A153881((n+1)/#)]`
-/

namespace A344587.P2469835095387979623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344587.P2469835095387979623

namespace A344587

/-- `∑{d}[n+1, A003961(#)*A153881((n+1)/#)]` -/
def P2469835095387979623.Spec : Prop :=
  ∀ n, P2469835095387979623.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P2126220794839213363

`∑{d}[n+1, A003972(#)*A378216((n+1)/#)]`
-/

namespace A344587.P2126220794839213363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344587.P2126220794839213363

namespace A344587

/-- `∑{d}[n+1, A003972(#)*A378216((n+1)/#)]` -/
def P2126220794839213363.Spec : Prop :=
  ∀ n, P2126220794839213363.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P9941658933003101201

`∑{d}[n+1, A003973(#)*A378225((n+1)/#)]`
-/

namespace A344587.P9941658933003101201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344587.P9941658933003101201

namespace A344587

/-- `∑{d}[n+1, A003973(#)*A378225((n+1)/#)]` -/
def P9941658933003101201.Spec : Prop :=
  ∀ n, P9941658933003101201.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P15301688931802415828

`∑{d}[n+1, A033879(#)*A349387((n+1)/#)]`
-/

namespace A344587.P15301688931802415828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344587.P15301688931802415828

namespace A344587

/-- `∑{d}[n+1, A033879(#)*A349387((n+1)/#)]` -/
def P15301688931802415828.Spec : Prop :=
  ∀ n, P15301688931802415828.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P10908314918985242826

`∑{d}[n+1, A296075(#)*A378606((n+1)/#)]`
-/

namespace A344587.P10908314918985242826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344587.P10908314918985242826

namespace A344587

/-- `∑{d}[n+1, A296075(#)*A378606((n+1)/#)]` -/
def P10908314918985242826.Spec : Prop :=
  ∀ n, P10908314918985242826.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P10970800489731246782

`∑{d}[n+1, A347136(#)*A378217((n+1)/#)]`
-/

namespace A344587.P10970800489731246782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344587.P10970800489731246782

namespace A344587

/-- `∑{d}[n+1, A347136(#)*A378217((n+1)/#)]` -/
def P10970800489731246782.Spec : Prop :=
  ∀ n, P10970800489731246782.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P3389701706032136057

`A000203(n+1)+A286385(n+1)-A336851(n+1)`
-/

namespace A344587.P3389701706032136057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A286385 (n + 1) - A336851 (n + 1))

end

end A344587.P3389701706032136057

namespace A344587

/-- `A000203(n+1)+A286385(n+1)-A336851(n+1)` -/
def P3389701706032136057.Spec : Prop :=
  ∀ n, P3389701706032136057.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P2187903526559252520

`A003961(n+1)+A286385(n+1)-A336852(n+1)`
-/

namespace A344587.P2187903526559252520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A286385 (n + 1) - A336852 (n + 1))

end

end A344587.P2187903526559252520

namespace A344587

/-- `A003961(n+1)+A286385(n+1)-A336852(n+1)` -/
def P2187903526559252520.Spec : Prop :=
  ∀ n, P2187903526559252520.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P464347262493312364

`A003961(n+1)+A389078(n+1)-A389076(n+1)`
-/

namespace A344587.P464347262493312364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A389078 (n + 1) - A389076 (n + 1))

end

end A344587.P464347262493312364

namespace A344587

/-- `A003961(n+1)+A389078(n+1)-A389076(n+1)` -/
def P464347262493312364.Spec : Prop :=
  ∀ n, P464347262493312364.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P322060609717149898

`A336849(n+1)*A336850(n+1)-A336851(n+1)`
-/

namespace A344587.P322060609717149898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (n + 1) * A336850 (n + 1) - A336851 (n + 1)

end

end A344587.P322060609717149898

namespace A344587

/-- `A336849(n+1)*A336850(n+1)-A336851(n+1)` -/
def P322060609717149898.Spec : Prop :=
  ∀ n, P322060609717149898.a n = A344587 (n + 1)

end A344587

/-! ## A344587.P18210845905794595359

`2*A045965(n+1)-A000203(A045965(n+1))`
-/

namespace A344587.P18210845905794595359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045965 (n + 1) - A000203 (A045965 (n + 1)).toNat

end

end A344587.P18210845905794595359

namespace A344587

/-- `2*A045965(n+1)-A000203(A045965(n+1))` -/
def P18210845905794595359.Spec : Prop :=
  ∀ n, P18210845905794595359.a n = A344587 (n + 1)

end A344587

/-!
# A344588: Positions of records in A344590.

The programs for A344588, there is no canonical definition to state claims against.
-/

/-! ## A344588.P5348934689991059288

`eq[A208759(n+1), A319655(A093411(n))]`
-/

namespace A344588.P5348934689991059288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (A093411 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344588.P5348934689991059288

/-! ## A344588.P11555484521747005320

`A200723(A023105(n)^A182742(2*(n+2)))`
-/

namespace A344588.P11555484521747005320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200723 (SequenceMachineLib.roundAway ((A023105 n : ℚ) ^ (A182742 (2 * (n + 2)) : ℤ))).toNat

end

end A344588.P11555484521747005320

/-!
# A344589: Number of divisors d of n for which A011772(d) < A011772(n), where A011772(n) is the smallest number m such that m(m+1)/2 is divisible by n.

The programs for A344589, there is no canonical definition to state claims against.
-/

/-! ## A344589.P15370168128499986726

`A000005(n+1)-A344590(n+1)`
-/

namespace A344589.P15370168128499986726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A344590 (n + 1)

end

end A344589.P15370168128499986726

/-! ## A344589.P8541537433572149440

`Δ[A006218(n)]-A344590(n+1)`
-/

namespace A344589.P8541537433572149440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A344590 (n + 1)

end

end A344589.P8541537433572149440

/-! ## A344589.P11707491906725284930

`Δ[A054519(n)]-A344590(n+1)`
-/

namespace A344589.P11707491906725284930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A344590 (n + 1)

end

end A344589.P11707491906725284930

/-! ## A344589.P9381288082734153017

`A008619(A086369(n+1))-A344590(n+1)`
-/

namespace A344589.P9381288082734153017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A086369 (n + 1)).toNat - A344590 (n + 1)

end

end A344589.P9381288082734153017

/-! ## A344589.P4234450523351527713

`A345935(n+1)+A345936(n+1)-A344590(n+1)`
-/

namespace A344589.P4234450523351527713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1) + (A345936 (n + 1) - A344590 (n + 1))

end

end A344589.P4234450523351527713

/-! ## A344589.P9162812721578830370

`A354991(n+1)+A354992(n+1)-A344590(n+1)`
-/

namespace A344589.P9162812721578830370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1) + (A354992 (n + 1) - A344590 (n + 1))

end

end A344589.P9162812721578830370

/-! ## A344589.P14923443752326302091

`A001227(n+1)*A001511(n+1)-A344590(n+1)`
-/

namespace A344589.P14923443752326302091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A344590 (n + 1)

end

end A344589.P14923443752326302091

/-!
# A344590: Number of divisors d of n for which A011772(d) = A011772(n), where A011772(n) is the smallest number m such that m(m+1)/2 is divisible by n.

The programs for A344590, there is no canonical definition to state claims against.
-/

/-! ## A344590.P8411761320068994466

`A000005(n+1)-A344589(n+1)`
-/

namespace A344590.P8411761320068994466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A344589 (n + 1)

end

end A344590.P8411761320068994466

/-! ## A344590.P2552168954774391573

`Δ[A006218(n)]-A344589(n+1)`
-/

namespace A344590.P2552168954774391573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A344589 (n + 1)

end

end A344590.P2552168954774391573

/-! ## A344590.P11623136595586360469

`Δ[A054519(n)]-A344589(n+1)`
-/

namespace A344590.P11623136595586360469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A344589 (n + 1)

end

end A344590.P11623136595586360469

/-! ## A344590.P282118842610040166

`∑{d}[n+1, val(A321366(#), A321366(n+1))]`
-/

namespace A344590.P282118842610040166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A321366 d).toNat (A321366 (n + 1)).toNat

end

end A344590.P282118842610040166

/-! ## A344590.P13539867414427932776

`∑{d}[n+1, floor(A011772(#)/A011772(n+1))]`
-/

namespace A344590.P13539867414427932776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(A011772 d : ℚ) / (A011772 (n + 1) : ℚ)⌋

end

end A344590.P13539867414427932776

/-! ## A344590.P5017738083369559711

`A006218(n+1)-(A344589(n+1)+A006218(n))`
-/

namespace A344590.P5017738083369559711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A344589 (n + 1) + A006218 n)

end

end A344590.P5017738083369559711

/-! ## A344590.P6562275656120976103

`A345935(n+1)+A345936(n+1)-A344589(n+1)`
-/

namespace A344590.P6562275656120976103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1) + (A345936 (n + 1) - A344589 (n + 1))

end

end A344590.P6562275656120976103

/-! ## A344590.P11914749427124438004

`A354991(n+1)+A354992(n+1)-A344589(n+1)`
-/

namespace A344590.P11914749427124438004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (n + 1) + (A354992 (n + 1) - A344589 (n + 1))

end

end A344590.P11914749427124438004

/-! ## A344590.P821319231555065096

`A001227(n+1)*A001511(n+1)-A344589(n+1)`
-/

namespace A344590.P821319231555065096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A344589 (n + 1)

end

end A344590.P821319231555065096

/-!
# A344591: Numbers k such that the primorial inflation of k is a sum of distinct primorial numbers.

The programs for A344591, there is no canonical definition to state claims against.
-/

/-! ## A344591.P7052759122831166955

`eq[1, A329344(n+1)]+1`
-/

namespace A344591.P7052759122831166955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344591.P7052759122831166955

/-! ## A344591.P2099045106086416761

`eq[1, A344593(n+1)]+1`
-/

namespace A344591.P2099045106086416761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344591.P2099045106086416761

/-! ## A344591.P5119686089413672668

`lt[0, A351957(n+1)]+1`
-/

namespace A344591.P5119686089413672668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344591.P5119686089413672668

/-! ## A344591.P10151795891910721484

`record[A000027(n+1)*A351957(n+1)]`
-/

namespace A344591.P10151795891910721484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A351957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344591.P10151795891910721484

/-! ## A344591.P8923972969325825385

`record[A000027(n+1)/A329344(n+1)]`
-/

namespace A344591.P8923972969325825385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A329344 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344591.P8923972969325825385

/-! ## A344591.P7959096057216182552

`filter[A115063(n+1), A351957(#)]`
-/

namespace A344591.P7959096057216182552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A344591.P7959096057216182552

/-! ## A344591.P7934552618946585648

`filter[A121229(n+1), A351957(#)]`
-/

namespace A344591.P7934552618946585648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A344591.P7934552618946585648

/-! ## A344591.P5482380800873938415

`filter[n+1, A351957(#)]`
-/

namespace A344591.P5482380800873938415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j) = 1) n)

end

end A344591.P5482380800873938415

/-! ## A344591.P9131760485293259918

`eq[ceil(sin(n)²), A351957(A028310(n))]`
-/

namespace A344591.P9131760485293259918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344591.P9131760485293259918

/-! ## A344591.P938981280479437214

`record[A020725(n+1)-A344593(n+1)]`
-/

namespace A344591.P938981280479437214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A344593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344591.P938981280479437214

/-! ## A344591.P3908814156636462811

`record[A008619(2*n)/A329344(n+1)]`
-/

namespace A344591.P3908814156636462811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A329344 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344591.P3908814156636462811

/-! ## A344591.P16239434926753723448

`record[A004526(2*n+3)/A329344(n+1)]`
-/

namespace A344591.P16239434926753723448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * n + 3) : ℚ) / (A329344 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344591.P16239434926753723448

/-!
# A344592: a(n) = A003557(A276086(A108951(n))).

The programs for A344592, there is no canonical definition to state claims against.
-/

/-! ## A344592.P6492856441418108564

`A324886(n+1)/A346091(n+1)`
-/

namespace A344592.P6492856441418108564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A346091 (n + 1) : ℚ)

end

end A344592.P6492856441418108564

/-! ## A344592.P1776289283373436354

`A329047(n+1)/A342920(n+1)`
-/

namespace A344592.P1776289283373436354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329047 (n + 1) : ℚ) / (A342920 (n + 1) : ℚ)

end

end A344592.P1776289283373436354

/-! ## A344592.P12021479231085654158

`A003557(A324886(n+1))`
-/

namespace A344592.P12021479231085654158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A324886 (n + 1)).toNat

end

end A344592.P12021479231085654158

/-! ## A344592.P9143665694526069296

`gcd(A324886(n+1), A329047(n+1))`
-/

namespace A344592.P9143665694526069296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324886 (n + 1)) (A329047 (n + 1))

end

end A344592.P9143665694526069296

/-! ## A344592.P15603175591825194001

`gcd(A324896(n+1), A329047(A000027(n+1)))`
-/

namespace A344592.P15603175591825194001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324896 (n + 1)) (A329047 (A000027 (n + 1)).toNat)

end

end A344592.P15603175591825194001

/-! ## A344592.P11258352753005181897

`gcd(2*A329047(n+1), A324896(n+1)²)`
-/

namespace A344592.P11258352753005181897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A329047 (n + 1)) (A324896 (n + 1) ^ 2)

end

end A344592.P11258352753005181897

/-! ## A344592.P12679228213919768253

`A324896(n+1)/A028234(A346091(n+1))`
-/

namespace A344592.P12679228213919768253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324896 (n + 1) : ℚ) / (A028234 (A346091 (n + 1)).toNat : ℚ)

end

end A344592.P12679228213919768253

/-!
# A344593: Lexicographically earliest infinite sequence such that a(i) = a(j) => A344592(i) = A344592(j), for all i, j >= 1.

The programs for A344593, there is no canonical definition to state claims against.
-/

/-! ## A344593.P3991623271076445473

`ceil(A020639(record[A087825(n+1)])/3)`
-/

namespace A344593.P3991623271076445473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 3⌉

end

end A344593.P3991623271076445473

/-! ## A344593.P11415318895810946046

`A026405(A020639(record[A087825(n+1)]))`
-/

namespace A344593.P11415318895810946046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A344593.P11415318895810946046

/-! ## A344593.P4077482379586241320

`A331953(A344592(n+1))`
-/

namespace A344593.P4077482379586241320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331953 (A344592 (n + 1)).toNat

end

end A344593.P4077482379586241320

/-! ## A344593.P17233411623041482718

`A031076(9*A344592(n+1))`
-/

namespace A344593.P17233411623041482718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (9 * A344592 (n + 1)).toNat

end

end A344593.P17233411623041482718

/-! ## A344593.P9274031569534343174

`gcd(A008930(n), A209600(n+1))`
-/

namespace A344593.P9274031569534343174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008930 n) (A209600 (n + 1))

end

end A344593.P9274031569534343174

/-!
# A344594: Lexicographically earliest infinite sequence such that a(i) = a(j) => A342920(i) = A342920(j), for all i, j >= 1.

The programs for A344594, there is no canonical definition to state claims against.
-/

/-! ## A344594.P15098640081027070074

`A081604(A053266(A300246(n+1)²))`
-/

namespace A344594.P15098640081027070074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A053266 (A300246 (n + 1) ^ 2).toNat).toNat

end

end A344594.P15098640081027070074

/-! ## A344594.P1191338402374654709

`A081604(A000045(A097272(n+1)))`
-/

namespace A344594.P1191338402374654709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A000045 (A097272 (n + 1)).toNat).toNat

end

end A344594.P1191338402374654709

/-! ## A344594.P11365883017355129490

`A068063(A052955(A318888(n+1))-A318888(n+1))`
-/

namespace A344594.P11365883017355129490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A052955 (A318888 (n + 1)).toNat - A318888 (n + 1)).toNat

end

end A344594.P11365883017355129490

/-! ## A344594.P7577827779774438583

`A324905(A139763(n))`
-/

namespace A344594.P7577827779774438583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324905 (A139763 n).toNat

end

end A344594.P7577827779774438583

/-! ## A344594.P15465502905938634753

`A045778(3^A300226(n+1))`
-/

namespace A344594.P15465502905938634753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A300226 (n + 1) : ℤ))).toNat

end

end A344594.P15465502905938634753

/-!
# A344596: a(n) = Sum_{k=1..n} mu(k) * (floor(n/k)^3 - floor((n-1)/k)^3).

The programs for A344596, the canonical program `A344596.P2719881451078791433` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344596 has offset 1).

The definition of A344596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344596.P2719881451078791433

`A122553(n)!*A326419(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A344596

/-- `A122553(n)!*A326419(n+1)` -/
def P2719881451078791433.Spec : Prop :=
  ∀ n, P2719881451078791433.a n = A344596 (n + 1)

theorem P2719881451078791433.correct : P2719881451078791433.Spec := by
  intro n
  simp only [A344596, Nat.add_sub_cancel]

end A344596

/-! ## A344596.P17598842579866311635

`A000007(n)+6*A102309(n+1)`
-/

namespace A344596.P17598842579866311635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 6 * A102309 (n + 1)

end

end A344596.P17598842579866311635

namespace A344596

/-- `A000007(n)+6*A102309(n+1)` -/
def P17598842579866311635.Spec : Prop :=
  ∀ n, P17598842579866311635.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P3040643310929593072

`∑{d}[n+1, A055615(#)*A344599((n+1)/#)]`
-/

namespace A344596.P3040643310929593072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344596.P3040643310929593072

namespace A344596

/-- `∑{d}[n+1, A055615(#)*A344599((n+1)/#)]` -/
def P3040643310929593072.Spec : Prop :=
  ∀ n, P3040643310929593072.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P805119982101456849

`∑{d}[n+1, A003215(#-1)*A008683((n+1)/#)]`
-/

namespace A344596.P805119982101456849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003215 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344596.P805119982101456849

namespace A344596

/-- `∑{d}[n+1, A003215(#-1)*A008683((n+1)/#)]` -/
def P805119982101456849.Spec : Prop :=
  ∀ n, P805119982101456849.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P14129861544512686325

`(6*A102309(n+1))^A178334(A178334(n))`
-/

namespace A344596.P14129861544512686325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A102309 (n + 1) : ℚ) ^ (A178334 (A178334 n).toNat : ℤ)

end

end A344596.P14129861544512686325

namespace A344596

/-- `(6*A102309(n+1))^A178334(A178334(n))` -/
def P14129861544512686325.Spec : Prop :=
  ∀ n, P14129861544512686325.a n = (A344596 (n + 1) : ℚ)

end A344596

/-! ## A344596.P9323573532817664192

`A037213(A020639(n+1))+6*A102309(n+1)`
-/

namespace A344596.P9323573532817664192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A020639 (n + 1)).toNat + 6 * A102309 (n + 1)

end

end A344596.P9323573532817664192

namespace A344596

/-- `A037213(A020639(n+1))+6*A102309(n+1)` -/
def P9323573532817664192.Spec : Prop :=
  ∀ n, P9323573532817664192.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P1698069946944819669

`A037213(A005117(n+1))+6*A102309(n+1)`
-/

namespace A344596.P1698069946944819669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A005117 (n + 1)).toNat + 6 * A102309 (n + 1)

end

end A344596.P1698069946944819669

namespace A344596

/-- `A037213(A005117(n+1))+6*A102309(n+1)` -/
def P1698069946944819669.Spec : Prop :=
  ∀ n, P1698069946944819669.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P3092043430972831296

`6^A260439(A000959(n+1))*A326419(n+1)`
-/

namespace A344596.P3092043430972831296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A260439 (A000959 (n + 1)).toNat : ℤ) * (A326419 (n + 1) : ℚ)

end

end A344596.P3092043430972831296

namespace A344596

/-- `6^A260439(A000959(n+1))*A326419(n+1)` -/
def P3092043430972831296.Spec : Prop :=
  ∀ n, P3092043430972831296.a n = (A344596 (n + 1) : ℚ)

end A344596

/-! ## A344596.P5367978145997285374

`A008458(A102309(n+1))`
-/

namespace A344596.P5367978145997285374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A102309 (n + 1)).toNat

end

end A344596.P5367978145997285374

namespace A344596

/-- `A008458(A102309(n+1))` -/
def P5367978145997285374.Spec : Prop :=
  ∀ n, P5367978145997285374.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P11104704676170384093

`A008486(2*A102309(n+1))`
-/

namespace A344596.P11104704676170384093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * A102309 (n + 1)).toNat

end

end A344596.P11104704676170384093

namespace A344596

/-- `A008486(2*A102309(n+1))` -/
def P11104704676170384093.Spec : Prop :=
  ∀ n, P11104704676170384093.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P2285935010921884785

`A037213(n²+1)+6*A102309(n+1)`
-/

namespace A344596.P2285935010921884785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n ^ 2 + 1) + 6 * A102309 (n + 1)

end

end A344596.P2285935010921884785

namespace A344596

/-- `A037213(n²+1)+6*A102309(n+1)` -/
def P2285935010921884785.Spec : Prop :=
  ∀ n, P2285935010921884785.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P14344889702288345722

`A008486(A007434(n+1)-Δ[A002088(n)])`
-/

namespace A344596.P14344889702288345722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007434 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A344596.P14344889702288345722

namespace A344596

/-- `A008486(A007434(n+1)-Δ[A002088(n)])` -/
def P14344889702288345722.Spec : Prop :=
  ∀ n, P14344889702288345722.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P12483096618648415888

`A008486(A007434(n+1)-Δ[A005728(n)])`
-/

namespace A344596.P12483096618648415888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007434 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A344596.P12483096618648415888

namespace A344596

/-- `A008486(A007434(n+1)-Δ[A005728(n)])` -/
def P12483096618648415888.Spec : Prop :=
  ∀ n, P12483096618648415888.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P13561564540396489213

`A008486(A102309(n+1)+A102309(n+1))`
-/

namespace A344596.P13561564540396489213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A102309 (n + 1) + A102309 (n + 1)).toNat

end

end A344596.P13561564540396489213

namespace A344596

/-- `A008486(A102309(n+1)+A102309(n+1))` -/
def P13561564540396489213.Spec : Prop :=
  ∀ n, P13561564540396489213.a n = A344596 (n + 1)

end A344596

/-! ## A344596.P5237700397021507731

`A008486(A007434(n+1)-A000010(n+1))`
-/

namespace A344596.P5237700397021507731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007434 (n + 1) - A000010 (n + 1)).toNat

end

end A344596.P5237700397021507731

namespace A344596

/-- `A008486(A007434(n+1)-A000010(n+1))` -/
def P5237700397021507731.Spec : Prop :=
  ∀ n, P5237700397021507731.a n = A344596 (n + 1)

end A344596

/-!
# A344597: a(n) = Sum_{k=1..n} mu(k) * (floor(n/k)^4 - floor((n-1)/k)^4).

The programs for A344597, the canonical program `A344597.P9680843657521377937` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344597 has offset 1).

The definition of A344597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344597.P9680843657521377937

`Δ[A082540(A028310(n))]+C(2, n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A344597

/-- `Δ[A082540(A028310(n))]+C(2, n+2)` -/
def P9680843657521377937.Spec : Prop :=
  ∀ n, P9680843657521377937.a n = A344597 (n + 1)

theorem P9680843657521377937.correct : P9680843657521377937.Spec := by
  intro n
  simp only [A344597, Nat.add_sub_cancel]

end A344597

/-! ## A344597.P17857028677958124696

`∑{d}[n+1, A005917(#)*A008683((n+1)/#)]`
-/

namespace A344597.P17857028677958124696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005917 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344597.P17857028677958124696

namespace A344597

/-- `∑{d}[n+1, A005917(#)*A008683((n+1)/#)]` -/
def P17857028677958124696.Spec : Prop :=
  ∀ n, P17857028677958124696.a n = A344597 (n + 1)

end A344597

/-! ## A344597.P14915278730299297452

`∑{d}[n+1, A055615(#)*A344600((n+1)/#)]`
-/

namespace A344597.P14915278730299297452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344597.P14915278730299297452

namespace A344597

/-- `∑{d}[n+1, A055615(#)*A344600((n+1)/#)]` -/
def P14915278730299297452.Spec : Prop :=
  ∀ n, P14915278730299297452.a n = A344597 (n + 1)

end A344597

/-! ## A344597.P7017968814185387968

`A000007(n)+Δ[A082540(A028310(n))]`
-/

namespace A344597.P7017968814185387968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A344597.P7017968814185387968

namespace A344597

/-- `A000007(n)+Δ[A082540(A028310(n))]` -/
def P7017968814185387968.Spec : Prop :=
  ∀ n, P7017968814185387968.a n = A344597 (n + 1)

end A344597

/-! ## A344597.P17554529012832737712

`Δ[A082540(A028310(n))+A057427(n)]`
-/

namespace A344597.P17554529012832737712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344597.P17554529012832737712

namespace A344597

/-- `Δ[A082540(A028310(n))+A057427(n)]` -/
def P17554529012832737712.Spec : Prop :=
  ∀ n, P17554529012832737712.a n = A344597 (n + 1)

end A344597

/-! ## A344597.P10026891380339344024

`Δ[A082540(A028310(n))+A000040(n+1)%2]`
-/

namespace A344597.P10026891380339344024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344597.P10026891380339344024

namespace A344597

/-- `Δ[A082540(A028310(n))+A000040(n+1)%2]` -/
def P10026891380339344024.Spec : Prop :=
  ∀ n, P10026891380339344024.a n = A344597 (n + 1)

end A344597

/-!
# A344598: a(n) = Sum_{k=1..n} phi(k) * (floor(n/k)^2 - floor((n-1)/k)^2).

The programs for A344598, the canonical program `A344598.P13180373970547759744` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344598 has offset 1).

The definition of A344598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344598.P2027137784192190532

`(Δ[A134506(n)]+1)/2+n`
-/

namespace A344598.P2027137784192190532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2 + (n : ℚ)

end

end A344598.P2027137784192190532

namespace A344598

/-- `(Δ[A134506(n)]+1)/2+n` -/
def P2027137784192190532.Spec : Prop :=
  ∀ n, P2027137784192190532.a n = (A344598 (n + 1) : ℚ)

end A344598

/-! ## A344598.P8714522880923185782

`2*A006579(n+1)+1+n`
-/

namespace A344598.P8714522880923185782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006579 (n + 1) + 1 + (n : ℤ)

end

end A344598.P8714522880923185782

namespace A344598

/-- `2*A006579(n+1)+1+n` -/
def P8714522880923185782.Spec : Prop :=
  ∀ n, P8714522880923185782.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P9950807125246367750

`2*A018804(n+1)-(n+1)`
-/

namespace A344598.P9950807125246367750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018804 (n + 1) - (n + 1 : ℤ)

end

end A344598.P9950807125246367750

namespace A344598

/-- `2*A018804(n+1)-(n+1)` -/
def P9950807125246367750.Spec : Prop :=
  ∀ n, P9950807125246367750.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P4682185352899693565

`2*A209295(n+1)-3*(n+1)`
-/

namespace A344598.P4682185352899693565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209295 (n + 1) - (3 * (n + 1) : ℤ)

end

end A344598.P4682185352899693565

namespace A344598

/-- `2*A209295(n+1)-3*(n+1)` -/
def P4682185352899693565.Spec : Prop :=
  ∀ n, P4682185352899693565.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P13180373970547759744

`∑{d}[n+1, #*A140434((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344598

/-- `∑{d}[n+1, #*A140434((n+1)/#)]` -/
def P13180373970547759744.Spec : Prop :=
  ∀ n, P13180373970547759744.a n = A344598 (n + 1)

theorem P13180373970547759744.correct : P13180373970547759744.Spec := by
  intro n
  simp only [A344598, Nat.add_sub_cancel]

end A344598

/-! ## A344598.P14310720708677216251

`A018804(n+1)+A006579(n+1)`
-/

namespace A344598.P14310720708677216251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A006579 (n + 1)

end

end A344598.P14310720708677216251

namespace A344598

/-- `A018804(n+1)+A006579(n+1)` -/
def P14310720708677216251.Spec : Prop :=
  ∀ n, P14310720708677216251.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P7362444578463418682

`A006579(n+1)+Δ[A209981(n)/32]`
-/

namespace A344598.P7362444578463418682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006579 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A344598.P7362444578463418682

namespace A344598

/-- `A006579(n+1)+Δ[A209981(n)/32]` -/
def P7362444578463418682.Spec : Prop :=
  ∀ n, P7362444578463418682.a n = (A344598 (n + 1) : ℚ)

end A344598

/-! ## A344598.P761719407826140360

`A018804(n+1)+A268631(n+1)+n`
-/

namespace A344598.P761719407826140360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A268631 (n + 1) + (n : ℤ))

end

end A344598.P761719407826140360

namespace A344598

/-- `A018804(n+1)+A268631(n+1)+n` -/
def P761719407826140360.Spec : Prop :=
  ∀ n, P761719407826140360.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P10664271874760092227

`∑{d}[n+1, A062570(#)*A114752((n+1)/#)]`
-/

namespace A344598.P10664271874760092227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A114752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344598.P10664271874760092227

namespace A344598

/-- `∑{d}[n+1, A062570(#)*A114752((n+1)/#)]` -/
def P10664271874760092227.Spec : Prop :=
  ∀ n, P10664271874760092227.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P9793053151133474756

`A006579(n+1)+A268631(n+1)+n+n+1`
-/

namespace A344598.P9793053151133474756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + (A268631 (n + 1) + (n : ℤ) + (n + 1 : ℤ))

end

end A344598.P9793053151133474756

namespace A344598

/-- `A006579(n+1)+A268631(n+1)+n+n+1` -/
def P9793053151133474756.Spec : Prop :=
  ∀ n, P9793053151133474756.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P17507651423586301088

`A000027(A018804(n+1)+A018804(n+1)-(n+1))`
-/

namespace A344598.P17507651423586301088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A018804 (n + 1) + (A018804 (n + 1) - (n + 1 : ℤ))).toNat

end

end A344598.P17507651423586301088

namespace A344598

/-- `A000027(A018804(n+1)+A018804(n+1)-(n+1))` -/
def P17507651423586301088.Spec : Prop :=
  ∀ n, P17507651423586301088.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P2990473416324332524

`n+1-A106475(2*n+1)/2`
-/

namespace A344598.P2990473416324332524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A106475 (2 * n + 1) : ℚ) / 2

end

end A344598.P2990473416324332524

namespace A344598

/-- `n+1-A106475(2*n+1)/2` -/
def P2990473416324332524.Spec : Prop :=
  ∀ n, P2990473416324332524.a n = (A344598 (n + 1) : ℚ)

end A344598

/-! ## A344598.P9166652706040190050

`A005408(A006579(n+1))+n`
-/

namespace A344598.P9166652706040190050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A006579 (n + 1)).toNat + (n : ℤ)

end

end A344598.P9166652706040190050

namespace A344598

/-- `A005408(A006579(n+1))+n` -/
def P9166652706040190050.Spec : Prop :=
  ∀ n, P9166652706040190050.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P1534083547717990191

`A004273(A006579(n+1)+1)+n`
-/

namespace A344598.P1534083547717990191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A006579 (n + 1) + 1).toNat + (n : ℤ)

end

end A344598.P1534083547717990191

namespace A344598

/-- `A004273(A006579(n+1)+1)+n` -/
def P1534083547717990191.Spec : Prop :=
  ∀ n, P1534083547717990191.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P6348793501884108246

`A005408(A018804(n+1)-1)-n`
-/

namespace A344598.P6348793501884108246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A018804 (n + 1) - 1).toNat - (n : ℤ)

end

end A344598.P6348793501884108246

namespace A344598

/-- `A005408(A018804(n+1)-1)-n` -/
def P6348793501884108246.Spec : Prop :=
  ∀ n, P6348793501884108246.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P15372957385240433315

`A023443(A018804(n+1)-n)+A018804(n+1)`
-/

namespace A344598.P15372957385240433315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A018804 (n + 1) - (n : ℤ)).toNat + A018804 (n + 1)

end

end A344598.P15372957385240433315

namespace A344598

/-- `A023443(A018804(n+1)-n)+A018804(n+1)` -/
def P15372957385240433315.Spec : Prop :=
  ∀ n, P15372957385240433315.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P17228265331808049715

`A018804(n+1)-A024000(A018804(n+1)-n)`
-/

namespace A344598.P17228265331808049715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A024000 (A018804 (n + 1) - (n : ℤ)).toNat

end

end A344598.P17228265331808049715

namespace A344598

/-- `A018804(n+1)-A024000(A018804(n+1)-n)` -/
def P17228265331808049715.Spec : Prop :=
  ∀ n, P17228265331808049715.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P15844907374917594715

`A023443(2*A018804(n+1)-n)`
-/

namespace A344598.P15844907374917594715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A018804 (n + 1) - (n : ℤ)).toNat

end

end A344598.P15844907374917594715

namespace A344598

/-- `A023443(2*A018804(n+1)-n)` -/
def P15844907374917594715.Spec : Prop :=
  ∀ n, P15844907374917594715.a n = A344598 (n + 1)

end A344598

/-! ## A344598.P1179830638249732273

`A106466(2*n-A106475(2*n+1))`
-/

namespace A344598.P1179830638249732273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 ((2 * n : ℤ) - A106475 (2 * n + 1)).toNat

end

end A344598.P1179830638249732273

namespace A344598

/-- `A106466(2*n-A106475(2*n+1))` -/
def P1179830638249732273.Spec : Prop :=
  ∀ n, P1179830638249732273.a n = A344598 (n + 1)

end A344598

/-!
# A344599: a(n) = Sum_{k=1..n} phi(k) * (floor(n/k)^3 - floor((n-1)/k)^3).

The programs for A344599, the canonical program `A344599.P11967512805274101456` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344599 has offset 1).

The definition of A344599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344599.P11967512805274101456

`∑{d}[n+1, #*A344596((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A344599

/-- `∑{d}[n+1, #*A344596((n+1)/#)]` -/
def P11967512805274101456.Spec : Prop :=
  ∀ n, P11967512805274101456.a n = A344599 (n + 1)

theorem P11967512805274101456.correct : P11967512805274101456.Spec := by
  intro n
  simp only [A344599, Nat.add_sub_cancel]

end A344599

/-! ## A344599.P3976818508721727845

`∑{d}[n+1, A003215(#-1)*A000010((n+1)/#)]`
-/

namespace A344599.P3976818508721727845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003215 (d - 1) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344599.P3976818508721727845

namespace A344599

/-- `∑{d}[n+1, A003215(#-1)*A000010((n+1)/#)]` -/
def P3976818508721727845.Spec : Prop :=
  ∀ n, P3976818508721727845.a n = A344599 (n + 1)

end A344599

/-! ## A344599.P6865538651389290120

`A000007(n)+Δ[A344479(A034856(n+1))]`
-/

namespace A344599.P6865538651389290120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A344599.P6865538651389290120

namespace A344599

/-- `A000007(n)+Δ[A344479(A034856(n+1))]` -/
def P6865538651389290120.Spec : Prop :=
  ∀ n, P6865538651389290120.a n = A344599 (n + 1)

end A344599

/-! ## A344599.P13126404202061261629

`Δ[A344479(A034856(n+1))-A054977(n)]`
-/

namespace A344599.P13126404202061261629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344479 (A034856 (n + 1)).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344599.P13126404202061261629

namespace A344599

/-- `Δ[A344479(A034856(n+1))-A054977(n)]` -/
def P13126404202061261629.Spec : Prop :=
  ∀ n, P13126404202061261629.a n = A344599 (n + 1)

end A344599

/-! ## A344599.P11303156478862565236

`Δ[A344479(A034856(n+1))%A007204(n)]`
-/

namespace A344599.P11303156478862565236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344479 (A034856 (n + 1)).toNat) (A007204 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344599.P11303156478862565236

namespace A344599

/-- `Δ[A344479(A034856(n+1))%A007204(n)]` -/
def P11303156478862565236.Spec : Prop :=
  ∀ n, P11303156478862565236.a n = A344599 (n + 1)

end A344599

