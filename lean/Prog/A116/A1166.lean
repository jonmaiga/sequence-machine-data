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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A116600: a(n) = A011782(n) + A000219(n) - A000712(n).

The programs for A116600, there is no canonical definition to state claims against.
-/

/-! ## A116600.P1637988853385293284

`A011782(n)+A000219(n)-A000712(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116600.P1637988853385293284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A000219 n - A000712 n

end

end A116600.P1637988853385293284

/-! ## A116600.P6504438378994640100

`A000219(n)+A011782(n)-∑[A000990(n)]`
-/

namespace A116600.P6504438378994640100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n + (A011782 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116600.P6504438378994640100

/-! ## A116600.P16095420664583121133

`A000219(n)+∑[A034008(n)]-A000712(n)`
-/

namespace A116600.P16095420664583121133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n + (∑ j ∈ Finset.range (n + 1), f1 j - A000712 n)

end

end A116600.P16095420664583121133

/-! ## A116600.P10152978440081729666

`A000219(n)+A011782(n)-(A058696(n)-A304710(n))`
-/

namespace A116600.P10152978440081729666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n + (A011782 n - (A058696 n - A304710 n))

end

end A116600.P10152978440081729666

/-! ## A116600.P12041713010629187670

`A000219(n)+A011782(n)-(A000065(n)+A122768(n)+1)`
-/

namespace A116600.P12041713010629187670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n + (A011782 n - (A000065 n + (A122768 n + 1)))

end

end A116600.P12041713010629187670

/-! ## A116600.P14983753549515151657

`A242641(2*n²+1)+A011782(n)-A000712(n)`
-/

namespace A116600.P14983753549515151657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * n ^ 2 + 1) + (A011782 n - A000712 n)

end

end A116600.P14983753549515151657

/-!
# A116601: a(0) = a(1) = 0; for n >= 2, a(n) = floor(sqrt(2^(n-2)-1)).

The programs for A116601, the canonical program `A116601.P9623430297754249068` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116601 has offset 0).

The definition of A116601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116601.P9623430297754249068

`ceil(2^(n/2-1))-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116601

/-- `ceil(2^(n/2-1))-1` -/
def P9623430297754249068.Spec : Prop :=
  ∀ n, P9623430297754249068.a n = A116601 n

theorem P9623430297754249068.correct : P9623430297754249068.Spec := by
  intro n
  simp only [A116601]

end A116601

/-! ## A116601.P14114579373668376628

`floor((A017912(n)-1)/2)`
-/

namespace A116601.P14114579373668376628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017912 n - 1 : ℚ) / 2⌋

end

end A116601.P14114579373668376628

namespace A116601

/-- `floor((A017912(n)-1)/2)` -/
def P14114579373668376628.Spec : Prop :=
  ∀ n, P14114579373668376628.a n = A116601 n

end A116601

/-! ## A116601.P5348353036185801854

`floor(sqrt(A354463(n)))`
-/

namespace A116601.P5348353036185801854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A354463 n)

end

end A116601.P5348353036185801854

namespace A116601

/-- `floor(sqrt(A354463(n)))` -/
def P5348353036185801854.Spec : Prop :=
  ∀ n, P5348353036185801854.a n = A116601 n

end A116601

/-! ## A116601.P6501789868735747145

`floor(sqrt(A000225(n))/2)`
-/

namespace A116601.P6501789868735747145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000225 n : ℝ) / 2⌋

end

end A116601.P6501789868735747145

namespace A116601

/-- `floor(sqrt(A000225(n))/2)` -/
def P6501789868735747145.Spec : Prop :=
  ∀ n, P6501789868735747145.a n = A116601 n

end A116601

/-! ## A116601.P16755133781275161079

`floor(sqrt(∑[A131577(n)])/2)`
-/

namespace A116601.P16755133781275161079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / 2⌋

end

end A116601.P16755133781275161079

namespace A116601

/-- `floor(sqrt(∑[A131577(n)])/2)` -/
def P16755133781275161079.Spec : Prop :=
  ∀ n, P16755133781275161079.a n = A116601 n

end A116601

/-! ## A116601.P7205023944348518680

`floor(sqrt(A266550(n+1)/3))`
-/

namespace A116601.P7205023944348518680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A266550 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A116601.P7205023944348518680

namespace A116601

/-- `floor(sqrt(A266550(n+1)/3))` -/
def P7205023944348518680.Spec : Prop :=
  ∀ n, P7205023944348518680.a n = A116601 n

end A116601

/-! ## A116601.P13437110860908495760

`floor(record[sqrt(A324865(n+1))/2])`
-/

namespace A116601.P13437110860908495760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A324865 (n + 1) : ℝ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A116601.P13437110860908495760

namespace A116601

/-- `floor(record[sqrt(A324865(n+1))/2])` -/
def P13437110860908495760.Spec : Prop :=
  ∀ n, P13437110860908495760.a n = A116601 n

end A116601

/-! ## A116601.P17024759581705286376

`floor(2*sqrt((∑[A000079(n)]-1)/32))`
-/

namespace A116601.P17024759581705286376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 32 : ℝ)⌋

end

end A116601.P17024759581705286376

namespace A116601

/-- `floor(2*sqrt((∑[A000079(n)]-1)/32))` -/
def P17024759581705286376.Spec : Prop :=
  ∀ n, P17024759581705286376.a n = A116601 n

end A116601

/-! ## A116601.P9706694792563864893

`floor(sqrt((A000079(n+2)-4)/16))`
-/

namespace A116601.P9706694792563864893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000079 (n + 2) - 4 : ℚ) / 16 : ℝ)⌋

end

end A116601.P9706694792563864893

namespace A116601

/-- `floor(sqrt((A000079(n+2)-4)/16))` -/
def P9706694792563864893.Spec : Prop :=
  ∀ n, P9706694792563864893.a n = A116601 n

end A116601

/-! ## A116601.P5325408738763986975

`floor(sqrt(sqrt(A024036(n)))/2)`
-/

namespace A116601.P5325408738763986975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A024036 n : ℝ)) / 2⌋

end

end A116601.P5325408738763986975

namespace A116601

/-- `floor(sqrt(sqrt(A024036(n)))/2)` -/
def P5325408738763986975.Spec : Prop :=
  ∀ n, P5325408738763986975.a n = A116601 n

end A116601

/-! ## A116601.P12073932712155058329

`floor(A017959(n)/(A008776(n)+1))`
-/

namespace A116601.P12073932712155058329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017959 n : ℚ) / (A008776 n + 1 : ℚ)⌋

end

end A116601.P12073932712155058329

namespace A116601

/-- `floor(A017959(n)/(A008776(n)+1))` -/
def P12073932712155058329.Spec : Prop :=
  ∀ n, P12073932712155058329.a n = A116601 n

end A116601

/-!
# A116602: Values n such that prime(2*n) mod 12 == 5.

The programs for A116602, the canonical program `A116602.P13006145556663672467` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116602 has offset 1).

The definition of A116602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116602.P13006145556663672467

`eq[5, A039710(2*(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116602

/-- `eq[5, A039710(2*(n+1))]+1` -/
def P13006145556663672467.Spec : Prop :=
  ∀ n, (P13006145556663672467.a n : ℤ) = A116602 (n + 1)

theorem P13006145556663672467.correct : P13006145556663672467.Spec := by
  intro n
  simp only [A116602, Nat.add_sub_cancel]

end A116602

/-! ## A116602.P8325554521579631344

`eq[3, A180217(C(2, n)+2*n)]`
-/

namespace A116602.P8325554521579631344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (Nat.choose 2 n + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116602.P8325554521579631344

namespace A116602

/-- `eq[3, A180217(C(2, n)+2*n)]` -/
def P8325554521579631344.Spec : Prop :=
  ∀ n, (P8325554521579631344.a n : ℤ) = A116602 (n + 1)

end A116602

/-! ## A116602.P12564020741638594033

`eq[5, A039710(A004277(n))]`
-/

namespace A116602.P12564020741638594033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116602.P12564020741638594033

namespace A116602

/-- `eq[5, A039710(A004277(n))]` -/
def P12564020741638594033.Spec : Prop :=
  ∀ n, (P12564020741638594033.a n : ℤ) = A116602 (n + 1)

end A116602

/-! ## A116602.P18085052054063903779

`record[A032742(A160591(n+3))]`
-/

namespace A116602.P18085052054063903779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A160591 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116602.P18085052054063903779

namespace A116602

/-- `record[A032742(A160591(n+3))]` -/
def P18085052054063903779.Spec : Prop :=
  ∀ n, P18085052054063903779.a n = A116602 (n + 1)

end A116602

/-! ## A116602.P10768636504767408141

`eq[5, A039710(A004273(n)+1)]`
-/

namespace A116602.P10768636504767408141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116602.P10768636504767408141

namespace A116602

/-- `eq[5, A039710(A004273(n)+1)]` -/
def P10768636504767408141.Spec : Prop :=
  ∀ n, (P10768636504767408141.a n : ℤ) = A116602 (n + 1)

end A116602

/-! ## A116602.P13158186210045430681

`A020725(eq[5, A039710(2*(n+1))])`
-/

namespace A116602.P13158186210045430681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116602.P13158186210045430681

namespace A116602

/-- `A020725(eq[5, A039710(2*(n+1))])` -/
def P13158186210045430681.Spec : Prop :=
  ∀ n, P13158186210045430681.a n = A116602 (n + 1)

end A116602

/-! ## A116602.P588208207424471116

`eq[2, A070393(A008578(2*n+1))]`
-/

namespace A116602.P588208207424471116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070393 (A008578 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116602.P588208207424471116

namespace A116602

/-- `eq[2, A070393(A008578(2*n+1))]` -/
def P588208207424471116.Spec : Prop :=
  ∀ n, (P588208207424471116.a n : ℤ) = A116602 (n + 1)

end A116602

/-! ## A116602.P14399675475582541191

`eq[2, A258292(A046022(2*(n+1)))]`
-/

namespace A116602.P14399675475582541191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 (A046022 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116602.P14399675475582541191

namespace A116602

/-- `eq[2, A258292(A046022(2*(n+1)))]` -/
def P14399675475582541191.Spec : Prop :=
  ∀ n, (P14399675475582541191.a n : ℤ) = A116602 (n + 1)

end A116602

/-!
# A116603: Coefficients in asymptotic expansion of sequence A052129.

The programs for A116603, there is no canonical definition to state claims against.
-/

/-! ## A116603.P8003162673846368537

`A056538(A218776(n+1))-A000142(n)`
-/

namespace A116603.P8003162673846368537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A218776 (n + 1)).toNat - A000142 n

end

end A116603.P8003162673846368537

/-! ## A116603.P15024592252231404883

`A009191(A104872(2*(n+2)))-A009180(n)`
-/

namespace A116603.P15024592252231404883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A104872 (2 * (n + 2))).toNat - A009180 n

end

end A116603.P15024592252231404883

/-!
# A116604: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q.

The programs for A116604, the canonical program `A116604.P1630362851422197254` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116604 has offset 0).

The definition of A116604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116604.P9843586935043847782

`3^(n%2)*A129447(n)`
-/

namespace A116604.P9843586935043847782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A129447 n

end

end A116604.P9843586935043847782

namespace A116604

/-- `3^(n%2)*A129447(n)` -/
def P9843586935043847782.Spec : Prop :=
  ∀ n, P9843586935043847782.a n = A116604 n

theorem P9843586935043847782.correct : P9843586935043847782.Spec := by
  intro n
  simp only [A116604, Nat.add_sub_cancel, A116604.P9843586935043847782.a, A116604.P1630362851422197254.a, A010684, A010684.P11440423886746696901.a, A129447, A129447.P14635424549236213191.a, A033999, A033999.P17703899380244199787.a, A125079, A125079.P1710399594586959767.a, A035154, A035154.P17971849599840028777.a, A002654, A002654.P11574922253888480122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116604

/-! ## A116604.P1630362851422197254

`A010684(n)*A129447(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A116604

/-- `A010684(n)*A129447(n)` -/
def P1630362851422197254.Spec : Prop :=
  ∀ n, P1630362851422197254.a n = A116604 n

theorem P1630362851422197254.correct : P1630362851422197254.Spec := by
  intro n
  simp only [A116604]

end A116604

/-! ## A116604.P6756332317453625760

`A033999(n)*A138741(n)`
-/

namespace A116604.P6756332317453625760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138741 n

end

end A116604.P6756332317453625760

namespace A116604

/-- `A033999(n)*A138741(n)` -/
def P6756332317453625760.Spec : Prop :=
  ∀ n, P6756332317453625760.a n = A116604 n

end A116604

/-! ## A116604.P5292831349826722399

`A073575(n+1)*A129447(n)`
-/

namespace A116604.P5292831349826722399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A129447 n

end

end A116604.P5292831349826722399

namespace A116604

/-- `A073575(n+1)*A129447(n)` -/
def P5292831349826722399.Spec : Prop :=
  ∀ n, P5292831349826722399.a n = A116604 n

end A116604

/-! ## A116604.P6759180978825458915

`(2-A010684(n))*A138741(n)`
-/

namespace A116604.P6759180978825458915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A138741 n

end

end A116604.P6759180978825458915

namespace A116604

/-- `(2-A010684(n))*A138741(n)` -/
def P6759180978825458915.Spec : Prop :=
  ∀ n, P6759180978825458915.a n = A116604 n

end A116604

/-! ## A116604.P7606546652037760624

`(2-A033999(n))*A129447(n)`
-/

namespace A116604.P7606546652037760624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A129447 n

end

end A116604.P7606546652037760624

namespace A116604

/-- `(2-A033999(n))*A129447(n)` -/
def P7606546652037760624.Spec : Prop :=
  ∀ n, P7606546652037760624.a n = A116604 n

end A116604

/-! ## A116604.P74010528962631021

`2*A129447(n)-A125079(n)`
-/

namespace A116604.P74010528962631021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129447 n - A125079 n

end

end A116604.P74010528962631021

namespace A116604

/-- `2*A129447(n)-A125079(n)` -/
def P74010528962631021.Spec : Prop :=
  ∀ n, P74010528962631021.a n = A116604 n

end A116604

/-! ## A116604.P17611516242061999477

`(2-A073575(n+1))*A138741(n)`
-/

namespace A116604.P17611516242061999477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (n + 1)) * A138741 n

end

end A116604.P17611516242061999477

namespace A116604

/-- `(2-A073575(n+1))*A138741(n)` -/
def P17611516242061999477.Spec : Prop :=
  ∀ n, P17611516242061999477.a n = A116604 n

end A116604

/-! ## A116604.P481535118021060955

`A138950(Δ[n²])`
-/

namespace A116604.P481535118021060955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116604.P481535118021060955

namespace A116604

/-- `A138950(Δ[n²])` -/
def P481535118021060955.Spec : Prop :=
  ∀ n, P481535118021060955.a n = A116604 n

end A116604

/-! ## A116604.P1694182924480214919

`A138952(Δ[n²])`
-/

namespace A116604.P1694182924480214919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116604.P1694182924480214919

namespace A116604

/-- `A138952(Δ[n²])` -/
def P1694182924480214919.Spec : Prop :=
  ∀ n, P1694182924480214919.a n = A116604 n

end A116604

/-! ## A116604.P2931460916997425928

`A138951(Δ[n²])/2`
-/

namespace A116604.P2931460916997425928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A116604.P2931460916997425928

namespace A116604

/-- `A138951(Δ[n²])/2` -/
def P2931460916997425928.Spec : Prop :=
  ∀ n, P2931460916997425928.a n = (A116604 n : ℚ)

end A116604

/-! ## A116604.P5083700945099581131

`A138950(2*n+1)%(n+3)`
-/

namespace A116604.P5083700945099581131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138950 (2 * n + 1)) (n + 3 : ℤ)

end

end A116604.P5083700945099581131

namespace A116604

/-- `A138950(2*n+1)%(n+3)` -/
def P5083700945099581131.Spec : Prop :=
  ∀ n, P5083700945099581131.a n = A116604 n

end A116604

/-! ## A116604.P1310297625787386017

`A138952(2*n+1)%(n+3)`
-/

namespace A116604.P1310297625787386017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138952 (2 * n + 1)) (n + 3 : ℤ)

end

end A116604.P1310297625787386017

namespace A116604

/-- `A138952(2*n+1)%(n+3)` -/
def P1310297625787386017.Spec : Prop :=
  ∀ n, P1310297625787386017.a n = A116604 n

end A116604

/-! ## A116604.P3724595915665214863

`A033999(n)*A125061(2*n+1)`
-/

namespace A116604.P3724595915665214863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125061 (2 * n + 1)

end

end A116604.P3724595915665214863

namespace A116604

/-- `A033999(n)*A125061(2*n+1)` -/
def P3724595915665214863.Spec : Prop :=
  ∀ n, P3724595915665214863.a n = A116604 n

end A116604

/-! ## A116604.P7899780793730578844

`A033999(n)*A138746(2*n+1)`
-/

namespace A116604.P7899780793730578844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138746 (2 * n + 1)

end

end A116604.P7899780793730578844

namespace A116604

/-- `A033999(n)*A138746(2*n+1)` -/
def P7899780793730578844.Spec : Prop :=
  ∀ n, P7899780793730578844.a n = A116604 n

end A116604

/-! ## A116604.P1692272622410504316

`A033999(n)*A163746(2*n+1)`
-/

namespace A116604.P1692272622410504316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A163746 (2 * n + 1)

end

end A116604.P1692272622410504316

namespace A116604

/-- `A033999(n)*A163746(2*n+1)` -/
def P1692272622410504316.Spec : Prop :=
  ∀ n, P1692272622410504316.a n = A116604 n

end A116604

/-! ## A116604.P16775960674416129150

`A033999(n)²*A138950(2*n+1)`
-/

namespace A116604.P16775960674416129150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A138950 (2 * n + 1)

end

end A116604.P16775960674416129150

namespace A116604

/-- `A033999(n)²*A138950(2*n+1)` -/
def P16775960674416129150.Spec : Prop :=
  ∀ n, P16775960674416129150.a n = A116604 n

end A116604

/-! ## A116604.P15502446914949229234

`A143431(n)²*A138950(2*n+1)`
-/

namespace A116604.P15502446914949229234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n ^ 2 * A138950 (2 * n + 1)

end

end A116604.P15502446914949229234

namespace A116604

/-- `A143431(n)²*A138950(2*n+1)` -/
def P15502446914949229234.Spec : Prop :=
  ∀ n, P15502446914949229234.a n = A116604 n

end A116604

/-! ## A116604.P6466210279827971602

`A033999(n+1)*A138745(2*n+1)`
-/

namespace A116604.P6466210279827971602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A138745 (2 * n + 1)

end

end A116604.P6466210279827971602

namespace A116604

/-- `A033999(n+1)*A138745(2*n+1)` -/
def P6466210279827971602.Spec : Prop :=
  ∀ n, P6466210279827971602.a n = A116604 n

end A116604

/-! ## A116604.P9745604702484302858

`A062157(n+1)*A125061(2*n+1)`
-/

namespace A116604.P9745604702484302858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A125061 (2 * n + 1)

end

end A116604.P9745604702484302858

namespace A116604

/-- `A062157(n+1)*A125061(2*n+1)` -/
def P9745604702484302858.Spec : Prop :=
  ∀ n, P9745604702484302858.a n = A116604 n

end A116604

/-!
# A116605: Smallest prime p such that p == 1 (mod prime(n)) and not p == 1 (mod k) for 2 < k < prime(n).

The programs for A116605, there is no canonical definition to state claims against.
-/

/-! ## A116605.P17657882159687310096

`A000040(A185677(n+1)%A127269(n+1))`
-/

namespace A116605.P17657882159687310096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A185677 (n + 1)) (A127269 (n + 1))).toNat

end

end A116605.P17657882159687310096

/-!
# A116606: A116605 sorted.

The programs for A116606, there is no canonical definition to state claims against.
-/

/-! ## A116606.P18136218393355182516

`A109395(A111332(n)+A092307(n+1))`
-/

namespace A116606.P18136218393355182516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A111332 n + A092307 (n + 1)).toNat

end

end A116606.P18136218393355182516

/-! ## A116606.P1811130823405271071

`A125746(A111332(n)+A092307(n+1))`
-/

namespace A116606.P1811130823405271071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A111332 n + A092307 (n + 1)).toNat

end

end A116606.P1811130823405271071

/-! ## A116606.P11218326623965890083

`A092307(n+1)-A000038(A006128(n))`
-/

namespace A116606.P11218326623965890083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1) - A000038 (A006128 n).toNat

end

end A116606.P11218326623965890083

/-! ## A116606.P5928025528750511400

`A092307(n+1)-A000122(A010009(n))`
-/

namespace A116606.P5928025528750511400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1) - A000122 (A010009 n).toNat

end

end A116606.P5928025528750511400

/-! ## A116606.P14605129117082397347

`A109395(A119660(n+3)+A111332(n))`
-/

namespace A116606.P14605129117082397347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A119660 (n + 3) + A111332 n).toNat

end

end A116606.P14605129117082397347

/-!
# A116607: Sum of the divisors of n which are not divisible by 9.

The programs for A116607, the canonical program `A116607.P13757310521233190436` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116607 has offset 1).

The definition of A116607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116607.P13757310521233190436

`∑{d}[n+1, #%lcm(9, #)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116607

/-- `∑{d}[n+1, #%lcm(9, #)]` -/
def P13757310521233190436.Spec : Prop :=
  ∀ n, (P13757310521233190436.a n : ℤ) = A116607 (n + 1)

theorem P13757310521233190436.correct : P13757310521233190436.Spec := by
  intro n
  simp only [A116607, Nat.add_sub_cancel]

end A116607

/-! ## A116607.P5453756647113752763

`A096726(n+1)/3`
-/

namespace A116607.P5453756647113752763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096726 (n + 1) : ℚ) / 3

end

end A116607.P5453756647113752763

namespace A116607

/-- `A096726(n+1)/3` -/
def P5453756647113752763.Spec : Prop :=
  ∀ n, P5453756647113752763.a n = (A116607 (n + 1) : ℚ)

end A116607

/-! ## A116607.P17556986807266584453

`∑{d}[n+1, #*A016394(val(#, 3))]`
-/

namespace A116607.P17556986807266584453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A016394 (SequenceMachineLib.valuation d 3)

end

end A116607.P17556986807266584453

namespace A116607

/-- `∑{d}[n+1, #*A016394(val(#, 3))]` -/
def P17556986807266584453.Spec : Prop :=
  ∀ n, P17556986807266584453.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P5881326405957950282

`A000203(lcm((n+1)/3^val(n+1, 3), ∏{p}[n+1, #]))`
-/

namespace A116607.P5881326405957950282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A116607.P5881326405957950282

namespace A116607

/-- `A000203(lcm((n+1)/3^val(n+1, 3), ∏{p}[n+1, #]))` -/
def P5881326405957950282.Spec : Prop :=
  ∀ n, P5881326405957950282.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P13417651502722254373

`A283123(n+1)%A272027(n+1)`
-/

namespace A116607.P13417651502722254373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283123 (n + 1)) (A272027 (n + 1))

end

end A116607.P13417651502722254373

namespace A116607

/-- `A283123(n+1)%A272027(n+1)` -/
def P13417651502722254373.Spec : Prop :=
  ∀ n, P13417651502722254373.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P4388947042789398910

`A061347(n+1)²*A046913(n+1)`
-/

namespace A116607.P4388947042789398910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) ^ 2 * A046913 (n + 1)

end

end A116607.P4388947042789398910

namespace A116607

/-- `A061347(n+1)²*A046913(n+1)` -/
def P4388947042789398910.Spec : Prop :=
  ∀ n, P4388947042789398910.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P9582720565296185503

`Δ[∑[A096726(n)]/3]`
-/

namespace A116607.P9582720565296185503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116607.P9582720565296185503

namespace A116607

/-- `Δ[∑[A096726(n)]/3]` -/
def P9582720565296185503.Spec : Prop :=
  ∀ n, P9582720565296185503.a n = (A116607 (n + 1) : ℚ)

end A116607

/-! ## A116607.P10550024226122544818

`∑{d}[n+1, #*A168182(#)]`
-/

namespace A116607.P10550024226122544818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A168182 d

end

end A116607.P10550024226122544818

namespace A116607

/-- `∑{d}[n+1, #*A168182(#)]` -/
def P10550024226122544818.Spec : Prop :=
  ∀ n, P10550024226122544818.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P778011097087759365

`A046913(n+1)*A100051(n+1)*A100051(n+1)`
-/

namespace A116607.P778011097087759365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) * A100051 (n + 1) * A100051 (n + 1)

end

end A116607.P778011097087759365

namespace A116607

/-- `A046913(n+1)*A100051(n+1)*A100051(n+1)` -/
def P778011097087759365.Spec : Prop :=
  ∀ n, P778011097087759365.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P3393843297553113942

`A002264(A096726(n+1))`
-/

namespace A116607.P3393843297553113942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A096726 (n + 1)).toNat

end

end A116607.P3393843297553113942

namespace A116607

/-- `A002264(A096726(n+1))` -/
def P3393843297553113942.Spec : Prop :=
  ∀ n, P3393843297553113942.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P66731017992446178

`A008620(A096726(n+1)-1)`
-/

namespace A116607.P66731017992446178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A096726 (n + 1) - 1).toNat

end

end A116607.P66731017992446178

namespace A116607

/-- `A008620(A096726(n+1)-1)` -/
def P66731017992446178.Spec : Prop :=
  ∀ n, P66731017992446178.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P5085427309556428170

`A008620(A131556(2*n+1)+A096726(n+1))`
-/

namespace A116607.P5085427309556428170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131556 (2 * n + 1) + A096726 (n + 1)).toNat

end

end A116607.P5085427309556428170

namespace A116607

/-- `A008620(A131556(2*n+1)+A096726(n+1))` -/
def P5085427309556428170.Spec : Prop :=
  ∀ n, P5085427309556428170.a n = A116607 (n + 1)

end A116607

/-! ## A116607.P6212098424491652496

`∑{d}[n+1, A123477(#)*A227501((n+1)/#)]`
-/

namespace A116607.P6212098424491652496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123477 d * A227501 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116607.P6212098424491652496

namespace A116607

/-- `∑{d}[n+1, A123477(#)*A227501((n+1)/#)]` -/
def P6212098424491652496.Spec : Prop :=
  ∀ n, P6212098424491652496.a n = A116607 (n + 1)

end A116607

/-!
# A116608: Triangle read by rows: T(n,k) is number of partitions of n having k distinct parts (n>=1, k>=1).

The programs for A116608, there is no canonical definition to state claims against.
-/

/-! ## A116608.P18126198034394635655

`A235790(n+1)/A235999(n+1)*A235998(n+1)`
-/

namespace A116608.P18126198034394635655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235790 (n + 1) : ℚ) / (A235999 (n + 1) : ℚ) * (A235998 (n + 1) : ℚ)

end

end A116608.P18126198034394635655

/-! ## A116608.P7973259210600410408

`A235790(n+1)*A235998(n+1)/A235999(n+1)`
-/

namespace A116608.P7973259210600410408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235790 (n + 1) * A235998 (n + 1) : ℚ) / (A235999 (n + 1) : ℚ)

end

end A116608.P7973259210600410408

/-!
# A116609: a(n) = 13^n mod n.

The programs for A116609, the canonical program `A116609.P10170608238093516736` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116609 has offset 1).

The definition of A116609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(13^(n+1))%(n+1)` (program `A116609.P10170608238093516736`, by `A116609.P10170608238093516736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116609.P10170608238093516736

`(13^(n+1))%(n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116609

/-- `(13^(n+1))%(n+1)` -/
def P10170608238093516736.Spec : Prop :=
  ∀ n, (P10170608238093516736.a n : ℤ) = A116609 (n + 1)

theorem P10170608238093516736.correct : P10170608238093516736.Spec := by
  intro n
  simp only [A116609, Nat.add_sub_cancel]

end A116609

/-! ## A116609.P671141285482598938

`A094263(eq[13, A193592(n)])`
-/

namespace A116609.P671141285482598938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116609.P671141285482598938

namespace A116609

/-- `A094263(eq[13, A193592(n)])` -/
def P671141285482598938.Spec : Prop :=
  ∀ n, P671141285482598938.a n = A116609 (n + 1)

end A116609

/-! ## A116609.P12763476498841921552

`A094263(A016993(n+9)+A000217(n+7))`
-/

namespace A116609.P12763476498841921552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (A016993 (n + 9) + A000217 (n + 7)).toNat

end

end A116609.P12763476498841921552

namespace A116609

/-- `A094263(A016993(n+9)+A000217(n+7))` -/
def P12763476498841921552.Spec : Prop :=
  ∀ n, P12763476498841921552.a n = A116609 (n + 1)

end A116609

/-! ## A116609.P6009357330726495495

`A094263(A255844(n+7)+2*(n+1))`
-/

namespace A116609.P6009357330726495495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (A255844 (n + 7) + (2 * (n + 1) : ℤ)).toNat

end

end A116609.P6009357330726495495

namespace A116609

/-- `A094263(A255844(n+7)+2*(n+1))` -/
def P6009357330726495495.Spec : Prop :=
  ∀ n, P6009357330726495495.a n = A116609 (n + 1)

end A116609

/-!
# A116610: Values of n such that prime(2*n) mod 12 = 11.

The programs for A116610, the canonical program `A116610.P10738996274935709144` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116610 has offset 1).

The definition of A116610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116610.P7773262723746125424

`lt[4, A180217(gcd(n, C(2, n))+n)]`
-/

namespace A116610.P7773262723746125424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116610.P7773262723746125424

namespace A116610

/-- `lt[4, A180217(gcd(n, C(2, n))+n)]` -/
def P7773262723746125424.Spec : Prop :=
  ∀ n, (P7773262723746125424.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P4803884748660190421

`eq[5, A180217(C(4, 3*n)+2*n)]`
-/

namespace A116610.P4803884748660190421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (Nat.choose 4 (3 * n) + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116610.P4803884748660190421

namespace A116610

/-- `eq[5, A180217(C(4, 3*n)+2*n)]` -/
def P4803884748660190421.Spec : Prop :=
  ∀ n, (P4803884748660190421.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P10738996274935709144

`eq[11, A039710(A004277(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116610

/-- `eq[11, A039710(A004277(n))]` -/
def P10738996274935709144.Spec : Prop :=
  ∀ n, (P10738996274935709144.a n : ℤ) = A116610 (n + 1)

theorem P10738996274935709144.correct : P10738996274935709144.Spec := by
  intro n
  simp only [A116610, Nat.add_sub_cancel]

end A116610

/-! ## A116610.P8110487758441700009

`record[A032742(A160593(n+5))]`
-/

namespace A116610.P8110487758441700009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A160593 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116610.P8110487758441700009

namespace A116610

/-- `record[A032742(A160593(n+5))]` -/
def P8110487758441700009.Spec : Prop :=
  ∀ n, P8110487758441700009.a n = A116610 (n + 1)

end A116610

/-! ## A116610.P12818836938239927481

`eq[11, A039710(A004273(n)+1)]`
-/

namespace A116610.P12818836938239927481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116610.P12818836938239927481

namespace A116610

/-- `eq[11, A039710(A004273(n)+1)]` -/
def P12818836938239927481.Spec : Prop :=
  ∀ n, (P12818836938239927481.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P3518595543282639822

`eq[22, A005843(A039710(A005843(n+1)))]+1`
-/

namespace A116610.P3518595543282639822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A039710 (A005843 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116610.P3518595543282639822

namespace A116610

/-- `eq[22, A005843(A039710(A005843(n+1)))]+1` -/
def P3518595543282639822.Spec : Prop :=
  ∀ n, (P3518595543282639822.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P9977357451982817307

`lt[1, A007814(ceil(A000040(2*(n+1))/3))]+1`
-/

namespace A116610.P9977357451982817307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ⌈(A000040 (2 * (n + 1)) : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A116610.P9977357451982817307

namespace A116610

/-- `lt[1, A007814(ceil(A000040(2*(n+1))/3))]+1` -/
def P9977357451982817307.Spec : Prop :=
  ∀ n, (P9977357451982817307.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P1164577159315314622

`eq[4, A002186(A028815(2*n))]`
-/

namespace A116610.P1164577159315314622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (A028815 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116610.P1164577159315314622

namespace A116610

/-- `eq[4, A002186(A028815(2*n))]` -/
def P1164577159315314622.Spec : Prop :=
  ∀ n, (P1164577159315314622.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P11279012705376638299

`eq[4, dr(A319985(A008578(2*n+1)))]`
-/

namespace A116610.P11279012705376638299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319985 (A008578 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116610.P11279012705376638299

namespace A116610

/-- `eq[4, dr(A319985(A008578(2*n+1)))]` -/
def P11279012705376638299.Spec : Prop :=
  ∀ n, (P11279012705376638299.a n : ℤ) = A116610 (n + 1)

end A116610

/-! ## A116610.P9031339343339978795

`eq[A319985(A008578(2*n+1))%3, A057427(n)]`
-/

namespace A116610.P9031339343339978795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319985 (A008578 (2 * n + 1)).toNat) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116610.P9031339343339978795

namespace A116610

/-- `eq[A319985(A008578(2*n+1))%3, A057427(n)]` -/
def P9031339343339978795.Spec : Prop :=
  ∀ n, (P9031339343339978795.a n : ℤ) = A116610 (n + 1)

end A116610

/-!
# A116611: Positive integers n such that 13^n == 5 (mod n).

The programs for A116611, there is no canonical definition to state claims against.
-/

/-! ## A116611.P7910847930414259119

`record[gcd(A086020(3*n+4), A238287(n+5))]`
-/

namespace A116611.P7910847930414259119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086020 (3 * n + 4)) (A238287 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116611.P7910847930414259119

/-! ## A116611.P13265270697820299051

`and(A145605(A145620(n+1)), A145643(2*(n+2)))`
-/

namespace A116611.P13265270697820299051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145605 (A145620 (n + 1)).toNat) (A145643 (2 * (n + 2)))

end

end A116611.P13265270697820299051

/-!
# A116612: Values of n such that p(2n+1) mod 12 = 1, where p(j) denotes the j-th prime.

The programs for A116612, the canonical program `A116612.P6911931795379388631` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116612 has offset 1).

The definition of A116612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116612.P6911931795379388631

`eq[1, A039710(2*n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116612

/-- `eq[1, A039710(2*n+1)]` -/
def P6911931795379388631.Spec : Prop :=
  ∀ n, (P6911931795379388631.a n : ℤ) = A116612 (n + 1)

theorem P6911931795379388631.correct : P6911931795379388631.Spec := by
  intro n
  simp only [A116612, Nat.add_sub_cancel]

end A116612

/-! ## A116612.P4314027374857246828

`eq[1, A068227(2*n+1)]`
-/

namespace A116612.P4314027374857246828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068227 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P4314027374857246828

namespace A116612

/-- `eq[1, A068227(2*n+1)]` -/
def P4314027374857246828.Spec : Prop :=
  ∀ n, (P4314027374857246828.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P15789209398447175515

`eq[2, A180217(2*n+1)]`
-/

namespace A116612.P15789209398447175515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P15789209398447175515

namespace A116612

/-- `eq[2, A180217(2*n+1)]` -/
def P15789209398447175515.Spec : Prop :=
  ∀ n, (P15789209398447175515.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P7550025886785482957

`eq[1, A039710(n+1+n)²]`
-/

namespace A116612.P7550025886785482957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P7550025886785482957

namespace A116612

/-- `eq[1, A039710(n+1+n)²]` -/
def P7550025886785482957.Spec : Prop :=
  ∀ n, (P7550025886785482957.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P1971095579215726859

`eq[1, A000040(2*n+1)%12]`
-/

namespace A116612.P1971095579215726859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P1971095579215726859

namespace A116612

/-- `eq[1, A000040(2*n+1)%12]` -/
def P1971095579215726859.Spec : Prop :=
  ∀ n, (P1971095579215726859.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P14869113371647031462

`eq[A000034(n), A039710(n+1)]/2`
-/

namespace A116612.P14869113371647031462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A116612.P14869113371647031462

namespace A116612

/-- `eq[A000034(n), A039710(n+1)]/2` -/
def P14869113371647031462.Spec : Prop :=
  ∀ n, P14869113371647031462.a n = (A116612 (n + 1) : ℚ)

end A116612

/-! ## A116612.P3746705324138751618

`lt[A180217(2*n+1), A060680(2*(n+1))+2]`
-/

namespace A116612.P3746705324138751618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * (n + 1)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116612.P3746705324138751618

namespace A116612

/-- `lt[A180217(2*n+1), A060680(2*(n+1))+2]` -/
def P3746705324138751618.Spec : Prop :=
  ∀ n, (P3746705324138751618.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P12593747974405003822

`A004525(eq[A000034(n), A039710(n+1)])`
-/

namespace A116612.P12593747974405003822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A116612.P12593747974405003822

namespace A116612

/-- `A004525(eq[A000034(n), A039710(n+1)])` -/
def P12593747974405003822.Spec : Prop :=
  ∀ n, P12593747974405003822.a n = A116612 (n + 1)

end A116612

/-! ## A116612.P11667851943560074726

`eq[A039710(A039710(n+1)), A040001(n)]/2`
-/

namespace A116612.P11667851943560074726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A039710 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A116612.P11667851943560074726

namespace A116612

/-- `eq[A039710(A039710(n+1)), A040001(n)]/2` -/
def P11667851943560074726.Spec : Prop :=
  ∀ n, P11667851943560074726.a n = (A116612 (n + 1) : ℚ)

end A116612

/-! ## A116612.P3997770847369254665

`eq[2, A002186(A028815(2*n+1))]`
-/

namespace A116612.P3997770847369254665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (A028815 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P3997770847369254665

namespace A116612

/-- `eq[2, A002186(A028815(2*n+1))]` -/
def P3997770847369254665.Spec : Prop :=
  ∀ n, (P3997770847369254665.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P11277859418761780564

`eq[2, A111912(A000040(2*n+1))]`
-/

namespace A116612.P11277859418761780564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111912 (A000040 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P11277859418761780564

namespace A116612

/-- `eq[2, A111912(A000040(2*n+1))]` -/
def P11277859418761780564.Spec : Prop :=
  ∀ n, (P11277859418761780564.a n : ℤ) = A116612 (n + 1)

end A116612

/-! ## A116612.P11065521700288654526

`eq[2, A319985(A008578(2*(n+1)))]`
-/

namespace A116612.P11065521700288654526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319985 (A008578 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116612.P11065521700288654526

namespace A116612

/-- `eq[2, A319985(A008578(2*(n+1)))]` -/
def P11065521700288654526.Spec : Prop :=
  ∀ n, (P11065521700288654526.a n : ℤ) = A116612 (n + 1)

end A116612

/-!
# A116613: Values of n such that prime(2n+1) mod 12 = 5.

The programs for A116613, the canonical program `A116613.P9128618355075332114` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116613 has offset 1).

The definition of A116613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116613.P7014125530678086122

`eq[3, A068227(2*n+1)]`
-/

namespace A116613.P7014125530678086122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068227 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P7014125530678086122

namespace A116613

/-- `eq[3, A068227(2*n+1)]` -/
def P7014125530678086122.Spec : Prop :=
  ∀ n, (P7014125530678086122.a n : ℤ) = A116613 (n + 1)

end A116613

/-! ## A116613.P5709862703800113587

`eq[3, A180217(2*n+1)]`
-/

namespace A116613.P5709862703800113587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P5709862703800113587

namespace A116613

/-- `eq[3, A180217(2*n+1)]` -/
def P5709862703800113587.Spec : Prop :=
  ∀ n, (P5709862703800113587.a n : ℤ) = A116613 (n + 1)

end A116613

/-! ## A116613.P9128618355075332114

`eq[5, A039710(2*n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116613

/-- `eq[5, A039710(2*n+1)]` -/
def P9128618355075332114.Spec : Prop :=
  ∀ n, (P9128618355075332114.a n : ℤ) = A116613 (n + 1)

theorem P9128618355075332114.correct : P9128618355075332114.Spec := by
  intro n
  simp only [A116613, Nat.add_sub_cancel]

end A116613

/-! ## A116613.P14224403935170958579

`eq[5, A000040(2*n+1)%12]`
-/

namespace A116613.P14224403935170958579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P14224403935170958579

namespace A116613

/-- `eq[5, A000040(2*n+1)%12]` -/
def P14224403935170958579.Spec : Prop :=
  ∀ n, (P14224403935170958579.a n : ℤ) = A116613 (n + 1)

end A116613

/-! ## A116613.P5981787112724861068

`eq[2, root(32, A039710(n+n+1))]`
-/

namespace A116613.P5981787112724861068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (32 : ℝ) ^ (1 / (A039710 (n + n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A116613.P5981787112724861068

namespace A116613

/-- `eq[2, root(32, A039710(n+n+1))]` -/
def P5981787112724861068.Spec : Prop :=
  ∀ n, (P5981787112724861068.a n : ℤ) = A116613 (n + 1)

end A116613

/-! ## A116613.P166843188755128145

`record[A032742(A160591(n+1)-1)]`
-/

namespace A116613.P166843188755128145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A160591 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116613.P166843188755128145

namespace A116613

/-- `record[A032742(A160591(n+1)-1)]` -/
def P166843188755128145.Spec : Prop :=
  ∀ n, P166843188755128145.a n = A116613 (n + 1)

end A116613

/-! ## A116613.P4477863575518209957

`eq[5, A000045(A039710(n+1+n))]`
-/

namespace A116613.P4477863575518209957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A039710 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P4477863575518209957

namespace A116613

/-- `eq[5, A000045(A039710(n+1+n))]` -/
def P4477863575518209957.Spec : Prop :=
  ∀ n, (P4477863575518209957.a n : ℤ) = A116613 (n + 1)

end A116613

/-! ## A116613.P15156085095772384274

`lt[A272203(2*n+1)², A070750(2*n+1)]`
-/

namespace A116613.P15156085095772384274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116613.P15156085095772384274

namespace A116613

/-- `lt[A272203(2*n+1)², A070750(2*n+1)]` -/
def P15156085095772384274.Spec : Prop :=
  ∀ n, (P15156085095772384274.a n : ℤ) = A116613 (n + 1)

end A116613

/-! ## A116613.P5071404505571459769

`eq[2, A070393(A008578(2*(n+1)))]`
-/

namespace A116613.P5071404505571459769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070393 (A008578 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116613.P5071404505571459769

namespace A116613

/-- `eq[2, A070393(A008578(2*(n+1)))]` -/
def P5071404505571459769.Spec : Prop :=
  ∀ n, (P5071404505571459769.a n : ℤ) = A116613 (n + 1)

end A116613

/-!
# A116614: Values of n such that prime(2n) mod 12 = 1.

The programs for A116614, the canonical program `A116614.P7124806835608261155` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116614 has offset 1).

The definition of A116614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116614.P7124806835608261155

`eq[1, A031215(n+1)%12]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116614

/-- `eq[1, A031215(n+1)%12]+1` -/
def P7124806835608261155.Spec : Prop :=
  ∀ n, (P7124806835608261155.a n : ℤ) = A116614 (n + 1)

theorem P7124806835608261155.correct : P7124806835608261155.Spec := by
  intro n
  simp only [A116614, Nat.add_sub_cancel]

end A116614

/-! ## A116614.P6676166651552463807

`eq[1, A039710(2*(n+1))]+1`
-/

namespace A116614.P6676166651552463807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116614.P6676166651552463807

namespace A116614

/-- `eq[1, A039710(2*(n+1))]+1` -/
def P6676166651552463807.Spec : Prop :=
  ∀ n, (P6676166651552463807.a n : ℤ) = A116614 (n + 1)

end A116614

/-! ## A116614.P6819870031935351056

`eq[2, A180217(2*(n+1))]+1`
-/

namespace A116614.P6819870031935351056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116614.P6819870031935351056

namespace A116614

/-- `eq[2, A180217(2*(n+1))]+1` -/
def P6819870031935351056.Spec : Prop :=
  ∀ n, (P6819870031935351056.a n : ℤ) = A116614 (n + 1)

end A116614

/-! ## A116614.P11475560704385790867

`eq[1, A039710(A004277(n))]`
-/

namespace A116614.P11475560704385790867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116614.P11475560704385790867

namespace A116614

/-- `eq[1, A039710(A004277(n))]` -/
def P11475560704385790867.Spec : Prop :=
  ∀ n, (P11475560704385790867.a n : ℤ) = A116614 (n + 1)

end A116614

/-! ## A116614.P10950610893131501763

`record[A025480(A160594(n+1))]`
-/

namespace A116614.P10950610893131501763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A160594 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116614.P10950610893131501763

namespace A116614

/-- `record[A025480(A160594(n+1))]` -/
def P10950610893131501763.Spec : Prop :=
  ∀ n, P10950610893131501763.a n = A116614 (n + 1)

end A116614

/-! ## A116614.P7123304691906147355

`eq[1, A039710(A004273(n)+1)]`
-/

namespace A116614.P7123304691906147355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116614.P7123304691906147355

namespace A116614

/-- `eq[1, A039710(A004273(n)+1)]` -/
def P7123304691906147355.Spec : Prop :=
  ∀ n, (P7123304691906147355.a n : ℤ) = A116614 (n + 1)

end A116614

/-! ## A116614.P15778981300457958933

`A020725(eq[1, A039710(2*(n+1))])`
-/

namespace A116614.P15778981300457958933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116614.P15778981300457958933

namespace A116614

/-- `A020725(eq[1, A039710(2*(n+1))])` -/
def P15778981300457958933.Spec : Prop :=
  ∀ n, P15778981300457958933.a n = A116614 (n + 1)

end A116614

/-! ## A116614.P888406425696957857

`A000463(eq[and(1, n), A039710(n+1)])`
-/

namespace A116614.P888406425696957857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116614.P888406425696957857

namespace A116614

/-- `A000463(eq[and(1, n), A039710(n+1)])` -/
def P888406425696957857.Spec : Prop :=
  ∀ n, P888406425696957857.a n = A116614 (n + 1)

end A116614

/-! ## A116614.P11712969905553432965

`eq[2, A319985(A008578(2*n+1))]`
-/

namespace A116614.P11712969905553432965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319985 (A008578 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116614.P11712969905553432965

namespace A116614

/-- `eq[2, A319985(A008578(2*n+1))]` -/
def P11712969905553432965.Spec : Prop :=
  ∀ n, (P11712969905553432965.a n : ℤ) = A116614 (n + 1)

end A116614

/-!
# A116615: Values of n such that prime(2n) mod 12 = 7.

The programs for A116615, the canonical program `A116615.P7412205470108197455` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116615 has offset 1).

The definition of A116615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4893 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116615.P7412205470108197455

`record[A160592(n+1)/A020639(A160592(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116615

/-- `record[A160592(n+1)/A020639(A160592(n+1))]` -/
def P7412205470108197455.Spec : Prop :=
  ∀ n, P7412205470108197455.a n = (A116615 (n + 1) : ℚ)

end A116615

/-! ## A116615.P6521779017981541760

`eq[7, A039710(2*(n+1))]+1`
-/

namespace A116615.P6521779017981541760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116615.P6521779017981541760

namespace A116615

/-- `eq[7, A039710(2*(n+1))]+1` -/
def P6521779017981541760.Spec : Prop :=
  ∀ n, (P6521779017981541760.a n : ℤ) = A116615 (n + 1)

end A116615

/-! ## A116615.P5993840732157321557

`eq[4, A180217(C(6, 3*n+1)+2*n)]`
-/

namespace A116615.P5993840732157321557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (Nat.choose 6 (3 * n + 1) + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116615.P5993840732157321557

namespace A116615

/-- `eq[4, A180217(C(6, 3*n+1)+2*n)]` -/
def P5993840732157321557.Spec : Prop :=
  ∀ n, (P5993840732157321557.a n : ℤ) = A116615 (n + 1)

end A116615

/-! ## A116615.P5954811120753259418

`eq[7, A039710(A004277(n))]`
-/

namespace A116615.P5954811120753259418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116615.P5954811120753259418

namespace A116615

/-- `eq[7, A039710(A004277(n))]` -/
def P5954811120753259418.Spec : Prop :=
  ∀ n, (P5954811120753259418.a n : ℤ) = A116615 (n + 1)

end A116615

/-! ## A116615.P7680365691378927214

`record[A025480(A061395(A142241(n)))]`
-/

namespace A116615.P7680365691378927214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A061395 (A142241 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116615.P7680365691378927214

namespace A116615

/-- `record[A025480(A061395(A142241(n)))]` -/
def P7680365691378927214.Spec : Prop :=
  ∀ n, P7680365691378927214.a n = A116615 (n + 1)

end A116615

/-! ## A116615.P1746116439816674318

`record[A032742(A055396(12*n+7))]`
-/

namespace A116615.P1746116439816674318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A055396 (12 * n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116615.P1746116439816674318

namespace A116615

/-- `record[A032742(A055396(12*n+7))]` -/
def P1746116439816674318.Spec : Prop :=
  ∀ n, P1746116439816674318.a n = A116615 (n + 1)

end A116615

/-! ## A116615.P7456265833824970448

`eq[8, dr(A319985(A008578(2*n+1)))]`
-/

namespace A116615.P7456265833824970448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319985 (A008578 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116615.P7456265833824970448

namespace A116615

/-- `eq[8, dr(A319985(A008578(2*n+1)))]` -/
def P7456265833824970448.Spec : Prop :=
  ∀ n, (P7456265833824970448.a n : ℤ) = A116615 (n + 1)

end A116615

/-! ## A116615.P16296933637552316649

`record[A142150(A055396(or(3, 12*n+4)))]`
-/

namespace A116615.P16296933637552316649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A055396 (Nat.lor 3 (12 * n + 4))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116615.P16296933637552316649

namespace A116615

/-- `record[A142150(A055396(or(3, 12*n+4)))]` -/
def P16296933637552316649.Spec : Prop :=
  ∀ n, P16296933637552316649.a n = A116615 (n + 1)

end A116615

/-! ## A116615.P16641886342673309650

`record[A101279(A286477(A068229(n+1)))]`
-/

namespace A116615.P16641886342673309650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A286477 (A068229 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116615.P16641886342673309650

namespace A116615

/-- `record[A101279(A286477(A068229(n+1)))]` -/
def P16641886342673309650.Spec : Prop :=
  ∀ n, P16641886342673309650.a n = A116615 (n + 1)

end A116615

/-! ## A116615.P7221757988287324499

`record[A246277(A055396(12*n+7))%A017101(n)]`
-/

namespace A116615.P7221757988287324499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246277 (A055396 (12 * n + 7)).toNat) (A017101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116615.P7221757988287324499

namespace A116615

/-- `record[A246277(A055396(12*n+7))%A017101(n)]` -/
def P7221757988287324499.Spec : Prop :=
  ∀ n, P7221757988287324499.a n = A116615 (n + 1)

end A116615

/-!
# A116616: Values of n such that prime(2n+1) mod 12 = 7.

The programs for A116616, the canonical program `A116616.P1011088262083713768` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116616 has offset 1).

The definition of A116616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116616.P6794433582719411703

`eq[3, A084199(2*n+1)]`
-/

namespace A116616.P6794433582719411703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084199 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P6794433582719411703

namespace A116616

/-- `eq[3, A084199(2*n+1)]` -/
def P6794433582719411703.Spec : Prop :=
  ∀ n, (P6794433582719411703.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P1011088262083713768

`eq[7, A039710(2*n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116616

/-- `eq[7, A039710(2*n+1)]` -/
def P1011088262083713768.Spec : Prop :=
  ∀ n, (P1011088262083713768.a n : ℤ) = A116616 (n + 1)

theorem P1011088262083713768.correct : P1011088262083713768.Spec := by
  intro n
  simp only [A116616, Nat.add_sub_cancel]

end A116616

/-! ## A116616.P5444898377250773942

`eq[4, A180217(2*n+3)]+1`
-/

namespace A116616.P5444898377250773942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116616.P5444898377250773942

namespace A116616

/-- `eq[4, A180217(2*n+3)]+1` -/
def P5444898377250773942.Spec : Prop :=
  ∀ n, (P5444898377250773942.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P14504884379666433307

`eq[7, A000040(2*n+1)%12]`
-/

namespace A116616.P14504884379666433307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P14504884379666433307

namespace A116616

/-- `eq[7, A000040(2*n+1)%12]` -/
def P14504884379666433307.Spec : Prop :=
  ∀ n, (P14504884379666433307.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P17556928668261197018

`eq[3, A020639(A130290(2*n+1))]`
-/

namespace A116616.P17556928668261197018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130290 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P17556928668261197018

namespace A116616

/-- `eq[3, A020639(A130290(2*n+1))]` -/
def P17556928668261197018.Spec : Prop :=
  ∀ n, (P17556928668261197018.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P2522908196416806048

`eq[3, A007318(A039710(n+1+n))]`
-/

namespace A116616.P2522908196416806048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A039710 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P2522908196416806048

namespace A116616

/-- `eq[3, A007318(A039710(n+1+n))]` -/
def P2522908196416806048.Spec : Prop :=
  ∀ n, (P2522908196416806048.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P6429348514326196065

`eq[4, A164273(A031368(n+1))]`
-/

namespace A116616.P6429348514326196065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164273 (A031368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P6429348514326196065

namespace A116616

/-- `eq[4, A164273(A031368(n+1))]` -/
def P6429348514326196065.Spec : Prop :=
  ∀ n, (P6429348514326196065.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P9203773913207090394

`eq[0, A115714(A000040(2*n+1))]`
-/

namespace A116616.P9203773913207090394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (A000040 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P9203773913207090394

namespace A116616

/-- `eq[0, A115714(A000040(2*n+1))]` -/
def P9203773913207090394.Spec : Prop :=
  ∀ n, (P9203773913207090394.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P10356365547455497091

`eq[1, A002186(A028815(2*n+1))]`
-/

namespace A116616.P10356365547455497091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (A028815 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P10356365547455497091

namespace A116616

/-- `eq[1, A002186(A028815(2*n+1))]` -/
def P10356365547455497091.Spec : Prop :=
  ∀ n, (P10356365547455497091.a n : ℤ) = A116616 (n + 1)

end A116616

/-! ## A116616.P47482059099096171

`eq[7, A070393(A008578(2*(n+1)))]`
-/

namespace A116616.P47482059099096171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070393 (A008578 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116616.P47482059099096171

namespace A116616

/-- `eq[7, A070393(A008578(2*(n+1)))]` -/
def P47482059099096171.Spec : Prop :=
  ∀ n, (P47482059099096171.a n : ℤ) = A116616 (n + 1)

end A116616

/-!
# A116617: Values of n such that prime(2n+1) mod 12 = 11.

The programs for A116617, the canonical program `A116617.P13087541354123377326` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116617 has offset 1).

The definition of A116617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116617.P13087541354123377326

`eq[2, gcd(36, A156037(2*n+1))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116617

/-- `eq[2, gcd(36, A156037(2*n+1))]` -/
def P13087541354123377326.Spec : Prop :=
  ∀ n, (P13087541354123377326.a n : ℤ) = A116617 (n + 1)

theorem P13087541354123377326.correct : P13087541354123377326.Spec := by
  intro n
  simp only [A116617, Nat.add_sub_cancel]

end A116617

/-! ## A116617.P1129377508144977688

`eq[4, A068227(2*n+1)]`
-/

namespace A116617.P1129377508144977688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068227 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116617.P1129377508144977688

namespace A116617

/-- `eq[4, A068227(2*n+1)]` -/
def P1129377508144977688.Spec : Prop :=
  ∀ n, (P1129377508144977688.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P15467230024433199347

`lt[4, A180217(2*n+1)]`
-/

namespace A116617.P15467230024433199347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116617.P15467230024433199347

namespace A116617

/-- `lt[4, A180217(2*n+1)]` -/
def P15467230024433199347.Spec : Prop :=
  ∀ n, (P15467230024433199347.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P8120773881331696929

`eq[11, A039710(2*n+1)]`
-/

namespace A116617.P8120773881331696929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116617.P8120773881331696929

namespace A116617

/-- `eq[11, A039710(2*n+1)]` -/
def P8120773881331696929.Spec : Prop :=
  ∀ n, (P8120773881331696929.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P16468347043289245859

`eq[1, A082542(2*n+1)%3]`
-/

namespace A116617.P16468347043289245859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082542 (2 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116617.P16468347043289245859

namespace A116617

/-- `eq[1, A082542(2*n+1)%3]` -/
def P16468347043289245859.Spec : Prop :=
  ∀ n, (P16468347043289245859.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P18354604612000346967

`lt[3, gcd(4, ceil(A000040(2*n+1)/3))]`
-/

namespace A116617.P18354604612000346967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ⌈(A000040 (2 * n + 1) : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116617.P18354604612000346967

namespace A116617

/-- `lt[3, gcd(4, ceil(A000040(2*n+1)/3))]` -/
def P18354604612000346967.Spec : Prop :=
  ∀ n, (P18354604612000346967.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P7539796909002219559

`record[A032742(A160593(n+1)-1)]`
-/

namespace A116617.P7539796909002219559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A160593 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116617.P7539796909002219559

namespace A116617

/-- `record[A032742(A160593(n+1)-1)]` -/
def P7539796909002219559.Spec : Prop :=
  ∀ n, P7539796909002219559.a n = A116617 (n + 1)

end A116617

/-! ## A116617.P3823419197032480473

`lt[3, A020639(A130290(2*n+1))]`
-/

namespace A116617.P3823419197032480473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130290 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116617.P3823419197032480473

namespace A116617

/-- `lt[3, A020639(A130290(2*n+1))]` -/
def P3823419197032480473.Spec : Prop :=
  ∀ n, (P3823419197032480473.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P14880191058648531237

`eq[3, A000196(A039710(n+1+n))]`
-/

namespace A116617.P14880191058648531237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A039710 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116617.P14880191058648531237

namespace A116617

/-- `eq[3, A000196(A039710(n+1+n))]` -/
def P14880191058648531237.Spec : Prop :=
  ∀ n, (P14880191058648531237.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P9738306424337085524

`eq[3, A292913(A039710(n+n+1))]`
-/

namespace A116617.P9738306424337085524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292913 (A039710 (n + n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116617.P9738306424337085524

namespace A116617

/-- `eq[3, A292913(A039710(n+n+1))]` -/
def P9738306424337085524.Spec : Prop :=
  ∀ n, (P9738306424337085524.a n : ℤ) = A116617 (n + 1)

end A116617

/-! ## A116617.P14651040086509169241

`lt[1, A007814(ceil(A000040(2*n+1)/3))]`
-/

namespace A116617.P14651040086509169241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ⌈(A000040 (2 * n + 1) : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116617.P14651040086509169241

namespace A116617

/-- `lt[1, A007814(ceil(A000040(2*n+1)/3))]` -/
def P14651040086509169241.Spec : Prop :=
  ∀ n, (P14651040086509169241.a n : ℤ) = A116617 (n + 1)

end A116617

/-!
# A116618: Values of Fibonacci(n) for n such that prime(2n) mod 12 = 1.

The programs for A116618, the canonical program `A116618.P392978224677000414` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116618 has offset 1).

The definition of A116618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116618.P392978224677000414

`A000045(A116614(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116618

/-- `A000045(A116614(n+1))` -/
def P392978224677000414.Spec : Prop :=
  ∀ n, P392978224677000414.a n = A116618 (n + 1)

theorem P392978224677000414.correct : P392978224677000414.Spec := by
  intro n
  simp only [A116618, Nat.add_sub_cancel]

end A116618

/-! ## A116618.P14219505300988270861

`A212804(A116614(n+1)+1)`
-/

namespace A116618.P14219505300988270861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A116614 (n + 1) + 1).toNat

end

end A116618.P14219505300988270861

namespace A116618

/-- `A212804(A116614(n+1)+1)` -/
def P14219505300988270861.Spec : Prop :=
  ∀ n, P14219505300988270861.a n = A116618 (n + 1)

end A116618

/-! ## A116618.P13259684427590372359

`record[A000045(A025480(A160594(n+1)))]`
-/

namespace A116618.P13259684427590372359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025480 (A160594 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116618.P13259684427590372359

namespace A116618

/-- `record[A000045(A025480(A160594(n+1)))]` -/
def P13259684427590372359.Spec : Prop :=
  ∀ n, P13259684427590372359.a n = A116618 (n + 1)

end A116618

/-! ## A116618.P17355500462351458568

`A053602(2*A116614(n+1))`
-/

namespace A116618.P17355500462351458568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A116614 (n + 1)).toNat

end

end A116618.P17355500462351458568

namespace A116618

/-- `A053602(2*A116614(n+1))` -/
def P17355500462351458568.Spec : Prop :=
  ∀ n, P17355500462351458568.a n = A116618 (n + 1)

end A116618

/-! ## A116618.P1729638932897937702

`A123231(eq[A000035(n), A039710(n+1)])`
-/

namespace A116618.P1729638932897937702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A116618.P1729638932897937702

namespace A116618

/-- `A123231(eq[A000035(n), A039710(n+1)])` -/
def P1729638932897937702.Spec : Prop :=
  ∀ n, P1729638932897937702.a n = A116618 (n + 1)

end A116618

/-! ## A116618.P17297066558328585924

`A123231(eq[A039710(n+1), A040001(n)])`
-/

namespace A116618.P17297066558328585924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A116618.P17297066558328585924

namespace A116618

/-- `A123231(eq[A039710(n+1), A040001(n)])` -/
def P17297066558328585924.Spec : Prop :=
  ∀ n, P17297066558328585924.a n = A116618 (n + 1)

end A116618

/-!
# A116619: a(n) = number of ways of representing 2*prime(n) as the unordered sum of two primes.

The programs for A116619, the canonical program `A116619.P13570014143326779403` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116619 has offset 1).

The definition of A116619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116619.P13570014143326779403

`A071681(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116619

/-- `A071681(n+1)+1` -/
def P13570014143326779403.Spec : Prop :=
  ∀ n, P13570014143326779403.a n = A116619 (n + 1)

theorem P13570014143326779403.correct : P13570014143326779403.Spec := by
  intro n
  simp only [A116619, Nat.add_sub_cancel]

end A116619

/-! ## A116619.P5270703373516651861

`A061357(A000040(n+1))+A060576(2*n)`
-/

namespace A116619.P5270703373516651861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A000040 (n + 1)).toNat + A060576 (2 * n)

end

end A116619.P5270703373516651861

namespace A116619

/-- `A061357(A000040(n+1))+A060576(2*n)` -/
def P5270703373516651861.Spec : Prop :=
  ∀ n, P5270703373516651861.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P6730427408340089098

`A061357(A000040(n+1))+A038713(2*n+1)`
-/

namespace A116619.P6730427408340089098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A000040 (n + 1)).toNat + A038713 (2 * n + 1)

end

end A116619.P6730427408340089098

namespace A116619

/-- `A061357(A000040(n+1))+A038713(2*n+1)` -/
def P6730427408340089098.Spec : Prop :=
  ∀ n, P6730427408340089098.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P9267501330274842643

`A061357(A000040(n+1))+A057427(2*(n+2))`
-/

namespace A116619.P9267501330274842643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A000040 (n + 1)).toNat + A057427 (2 * (n + 2))

end

end A116619.P9267501330274842643

namespace A116619

/-- `A061357(A000040(n+1))+A057427(2*(n+2))` -/
def P9267501330274842643.Spec : Prop :=
  ∀ n, P9267501330274842643.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P10411317874171463152

`A061357(A075643(n+2))+1`
-/

namespace A116619.P10411317874171463152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A075643 (n + 2)).toNat + 1

end

end A116619.P10411317874171463152

namespace A116619

/-- `A061357(A075643(n+2))+1` -/
def P10411317874171463152.Spec : Prop :=
  ∀ n, P10411317874171463152.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P9744397065041959027

`A045917(p?[xor(1, n)])`
-/

namespace A116619.P9744397065041959027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A116619.P9744397065041959027

namespace A116619

/-- `A045917(p?[xor(1, n)])` -/
def P9744397065041959027.Spec : Prop :=
  ∀ n, P9744397065041959027.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P16668735591962752217

`A045917(Δ[A007504(n)])`
-/

namespace A116619.P16668735591962752217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (n + 1) - f1 n).toNat

end

end A116619.P16668735591962752217

namespace A116619

/-- `A045917(Δ[A007504(n)])` -/
def P16668735591962752217.Spec : Prop :=
  ∀ n, P16668735591962752217.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P330293666649653102

`A045917(A000040(n+1))`
-/

namespace A116619.P330293666649653102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A000040 (n + 1)).toNat

end

end A116619.P330293666649653102

namespace A116619

/-- `A045917(A000040(n+1))` -/
def P330293666649653102.Spec : Prop :=
  ∀ n, P330293666649653102.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P6070415335487686104

`A045917(A008578(n+2))`
-/

namespace A116619.P6070415335487686104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A008578 (n + 2)).toNat

end

end A116619.P6070415335487686104

namespace A116619

/-- `A045917(A008578(n+2))` -/
def P6070415335487686104.Spec : Prop :=
  ∀ n, P6070415335487686104.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P11704533644650507887

`A002375(A175787(n+2))`
-/

namespace A116619.P11704533644650507887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A175787 (n + 2)).toNat

end

end A116619.P11704533644650507887

namespace A116619

/-- `A002375(A175787(n+2))` -/
def P11704533644650507887.Spec : Prop :=
  ∀ n, P11704533644650507887.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P10712694483316238578

`A045917(A182986(n+2))`
-/

namespace A116619.P10712694483316238578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A182986 (n + 2)).toNat

end

end A116619.P10712694483316238578

namespace A116619

/-- `A045917(A182986(n+2))` -/
def P10712694483316238578.Spec : Prop :=
  ∀ n, P10712694483316238578.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P8435242660788185481

`A045917(sqrt(A001248(n+1)))`
-/

namespace A116619.P8435242660788185481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A116619.P8435242660788185481

namespace A116619

/-- `A045917(sqrt(A001248(n+1)))` -/
def P8435242660788185481.Spec : Prop :=
  ∀ n, P8435242660788185481.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P1774804407388841309

`A045917(p?[A000961(n+1)])`
-/

namespace A116619.P1774804407388841309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A116619.P1774804407388841309

namespace A116619

/-- `A045917(p?[A000961(n+1)])` -/
def P1774804407388841309.Spec : Prop :=
  ∀ n, P1774804407388841309.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P11211002868014275261

`A045917(record[A006530(n+2)])`
-/

namespace A116619.P11211002868014275261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116619.P11211002868014275261

namespace A116619

/-- `A045917(record[A006530(n+2)])` -/
def P11211002868014275261.Spec : Prop :=
  ∀ n, P11211002868014275261.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P7490090189526187981

`A045917(record[A020639(n+2)])`
-/

namespace A116619.P7490090189526187981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116619.P7490090189526187981

namespace A116619

/-- `A045917(record[A020639(n+2)])` -/
def P7490090189526187981.Spec : Prop :=
  ∀ n, P7490090189526187981.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P14729855611986778079

`A045917(A040976(n+1)+2)`
-/

namespace A116619.P14729855611986778079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A040976 (n + 1) + 2).toNat

end

end A116619.P14729855611986778079

namespace A116619

/-- `A045917(A040976(n+1)+2)` -/
def P14729855611986778079.Spec : Prop :=
  ∀ n, P14729855611986778079.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P11723285426143015297

`A045917(A052147(n+1)-2)`
-/

namespace A116619.P11723285426143015297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A052147 (n + 1) - 2).toNat

end

end A116619.P11723285426143015297

namespace A116619

/-- `A045917(A052147(n+1)-2)` -/
def P11723285426143015297.Spec : Prop :=
  ∀ n, P11723285426143015297.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P639775779176684842

`A045917(A067747(2*n+1))`
-/

namespace A116619.P639775779176684842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A067747 (2 * n + 1)).toNat

end

end A116619.P639775779176684842

namespace A116619

/-- `A045917(A067747(2*n+1))` -/
def P639775779176684842.Spec : Prop :=
  ∀ n, P639775779176684842.a n = A116619 (n + 1)

end A116619

/-! ## A116619.P9109979706171723268

`A045917(A207790(2*(n+1)))`
-/

namespace A116619.P9109979706171723268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A207790 (2 * (n + 1))).toNat

end

end A116619.P9109979706171723268

namespace A116619

/-- `A045917(A207790(2*(n+1)))` -/
def P9109979706171723268.Spec : Prop :=
  ∀ n, P9109979706171723268.a n = A116619 (n + 1)

end A116619

/-!
# A116621: Positive integers n such that 13^n == 1 (mod n).

The programs for A116621, the canonical program `A116621.P17537140939685314663` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116621 has offset 1).

The definition of A116621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116621.P17537140939685314663

`eq[n, n*A116609(n+1)]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116621

/-- `eq[n, n*A116609(n+1)]+1` -/
def P17537140939685314663.Spec : Prop :=
  ∀ n, (P17537140939685314663.a n : ℤ) = A116621 (n + 1)

theorem P17537140939685314663.correct : P17537140939685314663.Spec := by
  intro n
  simp only [A116621, Nat.add_sub_cancel]

end A116621

/-! ## A116621.P5242678252675205565

`eq[ceil(sin(n)²), A116609(round(acot(n)+n))]`
-/

namespace A116621.P5242678252675205565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116621.P5242678252675205565

namespace A116621

/-- `eq[ceil(sin(n)²), A116609(round(acot(n)+n))]` -/
def P5242678252675205565.Spec : Prop :=
  ∀ n, (P5242678252675205565.a n : ℤ) = A116621 (n + 1)

end A116621

/-! ## A116621.P11250319265103799667

`eq[A057427(n), A116609(n+1)]+1`
-/

namespace A116621.P11250319265103799667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A116621.P11250319265103799667

namespace A116621

/-- `eq[A057427(n), A116609(n+1)]+1` -/
def P11250319265103799667.Spec : Prop :=
  ∀ n, (P11250319265103799667.a n : ℤ) = A116621 (n + 1)

end A116621

/-! ## A116621.P9788491093386055980

`eq[A060576(n), A116609(A028310(n))]`
-/

namespace A116621.P9788491093386055980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116621.P9788491093386055980

namespace A116621

/-- `eq[A060576(n), A116609(A028310(n))]` -/
def P9788491093386055980.Spec : Prop :=
  ∀ n, (P9788491093386055980.a n : ℤ) = A116621 (n + 1)

end A116621

/-! ## A116621.P8268675902628539723

`eq[A289207(n)+A116609(A028310(n)), n-1]`
-/

namespace A116621.P8268675902628539723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A116609 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116621.P8268675902628539723

namespace A116621

/-- `eq[A289207(n)+A116609(A028310(n)), n-1]` -/
def P8268675902628539723.Spec : Prop :=
  ∀ n, (P8268675902628539723.a n : ℤ) = A116621 (n + 1)

end A116621

/-! ## A116621.P3152335401580844091

`eq[A057427(n), A116609(A233583(n+1))]`
-/

namespace A116621.P3152335401580844091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116621.P3152335401580844091

namespace A116621

/-- `eq[A057427(n), A116609(A233583(n+1))]` -/
def P3152335401580844091.Spec : Prop :=
  ∀ n, (P3152335401580844091.a n : ℤ) = A116621 (n + 1)

end A116621

/-! ## A116621.P4232529220010219636

`eq[1, A116609(A233583(n+1)-A154955(n+1))]`
-/

namespace A116621.P4232529220010219636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (A233583 (n + 1) - A154955 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116621.P4232529220010219636

namespace A116621

/-- `eq[1, A116609(A233583(n+1)-A154955(n+1))]` -/
def P4232529220010219636.Spec : Prop :=
  ∀ n, (P4232529220010219636.a n : ℤ) = A116621 (n + 1)

end A116621

/-!
# A116623: a(0)=1, a(2n) = a(n)+A000079(A000523(2n)), a(2n+1) = 3*a(n) + A000079(A000523(2n+1)+1).

The programs for A116623, the canonical program `A116623.P4799794857559479492` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116623 has offset 0).

The definition of A116623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116623.P4799794857559479492

`A116640(A145342(n+1)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A116623

/-- `A116640(A145342(n+1)-1)` -/
def P4799794857559479492.Spec : Prop :=
  ∀ n, P4799794857559479492.a n = A116623 n

theorem P4799794857559479492.correct : P4799794857559479492.Spec := by
  intro n
  simp only [A116623]

end A116623

/-! ## A116623.P10147934909870279052

`A119733(A145341(n+1))`
-/

namespace A116623.P10147934909870279052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A145341 (n + 1)).toNat

end

end A116623.P10147934909870279052

namespace A116623

/-- `A119733(A145341(n+1))` -/
def P10147934909870279052.Spec : Prop :=
  ∀ n, P10147934909870279052.a n = A116623 n

end A116623

/-! ## A116623.P3631569012399058764

`A119733(A057889(Δ[n²]))`
-/

namespace A116623.P3631569012399058764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A057889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A116623.P3631569012399058764

namespace A116623

/-- `A119733(A057889(Δ[n²]))` -/
def P3631569012399058764.Spec : Prop :=
  ∀ n, P3631569012399058764.a n = A116623 n

end A116623

/-! ## A116623.P14193397905083609664

`A116640(A030109(Δ[n²]))`
-/

namespace A116623.P14193397905083609664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (A030109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A116623.P14193397905083609664

namespace A116623

/-- `A116640(A030109(Δ[n²]))` -/
def P14193397905083609664.Spec : Prop :=
  ∀ n, P14193397905083609664.a n = A116623 n

end A116623

/-! ## A116623.P10112607633807796958

`A119733(A056539(Δ[n²]))`
-/

namespace A116623.P10112607633807796958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A056539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A116623.P10112607633807796958

namespace A116623

/-- `A119733(A056539(Δ[n²]))` -/
def P10112607633807796958.Spec : Prop :=
  ∀ n, P10112607633807796958.a n = A116623 n

end A116623

/-! ## A116623.P17948295227854042343

`A119733(A030101(2*n+1))`
-/

namespace A116623.P17948295227854042343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A030101 (2 * n + 1)).toNat

end

end A116623.P17948295227854042343

namespace A116623

/-- `A119733(A030101(2*n+1))` -/
def P17948295227854042343.Spec : Prop :=
  ∀ n, P17948295227854042343.a n = A116623 n

end A116623

/-!
# A116624: a(1)=1; for n>1, a(n) = least positive integer not appearing earlier such that {a(k) | 1 <= k <= n} and {a(k) XOR a(k-1) | 1 <= k <= n} are disjoint sets of distinct numbers.

The programs for A116624, there is no canonical definition to state claims against.
-/

/-! ## A116624.P6364127483973400544

`xor(a(n-1), A116625(n))` with `a(0)=1`
-/

namespace A116624.P6364127483973400544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A116625 n)

end

end A116624.P6364127483973400544

/-! ## A116624.P6893841233833650909

`A116626(Δ[n²])`
-/

namespace A116624.P6893841233833650909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116624.P6893841233833650909

/-! ## A116624.P10852570973614267662

`A116626(record[xor(1, n)])%86`
-/

namespace A116624.P10852570973614267662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116626 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 86

end

end A116624.P10852570973614267662

/-! ## A116624.P12166653045811762294

`A116626(2*n+1)%69`
-/

namespace A116624.P12166653045811762294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116626 (2 * n + 1)) 69

end

end A116624.P12166653045811762294

/-!
# A116625: a(n) = A116624(n) XOR A116624(n+1).

The programs for A116625, there is no canonical definition to state claims against.
-/

/-! ## A116625.P5253253547499382708

`xor(A116624(n+1), A116624(n+2))`
-/

namespace A116625.P5253253547499382708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116624 (n + 1)) (A116624 (n + 2))

end

end A116625.P5253253547499382708

/-! ## A116625.P16166829438609926153

`A116626(2*(n+1))`
-/

namespace A116625.P16166829438609926153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116626 (2 * (n + 1))

end

end A116625.P16166829438609926153

/-! ## A116625.P5341136979723729290

`A028310(A116626(n+2+n))`
-/

namespace A116625.P5341136979723729290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A116626 (n + 2 + n)).toNat

end

end A116625.P5341136979723729290

/-! ## A116625.P3347736794841766787

`A116626(Δ[A027693(n)])+char[44]`
-/

namespace A116625.P3347736794841766787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116626 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A116625.P3347736794841766787

/-! ## A116625.P7081825066986864619

`A116626(A103517(n))+floor(acot(n)²)`
-/

namespace A116625.P7081825066986864619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116626 (A103517 n).toNat + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A116625.P7081825066986864619

/-!
# A116632: Positive integers n such that 13^n == 7 (mod n).

The programs for A116632, there is no canonical definition to state claims against.
-/

/-! ## A116632.P7353002867040882592

`A193991(A245312(n))+A036042(n)`
-/

namespace A116632.P7353002867040882592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193991 (A245312 n).toNat + A036042 n

end

end A116632.P7353002867040882592

/-! ## A116632.P16876268862242229472

`A239746(A261049(n))+char[A000108(n)]`
-/

namespace A116632.P16876268862242229472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239746 (A261049 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A116632.P16876268862242229472

/-! ## A116632.P15150334606734925228

`A239746(A261049(n))+char[A084188(n)]`
-/

namespace A116632.P15150334606734925228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239746 (A261049 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A116632.P15150334606734925228

/-!
# A116633: Triangle read by rows: T(n,k) is the number of partitions of n having exactly k parts that are multiple of 3 (n>=0, 0<=k<=floor(n/3)).

The programs for A116633, there is no canonical definition to state claims against.
-/

/-! ## A116633.P18369637835731468478

`A023416(A210472(3*(n+1)))+1`
-/

namespace A116633.P18369637835731468478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A210472 (3 * (n + 1))).toNat + 1

end

end A116633.P18369637835731468478

/-! ## A116633.P1844228606135316849

`A000120(A259862(3*(n+1))+7)`
-/

namespace A116633.P1844228606135316849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A259862 (3 * (n + 1)) + 7).toNat

end

end A116633.P1844228606135316849

/-! ## A116633.P13838252222855983517

`A002994(A090386(n)+A090375(n+1))`
-/

namespace A116633.P13838252222855983517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (A090386 n + A090375 (n + 1)).toNat

end

end A116633.P13838252222855983517

/-! ## A116633.P1222478444591092700

`A362615(lt[A228953(n+3), A362615(n)])`
-/

namespace A116633.P1222478444591092700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228953 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116633.P1222478444591092700

/-! ## A116633.P1584679523947284125

`A089840(3*n+2)+A030308(A035053(n))`
-/

namespace A116633.P1584679523947284125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (3 * n + 2) + A030308 (A035053 n).toNat

end

end A116633.P1584679523947284125

/-!
# A116634: Number of partitions of n having exactly one part that is a multiple of 3.

The programs for A116634, there is no canonical definition to state claims against.
-/

/-! ## A116634.P7597131863556017458

`and(A104501(n)-A260894(n), A000203(2^n))`
-/

namespace A116634.P7597131863556017458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104501 n - A260894 n) (A000203 (2 ^ n))

end

end A116634.P7597131863556017458

/-! ## A116634.P350999162654306850

`(A104501(n)-A260894(n))*A001221(A000079(n))`
-/

namespace A116634.P350999162654306850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104501 n - A260894 n) * A001221 (A000079 n).toNat

end

end A116634.P350999162654306850

/-! ## A116634.P15480196349133905490

`A213259(A293340(n+1))`
-/

namespace A116634.P15480196349133905490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A293340 (n + 1)).toNat

end

end A116634.P15480196349133905490

/-! ## A116634.P11484907816600239812

`A213259(A293341(n+1))`
-/

namespace A116634.P11484907816600239812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A293341 (n + 1)).toNat

end

end A116634.P11484907816600239812

/-! ## A116634.P3751828750545224313

`A213259(A024726(n+2))`
-/

namespace A116634.P3751828750545224313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (A024726 (n + 2)).toNat

end

end A116634.P3751828750545224313

/-!
# A116635: Number of parts that are multiples of 3 in all partitions of n.

The programs for A116635, there is no canonical definition to state claims against.
-/

/-! ## A116635.P3039935650723363066

`A325772(abs(A112335(n)))`
-/

namespace A116635.P3039935650723363066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325772 |A112335 n|.toNat

end

end A116635.P3039935650723363066

/-! ## A116635.P2845675766826544033

`A325772(A026488(n+1))`
-/

namespace A116635.P2845675766826544033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325772 (A026488 (n + 1)).toNat

end

end A116635.P2845675766826544033

/-! ## A116635.P3547152513365992328

`A325772(A016777(abs(1-n)))`
-/

namespace A116635.P3547152513365992328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325772 (A016777 |1 - (n : ℤ)|.toNat).toNat

end

end A116635.P3547152513365992328

/-! ## A116635.P7447012029504350120

`A325772(A111284(n+1)-n)`
-/

namespace A116635.P7447012029504350120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325772 (A111284 (n + 1) - (n : ℤ)).toNat

end

end A116635.P7447012029504350120

/-! ## A116635.P4695661549947653482

`A325772(A004525(record[A187307(n)]))`
-/

namespace A116635.P4695661549947653482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325772 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A116635.P4695661549947653482

/-! ## A116635.P17564446392786220675

`A325772(A005843(n)+A113679(n)+n)`
-/

namespace A116635.P17564446392786220675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325772 (A005843 n + (A113679 n + (n : ℤ))).toNat

end

end A116635.P17564446392786220675

/-!
# A116636: Positive integers k such that 13^k == 9 (mod k).

The programs for A116636, there is no canonical definition to state claims against.
-/

/-! ## A116636.P17195897889463926700

`record[A354999(n*(10*n-9)+1)]`
-/

namespace A116636.P17195897889463926700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354999 ((n : ℤ) * ((10 * n : ℤ) - 9) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116636.P17195897889463926700

/-! ## A116636.P17745687256228618158

`∑[A027750(A305562(n))]`
-/

namespace A116636.P17745687256228618158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A305562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116636.P17745687256228618158

/-!
# A116637: G.f. satisfies: A(x) = x/series_reversion(x/G(x)) where A(x) + A(-x) = 2*G(x^2) and G(x) is the g.f. of A046646.

The programs for A116637, the canonical program `A116637.P550715832201764144` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116637 has offset 0).

The definition of A116637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116637.P550715832201764144

`A036453(n+1)*A047749(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116637

/-- `A036453(n+1)*A047749(n)` -/
def P550715832201764144.Spec : Prop :=
  ∀ n, P550715832201764144.a n = A116637 n

theorem P550715832201764144.correct : P550715832201764144.Spec := by
  intro n
  simp only [A116637]

end A116637

/-! ## A116637.P9063706051908283366

`(2-A000007(n))*A047749(n)`
-/

namespace A116637.P9063706051908283366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A047749 n

end

end A116637.P9063706051908283366

namespace A116637

/-- `(2-A000007(n))*A047749(n)` -/
def P9063706051908283366.Spec : Prop :=
  ∀ n, P9063706051908283366.a n = A116637 n

end A116637

/-! ## A116637.P10364054353042400220

`A047749(n)*A280193(2*n)`
-/

namespace A116637.P10364054353042400220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n * A280193 (2 * n)

end

end A116637.P10364054353042400220

namespace A116637

/-- `A047749(n)*A280193(2*n)` -/
def P10364054353042400220.Spec : Prop :=
  ∀ n, P10364054353042400220.a n = A116637 n

end A116637

/-! ## A116637.P11506967400892709334

`(A065475(n+1)-n)*A047749(n)`
-/

namespace A116637.P11506967400892709334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) - (n : ℤ)) * A047749 n

end

end A116637.P11506967400892709334

namespace A116637

/-- `(A065475(n+1)-n)*A047749(n)` -/
def P11506967400892709334.Spec : Prop :=
  ∀ n, P11506967400892709334.a n = A116637 n

end A116637

/-! ## A116637.P12511270459703890846

`A020639(A004277(n))*A047749(n)`
-/

namespace A116637.P12511270459703890846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A047749 n

end

end A116637.P12511270459703890846

namespace A116637

/-- `A020639(A004277(n))*A047749(n)` -/
def P12511270459703890846.Spec : Prop :=
  ∀ n, P12511270459703890846.a n = A116637 n

end A116637

/-! ## A116637.P6964522537607636947

`A020639(A008574(n))*A047749(n)`
-/

namespace A116637.P6964522537607636947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A047749 n

end

end A116637.P6964522537607636947

namespace A116637

/-- `A020639(A008574(n))*A047749(n)` -/
def P6964522537607636947.Spec : Prop :=
  ∀ n, P6964522537607636947.a n = A116637 n

end A116637

/-! ## A116637.P8204073512707358671

`A020639(A310489(n))*A047749(n)`
-/

namespace A116637.P8204073512707358671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310489 n).toNat * A047749 n

end

end A116637.P8204073512707358671

namespace A116637

/-- `A020639(A310489(n))*A047749(n)` -/
def P8204073512707358671.Spec : Prop :=
  ∀ n, P8204073512707358671.a n = A116637 n

end A116637

/-! ## A116637.P13864635141784660432

`A020639(A067945(n+1))*A047749(n)`
-/

namespace A116637.P13864635141784660432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067945 (n + 1)).toNat * A047749 n

end

end A116637.P13864635141784660432

namespace A116637

/-- `A020639(A067945(n+1))*A047749(n)` -/
def P13864635141784660432.Spec : Prop :=
  ∀ n, P13864635141784660432.a n = A116637 n

end A116637

/-! ## A116637.P4351974324803289711

`A020639(A008255(n))*A047749(n)`
-/

namespace A116637.P4351974324803289711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008255 n).toNat * A047749 n

end

end A116637.P4351974324803289711

namespace A116637

/-- `A020639(A008255(n))*A047749(n)` -/
def P4351974324803289711.Spec : Prop :=
  ∀ n, P4351974324803289711.a n = A116637 n

end A116637

/-! ## A116637.P10697621168127046555

`A046646(n+1)/A001764(n)*A047749(n)`
-/

namespace A116637.P10697621168127046555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046646 (n + 1) : ℚ) / (A001764 n : ℚ) * (A047749 n : ℚ)

end

end A116637.P10697621168127046555

namespace A116637

/-- `A046646(n+1)/A001764(n)*A047749(n)` -/
def P10697621168127046555.Spec : Prop :=
  ∀ n, P10697621168127046555.a n = (A116637 n : ℚ)

end A116637

/-! ## A116637.P7503960287014116295

`A000122(n²)*A047749(n)`
-/

namespace A116637.P7503960287014116295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A047749 n

end

end A116637.P7503960287014116295

namespace A116637

/-- `A000122(n²)*A047749(n)` -/
def P7503960287014116295.Spec : Prop :=
  ∀ n, P7503960287014116295.a n = A116637 n

end A116637

/-!
# A116639: Numbers k such that 13^k == 15 (mod k).

The programs for A116639, there is no canonical definition to state claims against.
-/

/-! ## A116639.P17834007445095320279

`A002326(A105749(n))/2`
-/

namespace A116639.P17834007445095320279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 (A105749 n).toNat : ℚ) / 2

end

end A116639.P17834007445095320279

/-!
# A116640: a(n) = A116623(A059893(n)).

The programs for A116640, the canonical program `A116640.P12883575542746410889` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116640 has offset 0).

The definition of A116640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116640.P12883575542746410889

`2*a(floor(n/2))-A033999(n)*A048883(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116640

/-- `2*a(floor(n/2))-A033999(n)*A048883(n)` -/
def P12883575542746410889.Spec : Prop :=
  ∀ n, P12883575542746410889.a n = A116640 n

theorem P12883575542746410889.correct : P12883575542746410889.Spec := by
  intro n
  simp only [A116640]

end A116640

/-! ## A116640.P1994108179597715141

`A048883(n)+A119733(n)+A119733(n)`
-/

namespace A116640.P1994108179597715141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n + (A119733 n + A119733 n)

end

end A116640.P1994108179597715141

namespace A116640

/-- `A048883(n)+A119733(n)+A119733(n)` -/
def P1994108179597715141.Spec : Prop :=
  ∀ n, P1994108179597715141.a n = A116640 n

end A116640

/-! ## A116640.P1537938154693616330

`A119733(Δ[n²])`
-/

namespace A116640.P1537938154693616330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116640.P1537938154693616330

namespace A116640

/-- `A119733(Δ[n²])` -/
def P1537938154693616330.Spec : Prop :=
  ∀ n, P1537938154693616330.a n = A116640 n

end A116640

/-! ## A116640.P4698220568726240728

`A119733(n+1+n)^gcd(n, n+1)`
-/

namespace A116640.P4698220568726240728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1 + n) ^ Nat.gcd n (n + 1)

end

end A116640.P4698220568726240728

namespace A116640

/-- `A119733(n+1+n)^gcd(n, n+1)` -/
def P4698220568726240728.Spec : Prop :=
  ∀ n, P4698220568726240728.a n = A116640 n

end A116640

/-! ## A116640.P7879826886549347064

`A119733(2*n)+A048883(n)`
-/

namespace A116640.P7879826886549347064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (2 * n) + A048883 n

end

end A116640.P7879826886549347064

namespace A116640

/-- `A119733(2*n)+A048883(n)` -/
def P7879826886549347064.Spec : Prop :=
  ∀ n, P7879826886549347064.a n = A116640 n

end A116640

/-! ## A116640.P7754428191471417214

`A119733(2*n+1)%A030656(n+1)`
-/

namespace A116640.P7754428191471417214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119733 (2 * n + 1)) (A030656 (n + 1))

end

end A116640.P7754428191471417214

namespace A116640

/-- `A119733(2*n+1)%A030656(n+1)` -/
def P7754428191471417214.Spec : Prop :=
  ∀ n, P7754428191471417214.a n = A116640 n

end A116640

/-! ## A116640.P2183148292675493790

`lcm(A000120(A061142(n+1)), A119733(n+1+n))`
-/

namespace A116640.P2183148292675493790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 (A061142 (n + 1)).toNat) (A119733 (n + 1 + n))

end

end A116640.P2183148292675493790

namespace A116640

/-- `lcm(A000120(A061142(n+1)), A119733(n+1+n))` -/
def P2183148292675493790.Spec : Prop :=
  ∀ n, (P2183148292675493790.a n : ℤ) = A116640 n

end A116640

/-! ## A116640.P11398627387195848303

`A119733(4*n)-(A119733(2*n)-A048883(n))`
-/

namespace A116640.P11398627387195848303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (4 * n) - (A119733 (2 * n) - A048883 n)

end

end A116640.P11398627387195848303

namespace A116640

/-- `A119733(4*n)-(A119733(2*n)-A048883(n))` -/
def P11398627387195848303.Spec : Prop :=
  ∀ n, P11398627387195848303.a n = A116640 n

end A116640

/-! ## A116640.P17161662973268560897

`filter[A119733(n+1), A373156(#)]`
-/

namespace A116640.P17161662973268560897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A116640.P17161662973268560897

namespace A116640

/-- `filter[A119733(n+1), A373156(#)]` -/
def P17161662973268560897.Spec : Prop :=
  ∀ n, P17161662973268560897.a n = A116640 n

end A116640

/-! ## A116640.P2226132796973888485

`filter[A119733(n+1), A374134(#)]`
-/

namespace A116640.P2226132796973888485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A116640.P2226132796973888485

namespace A116640

/-- `filter[A119733(n+1), A374134(#)]` -/
def P2226132796973888485.Spec : Prop :=
  ∀ n, P2226132796973888485.a n = A116640 n

end A116640

/-! ## A116640.P14177229470273882688

`filter[A119733(n), A354354(#)]`
-/

namespace A116640.P14177229470273882688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A116640.P14177229470273882688

namespace A116640

/-- `filter[A119733(n), A354354(#)]` -/
def P14177229470273882688.Spec : Prop :=
  ∀ n, P14177229470273882688.a n = A116640 n

end A116640

/-! ## A116640.P9080690525244068712

`filter[A119733(n+1), A093719(#)]`
-/

namespace A116640.P9080690525244068712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A116640.P9080690525244068712

namespace A116640

/-- `filter[A119733(n+1), A093719(#)]` -/
def P9080690525244068712.Spec : Prop :=
  ∀ n, P9080690525244068712.a n = A116640 n

end A116640

/-! ## A116640.P17622809626580656125

`filter[A119733(n+1), A320106(#)]`
-/

namespace A116640.P17622809626580656125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A116640.P17622809626580656125

namespace A116640

/-- `filter[A119733(n+1), A320106(#)]` -/
def P17622809626580656125.Spec : Prop :=
  ∀ n, P17622809626580656125.a n = A116640 n

end A116640

/-! ## A116640.P12438377034867238396

`filter[A119733(n), A000035(#)]`
-/

namespace A116640.P12438377034867238396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A116640.P12438377034867238396

namespace A116640

/-- `filter[A119733(n), A000035(#)]` -/
def P12438377034867238396.Spec : Prop :=
  ∀ n, P12438377034867238396.a n = A116640 n

end A116640

/-! ## A116640.P12106974189234983158

`filter[A119733(n+1), A260390(#)]`
-/

namespace A116640.P12106974189234983158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A116640.P12106974189234983158

namespace A116640

/-- `filter[A119733(n+1), A260390(#)]` -/
def P12106974189234983158.Spec : Prop :=
  ∀ n, P12106974189234983158.a n = A116640 n

end A116640

/-!
# A116641: A116623 sorted, without duplicates.

The programs for A116641, there is no canonical definition to state claims against.
-/

/-! ## A116641.P13015797798088448212

`eq[1, char[A119733(2*n+1)]]`
-/

namespace A116641.P13015797798088448212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116641.P13015797798088448212

/-! ## A116641.P1573811649788779020

`∩[2*n+1, A213539(n+1)]`
-/

namespace A116641.P1573811649788779020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116641.P1573811649788779020

/-! ## A116641.P12300016548432279754

`filter[A213539(n+1), A000035(#)]`
-/

namespace A116641.P12300016548432279754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A116641.P12300016548432279754

/-! ## A116641.P12266435401374962029

`filter[A213539(n+1), A093719(#)]`
-/

namespace A116641.P12266435401374962029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A116641.P12266435401374962029

/-! ## A116641.P9526869632196790503

`filter[A213539(n+1), A260390(#)]`
-/

namespace A116641.P9526869632196790503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A116641.P9526869632196790503

/-! ## A116641.P16638329769708158772

`filter[A213539(n+1), A320106(#)]`
-/

namespace A116641.P16638329769708158772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A116641.P16638329769708158772

/-! ## A116641.P6054447090627260701

`filter[A213539(n+1), A354354(#)]`
-/

namespace A116641.P6054447090627260701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A116641.P6054447090627260701

/-! ## A116641.P11966971668686069064

`filter[A213539(n+1), A373156(#)]`
-/

namespace A116641.P11966971668686069064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A116641.P11966971668686069064

/-! ## A116641.P3218037992582459862

`filter[A213539(n+1), A374134(#)]`
-/

namespace A116641.P3218037992582459862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A116641.P3218037992582459862

/-!
# A116642: A116641 in binary.

The programs for A116642, there is no canonical definition to state claims against.
-/

/-! ## A116642.P8282474161716681016

`A007088(A116641(n))`
-/

namespace A116642.P8282474161716681016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A116641 n).toNat

end

end A116642.P8282474161716681016

/-! ## A116642.P9188267400628321289

`A185544(2*A116641(n))`
-/

namespace A116642.P9188267400628321289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A116641 n).toNat

end

end A116642.P9188267400628321289

/-! ## A116642.P1291793701824924539

`A185544(lcm(2, A116641(n)))`
-/

namespace A116642.P1291793701824924539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A116641 n))

end

end A116642.P1291793701824924539

/-! ## A116642.P15763998170616664366

`A007089(A005836(A116641(n)+1))`
-/

namespace A116642.P15763998170616664366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A116641 n + 1).toNat).toNat

end

end A116642.P15763998170616664366

/-!
# A116645: Number of partitions of n having no doubletons. By a doubleton in a partition we mean an occurrence of a part exactly twice (the partition [4,(3,3),2,2,2,(1,1)] of 18 has two doubletons, shown between parentheses).

The programs for A116645, there is no canonical definition to state claims against.
-/

/-! ## A116645.P11139409625496796440

`A118759(A327731(n)-A026814(n))`
-/

namespace A116645.P11139409625496796440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A327731 n - A026814 n).toNat

end

end A116645.P11139409625496796440

/-! ## A116645.P5461516458179173246

`A118759(A327731(n)-A308990(n))`
-/

namespace A116645.P5461516458179173246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A327731 n - A308990 n).toNat

end

end A116645.P5461516458179173246

/-! ## A116645.P5307627089229621705

`A067815((A308990(n)-A327731(n))²)`
-/

namespace A116645.P5307627089229621705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 ((A308990 n - A327731 n) ^ 2).toNat

end

end A116645.P5307627089229621705

/-! ## A116645.P10981189473197620081

`A118759(A327731(n)-A024793(n+1))`
-/

namespace A116645.P10981189473197620081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A327731 n - A024793 (n + 1)).toNat

end

end A116645.P10981189473197620081

/-!
# A116646: Number of doubletons in all partitions of n. By a doubleton in a partition we mean an occurrence of a part exactly twice (the partition [4,(3,3),2,2,2,(1,1)] has two doubletons, shown between parentheses).

The programs for A116646, there is no canonical definition to state claims against.
-/

/-! ## A116646.P3409921702247835574

`A182712(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A116646.P3409921702247835574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A182712 n + a (n - 3)

end

end A116646.P3409921702247835574

/-! ## A116646.P18231695129335125219

`∑[A182713(n+1)]-a(n-1)` with `a(0)=0`
-/

namespace A116646.P18231695129335125219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A116646.P18231695129335125219

/-! ## A116646.P16958742164769767276

`A000097(n+1)-(A316861(n+1)+A000070(n+1))-a(n-1)` with `a(0)=0`
-/

namespace A116646.P16958742164769767276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000097 (n + 1) - (A316861 (n + 1) + A000070 (n + 1)) - a (n - 1)

end

end A116646.P16958742164769767276

/-! ## A116646.P978984012621931182

`A024787(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A116646.P978984012621931182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A024787 (n + 1) - a (n - 1)

end

end A116646.P978984012621931182

/-! ## A116646.P8729660302039970420

`A024786(n+2)-A024787(n+3)`
-/

namespace A116646.P8729660302039970420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) - A024787 (n + 3)

end

end A116646.P8729660302039970420

/-! ## A116646.P11510662515864255229

`A117524(n+1)+A024788(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A116646.P11510662515864255229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A117524 (n + 1) + A024788 (n + 1) - a (n - 1)

end

end A116646.P11510662515864255229

/-!
# A116647: Triangle of number of partitions that fit in an n X n box (but not in an (n-1) X (n-1) box) with Durfee square k.

The programs for A116647, the canonical program `A116647.P17745609631817123823` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116647 has offset 1).

The definition of A116647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116647.P17745609631817123823

`C(row(n)+1, col(n)+1)²-C(row(n), col(n)+1)²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116647

/-- `C(row(n)+1, col(n)+1)²-C(row(n), col(n)+1)²` -/
def P17745609631817123823.Spec : Prop :=
  ∀ n, P17745609631817123823.a n = A116647 (n + 1)

theorem P17745609631817123823.correct : P17745609631817123823.Spec := by
  intro n
  simp only [A116647, Nat.add_sub_cancel]

end A116647

/-! ## A116647.P5354126856925200051

`A007318(n)*A110813(n)`
-/

namespace A116647.P5354126856925200051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A110813 n

end

end A116647.P5354126856925200051

namespace A116647

/-- `A007318(n)*A110813(n)` -/
def P5354126856925200051.Spec : Prop :=
  ∀ n, P5354126856925200051.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P6503860257083931844

`A335340(n+1)-A008459(n)`
-/

namespace A116647.P6503860257083931844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335340 (n + 1) - A008459 n

end

end A116647.P6503860257083931844

namespace A116647

/-- `A335340(n+1)-A008459(n)` -/
def P6503860257083931844.Spec : Prop :=
  ∀ n, P6503860257083931844.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P1487701242854869570

`A007318(n)*A029655(n+1)`
-/

namespace A116647.P1487701242854869570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A029655 (n + 1)

end

end A116647.P1487701242854869570

namespace A116647

/-- `A007318(n)*A029655(n+1)` -/
def P1487701242854869570.Spec : Prop :=
  ∀ n, P1487701242854869570.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P14560094855655212768

`(A014473(n)+1)*A110813(n)`
-/

namespace A116647.P14560094855655212768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A110813 n

end

end A116647.P14560094855655212768

namespace A116647

/-- `(A014473(n)+1)*A110813(n)` -/
def P14560094855655212768.Spec : Prop :=
  ∀ n, P14560094855655212768.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P5229371980389110930

`2*A103371(n)-A008459(n)`
-/

namespace A116647.P5229371980389110930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103371 n - A008459 n

end

end A116647.P5229371980389110930

namespace A116647

/-- `2*A103371(n)-A008459(n)` -/
def P5229371980389110930.Spec : Prop :=
  ∀ n, P5229371980389110930.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P7162982240359458661

`A007318(n)*A029653(comp[∑[n]])`
-/

namespace A116647.P7162982240359458661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A029653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A116647.P7162982240359458661

namespace A116647

/-- `A007318(n)*A029653(comp[∑[n]])` -/
def P7162982240359458661.Spec : Prop :=
  ∀ n, P7162982240359458661.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P18391195270849903764

`2*A103371(n)-A007318(n)²`
-/

namespace A116647.P18391195270849903764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103371 n - A007318 n ^ 2

end

end A116647.P18391195270849903764

namespace A116647

/-- `2*A103371(n)-A007318(n)²` -/
def P18391195270849903764.Spec : Prop :=
  ∀ n, P18391195270849903764.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P11904647877203390224

`ceil(A134059(n)/3)*A110813(n)`
-/

namespace A116647.P11904647877203390224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A110813 n

end

end A116647.P11904647877203390224

namespace A116647

/-- `ceil(A134059(n)/3)*A110813(n)` -/
def P11904647877203390224.Spec : Prop :=
  ∀ n, P11904647877203390224.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P13864049908827507504

`A074909(n+1)²-A206735(n+1)²`
-/

namespace A116647.P13864049908827507504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) ^ 2 - A206735 (n + 1) ^ 2

end

end A116647.P13864049908827507504

namespace A116647

/-- `A074909(n+1)²-A206735(n+1)²` -/
def P13864049908827507504.Spec : Prop :=
  ∀ n, P13864049908827507504.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P15402842649807609738

`A110813(n)*A193554(lt[1, A193588(n)])`
-/

namespace A116647.P15402842649807609738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116647.P15402842649807609738

namespace A116647

/-- `A110813(n)*A193554(lt[1, A193588(n)])` -/
def P15402842649807609738.Spec : Prop :=
  ∀ n, P15402842649807609738.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P6671236543197965191

`(A206735(n+1)+A135278(n))*A007318(n)`
-/

namespace A116647.P6671236543197965191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206735 (n + 1) + A135278 n) * A007318 n

end

end A116647.P6671236543197965191

namespace A116647

/-- `(A206735(n+1)+A135278(n))*A007318(n)` -/
def P6671236543197965191.Spec : Prop :=
  ∀ n, P6671236543197965191.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P4737106437774177026

`A210551(n+1)/A054142(n)*A007318(n)²`
-/

namespace A116647.P4737106437774177026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210551 (n + 1) : ℚ) / (A054142 n : ℚ) * (A007318 n ^ 2 : ℚ)

end

end A116647.P4737106437774177026

namespace A116647

/-- `A210551(n+1)/A054142(n)*A007318(n)²` -/
def P4737106437774177026.Spec : Prop :=
  ∀ n, P4737106437774177026.a n = (A116647 (n + 1) : ℚ)

end A116647

/-! ## A116647.P14562268396146288898

`A013609(n)/A209757(n+1)*A110813(n)²`
-/

namespace A116647.P14562268396146288898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A209757 (n + 1) : ℚ) * (A110813 n ^ 2 : ℚ)

end

end A116647.P14562268396146288898

namespace A116647

/-- `A013609(n)/A209757(n+1)*A110813(n)²` -/
def P14562268396146288898.Spec : Prop :=
  ∀ n, P14562268396146288898.a n = (A116647 (n + 1) : ℚ)

end A116647

/-! ## A116647.P8017240520866855588

`(A206735(n+1)+A074909(n+1))*A007318(n)`
-/

namespace A116647.P8017240520866855588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206735 (n + 1) + A074909 (n + 1)) * A007318 n

end

end A116647.P8017240520866855588

namespace A116647

/-- `(A206735(n+1)+A074909(n+1))*A007318(n)` -/
def P8017240520866855588.Spec : Prop :=
  ∀ n, P8017240520866855588.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P1658115330288206273

`(A325191(n+1)+A007318(n+1))*A007318(n)`
-/

namespace A116647.P1658115330288206273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325191 (n + 1) + A007318 (n + 1)) * A007318 n

end

end A116647.P1658115330288206273

namespace A116647

/-- `(A325191(n+1)+A007318(n+1))*A007318(n)` -/
def P1658115330288206273.Spec : Prop :=
  ∀ n, P1658115330288206273.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P14703583500540898581

`A001263(n+1)+A062196(n+1)-A008459(n+1)`
-/

namespace A116647.P14703583500540898581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A062196 (n + 1) - A008459 (n + 1))

end

end A116647.P14703583500540898581

namespace A116647

/-- `A001263(n+1)+A062196(n+1)-A008459(n+1)` -/
def P14703583500540898581.Spec : Prop :=
  ∀ n, P14703583500540898581.a n = A116647 (n + 1)

end A116647

/-! ## A116647.P17352004444444225142

`(A005843(A135278(n))-A110813(n))*A110813(n)`
-/

namespace A116647.P17352004444444225142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (A135278 n).toNat - A110813 n) * A110813 n

end

end A116647.P17352004444444225142

namespace A116647

/-- `(A005843(A135278(n))-A110813(n))*A110813(n)` -/
def P17352004444444225142.Spec : Prop :=
  ∀ n, P17352004444444225142.a n = A116647 (n + 1)

end A116647

/-!
# A116649: Positions where A116648(i) is greater than A116648(i-1).

The programs for A116649, there is no canonical definition to state claims against.
-/

/-! ## A116649.P13191635076668075480

`record[A116627(n+1)]`
-/

namespace A116649.P13191635076668075480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116649.P13191635076668075480

/-! ## A116649.P8220745181554142730

`A116627(∪[A116650(n+1), A116642(n)])`
-/

namespace A116649.P8220745181554142730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116642 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116627 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A116649.P8220745181554142730

/-! ## A116649.P10946679539892701422

`A116627(∪[A116611(n+1), A116650(n+3)])`
-/

namespace A116649.P10946679539892701422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116650 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116627 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A116649.P10946679539892701422

/-! ## A116649.P10516168217618678568

`A116627(∏{e}[A000079(n), A116650(#)])`
-/

namespace A116649.P10516168217618678568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116627 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A116650 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A116649.P10516168217618678568

/-! ## A116649.P11365336130921755430

`A116627(A116648(a(n-1)))` with `a(0)=1`
-/

namespace A116649.P11365336130921755430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116627 (A116648 (a (n - 1)).toNat).toNat

end

end A116649.P11365336130921755430

/-!
# A116650: Distinct values of A116648, i.e., its duplicates removed.

The programs for A116650, there is no canonical definition to state claims against.
-/

/-! ## A116650.P377178685415161487

`A116648(A116649(n+1))`
-/

namespace A116650.P377178685415161487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116648 (A116649 (n + 1)).toNat

end

end A116650.P377178685415161487

/-! ## A116650.P6691700155404306206

`A116624((A116649(n+2)-1)/2+1)`
-/

namespace A116650.P6691700155404306206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116624 (SequenceMachineLib.roundAway ((A116649 (n + 2) - 1 : ℚ) / 2 + 1)).toNat

end

end A116650.P6691700155404306206

/-! ## A116650.P9008609447413639201

`record[xor(A025469(n), A116648(n+1))]`
-/

namespace A116650.P9008609447413639201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025469 n) (A116648 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116650.P9008609447413639201

/-! ## A116650.P13141087664865342436

`record[or(A025469(n+1), A116648(n+1))]`
-/

namespace A116650.P13141087664865342436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (n + 1)) (A116648 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116650.P13141087664865342436

/-! ## A116650.P12346363523664281567

`record[or(A070109(2*(n+1)), A116648(n+1))]`
-/

namespace A116650.P12346363523664281567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070109 (2 * (n + 1))) (A116648 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116650.P12346363523664281567

/-!
# A116652: Number of connected subgroups of the alternating group A_n.

The programs for A116652, there is no canonical definition to state claims against.
-/

/-! ## A116652.P10696846360819832272

`A008617(A157015(n)²+1)`
-/

namespace A116652.P10696846360819832272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A157015 n ^ 2 + 1).toNat

end

end A116652.P10696846360819832272

/-! ## A116652.P2391044739373209100

`A008617(xor(1, A157015(n)²))`
-/

namespace A116652.P2391044739373209100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.xor 1 (A157015 n ^ 2)).toNat

end

end A116652.P2391044739373209100

/-! ## A116652.P7150538480811992853

`A277487(A133316(n)+1+n)`
-/

namespace A116652.P7150538480811992853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277487 (A133316 n + 1 + (n : ℤ)).toNat

end

end A116652.P7150538480811992853

/-!
# A116653: Number of connected even permutation groups; conjugacy classes of connected subgroups of the alternating group A_n; atomic species based on even permutation groups.

The programs for A116653, there is no canonical definition to state claims against.
-/

/-! ## A116653.P12960797854692370855

`A218967(lcm(ceil(xor(1, n)/6), round(acot(n)+n)))`
-/

namespace A116653.P12960797854692370855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218967 (Int.lcm ⌈(Nat.xor 1 n : ℚ) / 6⌉ (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))))

end

end A116653.P12960797854692370855

/-! ## A116653.P4418588705734320918

`A218967(n)%A289429(n)`
-/

namespace A116653.P4418588705734320918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218967 n) (A289429 n)

end

end A116653.P4418588705734320918

/-! ## A116653.P4263472429021418224

`∑{e}[A000351(n), A218967(#)]`
-/

namespace A116653.P4263472429021418224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A218967 (Nat.factorization (f1 n).natAbs p)

end

end A116653.P4263472429021418224

/-! ## A116653.P6750090742788667502

`A001221(4^n)*A218967(n)`
-/

namespace A116653.P6750090742788667502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (4 ^ n) * A218967 n

end

end A116653.P6750090742788667502

/-! ## A116653.P7392157226975408712

`A218967(n)+A010815(A045618(n))`
-/

namespace A116653.P7392157226975408712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218967 n + A010815 (A045618 n).toNat

end

end A116653.P7392157226975408712

/-!
# A116655: Number of connected subgroups of the symmetric group S_n.

The programs for A116655, there is no canonical definition to state claims against.
-/

/-! ## A116655.P16558702134205666421

`A061395(A213507(n)-A329867(n))`
-/

namespace A116655.P16558702134205666421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A213507 n - A329867 n).toNat

end

end A116655.P16558702134205666421

/-!
# A116656: Slowest growing sequence of semiprimes having the semiprime-pairwise-sum property: for any i<j, a(i)+a(j) is semiprime.

The programs for A116656, there is no canonical definition to state claims against.
-/

/-! ## A116656.P14098498475661298311

`A122428(n+1)*A213925(A000980(2*n+1))`
-/

namespace A116656.P14098498475661298311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122428 (n + 1) * A213925 (A000980 (2 * n + 1)).toNat

end

end A116656.P14098498475661298311

/-!
# A116657: Numbers k such that prime(k) == 11 (mod k).

The programs for A116657, there is no canonical definition to state claims against.
-/

/-! ## A116657.P2512493721422142142

`∑[A067059(∑[A033313(n+1)])]`
-/

namespace A116657.P2512493721422142142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116657.P2512493721422142142

/-! ## A116657.P10182975202540853431

`∑[A103484(A103525(2*n+1)+1)]`
-/

namespace A116657.P10182975202540853431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103484 (A103525 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116657.P10182975202540853431

/-! ## A116657.P13951395244239416199

`eq[A172288(A027868(n)), A174807(n+1)]`
-/

namespace A116657.P13951395244239416199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172288 (A027868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116657.P13951395244239416199

/-! ## A116657.P14590395986297964207

`eq[A093019(A240178(n+3)), A093019(n)]`
-/

namespace A116657.P14590395986297964207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 (A240178 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116657.P14590395986297964207

/-!
# A116660: Integers in both sequences A075658 and A067028.

The programs for A116660, the canonical program `A116660.P3668344593120253381` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116660 has offset 1).

The definition of A116660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116660.P3668344593120253381

`∩[A067028(n+1), A075658(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116660

/-- `∩[A067028(n+1), A075658(n+1)]` -/
def P3668344593120253381.Spec : Prop :=
  ∀ n, (P3668344593120253381.a n : ℤ) = A116660 (n + 1)

theorem P3668344593120253381.correct : P3668344593120253381.Spec := by
  intro n
  simp only [A116660, Nat.add_sub_cancel]

end A116660

/-! ## A116660.P11146400633020758267

`∩[A067028(n+1), comp[A114522(n+1)]]`
-/

namespace A116660.P11146400633020758267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A116660.P11146400633020758267

namespace A116660

/-- `∩[A067028(n+1), comp[A114522(n+1)]]` -/
def P11146400633020758267.Spec : Prop :=
  ∀ n, (P11146400633020758267.a n : ℤ) = A116660 (n + 1)

end A116660

/-! ## A116660.P5524379164833380364

`∩[lt[2, A321944(n+1)]+1, A067028(n+1)]`
-/

namespace A116660.P5524379164833380364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A116660.P5524379164833380364

namespace A116660

/-- `∩[lt[2, A321944(n+1)]+1, A067028(n+1)]` -/
def P5524379164833380364.Spec : Prop :=
  ∀ n, (P5524379164833380364.a n : ℤ) = A116660 (n + 1)

end A116660

/-! ## A116660.P2608236005401662241

`∩[A075658(n+1), A167175(n+1)]`
-/

namespace A116660.P2608236005401662241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116660.P2608236005401662241

namespace A116660

/-- `∩[A075658(n+1), A167175(n+1)]` -/
def P2608236005401662241.Spec : Prop :=
  ∀ n, (P2608236005401662241.a n : ℤ) = A116660 (n + 1)

end A116660

/-! ## A116660.P16589896804774568343

`∩[lt[2, A321944(n+1)]+1, A167175(n+1)]`
-/

namespace A116660.P16589896804774568343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A116660.P16589896804774568343

namespace A116660

/-- `∩[lt[2, A321944(n+1)]+1, A167175(n+1)]` -/
def P16589896804774568343.Spec : Prop :=
  ∀ n, (P16589896804774568343.a n : ℤ) = A116660 (n + 1)

end A116660

/-!
# A116661: Integers in both sequences A114522 and A063989.

The programs for A116661, the canonical program `A116661.P7486489033770162213` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116661 has offset 1).

The definition of A116661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116661.P7486489033770162213

`∩[A063989(n+1), A114522(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A116661

/-- `∩[A063989(n+1), A114522(n+1)]` -/
def P7486489033770162213.Spec : Prop :=
  ∀ n, (P7486489033770162213.a n : ℤ) = A116661 (n + 1)

theorem P7486489033770162213.correct : P7486489033770162213.Spec := by
  intro n
  simp only [A116661, Nat.add_sub_cancel]

end A116661

/-! ## A116661.P15713324763805120903

`∩[eq[3, A073855(n)], A114522(n+1)]`
-/

namespace A116661.P15713324763805120903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A116661.P15713324763805120903

namespace A116661

/-- `∩[eq[3, A073855(n)], A114522(n+1)]` -/
def P15713324763805120903.Spec : Prop :=
  ∀ n, (P15713324763805120903.a n : ℤ) = A116661 (n + 1)

end A116661

/-! ## A116661.P14644397809310302825

`∩[eq[2, A036430(n+1)]+1, A114522(n+1)]`
-/

namespace A116661.P14644397809310302825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036430 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A116661.P14644397809310302825

namespace A116661

/-- `∩[eq[2, A036430(n+1)]+1, A114522(n+1)]` -/
def P14644397809310302825.Spec : Prop :=
  ∀ n, (P14644397809310302825.a n : ℤ) = A116661 (n + 1)

end A116661

/-!
# A116663: Triangle read by rows: T(n,k) = number of partitions of n into odd parts and having exactly k parts equal to 1 (n>=0, 1<=k<=n).

The programs for A116663, there is no canonical definition to state claims against.
-/

/-! ## A116663.P5309531163312236160

`A087897(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A116663.P5309531163312236160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A116663.P5309531163312236160

/-! ## A116663.P12936710544730250175

`A087897(C(comp[∑[n]]-n, 2)-1-n)`
-/

namespace A116663.P12936710544730250175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)).toNat

end

end A116663.P12936710544730250175

/-! ## A116663.P5616685981719549256

`A087897(A025581(n))`
-/

namespace A116663.P5616685981719549256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A025581 n).toNat

end

end A116663.P5616685981719549256

/-! ## A116663.P6928077299048340565

`A087897(log2(A130321(n)))`
-/

namespace A116663.P6928077299048340565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A116663.P6928077299048340565

/-! ## A116663.P1873737742041034980

`A087897(val(A036561(n), 2))`
-/

namespace A116663.P1873737742041034980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A116663.P1873737742041034980

/-! ## A116663.P6830741644191850391

`A087897(val(A054582(n), 2))`
-/

namespace A116663.P6830741644191850391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A116663.P6830741644191850391

/-! ## A116663.P15666159471425713010

`A087897(val(A130321(n), 2))`
-/

namespace A116663.P15666159471425713010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A116663.P15666159471425713010

/-! ## A116663.P5337239643263972524

`A087897(floor(log2(A130330(n))))`
-/

namespace A116663.P5337239643263972524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (Nat.log 2 (A130330 n).toNat)

end

end A116663.P5337239643263972524

/-! ## A116663.P9491467161262285748

`A087897(A004736(n+1)-1)`
-/

namespace A116663.P9491467161262285748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A004736 (n + 1) - 1).toNat

end

end A116663.P9491467161262285748

/-! ## A116663.P2467413563193549258

`A087897((A099375(n)-1)/2)`
-/

namespace A116663.P2467413563193549258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.roundAway ((A099375 n - 1 : ℚ) / 2)).toNat

end

end A116663.P2467413563193549258

/-! ## A116663.P1272213675173051929

`A087897(sqrt(A055461(n+1))-1)`
-/

namespace A116663.P1272213675173051929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ) - 1)).toNat

end

end A116663.P1272213675173051929

/-! ## A116663.P5663557355666801752

`A087897(xor(A002262(n), A003987(n)))`
-/

namespace A116663.P5663557355666801752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (Int.xor (A002262 n) (A003987 n)).toNat

end

end A116663.P5663557355666801752

/-! ## A116663.P1359210816385492653

`A087897(∑{e}[A130321(n), #])`
-/

namespace A116663.P1359210816385492653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A116663.P1359210816385492653

/-!
# A116664: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts and having exactly k parts that appear exactly once (n>=0, k>=0).

The programs for A116664, there is no canonical definition to state claims against.
-/

/-! ## A116664.P12483079863610903763

`A345927(A194540(n+2))`
-/

namespace A116664.P12483079863610903763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 (A194540 (n + 2)).toNat

end

end A116664.P12483079863610903763

/-! ## A116664.P1857655459791145281

`A254630(A338036(n+1))%3`
-/

namespace A116664.P1857655459791145281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254630 (A338036 (n + 1)).toNat) 3

end

end A116664.P1857655459791145281

/-! ## A116664.P5975074678642592140

`A350448(A350448(n)+char[(n+1)²])`
-/

namespace A116664.P5975074678642592140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350448 (A350448 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A116664.P5975074678642592140

/-! ## A116664.P18210647165492675807

`C(A332289(3*(n+1)), A250219(n+2)+1)`
-/

namespace A116664.P18210647165492675807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332289 (3 * (n + 1))).toNat (A250219 (n + 2) + 1).toNat

end

end A116664.P18210647165492675807

/-! ## A116664.P12000036874637842726

`A334052(gcd(A334053(n), A334058(n)))`
-/

namespace A116664.P12000036874637842726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334052 (Int.gcd (A334053 n) (A334058 n))

end

end A116664.P12000036874637842726

/-!
# A116665: Total number of parts that appear exactly once in the partitions of n into odd parts.

The programs for A116665, there is no canonical definition to state claims against.
-/

/-! ## A116665.P10773834499199576163

`∑[A096765(n)-A096749(n)]`
-/

namespace A116665.P10773834499199576163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n - A096749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116665.P10773834499199576163

/-! ## A116665.P15737635815244249604

`∑[A000009(n)-(A096749(n)+A025147(n))]`
-/

namespace A116665.P15737635815244249604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A096749 n + A025147 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116665.P15737635815244249604

/-! ## A116665.P11858676300334771831

`∑[A096749(n+1)]-A096749(n)`
-/

namespace A116665.P11858676300334771831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096749 n

end

end A116665.P11858676300334771831

/-! ## A116665.P18237665860814331848

`∑[A025148(n)]-A025147(n)`
-/

namespace A116665.P18237665860814331848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025147 n

end

end A116665.P18237665860814331848

/-! ## A116665.P5387201110671667729

`∑[A025148(n)-Δ[A096765(n)]]`
-/

namespace A116665.P5387201110671667729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116665.P5387201110671667729

/-! ## A116665.P6291567711039140351

`∑[A025148(n)]-A096765(n+1)`
-/

namespace A116665.P6291567711039140351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096765 (n + 1)

end

end A116665.P6291567711039140351

/-!
# A116666: Triangle, row sums = number of edges in n-dimensional hypercubes.

The programs for A116666, the canonical program `A116666.P17766505159784788522` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116666 has offset 1).

The definition of A116666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116666.P17766505159784788522

`C(row(n), col(n))*(2*(col(n)+1)-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116666

/-- `C(row(n), col(n))*(2*(col(n)+1)-1)` -/
def P17766505159784788522.Spec : Prop :=
  ∀ n, P17766505159784788522.a n = A116666 (n + 1)

theorem P17766505159784788522.correct : P17766505159784788522.Spec := by
  intro n
  simp only [A116666, Nat.add_sub_cancel]

end A116666

/-! ## A116666.P13224534252160529994

`(2*col(n)+1)*C(row(n), col(n))`
-/

namespace A116666.P13224534252160529994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A116666.P13224534252160529994

namespace A116666

/-- `(2*col(n)+1)*C(row(n), col(n))` -/
def P13224534252160529994.Spec : Prop :=
  ∀ n, (P13224534252160529994.a n : ℤ) = A116666 (n + 1)

theorem P13224534252160529994.correct : P13224534252160529994.Spec := by
  intro n
  simp only [A116666, Nat.add_sub_cancel, A116666.P13224534252160529994.a, A116666.P17766505159784788522.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116666

/-! ## A116666.P11717833547676705553

`A007318(n)*A158405(n+1)`
-/

namespace A116666.P11717833547676705553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A158405 (n + 1)

end

end A116666.P11717833547676705553

namespace A116666

/-- `A007318(n)*A158405(n+1)` -/
def P11717833547676705553.Spec : Prop :=
  ∀ n, P11717833547676705553.a n = A116666 (n + 1)

theorem P11717833547676705553.correct : P11717833547676705553.Spec := by
  intro n
  simp only [A116666, Nat.add_sub_cancel, A116666.P11717833547676705553.a, A116666.P17766505159784788522.a, A007318, A007318.P11755526479805562006.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116666

/-! ## A116666.P12503665842573399920

`2*A103406(n)-A007318(n)`
-/

namespace A116666.P12503665842573399920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103406 n - A007318 n

end

end A116666.P12503665842573399920

namespace A116666

/-- `2*A103406(n)-A007318(n)` -/
def P12503665842573399920.Spec : Prop :=
  ∀ n, P12503665842573399920.a n = A116666 (n + 1)

theorem P12503665842573399920.correct : P12503665842573399920.Spec := by
  intro n
  simp only [A116666, Nat.add_sub_cancel, A116666.P12503665842573399920.a, A116666.P17766505159784788522.a, A007318, A007318.P11755526479805562006.a, A103406, A103406.P6599304241706345565.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116666

/-! ## A116666.P5080087354999201123

`A132775(n)-2*A216973(n)`
-/

namespace A116666.P5080087354999201123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132775 n - 2 * A216973 n

end

end A116666.P5080087354999201123

namespace A116666

/-- `A132775(n)-2*A216973(n)` -/
def P5080087354999201123.Spec : Prop :=
  ∀ n, P5080087354999201123.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P6559826955341538481

`2*A103406(n)-abs(A130595(n))`
-/

namespace A116666.P6559826955341538481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103406 n - |A130595 n|

end

end A116666.P6559826955341538481

namespace A116666

/-- `2*A103406(n)-abs(A130595(n))` -/
def P6559826955341538481.Spec : Prop :=
  ∀ n, P6559826955341538481.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P15964010968175133877

`2*A103406(n)-sqrt(A008459(n))`
-/

namespace A116666.P15964010968175133877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A103406 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A116666.P15964010968175133877

namespace A116666

/-- `2*A103406(n)-sqrt(A008459(n))` -/
def P15964010968175133877.Spec : Prop :=
  ∀ n, P15964010968175133877.a n = (A116666 (n + 1) : ℝ)

end A116666

/-! ## A116666.P14524126818015735574

`2*A103406(n)-Δ[A102363(n)]`
-/

namespace A116666.P14524126818015735574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103406 n - (f1 (n + 1) - f1 n)

end

end A116666.P14524126818015735574

namespace A116666

/-- `2*A103406(n)-Δ[A102363(n)]` -/
def P14524126818015735574.Spec : Prop :=
  ∀ n, P14524126818015735574.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P17587862201137503104

`2*A003506(n+1)-A134083(n)`
-/

namespace A116666.P17587862201137503104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003506 (n + 1) - A134083 n

end

end A116666.P17587862201137503104

namespace A116666

/-- `2*A003506(n+1)-A134083(n)` -/
def P17587862201137503104.Spec : Prop :=
  ∀ n, P17587862201137503104.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P4093984143928031031

`(2*A002262(n)+1)*A007318(n)`
-/

namespace A116666.P4093984143928031031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002262 n + 1) * A007318 n

end

end A116666.P4093984143928031031

namespace A116666

/-- `(2*A002262(n)+1)*A007318(n)` -/
def P4093984143928031031.Spec : Prop :=
  ∀ n, P4093984143928031031.a n = A116666 (n + 1)

theorem P4093984143928031031.correct : P4093984143928031031.Spec := by
  intro n
  simp only [A116666, Nat.add_sub_cancel, A116666.P4093984143928031031.a, A116666.P17766505159784788522.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116666

/-! ## A116666.P4515581398205861043

`A005408(A002262(n))*A007318(n)`
-/

namespace A116666.P4515581398205861043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A007318 n

end

end A116666.P4515581398205861043

namespace A116666

/-- `A005408(A002262(n))*A007318(n)` -/
def P4515581398205861043.Spec : Prop :=
  ∀ n, P4515581398205861043.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P5959831288306476885

`A007318(n)+A002262(n)*A028326(n)`
-/

namespace A116666.P5959831288306476885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A002262 n * A028326 n

end

end A116666.P5959831288306476885

namespace A116666

/-- `A007318(n)+A002262(n)*A028326(n)` -/
def P5959831288306476885.Spec : Prop :=
  ∀ n, P5959831288306476885.a n = A116666 (n + 1)

theorem P5959831288306476885.correct : P5959831288306476885.Spec := by
  intro n
  simp only [A116666, Nat.add_sub_cancel, A116666.P5959831288306476885.a, A116666.P17766505159784788522.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A116666

/-! ## A116666.P15823360499027252135

`A005408(n-A057944(n))*A007318(n)`
-/

namespace A116666.P15823360499027252135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n : ℤ) - A057944 n).toNat * A007318 n

end

end A116666.P15823360499027252135

namespace A116666

/-- `A005408(n-A057944(n))*A007318(n)` -/
def P15823360499027252135.Spec : Prop :=
  ∀ n, P15823360499027252135.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P15160109154779642636

`ceil(A134059(n)/3)*A005408(A002262(n))`
-/

namespace A116666.P15160109154779642636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A005408 (A002262 n).toNat

end

end A116666.P15160109154779642636

namespace A116666

/-- `ceil(A134059(n)/3)*A005408(A002262(n))` -/
def P15160109154779642636.Spec : Prop :=
  ∀ n, P15160109154779642636.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P386725783890116184

`A134059(A028310(n))/3*A005408(A002262(n))`
-/

namespace A116666.P386725783890116184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A005408 (A002262 n).toNat : ℚ)

end

end A116666.P386725783890116184

namespace A116666

/-- `A134059(A028310(n))/3*A005408(A002262(n))` -/
def P386725783890116184.Spec : Prop :=
  ∀ n, P386725783890116184.a n = (A116666 (n + 1) : ℚ)

end A116666

/-! ## A116666.P6121330787985874332

`(A285118(n)+A285116(n))*A005408(A002262(n))`
-/

namespace A116666.P6121330787985874332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A005408 (A002262 n).toNat

end

end A116666.P6121330787985874332

namespace A116666

/-- `(A285118(n)+A285116(n))*A005408(A002262(n))` -/
def P6121330787985874332.Spec : Prop :=
  ∀ n, P6121330787985874332.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P14060012694810315380

`(A028276(n)-A028263(n))*A005408(A002262(n))`
-/

namespace A116666.P14060012694810315380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A005408 (A002262 n).toNat

end

end A116666.P14060012694810315380

namespace A116666

/-- `(A028276(n)-A028263(n))*A005408(A002262(n))` -/
def P14060012694810315380.Spec : Prop :=
  ∀ n, P14060012694810315380.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P5370726231377890567

`A134083(A061579(n))`
-/

namespace A116666.P5370726231377890567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134083 (A061579 n).toNat

end

end A116666.P5370726231377890567

namespace A116666

/-- `A134083(A061579(n))` -/
def P5370726231377890567.Spec : Prop :=
  ∀ n, P5370726231377890567.a n = A116666 (n + 1)

end A116666

/-! ## A116666.P16381977675473564083

`A141692(n)+A003506(n+1)`
-/

namespace A116666.P16381977675473564083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + A003506 (n + 1)

end

end A116666.P16381977675473564083

namespace A116666

/-- `A141692(n)+A003506(n+1)` -/
def P16381977675473564083.Spec : Prop :=
  ∀ n, P16381977675473564083.a n = A116666 (n + 1)

end A116666

/-!
# A116667: Greatest digit not used in n (or 10 if n is pandigital).

The programs for A116667, there is no canonical definition to state claims against.
-/

/-! ## A116667.P16651168491554795924

`10-A261794(A055120(n))`
-/

namespace A116667.P16651168491554795924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A261794 (A055120 n).toNat

end

end A116667.P16651168491554795924

/-! ## A116667.P1658337024701323099

`9-val(n+1, 10)^(A306014(n+1)+1)`
-/

namespace A116667.P1658337024701323099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 - (SequenceMachineLib.valuation (n + 1) 10 : ℚ) ^ (A306014 (n + 1) + 1 : ℤ)

end

end A116667.P1658337024701323099

/-! ## A116667.P7856444611385718344

`10-A083888(A073731(n+1))`
-/

namespace A116667.P7856444611385718344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A083888 (A073731 (n + 1 + 10)).toNat

end

end A116667.P7856444611385718344

/-! ## A116667.P11019284852665067091

`10-A050142(A068159(n+11))`
-/

namespace A116667.P11019284852665067091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A050142 (A068159 (n + 11)).toNat

end

end A116667.P11019284852665067091

/-! ## A116667.P15108364672068038484

`dr(A067176(Δ[A241946(n+1)]))`
-/

namespace A116667.P15108364672068038484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067176 (f1 (n + 1) - f1 n).toNat)

end

end A116667.P15108364672068038484

/-! ## A116667.P10954567186598397468

`dr(A215197(Δ[A056524(n+10)]))`
-/

namespace A116667.P10954567186598397468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A215197 (f1 (n + 1) - f1 n).toNat)

end

end A116667.P10954567186598397468

/-! ## A116667.P13221080662071197963

`dr(A311975(Δ[A056524(n+10)]))`
-/

namespace A116667.P13221080662071197963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A311975 (f1 (n + 1) - f1 n).toNat)

end

end A116667.P13221080662071197963

/-! ## A116667.P17269498065215721966

`A329697(Δ[A056524(n+10)])+6`
-/

namespace A116667.P17269498065215721966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (f1 (n + 1) - f1 n).toNat + 6

end

end A116667.P17269498065215721966

/-!
# A116668: a(n) = (5*n^2 + n + 2)/2.

The programs for A116668, the canonical program `A116668.P6661105361758965347` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116668 has offset 0).

The definition of A116668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n²+n+2)/2` (program `A116668.P17265138613392619316`, by `A116668.P17265138613392619316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116668.P4087126930225653614

`ogf((1+x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A116668.P4087126930225653614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3] [1, -3, 3, -1] n

end

end A116668.P4087126930225653614

namespace A116668

/-- `ogf((1+x+3x^2)/(1-3x+3x^2-x^3))` -/
def P4087126930225653614.Spec : Prop :=
  ∀ n, P4087126930225653614.a n = A116668 n

end A116668

/-! ## A116668.P17265138613392619316

`(5*n²+n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116668.P17265138613392619316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 + n + 2 : ℚ) / 2

end

end A116668.P17265138613392619316

namespace A116668

/-- `(5*n²+n+2)/2` -/
def P17265138613392619316.Spec : Prop :=
  ∀ n, P17265138613392619316.a n = (A116668 n : ℚ)

theorem P17265138613392619316.correct : P17265138613392619316.Spec := by
  intro n
  induction n with
  | zero => simp [A116668, A116668.P17265138613392619316.a, A116668.P6661105361758965347.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A116668, Nat.add_sub_cancel, A116668.P17265138613392619316.a, A116668.P6661105361758965347.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A116668

/-! ## A116668.P6661105361758965347

`5*n+a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116668

/-- `5*n+a(n-1)-2` -/
def P6661105361758965347.Spec : Prop :=
  ∀ n, P6661105361758965347.a n = A116668 n

theorem P6661105361758965347.correct : P6661105361758965347.Spec := by
  intro n
  simp only [A116668]

end A116668

/-! ## A116668.P9264477050189453551

`A000217(n)+A002378(n)+A002061(n)`
-/

namespace A116668.P9264477050189453551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A002378 n + A002061 n

end

end A116668.P9264477050189453551

namespace A116668

/-- `A000217(n)+A002378(n)+A002061(n)` -/
def P9264477050189453551.Spec : Prop :=
  ∀ n, P9264477050189453551.a n = A116668 n

end A116668

/-! ## A116668.P2739912625720595339

`∑[a(n-1)+5]` with `a(0)=1, a(1)=3`
-/

namespace A116668.P2739912625720595339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116668.P2739912625720595339

namespace A116668

/-- `∑[a(n-1)+5]` -/
def P2739912625720595339.Spec : Prop :=
  ∀ n, (P2739912625720595339.a n : ℤ) = A116668 n

end A116668

/-! ## A116668.P9765397389211219707

`∑[ogf((1+x+3x^2)/(1-2x+x^2))]`
-/

namespace A116668.P9765397389211219707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116668.P9765397389211219707

namespace A116668

/-- `∑[ogf((1+x+3x^2)/(1-2x+x^2))]` -/
def P9765397389211219707.Spec : Prop :=
  ∀ n, P9765397389211219707.a n = A116668 n

end A116668

/-! ## A116668.P6537296229888797883

`5*n-(2-a(n-1))` with `a(0)=1`
-/

namespace A116668.P6537296229888797883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (2 - a (n - 1))

end

end A116668.P6537296229888797883

namespace A116668

/-- `5*n-(2-a(n-1))` -/
def P6537296229888797883.Spec : Prop :=
  ∀ n, P6537296229888797883.a n = A116668 n

theorem P6537296229888797883.correct : P6537296229888797883.Spec := by
  intro n
  simp only [A116668, Nat.add_sub_cancel, A116668.P6537296229888797883.a, A116668.P6661105361758965347.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116668

/-! ## A116668.P12618580139220740059

`2-∑[a(n-1)-5]-n` with `a(0)=1`
-/

namespace A116668.P12618580139220740059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A116668.P12618580139220740059

namespace A116668

/-- `2-∑[a(n-1)-5]-n` -/
def P12618580139220740059.Spec : Prop :=
  ∀ n, P12618580139220740059.a n = A116668 n

end A116668

/-! ## A116668.P2123093718465261715

`∑[eq[n, n*n%4]+n+1]`
-/

namespace A116668.P2123093718465261715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116668.P2123093718465261715

namespace A116668

/-- `∑[eq[n, n*n%4]+n+1]` -/
def P2123093718465261715.Spec : Prop :=
  ∀ n, (P2123093718465261715.a n : ℤ) = A116668 n

end A116668

/-! ## A116668.P7466120913663615279

`a(n-1)+a(n-1)+5-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A116668.P7466120913663615279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + 5) - a (n - 2)

end

end A116668.P7466120913663615279

namespace A116668

/-- `a(n-1)+a(n-1)+5-a(n-2)` -/
def P7466120913663615279.Spec : Prop :=
  ∀ n, P7466120913663615279.a n = A116668 n

end A116668

/-! ## A116668.P14608171488945149148

`a(n-1)-(a(n-2)-a(n-1)-5)` with `a(0)=1, a(1)=4`
-/

namespace A116668.P14608171488945149148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A116668.P14608171488945149148

namespace A116668

/-- `a(n-1)-(a(n-2)-a(n-1)-5)` -/
def P14608171488945149148.Spec : Prop :=
  ∀ n, P14608171488945149148.a n = A116668 n

end A116668

/-! ## A116668.P15330531269522826981

`A005475(n)+1`
-/

namespace A116668.P15330531269522826981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n + 1

end

end A116668.P15330531269522826981

namespace A116668

/-- `A005475(n)+1` -/
def P15330531269522826981.Spec : Prop :=
  ∀ n, P15330531269522826981.a n = A116668 n

end A116668

/-! ## A116668.P17385663772709284166

`A104249(n)+n²`
-/

namespace A116668.P17385663772709284166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n + (n ^ 2 : ℤ)

end

end A116668.P17385663772709284166

namespace A116668

/-- `A104249(n)+n²` -/
def P17385663772709284166.Spec : Prop :=
  ∀ n, P17385663772709284166.a n = A116668 n

end A116668

/-! ## A116668.P18237968490797992262

`A058331(n)+∑[n]`
-/

namespace A116668.P18237968490797992262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A116668.P18237968490797992262

namespace A116668

/-- `A058331(n)+∑[n]` -/
def P18237968490797992262.Spec : Prop :=
  ∀ n, P18237968490797992262.a n = A116668 n

end A116668

/-! ## A116668.P12552093727471899452

`A056108(n)-∑[n]`
-/

namespace A116668.P12552093727471899452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A116668.P12552093727471899452

namespace A116668

/-- `A056108(n)-∑[n]` -/
def P12552093727471899452.Spec : Prop :=
  ∀ n, P12552093727471899452.a n = A116668 n

end A116668

/-! ## A116668.P3203794541839089341

`Δ[A203552(n)]-n`
-/

namespace A116668.P3203794541839089341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A116668.P3203794541839089341

namespace A116668

/-- `Δ[A203552(n)]-n` -/
def P3203794541839089341.Spec : Prop :=
  ∀ n, P3203794541839089341.a n = A116668 n

end A116668

/-! ## A116668.P9988536074353556204

`A202803(n)/2+1`
-/

namespace A116668.P9988536074353556204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202803 n : ℚ) / 2 + 1

end

end A116668.P9988536074353556204

namespace A116668

/-- `A202803(n)/2+1` -/
def P9988536074353556204.Spec : Prop :=
  ∀ n, P9988536074353556204.a n = (A116668 n : ℚ)

theorem P9988536074353556204.correct : P9988536074353556204.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A116668, Nat.add_sub_cancel, A116668.P9988536074353556204.a, A116668.P6661105361758965347.a, A202803, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A116668, Nat.add_sub_cancel, A116668.P9988536074353556204.a, A116668.P6661105361758965347.a, A202803, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A116668

/-! ## A116668.P18425669533330231214

`A144312(n)/5+1`
-/

namespace A116668.P18425669533330231214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144312 n : ℚ) / 5 + 1

end

end A116668.P18425669533330231214

namespace A116668

/-- `A144312(n)/5+1` -/
def P18425669533330231214.Spec : Prop :=
  ∀ n, P18425669533330231214.a n = (A116668 n : ℚ)

end A116668

/-! ## A116668.P3753731221946257787

`A005476(n)+1+n`
-/

namespace A116668.P3753731221946257787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + 1 + (n : ℤ)

end

end A116668.P3753731221946257787

namespace A116668

/-- `A005476(n)+1+n` -/
def P3753731221946257787.Spec : Prop :=
  ∀ n, P3753731221946257787.a n = A116668 n

end A116668

/-! ## A116668.P4267770341745322125

`A140066(n+1)+n`
-/

namespace A116668.P4267770341745322125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140066 (n + 1) + (n : ℤ)

end

end A116668.P4267770341745322125

namespace A116668

/-- `A140066(n+1)+n` -/
def P4267770341745322125.Spec : Prop :=
  ∀ n, P4267770341745322125.a n = A116668 n

end A116668

/-!
# A116669: Triangle, rows tend to A001787, number of edges in n-dimensional hypercubes.

The programs for A116669, there is no canonical definition to state claims against.
-/

/-! ## A116669.P14347685224019705260

`A029837(ceil(cosh(A110291(n))))`
-/

namespace A116669.P14347685224019705260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 ⌈Real.cosh (A110291 n : ℝ)⌉.toNat

end

end A116669.P14347685224019705260

/-! ## A116669.P6088505973316536204

`A029837(round(cosh(A110291(n))))`
-/

namespace A116669.P6088505973316536204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway (Real.cosh (A110291 n : ℝ))).toNat

end

end A116669.P6088505973316536204

/-! ## A116669.P3837280443311054026

`A280913(A024662(A027935(n)²))`
-/

namespace A116669.P3837280443311054026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 (A024662 (A027935 n ^ 2).toNat).toNat

end

end A116669.P3837280443311054026

/-! ## A116669.P14380217788713610237

`A005670(A059268(n)^A276719(n))`
-/

namespace A116669.P14380217788713610237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A276719 n : ℤ))).toNat

end

end A116669.P14380217788713610237

/-! ## A116669.P7977182688206117486

`A002024(A088481(A116445(n+1)²))`
-/

namespace A116669.P7977182688206117486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A088481 (A116445 (n + 1) ^ 2).toNat).toNat

end

end A116669.P7977182688206117486

/-!
# A116670: Numbers with all but one decimal digit.

The programs for A116670, there is no canonical definition to state claims against.
-/

/-! ## A116670.P9467125978346065672

`floor(A050278(n+1)/10)`
-/

namespace A116670.P9467125978346065672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050278 (n + 1) : ℚ) / 10⌋

end

end A116670.P9467125978346065672

/-! ## A116670.P2517213289431239986

`ceil((A050278(A000027(n+1))-9)/10)`
-/

namespace A116670.P2517213289431239986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050278 (A000027 (n + 1)).toNat - 9 : ℚ) / 10⌉

end

end A116670.P2517213289431239986

/-! ## A116670.P6417897398447437871

`ceil((A050278(n+1)-A116667(n))/10)`
-/

namespace A116670.P6417897398447437871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050278 (n + 1) - A116667 n : ℚ) / 10⌉

end

end A116670.P6417897398447437871

/-! ## A116670.P4836943566684042238

`(A050278(n+1)-A116695(n+1))/10`
-/

namespace A116670.P4836943566684042238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (n + 1) - A116695 (n + 1) : ℚ) / 10

end

end A116670.P4836943566684042238

/-! ## A116670.P3735631162659918645

`floor(∪[A051018(n+1), A051264(n+1)]/10)`
-/

namespace A116670.P3735631162659918645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051264 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 10⌋

end

end A116670.P3735631162659918645

/-!
# A116671: Primes p such that the nearest integer to p * Pi is prime.

The programs for A116671, the canonical program `A116671.P8030541470076909074` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116671 has offset 1).

The definition of A116671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116671.P8030541470076909074

`p?[A224796(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116671

/-- `p?[A224796(n+1)]` -/
def P8030541470076909074.Spec : Prop :=
  ∀ n, P8030541470076909074.a n = A116671 (n + 1)

theorem P8030541470076909074.correct : P8030541470076909074.Spec := by
  intro n
  simp only [A116671, Nat.add_sub_cancel]

end A116671

/-! ## A116671.P5474759993084684310

`or(1, p?[A224796(4-(n-2*n))])`
-/

namespace A116671.P5474759993084684310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (4 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A116671.P5474759993084684310

namespace A116671

/-- `or(1, p?[A224796(4-(n-2*n))])` -/
def P5474759993084684310.Spec : Prop :=
  ∀ n, P5474759993084684310.a n = A116671 (n + 1)

end A116671

/-! ## A116671.P13324488649588376128

`p?[record[A224796(A328396(n))]]`
-/

namespace A116671.P13324488649588376128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116671.P13324488649588376128

namespace A116671

/-- `p?[record[A224796(A328396(n))]]` -/
def P13324488649588376128.Spec : Prop :=
  ∀ n, P13324488649588376128.a n = A116671 (n + 1)

end A116671

/-! ## A116671.P10484925817852160036

`∩[A000040(n+1), A224796(n+1)]`
-/

namespace A116671.P10484925817852160036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P10484925817852160036

namespace A116671

/-- `∩[A000040(n+1), A224796(n+1)]` -/
def P10484925817852160036.Spec : Prop :=
  ∀ n, (P10484925817852160036.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P3218549288058811518

`∩[A004139(n+1), A224796(n+1)]`
-/

namespace A116671.P3218549288058811518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P3218549288058811518

namespace A116671

/-- `∩[A004139(n+1), A224796(n+1)]` -/
def P3218549288058811518.Spec : Prop :=
  ∀ n, (P3218549288058811518.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P943811155890123192

`∩[A045319(n+1), A224796(n+1)]`
-/

namespace A116671.P943811155890123192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P943811155890123192

namespace A116671

/-- `∩[A045319(n+1), A224796(n+1)]` -/
def P943811155890123192.Spec : Prop :=
  ∀ n, (P943811155890123192.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P16142339065327571424

`∩[A045344(n+1), A224796(n+1)]`
-/

namespace A116671.P16142339065327571424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P16142339065327571424

namespace A116671

/-- `∩[A045344(n+1), A224796(n+1)]` -/
def P16142339065327571424.Spec : Prop :=
  ∀ n, (P16142339065327571424.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P17409658224133949757

`∩[A065091(n+1), A224796(n+1)]`
-/

namespace A116671.P17409658224133949757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P17409658224133949757

namespace A116671

/-- `∩[A065091(n+1), A224796(n+1)]` -/
def P17409658224133949757.Spec : Prop :=
  ∀ n, (P17409658224133949757.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P13810056865388410156

`∩[A065396(n+1), A224796(n+1)]`
-/

namespace A116671.P13810056865388410156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P13810056865388410156

namespace A116671

/-- `∩[A065396(n+1), A224796(n+1)]` -/
def P13810056865388410156.Spec : Prop :=
  ∀ n, (P13810056865388410156.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P15440806939812947684

`∩[A078138(n+1), A224796(n+1)]`
-/

namespace A116671.P15440806939812947684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P15440806939812947684

namespace A116671

/-- `∩[A078138(n+1), A224796(n+1)]` -/
def P15440806939812947684.Spec : Prop :=
  ∀ n, (P15440806939812947684.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P5285012581334553392

`∩[A083249(n+1), A224796(n+1)]`
-/

namespace A116671.P5285012581334553392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P5285012581334553392

namespace A116671

/-- `∩[A083249(n+1), A224796(n+1)]` -/
def P5285012581334553392.Spec : Prop :=
  ∀ n, (P5285012581334553392.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P16506443451965509090

`∩[A108719(n+1), A224796(n+1)]`
-/

namespace A116671.P16506443451965509090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P16506443451965509090

namespace A116671

/-- `∩[A108719(n+1), A224796(n+1)]` -/
def P16506443451965509090.Spec : Prop :=
  ∀ n, (P16506443451965509090.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P1127691859689343142

`∩[A182986(n+1), A224796(n+1)]`
-/

namespace A116671.P1127691859689343142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P1127691859689343142

namespace A116671

/-- `∩[A182986(n+1), A224796(n+1)]` -/
def P1127691859689343142.Spec : Prop :=
  ∀ n, (P1127691859689343142.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P12058320925573832853

`∩[A215848(n+1), A224796(n+1)]`
-/

namespace A116671.P12058320925573832853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P12058320925573832853

namespace A116671

/-- `∩[A215848(n+1), A224796(n+1)]` -/
def P12058320925573832853.Spec : Prop :=
  ∀ n, (P12058320925573832853.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P5657141695082006727

`∩[A224796(n+1), A351398(n+1)]`
-/

namespace A116671.P5657141695082006727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116671.P5657141695082006727

namespace A116671

/-- `∩[A224796(n+1), A351398(n+1)]` -/
def P5657141695082006727.Spec : Prop :=
  ∀ n, (P5657141695082006727.a n : ℤ) = A116671 (n + 1)

end A116671

/-! ## A116671.P15746861174887534041

`record[A006530(A224796(n+5))]`
-/

namespace A116671.P15746861174887534041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A224796 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116671.P15746861174887534041

namespace A116671

/-- `record[A006530(A224796(n+5))]` -/
def P15746861174887534041.Spec : Prop :=
  ∀ n, P15746861174887534041.a n = A116671 (n + 1)

end A116671

/-! ## A116671.P737664036658212903

`filter[A224796(n+1), A010051(#)]`
-/

namespace A116671.P737664036658212903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A116671.P737664036658212903

namespace A116671

/-- `filter[A224796(n+1), A010051(#)]` -/
def P737664036658212903.Spec : Prop :=
  ∀ n, P737664036658212903.a n = A116671 (n + 1)

end A116671

/-! ## A116671.P10727385457211737770

`p?[record[A224796(A133310(n))]]`
-/

namespace A116671.P10727385457211737770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116671.P10727385457211737770

namespace A116671

/-- `p?[record[A224796(A133310(n))]]` -/
def P10727385457211737770.Spec : Prop :=
  ∀ n, P10727385457211737770.a n = A116671 (n + 1)

end A116671

/-! ## A116671.P13334201875994605984

`filter[A224796(n+1), A171387(#)]`
-/

namespace A116671.P13334201875994605984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A116671.P13334201875994605984

namespace A116671

/-- `filter[A224796(n+1), A171387(#)]` -/
def P13334201875994605984.Spec : Prop :=
  ∀ n, P13334201875994605984.a n = A116671 (n + 1)

end A116671

/-! ## A116671.P3209553729240400233

`filter[A224796(n+2), A080339(#)]`
-/

namespace A116671.P3209553729240400233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A116671.P3209553729240400233

namespace A116671

/-- `filter[A224796(n+2), A080339(#)]` -/
def P3209553729240400233.Spec : Prop :=
  ∀ n, P3209553729240400233.a n = A116671 (n + 1)

end A116671

/-!
# A116672: Triangle read by rows in which the binomial transform of the n-th row gives the Euler transform of the n-th diagonal of Pascal's triangle (A007318).

The programs for A116672, there is no canonical definition to state claims against.
-/

/-! ## A116672.P14606350929443203469

`A108069(A185294(n))+A096806(n+1)`
-/

namespace A116672.P14606350929443203469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (A185294 n).toNat + A096806 (n + 1)

end

end A116672.P14606350929443203469

/-! ## A116672.P8168801845602778441

`A096806(n+1)+A044941(A060818(n))`
-/

namespace A116672.P8168801845602778441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096806 (n + 1) + A044941 (A060818 n).toNat

end

end A116672.P8168801845602778441

/-! ## A116672.P4635995802256089610

`A185284(A000961(n+1))+A096806(n+1)`
-/

namespace A116672.P4635995802256089610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000961 (n + 1)).toNat + A096806 (n + 1)

end

end A116672.P4635995802256089610

/-! ## A116672.P16867475796462077047

`A185294(n*A185294(n))+A096806(n+1)`
-/

namespace A116672.P16867475796462077047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 ((n : ℤ) * A185294 n).toNat + A096806 (n + 1)

end

end A116672.P16867475796462077047

/-! ## A116672.P16021327533649396368

`A044941(A060818(n))+A119271(n+1)+A119271(n+2)`
-/

namespace A116672.P16021327533649396368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A060818 n).toNat + (A119271 (n + 1) + A119271 (n + 2))

end

end A116672.P16021327533649396368

/-!
# A116673: Row sums of triangle A116672, in which the binomial transform of the n-th row lists the Euler transform of the n-th sequence in A007318 (Pascal's Triangle).

The programs for A116673, there is no canonical definition to state claims against.
-/

/-! ## A116673.P940776801477381766

`A185714(A341610(3*n+2)+A000051(2*n+1))`
-/

namespace A116673.P940776801477381766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A341610 (3 * n + 2) + A000051 (2 * n + 1)).toNat

end

end A116673.P940776801477381766

/-!
# A116674: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts and having exactly k distinct parts (n>=1, k>=1).

The programs for A116674, there is no canonical definition to state claims against.
-/

/-! ## A116674.P5527124832803463164

`A001222(or(2, A048744(n+2)))`
-/

namespace A116674.P5527124832803463164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 2 (A048744 (n + 2))).toNat

end

end A116674.P5527124832803463164

/-! ## A116674.P12428760973692937419

`gcd(A175858(A199016(n)), A199016(n))`
-/

namespace A116674.P12428760973692937419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175858 (A199016 n).toNat) (A199016 n)

end

end A116674.P12428760973692937419

/-! ## A116674.P13640065875963772116

`A002635(A327662(n+1)+A029579(n))`
-/

namespace A116674.P13640065875963772116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A327662 (n + 1) + A029579 n).toNat

end

end A116674.P13640065875963772116

/-! ## A116674.P341214123654329875

`A326700(A010351(n+1)-A326452(n))`
-/

namespace A116674.P341214123654329875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (A010351 (n + 1) - A326452 n).toNat

end

end A116674.P341214123654329875

/-! ## A116674.P11438611911068724507

`A001222(or(A006356(n), A059321(n+1)))`
-/

namespace A116674.P11438611911068724507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A006356 n) (A059321 (n + 1))).toNat

end

end A116674.P11438611911068724507

/-!
# A116675: Triangle read by rows: T(n,k) is the number of partitions of n into distinct part and having exactly k odd parts (n>=0, k>=0).

The programs for A116675, there is no canonical definition to state claims against.
-/

/-! ## A116675.P4006036570823644540

`and(A011794(A144891(n+1)), A191305(n))`
-/

namespace A116675.P4006036570823644540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011794 (A144891 (n + 1)).toNat) (A191305 n)

end

end A116675.P4006036570823644540

/-! ## A116675.P9310414238966428611

`A069850(A295987(n)+A247309(2*(n+2)))`
-/

namespace A116675.P9310414238966428611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A295987 n + A247309 (2 * (n + 2))).toNat

end

end A116675.P9310414238966428611

/-! ## A116675.P7816920423480939467

`and(A002487(A007486(n+1)), A023134(n+1))`
-/

namespace A116675.P7816920423480939467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 (A007486 (n + 1)).toNat) (A023134 (n + 1))

end

end A116675.P7816920423480939467

/-! ## A116675.P14346716255748540365

`A127327(A000930(n)-A071675(n+1))`
-/

namespace A116675.P14346716255748540365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127327 (A000930 n - A071675 (n + 1)).toNat

end

end A116675.P14346716255748540365

/-!
# A116676: Number of odd parts in all partitions of n into distinct parts.

The programs for A116676, there is no canonical definition to state claims against.
-/

/-! ## A116676.P17480208529005494784

`A067588(n)-(A116680(n)+A090867(n))`
-/

namespace A116676.P17480208529005494784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A116680 n + A090867 n)

end

end A116676.P17480208529005494784

/-! ## A116676.P12429971269674307956

`A067588(n)-2*(A090867(n)-A341496(n))`
-/

namespace A116676.P12429971269674307956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - 2 * (A090867 n - A341496 n)

end

end A116676.P12429971269674307956

/-! ## A116676.P12918526765224126950

`A067588(n)-(A116680(n)+A305082(n)-A067588(n))`
-/

namespace A116676.P12918526765224126950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A116680 n + (A305082 n - A067588 n))

end

end A116676.P12918526765224126950

/-! ## A116676.P4025713609788175548

`A238131(n)+A238132(n)-A116680(n)`
-/

namespace A116676.P4025713609788175548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n + (A238132 n - A116680 n)

end

end A116676.P4025713609788175548

/-! ## A116676.P17061163766921398073

`A067588(n)-2*A341497(n)`
-/

namespace A116676.P17061163766921398073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - 2 * A341497 n

end

end A116676.P17061163766921398073

/-! ## A116676.P4369316068907805061

`A067588(n)-(A341497(n)+A090867(n)-A341496(n))`
-/

namespace A116676.P4369316068907805061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A341497 n + (A090867 n - A341496 n))

end

end A116676.P4369316068907805061

/-! ## A116676.P13244529354651767787

`A067588(n)-2*(A341494(n)+A341495(n)-A341496(n))`
-/

namespace A116676.P13244529354651767787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - 2 * (A341494 n + (A341495 n - A341496 n))

end

end A116676.P13244529354651767787

/-! ## A116676.P2737512274671423830

`A210485(∑[n]+1)-A116680(n)`
-/

namespace A116676.P2737512274671423830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A116680 n

end

end A116676.P2737512274671423830

/-! ## A116676.P8103583527563384572

`A213177(A000124(n))-A116680(n)`
-/

namespace A116676.P8103583527563384572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 n).toNat - A116680 n

end

end A116676.P8103583527563384572

/-! ## A116676.P3200411579691964146

`A327622(A034856(n+1))-A116680(n)`
-/

namespace A116676.P3200411579691964146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A034856 (n + 1)).toNat - A116680 n

end

end A116676.P3200411579691964146

/-!
# A116679: Triangle read by rows: T(n,k) is the number of partitions of n into distinct part and having exactly k even parts (n >= 0, k >= 0).

The programs for A116679, there is no canonical definition to state claims against.
-/

/-! ## A116679.P9850983222543250699

`gcd(A093997(A093970(n)), A098593(n+2))`
-/

namespace A116679.P9850983222543250699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093997 (A093970 n).toNat) (A098593 (n + 2))

end

end A116679.P9850983222543250699

/-! ## A116679.P17147044456824328465

`A005087(or(A023961(n+2), A026007(n)))`
-/

namespace A116679.P17147044456824328465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.lor (A023961 (n + 2)) (A026007 n)).toNat

end

end A116679.P17147044456824328465

/-! ## A116679.P6146405221747131013

`gcd(A112467(n+2), A130161(A089072(n+1)))`
-/

namespace A116679.P6146405221747131013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 (n + 2)) (A130161 (A089072 (n + 1)).toNat)

end

end A116679.P6146405221747131013

/-! ## A116679.P14691763580179504339

`gcd(A001222(A003179(n)), A165253(n))`
-/

namespace A116679.P14691763580179504339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A003179 n).toNat) (A165253 n)

end

end A116679.P14691763580179504339

/-! ## A116679.P4944017614392483278

`gcd(A001221(A157133(n)), A153764(n))`
-/

namespace A116679.P4944017614392483278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A157133 n).toNat) (A153764 n)

end

end A116679.P4944017614392483278

/-!
# A116680: Number of even parts in all partitions of n into distinct parts.

The programs for A116680, there is no canonical definition to state claims against.
-/

/-! ## A116680.P3248522218178901781

`A090867(n)-2*A341496(n)`
-/

namespace A116680.P3248522218178901781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n - 2 * A341496 n

end

end A116680.P3248522218178901781

/-! ## A116680.P7825028205131913366

`A067588(n)-(A116676(n)+A090867(n))`
-/

namespace A116680.P7825028205131913366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A116676 n + A090867 n)

end

end A116680.P7825028205131913366

/-! ## A116680.P7400633750337274408

`A341497(n)-A341496(n)`
-/

namespace A116680.P7400633750337274408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 n - A341496 n

end

end A116680.P7400633750337274408

/-! ## A116680.P13833423479655794482

`abs(A341494(n)-A341495(n))`
-/

namespace A116680.P13833423479655794482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341494 n - A341495 n|

end

end A116680.P13833423479655794482

/-! ## A116680.P16830013956553513227

`2*A341497(n)-A090867(n)`
-/

namespace A116680.P16830013956553513227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341497 n - A090867 n

end

end A116680.P16830013956553513227

/-!
# A116681: Triangle read by rows: T(n,k) is the number of partitions of n into distinct parts, in which the sum of the odd parts is k (n>=0, 0<=k<=n).

The programs for A116681, there is no canonical definition to state claims against.
-/

/-! ## A116681.P15601798599404564677

`A000700(A002262(n))*A035457(A025581(n))`
-/

namespace A116681.P15601798599404564677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A002262 n).toNat * A035457 (A025581 n).toNat

end

end A116681.P15601798599404564677

/-! ## A116681.P747485542395813823

`A025435(A057979(n)*A282252(n))`
-/

namespace A116681.P747485542395813823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A057979 n * A282252 n).toNat

end

end A116681.P747485542395813823

/-! ## A116681.P12409613024512700441

`A388713(A338796(3*n+5)-A388713(n))`
-/

namespace A116681.P12409613024512700441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388713 (A338796 (3 * n + 5) - A388713 n).toNat

end

end A116681.P12409613024512700441

/-! ## A116681.P10927658376584714138

`A171588(A001158(n+1)+2)`
-/

namespace A116681.P10927658376584714138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A001158 (n + 1) + 2).toNat

end

end A116681.P10927658376584714138

/-! ## A116681.P12214658137522149936

`comp[∑[4*n]]%2-A055641(A057196(2*n+1))`
-/

namespace A116681.P12214658137522149936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) - A055641 (A057196 (2 * n + 1)).toNat

end

end A116681.P12214658137522149936

/-!
# A116682: Sum of the odd parts in all partitions of n into distinct parts.

The programs for A116682, there is no canonical definition to state claims against.
-/

/-! ## A116682.P17565763904680562494

`A066189(n)-A116684(n)`
-/

namespace A116682.P17565763904680562494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066189 n - A116684 n

end

end A116682.P17565763904680562494

/-! ## A116682.P8969870870657370050

`n*A000009(n)-A116684(n)`
-/

namespace A116682.P8969870870657370050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000009 n - A116684 n

end

end A116682.P8969870870657370050

/-! ## A116682.P7582609890788639002

`A239292(n)+A116684(n)`
-/

namespace A116682.P7582609890788639002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239292 n + A116684 n

end

end A116682.P7582609890788639002

/-! ## A116682.P9067198404776046655

`(A239292(n)+A066189(n))/2`
-/

namespace A116682.P9067198404776046655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239292 n + A066189 n : ℚ) / 2

end

end A116682.P9067198404776046655

/-! ## A116682.P17122586944063371761

`(A239292(n)+A066189(n))*root(4, A000035(2*n)-2)`
-/

namespace A116682.P17122586944063371761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239292 n + A066189 n : ℝ) * (4 : ℝ) ^ (1 / (A000035 (2 * n) - 2 : ℝ))

end

end A116682.P17122586944063371761

/-!
# A116683: Triangle read by rows: T(n,k) is the number of partitions of n into distinct parts, in which the sum of the even parts is k (n>=0, 0<=k<=n).

The programs for A116683, there is no canonical definition to state claims against.
-/

/-! ## A116683.P796046904268683017

`A287674(lcm(∑{d}[n+1, #], A174457(n+1)))`
-/

namespace A116683.P796046904268683017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A174457 (n + 1)))

end

end A116683.P796046904268683017

/-! ## A116683.P9799112046174791789

`A209198(or(A209231(n), A209246(n+1)))`
-/

namespace A116683.P9799112046174791789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209198 (Int.lor (A209231 n) (A209246 (n + 1))).toNat

end

end A116683.P9799112046174791789

/-! ## A116683.P15591705484606433849

`A073345(n)^A073345(A248644(2*n+5))`
-/

namespace A116683.P15591705484606433849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073345 n : ℚ) ^ (A073345 (A248644 (2 * n + 5)).toNat : ℤ)

end

end A116683.P15591705484606433849

/-! ## A116683.P14917993472708196087

`A193496(A044158(n+2))`
-/

namespace A116683.P14917993472708196087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193496 (A044158 (n + 2)).toNat

end

end A116683.P14917993472708196087

/-!
# A116684: Sum of the even parts in all partitions of n into distinct parts.

The programs for A116684, there is no canonical definition to state claims against.
-/

/-! ## A116684.P17695442274126073493

`A066189(n)-A116682(n)`
-/

namespace A116684.P17695442274126073493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066189 n - A116682 n

end

end A116684.P17695442274126073493

/-! ## A116684.P10036368382095500734

`n*A000009(n)-A116682(n)`
-/

namespace A116684.P10036368382095500734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000009 n - A116682 n

end

end A116684.P10036368382095500734

/-! ## A116684.P644588932956944060

`A116682(n)-A239292(n)`
-/

namespace A116684.P644588932956944060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116682 n - A239292 n

end

end A116684.P644588932956944060

/-! ## A116684.P12144362196497779434

`(A066189(n)-A239292(n))/2`
-/

namespace A116684.P12144362196497779434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066189 n - A239292 n : ℚ) / 2

end

end A116684.P12144362196497779434

/-! ## A116684.P2464691777689579209

`A004525(A066189(n)-A239292(n))`
-/

namespace A116684.P2464691777689579209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A066189 n - A239292 n).toNat

end

end A116684.P2464691777689579209

/-!
# A116685: Triangle read by rows: T(n,k) is number of partitions of n that have k parts smaller than the largest part (n>=1, k>=0).

The programs for A116685, there is no canonical definition to state claims against.
-/

/-! ## A116685.P2966253782045821268

`A097364(A080036(n)-n²%(n+1))`
-/

namespace A116685.P2966253782045821268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A080036 n - ((n ^ 2 % (n + 1) : ℕ) : ℤ)).toNat

end

end A116685.P2966253782045821268

/-! ## A116685.P16059056899540552238

`A097364(A123578(A028310(n))+n)`
-/

namespace A116685.P16059056899540552238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A123578 (A028310 n).toNat + (n : ℤ)).toNat

end

end A116685.P16059056899540552238

/-! ## A116685.P11102644246438828934

`A097364(A080036(n)-A057427(n))`
-/

namespace A116685.P11102644246438828934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A080036 n - A057427 n).toNat

end

end A116685.P11102644246438828934

/-! ## A116685.P2471258994903414671

`A097364(A007401(n+1)-A073424(n))`
-/

namespace A116685.P2471258994903414671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A007401 (n + 1) - A073424 n).toNat

end

end A116685.P2471258994903414671

/-! ## A116685.P345419915101672444

`A097364(A123108(2*n)+A000194(2*n))`
-/

namespace A116685.P345419915101672444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A123108 (2 * n) + A000194 (2 * n)).toNat

end

end A116685.P345419915101672444

/-! ## A116685.P602664982951759486

`A097364(A080036(n)-A167407(n))`
-/

namespace A116685.P602664982951759486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A080036 n - A167407 n).toNat

end

end A116685.P602664982951759486

/-! ## A116685.P14399199109890333362

`A097364(A093995(n+1)-A056943(n))`
-/

namespace A116685.P14399199109890333362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A093995 (n + 1) - A056943 n).toNat

end

end A116685.P14399199109890333362

/-! ## A116685.P16275521247385942144

`A097364(A134478(∑[n])+A123578(n))`
-/

namespace A116685.P16275521247385942144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j) + A123578 n).toNat

end

end A116685.P16275521247385942144

/-!
# A116686: Total number of parts smaller than the largest part, in all partitions of n.

The programs for A116686, there is no canonical definition to state claims against.
-/

/-! ## A116686.P12950161057863693868

`A006128(n+1)-A046746(n+1)`
-/

namespace A116686.P12950161057863693868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A046746 (n + 1)

end

end A116686.P12950161057863693868

/-! ## A116686.P3032132123321346487

`A211870(n+1)+A211881(n+1)`
-/

namespace A116686.P3032132123321346487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211870 (n + 1) + A211881 (n + 1)

end

end A116686.P3032132123321346487

/-! ## A116686.P17590587445506983482

`A182707(n+1)-A196087(n+1)`
-/

namespace A116686.P17590587445506983482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - A196087 (n + 1)

end

end A116686.P17590587445506983482

/-! ## A116686.P7341623080571877736

`A220477(n+1)-A182629(n+1)`
-/

namespace A116686.P7341623080571877736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (n + 1) - A182629 (n + 1)

end

end A116686.P7341623080571877736

/-! ## A116686.P9374556112218309714

`A006128(n+1)+A196039(n)-A196039(n+1)`
-/

namespace A116686.P9374556112218309714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A196039 n - A196039 (n + 1))

end

end A116686.P9374556112218309714

/-! ## A116686.P2028673203505642316

`A006128(n+1)-(A182629(n+1)+A000203(n+1))`
-/

namespace A116686.P2028673203505642316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A182629 (n + 1) + A000203 (n + 1))

end

end A116686.P2028673203505642316

/-! ## A116686.P2395349587370069187

`A000203(n+1)+A220477(n+1)-A046746(n+1)`
-/

namespace A116686.P2395349587370069187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A220477 (n + 1) - A046746 (n + 1))

end

end A116686.P2395349587370069187

/-! ## A116686.P15912839350371365461

`A006128(n+1)-(A222045(n+1)+A222044(n+1))`
-/

namespace A116686.P15912839350371365461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A222045 (n + 1) + A222044 (n + 1))

end

end A116686.P15912839350371365461

/-! ## A116686.P5921094032109409874

`A092269(n+1)+A182984(n+1)-A046746(n+1)`
-/

namespace A116686.P5921094032109409874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A182984 (n + 1) - A046746 (n + 1))

end

end A116686.P5921094032109409874

/-! ## A116686.P10291512295277440645

`A182977(n+1)+A182978(n+1)-A046746(n+1)`
-/

namespace A116686.P10291512295277440645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 (n + 1) + (A182978 (n + 1) - A046746 (n + 1))

end

end A116686.P10291512295277440645

/-! ## A116686.P2429130509105110507

`A222047(n+1)+A222048(n+1)-A046746(n+1)`
-/

namespace A116686.P2429130509105110507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 (n + 1) + (A222048 (n + 1) - A046746 (n + 1))

end

end A116686.P2429130509105110507

/-! ## A116686.P1743880500506645743

`A092269(n+1)+A220477(n+1)-A182978(n+1)`
-/

namespace A116686.P1743880500506645743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220477 (n + 1) - A182978 (n + 1))

end

end A116686.P1743880500506645743

/-! ## A116686.P5284446506419944181

`A182977(n+1)+A220477(n+1)-A182984(n+1)`
-/

namespace A116686.P5284446506419944181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 (n + 1) + (A220477 (n + 1) - A182984 (n + 1))

end

end A116686.P5284446506419944181

/-! ## A116686.P15465072404258961505

`A211870(n+1)+A222048(n+1)-A222045(n+1)`
-/

namespace A116686.P15465072404258961505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211870 (n + 1) + (A222048 (n + 1) - A222045 (n + 1))

end

end A116686.P15465072404258961505

/-! ## A116686.P18178862052089909820

`A211881(n+1)+A222047(n+1)-A222044(n+1)`
-/

namespace A116686.P18178862052089909820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211881 (n + 1) + (A222047 (n + 1) - A222044 (n + 1))

end

end A116686.P18178862052089909820

/-!
# A116687: Triangle read by rows: T(n,k) is the number of partitions of n for which the sum of the parts that are smaller than the largest part is equal to k (n>=1, k>=0).

The programs for A116687, there is no canonical definition to state claims against.
-/

/-! ## A116687.P18436096556594976019

`gcd(A263111(A001045(n)), A349982(n))`
-/

namespace A116687.P18436096556594976019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263111 (A001045 n).toNat) (A349982 n)

end

end A116687.P18436096556594976019

/-! ## A116687.P16152587727080001143

`gcd(A053767(A108918(n+1)), A147903(n+1))`
-/

namespace A116687.P16152587727080001143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053767 (A108918 (n + 1)).toNat) (A147903 (n + 1))

end

end A116687.P16152587727080001143

/-! ## A116687.P13891350721202268539

`A337565(A015723(n+1))+A010060(n)`
-/

namespace A116687.P13891350721202268539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (A015723 (n + 1)).toNat + A010060 n

end

end A116687.P13891350721202268539

/-! ## A116687.P7132875228769279045

`A056062(A000045(n)%A226689(n+1))`
-/

namespace A116687.P7132875228769279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (Int.tmod (A000045 n) (A226689 (n + 1))).toNat

end

end A116687.P7132875228769279045

/-! ## A116687.P4045667933003871360

`A257993(floor(A163901(3*n+1)/A098492(2*n+3))+1)`
-/

namespace A116687.P4045667933003871360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (⌊(A163901 (3 * n + 1) : ℚ) / (A098492 (2 * n + 3) : ℚ)⌋ + 1).toNat

end

end A116687.P4045667933003871360

/-!
# A116688: Sum over all partitions of n of the sum of the parts that are smaller than the largest part.

The programs for A116688, there is no canonical definition to state claims against.
-/

/-! ## A116688.P3186071232402998323

`(n+1)*A000041(n+1)-A092321(n+1)`
-/

namespace A116688.P3186071232402998323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A092321 (n + 1)

end

end A116688.P3186071232402998323

/-! ## A116688.P11355810564198863498

`A066186(n+1)-A092321(n+1)`
-/

namespace A116688.P11355810564198863498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A092321 (n + 1)

end

end A116688.P11355810564198863498

/-! ## A116688.P8380151278460358723

`∑[A138879(n+1)-Δ[A092321(n)]]`
-/

namespace A116688.P8380151278460358723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116688.P8380151278460358723

/-! ## A116688.P15565200415347669042

`∑[A138879(n+1)]-A092321(n+1)`
-/

namespace A116688.P15565200415347669042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092321 (n + 1)

end

end A116688.P15565200415347669042

/-! ## A116688.P15545881220005406551

`record[A182702(n+1)]-A092321(n+1)`
-/

namespace A116688.P15545881220005406551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A092321 (n + 1)

end

end A116688.P15545881220005406551

/-!
# A116689: Partial sums of dodecahedral numbers (A006566).

The programs for A116689, the canonical program `A116689.P16786107259733898041` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116689 has offset 0).

The definition of A116689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116689.P16786107259733898041

`C(n*(3*n+1)/2, 2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116689

/-- `C(n*(3*n+1)/2, 2)` -/
def P16786107259733898041.Spec : Prop :=
  ∀ n, (P16786107259733898041.a n : ℤ) = A116689 n

theorem P16786107259733898041.correct : P16786107259733898041.Spec := by
  intro n
  simp only [A116689]

end A116689

/-! ## A116689.P16511891703578820979

`ogf((x+16x^2+10x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A116689.P16511891703578820979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 16, 10] [1, -5, 10, -10, 5, -1] n

end

end A116689.P16511891703578820979

namespace A116689

/-- `ogf((x+16x^2+10x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16511891703578820979.Spec : Prop :=
  ∀ n, P16511891703578820979.a n = A116689 n

end A116689

/-! ## A116689.P13930642029152105787

`n*(n+1)*(3*n+1)*(3*n-2)/8`
-/

namespace A116689.P13930642029152105787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) * (3 * n + 1) : ℤ) * ((3 * n : ℤ) - 2) : ℚ) / 8

end

end A116689.P13930642029152105787

namespace A116689

/-- `n*(n+1)*(3*n+1)*(3*n-2)/8` -/
def P13930642029152105787.Spec : Prop :=
  ∀ n, P13930642029152105787.a n = (A116689 n : ℚ)

end A116689

/-! ## A116689.P13649007721254286919

`∑[C(3*n, 3)]`
-/

namespace A116689.P13649007721254286919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116689.P13649007721254286919

namespace A116689

/-- `∑[C(3*n, 3)]` -/
def P13649007721254286919.Spec : Prop :=
  ∀ n, (P13649007721254286919.a n : ℤ) = A116689 n

end A116689

/-! ## A116689.P17394049852095461040

`a(n-1)+C(3*n, 3)` with `a(0)=0`
-/

namespace A116689.P17394049852095461040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (3 * n) 3

end

end A116689.P17394049852095461040

namespace A116689

/-- `a(n-1)+C(3*n, 3)` -/
def P17394049852095461040.Spec : Prop :=
  ∀ n, (P17394049852095461040.a n : ℤ) = A116689 n

end A116689

/-! ## A116689.P17391774019959980583

`∑[A006566(n)]`
-/

namespace A116689.P17391774019959980583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116689.P17391774019959980583

namespace A116689

/-- `∑[A006566(n)]` -/
def P17391774019959980583.Spec : Prop :=
  ∀ n, P17391774019959980583.a n = A116689 n

end A116689

/-! ## A116689.P15951942346791010060

`∑[n*(A117625(n)-n)]`
-/

namespace A116689.P15951942346791010060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A117625 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116689.P15951942346791010060

namespace A116689

/-- `∑[n*(A117625(n)-n)]` -/
def P15951942346791010060.Spec : Prop :=
  ∀ n, P15951942346791010060.a n = A116689 n

end A116689

/-! ## A116689.P15135368301880922824

`∑[∑[A093485(n)]-A093485(n)]`
-/

namespace A116689.P15135368301880922824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A093485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116689.P15135368301880922824

namespace A116689

/-- `∑[∑[A093485(n)]-A093485(n)]` -/
def P15135368301880922824.Spec : Prop :=
  ∀ n, P15135368301880922824.a n = A116689 n

end A116689

/-! ## A116689.P3796884179109702547

`∑[A007290(3*n)/2]`
-/

namespace A116689.P3796884179109702547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007290 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116689.P3796884179109702547

namespace A116689

/-- `∑[A007290(3*n)/2]` -/
def P3796884179109702547.Spec : Prop :=
  ∀ n, P3796884179109702547.a n = (A116689 n : ℚ)

end A116689

/-! ## A116689.P5463225447154664755

`A216172(A008486(n))`
-/

namespace A116689.P5463225447154664755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (A008486 n).toNat

end

end A116689.P5463225447154664755

namespace A116689

/-- `A216172(A008486(n))` -/
def P5463225447154664755.Spec : Prop :=
  ∀ n, P5463225447154664755.a n = A116689 n

end A116689

/-! ## A116689.P13730630573809198404

`A210631(A016921(n+1))`
-/

namespace A116689.P13730630573809198404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (A016921 (n + 1)).toNat

end

end A116689.P13730630573809198404

namespace A116689

/-- `A210631(A016921(n+1))` -/
def P13730630573809198404.Spec : Prop :=
  ∀ n, P13730630573809198404.a n = A116689 n

end A116689

/-! ## A116689.P7686397618262541910

`A210631(A271114(n+1))`
-/

namespace A116689.P7686397618262541910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (A271114 (n + 1)).toNat

end

end A116689.P7686397618262541910

namespace A116689

/-- `A210631(A271114(n+1))` -/
def P7686397618262541910.Spec : Prop :=
  ∀ n, P7686397618262541910.a n = A116689 n

end A116689

/-! ## A116689.P12430867979149818300

`A210631(A308196(n+1))`
-/

namespace A116689.P12430867979149818300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (A308196 (n + 1)).toNat

end

end A116689.P12430867979149818300

namespace A116689

/-- `A210631(A308196(n+1))` -/
def P12430867979149818300.Spec : Prop :=
  ∀ n, P12430867979149818300.a n = A116689 n

end A116689

/-! ## A116689.P2196922041192909223

`A000217(n)*A005476(n)-A000217(A000217(n))`
-/

namespace A116689.P2196922041192909223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A005476 n - A000217 (A000217 n).toNat

end

end A116689.P2196922041192909223

namespace A116689

/-- `A000217(n)*A005476(n)-A000217(A000217(n))` -/
def P2196922041192909223.Spec : Prop :=
  ∀ n, P2196922041192909223.a n = A116689 n

end A116689

/-! ## A116689.P8392148568229298436

`A000217(A000217(n))-A000217(n)*A110325(n)`
-/

namespace A116689.P8392148568229298436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat - A000217 n * A110325 n

end

end A116689.P8392148568229298436

namespace A116689

/-- `A000217(A000217(n))-A000217(n)*A110325(n)` -/
def P8392148568229298436.Spec : Prop :=
  ∀ n, P8392148568229298436.a n = A116689 n

end A116689

/-! ## A116689.P16161495657690529332

`A000217(A258087(2*n))`
-/

namespace A116689.P16161495657690529332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A258087 (2 * n)).toNat

end

end A116689.P16161495657690529332

namespace A116689

/-- `A000217(A258087(2*n))` -/
def P16161495657690529332.Spec : Prop :=
  ∀ n, P16161495657690529332.a n = A116689 n

end A116689

/-! ## A116689.P3714892611812367749

`A000217(A272058(2*n))`
-/

namespace A116689.P3714892611812367749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A272058 (2 * n)).toNat

end

end A116689.P3714892611812367749

namespace A116689

/-- `A000217(A272058(2*n))` -/
def P3714892611812367749.Spec : Prop :=
  ∀ n, P3714892611812367749.a n = A116689 n

end A116689

/-! ## A116689.P7688281414151978143

`A000217(A134479(n)-(n+1))`
-/

namespace A116689.P7688281414151978143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A134479 n - (n + 1 : ℤ)).toNat

end

end A116689.P7688281414151978143

namespace A116689

/-- `A000217(A134479(n)-(n+1))` -/
def P7688281414151978143.Spec : Prop :=
  ∀ n, P7688281414151978143.a n = A116689 n

end A116689

/-! ## A116689.P7751684610650993005

`A000217(A134479(n)-1-n)`
-/

namespace A116689.P7751684610650993005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A134479 n - 1 - (n : ℤ)).toNat

end

end A116689.P7751684610650993005

namespace A116689

/-- `A000217(A134479(n)-1-n)` -/
def P7751684610650993005.Spec : Prop :=
  ∀ n, P7751684610650993005.a n = A116689 n

end A116689

/-! ## A116689.P18309943687789414420

`A000217(A000326(n+1))-A005915(n)`
-/

namespace A116689.P18309943687789414420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000326 (n + 1)).toNat - A005915 n

end

end A116689.P18309943687789414420

namespace A116689

/-- `A000217(A000326(n+1))-A005915(n)` -/
def P18309943687789414420.Spec : Prop :=
  ∀ n, P18309943687789414420.a n = A116689 n

end A116689

/-!
# A116690: a(n) = C(n,8) + C(n,7) + C(n,6) + C(n,5) + C(n,4) + C(n,3) + C(n,2) + C(n,1).

The programs for A116690, the canonical program `A116690.P3043928866882249951` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116690 has offset 0).

The definition of A116690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 8)+C(n, 7)+C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+C(n, 1)` (program `A116690.P3043928866882249951`, by `A116690.P3043928866882249951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116690.P3043928866882249951

`C(n, 8)+C(n, 7)+C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+C(n, 1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116690

/-- `C(n, 8)+C(n, 7)+C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+C(n, 1)` -/
def P3043928866882249951.Spec : Prop :=
  ∀ n, (P3043928866882249951.a n : ℤ) = A116690 n

theorem P3043928866882249951.correct : P3043928866882249951.Spec := by
  intro n
  simp only [A116690]

end A116690

/-! ## A116690.P13274799334925785522

`C(n, 8)+C(n, 7)+C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+n`
-/

namespace A116690.P13274799334925785522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8 + Nat.choose n 7 + Nat.choose n 6 + Nat.choose n 5 + Nat.choose n 4 + Nat.choose n 3 + Nat.choose n 2 + n

end

end A116690.P13274799334925785522

namespace A116690

/-- `C(n, 8)+C(n, 7)+C(n, 6)+C(n, 5)+C(n, 4)+C(n, 3)+C(n, 2)+n` -/
def P13274799334925785522.Spec : Prop :=
  ∀ n, (P13274799334925785522.a n : ℤ) = A116690 n

theorem P13274799334925785522.correct : P13274799334925785522.Spec := by
  intro n
  simp only [A116690, Nat.add_sub_cancel, A116690.P13274799334925785522.a, A116690.P3043928866882249951.a, SequenceMachineLib.memo_apply]
  try simp

end A116690

/-! ## A116690.P4163673353666229750

`Δ[A362197(n)]`
-/

namespace A116690.P4163673353666229750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116690.P4163673353666229750

namespace A116690

/-- `Δ[A362197(n)]` -/
def P4163673353666229750.Spec : Prop :=
  ∀ n, P4163673353666229750.a n = A116690 n

end A116690

/-! ## A116690.P7613515839642313942

`A008861(n)-1`
-/

namespace A116690.P7613515839642313942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n - 1

end

end A116690.P7613515839642313942

namespace A116690

/-- `A008861(n)-1` -/
def P7613515839642313942.Spec : Prop :=
  ∀ n, P7613515839642313942.a n = A116690 n

end A116690

/-! ## A116690.P11727016441739157364

`Δ[A008862(n)]-1`
-/

namespace A116690.P11727016441739157364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116690.P11727016441739157364

namespace A116690

/-- `Δ[A008862(n)]-1` -/
def P11727016441739157364.Spec : Prop :=
  ∀ n, P11727016441739157364.a n = A116690 n

end A116690

/-! ## A116690.P5655804222798237420

`A362196(n)-1+n`
-/

namespace A116690.P5655804222798237420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n - 1 + (n : ℤ)

end

end A116690.P5655804222798237420

namespace A116690

/-- `A362196(n)-1+n` -/
def P5655804222798237420.Spec : Prop :=
  ∀ n, P5655804222798237420.a n = A116690 n

end A116690

/-! ## A116690.P15050347348507148349

`A362196(n)+A023443(n)`
-/

namespace A116690.P15050347348507148349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n + A023443 n

end

end A116690.P15050347348507148349

namespace A116690

/-- `A362196(n)+A023443(n)` -/
def P15050347348507148349.Spec : Prop :=
  ∀ n, P15050347348507148349.a n = A116690 n

end A116690

/-! ## A116690.P8632861177824385059

`A008862(n)-A115205(n)`
-/

namespace A116690.P8632861177824385059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n - A115205 n

end

end A116690.P8632861177824385059

namespace A116690

/-- `A008862(n)-A115205(n)` -/
def P8632861177824385059.Spec : Prop :=
  ∀ n, P8632861177824385059.a n = A116690 n

end A116690

/-! ## A116690.P11873353783759360150

`A362196(n)-A024000(n)`
-/

namespace A116690.P11873353783759360150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n - A024000 n

end

end A116690.P11873353783759360150

namespace A116690

/-- `A362196(n)-A024000(n)` -/
def P11873353783759360150.Spec : Prop :=
  ∀ n, P11873353783759360150.a n = A116690 n

end A116690

/-! ## A116690.P15483917215236525779

`∑[A008860(n)]-A008860(n)`
-/

namespace A116690.P15483917215236525779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008860 n

end

end A116690.P15483917215236525779

namespace A116690

/-- `∑[A008860(n)]-A008860(n)` -/
def P15483917215236525779.Spec : Prop :=
  ∀ n, P15483917215236525779.a n = A116690 n

end A116690

/-! ## A116690.P13051863117338333871

`∑[A008861(n)]%A008862(n)`
-/

namespace A116690.P13051863117338333871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008862 n)

end

end A116690.P13051863117338333871

namespace A116690

/-- `∑[A008861(n)]%A008862(n)` -/
def P13051863117338333871.Spec : Prop :=
  ∀ n, P13051863117338333871.a n = A116690 n

end A116690

/-! ## A116690.P11237142677276178801

`A362197(n+1)-A362197(n)`
-/

namespace A116690.P11237142677276178801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 (n + 1) - A362197 n

end

end A116690.P11237142677276178801

namespace A116690

/-- `A362197(n+1)-A362197(n)` -/
def P11237142677276178801.Spec : Prop :=
  ∀ n, P11237142677276178801.a n = A116690 n

end A116690

/-! ## A116690.P15497919428521015510

`A008862(n+1)-(A008862(n)+1)`
-/

namespace A116690.P15497919428521015510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 (n + 1) - (A008862 n + 1)

end

end A116690.P15497919428521015510

namespace A116690

/-- `A008862(n+1)-(A008862(n)+1)` -/
def P15497919428521015510.Spec : Prop :=
  ∀ n, P15497919428521015510.a n = A116690 n

end A116690

/-! ## A116690.P690202882996709457

`A188559(n+1)-(A188558(n+1)+1)`
-/

namespace A116690.P690202882996709457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - (A188558 (n + 1) + 1)

end

end A116690.P690202882996709457

namespace A116690

/-- `A188559(n+1)-(A188558(n+1)+1)` -/
def P690202882996709457.Spec : Prop :=
  ∀ n, P690202882996709457.a n = A116690 n

end A116690

/-! ## A116690.P11358699416236473888

`Δ[Δ[A008863(n)]]-1`
-/

namespace A116690.P11358699416236473888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116690.P11358699416236473888

namespace A116690

/-- `Δ[Δ[A008863(n)]]-1` -/
def P11358699416236473888.Spec : Prop :=
  ∀ n, P11358699416236473888.a n = A116690 n

end A116690

/-! ## A116690.P5834641568517146885

`Δ[Δ[Δ[A219531(n)]]]-1`
-/

namespace A116690.P5834641568517146885
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116690.P5834641568517146885

namespace A116690

/-- `Δ[Δ[Δ[A219531(n)]]]-1` -/
def P5834641568517146885.Spec : Prop :=
  ∀ n, P5834641568517146885.a n = A116690 n

end A116690

/-! ## A116690.P11114592379017603179

`A000225(n)-A035041(n)`
-/

namespace A116690.P11114592379017603179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A035041 n

end

end A116690.P11114592379017603179

namespace A116690

/-- `A000225(n)-A035041(n)` -/
def P11114592379017603179.Spec : Prop :=
  ∀ n, P11114592379017603179.a n = A116690 n

end A116690

/-! ## A116690.P2296644361790942339

`A000079(n)-(A035041(n)+1)`
-/

namespace A116690.P2296644361790942339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A035041 n + 1)

end

end A116690.P2296644361790942339

namespace A116690

/-- `A000079(n)-(A035041(n)+1)` -/
def P2296644361790942339.Spec : Prop :=
  ∀ n, P2296644361790942339.a n = A116690 n

end A116690

/-! ## A116690.P15676229231804167956

`A036563(n)+2-A035041(n)`
-/

namespace A116690.P15676229231804167956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n + (2 - A035041 n)

end

end A116690.P15676229231804167956

namespace A116690

/-- `A036563(n)+2-A035041(n)` -/
def P15676229231804167956.Spec : Prop :=
  ∀ n, P15676229231804167956.a n = A116690 n

end A116690

/-! ## A116690.P9518956473352360689

`A000295(n)+n-A035041(n)`
-/

namespace A116690.P9518956473352360689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + ((n : ℤ) - A035041 n)

end

end A116690.P9518956473352360689

namespace A116690

/-- `A000295(n)+n-A035041(n)` -/
def P9518956473352360689.Spec : Prop :=
  ∀ n, P9518956473352360689.a n = A116690 n

end A116690

/-!
# A116694: Array read by antidiagonals: number of ways of dividing an n X m rectangle into integer-sided rectangles.

The programs for A116694, there is no canonical definition to state claims against.
-/

/-! ## A116694.P8398034405482372724

`A285007(A081579(n))+A222659(n+1)`
-/

namespace A116694.P8398034405482372724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A081579 n).toNat + A222659 (n + 1)

end

end A116694.P8398034405482372724

/-! ## A116694.P5952719112844665594

`A325649(A126770(n))+A222659(n+1)`
-/

namespace A116694.P5952719112844665594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325649 (A126770 n).toNat + A222659 (n + 1)

end

end A116694.P5952719112844665594

/-! ## A116694.P10274534612809338847

`A222659(n+1)+A102679(A222608(n+1))`
-/

namespace A116694.P10274534612809338847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222659 (n + 1) + A102679 (A222608 (n + 1)).toNat

end

end A116694.P10274534612809338847

/-! ## A116694.P13364171855741867193

`A327695(A290824(n))+A222659(n+1)`
-/

namespace A116694.P13364171855741867193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (A290824 n).toNat + A222659 (n + 1)

end

end A116694.P13364171855741867193

/-! ## A116694.P12108294655345456123

`A033862(A222659(n+1))`
-/

namespace A116694.P12108294655345456123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A222659 (n + 1)).toNat

end

end A116694.P12108294655345456123

/-!
# A116695: Digit not appearing in A116670(n).

The programs for A116695, the canonical program `A116695.P7849105263678680230` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116695 has offset 1).

The definition of A116695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116695.P10436826302265173312

`9-A213890(n)`
-/

namespace A116695.P10436826302265173312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A213890 n

end

end A116695.P10436826302265173312

namespace A116695

/-- `9-A213890(n)` -/
def P10436826302265173312.Spec : Prop :=
  ∀ n, P10436826302265173312.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P9673413878308739477

`A050278(n+1)%10`
-/

namespace A116695.P9673413878308739477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050278 (n + 1)) 10

end

end A116695.P9673413878308739477

namespace A116695

/-- `A050278(n+1)%10` -/
def P9673413878308739477.Spec : Prop :=
  ∀ n, P9673413878308739477.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P9117882627685481719

`A050289(n+1)%10`
-/

namespace A116695.P9117882627685481719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050289 (n + 1)) 10

end

end A116695.P9117882627685481719

namespace A116695

/-- `A050289(n+1)%10` -/
def P9117882627685481719.Spec : Prop :=
  ∀ n, P9117882627685481719.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P897639535040050444

`dr(A049360(n+1)+1)`
-/

namespace A116695.P897639535040050444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A049360 (n + 1) + 1)

end

end A116695.P897639535040050444

namespace A116695

/-- `dr(A049360(n+1)+1)` -/
def P897639535040050444.Spec : Prop :=
  ∀ n, (P897639535040050444.a n : ℤ) = A116695 (n + 1)

end A116695

/-! ## A116695.P17424491806747234294

`9-A195664(∑[n]+n)`
-/

namespace A116695.P17424491806747234294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A195664 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A116695.P17424491806747234294

namespace A116695

/-- `9-A195664(∑[n]+n)` -/
def P17424491806747234294.Spec : Prop :=
  ∀ n, P17424491806747234294.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P7849105263678680230

`A023743(n+1)%5+5`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A116695

/-- `A023743(n+1)%5+5` -/
def P7849105263678680230.Spec : Prop :=
  ∀ n, P7849105263678680230.a n = A116695 (n + 1)

theorem P7849105263678680230.correct : P7849105263678680230.Spec := by
  intro n
  simp only [A116695, Nat.add_sub_cancel]

end A116695

/-! ## A116695.P3823637277505999108

`A023744(n+1)%6+4`
-/

namespace A116695.P3823637277505999108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023744 (n + 1)) 6 + 4

end

end A116695.P3823637277505999108

namespace A116695

/-- `A023744(n+1)%6+4` -/
def P3823637277505999108.Spec : Prop :=
  ∀ n, P3823637277505999108.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P11006359603971834375

`A049358(n+1)%7+3`
-/

namespace A116695.P11006359603971834375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049358 (n + 1)) 7 + 3

end

end A116695.P11006359603971834375

namespace A116695

/-- `A049358(n+1)%7+3` -/
def P11006359603971834375.Spec : Prop :=
  ∀ n, P11006359603971834375.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P7489034265707230799

`A251984(A178485(n+1))`
-/

namespace A116695.P7489034265707230799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A178485 (n + 1)).toNat

end

end A116695.P7489034265707230799

namespace A116695

/-- `A251984(A178485(n+1))` -/
def P7489034265707230799.Spec : Prop :=
  ∀ n, P7489034265707230799.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P10442072870266074331

`A251984(A215940(n+1)+1)`
-/

namespace A116695.P10442072870266074331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A215940 (n + 1) + 1).toNat

end

end A116695.P10442072870266074331

namespace A116695

/-- `A251984(A215940(n+1)+1)` -/
def P10442072870266074331.Spec : Prop :=
  ∀ n, P10442072870266074331.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P15560991081674436662

`A010875(A023744(n+1))+4`
-/

namespace A116695.P15560991081674436662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A023744 (n + 1)).toNat + 4

end

end A116695.P15560991081674436662

namespace A116695

/-- `A010875(A023744(n+1))+4` -/
def P15560991081674436662.Spec : Prop :=
  ∀ n, P15560991081674436662.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P4469131134238596797

`A061601(A195664(A000096(n)))`
-/

namespace A116695.P4469131134238596797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A195664 (A000096 n).toNat).toNat

end

end A116695.P4469131134238596797

namespace A116695

/-- `A061601(A195664(A000096(n)))` -/
def P4469131134238596797.Spec : Prop :=
  ∀ n, P4469131134238596797.a n = A116695 (n + 1)

end A116695

/-! ## A116695.P15574364106028969925

`A251984(A195663(Δ[A005581(n)]))`
-/

namespace A116695.P15574364106028969925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A195663 (f1 (n + 1) - f1 n).toNat).toNat

end

end A116695.P15574364106028969925

namespace A116695

/-- `A251984(A195663(Δ[A005581(n)]))` -/
def P15574364106028969925.Spec : Prop :=
  ∀ n, P15574364106028969925.a n = A116695 (n + 1)

end A116695

/-!
# A116697: a(n) = cos(n*Pi/2)-F(n)*(-1)^n, where F(n) = Fibonacci(n).

The programs for A116697, the canonical program `A116697.P17819879355601946640` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116697 has offset 0).

The definition of A116697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116697.P17819879355601946640

`ogf((1+2x-x^2+x^3)/(1+x+x^3-x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116697

/-- `ogf((1+2x-x^2+x^3)/(1+x+x^3-x^4))` -/
def P17819879355601946640.Spec : Prop :=
  ∀ n, P17819879355601946640.a n = A116697 n

theorem P17819879355601946640.correct : P17819879355601946640.Spec := by
  intro n
  simp only [A116697]

end A116697

/-! ## A116697.P13901007585106754552

`cos(n*π/2)-A000045(n)*(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A116697.P13901007585106754552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) * Real.pi / 2) - (A000045 n * (-1) ^ n : ℝ)

end

end A116697.P13901007585106754552

namespace A116697

/-- `cos(n*π/2)-A000045(n)*(-1)^n` -/
def P13901007585106754552.Spec : Prop :=
  ∀ n, P13901007585106754552.a n = (A116697 n : ℝ)

end A116697

/-! ## A116697.P11313986003714842129

`a(n-4)-(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=2`
-/

namespace A116697.P11313986003714842129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, 2] fun n a =>
  a (n - 4) - (a (n - 1) + a (n - 3))

end

end A116697.P11313986003714842129

namespace A116697

/-- `a(n-4)-(a(n-1)+a(n-3))` -/
def P11313986003714842129.Spec : Prop :=
  ∀ n, P11313986003714842129.a n = A116697 n

end A116697

/-! ## A116697.P5003753354541422800

`a(n-4)-a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=2`
-/

namespace A116697.P5003753354541422800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, 2] fun n a =>
  a (n - 4) - a (n - 1) - a (n - 3)

end

end A116697.P5003753354541422800

namespace A116697

/-- `a(n-4)-a(n-1)-a(n-3)` -/
def P5003753354541422800.Spec : Prop :=
  ∀ n, P5003753354541422800.a n = A116697 n

end A116697

/-! ## A116697.P15021248783158848666

`A056594(n)-(-1)^n*A000045(n)`
-/

namespace A116697.P15021248783158848666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n - (-1) ^ n * A000045 n

end

end A116697.P15021248783158848666

namespace A116697

/-- `A056594(n)-(-1)^n*A000045(n)` -/
def P15021248783158848666.Spec : Prop :=
  ∀ n, P15021248783158848666.a n = A116697 n

end A116697

/-! ## A116697.P9983612740987930425

`A014041(A008590(n))-(-1)^n*A000045(n)`
-/

namespace A116697.P9983612740987930425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 (A008590 n).toNat - (-1) ^ n * A000045 n

end

end A116697.P9983612740987930425

namespace A116697

/-- `A014041(A008590(n))-(-1)^n*A000045(n)` -/
def P9983612740987930425.Spec : Prop :=
  ∀ n, P9983612740987930425.a n = A116697 n

end A116697

/-! ## A116697.P2731497230860392187

`A061084(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A116697.P2731497230860392187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A061084 n - a (n - 2)

end

end A116697.P2731497230860392187

namespace A116697

/-- `A061084(n)-a(n-2)` -/
def P2731497230860392187.Spec : Prop :=
  ∀ n, P2731497230860392187.a n = A116697 n

end A116697

/-! ## A116697.P3248003861718180634

`A186679(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A116697.P3248003861718180634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186679 (n - 1) + a (n - 1)

end

end A116697.P3248003861718180634

namespace A116697

/-- `A186679(n-1)+a(n-1)` -/
def P3248003861718180634.Spec : Prop :=
  ∀ n, P3248003861718180634.a n = A116697 n

end A116697

/-! ## A116697.P4785279467402220902

`A087123(n)-A111573(n)`
-/

namespace A116697.P4785279467402220902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n - A111573 n

end

end A116697.P4785279467402220902

namespace A116697

/-- `A087123(n)-A111573(n)` -/
def P4785279467402220902.Spec : Prop :=
  ∀ n, P4785279467402220902.a n = A116697 n

end A116697

/-! ## A116697.P17374859632113079255

`A056594(n)+Δ[A112469(n)]`
-/

namespace A116697.P17374859632113079255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (f1 (n + 1) - f1 n)

end

end A116697.P17374859632113079255

namespace A116697

/-- `A056594(n)+Δ[A112469(n)]` -/
def P17374859632113079255.Spec : Prop :=
  ∀ n, P17374859632113079255.a n = A116697 n

end A116697

/-!
# A116698: Expansion of (1-x+3*x^2+x^3) / ((1-x-x^2)*(1+2*x^2)).

The programs for A116698, the canonical program `A116698.P12118167645603614675` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116698 has offset 0).

The definition of A116698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+3x^2+x^3)/(1-x+x^2-2x^3-2x^4))` (program `A116698.P12118167645603614675`, by `A116698.P12118167645603614675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116698.P16161644208851905535

`a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A116698.P16161644208851905535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 5] fun n a =>
  a (n - 1) - a (n - 2) + 2 * a (n - 3) + 2 * a (n - 4)

end

end A116698.P16161644208851905535

namespace A116698

/-- `a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)` -/
def P16161644208851905535.Spec : Prop :=
  ∀ n, P16161644208851905535.a n = A116698 n

end A116698

/-! ## A116698.P788837098451244720

`A000045(n+1)-(-1)^floor((n-1)/2)*n%2*2^floor(n/2)`
-/

namespace A116698.P788837098451244720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) - (-1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) * ((n % 2 : ℕ) : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A116698.P788837098451244720

namespace A116698

/-- `A000045(n+1)-(-1)^floor((n-1)/2)*n%2*2^floor(n/2)` -/
def P788837098451244720.Spec : Prop :=
  ∀ n, P788837098451244720.a n = (A116698 n : ℚ)

end A116698

/-! ## A116698.P12118167645603614675

`ogf((1-x+3x^2+x^3)/(1-x+x^2-2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116698

/-- `ogf((1-x+3x^2+x^3)/(1-x+x^2-2x^3-2x^4))` -/
def P12118167645603614675.Spec : Prop :=
  ∀ n, P12118167645603614675.a n = A116698 n

theorem P12118167645603614675.correct : P12118167645603614675.Spec := by
  intro n
  simp only [A116698]

end A116698

/-! ## A116698.P14310329300884985158

`A000045(n+1)+A077966(n+1)/2`
-/

namespace A116698.P14310329300884985158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) + (A077966 (n + 1) : ℚ) / 2

end

end A116698.P14310329300884985158

namespace A116698

/-- `A000045(n+1)+A077966(n+1)/2` -/
def P14310329300884985158.Spec : Prop :=
  ∀ n, P14310329300884985158.a n = (A116698 n : ℚ)

end A116698

/-! ## A116698.P6957644064491659065

`A000045(n+1)-A056594(n+1)*A137206(n+1)`
-/

namespace A116698.P6957644064491659065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A056594 (n + 1) * A137206 (n + 1)

end

end A116698.P6957644064491659065

namespace A116698

/-- `A000045(n+1)-A056594(n+1)*A137206(n+1)` -/
def P6957644064491659065.Spec : Prop :=
  ∀ n, P6957644064491659065.a n = A116698 n

end A116698

/-! ## A116698.P4372321933401994964

`∑[A212804(n)]-A292789(∑[n])`
-/

namespace A116698.P4372321933401994964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A292789 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A116698.P4372321933401994964

namespace A116698

/-- `∑[A212804(n)]-A292789(∑[n])` -/
def P4372321933401994964.Spec : Prop :=
  ∀ n, P4372321933401994964.a n = A116698 n

end A116698

/-! ## A116698.P15143840728134793202

`A000045(n+1)-A292789(∑[n])`
-/

namespace A116698.P15143840728134793202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A292789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116698.P15143840728134793202

namespace A116698

/-- `A000045(n+1)-A292789(∑[n])` -/
def P15143840728134793202.Spec : Prop :=
  ∀ n, P15143840728134793202.a n = A116698 n

end A116698

/-! ## A116698.P329911677269563355

`A103609(2*(n+1))-A292789(∑[n])`
-/

namespace A116698.P329911677269563355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 1)) - A292789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116698.P329911677269563355

namespace A116698

/-- `A103609(2*(n+1))-A292789(∑[n])` -/
def P329911677269563355.Spec : Prop :=
  ∀ n, P329911677269563355.a n = A116698 n

end A116698

/-!
# A116699: Number of permutations of length n which avoid the patterns 123 and 4312.

The programs for A116699, the canonical program `A116699.P12306709069475654041` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116699 has offset 1).

The definition of A116699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116699.P15111731721590890983

`ogf((1-3x+5x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A116699.P15111731721590890983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 5, -2] [1, -5, 10, -10, 5, -1] n

end

end A116699.P15111731721590890983

namespace A116699

/-- `ogf((1-3x+5x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15111731721590890983.Spec : Prop :=
  ∀ n, P15111731721590890983.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P12306709069475654041

`((n+1)^4+2*(n+1)^3-13*(n+1)²+34*(n+1))/24`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A116699

/-- `((n+1)^4+2*(n+1)^3-13*(n+1)²+34*(n+1))/24` -/
def P12306709069475654041.Spec : Prop :=
  ∀ n, P12306709069475654041.a n = (A116699 (n + 1) : ℚ)

end A116699

/-! ## A116699.P15664835795163105201

`∑[∑[a(n-1)+n]]` with `a(0)=1, a(1)=0`
-/

namespace A116699.P15664835795163105201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P15664835795163105201

namespace A116699

/-- `∑[∑[a(n-1)+n]]` -/
def P15664835795163105201.Spec : Prop :=
  ∀ n, (P15664835795163105201.a n : ℤ) = A116699 (n + 1)

end A116699

/-! ## A116699.P11650005166761985613

`∑[∑[∑[n]]]+1-C(n, 2)`
-/

namespace A116699.P11650005166761985613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A116699.P11650005166761985613

namespace A116699

/-- `∑[∑[∑[n]]]+1-C(n, 2)` -/
def P11650005166761985613.Spec : Prop :=
  ∀ n, P11650005166761985613.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P1246169461381014975

`∑[a(n-1)-(1-∑[n])]` with `a(0)=1`
-/

namespace A116699.P1246169461381014975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P1246169461381014975

namespace A116699

/-- `∑[a(n-1)-(1-∑[n])]` -/
def P1246169461381014975.Spec : Prop :=
  ∀ n, P1246169461381014975.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P9116952978520460039

`a(n-1)+C(n+2, 3)-(n-1)` with `a(0)=1`
-/

namespace A116699.P9116952978520460039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.choose (n + 2) 3 : ℤ) - ((n : ℤ) - 1))

end

end A116699.P9116952978520460039

namespace A116699

/-- `a(n-1)+C(n+2, 3)-(n-1)` -/
def P9116952978520460039.Spec : Prop :=
  ∀ n, P9116952978520460039.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P5684100317170937865

`∑[A005581(n)+1]`
-/

namespace A116699.P5684100317170937865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P5684100317170937865

namespace A116699

/-- `∑[A005581(n)+1]` -/
def P5684100317170937865.Spec : Prop :=
  ∀ n, P5684100317170937865.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P13322859075962218878

`∑[A105163(n+1)]`
-/

namespace A116699.P13322859075962218878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P13322859075962218878

namespace A116699

/-- `∑[A105163(n+1)]` -/
def P13322859075962218878.Spec : Prop :=
  ∀ n, P13322859075962218878.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P1229905387266021154

`∑[A349417(n)-1]`
-/

namespace A116699.P1229905387266021154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P1229905387266021154

namespace A116699

/-- `∑[A349417(n)-1]` -/
def P1229905387266021154.Spec : Prop :=
  ∀ n, P1229905387266021154.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P12829629520986720850

`∑[A129936(n)+3]`
-/

namespace A116699.P12829629520986720850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129936 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P12829629520986720850

namespace A116699

/-- `∑[A129936(n)+3]` -/
def P12829629520986720850.Spec : Prop :=
  ∀ n, P12829629520986720850.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P7952283454280965919

`A223718(n)-n²`
-/

namespace A116699.P7952283454280965919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n - (n ^ 2 : ℤ)

end

end A116699.P7952283454280965919

namespace A116699

/-- `A223718(n)-n²` -/
def P7952283454280965919.Spec : Prop :=
  ∀ n, P7952283454280965919.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P10221432286468502000

`∑[A003600(n)]-n²`
-/

namespace A116699.P10221432286468502000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A116699.P10221432286468502000

namespace A116699

/-- `∑[A003600(n)]-n²` -/
def P10221432286468502000.Spec : Prop :=
  ∀ n, P10221432286468502000.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P9149391508931085970

`A145126(n)+n-∑[n]`
-/

namespace A116699.P9149391508931085970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A116699.P9149391508931085970

namespace A116699

/-- `A145126(n)+n-∑[n]` -/
def P9149391508931085970.Spec : Prop :=
  ∀ n, P9149391508931085970.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P13901946100843484468

`∑[A000292(n)+1]-∑[n]`
-/

namespace A116699.P13901946100843484468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A116699.P13901946100843484468

namespace A116699

/-- `∑[A000292(n)+1]-∑[n]` -/
def P13901946100843484468.Spec : Prop :=
  ∀ n, P13901946100843484468.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P13316287886315882078

`∑[∑[∑[n]]+1]-A000217(n)`
-/

namespace A116699.P13316287886315882078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n

end

end A116699.P13316287886315882078

namespace A116699

/-- `∑[∑[∑[n]]+1]-A000217(n)` -/
def P13316287886315882078.Spec : Prop :=
  ∀ n, P13316287886315882078.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P417954914752799088

`A000125(n)-∑[∑[n-∑[n]]]`
-/

namespace A116699.P417954914752799088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P417954914752799088

namespace A116699

/-- `A000125(n)-∑[∑[n-∑[n]]]` -/
def P417954914752799088.Spec : Prop :=
  ∀ n, P417954914752799088.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P2616450731551391643

`A055795(n+1)+∑[(1-n)²]`
-/

namespace A116699.P2616450731551391643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116699.P2616450731551391643

namespace A116699

/-- `A055795(n+1)+∑[(1-n)²]` -/
def P2616450731551391643.Spec : Prop :=
  ∀ n, P2616450731551391643.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P2623669487630188181

`∑[∑[∑[n]+1]-A004277(n)]+1`
-/

namespace A116699.P2623669487630188181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116699.P2623669487630188181

namespace A116699

/-- `∑[∑[∑[n]+1]-A004277(n)]+1` -/
def P2623669487630188181.Spec : Prop :=
  ∀ n, P2623669487630188181.a n = A116699 (n + 1)

end A116699

/-! ## A116699.P4077463264512217359

`A058923(n)+A006003(n)`
-/

namespace A116699.P4077463264512217359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058923 n + A006003 n

end

end A116699.P4077463264512217359

namespace A116699

/-- `A058923(n)+A006003(n)` -/
def P4077463264512217359.Spec : Prop :=
  ∀ n, P4077463264512217359.a n = A116699 (n + 1)

end A116699

