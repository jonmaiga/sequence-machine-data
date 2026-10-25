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
import Seq.B000.C039
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A293400: Greatest integer k such that k/n^2 < (1 + sqrt(5))/2 (the golden ratio).

The programs for A293400, the canonical program `A293400.P18125686235547389511` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293400 has offset 0).

The definition of A293400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293400.P18125686235547389511

`floor((1+sqrt(5))/2*n²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293400

/-- `floor((1+sqrt(5))/2*n²)` -/
def P18125686235547389511.Spec : Prop :=
  ∀ n, P18125686235547389511.a n = A293400 n

theorem P18125686235547389511.correct : P18125686235547389511.Spec := by
  intro n
  simp only [A293400]

end A293400

/-! ## A293400.P2284075135435145203

`A152738(n)+n²`
-/

namespace A293400.P2284075135435145203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + (n ^ 2 : ℤ)

end

end A293400.P2284075135435145203

namespace A293400

/-- `A152738(n)+n²` -/
def P2284075135435145203.Spec : Prop :=
  ∀ n, P2284075135435145203.a n = A293400 n

end A293400

/-! ## A293400.P7503598884826022665

`A293403(n)-n²`
-/

namespace A293400.P7503598884826022665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n - (n ^ 2 : ℤ)

end

end A293400.P7503598884826022665

namespace A293400

/-- `A293403(n)-n²` -/
def P7503598884826022665.Spec : Prop :=
  ∀ n, P7503598884826022665.a n = A293400 n

theorem P7503598884826022665.correct : P7503598884826022665.Spec := by
  intro n
  simp only [A293400, Nat.add_sub_cancel, A293400.P7503598884826022665.a, A293400.P18125686235547389511.a, A293403, A293403.P14097951911837784715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293400

/-! ## A293400.P16906976249277266949

`A293401(n)-ceil(abs(sin(n)))`
-/

namespace A293400.P16906976249277266949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A293400.P16906976249277266949

namespace A293400

/-- `A293401(n)-ceil(abs(sin(n)))` -/
def P16906976249277266949.Spec : Prop :=
  ∀ n, P16906976249277266949.a n = A293400 n

end A293400

/-! ## A293400.P8033943901241721492

`floor(A000290(n)/ϕ)+n²`
-/

namespace A293400.P8033943901241721492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000290 n : ℝ) / Real.goldenRatio⌋ + (n ^ 2 : ℤ)

end

end A293400.P8033943901241721492

namespace A293400

/-- `floor(A000290(n)/ϕ)+n²` -/
def P8033943901241721492.Spec : Prop :=
  ∀ n, P8033943901241721492.a n = A293400 n

end A293400

/-! ## A293400.P12897703516649145179

`A293401(n)+A057428(n)`
-/

namespace A293400.P12897703516649145179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + A057428 n

end

end A293400.P12897703516649145179

namespace A293400

/-- `A293401(n)+A057428(n)` -/
def P12897703516649145179.Spec : Prop :=
  ∀ n, P12897703516649145179.a n = A293400 n

end A293400

/-! ## A293400.P5319114427843756108

`A293401(n)-A057427(n)`
-/

namespace A293400.P5319114427843756108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - A057427 n

end

end A293400.P5319114427843756108

namespace A293400

/-- `A293401(n)-A057427(n)` -/
def P5319114427843756108.Spec : Prop :=
  ∀ n, P5319114427843756108.a n = A293400 n

end A293400

/-! ## A293400.P2160245322121304252

`(A293403(n)+A152738(n))/2`
-/

namespace A293400.P2160245322121304252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293403 n + A152738 n : ℚ) / 2

end

end A293400.P2160245322121304252

namespace A293400

/-- `(A293403(n)+A152738(n))/2` -/
def P2160245322121304252.Spec : Prop :=
  ∀ n, P2160245322121304252.a n = (A293400 n : ℚ)

end A293400

/-! ## A293400.P5944268527818451322

`n²+A293407(n)-A057427(n)`
-/

namespace A293400.P5944268527818451322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A293407 n - A057427 n)

end

end A293400.P5944268527818451322

namespace A293400

/-- `n²+A293407(n)-A057427(n)` -/
def P5944268527818451322.Spec : Prop :=
  ∀ n, P5944268527818451322.a n = A293400 n

end A293400

/-! ## A293400.P6837169922433688793

`∑{e}[A006530(n+1), A293401(n)-#]`
-/

namespace A293400.P6837169922433688793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A293401 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A293400.P6837169922433688793

namespace A293400

/-- `∑{e}[A006530(n+1), A293401(n)-#]` -/
def P6837169922433688793.Spec : Prop :=
  ∀ n, P6837169922433688793.a n = A293400 n

end A293400

/-! ## A293400.P1949422999294006037

`A152738(n)+∑[A004277(n)]-(n+1)`
-/

namespace A293400.P1949422999294006037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A293400.P1949422999294006037

namespace A293400

/-- `A152738(n)+∑[A004277(n)]-(n+1)` -/
def P1949422999294006037.Spec : Prop :=
  ∀ n, P1949422999294006037.a n = A293400 n

end A293400

/-! ## A293400.P17946272808302565739

`A293401(n)+A293403(n)-A293404(n)`
-/

namespace A293400.P17946272808302565739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + (A293403 n - A293404 n)

end

end A293400.P17946272808302565739

namespace A293400

/-- `A293401(n)+A293403(n)-A293404(n)` -/
def P17946272808302565739.Spec : Prop :=
  ∀ n, P17946272808302565739.a n = A293400 n

theorem P17946272808302565739.correct : P17946272808302565739.Spec := by
  intro n
  simp only [A293400, Nat.add_sub_cancel, A293400.P17946272808302565739.a, A293400.P18125686235547389511.a, A293401, A293401.P2171145593388991176.a, A293403, A293403.P14097951911837784715.a, A293404, A293404.P14301270800513650876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293400

/-! ## A293400.P15466000523536408162

`A293402(n)+A293403(n)-A293405(n)`
-/

namespace A293400.P15466000523536408162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n + (A293403 n - A293405 n)

end

end A293400.P15466000523536408162

namespace A293400

/-- `A293402(n)+A293403(n)-A293405(n)` -/
def P15466000523536408162.Spec : Prop :=
  ∀ n, P15466000523536408162.a n = A293400 n

theorem P15466000523536408162.correct : P15466000523536408162.Spec := by
  intro n
  simp only [A293400, Nat.add_sub_cancel, A293400.P15466000523536408162.a, A293400.P18125686235547389511.a, A293402, A293402.P1844947120527260955.a, A293403, A293403.P14097951911837784715.a, A293405, A293405.P3254269789907674871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293400

/-! ## A293400.P11209588920636498359

`A293401(n)-(A293407(n)-A152738(n))`
-/

namespace A293400.P11209588920636498359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - (A293407 n - A152738 n)

end

end A293400.P11209588920636498359

namespace A293400

/-- `A293401(n)-(A293407(n)-A152738(n))` -/
def P11209588920636498359.Spec : Prop :=
  ∀ n, P11209588920636498359.a n = A293400 n

end A293400

/-! ## A293400.P230521986847466081

`A293402(n)-(A293408(n)-A152738(n))`
-/

namespace A293400.P230521986847466081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n - (A293408 n - A152738 n)

end

end A293400.P230521986847466081

namespace A293400

/-- `A293402(n)-(A293408(n)-A152738(n))` -/
def P230521986847466081.Spec : Prop :=
  ∀ n, P230521986847466081.a n = A293400 n

end A293400

/-! ## A293400.P2082978324236695247

`A066096(n²)`
-/

namespace A293400.P2082978324236695247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n ^ 2)

end

end A293400.P2082978324236695247

namespace A293400

/-- `A066096(n²)` -/
def P2082978324236695247.Spec : Prop :=
  ∀ n, P2082978324236695247.a n = A293400 n

theorem P2082978324236695247.correct : P2082978324236695247.Spec := by
  intro n
  simp only [A293400, Nat.add_sub_cancel, A293400.P2082978324236695247.a, A293400.P18125686235547389511.a, A066096, A066096.P2651506377198414293.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293400

/-! ## A293400.P11235621338562080897

`A026351(n²)-1`
-/

namespace A293400.P11235621338562080897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n ^ 2) - 1

end

end A293400.P11235621338562080897

namespace A293400

/-- `A026351(n²)-1` -/
def P11235621338562080897.Spec : Prop :=
  ∀ n, P11235621338562080897.a n = A293400 n

theorem P11235621338562080897.correct : P11235621338562080897.Spec := by
  intro n
  simp only [A293400, Nat.add_sub_cancel, A293400.P11235621338562080897.a, A293400.P18125686235547389511.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293400

/-! ## A293400.P10217496213875524184

`A060143(n²)+n²`
-/

namespace A293400.P10217496213875524184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293400.P10217496213875524184

namespace A293400

/-- `A060143(n²)+n²` -/
def P10217496213875524184.Spec : Prop :=
  ∀ n, P10217496213875524184.a n = A293400 n

theorem P10217496213875524184.correct : P10217496213875524184.Spec := by
  intro n
  simp only [A293400, Nat.add_sub_cancel, A293400.P10217496213875524184.a, A293400.P18125686235547389511.a, A060143, A060143.P4349736368293734599.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293400

/-! ## A293400.P10408334992989255080

`A005379(A132411(n))+n²`
-/

namespace A293400.P10408334992989255080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A132411 n).toNat + (n ^ 2 : ℤ)

end

end A293400.P10408334992989255080

namespace A293400

/-- `A005379(A132411(n))+n²` -/
def P10408334992989255080.Spec : Prop :=
  ∀ n, P10408334992989255080.a n = A293400 n

end A293400

/-!
# A293401: Least integer k such that k/n^2 > (1 + sqrt(5))/2 (the golden ratio).

The programs for A293401, the canonical program `A293401.P2171145593388991176` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293401 has offset 0).

The definition of A293401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293401.P5347110848119500430

`ceil(ϕ*n²)`
-/

namespace A293401.P5347110848119500430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n ^ 2 : ℝ)⌉

end

end A293401.P5347110848119500430

namespace A293401

/-- `ceil(ϕ*n²)` -/
def P5347110848119500430.Spec : Prop :=
  ∀ n, P5347110848119500430.a n = A293401 n

end A293401

/-! ## A293401.P635587957391342650

`A293407(n)+n²`
-/

namespace A293401.P635587957391342650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n + (n ^ 2 : ℤ)

end

end A293401.P635587957391342650

namespace A293401

/-- `A293407(n)+n²` -/
def P635587957391342650.Spec : Prop :=
  ∀ n, P635587957391342650.a n = A293401 n

theorem P635587957391342650.correct : P635587957391342650.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P635587957391342650.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293407, A293407.P17658418096414741506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P6979355673722368939

`A293404(n)-n²`
-/

namespace A293401.P6979355673722368939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n - (n ^ 2 : ℤ)

end

end A293401.P6979355673722368939

namespace A293401

/-- `A293404(n)-n²` -/
def P6979355673722368939.Spec : Prop :=
  ∀ n, P6979355673722368939.a n = A293401 n

theorem P6979355673722368939.correct : P6979355673722368939.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P6979355673722368939.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293404, A293404.P14301270800513650876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P2171145593388991176

`A293400(n)+n²%(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293401

/-- `A293400(n)+n²%(n+1)` -/
def P2171145593388991176.Spec : Prop :=
  ∀ n, P2171145593388991176.a n = A293401 n

theorem P2171145593388991176.correct : P2171145593388991176.Spec := by
  intro n
  simp only [A293401]

end A293401

/-! ## A293401.P17434115031173312638

`A000290(n)+ceil(n*n/ϕ)`
-/

namespace A293401.P17434115031173312638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + ⌈(n : ℝ) * ((n : ℝ) / Real.goldenRatio)⌉

end

end A293401.P17434115031173312638

namespace A293401

/-- `A000290(n)+ceil(n*n/ϕ)` -/
def P17434115031173312638.Spec : Prop :=
  ∀ n, P17434115031173312638.a n = A293401 n

end A293401

/-! ## A293401.P1036530155017179567

`A293400(n)+A057427(n)`
-/

namespace A293401.P1036530155017179567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + A057427 n

end

end A293401.P1036530155017179567

namespace A293401

/-- `A293400(n)+A057427(n)` -/
def P1036530155017179567.Spec : Prop :=
  ∀ n, P1036530155017179567.a n = A293401 n

end A293401

/-! ## A293401.P4492301617927512829

`A293400(n)-A057428(n)`
-/

namespace A293401.P4492301617927512829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n - A057428 n

end

end A293401.P4492301617927512829

namespace A293401

/-- `A293400(n)-A057428(n)` -/
def P4492301617927512829.Spec : Prop :=
  ∀ n, P4492301617927512829.a n = A293401 n

end A293401

/-! ## A293401.P14903634232850689304

`A293403(n)+1-A253909(n)`
-/

namespace A293401.P14903634232850689304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + (1 - A253909 n)

end

end A293401.P14903634232850689304

namespace A293401

/-- `A293403(n)+1-A253909(n)` -/
def P14903634232850689304.Spec : Prop :=
  ∀ n, P14903634232850689304.a n = A293401 n

end A293401

/-! ## A293401.P1832244115208575959

`(A293407(n)+A293404(n))/2`
-/

namespace A293401.P1832244115208575959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293407 n + A293404 n : ℚ) / 2

end

end A293401.P1832244115208575959

namespace A293401

/-- `(A293407(n)+A293404(n))/2` -/
def P1832244115208575959.Spec : Prop :=
  ∀ n, P1832244115208575959.a n = (A293401 n : ℚ)

theorem P1832244115208575959.correct : P1832244115208575959.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P1832244115208575959.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293404, A293404.P14301270800513650876.a, A293407, A293407.P17658418096414741506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P17476797463158020720

`n²+A152738(n)+A057427(n)`
-/

namespace A293401.P17476797463158020720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A152738 n + A057427 n)

end

end A293401.P17476797463158020720

namespace A293401

/-- `n²+A152738(n)+A057427(n)` -/
def P17476797463158020720.Spec : Prop :=
  ∀ n, P17476797463158020720.a n = A293401 n

end A293401

/-! ## A293401.P5429939385563699687

`n²+A152738(n)-A057428(n)`
-/

namespace A293401.P5429939385563699687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A152738 n - A057428 n)

end

end A293401.P5429939385563699687

namespace A293401

/-- `n²+A152738(n)-A057428(n)` -/
def P5429939385563699687.Spec : Prop :=
  ∀ n, P5429939385563699687.a n = A293401 n

end A293401

/-! ## A293401.P9107302486698484505

`A293400(n)+n²/A253909(n)`
-/

namespace A293401.P9107302486698484505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293400 n : ℚ) + (n ^ 2 : ℚ) / (A253909 n : ℚ)

end

end A293401.P9107302486698484505

namespace A293401

/-- `A293400(n)+n²/A253909(n)` -/
def P9107302486698484505.Spec : Prop :=
  ∀ n, P9107302486698484505.a n = (A293401 n : ℚ)

end A293401

/-! ## A293401.P17730679502091766488

`A293400(n)+A293404(n)-A293403(n)`
-/

namespace A293401.P17730679502091766488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (A293404 n - A293403 n)

end

end A293401.P17730679502091766488

namespace A293401

/-- `A293400(n)+A293404(n)-A293403(n)` -/
def P17730679502091766488.Spec : Prop :=
  ∀ n, P17730679502091766488.a n = A293401 n

theorem P17730679502091766488.correct : P17730679502091766488.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P17730679502091766488.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293403, A293403.P14097951911837784715.a, A293404, A293404.P14301270800513650876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P3731874322697022339

`A293402(n)+A293404(n)-A293405(n)`
-/

namespace A293401.P3731874322697022339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n + (A293404 n - A293405 n)

end

end A293401.P3731874322697022339

namespace A293401

/-- `A293402(n)+A293404(n)-A293405(n)` -/
def P3731874322697022339.Spec : Prop :=
  ∀ n, P3731874322697022339.a n = A293401 n

theorem P3731874322697022339.correct : P3731874322697022339.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P3731874322697022339.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293402, A293402.P1844947120527260955.a, A293404, A293404.P14301270800513650876.a, A293405, A293405.P3254269789907674871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P4987937599014337160

`A293402(n)+A293407(n)-A293408(n)`
-/

namespace A293401.P4987937599014337160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n + (A293407 n - A293408 n)

end

end A293401.P4987937599014337160

namespace A293401

/-- `A293402(n)+A293407(n)-A293408(n)` -/
def P4987937599014337160.Spec : Prop :=
  ∀ n, P4987937599014337160.a n = A293401 n

end A293401

/-! ## A293401.P8418570065240013489

`A293403(n)+A293407(n)-A293400(n)`
-/

namespace A293401.P8418570065240013489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + (A293407 n - A293400 n)

end

end A293401.P8418570065240013489

namespace A293401

/-- `A293403(n)+A293407(n)-A293400(n)` -/
def P8418570065240013489.Spec : Prop :=
  ∀ n, P8418570065240013489.a n = A293401 n

theorem P8418570065240013489.correct : P8418570065240013489.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P8418570065240013489.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293403, A293403.P14097951911837784715.a, A293407, A293407.P17658418096414741506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P4542017289367628205

`A293405(n)+A293407(n)-A293402(n)`
-/

namespace A293401.P4542017289367628205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293405 n + (A293407 n - A293402 n)

end

end A293401.P4542017289367628205

namespace A293401

/-- `A293405(n)+A293407(n)-A293402(n)` -/
def P4542017289367628205.Spec : Prop :=
  ∀ n, P4542017289367628205.a n = A293401 n

theorem P4542017289367628205.correct : P4542017289367628205.Spec := by
  intro n
  simp only [A293401, Nat.add_sub_cancel, A293401.P4542017289367628205.a, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, A293402, A293402.P1844947120527260955.a, A293405, A293405.P3254269789907674871.a, A293407, A293407.P17658418096414741506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293401

/-! ## A293401.P6473959323188587599

`A004956(n²)`
-/

namespace A293401.P6473959323188587599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n ^ 2)

end

end A293401.P6473959323188587599

namespace A293401

/-- `A004956(n²)` -/
def P6473959323188587599.Spec : Prop :=
  ∀ n, P6473959323188587599.a n = A293401 n

end A293401

/-! ## A293401.P16622342664037684024

`A004957(n²)-n²`
-/

namespace A293401.P16622342664037684024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n ^ 2) - (n ^ 2 : ℤ)

end

end A293401.P16622342664037684024

namespace A293401

/-- `A004957(n²)-n²` -/
def P16622342664037684024.Spec : Prop :=
  ∀ n, P16622342664037684024.a n = A293401 n

end A293401

/-! ## A293401.P466864721494017448

`ceil(abs(sin(n)))*A026351(n²)`
-/

namespace A293401.P466864721494017448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ * A026351 (n ^ 2)

end

end A293401.P466864721494017448

namespace A293401

/-- `ceil(abs(sin(n)))*A026351(n²)` -/
def P466864721494017448.Spec : Prop :=
  ∀ n, P466864721494017448.a n = A293401 n

end A293401

/-!
# A293402: The integer k that minimizes |k/n^2 - phi|, where phi = (1+sqrt(5))/2 (golden ratio).

The programs for A293402, the canonical program `A293402.P1844947120527260955` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293402 has offset 0).

The definition of A293402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293402.P1844947120527260955

`floor(1/2+ϕ*n²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293402

/-- `floor(1/2+ϕ*n²)` -/
def P1844947120527260955.Spec : Prop :=
  ∀ n, P1844947120527260955.a n = A293402 n

theorem P1844947120527260955.correct : P1844947120527260955.Spec := by
  intro n
  simp only [A293402]

end A293402

/-! ## A293402.P4130627210108295506

`A293408(n)+n²`
-/

namespace A293402.P4130627210108295506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293408 n + (n ^ 2 : ℤ)

end

end A293402.P4130627210108295506

namespace A293402

/-- `A293408(n)+n²` -/
def P4130627210108295506.Spec : Prop :=
  ∀ n, P4130627210108295506.a n = A293402 n

end A293402

/-! ## A293402.P12915062353783979325

`A293405(n)-n²`
-/

namespace A293402.P12915062353783979325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293405 n - (n ^ 2 : ℤ)

end

end A293402.P12915062353783979325

namespace A293402

/-- `A293405(n)-n²` -/
def P12915062353783979325.Spec : Prop :=
  ∀ n, P12915062353783979325.a n = A293402 n

theorem P12915062353783979325.correct : P12915062353783979325.Spec := by
  intro n
  simp only [A293402, Nat.add_sub_cancel, A293402.P12915062353783979325.a, A293402.P1844947120527260955.a, A293405, A293405.P3254269789907674871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293402

/-! ## A293402.P9248766479128381065

`(A293408(n)+A293405(n))/2`
-/

namespace A293402.P9248766479128381065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293408 n + A293405 n : ℚ) / 2

end

end A293402.P9248766479128381065

namespace A293402

/-- `(A293408(n)+A293405(n))/2` -/
def P9248766479128381065.Spec : Prop :=
  ∀ n, P9248766479128381065.a n = (A293402 n : ℚ)

end A293402

/-! ## A293402.P17217661874761408260

`A293400(n)+A293405(n)-A293403(n)`
-/

namespace A293402.P17217661874761408260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (A293405 n - A293403 n)

end

end A293402.P17217661874761408260

namespace A293402

/-- `A293400(n)+A293405(n)-A293403(n)` -/
def P17217661874761408260.Spec : Prop :=
  ∀ n, P17217661874761408260.a n = A293402 n

theorem P17217661874761408260.correct : P17217661874761408260.Spec := by
  intro n
  simp only [A293402, Nat.add_sub_cancel, A293402.P17217661874761408260.a, A293402.P1844947120527260955.a, A293400, A293400.P18125686235547389511.a, A293403, A293403.P14097951911837784715.a, A293405, A293405.P3254269789907674871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293402

/-! ## A293402.P12527681765250078904

`A293401(n)+A293405(n)-A293404(n)`
-/

namespace A293402.P12527681765250078904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + (A293405 n - A293404 n)

end

end A293402.P12527681765250078904

namespace A293402

/-- `A293401(n)+A293405(n)-A293404(n)` -/
def P12527681765250078904.Spec : Prop :=
  ∀ n, P12527681765250078904.a n = A293402 n

theorem P12527681765250078904.correct : P12527681765250078904.Spec := by
  intro n
  simp only [A293402, Nat.add_sub_cancel, A293402.P12527681765250078904.a, A293402.P1844947120527260955.a, A293401, A293401.P2171145593388991176.a, A293404, A293404.P14301270800513650876.a, A293405, A293405.P3254269789907674871.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293402

/-! ## A293402.P17857789369381484003

`A293401(n)+A293408(n)-A293407(n)`
-/

namespace A293402.P17857789369381484003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + (A293408 n - A293407 n)

end

end A293402.P17857789369381484003

namespace A293402

/-- `A293401(n)+A293408(n)-A293407(n)` -/
def P17857789369381484003.Spec : Prop :=
  ∀ n, P17857789369381484003.a n = A293402 n

end A293402

/-! ## A293402.P3724793114827311297

`A293403(n)+A293408(n)-A293400(n)`
-/

namespace A293402.P3724793114827311297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + (A293408 n - A293400 n)

end

end A293402.P3724793114827311297

namespace A293402

/-- `A293403(n)+A293408(n)-A293400(n)` -/
def P3724793114827311297.Spec : Prop :=
  ∀ n, P3724793114827311297.a n = A293402 n

end A293402

/-! ## A293402.P5132165111267197548

`A293404(n)+A293408(n)-A293401(n)`
-/

namespace A293402.P5132165111267197548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n + (A293408 n - A293401 n)

end

end A293402.P5132165111267197548

namespace A293402

/-- `A293404(n)+A293408(n)-A293401(n)` -/
def P5132165111267197548.Spec : Prop :=
  ∀ n, P5132165111267197548.a n = A293402 n

end A293402

/-! ## A293402.P9697823682584168620

`A293401(n)-A293407(A293407(n)-A293408(n))`
-/

namespace A293402.P9697823682584168620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n - A293407 (A293407 n - A293408 n).toNat

end

end A293402.P9697823682584168620

namespace A293402

/-- `A293401(n)-A293407(A293407(n)-A293408(n))` -/
def P9697823682584168620.Spec : Prop :=
  ∀ n, P9697823682584168620.a n = A293402 n

end A293402

/-! ## A293402.P6596717703647943746

`A007067(n²)`
-/

namespace A293402.P6596717703647943746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n ^ 2)

end

end A293402.P6596717703647943746

namespace A293402

/-- `A007067(n²)` -/
def P6596717703647943746.Spec : Prop :=
  ∀ n, P6596717703647943746.a n = A293402 n

end A293402

/-! ## A293402.P14502228200473421261

`ceil(A276854(n²)/2)`
-/

namespace A293402.P14502228200473421261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276854 (n ^ 2) : ℚ) / 2⌉

end

end A293402.P14502228200473421261

namespace A293402

/-- `ceil(A276854(n²)/2)` -/
def P14502228200473421261.Spec : Prop :=
  ∀ n, P14502228200473421261.a n = A293402 n

end A293402

/-! ## A293402.P17315963542967167966

`A004937(n²)-n²`
-/

namespace A293402.P17315963542967167966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (n ^ 2) - (n ^ 2 : ℤ)

end

end A293402.P17315963542967167966

namespace A293402

/-- `A004937(n²)-n²` -/
def P17315963542967167966.Spec : Prop :=
  ∀ n, P17315963542967167966.a n = A293402 n

end A293402

/-! ## A293402.P2784254387823692529

`A050508(n²)/A028310(n²)`
-/

namespace A293402.P2784254387823692529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050508 (n ^ 2) : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A293402.P2784254387823692529

namespace A293402

/-- `A050508(n²)/A028310(n²)` -/
def P2784254387823692529.Spec : Prop :=
  ∀ n, P2784254387823692529.a n = (A293402 n : ℚ)

end A293402

/-! ## A293402.P10417740357676007271

`A101803(n²)+n²`
-/

namespace A293402.P10417740357676007271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293402.P10417740357676007271

namespace A293402

/-- `A101803(n²)+n²` -/
def P10417740357676007271.Spec : Prop :=
  ∀ n, P10417740357676007271.a n = A293402 n

end A293402

/-!
# A293403: Greatest integer k such that k/n^2 < (3 + sqrt(5))/2.

The programs for A293403, the canonical program `A293403.P14097951911837784715` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293403 has offset 0).

The definition of A293403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293403.P13757395735525682048

`floor((ϕ*n)²)`
-/

namespace A293403.P13757395735525682048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio * (n : ℝ)) ^ 2⌋

end

end A293403.P13757395735525682048

namespace A293403

/-- `floor((ϕ*n)²)` -/
def P13757395735525682048.Spec : Prop :=
  ∀ n, P13757395735525682048.a n = A293403 n

end A293403

/-! ## A293403.P14097951911837784715

`A293400(n)+n²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293403

/-- `A293400(n)+n²` -/
def P14097951911837784715.Spec : Prop :=
  ∀ n, P14097951911837784715.a n = A293403 n

theorem P14097951911837784715.correct : P14097951911837784715.Spec := by
  intro n
  simp only [A293403]

end A293403

/-! ## A293403.P14143793440806295573

`A152738(n)+2*n²`
-/

namespace A293403.P14143793440806295573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + (2 * n ^ 2 : ℤ)

end

end A293403.P14143793440806295573

namespace A293403

/-- `A152738(n)+2*n²` -/
def P14143793440806295573.Spec : Prop :=
  ∀ n, P14143793440806295573.a n = A293403 n

end A293403

/-! ## A293403.P16724828129154604175

`A293404(n)+A057428(n)`
-/

namespace A293403.P16724828129154604175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n + A057428 n

end

end A293403.P16724828129154604175

namespace A293403

/-- `A293404(n)+A057428(n)` -/
def P16724828129154604175.Spec : Prop :=
  ∀ n, P16724828129154604175.a n = A293403 n

end A293403

/-! ## A293403.P11056795148021699160

`A293404(n)-A057427(n)`
-/

namespace A293403.P11056795148021699160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n - A057427 n

end

end A293403.P11056795148021699160

namespace A293403

/-- `A293404(n)-A057427(n)` -/
def P11056795148021699160.Spec : Prop :=
  ∀ n, P11056795148021699160.a n = A293403 n

end A293403

/-! ## A293403.P10967870577656720315

`n²+A293401(n)-A057427(n)`
-/

namespace A293403.P10967870577656720315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A293401 n - A057427 n)

end

end A293403.P10967870577656720315

namespace A293403

/-- `n²+A293401(n)-A057427(n)` -/
def P10967870577656720315.Spec : Prop :=
  ∀ n, P10967870577656720315.a n = A293403 n

end A293403

/-! ## A293403.P7502011810616760488

`A293404(n)-(A293407(n)-A152738(n))`
-/

namespace A293403.P7502011810616760488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n - (A293407 n - A152738 n)

end

end A293403.P7502011810616760488

namespace A293403

/-- `A293404(n)-(A293407(n)-A152738(n))` -/
def P7502011810616760488.Spec : Prop :=
  ∀ n, P7502011810616760488.a n = A293403 n

end A293403

/-! ## A293403.P3279105655660943721

`A066096(n²)+n²`
-/

namespace A293403.P3279105655660943721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293403.P3279105655660943721

namespace A293403

/-- `A066096(n²)+n²` -/
def P3279105655660943721.Spec : Prop :=
  ∀ n, P3279105655660943721.a n = A293403 n

theorem P3279105655660943721.correct : P3279105655660943721.Spec := by
  intro n
  simp only [A293403, Nat.add_sub_cancel, A293403.P3279105655660943721.a, A293403.P14097951911837784715.a, A066096, A066096.P2651506377198414293.a, A293400, A293400.P18125686235547389511.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293403

/-! ## A293403.P14355346973586916785

`A004957(n²)-A057427(n)`
-/

namespace A293403.P14355346973586916785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n ^ 2) - A057427 n

end

end A293403.P14355346973586916785

namespace A293403

/-- `A004957(n²)-A057427(n)` -/
def P14355346973586916785.Spec : Prop :=
  ∀ n, P14355346973586916785.a n = A293403 n

end A293403

/-! ## A293403.P14566774861066778753

`A005843(n)²-A195121(n²)`
-/

namespace A293403.P14566774861066778753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2 - A195121 (n ^ 2)

end

end A293403.P14566774861066778753

namespace A293403

/-- `A005843(n)²-A195121(n²)` -/
def P14566774861066778753.Spec : Prop :=
  ∀ n, P14566774861066778753.a n = A293403 n

end A293403

/-! ## A293403.P5798502304648002656

`A026352(n²)-1`
-/

namespace A293403.P5798502304648002656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (n ^ 2) - 1

end

end A293403.P5798502304648002656

namespace A293403

/-- `A026352(n²)-1` -/
def P5798502304648002656.Spec : Prop :=
  ∀ n, P5798502304648002656.a n = A293403 n

theorem P5798502304648002656.correct : P5798502304648002656.Spec := by
  intro n
  simp only [A293403, Nat.add_sub_cancel, A293403.P5798502304648002656.a, A293403.P14097951911837784715.a, A026352, A026352.P12148226438592254033.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293403

/-! ## A293403.P6168954362634826889

`(A284621(A002522(n))-1)/2`
-/

namespace A293403.P6168954362634826889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284621 (A002522 n).toNat - 1 : ℚ) / 2

end

end A293403.P6168954362634826889

namespace A293403

/-- `(A284621(A002522(n))-1)/2` -/
def P6168954362634826889.Spec : Prop :=
  ∀ n, P6168954362634826889.a n = (A293403 n : ℚ)

end A293403

/-!
# A293404: Least integer k such that k/n^2 > (3 + sqrt(5))/2 (the golden ratio).

The programs for A293404, the canonical program `A293404.P14301270800513650876` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293404 has offset 0).

The definition of A293404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293404.P11070786261432593824

`ceil((ϕ*n)²)`
-/

namespace A293404.P11070786261432593824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio * (n : ℝ)) ^ 2⌉

end

end A293404.P11070786261432593824

namespace A293404

/-- `ceil((ϕ*n)²)` -/
def P11070786261432593824.Spec : Prop :=
  ∀ n, P11070786261432593824.a n = A293404 n

end A293404

/-! ## A293404.P14301270800513650876

`A293401(n)+n²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293404

/-- `A293401(n)+n²` -/
def P14301270800513650876.Spec : Prop :=
  ∀ n, P14301270800513650876.a n = A293404 n

theorem P14301270800513650876.correct : P14301270800513650876.Spec := by
  intro n
  simp only [A293404]

end A293404

/-! ## A293404.P15898921835087987968

`A293407(n)+2*n²`
-/

namespace A293404.P15898921835087987968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n + (2 * n ^ 2 : ℤ)

end

end A293404.P15898921835087987968

namespace A293404

/-- `A293407(n)+2*n²` -/
def P15898921835087987968.Spec : Prop :=
  ∀ n, P15898921835087987968.a n = A293404 n

theorem P15898921835087987968.correct : P15898921835087987968.Spec := by
  intro n
  simp only [A293404, Nat.add_sub_cancel, A293404.P15898921835087987968.a, A293404.P14301270800513650876.a, A293401, A293401.P2171145593388991176.a, A293407, A293407.P17658418096414741506.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293404

/-! ## A293404.P7661381541472579392

`A293403(n)+A057427(n)`
-/

namespace A293404.P7661381541472579392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + A057427 n

end

end A293404.P7661381541472579392

namespace A293404

/-- `A293403(n)+A057427(n)` -/
def P7661381541472579392.Spec : Prop :=
  ∀ n, P7661381541472579392.a n = A293404 n

end A293404

/-! ## A293404.P14377644394116361062

`A293403(n)-A057428(n)`
-/

namespace A293404.P14377644394116361062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n - A057428 n

end

end A293404.P14377644394116361062

namespace A293404

/-- `A293403(n)-A057428(n)` -/
def P14377644394116361062.Spec : Prop :=
  ∀ n, P14377644394116361062.a n = A293404 n

end A293404

/-! ## A293404.P3360752259906710318

`A293403(n)+1-A000007(n)`
-/

namespace A293404.P3360752259906710318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + (1 - A000007 n)

end

end A293404.P3360752259906710318

namespace A293404

/-- `A293403(n)+1-A000007(n)` -/
def P3360752259906710318.Spec : Prop :=
  ∀ n, P3360752259906710318.a n = A293404 n

end A293404

/-! ## A293404.P12090294185715920923

`A002522(n)+A293401(n)-1`
-/

namespace A293404.P12090294185715920923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A293401 n - 1)

end

end A293404.P12090294185715920923

namespace A293404

/-- `A002522(n)+A293401(n)-1` -/
def P12090294185715920923.Spec : Prop :=
  ∀ n, P12090294185715920923.a n = A293404 n

theorem P12090294185715920923.correct : P12090294185715920923.Spec := by
  intro n
  simp only [A293404, Nat.add_sub_cancel, A293404.P12090294185715920923.a, A293404.P14301270800513650876.a, A002522, A002522.P3778392011853271743.a, A293401, A293401.P2171145593388991176.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293404

/-! ## A293404.P10176804239140966701

`2*A293401(n)-A293407(n)`
-/

namespace A293404.P10176804239140966701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293401 n - A293407 n

end

end A293404.P10176804239140966701

namespace A293404

/-- `2*A293401(n)-A293407(n)` -/
def P10176804239140966701.Spec : Prop :=
  ∀ n, P10176804239140966701.a n = A293404 n

theorem P10176804239140966701.correct : P10176804239140966701.Spec := by
  intro n
  simp only [A293404, Nat.add_sub_cancel, A293404.P10176804239140966701.a, A293404.P14301270800513650876.a, A293401, A293401.P2171145593388991176.a, A293407, A293407.P17658418096414741506.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293404

/-! ## A293404.P3419254636016427050

`A000290(n)+A293407(n)+n²`
-/

namespace A293404.P3419254636016427050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A293407 n + (n ^ 2 : ℤ))

end

end A293404.P3419254636016427050

namespace A293404

/-- `A000290(n)+A293407(n)+n²` -/
def P3419254636016427050.Spec : Prop :=
  ∀ n, P3419254636016427050.a n = A293404 n

theorem P3419254636016427050.correct : P3419254636016427050.Spec := by
  intro n
  simp only [A293404, Nat.add_sub_cancel, A293404.P3419254636016427050.a, A293404.P14301270800513650876.a, A000290, A000290.P12206242496348924484.a, A293401, A293401.P2171145593388991176.a, A293407, A293407.P17658418096414741506.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293404

/-! ## A293404.P14376625958334328174

`A293403(n)+A293407(n)-A152738(n)`
-/

namespace A293404.P14376625958334328174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + (A293407 n - A152738 n)

end

end A293404.P14376625958334328174

namespace A293404

/-- `A293403(n)+A293407(n)-A152738(n)` -/
def P14376625958334328174.Spec : Prop :=
  ∀ n, P14376625958334328174.a n = A293404 n

end A293404

/-! ## A293404.P1954692332359716193

`A293405(n)+A293407(n)-A293408(n)`
-/

namespace A293404.P1954692332359716193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293405 n + (A293407 n - A293408 n)

end

end A293404.P1954692332359716193

namespace A293404

/-- `A293405(n)+A293407(n)-A293408(n)` -/
def P1954692332359716193.Spec : Prop :=
  ∀ n, P1954692332359716193.a n = A293404 n

end A293404

/-! ## A293404.P10966055348038402930

`char[A100208(n+1)]+floor((ϕ*n)²)`
-/

namespace A293404.P10966055348038402930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(Real.goldenRatio * (n : ℝ)) ^ 2⌋

end

end A293404.P10966055348038402930

namespace A293404

/-- `char[A100208(n+1)]+floor((ϕ*n)²)` -/
def P10966055348038402930.Spec : Prop :=
  ∀ n, P10966055348038402930.a n = A293404 n

end A293404

/-! ## A293404.P3364230740288805754

`A004957(n²)`
-/

namespace A293404.P3364230740288805754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n ^ 2)

end

end A293404.P3364230740288805754

namespace A293404

/-- `A004957(n²)` -/
def P3364230740288805754.Spec : Prop :=
  ∀ n, P3364230740288805754.a n = A293404 n

end A293404

/-! ## A293404.P13989151536308951003

`A004956(n²)+n²`
-/

namespace A293404.P13989151536308951003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293404.P13989151536308951003

namespace A293404

/-- `A004956(n²)+n²` -/
def P13989151536308951003.Spec : Prop :=
  ∀ n, P13989151536308951003.a n = A293404 n

end A293404

/-! ## A293404.P17823867492157967100

`A007066(n²+1)-1`
-/

namespace A293404.P17823867492157967100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n ^ 2 + 1) - 1

end

end A293404.P17823867492157967100

namespace A293404

/-- `A007066(n²+1)-1` -/
def P17823867492157967100.Spec : Prop :=
  ∀ n, P17823867492157967100.a n = A293404 n

end A293404

/-! ## A293404.P1821941126850724246

`A026352(n²)-A000007(n)`
-/

namespace A293404.P1821941126850724246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (n ^ 2) - A000007 n

end

end A293404.P1821941126850724246

namespace A293404

/-- `A026352(n²)-A000007(n)` -/
def P1821941126850724246.Spec : Prop :=
  ∀ n, P1821941126850724246.a n = A293404 n

end A293404

/-! ## A293404.P9924993267735068815

`A026352(n²)*A188432(A026352(n))`
-/

namespace A293404.P9924993267735068815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (n ^ 2) * A188432 (A026352 n).toNat

end

end A293404.P9924993267735068815

namespace A293404

/-- `A026352(n²)*A188432(A026352(n))` -/
def P9924993267735068815.Spec : Prop :=
  ∀ n, P9924993267735068815.a n = A293404 n

end A293404

/-!
# A293405: The integer k that minimizes |k/n^2 - phi^2|, where phi = (1+sqrt(5))/2 (golden ratio).

The programs for A293405, the canonical program `A293405.P3254269789907674871` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293405 has offset 0).

The definition of A293405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293405.P13676830056106290989

`round((ϕ*n)²)`
-/

namespace A293405.P13676830056106290989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio * (n : ℝ)) ^ 2)

end

end A293405.P13676830056106290989

namespace A293405

/-- `round((ϕ*n)²)` -/
def P13676830056106290989.Spec : Prop :=
  ∀ n, P13676830056106290989.a n = A293405 n

end A293405

/-! ## A293405.P3254269789907674871

`A293402(n)+n²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293405

/-- `A293402(n)+n²` -/
def P3254269789907674871.Spec : Prop :=
  ∀ n, P3254269789907674871.a n = A293405 n

theorem P3254269789907674871.correct : P3254269789907674871.Spec := by
  intro n
  simp only [A293405]

end A293405

/-! ## A293405.P3923308378541073861

`A293408(n)+2*n²`
-/

namespace A293405.P3923308378541073861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293408 n + (2 * n ^ 2 : ℤ)

end

end A293405.P3923308378541073861

namespace A293405

/-- `A293408(n)+2*n²` -/
def P3923308378541073861.Spec : Prop :=
  ∀ n, P3923308378541073861.a n = A293405 n

end A293405

/-! ## A293405.P1562601348667135772

`2*A293402(n)-A293408(n)`
-/

namespace A293405.P1562601348667135772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293402 n - A293408 n

end

end A293405.P1562601348667135772

namespace A293405

/-- `2*A293402(n)-A293408(n)` -/
def P1562601348667135772.Spec : Prop :=
  ∀ n, P1562601348667135772.a n = A293405 n

end A293405

/-! ## A293405.P6651047047460709797

`A000290(n)+A293408(n)+n²`
-/

namespace A293405.P6651047047460709797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A293408 n + (n ^ 2 : ℤ))

end

end A293405.P6651047047460709797

namespace A293405

/-- `A000290(n)+A293408(n)+n²` -/
def P6651047047460709797.Spec : Prop :=
  ∀ n, P6651047047460709797.a n = A293405 n

end A293405

/-! ## A293405.P15610692763186072437

`A293403(n)+A293408(n)-A152738(n)`
-/

namespace A293405.P15610692763186072437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293403 n + (A293408 n - A152738 n)

end

end A293405.P15610692763186072437

namespace A293405

/-- `A293403(n)+A293408(n)-A152738(n)` -/
def P15610692763186072437.Spec : Prop :=
  ∀ n, P15610692763186072437.a n = A293405 n

end A293405

/-! ## A293405.P13378908065246909710

`A293401(n)+A293402(n)-A293407(n)`
-/

namespace A293405.P13378908065246909710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + (A293402 n - A293407 n)

end

end A293405.P13378908065246909710

namespace A293405

/-- `A293401(n)+A293402(n)-A293407(n)` -/
def P13378908065246909710.Spec : Prop :=
  ∀ n, P13378908065246909710.a n = A293405 n

theorem P13378908065246909710.correct : P13378908065246909710.Spec := by
  intro n
  simp only [A293405, Nat.add_sub_cancel, A293405.P13378908065246909710.a, A293405.P3254269789907674871.a, A293401, A293401.P2171145593388991176.a, A293402, A293402.P1844947120527260955.a, A293407, A293407.P17658418096414741506.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293405

/-! ## A293405.P10909740084295264427

`A293404(n)+A293408(n)-A293407(n)`
-/

namespace A293405.P10909740084295264427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n + (A293408 n - A293407 n)

end

end A293405.P10909740084295264427

namespace A293405

/-- `A293404(n)+A293408(n)-A293407(n)` -/
def P10909740084295264427.Spec : Prop :=
  ∀ n, P10909740084295264427.a n = A293405 n

end A293405

/-! ## A293405.P9938004239976278512

`A293404(n)-A293407(A293407(n)-A293408(n))`
-/

namespace A293405.P9938004239976278512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n - A293407 (A293407 n - A293408 n).toNat

end

end A293405.P9938004239976278512

namespace A293405

/-- `A293404(n)-A293407(A293407(n)-A293408(n))` -/
def P9938004239976278512.Spec : Prop :=
  ∀ n, P9938004239976278512.a n = A293405 n

end A293405

/-! ## A293405.P247494095932625098

`A004937(n²)`
-/

namespace A293405.P247494095932625098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (n ^ 2)

end

end A293405.P247494095932625098

namespace A293405

/-- `A004937(n²)` -/
def P247494095932625098.Spec : Prop :=
  ∀ n, P247494095932625098.a n = A293405 n

end A293405

/-! ## A293405.P8028297859472024835

`A007067(n²)+n²`
-/

namespace A293405.P8028297859472024835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293405.P8028297859472024835

namespace A293405

/-- `A007067(n²)+n²` -/
def P8028297859472024835.Spec : Prop :=
  ∀ n, P8028297859472024835.a n = A293405 n

end A293405

/-!
# A293406: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293406, there is no canonical definition to state claims against.
-/

/-! ## A293406.P13987524255733850378

`A295961(n)-1`
-/

namespace A293406.P13987524255733850378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295961 n - 1

end

end A293406.P13987524255733850378

/-! ## A293406.P8268216366038289801

`A330025(A017353(n))+A295961(n)`
-/

namespace A293406.P8268216366038289801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A017353 n).toNat + A295961 n

end

end A293406.P8268216366038289801

/-! ## A293406.P7813103580739235996

`A325970(A006512(n+1))+A295961(n)`
-/

namespace A293406.P7813103580739235996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A006512 (n + 1)).toNat + A295961 n

end

end A293406.P7813103580739235996

/-! ## A293406.P15557075345760204505

`A326049(A113601(n+1))+A295961(n)`
-/

namespace A293406.P15557075345760204505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (A113601 (n + 1)).toNat + A295961 n

end

end A293406.P15557075345760204505

/-! ## A293406.P5683649024929320744

`abs(A295961(n)+A008683(A340817(n+2)))`
-/

namespace A293406.P5683649024929320744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295961 n + A008683 (A340817 (n + 2)).toNat|

end

end A293406.P5683649024929320744

/-! ## A293406.P5247171678281231122

`A326049(A269728(n+1))+A295961(n)`
-/

namespace A293406.P5247171678281231122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (A269728 (n + 1)).toNat + A295961 n

end

end A293406.P5247171678281231122

/-! ## A293406.P3438417628521821334

`A349920(A109650(n+1))+A295961(n)`
-/

namespace A293406.P3438417628521821334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A109650 (n + 1)).toNat + A295961 n

end

end A293406.P3438417628521821334

/-!
# A293407: Least integer k such that k/n^2 > (-1 + sqrt(5))/2 (the golden ratio).

The programs for A293407, the canonical program `A293407.P17658418096414741506` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293407 has offset 0).

The definition of A293407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293407.P2850817180303670960

`ceil(n²/ϕ)`
-/

namespace A293407.P2850817180303670960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.goldenRatio⌉

end

end A293407.P2850817180303670960

namespace A293407

/-- `ceil(n²/ϕ)` -/
def P2850817180303670960.Spec : Prop :=
  ∀ n, P2850817180303670960.a n = A293407 n

end A293407

/-! ## A293407.P18152287412028593978

`xor(2, xor(2, ceil(n*n/ϕ)))`
-/

namespace A293407.P18152287412028593978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 ⌈(n : ℝ) * ((n : ℝ) / Real.goldenRatio)⌉)

end

end A293407.P18152287412028593978

namespace A293407

/-- `xor(2, xor(2, ceil(n*n/ϕ)))` -/
def P18152287412028593978.Spec : Prop :=
  ∀ n, P18152287412028593978.a n = A293407 n

end A293407

/-! ## A293407.P17658418096414741506

`A293401(n)-n²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293407

/-- `A293401(n)-n²` -/
def P17658418096414741506.Spec : Prop :=
  ∀ n, P17658418096414741506.a n = A293407 n

theorem P17658418096414741506.correct : P17658418096414741506.Spec := by
  intro n
  simp only [A293407]

end A293407

/-! ## A293407.P494067851167806622

`A293404(n)-2*n²`
-/

namespace A293407.P494067851167806622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n - (2 * n ^ 2 : ℤ)

end

end A293407.P494067851167806622

namespace A293407

/-- `A293404(n)-2*n²` -/
def P494067851167806622.Spec : Prop :=
  ∀ n, P494067851167806622.a n = A293407 n

theorem P494067851167806622.correct : P494067851167806622.Spec := by
  intro n
  simp only [A293407, Nat.add_sub_cancel, A293407.P494067851167806622.a, A293407.P17658418096414741506.a, A293401, A293401.P2171145593388991176.a, A293404, A293404.P14301270800513650876.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293407

/-! ## A293407.P13288654720022234873

`A152738(n)+ceil(abs(sin(n)))`
-/

namespace A293407.P13288654720022234873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + ⌈|Real.sin (n : ℝ)|⌉

end

end A293407.P13288654720022234873

namespace A293407

/-- `A152738(n)+ceil(abs(sin(n)))` -/
def P13288654720022234873.Spec : Prop :=
  ∀ n, P13288654720022234873.a n = A293407 n

end A293407

/-! ## A293407.P14583951911762225983

`A152738(n)+A057427(n)`
-/

namespace A293407.P14583951911762225983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + A057427 n

end

end A293407.P14583951911762225983

namespace A293407

/-- `A152738(n)+A057427(n)` -/
def P14583951911762225983.Spec : Prop :=
  ∀ n, P14583951911762225983.a n = A293407 n

end A293407

/-! ## A293407.P9887263883973820797

`A152738(n)-A057428(n)`
-/

namespace A293407.P9887263883973820797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n - A057428 n

end

end A293407.P9887263883973820797

namespace A293407

/-- `A152738(n)-A057428(n)` -/
def P9887263883973820797.Spec : Prop :=
  ∀ n, P9887263883973820797.a n = A293407 n

end A293407

/-! ## A293407.P12556839408976031199

`A293404(n)-A058331(n)+1`
-/

namespace A293407.P12556839408976031199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293404 n - A058331 n + 1

end

end A293407.P12556839408976031199

namespace A293407

/-- `A293404(n)-A058331(n)+1` -/
def P12556839408976031199.Spec : Prop :=
  ∀ n, P12556839408976031199.a n = A293407 n

theorem P12556839408976031199.correct : P12556839408976031199.Spec := by
  intro n
  simp only [A293407, Nat.add_sub_cancel, A293407.P12556839408976031199.a, A293407.P17658418096414741506.a, A058331, A058331.P11448505833250118096.a, A293401, A293401.P2171145593388991176.a, A293404, A293404.P14301270800513650876.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293407

/-! ## A293407.P7010027135181644113

`A293400(n)+1-A253909(n)`
-/

namespace A293407.P7010027135181644113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (1 - A253909 n)

end

end A293407.P7010027135181644113

namespace A293407

/-- `A293400(n)+1-A253909(n)` -/
def P7010027135181644113.Spec : Prop :=
  ∀ n, P7010027135181644113.a n = A293407 n

end A293407

/-! ## A293407.P16139293411806836931

`2*A293401(n)-A293404(n)`
-/

namespace A293407.P16139293411806836931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293401 n - A293404 n

end

end A293407.P16139293411806836931

namespace A293407

/-- `2*A293401(n)-A293404(n)` -/
def P16139293411806836931.Spec : Prop :=
  ∀ n, P16139293411806836931.a n = A293407 n

theorem P16139293411806836931.correct : P16139293411806836931.Spec := by
  intro n
  simp only [A293407, Nat.add_sub_cancel, A293407.P16139293411806836931.a, A293407.P17658418096414741506.a, A293401, A293401.P2171145593388991176.a, A293404, A293404.P14301270800513650876.a, A293400, A293400.P18125686235547389511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293407

/-! ## A293407.P1656890977743288841

`A057427(n)+A293400(n)-n²`
-/

namespace A293407.P1656890977743288841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A293400 n - (n ^ 2 : ℤ))

end

end A293407.P1656890977743288841

namespace A293407

/-- `A057427(n)+A293400(n)-n²` -/
def P1656890977743288841.Spec : Prop :=
  ∀ n, P1656890977743288841.a n = A293407 n

end A293407

/-! ## A293407.P9896002697927657293

`A152738(n)+A053704(n+1)%2`
-/

namespace A293407.P9896002697927657293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + Int.tmod (A053704 (n + 1)) 2

end

end A293407.P9896002697927657293

namespace A293407

/-- `A152738(n)+A053704(n+1)%2` -/
def P9896002697927657293.Spec : Prop :=
  ∀ n, P9896002697927657293.a n = A293407 n

end A293407

/-! ## A293407.P8494195482798347739

`A152738(n)+A001221(A303809(n+1))`
-/

namespace A293407.P8494195482798347739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + A001221 (A303809 (n + 1)).toNat

end

end A293407.P8494195482798347739

namespace A293407

/-- `A152738(n)+A001221(A303809(n+1))` -/
def P8494195482798347739.Spec : Prop :=
  ∀ n, P8494195482798347739.a n = A293407 n

end A293407

/-! ## A293407.P10608178561633429831

`A152738(n)+A034460(A332476(n+1))`
-/

namespace A293407.P10608178561633429831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + A034460 (A332476 (n + 1)).toNat

end

end A293407.P10608178561633429831

namespace A293407

/-- `A152738(n)+A034460(A332476(n+1))` -/
def P10608178561633429831.Spec : Prop :=
  ∀ n, P10608178561633429831.a n = A293407 n

end A293407

/-! ## A293407.P16025579886079626913

`A293400(n)+A293401(n)-A293403(n)`
-/

namespace A293407.P16025579886079626913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (A293401 n - A293403 n)

end

end A293407.P16025579886079626913

namespace A293407

/-- `A293400(n)+A293401(n)-A293403(n)` -/
def P16025579886079626913.Spec : Prop :=
  ∀ n, P16025579886079626913.a n = A293407 n

theorem P16025579886079626913.correct : P16025579886079626913.Spec := by
  intro n
  simp only [A293407, Nat.add_sub_cancel, A293407.P16025579886079626913.a, A293407.P17658418096414741506.a, A293400, A293400.P18125686235547389511.a, A293401, A293401.P2171145593388991176.a, A293403, A293403.P14097951911837784715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293407

/-! ## A293407.P18139136433398939103

`A179184(n+2)+A152738(n)`
-/

namespace A293407.P18139136433398939103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (n + 2) + A152738 n

end

end A293407.P18139136433398939103

namespace A293407

/-- `A179184(n+2)+A152738(n)` -/
def P18139136433398939103.Spec : Prop :=
  ∀ n, P18139136433398939103.a n = A293407 n

end A293407

/-! ## A293407.P11499438658524571385

`A152738(n)+A169986(n)-A014217(n)`
-/

namespace A293407.P11499438658524571385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n + (A169986 n - A014217 n)

end

end A293407.P11499438658524571385

namespace A293407

/-- `A152738(n)+A169986(n)-A014217(n)` -/
def P11499438658524571385.Spec : Prop :=
  ∀ n, P11499438658524571385.a n = A293407 n

end A293407

/-! ## A293407.P16586667461758575918

`A004956(n²)-n²`
-/

namespace A293407.P16586667461758575918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n ^ 2) - (n ^ 2 : ℤ)

end

end A293407.P16586667461758575918

namespace A293407

/-- `A004956(n²)-n²` -/
def P16586667461758575918.Spec : Prop :=
  ∀ n, P16586667461758575918.a n = A293407 n

end A293407

/-! ## A293407.P63964253155890624

`A060143(n²)+ceil(abs(sin(n)))`
-/

namespace A293407.P63964253155890624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n ^ 2) + ⌈|Real.sin (n : ℝ)|⌉

end

end A293407.P63964253155890624

namespace A293407

/-- `A060143(n²)+ceil(abs(sin(n)))` -/
def P63964253155890624.Spec : Prop :=
  ∀ n, P63964253155890624.a n = A293407 n

end A293407

/-! ## A293407.P8074790854676464755

`A060143(n²)+A057427(n)`
-/

namespace A293407.P8074790854676464755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n ^ 2) + A057427 n

end

end A293407.P8074790854676464755

namespace A293407

/-- `A060143(n²)+A057427(n)` -/
def P8074790854676464755.Spec : Prop :=
  ∀ n, P8074790854676464755.a n = A293407 n

end A293407

/-!
# A293408: The integer k that minimizes |k/n^2 - 1/phi|, where phi = (1+sqrt(5))/2 (golden ratio).

The programs for A293408, the canonical program `A293408.P16576172023277288089` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293408 has offset 0).

The definition of A293408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293408.P16576172023277288089

`floor(1/2+n²/ϕ)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293408

/-- `floor(1/2+n²/ϕ)` -/
def P16576172023277288089.Spec : Prop :=
  ∀ n, P16576172023277288089.a n = A293408 n

theorem P16576172023277288089.correct : P16576172023277288089.Spec := by
  intro n
  simp only [A293408]

end A293408

/-! ## A293408.P11700394699522210377

`A293402(n)-n²`
-/

namespace A293408.P11700394699522210377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n - (n ^ 2 : ℤ)

end

end A293408.P11700394699522210377

namespace A293408

/-- `A293402(n)-n²` -/
def P11700394699522210377.Spec : Prop :=
  ∀ n, P11700394699522210377.a n = A293408 n

end A293408

/-! ## A293408.P16324578742886336005

`A293405(n)-2*n²`
-/

namespace A293408.P16324578742886336005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293405 n - (2 * n ^ 2 : ℤ)

end

end A293408.P16324578742886336005

namespace A293408

/-- `A293405(n)-2*n²` -/
def P16324578742886336005.Spec : Prop :=
  ∀ n, P16324578742886336005.a n = A293408 n

end A293408

/-! ## A293408.P8987571526695035330

`2*A293402(n)-A293405(n)`
-/

namespace A293408.P8987571526695035330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293402 n - A293405 n

end

end A293408.P8987571526695035330

namespace A293408

/-- `2*A293402(n)-A293405(n)` -/
def P8987571526695035330.Spec : Prop :=
  ∀ n, P8987571526695035330.a n = A293408 n

end A293408

/-! ## A293408.P6934490668282385860

`ceil(floor(A004277(n)*A028310(n)/ϕ)/2)`
-/

namespace A293408.P6934490668282385860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A004277 n * A028310 n : ℝ) / Real.goldenRatio⌋ : ℚ) / 2⌉

end

end A293408.P6934490668282385860

namespace A293408

/-- `ceil(floor(A004277(n)*A028310(n)/ϕ)/2)` -/
def P6934490668282385860.Spec : Prop :=
  ∀ n, P6934490668282385860.a n = A293408 n

end A293408

/-! ## A293408.P4342520784243537401

`A293400(n)+A293402(n)-A293403(n)`
-/

namespace A293408.P4342520784243537401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (A293402 n - A293403 n)

end

end A293408.P4342520784243537401

namespace A293408

/-- `A293400(n)+A293402(n)-A293403(n)` -/
def P4342520784243537401.Spec : Prop :=
  ∀ n, P4342520784243537401.a n = A293408 n

end A293408

/-! ## A293408.P6104483500750030821

`A293401(n)+A293402(n)-A293404(n)`
-/

namespace A293408.P6104483500750030821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293401 n + (A293402 n - A293404 n)

end

end A293408.P6104483500750030821

namespace A293408

/-- `A293401(n)+A293402(n)-A293404(n)` -/
def P6104483500750030821.Spec : Prop :=
  ∀ n, P6104483500750030821.a n = A293408 n

end A293408

/-! ## A293408.P15103920173210713762

`A293407(n)+A293405(n)-A293404(n)`
-/

namespace A293408.P15103920173210713762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n + (A293405 n - A293404 n)

end

end A293408.P15103920173210713762

namespace A293408

/-- `A293407(n)+A293405(n)-A293404(n)` -/
def P15103920173210713762.Spec : Prop :=
  ∀ n, P15103920173210713762.a n = A293408 n

end A293408

/-! ## A293408.P2221475859173574948

`A293407(n)-(A293401(n)-A293402(n))`
-/

namespace A293408.P2221475859173574948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n - (A293401 n - A293402 n)

end

end A293408.P2221475859173574948

namespace A293408

/-- `A293407(n)-(A293401(n)-A293402(n))` -/
def P2221475859173574948.Spec : Prop :=
  ∀ n, P2221475859173574948.a n = A293408 n

end A293408

/-! ## A293408.P1230839556757476450

`A293407(n)-A293407(A293404(n)-A293405(n))`
-/

namespace A293408.P1230839556757476450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n - A293407 (A293404 n - A293405 n).toNat

end

end A293408.P1230839556757476450

namespace A293408

/-- `A293407(n)-A293407(A293404(n)-A293405(n))` -/
def P1230839556757476450.Spec : Prop :=
  ∀ n, P1230839556757476450.a n = A293408 n

end A293408

/-! ## A293408.P1153442108522592805

`A007067(n²)-n²`
-/

namespace A293408.P1153442108522592805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n ^ 2) - (n ^ 2 : ℤ)

end

end A293408.P1153442108522592805

namespace A293408

/-- `A007067(n²)-n²` -/
def P1153442108522592805.Spec : Prop :=
  ∀ n, P1153442108522592805.a n = A293408 n

end A293408

/-! ## A293408.P11113609295008608980

`ceil(floor(A004277(n²)/ϕ)/2)`
-/

namespace A293408.P11113609295008608980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A004277 (n ^ 2) : ℝ) / Real.goldenRatio⌋ : ℚ) / 2⌉

end

end A293408.P11113609295008608980

namespace A293408

/-- `ceil(floor(A004277(n²)/ϕ)/2)` -/
def P11113609295008608980.Spec : Prop :=
  ∀ n, P11113609295008608980.a n = A293408 n

end A293408

/-! ## A293408.P16761700911556561761

`A101803(n²)`
-/

namespace A293408.P16761700911556561761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (n ^ 2)

end

end A293408.P16761700911556561761

namespace A293408

/-- `A101803(n²)` -/
def P16761700911556561761.Spec : Prop :=
  ∀ n, P16761700911556561761.a n = A293408 n

end A293408

/-! ## A293408.P6403991047974830320

`n²-A334415(n²)`
-/

namespace A293408.P6403991047974830320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A334415 (n ^ 2)

end

end A293408.P6403991047974830320

namespace A293408

/-- `n²-A334415(n²)` -/
def P6403991047974830320.Spec : Prop :=
  ∀ n, P6403991047974830320.a n = A293408 n

end A293408

/-! ## A293408.P7582300699667984092

`A029922(A029921(A101803(n*n)))`
-/

namespace A293408.P7582300699667984092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A029921 (A101803 (n * n)).toNat).toNat

end

end A293408.P7582300699667984092

namespace A293408

/-- `A029922(A029921(A101803(n*n)))` -/
def P7582300699667984092.Spec : Prop :=
  ∀ n, P7582300699667984092.a n = A293408 n

end A293408

/-!
# A293410: Least integer k such that k/n^2 > sqrt(3).

The programs for A293410, the canonical program `A293410.P13299819704749243722` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293410 has offset 0).

The definition of A293410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293410.P12121480801030876779

`ceil(n²*sqrt(3))`
-/

namespace A293410.P12121480801030876779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) * Real.sqrt (3 : ℝ)⌉

end

end A293410.P12121480801030876779

namespace A293410

/-- `ceil(n²*sqrt(3))` -/
def P12121480801030876779.Spec : Prop :=
  ∀ n, P12121480801030876779.a n = A293410 n

end A293410

/-! ## A293410.P13299819704749243722

`A171972(n)+n²%(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293410

/-- `A171972(n)+n²%(n+1)` -/
def P13299819704749243722.Spec : Prop :=
  ∀ n, P13299819704749243722.a n = A293410 n

theorem P13299819704749243722.correct : P13299819704749243722.Spec := by
  intro n
  simp only [A293410]

end A293410

/-! ## A293410.P1423579593577986313

`A171972(n)+A057427(n)`
-/

namespace A293410.P1423579593577986313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171972 n + A057427 n

end

end A293410.P1423579593577986313

namespace A293410

/-- `A171972(n)+A057427(n)` -/
def P1423579593577986313.Spec : Prop :=
  ∀ n, P1423579593577986313.a n = A293410 n

end A293410

/-! ## A293410.P7952590093609883748

`A171972(n)-A057428(n)`
-/

namespace A293410.P7952590093609883748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171972 n - A057428 n

end

end A293410.P7952590093609883748

namespace A293410

/-- `A171972(n)-A057428(n)` -/
def P7952590093609883748.Spec : Prop :=
  ∀ n, P7952590093609883748.a n = A293410 n

end A293410

/-! ## A293410.P15468991436899327223

`A178226(A004277(n))+floor(2*sqrt(3/4*n²²))`
-/

namespace A293410.P15468991436899327223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A004277 n).toNat + ⌊2 * Real.sqrt ((3 : ℚ) / 4 * ((n ^ 2) ^ 2 : ℚ) : ℝ)⌋

end

end A293410.P15468991436899327223

namespace A293410

/-- `A178226(A004277(n))+floor(2*sqrt(3/4*n²²))` -/
def P15468991436899327223.Spec : Prop :=
  ∀ n, P15468991436899327223.a n = A293410 n

end A293410

/-! ## A293410.P7358799739614985030

`A178226(A062383(n))+floor(2*sqrt(3/4*n²²))`
-/

namespace A293410.P7358799739614985030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A062383 n).toNat + ⌊2 * Real.sqrt ((3 : ℚ) / 4 * ((n ^ 2) ^ 2 : ℚ) : ℝ)⌋

end

end A293410.P7358799739614985030

namespace A293410

/-- `A178226(A062383(n))+floor(2*sqrt(3/4*n²²))` -/
def P7358799739614985030.Spec : Prop :=
  ∀ n, P7358799739614985030.a n = A293410 n

end A293410

/-! ## A293410.P757872584371978844

`(A171972(n)+1)%A171972(n+1)`
-/

namespace A293410.P757872584371978844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171972 n + 1) (A171972 (n + 1))

end

end A293410.P757872584371978844

namespace A293410

/-- `(A171972(n)+1)%A171972(n+1)` -/
def P757872584371978844.Spec : Prop :=
  ∀ n, P757872584371978844.a n = A293410 n

end A293410

/-! ## A293410.P12330448596744268793

`A178226(A109053(n))+floor(2*sqrt(3/4*n²²))`
-/

namespace A293410.P12330448596744268793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A109053 n).toNat + ⌊2 * Real.sqrt ((3 : ℚ) / 4 * ((n ^ 2) ^ 2 : ℚ) : ℝ)⌋

end

end A293410.P12330448596744268793

namespace A293410

/-- `A178226(A109053(n))+floor(2*sqrt(3/4*n²²))` -/
def P12330448596744268793.Spec : Prop :=
  ∀ n, P12330448596744268793.a n = A293410 n

end A293410

/-! ## A293410.P2943236461959595990

`A171972(n)+char[A172002(n+1)]`
-/

namespace A293410.P2943236461959595990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171972 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293410.P2943236461959595990

namespace A293410

/-- `A171972(n)+char[A172002(n+1)]` -/
def P2943236461959595990.Spec : Prop :=
  ∀ n, P2943236461959595990.a n = A293410 n

end A293410

/-! ## A293410.P16108157244578427126

`A198081(n²)`
-/

namespace A293410.P16108157244578427126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n ^ 2)

end

end A293410.P16108157244578427126

namespace A293410

/-- `A198081(n²)` -/
def P16108157244578427126.Spec : Prop :=
  ∀ n, P16108157244578427126.a n = A293410 n

end A293410

/-! ## A293410.P3940491495097263147

`xor(1, xor(1, A198081(n*n)))`
-/

namespace A293410.P3940491495097263147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A198081 (n * n)))

end

end A293410.P3940491495097263147

namespace A293410

/-- `xor(1, xor(1, A198081(n*n)))` -/
def P3940491495097263147.Spec : Prop :=
  ∀ n, P3940491495097263147.a n = A293410 n

end A293410

/-! ## A293410.P17236201389578483241

`A198081(n^2)%A031936(n+1)`
-/

namespace A293410.P17236201389578483241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198081 (n ^ 2)) (A031936 (n + 1))

end

end A293410.P17236201389578483241

namespace A293410

/-- `A198081(n^2)%A031936(n+1)` -/
def P17236201389578483241.Spec : Prop :=
  ∀ n, P17236201389578483241.a n = A293410 n

end A293410

/-! ## A293410.P13194869495572893196

`A001876(A001876(n))*A198081(n*n)`
-/

namespace A293410.P13194869495572893196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A001876 n).toNat * A198081 (n * n)

end

end A293410.P13194869495572893196

namespace A293410

/-- `A001876(A001876(n))*A198081(n*n)` -/
def P13194869495572893196.Spec : Prop :=
  ∀ n, P13194869495572893196.a n = A293410 n

end A293410

/-! ## A293410.P10231268880287277443

`A215781(n²)+n²`
-/

namespace A293410.P10231268880287277443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293410.P10231268880287277443

namespace A293410

/-- `A215781(n²)+n²` -/
def P10231268880287277443.Spec : Prop :=
  ∀ n, P10231268880287277443.a n = A293410 n

end A293410

/-!
# A293411: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4.

The programs for A293411, the canonical program `A293411.P15847190198700554704` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293411 has offset 0).

The definition of A293411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A293411.P15847190198700554704`, by `A293411.P15847190198700554704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293411.P15847190198700554704

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293411

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P15847190198700554704.Spec : Prop :=
  ∀ n, (P15847190198700554704.a n : ℤ) = A293411 n

theorem P15847190198700554704.correct : P15847190198700554704.Spec := by
  intro n
  simp only [A293411]

end A293411

/-! ## A293411.P11771167859610940858

`round(2*A000032(n+2)/5)`
-/

namespace A293411.P11771167859610940858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A000032 (n + 2) : ℚ) / 5)

end

end A293411.P11771167859610940858

namespace A293411

/-- `round(2*A000032(n+2)/5)` -/
def P11771167859610940858.Spec : Prop :=
  ∀ n, P11771167859610940858.a n = A293411 n

end A293411

/-! ## A293411.P7394302474294472025

`ogf((1+x+x^2)/(1-x-x^3-x^4))`
-/

namespace A293411.P7394302474294472025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, 0, -1, -1] n

end

end A293411.P7394302474294472025

namespace A293411

/-- `ogf((1+x+x^2)/(1-x-x^3-x^4))` -/
def P7394302474294472025.Spec : Prop :=
  ∀ n, P7394302474294472025.a n = A293411 n

end A293411

/-! ## A293411.P8513432473227100385

`∑[A126116(n)]`
-/

namespace A293411.P8513432473227100385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293411.P8513432473227100385

namespace A293411

/-- `∑[A126116(n)]` -/
def P8513432473227100385.Spec : Prop :=
  ∀ n, P8513432473227100385.a n = A293411 n

end A293411

/-! ## A293411.P15737048888110299336

`∑[2*floor(A000032(n)/5)+1]`
-/

namespace A293411.P15737048888110299336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A000032 n : ℚ) / 5⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293411.P15737048888110299336

namespace A293411

/-- `∑[2*floor(A000032(n)/5)+1]` -/
def P15737048888110299336.Spec : Prop :=
  ∀ n, P15737048888110299336.a n = A293411 n

end A293411

/-! ## A293411.P13053809060759960674

`∑[2*A000045(n-1)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A293411.P13053809060759960674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * A000045 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293411.P13053809060759960674

namespace A293411

/-- `∑[2*A000045(n-1)-a(n-2)]` -/
def P13053809060759960674.Spec : Prop :=
  ∀ n, P13053809060759960674.a n = A293411 n

end A293411

/-! ## A293411.P17752797136548594739

`A111569(n)+A074662(n)`
-/

namespace A293411.P17752797136548594739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 n + A074662 n

end

end A293411.P17752797136548594739

namespace A293411

/-- `A111569(n)+A074662(n)` -/
def P17752797136548594739.Spec : Prop :=
  ∀ n, P17752797136548594739.a n = A293411 n

end A293411

/-! ## A293411.P16139702953044956815

`A236165(n)+A195971(n)`
-/

namespace A293411.P16139702953044956815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n + A195971 n

end

end A293411.P16139702953044956815

namespace A293411

/-- `A236165(n)+A195971(n)` -/
def P16139702953044956815.Spec : Prop :=
  ∀ n, P16139702953044956815.a n = A293411 n

end A293411

/-! ## A293411.P8015925294098715630

`∑[A295683(n)-A056594(n)]`
-/

namespace A293411.P8015925294098715630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 n - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293411.P8015925294098715630

namespace A293411

/-- `∑[A295683(n)-A056594(n)]` -/
def P8015925294098715630.Spec : Prop :=
  ∀ n, P8015925294098715630.a n = A293411 n

end A293411

/-! ## A293411.P14205861667703050239

`∑[A295690(n)-A236165(n)]`
-/

namespace A293411.P14205861667703050239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n - A236165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293411.P14205861667703050239

namespace A293411

/-- `∑[A295690(n)-A236165(n)]` -/
def P14205861667703050239.Spec : Prop :=
  ∀ n, P14205861667703050239.a n = A293411 n

end A293411

/-! ## A293411.P15601395919030055677

`A074677(n)+A000045(n+1)`
-/

namespace A293411.P15601395919030055677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n + A000045 (n + 1)

end

end A293411.P15601395919030055677

namespace A293411

/-- `A074677(n)+A000045(n+1)` -/
def P15601395919030055677.Spec : Prop :=
  ∀ n, P15601395919030055677.a n = A293411 n

end A293411

/-! ## A293411.P15291891072047215086

`2*A006498(n)-A056594(n)`
-/

namespace A293411.P15291891072047215086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006498 n - A056594 n

end

end A293411.P15291891072047215086

namespace A293411

/-- `2*A006498(n)-A056594(n)` -/
def P15291891072047215086.Spec : Prop :=
  ∀ n, P15291891072047215086.a n = A293411 n

end A293411

/-! ## A293411.P10392405005621145945

`A103609(2*(n+1))+A074677(n)`
-/

namespace A293411.P10392405005621145945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 1)) + A074677 n

end

end A293411.P10392405005621145945

namespace A293411

/-- `A103609(2*(n+1))+A074677(n)` -/
def P10392405005621145945.Spec : Prop :=
  ∀ n, P10392405005621145945.a n = A293411 n

end A293411

/-! ## A293411.P3320964174142260378

`2*A074677(n+1)-A056594(n)`
-/

namespace A293411.P3320964174142260378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074677 (n + 1) - A056594 n

end

end A293411.P3320964174142260378

namespace A293411

/-- `2*A074677(n+1)-A056594(n)` -/
def P3320964174142260378.Spec : Prop :=
  ∀ n, P3320964174142260378.a n = A293411 n

end A293411

/-! ## A293411.P1464578506391885162

`A000045(n+2)-Δ[A126116(n)/2]`
-/

namespace A293411.P1464578506391885162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126116 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) - (f1 (n + 1) - f1 n)

end

end A293411.P1464578506391885162

namespace A293411

/-- `A000045(n+2)-Δ[A126116(n)/2]` -/
def P1464578506391885162.Spec : Prop :=
  ∀ n, P1464578506391885162.a n = (A293411 n : ℚ)

end A293411

/-! ## A293411.P6364249465714418561

`A163805(n+1)+2*A074677(n+1)`
-/

namespace A293411.P6364249465714418561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (n + 1) + 2 * A074677 (n + 1)

end

end A293411.P6364249465714418561

namespace A293411

/-- `A163805(n+1)+2*A074677(n+1)` -/
def P6364249465714418561.Spec : Prop :=
  ∀ n, P6364249465714418561.a n = A293411 n

end A293411

/-! ## A293411.P9435553433311212123

`A000045(n)+A000032(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A293411.P9435553433311212123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 n + (A000032 n - a (n - 2))

end

end A293411.P9435553433311212123

namespace A293411

/-- `A000045(n)+A000032(n)-a(n-2)` -/
def P9435553433311212123.Spec : Prop :=
  ∀ n, P9435553433311212123.a n = A293411 n

end A293411

/-! ## A293411.P3900162459207856236

`A112299(2*(n+1))+2*A074677(n+1)`
-/

namespace A293411.P3900162459207856236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * (n + 1)) + 2 * A074677 (n + 1)

end

end A293411.P3900162459207856236

namespace A293411

/-- `A112299(2*(n+1))+2*A074677(n+1)` -/
def P3900162459207856236.Spec : Prop :=
  ∀ n, P3900162459207856236.a n = A293411 n

end A293411

/-! ## A293411.P13807880939713130282

`A056594(n)+A111573(n)+A074677(n)`
-/

namespace A293411.P13807880939713130282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (A111573 n + A074677 n)

end

end A293411.P13807880939713130282

namespace A293411

/-- `A056594(n)+A111573(n)+A074677(n)` -/
def P13807880939713130282.Spec : Prop :=
  ∀ n, P13807880939713130282.a n = A293411 n

end A293411

/-! ## A293411.P1433514244530810332

`A056594(n)+A111574(n)+A111572(n)`
-/

namespace A293411.P1433514244530810332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (A111574 n + A111572 n)

end

end A293411.P1433514244530810332

namespace A293411

/-- `A056594(n)+A111574(n)+A111572(n)` -/
def P1433514244530810332.Spec : Prop :=
  ∀ n, P1433514244530810332.a n = A293411 n

end A293411

/-!
# A293412: Greatest integer k such that k/n^2 < e.

The programs for A293412, the canonical program `A293412.P1060611678240118656` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293412 has offset 0).

The definition of A293412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293412.P1060611678240118656

`floor(e*n²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293412

/-- `floor(e*n²)` -/
def P1060611678240118656.Spec : Prop :=
  ∀ n, P1060611678240118656.a n = A293412 n

theorem P1060611678240118656.correct : P1060611678240118656.Spec := by
  intro n
  simp only [A293412]

end A293412

/-! ## A293412.P251704401328970053

`A293413(n)+A057428(n)`
-/

namespace A293412.P251704401328970053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293413 n + A057428 n

end

end A293412.P251704401328970053

namespace A293412

/-- `A293413(n)+A057428(n)` -/
def P251704401328970053.Spec : Prop :=
  ∀ n, P251704401328970053.a n = A293412 n

end A293412

/-! ## A293412.P6382080334630468111

`A293413(n)-A057427(n)`
-/

namespace A293412.P6382080334630468111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293413 n - A057427 n

end

end A293412.P6382080334630468111

namespace A293412

/-- `A293413(n)-A057427(n)` -/
def P6382080334630468111.Spec : Prop :=
  ∀ n, P6382080334630468111.a n = A293412 n

end A293412

/-! ## A293412.P791163822208855621

`(A293413(n)-1)%A096000(n)`
-/

namespace A293412.P791163822208855621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293413 n - 1) (A096000 n)

end

end A293412.P791163822208855621

namespace A293412

/-- `(A293413(n)-1)%A096000(n)` -/
def P791163822208855621.Spec : Prop :=
  ∀ n, P791163822208855621.a n = A293412 n

end A293412

/-! ## A293412.P14756156480180139011

`A293413(n)-A000040(n+1)%2`
-/

namespace A293412.P14756156480180139011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293413 n - Int.tmod (A000040 (n + 1)) 2

end

end A293412.P14756156480180139011

namespace A293412

/-- `A293413(n)-A000040(n+1)%2` -/
def P14756156480180139011.Spec : Prop :=
  ∀ n, P14756156480180139011.a n = A293412 n

end A293412

/-! ## A293412.P9888124952802252059

`record[floor(e*A131805(n))]`
-/

namespace A293412.P9888124952802252059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A131805 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293412.P9888124952802252059

namespace A293412

/-- `record[floor(e*A131805(n))]` -/
def P9888124952802252059.Spec : Prop :=
  ∀ n, P9888124952802252059.a n = A293412 n

end A293412

/-! ## A293412.P18278622435650835229

`A293413(n)-A144104(n+1)%2`
-/

namespace A293412.P18278622435650835229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293413 n - Int.tmod (A144104 (n + 1)) 2

end

end A293412.P18278622435650835229

namespace A293412

/-- `A293413(n)-A144104(n+1)%2` -/
def P18278622435650835229.Spec : Prop :=
  ∀ n, P18278622435650835229.a n = A293412 n

end A293412

/-! ## A293412.P138411489287455576

`A293413(n)-A014963(∑[n+1])%(n+1)`
-/

namespace A293412.P138411489287455576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293413 n - Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A293412.P138411489287455576

namespace A293412

/-- `A293413(n)-A014963(∑[n+1])%(n+1)` -/
def P138411489287455576.Spec : Prop :=
  ∀ n, P138411489287455576.a n = A293412 n

end A293412

/-! ## A293412.P7668426381167060413

`A022843(n²)`
-/

namespace A293412.P7668426381167060413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n ^ 2)

end

end A293412.P7668426381167060413

namespace A293412

/-- `A022843(n²)` -/
def P7668426381167060413.Spec : Prop :=
  ∀ n, P7668426381167060413.a n = A293412 n

end A293412

/-! ## A293412.P2711746841963946786

`A022843(n*n)%A051662(n)`
-/

namespace A293412.P2711746841963946786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022843 (n * n)) (A051662 n)

end

end A293412.P2711746841963946786

namespace A293412

/-- `A022843(n*n)%A051662(n)` -/
def P2711746841963946786.Spec : Prop :=
  ∀ n, P2711746841963946786.a n = A293412 n

end A293412

/-! ## A293412.P8574654622044257125

`A121384(n²)+A057428(n)`
-/

namespace A293412.P8574654622044257125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n ^ 2) + A057428 n

end

end A293412.P8574654622044257125

namespace A293412

/-- `A121384(n²)+A057428(n)` -/
def P8574654622044257125.Spec : Prop :=
  ∀ n, P8574654622044257125.a n = A293412 n

end A293412

/-! ## A293412.P5692167864307744854

`A121384(n²)-A057427(n)`
-/

namespace A293412.P5692167864307744854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n ^ 2) - A057427 n

end

end A293412.P5692167864307744854

namespace A293412

/-- `A121384(n²)-A057427(n)` -/
def P5692167864307744854.Spec : Prop :=
  ∀ n, P5692167864307744854.a n = A293412 n

end A293412

/-! ## A293412.P11537537005078313440

`A121384(n²)-A178334(n)`
-/

namespace A293412.P11537537005078313440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n ^ 2) - A178334 n

end

end A293412.P11537537005078313440

namespace A293412

/-- `A121384(n²)-A178334(n)` -/
def P11537537005078313440.Spec : Prop :=
  ∀ n, P11537537005078313440.a n = A293412 n

end A293412

/-!
# A293413: Least integer k such that k/n^2 > e.

The programs for A293413, the canonical program `A293413.P13698376955212518871` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293413 has offset 0).

The definition of A293413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293413.P13698376955212518871

`ceil(e*n²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293413

/-- `ceil(e*n²)` -/
def P13698376955212518871.Spec : Prop :=
  ∀ n, P13698376955212518871.a n = A293413 n

theorem P13698376955212518871.correct : P13698376955212518871.Spec := by
  intro n
  simp only [A293413]

end A293413

/-! ## A293413.P2239088450815907119

`A293412(n)+A057427(n)`
-/

namespace A293413.P2239088450815907119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n + A057427 n

end

end A293413.P2239088450815907119

namespace A293413

/-- `A293412(n)+A057427(n)` -/
def P2239088450815907119.Spec : Prop :=
  ∀ n, P2239088450815907119.a n = A293413 n

end A293413

/-! ## A293413.P8327514539087244730

`A293412(n)-A057428(n)`
-/

namespace A293413.P8327514539087244730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n - A057428 n

end

end A293413.P8327514539087244730

namespace A293413

/-- `A293412(n)-A057428(n)` -/
def P8327514539087244730.Spec : Prop :=
  ∀ n, P8327514539087244730.a n = A293413 n

end A293413

/-! ## A293413.P15944419219874014457

`A293412(n)+1-A000007(n)`
-/

namespace A293413.P15944419219874014457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n + (1 - A000007 n)

end

end A293413.P15944419219874014457

namespace A293413

/-- `A293412(n)+1-A000007(n)` -/
def P15944419219874014457.Spec : Prop :=
  ∀ n, P15944419219874014457.a n = A293413 n

end A293413

/-! ## A293413.P4388496092506878967

`A293412(n)+2-A054977(n)`
-/

namespace A293413.P4388496092506878967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n + (2 - A054977 n)

end

end A293413.P4388496092506878967

namespace A293413

/-- `A293412(n)+2-A054977(n)` -/
def P4388496092506878967.Spec : Prop :=
  ∀ n, P4388496092506878967.a n = A293413 n

end A293413

/-! ## A293413.P9632644537129549818

`A293412(n)+n/A028310(n)`
-/

namespace A293413.P9632644537129549818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293412 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A293413.P9632644537129549818

namespace A293413

/-- `A293412(n)+n/A028310(n)` -/
def P9632644537129549818.Spec : Prop :=
  ∀ n, P9632644537129549818.a n = (A293413 n : ℚ)

end A293413

/-! ## A293413.P4401837849084550753

`A293412(n)+A003415(A006530(n+1))`
-/

namespace A293413.P4401837849084550753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n + A003415 (A006530 (n + 1)).toNat

end

end A293413.P4401837849084550753

namespace A293413

/-- `A293412(n)+A003415(A006530(n+1))` -/
def P4401837849084550753.Spec : Prop :=
  ∀ n, P4401837849084550753.a n = A293413 n

end A293413

/-! ## A293413.P13871454047591582576

`A293412(n)+A078899(A038026(n+1))%(n+1)`
-/

namespace A293413.P13871454047591582576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n + Int.tmod (A078899 (A038026 (n + 1)).toNat) (n + 1 : ℤ)

end

end A293413.P13871454047591582576

namespace A293413

/-- `A293412(n)+A078899(A038026(n+1))%(n+1)` -/
def P13871454047591582576.Spec : Prop :=
  ∀ n, P13871454047591582576.a n = A293413 n

end A293413

/-! ## A293413.P16612606932685718625

`A293412(n)+n/A003056(A000124(n))`
-/

namespace A293413.P16612606932685718625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293412 n : ℚ) + (n : ℚ) / (A003056 (A000124 n).toNat : ℚ)

end

end A293413.P16612606932685718625

namespace A293413

/-- `A293412(n)+n/A003056(A000124(n))` -/
def P16612606932685718625.Spec : Prop :=
  ∀ n, P16612606932685718625.a n = (A293413 n : ℚ)

end A293413

/-! ## A293413.P7163341169119241388

`A293412(n)+A014963(∑[n+1])%(n+1)`
-/

namespace A293413.P7163341169119241388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293412 n + Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A293413.P7163341169119241388

namespace A293413

/-- `A293412(n)+A014963(∑[n+1])%(n+1)` -/
def P7163341169119241388.Spec : Prop :=
  ∀ n, P7163341169119241388.a n = A293413 n

end A293413

/-! ## A293413.P11540887987906499449

`A057427(n)+A022843(n²)`
-/

namespace A293413.P11540887987906499449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A022843 (n ^ 2)

end

end A293413.P11540887987906499449

namespace A293413

/-- `A057427(n)+A022843(n²)` -/
def P11540887987906499449.Spec : Prop :=
  ∀ n, P11540887987906499449.a n = A293413 n

end A293413

/-! ## A293413.P5258382959946240511

`A178334(n)+A022843(n²)`
-/

namespace A293413.P5258382959946240511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A022843 (n ^ 2)

end

end A293413.P5258382959946240511

namespace A293413

/-- `A178334(n)+A022843(n²)` -/
def P5258382959946240511.Spec : Prop :=
  ∀ n, P5258382959946240511.a n = A293413 n

end A293413

/-! ## A293413.P12536362034479126241

`A022843(n²)-A057428(n)`
-/

namespace A293413.P12536362034479126241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n ^ 2) - A057428 n

end

end A293413.P12536362034479126241

namespace A293413

/-- `A022843(n²)-A057428(n)` -/
def P12536362034479126241.Spec : Prop :=
  ∀ n, P12536362034479126241.a n = A293413 n

end A293413

/-! ## A293413.P16399987182080763898

`A059841(A006093(n+1))+A022843(n²)`
-/

namespace A293413.P16399987182080763898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A006093 (n + 1)).toNat + A022843 (n ^ 2)

end

end A293413.P16399987182080763898

namespace A293413

/-- `A059841(A006093(n+1))+A022843(n²)` -/
def P16399987182080763898.Spec : Prop :=
  ∀ n, P16399987182080763898.a n = A293413 n

end A293413

/-! ## A293413.P5404707760790722666

`A022843(n²)+A001222(A035031(A001222(n+1)+1))`
-/

namespace A293413.P5404707760790722666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n ^ 2) + A001222 (A035031 (A001222 (n + 1) + 1).toNat).toNat

end

end A293413.P5404707760790722666

namespace A293413

/-- `A022843(n²)+A001222(A035031(A001222(n+1)+1))` -/
def P5404707760790722666.Spec : Prop :=
  ∀ n, P5404707760790722666.a n = A293413 n

end A293413

/-! ## A293413.P9923877966976625011

`A121384(n²)`
-/

namespace A293413.P9923877966976625011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n ^ 2)

end

end A293413.P9923877966976625011

namespace A293413

/-- `A121384(n²)` -/
def P9923877966976625011.Spec : Prop :=
  ∀ n, P9923877966976625011.a n = A293413 n

end A293413

/-!
# A293414: The integer k that minimizes |k/n^2 - e|.

The programs for A293414, the canonical program `A293414.P13467474392287543862` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293414 has offset 0).

The definition of A293414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293414.P13467474392287543862

`floor(1/2+n²*e)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293414

/-- `floor(1/2+n²*e)` -/
def P13467474392287543862.Spec : Prop :=
  ∀ n, P13467474392287543862.a n = A293414 n

theorem P13467474392287543862.correct : P13467474392287543862.Spec := by
  intro n
  simp only [A293414]

end A293414

/-! ## A293414.P12756534270814660600

`record[round(e*A131805(n))]`
-/

namespace A293414.P12756534270814660600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A131805 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293414.P12756534270814660600

namespace A293414

/-- `record[round(e*A131805(n))]` -/
def P12756534270814660600.Spec : Prop :=
  ∀ n, P12756534270814660600.a n = A293414 n

end A293414

/-! ## A293414.P12851634776994348627

`ceil((A293413(2*n)-2)/4)`
-/

namespace A293414.P12851634776994348627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293413 (2 * n) - 2 : ℚ) / 4⌉

end

end A293414.P12851634776994348627

namespace A293414

/-- `ceil((A293413(2*n)-2)/4)` -/
def P12851634776994348627.Spec : Prop :=
  ∀ n, P12851634776994348627.a n = A293414 n

end A293414

/-! ## A293414.P3738780962391180605

`ceil(e*n²-1/A178815(n+1))`
-/

namespace A293414.P3738780962391180605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (n ^ 2 : ℝ) - (1 / (A178815 (n + 1) : ℚ) : ℝ)⌉

end

end A293414.P3738780962391180605

namespace A293414

/-- `ceil(e*n²-1/A178815(n+1))` -/
def P3738780962391180605.Spec : Prop :=
  ∀ n, P3738780962391180605.a n = A293414 n

end A293414

/-! ## A293414.P12700988916945875939

`ceil(A276853(n²)/2)`
-/

namespace A293414.P12700988916945875939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276853 (n ^ 2) : ℚ) / 2⌉

end

end A293414.P12700988916945875939

namespace A293414

/-- `ceil(A276853(n²)/2)` -/
def P12700988916945875939.Spec : Prop :=
  ∀ n, P12700988916945875939.a n = A293414 n

end A293414

/-! ## A293414.P6577177562197694294

`A276853(n²)-A293412(n)`
-/

namespace A293414.P6577177562197694294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n ^ 2) - A293412 n

end

end A293414.P6577177562197694294

namespace A293414

/-- `A276853(n²)-A293412(n)` -/
def P6577177562197694294.Spec : Prop :=
  ∀ n, P6577177562197694294.a n = A293414 n

end A293414

/-! ## A293414.P4551951645487927028

`A022852(n²)`
-/

namespace A293414.P4551951645487927028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 (n ^ 2)

end

end A293414.P4551951645487927028

namespace A293414

/-- `A022852(n²)` -/
def P4551951645487927028.Spec : Prop :=
  ∀ n, P4551951645487927028.a n = A293414 n

end A293414

/-! ## A293414.P2371045285559439191

`A022843(A005843(n²))-A022843(n²)`
-/

namespace A293414.P2371045285559439191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (A005843 (n ^ 2)).toNat - A022843 (n ^ 2)

end

end A293414.P2371045285559439191

namespace A293414

/-- `A022843(A005843(n²))-A022843(n²)` -/
def P2371045285559439191.Spec : Prop :=
  ∀ n, P2371045285559439191.a n = A293414 n

end A293414

/-!
# A293418: a(n) is the greatest integer k such that k/Fibonacci(n) < sqrt(2).

The programs for A293418, the canonical program `A293418.P17959891732544130175` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293418 has offset 0).

The definition of A293418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293418.P17959891732544130175

`floor(sqrt(2)*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293418

/-- `floor(sqrt(2)*A000045(n))` -/
def P17959891732544130175.Spec : Prop :=
  ∀ n, P17959891732544130175.a n = A293418 n

theorem P17959891732544130175.correct : P17959891732544130175.Spec := by
  intro n
  simp only [A293418]

end A293418

/-! ## A293418.P12746534421236030566

`floor(sqrt(2)*A212804(n+1))`
-/

namespace A293418.P12746534421236030566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A212804 (n + 1) : ℝ)⌋

end

end A293418.P12746534421236030566

namespace A293418

/-- `floor(sqrt(2)*A212804(n+1))` -/
def P12746534421236030566.Spec : Prop :=
  ∀ n, P12746534421236030566.a n = A293418 n

end A293418

/-! ## A293418.P13301813969801707841

`floor((A001611(n)-1)*sqrt(2))`
-/

namespace A293418.P13301813969801707841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A293418.P13301813969801707841

namespace A293418

/-- `floor((A001611(n)-1)*sqrt(2))` -/
def P13301813969801707841.Spec : Prop :=
  ∀ n, P13301813969801707841.a n = A293418 n

end A293418

/-! ## A293418.P7011816251508480451

`floor(sqrt(2)*A053602(2*n))`
-/

namespace A293418.P7011816251508480451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A053602 (2 * n) : ℝ)⌋

end

end A293418.P7011816251508480451

namespace A293418

/-- `floor(sqrt(2)*A053602(2*n))` -/
def P7011816251508480451.Spec : Prop :=
  ∀ n, P7011816251508480451.a n = A293418 n

end A293418

/-! ## A293418.P8527172950932208012

`floor(sqrt(2)*A103609(2*n))`
-/

namespace A293418.P8527172950932208012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A103609 (2 * n) : ℝ)⌋

end

end A293418.P8527172950932208012

namespace A293418

/-- `floor(sqrt(2)*A103609(2*n))` -/
def P8527172950932208012.Spec : Prop :=
  ∀ n, P8527172950932208012.a n = A293418 n

end A293418

/-! ## A293418.P6967835300799197225

`floor(sqrt(2)*A302126(2*n))`
-/

namespace A293418.P6967835300799197225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A302126 (2 * n) : ℝ)⌋

end

end A293418.P6967835300799197225

namespace A293418

/-- `floor(sqrt(2)*A302126(2*n))` -/
def P6967835300799197225.Spec : Prop :=
  ∀ n, P6967835300799197225.a n = A293418 n

end A293418

/-! ## A293418.P12583710816304902805

`floor(sqrt(2)*A129982(2*n+1))`
-/

namespace A293418.P12583710816304902805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A129982 (2 * n + 1) : ℝ)⌋

end

end A293418.P12583710816304902805

namespace A293418

/-- `floor(sqrt(2)*A129982(2*n+1))` -/
def P12583710816304902805.Spec : Prop :=
  ∀ n, P12583710816304902805.a n = A293418 n

end A293418

/-! ## A293418.P1652722862773575440

`A293419(n)+A057428(n)`
-/

namespace A293418.P1652722862773575440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293419 n + A057428 n

end

end A293418.P1652722862773575440

namespace A293418

/-- `A293419(n)+A057428(n)` -/
def P1652722862773575440.Spec : Prop :=
  ∀ n, P1652722862773575440.a n = A293418 n

theorem P1652722862773575440.correct : P1652722862773575440.Spec := by
  intro n
  simp only [A293418, Nat.add_sub_cancel, A293418.P1652722862773575440.a, A293418.P17959891732544130175.a, A000045, A000045.P11838749114346432762.a, A057428, A057428.P2999489532230392221.a, A293419, A293419.P2990146564157794437.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293418

/-! ## A293418.P9160808860545254575

`A293419(n)-A057427(n)`
-/

namespace A293418.P9160808860545254575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293419 n - A057427 n

end

end A293418.P9160808860545254575

namespace A293418

/-- `A293419(n)-A057427(n)` -/
def P9160808860545254575.Spec : Prop :=
  ∀ n, P9160808860545254575.a n = A293418 n

theorem P9160808860545254575.correct : P9160808860545254575.Spec := by
  intro n
  simp only [A293418, Nat.add_sub_cancel, A293418.P9160808860545254575.a, A293418.P17959891732544130175.a, A000045, A000045.P11838749114346432762.a, A057427, A057427.P3058147525557661423.a, A293419, A293419.P2990146564157794437.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293418

/-! ## A293418.P8168202105139566913

`A293419(n)-A001222(A293394(n+1))`
-/

namespace A293418.P8168202105139566913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293419 n - A001222 (A293394 (n + 1)).toNat

end

end A293418.P8168202105139566913

namespace A293418

/-- `A293419(n)-A001222(A293394(n+1))` -/
def P8168202105139566913.Spec : Prop :=
  ∀ n, P8168202105139566913.a n = A293418 n

end A293418

/-! ## A293418.P17415809731189644998

`floor(A006355(n+1)/sqrt(2))`
-/

namespace A293418.P17415809731189644998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006355 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A293418.P17415809731189644998

namespace A293418

/-- `floor(A006355(n+1)/sqrt(2))` -/
def P17415809731189644998.Spec : Prop :=
  ∀ n, P17415809731189644998.a n = A293418 n

end A293418

/-! ## A293418.P12512407821989062776

`floor(sqrt(2)*Δ[A000071(n+1)])`
-/

namespace A293418.P12512407821989062776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (f1 (n + 1) - f1 n : ℝ)⌋

end

end A293418.P12512407821989062776

namespace A293418

/-- `floor(sqrt(2)*Δ[A000071(n+1)])` -/
def P12512407821989062776.Spec : Prop :=
  ∀ n, P12512407821989062776.a n = A293418 n

end A293418

/-! ## A293418.P874337697321474437

`floor(sqrt(2)*A303427(2*n+1))`
-/

namespace A293418.P874337697321474437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A303427 (2 * n + 1) : ℝ)⌋

end

end A293418.P874337697321474437

namespace A293418

/-- `floor(sqrt(2)*A303427(2*n+1))` -/
def P874337697321474437.Spec : Prop :=
  ∀ n, P874337697321474437.a n = A293418 n

end A293418

/-! ## A293418.P12045119130166986356

`floor(sqrt(record[a(n-2)-or(1, a(n-1))]))` with `a(0)=0, a(1)=0`
-/

namespace A293418.P12045119130166986356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - Int.lor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A293418.P12045119130166986356

namespace A293418

/-- `floor(sqrt(record[a(n-2)-or(1, a(n-1))]))` -/
def P12045119130166986356.Spec : Prop :=
  ∀ n, P12045119130166986356.a n = A293418 n

end A293418

/-! ## A293418.P187613278396289850

`floor(sqrt(A175395(n)))`
-/

namespace A293418.P187613278396289850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A175395 n)

end

end A293418.P187613278396289850

namespace A293418

/-- `floor(sqrt(A175395(n)))` -/
def P187613278396289850.Spec : Prop :=
  ∀ n, P187613278396289850.a n = A293418 n

end A293418

/-! ## A293418.P15317024470833678032

`floor(sqrt(A192873(n)))`
-/

namespace A293418.P15317024470833678032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A192873 n)

end

end A293418.P15317024470833678032

namespace A293418

/-- `floor(sqrt(A192873(n)))` -/
def P15317024470833678032.Spec : Prop :=
  ∀ n, P15317024470833678032.a n = A293418 n

end A293418

/-! ## A293418.P12256727167819159823

`floor(sqrt(2*A007598(n)))`
-/

namespace A293418.P12256727167819159823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A007598 n)

end

end A293418.P12256727167819159823

namespace A293418

/-- `floor(sqrt(2*A007598(n)))` -/
def P12256727167819159823.Spec : Prop :=
  ∀ n, P12256727167819159823.a n = A293418 n

end A293418

/-! ## A293418.P3516946322923937805

`floor(sqrt(A295680(Δ[n²])))`
-/

namespace A293418.P3516946322923937805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A293418.P3516946322923937805

namespace A293418

/-- `floor(sqrt(A295680(Δ[n²])))` -/
def P3516946322923937805.Spec : Prop :=
  ∀ n, P3516946322923937805.a n = A293418 n

end A293418

/-! ## A293418.P4975546191551941861

`floor(sqrt(Δ[A295680(2*n)]))`
-/

namespace A293418.P4975546191551941861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A293418.P4975546191551941861

namespace A293418

/-- `floor(sqrt(Δ[A295680(2*n)]))` -/
def P4975546191551941861.Spec : Prop :=
  ∀ n, P4975546191551941861.a n = A293418 n

end A293418

/-!
# A293419: a(n) is the least integer k such that k/Fibonacci(n) > sqrt(2).

The programs for A293419, the canonical program `A293419.P2990146564157794437` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293419 has offset 0).

The definition of A293419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293419.P6867908281821722221

`ceil(sqrt(2)*A000045(n))`
-/

namespace A293419.P6867908281821722221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A000045 n : ℝ)⌉

end

end A293419.P6867908281821722221

namespace A293419

/-- `ceil(sqrt(2)*A000045(n))` -/
def P6867908281821722221.Spec : Prop :=
  ∀ n, P6867908281821722221.a n = A293419 n

end A293419

/-! ## A293419.P12451794428124804691

`ceil(sqrt(2)*A212804(n+1))`
-/

namespace A293419.P12451794428124804691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A212804 (n + 1) : ℝ)⌉

end

end A293419.P12451794428124804691

namespace A293419

/-- `ceil(sqrt(2)*A212804(n+1))` -/
def P12451794428124804691.Spec : Prop :=
  ∀ n, P12451794428124804691.a n = A293419 n

end A293419

/-! ## A293419.P533614842408298290

`ceil(sqrt(2)*A103609(2*n))`
-/

namespace A293419.P533614842408298290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A103609 (2 * n) : ℝ)⌉

end

end A293419.P533614842408298290

namespace A293419

/-- `ceil(sqrt(2)*A103609(2*n))` -/
def P533614842408298290.Spec : Prop :=
  ∀ n, P533614842408298290.a n = A293419 n

end A293419

/-! ## A293419.P2990146564157794437

`A293418(n)+A057427(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293419

/-- `A293418(n)+A057427(n)` -/
def P2990146564157794437.Spec : Prop :=
  ∀ n, P2990146564157794437.a n = A293419 n

theorem P2990146564157794437.correct : P2990146564157794437.Spec := by
  intro n
  simp only [A293419]

end A293419

/-! ## A293419.P10243157739459520104

`A293418(n)-A057428(n)`
-/

namespace A293419.P10243157739459520104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293418 n - A057428 n

end

end A293419.P10243157739459520104

namespace A293419

/-- `A293418(n)-A057428(n)` -/
def P10243157739459520104.Spec : Prop :=
  ∀ n, P10243157739459520104.a n = A293419 n

theorem P10243157739459520104.correct : P10243157739459520104.Spec := by
  intro n
  simp only [A293419, Nat.add_sub_cancel, A293419.P10243157739459520104.a, A293419.P2990146564157794437.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A293418, A293418.P17959891732544130175.a, A000007, A000007.P6599383543502402472.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293419

/-! ## A293419.P823630028761667593

`A293418(n)+A001222(A293394(n+1))`
-/

namespace A293419.P823630028761667593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293418 n + A001222 (A293394 (n + 1)).toNat

end

end A293419.P823630028761667593

namespace A293419

/-- `A293418(n)+A001222(A293394(n+1))` -/
def P823630028761667593.Spec : Prop :=
  ∀ n, P823630028761667593.a n = A293419 n

end A293419

/-! ## A293419.P7303700122484212311

`ceil(Δ[root(2, 2)*A000045(n+1)])`
-/

namespace A293419.P7303700122484212311
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (2 : ℝ)) * (A000045 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A293419.P7303700122484212311

namespace A293419

/-- `ceil(Δ[root(2, 2)*A000045(n+1)])` -/
def P7303700122484212311.Spec : Prop :=
  ∀ n, P7303700122484212311.a n = A293419 n

end A293419

/-! ## A293419.P16724456600156350937

`ceil(sqrt(A175395(n)))`
-/

namespace A293419.P16724456600156350937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A175395 n : ℝ)⌉

end

end A293419.P16724456600156350937

namespace A293419

/-- `ceil(sqrt(A175395(n)))` -/
def P16724456600156350937.Spec : Prop :=
  ∀ n, P16724456600156350937.a n = A293419 n

end A293419

/-! ## A293419.P14610521169697687445

`ceil(sqrt(2*A007598(n)))`
-/

namespace A293419.P14610521169697687445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A007598 n : ℝ)⌉

end

end A293419.P14610521169697687445

namespace A293419

/-- `ceil(sqrt(2*A007598(n)))` -/
def P14610521169697687445.Spec : Prop :=
  ∀ n, P14610521169697687445.a n = A293419 n

end A293419

/-! ## A293419.P11937202998210456716

`ceil(sqrt(A295680(Δ[n²])))`
-/

namespace A293419.P11937202998210456716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A293419.P11937202998210456716

namespace A293419

/-- `ceil(sqrt(A295680(Δ[n²])))` -/
def P11937202998210456716.Spec : Prop :=
  ∀ n, P11937202998210456716.a n = A293419 n

end A293419

/-! ## A293419.P17622233673053812949

`ceil(sqrt(Δ[A295680(2*n)]))`
-/

namespace A293419.P17622233673053812949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌉

end

end A293419.P17622233673053812949

namespace A293419

/-- `ceil(sqrt(Δ[A295680(2*n)]))` -/
def P17622233673053812949.Spec : Prop :=
  ∀ n, P17622233673053812949.a n = A293419 n

end A293419

/-! ## A293419.P5605501548407992238

`ceil(Δ[sqrt(A229912(n+1))])`
-/

namespace A293419.P5605501548407992238
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A229912 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A293419.P5605501548407992238

namespace A293419

/-- `ceil(Δ[sqrt(A229912(n+1))])` -/
def P5605501548407992238.Spec : Prop :=
  ∀ n, P5605501548407992238.a n = A293419 n

end A293419

/-!
# A293420: a(n) is the integer k that minimizes |k/Fibonacci(n) - sqrt(2)|.

The programs for A293420, the canonical program `A293420.P14130243804413009707` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293420 has offset 0).

The definition of A293420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293420.P14130243804413009707

`round(sqrt(2)*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293420

/-- `round(sqrt(2)*A000045(n))` -/
def P14130243804413009707.Spec : Prop :=
  ∀ n, P14130243804413009707.a n = A293420 n

theorem P14130243804413009707.correct : P14130243804413009707.Spec := by
  intro n
  simp only [A293420]

end A293420

/-! ## A293420.P14246497269204350371

`round(sqrt(2)*A212804(n+1))`
-/

namespace A293420.P14246497269204350371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A212804 (n + 1) : ℝ))

end

end A293420.P14246497269204350371

namespace A293420

/-- `round(sqrt(2)*A212804(n+1))` -/
def P14246497269204350371.Spec : Prop :=
  ∀ n, P14246497269204350371.a n = A293420 n

end A293420

/-! ## A293420.P11308843072138450308

`round(sqrt(2)*A053602(2*n))`
-/

namespace A293420.P11308843072138450308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A053602 (2 * n) : ℝ))

end

end A293420.P11308843072138450308

namespace A293420

/-- `round(sqrt(2)*A053602(2*n))` -/
def P11308843072138450308.Spec : Prop :=
  ∀ n, P11308843072138450308.a n = A293420 n

end A293420

/-! ## A293420.P17064541159590791396

`round(sqrt(2)*A103609(2*n))`
-/

namespace A293420.P17064541159590791396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A103609 (2 * n) : ℝ))

end

end A293420.P17064541159590791396

namespace A293420

/-- `round(sqrt(2)*A103609(2*n))` -/
def P17064541159590791396.Spec : Prop :=
  ∀ n, P17064541159590791396.a n = A293420 n

end A293420

/-! ## A293420.P2849208393462416289

`round(sqrt(2)*A302126(2*n))`
-/

namespace A293420.P2849208393462416289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A302126 (2 * n) : ℝ))

end

end A293420.P2849208393462416289

namespace A293420

/-- `round(sqrt(2)*A302126(2*n))` -/
def P2849208393462416289.Spec : Prop :=
  ∀ n, P2849208393462416289.a n = A293420 n

end A293420

/-! ## A293420.P13125891818183505771

`round(sqrt(2)*A129982(2*n+1))`
-/

namespace A293420.P13125891818183505771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A129982 (2 * n + 1) : ℝ))

end

end A293420.P13125891818183505771

namespace A293420

/-- `round(sqrt(2)*A129982(2*n+1))` -/
def P13125891818183505771.Spec : Prop :=
  ∀ n, P13125891818183505771.a n = A293420 n

end A293420

/-! ## A293420.P967411709200912904

`round(A006355(n+1)/sqrt(2))`
-/

namespace A293420.P967411709200912904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006355 (n + 1) : ℝ) / Real.sqrt (2 : ℝ))

end

end A293420.P967411709200912904

namespace A293420

/-- `round(A006355(n+1)/sqrt(2))` -/
def P967411709200912904.Spec : Prop :=
  ∀ n, P967411709200912904.a n = A293420 n

end A293420

/-! ## A293420.P15420802747265905096

`round(A118658(n+1)/sqrt(2))`
-/

namespace A293420.P15420802747265905096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A118658 (n + 1) : ℝ) / Real.sqrt (2 : ℝ))

end

end A293420.P15420802747265905096

namespace A293420

/-- `round(A118658(n+1)/sqrt(2))` -/
def P15420802747265905096.Spec : Prop :=
  ∀ n, P15420802747265905096.a n = A293420 n

end A293420

/-! ## A293420.P8050850591323045381

`round(A198834(n+2)/sqrt(2))`
-/

namespace A293420.P8050850591323045381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A198834 (n + 2) : ℝ) / Real.sqrt (2 : ℝ))

end

end A293420.P8050850591323045381

namespace A293420

/-- `round(A198834(n+2)/sqrt(2))` -/
def P8050850591323045381.Spec : Prop :=
  ∀ n, P8050850591323045381.a n = A293420 n

end A293420

/-! ## A293420.P3089571081310118970

`round(sqrt(2)*A303427(2*n+1))`
-/

namespace A293420.P3089571081310118970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A303427 (2 * n + 1) : ℝ))

end

end A293420.P3089571081310118970

namespace A293420

/-- `round(sqrt(2)*A303427(2*n+1))` -/
def P3089571081310118970.Spec : Prop :=
  ∀ n, P3089571081310118970.a n = A293420 n

end A293420

/-! ## A293420.P229039985831018991

`round(sqrt(record[a(n-2)-or(1, a(n-1))]))` with `a(0)=0, a(1)=0`
-/

namespace A293420.P229039985831018991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - Int.lor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A293420.P229039985831018991

namespace A293420

/-- `round(sqrt(record[a(n-2)-or(1, a(n-1))]))` -/
def P229039985831018991.Spec : Prop :=
  ∀ n, P229039985831018991.a n = A293420 n

end A293420

/-! ## A293420.P16627685995781958333

`round(sqrt(A175395(n)))`
-/

namespace A293420.P16627685995781958333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A175395 n : ℝ))

end

end A293420.P16627685995781958333

namespace A293420

/-- `round(sqrt(A175395(n)))` -/
def P16627685995781958333.Spec : Prop :=
  ∀ n, P16627685995781958333.a n = A293420 n

end A293420

/-! ## A293420.P3881956387230622236

`round(sqrt(A192873(n)))`
-/

namespace A293420.P3881956387230622236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A192873 n : ℝ))

end

end A293420.P3881956387230622236

namespace A293420

/-- `round(sqrt(A192873(n)))` -/
def P3881956387230622236.Spec : Prop :=
  ∀ n, P3881956387230622236.a n = A293420 n

end A293420

/-! ## A293420.P641860890698259928

`round(sqrt(2*A007598(n)))`
-/

namespace A293420.P641860890698259928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A007598 n : ℝ))

end

end A293420.P641860890698259928

namespace A293420

/-- `round(sqrt(2*A007598(n)))` -/
def P641860890698259928.Spec : Prop :=
  ∀ n, P641860890698259928.a n = A293420 n

end A293420

/-! ## A293420.P18312816298646195604

`round(sqrt(A295680(Δ[n²])))`
-/

namespace A293420.P18312816298646195604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A295680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ))

end

end A293420.P18312816298646195604

namespace A293420

/-- `round(sqrt(A295680(Δ[n²])))` -/
def P18312816298646195604.Spec : Prop :=
  ∀ n, P18312816298646195604.a n = A293420 n

end A293420

/-! ## A293420.P5870543129944321016

`round(sqrt(2*(1-A001611(n))²))`
-/

namespace A293420.P5870543129944321016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (1 - A001611 n) ^ 2 : ℝ))

end

end A293420.P5870543129944321016

namespace A293420

/-- `round(sqrt(2*(1-A001611(n))²))` -/
def P5870543129944321016.Spec : Prop :=
  ∀ n, P5870543129944321016.a n = A293420 n

end A293420

/-! ## A293420.P9851778089346204509

`round(sqrt(Δ[A295680(2*n)]))`
-/

namespace A293420.P9851778089346204509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A293420.P9851778089346204509

namespace A293420

/-- `round(sqrt(Δ[A295680(2*n)]))` -/
def P9851778089346204509.Spec : Prop :=
  ∀ n, P9851778089346204509.a n = A293420 n

end A293420

/-! ## A293420.P7459059443840081142

`round(sqrt(floor(2*A000032(2*n)/5)))`
-/

namespace A293420.P7459059443840081142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊2 * ((A000032 (2 * n) : ℚ) / 5)⌋ : ℝ))

end

end A293420.P7459059443840081142

namespace A293420

/-- `round(sqrt(floor(2*A000032(2*n)/5)))` -/
def P7459059443840081142.Spec : Prop :=
  ∀ n, P7459059443840081142.a n = A293420 n

end A293420

/-! ## A293420.P17278033189536881978

`round(Δ[sqrt(A229912(n+1))])`
-/

namespace A293420.P17278033189536881978
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A229912 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A293420.P17278033189536881978

namespace A293420

/-- `round(Δ[sqrt(A229912(n+1))])` -/
def P17278033189536881978.Spec : Prop :=
  ∀ n, P17278033189536881978.a n = A293420 n

end A293420

/-!
# A293421: The PD_t(n) function (Number of tagged parts over all the partitions of n with designated summands).

The programs for A293421, there is no canonical definition to state claims against.
-/

/-! ## A293421.P761263936623496949

`1/2*(A293423(n+1)-A077285(n+1))`
-/

namespace A293421.P761263936623496949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A293423 (n + 1) - A077285 (n + 1) : ℚ)

end

end A293421.P761263936623496949

/-! ## A293421.P17715157307063223873

`A377028(A084601(n+1))`
-/

namespace A293421.P17715157307063223873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377028 (A084601 (n + 1)).toNat

end

end A293421.P17715157307063223873

/-! ## A293421.P4527838955379571370

`A089361(∑[A289780(n)]+6)`
-/

namespace A293421.P4527838955379571370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A293421.P4527838955379571370

/-! ## A293421.P3663235081968658510

`A020957(n+1)-A272341(n+3)`
-/

namespace A293421.P3663235081968658510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020957 (n + 1) - A272341 (n + 3)

end

end A293421.P3663235081968658510

/-!
# A293422: The PDO_t(n) function (Number of tagged parts over all the partitions of n with designated summands in which all parts are odd).

The programs for A293422, there is no canonical definition to state claims against.
-/

/-! ## A293422.P5623644363289367540

`Δ[record[A069251(A253315(n))]]`
-/

namespace A293422.P5623644363289367540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069251 (A253315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293422.P5623644363289367540

/-! ## A293422.P6372677734754321705

`Δ[A069251(n)^n^A326456(n)]`
-/

namespace A293422.P6372677734754321705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069251 n : ℝ) ^ ((n : ℚ) ^ (A326456 n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293422.P6372677734754321705

/-! ## A293422.P14305247082530419987

`Δ[A069251(n)^A051539(A326456(n))]`
-/

namespace A293422.P14305247082530419987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069251 n : ℚ) ^ (A051539 (A326456 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293422.P14305247082530419987

/-!
# A293423: Expansion of Product_{k>0} (1 - q^(3*k))^5/((1 - q^k)^3*(1 - q^(6*k))^2).

The programs for A293423, there is no canonical definition to state claims against.
-/

/-! ## A293423.P13477991883454778233

`A052146(A014574(n+1)*A032170(n+1))`
-/

namespace A293423.P13477991883454778233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A014574 (n + 1) * A032170 (n + 1)).toNat

end

end A293423.P13477991883454778233

/-! ## A293423.P3099803054048993239

`A003056(A157029(n+1)*A271713(n+1))`
-/

namespace A293423.P3099803054048993239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A157029 (n + 1) * A271713 (n + 1)).toNat

end

end A293423.P3099803054048993239

/-! ## A293423.P11499204340755675240

`A333193(2*(n+1))-A034444(A001850(n))`
-/

namespace A293423.P11499204340755675240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333193 (2 * (n + 1)) - A034444 (A001850 n).toNat

end

end A293423.P11499204340755675240

/-!
# A293424: Hamming distance between two consecutive semiprimes.

The programs for A293424, the canonical program `A293424.P11859700166175696061` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293424 has offset 1).

The definition of A293424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293424.P11859700166175696061

`A000120(xor(A001358(n+1), A001358(n+2)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A293424

/-- `A000120(xor(A001358(n+1), A001358(n+2)))` -/
def P11859700166175696061.Spec : Prop :=
  ∀ n, P11859700166175696061.a n = A293424 (n + 1)

theorem P11859700166175696061.correct : P11859700166175696061.Spec := by
  intro n
  simp only [A293424, Nat.add_sub_cancel]

end A293424

/-! ## A293424.P9733074143102268521

`A000120(xor(A075818(n+1), A075818(n+2)))`
-/

namespace A293424.P9733074143102268521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A075818 (n + 1)) (A075818 (n + 2))).toNat

end

end A293424.P9733074143102268521

namespace A293424

/-- `A000120(xor(A075818(n+1), A075818(n+2)))` -/
def P9733074143102268521.Spec : Prop :=
  ∀ n, P9733074143102268521.a n = A293424 (n + 1)

end A293424

/-! ## A293424.P3761874213460613277

`A046791(n+2)%A046799(A046815(n+5))`
-/

namespace A293424.P3761874213460613277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046791 (n + 2)) (A046799 (A046815 (n + 5)).toNat)

end

end A293424.P3761874213460613277

namespace A293424

/-- `A046791(n+2)%A046799(A046815(n+5))` -/
def P3761874213460613277.Spec : Prop :=
  ∀ n, P3761874213460613277.a n = A293424 (n + 1)

end A293424

/-! ## A293424.P4547242399834772156

`A255327(A143700(n+4)+29)+A001221(3*n+4)`
-/

namespace A293424.P4547242399834772156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (A143700 (n + 4) + 29).toNat + A001221 (3 * n + 4)

end

end A293424.P4547242399834772156

namespace A293424

/-- `A255327(A143700(n+4)+29)+A001221(3*n+4)` -/
def P4547242399834772156.Spec : Prop :=
  ∀ n, P4547242399834772156.a n = A293424 (n + 1)

end A293424

/-! ## A293424.P10397193373426422972

`A001222(A102866(n+1)+575)`
-/

namespace A293424.P10397193373426422972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A102866 (n + 1) + 575).toNat

end

end A293424.P10397193373426422972

namespace A293424

/-- `A001222(A102866(n+1)+575)` -/
def P10397193373426422972.Spec : Prop :=
  ∀ n, P10397193373426422972.a n = A293424 (n + 1)

end A293424

/-!
# A293425: Primes of the form 2^a * 3^b * 5^c - 1 for positive a, b, c.

The programs for A293425, there is no canonical definition to state claims against.
-/

/-! ## A293425.P2087352345552713083

`p?[A143207(n+1)-1]`
-/

namespace A293425.P2087352345552713083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P2087352345552713083

/-! ## A293425.P13466480817827637829

`p?[3*A080193(n+1)-1]`
-/

namespace A293425.P13466480817827637829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080193 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P13466480817827637829

/-! ## A293425.P8573092710435324845

`p?[3*A325198(n+1)-1]`
-/

namespace A293425.P8573092710435324845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A325198 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P8573092710435324845

/-! ## A293425.P9859990533684027690

`p?[30*A051037(n+1)-1]`
-/

namespace A293425.P9859990533684027690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A051037 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P9859990533684027690

/-! ## A293425.P16153311356648722913

`p?[abs(A143207(A110514(2*n))-1)]`
-/

namespace A293425.P16153311356648722913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143207 (A110514 (2 * n)).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P16153311356648722913

/-! ## A293425.P16069665571216707133

`∩[A132236(n+1), A219669(n+1)]`
-/

namespace A293425.P16069665571216707133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293425.P16069665571216707133

/-! ## A293425.P17243902962322364566

`∩[A132236(n+1), A293194(n+1)]`
-/

namespace A293425.P17243902962322364566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293425.P17243902962322364566

/-! ## A293425.P16247477351712879077

`p?[or(1, A143207(A008619(2*n)))-2]`
-/

namespace A293425.P16247477351712879077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143207 (A008619 (2 * n)).toNat) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P16247477351712879077

/-! ## A293425.P2002335149359786369

`p?[xor(1, A143207(A028242(2*n)))-2]`
-/

namespace A293425.P2002335149359786369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A143207 (A028242 (2 * n)).toNat) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P2002335149359786369

/-! ## A293425.P12599430997466071883

`p?[and(6*A080193(A080513(2*n)), -2)-1]`
-/

namespace A293425.P12599430997466071883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * A080193 (A080513 (2 * n)).toNat) (-2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293425.P12599430997466071883

/-!
# A293426: Expansion of Product_{k>0} ((1 - q^(3*k))^3*(1 - q^(6*k))^3)/((1 - q^k)^5*(1 - q^(2*k))^3).

The programs for A293426, there is no canonical definition to state claims against.
-/

/-! ## A293426.P13766556606130600505

`1/3*A077285(3*n+2)`
-/

namespace A293426.P13766556606130600505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A077285 (3 * n + 2) : ℚ)

end

end A293426.P13766556606130600505

/-! ## A293426.P11456834406519798040

`A077285(3*n+2)/3`
-/

namespace A293426.P11456834406519798040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077285 (3 * n + 2) : ℚ) / 3

end

end A293426.P11456834406519798040

/-! ## A293426.P10587248040375327563

`floor(A077285(A016789(n))/3)`
-/

namespace A293426.P10587248040375327563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077285 (A016789 n).toNat : ℚ) / 3⌋

end

end A293426.P10587248040375327563

/-! ## A293426.P2715334506003225230

`A077285(A016789(n))/3*gcd(2, A033999(n))`
-/

namespace A293426.P2715334506003225230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077285 (A016789 n).toNat : ℚ) / 3 * (Int.gcd 2 (A033999 n) : ℚ)

end

end A293426.P2715334506003225230

/-! ## A293426.P9862527561925545620

`A077285(A016789(n))/3*gcd(3, A000034(n))`
-/

namespace A293426.P9862527561925545620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077285 (A016789 n).toNat : ℚ) / 3 * (Int.gcd 3 (A000034 n) : ℚ)

end

end A293426.P9862527561925545620

/-! ## A293426.P9711269198114459370

`gcd(A123108(2*n)-n, A077285(A016789(n))/3)`
-/

namespace A293426.P9711269198114459370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123108 (2 * n) - (n : ℤ)) (SequenceMachineLib.roundAway ((A077285 (A016789 n).toNat : ℚ) / 3))

end

end A293426.P9711269198114459370

/-! ## A293426.P15752303902157808290

`(A077285(A016789(n))/3)%A254367(n)`
-/

namespace A293426.P15752303902157808290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A077285 (A016789 n).toNat : ℚ) / 3)) (A254367 n)

end

end A293426.P15752303902157808290

/-!
# A293427: Squarefree numbers such that there are no adjacent 0's in their binary expansions.

The programs for A293427, the canonical program `A293427.P4225540709121361474` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293427 has offset 1).

The definition of A293427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293427.P4225540709121361474

`record[∏{p}[A003754(n+1), #]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A293427

/-- `record[∏{p}[A003754(n+1), #]]` -/
def P4225540709121361474.Spec : Prop :=
  ∀ n, (P4225540709121361474.a n : ℤ) = A293427 (n + 1)

theorem P4225540709121361474.correct : P4225540709121361474.Spec := by
  intro n
  simp only [A293427, Nat.add_sub_cancel]

end A293427

/-! ## A293427.P9799689592009146087

`record[∏{p}[A004745(n+1), #]]`
-/

namespace A293427.P9799689592009146087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293427.P9799689592009146087

namespace A293427

/-- `record[∏{p}[A004745(n+1), #]]` -/
def P9799689592009146087.Spec : Prop :=
  ∀ n, (P9799689592009146087.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P2209420066528274195

`filter[A003754(n+2), A008966(#)]`
-/

namespace A293427.P2209420066528274195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A293427.P2209420066528274195

namespace A293427

/-- `filter[A003754(n+2), A008966(#)]` -/
def P2209420066528274195.Spec : Prop :=
  ∀ n, P2209420066528274195.a n = A293427 (n + 1)

end A293427

/-! ## A293427.P14075494491930512331

`filter[A004745(n+2), A008966(#)]`
-/

namespace A293427.P14075494491930512331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A293427.P14075494491930512331

namespace A293427

/-- `filter[A004745(n+2), A008966(#)]` -/
def P14075494491930512331.Spec : Prop :=
  ∀ n, P14075494491930512331.a n = A293427 (n + 1)

end A293427

/-! ## A293427.P10963586155256878118

`filter[A003754(n+2), A359834(#)]`
-/

namespace A293427.P10963586155256878118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A293427.P10963586155256878118

namespace A293427

/-- `filter[A003754(n+2), A359834(#)]` -/
def P10963586155256878118.Spec : Prop :=
  ∀ n, P10963586155256878118.a n = A293427 (n + 1)

end A293427

/-! ## A293427.P14870692334575047467

`filter[A003754(n+2), A323154(#)]`
-/

namespace A293427.P14870692334575047467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A293427.P14870692334575047467

namespace A293427

/-- `filter[A003754(n+2), A323154(#)]` -/
def P14870692334575047467.Spec : Prop :=
  ∀ n, P14870692334575047467.a n = A293427 (n + 1)

end A293427

/-! ## A293427.P13722039493971601354

`filter[A003754(n+2), A353559(#)]`
-/

namespace A293427.P13722039493971601354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A293427.P13722039493971601354

namespace A293427

/-- `filter[A003754(n+2), A353559(#)]` -/
def P13722039493971601354.Spec : Prop :=
  ∀ n, P13722039493971601354.a n = A293427 (n + 1)

end A293427

/-! ## A293427.P1286293654174992162

`filter[A003754(n+2), A353627(#)]`
-/

namespace A293427.P1286293654174992162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A293427.P1286293654174992162

namespace A293427

/-- `filter[A003754(n+2), A353627(#)]` -/
def P1286293654174992162.Spec : Prop :=
  ∀ n, P1286293654174992162.a n = A293427 (n + 1)

end A293427

/-! ## A293427.P583048221659680802

`∩[A003754(n+1), A005117(n+1)]`
-/

namespace A293427.P583048221659680802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P583048221659680802

namespace A293427

/-- `∩[A003754(n+1), A005117(n+1)]` -/
def P583048221659680802.Spec : Prop :=
  ∀ n, (P583048221659680802.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P16721629166007681847

`∩[A004745(n+1), A005117(n+1)]`
-/

namespace A293427.P16721629166007681847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P16721629166007681847

namespace A293427

/-- `∩[A004745(n+1), A005117(n+1)]` -/
def P16721629166007681847.Spec : Prop :=
  ∀ n, (P16721629166007681847.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P10692383359074446051

`∩[A003754(n+1), A348506(n+1)]`
-/

namespace A293427.P10692383359074446051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P10692383359074446051

namespace A293427

/-- `∩[A003754(n+1), A348506(n+1)]` -/
def P10692383359074446051.Spec : Prop :=
  ∀ n, (P10692383359074446051.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P15119209001632344702

`∩[A003754(n+1), A348499(n+1)]`
-/

namespace A293427.P15119209001632344702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P15119209001632344702

namespace A293427

/-- `∩[A003754(n+1), A348499(n+1)]` -/
def P15119209001632344702.Spec : Prop :=
  ∀ n, (P15119209001632344702.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P8123023015946234951

`∩[A003754(n+1), A064594(n+1)]`
-/

namespace A293427.P8123023015946234951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P8123023015946234951

namespace A293427

/-- `∩[A003754(n+1), A064594(n+1)]` -/
def P8123023015946234951.Spec : Prop :=
  ∀ n, (P8123023015946234951.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P1901684594079871282

`∩[A003754(n+1), A167207(n+1)]`
-/

namespace A293427.P1901684594079871282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P1901684594079871282

namespace A293427

/-- `∩[A003754(n+1), A167207(n+1)]` -/
def P1901684594079871282.Spec : Prop :=
  ∀ n, (P1901684594079871282.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P9116246576414167486

`record[A007913(n+1)/A162401(n+1)]`
-/

namespace A293427.P9116246576414167486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A162401 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293427.P9116246576414167486

namespace A293427

/-- `record[A007913(n+1)/A162401(n+1)]` -/
def P9116246576414167486.Spec : Prop :=
  ∀ n, P9116246576414167486.a n = (A293427 (n + 1) : ℚ)

end A293427

/-! ## A293427.P13025490011039454370

`∩[A003754(n+1), A210490(n+1)]`
-/

namespace A293427.P13025490011039454370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P13025490011039454370

namespace A293427

/-- `∩[A003754(n+1), A210490(n+1)]` -/
def P13025490011039454370.Spec : Prop :=
  ∀ n, (P13025490011039454370.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P14351864858827846874

`∩[A003754(n+1), A348961(n+1)]`
-/

namespace A293427.P14351864858827846874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P14351864858827846874

namespace A293427

/-- `∩[A003754(n+1), A348961(n+1)]` -/
def P14351864858827846874.Spec : Prop :=
  ∀ n, (P14351864858827846874.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P11883566799019032722

`∩[A003754(n+1), A143719(n+1)]`
-/

namespace A293427.P11883566799019032722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P11883566799019032722

namespace A293427

/-- `∩[A003754(n+1), A143719(n+1)]` -/
def P11883566799019032722.Spec : Prop :=
  ∀ n, (P11883566799019032722.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P2445326599986756245

`∩[A003754(n+1), A078779(n+1)]`
-/

namespace A293427.P2445326599986756245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P2445326599986756245

namespace A293427

/-- `∩[A003754(n+1), A078779(n+1)]` -/
def P2445326599986756245.Spec : Prop :=
  ∀ n, (P2445326599986756245.a n : ℤ) = A293427 (n + 1)

end A293427

/-! ## A293427.P10714962676344255163

`∩[A003754(n+1), A121684(n+1)]`
-/

namespace A293427.P10714962676344255163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293427.P10714962676344255163

namespace A293427

/-- `∩[A003754(n+1), A121684(n+1)]` -/
def P10714962676344255163.Spec : Prop :=
  ∀ n, (P10714962676344255163.a n : ℤ) = A293427 (n + 1)

end A293427

/-!
# A293428: a(0) = 1; and for n > 0, a(n) = a(n-1) + (A008966(4n+1) - A107078(4n+3)).

The programs for A293428, the canonical program `A293428.P2335168149116602808` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293428 has offset 0).

The definition of A293428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A107078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293428.P2335168149116602808

`a(n-1)+A008966(4*n+1)-A107078(4*n+3)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293428

/-- `a(n-1)+A008966(4*n+1)-A107078(4*n+3)` -/
def P2335168149116602808.Spec : Prop :=
  ∀ n, P2335168149116602808.a n = A293428 n

theorem P2335168149116602808.correct : P2335168149116602808.Spec := by
  intro n
  simp only [A293428]

end A293428

/-! ## A293428.P8219439168597003910

`A285879(4*(n+1))-(n+1)`
-/

namespace A293428.P8219439168597003910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (4 * (n + 1)) - (n + 1 : ℤ)

end

end A293428.P8219439168597003910

namespace A293428

/-- `A285879(4*(n+1))-(n+1)` -/
def P8219439168597003910.Spec : Prop :=
  ∀ n, P8219439168597003910.a n = A293428 n

end A293428

/-! ## A293428.P13176047682339783987

`A285881(A022144(n+1))-(n+1)`
-/

namespace A293428.P13176047682339783987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A022144 (n + 1)).toNat - (n + 1 : ℤ)

end

end A293428.P13176047682339783987

namespace A293428

/-- `A285881(A022144(n+1))-(n+1)` -/
def P13176047682339783987.Spec : Prop :=
  ∀ n, P13176047682339783987.a n = A293428 n

end A293428

/-!
# A293429: a(0) = 0; and for n > 0, a(n) = a(n-1) + (A008966(4n-1) - A008966(4n+1)).

The programs for A293429, the canonical program `A293429.P15331438234440877435` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293429 has offset 0).

The definition of A293429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293429.P15331438234440877435

`a(n-1)+A008966(4*n-1)-A008966(4*n+1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293429

/-- `a(n-1)+A008966(4*n-1)-A008966(4*n+1)` -/
def P15331438234440877435.Spec : Prop :=
  ∀ n, P15331438234440877435.a n = A293429 n

theorem P15331438234440877435.correct : P15331438234440877435.Spec := by
  intro n
  simp only [A293429]

end A293429

/-! ## A293429.P6846459558792902512

`A293229(n)+A107078(record[xor(3, n)])`
-/

namespace A293429.P6846459558792902512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293229 n + A107078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A293429.P6846459558792902512

namespace A293429

/-- `A293229(n)+A107078(record[xor(3, n)])` -/
def P6846459558792902512.Spec : Prop :=
  ∀ n, P6846459558792902512.a n = A293429 n

end A293429

/-! ## A293429.P8532650308481128522

`A293229(n)+A107078(A004767(n))`
-/

namespace A293429.P8532650308481128522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293229 n + A107078 (A004767 n).toNat

end

end A293429.P8532650308481128522

namespace A293429

/-- `A293229(n)+A107078(A004767(n))` -/
def P8532650308481128522.Spec : Prop :=
  ∀ n, P8532650308481128522.a n = A293429 n

end A293429

/-! ## A293429.P14469032722588495738

`A293229(n)+A107078(A017137(n)/2)`
-/

namespace A293429.P14469032722588495738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293229 n + A107078 (SequenceMachineLib.roundAway ((A017137 n : ℚ) / 2)).toNat

end

end A293429.P14469032722588495738

namespace A293429

/-- `A293229(n)+A107078(A017137(n)/2)` -/
def P14469032722588495738.Spec : Prop :=
  ∀ n, P14469032722588495738.a n = A293429 n

end A293429

/-! ## A293429.P14901249641749765013

`A293229(n)+A107078(A017137(n))`
-/

namespace A293429.P14901249641749765013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293229 n + A107078 (A017137 n).toNat

end

end A293429.P14901249641749765013

namespace A293429

/-- `A293229(n)+A107078(A017137(n))` -/
def P14901249641749765013.Spec : Prop :=
  ∀ n, P14901249641749765013.a n = A293429 n

end A293429

/-!
# A293430: Persistently squarefree numbers for base-2 shifting: Numbers n such that all terms in finite set [n, floor(n/2), floor(n/4), floor(n/8), ..., 1] are squarefree.

The programs for A293430, the canonical program `A293430.P9658105569072478579` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293430 has offset 1).

The definition of A293430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293430.P9658105569072478579

`record[lcm(n+1, A293233(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293430

/-- `record[lcm(n+1, A293233(n+1))]` -/
def P9658105569072478579.Spec : Prop :=
  ∀ n, (P9658105569072478579.a n : ℤ) = A293430 (n + 1)

theorem P9658105569072478579.correct : P9658105569072478579.Spec := by
  intro n
  simp only [A293430, Nat.add_sub_cancel]

end A293430

/-! ## A293430.P10278694859483464751

`record[abs(A007913(n+1)*A293233(n+1))]`
-/

namespace A293430.P10278694859483464751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007913 (n + 1) * A293233 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293430.P10278694859483464751

namespace A293430

/-- `record[abs(A007913(n+1)*A293233(n+1))]` -/
def P10278694859483464751.Spec : Prop :=
  ∀ n, P10278694859483464751.a n = A293430 (n + 1)

end A293430

/-! ## A293430.P4871869849783499945

`record[A293233(n+1)²*A000027(n+1)]`
-/

namespace A293430.P4871869849783499945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (n + 1) ^ 2 * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293430.P4871869849783499945

namespace A293430

/-- `record[A293233(n+1)²*A000027(n+1)]` -/
def P4871869849783499945.Spec : Prop :=
  ∀ n, P4871869849783499945.a n = A293430 (n + 1)

end A293430

/-! ## A293430.P2995442516308917412

`record[A293233(n+1)²*A007947(n+1)]`
-/

namespace A293430.P2995442516308917412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (n + 1) ^ 2 * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293430.P2995442516308917412

namespace A293430

/-- `record[A293233(n+1)²*A007947(n+1)]` -/
def P2995442516308917412.Spec : Prop :=
  ∀ n, P2995442516308917412.a n = A293430 (n + 1)

end A293430

/-! ## A293430.P11381524578292451621

`A007913(record[A293233(n+1)²*A007913(n+1)])`
-/

namespace A293430.P11381524578292451621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (n + 1) ^ 2 * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A293430.P11381524578292451621

namespace A293430

/-- `A007913(record[A293233(n+1)²*A007913(n+1)])` -/
def P11381524578292451621.Spec : Prop :=
  ∀ n, P11381524578292451621.a n = A293430 (n + 1)

end A293430

/-! ## A293430.P11755570417921147202

`record[abs(A243074(n+1)*A293233(n+1))]`
-/

namespace A293430.P11755570417921147202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A243074 (n + 1) * A293233 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293430.P11755570417921147202

namespace A293430

/-- `record[abs(A243074(n+1)*A293233(n+1))]` -/
def P11755570417921147202.Spec : Prop :=
  ∀ n, P11755570417921147202.a n = A293430 (n + 1)

end A293430

/-! ## A293430.P10413248047690057749

`A243074(record[A293233(n+1)²*A243074(n+1)])`
-/

namespace A293430.P10413248047690057749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (n + 1) ^ 2 * A243074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A293430.P10413248047690057749

namespace A293430

/-- `A243074(record[A293233(n+1)²*A243074(n+1)])` -/
def P10413248047690057749.Spec : Prop :=
  ∀ n, P10413248047690057749.a n = A293430 (n + 1)

end A293430

/-!
# A293431: a(n) is the number of Jacobsthal numbers dividing n.

The programs for A293431, the canonical program `A293431.P1349061664695987811` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293431 has offset 1).

The definition of A293431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293431.P2017266373531989393

`A293433(n+1)+A147612(n+1)`
-/

namespace A293431.P2017266373531989393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293433 (n + 1) + A147612 (n + 1)

end

end A293431.P2017266373531989393

namespace A293431

/-- `A293433(n+1)+A147612(n+1)` -/
def P2017266373531989393.Spec : Prop :=
  ∀ n, P2017266373531989393.a n = A293431 (n + 1)

theorem P2017266373531989393.correct : P2017266373531989393.Spec := by
  intro n
  simp only [A293431, Nat.add_sub_cancel, A293431.P2017266373531989393.a, A293431.P1349061664695987811.f1, A293431.P1349061664695987811.a, A147612, A147612.P5552661111519091200.a, A293433, A293433.P6772658230028704912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293431

/-! ## A293431.P6485589749613332509

`A293433(2*(n+1))`
-/

namespace A293431.P6485589749613332509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293433 (2 * (n + 1))

end

end A293431.P6485589749613332509

namespace A293431

/-- `A293433(2*(n+1))` -/
def P6485589749613332509.Spec : Prop :=
  ∀ n, P6485589749613332509.a n = A293431 (n + 1)

end A293431

/-! ## A293431.P1349061664695987811

`∑{d}[n+1, A147612(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293431

/-- `∑{d}[n+1, A147612(#)]` -/
def P1349061664695987811.Spec : Prop :=
  ∀ n, P1349061664695987811.a n = A293431 (n + 1)

theorem P1349061664695987811.correct : P1349061664695987811.Spec := by
  intro n
  simp only [A293431, Nat.add_sub_cancel]

end A293431

/-! ## A293431.P7163717044489490369

`A265745(A293432(n+1))`
-/

namespace A293431.P7163717044489490369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A293432 (n + 1)).toNat

end

end A293431.P7163717044489490369

namespace A293431

/-- `A265745(A293432(n+1))` -/
def P7163717044489490369.Spec : Prop :=
  ∀ n, P7163717044489490369.a n = A293431 (n + 1)

end A293431

/-! ## A293431.P728797761799487976

`A265745(A293434(2*(n+1)))`
-/

namespace A293431.P728797761799487976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A293434 (2 * (n + 1))).toNat

end

end A293431.P728797761799487976

namespace A293431

/-- `A265745(A293434(2*(n+1)))` -/
def P728797761799487976.Spec : Prop :=
  ∀ n, P728797761799487976.a n = A293431 (n + 1)

end A293431

/-! ## A293431.P9534772182548917921

`or(A130779(n), A293433(A103517(n)))`
-/

namespace A293431.P9534772182548917921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130779 n) (A293433 (A103517 n).toNat)

end

end A293431.P9534772182548917921

namespace A293431

/-- `or(A130779(n), A293433(A103517(n)))` -/
def P9534772182548917921.Spec : Prop :=
  ∀ n, P9534772182548917921.a n = A293431 (n + 1)

end A293431

/-!
# A293432: Sum of Jacobsthal numbers that divide n.

The programs for A293432, the canonical program `A293432.P1360839429234546005` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293432 has offset 1).

The definition of A293432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293432.P4061466977785356838

`A293434(n+1)+A147612(n+1)*(n+1)`
-/

namespace A293432.P4061466977785356838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293434 (n + 1) + A147612 (n + 1) * (n + 1 : ℤ)

end

end A293432.P4061466977785356838

namespace A293432

/-- `A293434(n+1)+A147612(n+1)*(n+1)` -/
def P4061466977785356838.Spec : Prop :=
  ∀ n, P4061466977785356838.a n = A293432 (n + 1)

theorem P4061466977785356838.correct : P4061466977785356838.Spec := by
  intro n
  simp only [A293432, Nat.add_sub_cancel, A293432.P4061466977785356838.a, A293432.P1360839429234546005.f1, A293432.P1360839429234546005.a, A147612, A147612.P5552661111519091200.a, A293434, A293434.P5840825603179684284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293432

/-! ## A293432.P1479629553099744893

`A293434(2*(n+1))`
-/

namespace A293432.P1479629553099744893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293434 (2 * (n + 1))

end

end A293432.P1479629553099744893

namespace A293432

/-- `A293434(2*(n+1))` -/
def P1479629553099744893.Spec : Prop :=
  ∀ n, P1479629553099744893.a n = A293432 (n + 1)

end A293432

/-! ## A293432.P1360839429234546005

`∑{d}[n+1, #*A147612(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293432

/-- `∑{d}[n+1, #*A147612(#)]` -/
def P1360839429234546005.Spec : Prop :=
  ∀ n, P1360839429234546005.a n = A293432 (n + 1)

theorem P1360839429234546005.correct : P1360839429234546005.Spec := by
  intro n
  simp only [A293432, Nat.add_sub_cancel]

end A293432

/-! ## A293432.P17622663265733048131

`A000027(A293434(n+2+n))`
-/

namespace A293432.P17622663265733048131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A293434 (n + 2 + n)).toNat

end

end A293432.P17622663265733048131

namespace A293432

/-- `A000027(A293434(n+2+n))` -/
def P17622663265733048131.Spec : Prop :=
  ∀ n, P17622663265733048131.a n = A293432 (n + 1)

end A293432

/-! ## A293432.P377021236538340007

`or(A000007(n), A293434(n+2+n))`
-/

namespace A293432.P377021236538340007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293434 (n + 2 + n))

end

end A293432.P377021236538340007

namespace A293432

/-- `or(A000007(n), A293434(n+2+n))` -/
def P377021236538340007.Spec : Prop :=
  ∀ n, P377021236538340007.a n = A293432 (n + 1)

end A293432

/-! ## A293432.P12411764096183707325

`A028310(A293434(Δ[Δ[(2*n)²]²]))`
-/

namespace A293432.P12411764096183707325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A293434 (f1 (n + 1) - f1 n).toNat).toNat

end

end A293432.P12411764096183707325

namespace A293432

/-- `A028310(A293434(Δ[Δ[(2*n)²]²]))` -/
def P12411764096183707325.Spec : Prop :=
  ∀ n, P12411764096183707325.a n = A293432 (n + 1)

end A293432

/-!
# A293433: a(n) is the number of the proper divisors of n that are Jacobsthal numbers (A001045).

The programs for A293433, the canonical program `A293433.P6772658230028704912` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293433 has offset 1).

The definition of A293433 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147612, A293431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293433.P6772658230028704912

`A293431(n+1)-A147612(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293433

/-- `A293431(n+1)-A147612(n+1)` -/
def P6772658230028704912.Spec : Prop :=
  ∀ n, P6772658230028704912.a n = A293433 (n + 1)

theorem P6772658230028704912.correct : P6772658230028704912.Spec := by
  intro n
  simp only [A293433, Nat.add_sub_cancel]

end A293433

/-! ## A293433.P14381112836444867637

`A265745(A293434(n+1))`
-/

namespace A293433.P14381112836444867637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A293434 (n + 1)).toNat

end

end A293433.P14381112836444867637

namespace A293433

/-- `A265745(A293434(n+1))` -/
def P14381112836444867637.Spec : Prop :=
  ∀ n, P14381112836444867637.a n = A293433 (n + 1)

end A293433

/-! ## A293433.P5236871977618579192

`A293431(n+1)-char[A167030(n)]`
-/

namespace A293433.P5236871977618579192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293431 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293433.P5236871977618579192

namespace A293433

/-- `A293431(n+1)-char[A167030(n)]` -/
def P5236871977618579192.Spec : Prop :=
  ∀ n, P5236871977618579192.a n = A293433 (n + 1)

end A293433

/-! ## A293433.P3381120291714893788

`∑{d}[n+1, A147612(#)]-A147612(n+1)`
-/

namespace A293433.P3381120291714893788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A147612 d - A147612 (n + 1)

end

end A293433.P3381120291714893788

namespace A293433

/-- `∑{d}[n+1, A147612(#)]-A147612(n+1)` -/
def P3381120291714893788.Spec : Prop :=
  ∀ n, P3381120291714893788.a n = A293433 (n + 1)

end A293433

/-! ## A293433.P18100008913583933819

`∑{d}[n+1, A157658(#)*A293431((n+1)/#)]`
-/

namespace A293433.P18100008913583933819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A293431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293433.P18100008913583933819

namespace A293433

/-- `∑{d}[n+1, A157658(#)*A293431((n+1)/#)]` -/
def P18100008913583933819.Spec : Prop :=
  ∀ n, P18100008913583933819.a n = A293433 (n + 1)

end A293433

/-! ## A293433.P558756175676026412

`A158478(A293434(n+1)^A000188(n+1))`
-/

namespace A293433.P558756175676026412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (SequenceMachineLib.roundAway ((A293434 (n + 1) : ℚ) ^ (A000188 (n + 1) : ℤ))).toNat

end

end A293433.P558756175676026412

namespace A293433

/-- `A158478(A293434(n+1)^A000188(n+1))` -/
def P558756175676026412.Spec : Prop :=
  ∀ n, P558756175676026412.a n = A293433 (n + 1)

end A293433

/-!
# A293434: a(n) is the sum of the proper divisors of n that are Jacobsthal numbers (A001045).

The programs for A293434, the canonical program `A293434.P5840825603179684284` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293434 has offset 1).

The definition of A293434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147612, A293432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293434.P5840825603179684284

`A293432(n+1)-A147612(n+1)*(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293434

/-- `A293432(n+1)-A147612(n+1)*(n+1)` -/
def P5840825603179684284.Spec : Prop :=
  ∀ n, P5840825603179684284.a n = A293434 (n + 1)

theorem P5840825603179684284.correct : P5840825603179684284.Spec := by
  intro n
  simp only [A293434, Nat.add_sub_cancel]

end A293434

/-! ## A293434.P10664616944966136038

`A293432(n+1)%(n+1)`
-/

namespace A293434.P10664616944966136038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293432 (n + 1)) (n + 1 : ℤ)

end

end A293434.P10664616944966136038

namespace A293434

/-- `A293432(n+1)%(n+1)` -/
def P10664616944966136038.Spec : Prop :=
  ∀ n, P10664616944966136038.a n = A293434 (n + 1)

end A293434

/-! ## A293434.P15252635055976824557

`∑{d}[n+1, #*A147612(#)]%A199343(n)`
-/

namespace A293434.P15252635055976824557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A147612 d) (A199343 n)

end

end A293434.P15252635055976824557

namespace A293434

/-- `∑{d}[n+1, #*A147612(#)]%A199343(n)` -/
def P15252635055976824557.Spec : Prop :=
  ∀ n, P15252635055976824557.a n = A293434 (n + 1)

end A293434

/-! ## A293434.P9854120808557720507

`∑{d}[n+1, A157658(#)*A293432((n+1)/#)]`
-/

namespace A293434.P9854120808557720507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A293432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293434.P9854120808557720507

namespace A293434

/-- `∑{d}[n+1, A157658(#)*A293432((n+1)/#)]` -/
def P9854120808557720507.Spec : Prop :=
  ∀ n, P9854120808557720507.a n = A293434 (n + 1)

end A293434

/-! ## A293434.P5225658542097191920

`A002262(A293432(n+1)+∑[n])`
-/

namespace A293434.P5225658542097191920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A293432 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A293434.P5225658542097191920

namespace A293434

/-- `A002262(A293432(n+1)+∑[n])` -/
def P5225658542097191920.Spec : Prop :=
  ∀ n, P5225658542097191920.a n = A293434 (n + 1)

end A293434

/-!
# A293435: a(n) is the number of the proper divisors of n that are Fibonacci numbers (A000045).

The programs for A293435, the canonical program `A293435.P5908272038214602108` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293435 has offset 1).

The definition of A293435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005086, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293435.P5908272038214602108

`A005086(n+1)-A010056(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293435

/-- `A005086(n+1)-A010056(n+1)` -/
def P5908272038214602108.Spec : Prop :=
  ∀ n, P5908272038214602108.a n = A293435 (n + 1)

theorem P5908272038214602108.correct : P5908272038214602108.Spec := by
  intro n
  simp only [A293435, Nat.add_sub_cancel]

end A293435

/-! ## A293435.P18031630755268396121

`A005086(n+1)-A192687(n)`
-/

namespace A293435.P18031630755268396121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n + 1) - A192687 n

end

end A293435.P18031630755268396121

namespace A293435

/-- `A005086(n+1)-A192687(n)` -/
def P18031630755268396121.Spec : Prop :=
  ∀ n, P18031630755268396121.a n = A293435 (n + 1)

end A293435

/-! ## A293435.P5056457121277077986

`∑{d}[n+1, A010056(#)]-A010056(n+1)`
-/

namespace A293435.P5056457121277077986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d - A010056 (n + 1)

end

end A293435.P5056457121277077986

namespace A293435

/-- `∑{d}[n+1, A010056(#)]-A010056(n+1)` -/
def P5056457121277077986.Spec : Prop :=
  ∀ n, P5056457121277077986.a n = A293435 (n + 1)

end A293435

/-! ## A293435.P5729923585284017222

`∑{d}[n+1, A005086(#)*A157658((n+1)/#)]`
-/

namespace A293435.P5729923585284017222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005086 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293435.P5729923585284017222

namespace A293435

/-- `∑{d}[n+1, A005086(#)*A157658((n+1)/#)]` -/
def P5729923585284017222.Spec : Prop :=
  ∀ n, P5729923585284017222.a n = A293435 (n + 1)

end A293435

/-! ## A293435.P3126165909795764297

`∑{d}[n+1, A057427(#-1)*A192687((n+1)/#-1)]`
-/

namespace A293435.P3126165909795764297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A192687 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A293435.P3126165909795764297

namespace A293435

/-- `∑{d}[n+1, A057427(#-1)*A192687((n+1)/#-1)]` -/
def P3126165909795764297.Spec : Prop :=
  ∀ n, P3126165909795764297.a n = A293435 (n + 1)

end A293435

/-! ## A293435.P12708629505721803482

`val(A304102(n+1), 2)`
-/

namespace A293435.P12708629505721803482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A304102 (n + 1)).toNat 2

end

end A293435.P12708629505721803482

namespace A293435

/-- `val(A304102(n+1), 2)` -/
def P12708629505721803482.Spec : Prop :=
  ∀ n, (P12708629505721803482.a n : ℤ) = A293435 (n + 1)

end A293435

/-! ## A293435.P8111079218482394468

`A051903(A304102(n+1))`
-/

namespace A293435.P8111079218482394468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A304102 (n + 1)).toNat

end

end A293435.P8111079218482394468

namespace A293435

/-- `A051903(A304102(n+1))` -/
def P8111079218482394468.Spec : Prop :=
  ∀ n, P8111079218482394468.a n = A293435 (n + 1)

end A293435

/-!
# A293436: a(n) is the sum of the proper divisors of n that are Fibonacci numbers (A000045).

The programs for A293436, the canonical program `A293436.P18285162876121790611` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293436 has offset 1).

The definition of A293436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005092, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293436.P18285162876121790611

`A005092(n+1)-A010056(n+1)*(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293436

/-- `A005092(n+1)-A010056(n+1)*(n+1)` -/
def P18285162876121790611.Spec : Prop :=
  ∀ n, P18285162876121790611.a n = A293436 (n + 1)

theorem P18285162876121790611.correct : P18285162876121790611.Spec := by
  intro n
  simp only [A293436, Nat.add_sub_cancel]

end A293436

/-! ## A293436.P1135665051244494939

`∑{d}[n+1, #%(n+1)*A010056(#)]`
-/

namespace A293436.P1135665051244494939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d % (n + 1) : ℕ) : ℤ) * A010056 d

end

end A293436.P1135665051244494939

namespace A293436

/-- `∑{d}[n+1, #%(n+1)*A010056(#)]` -/
def P1135665051244494939.Spec : Prop :=
  ∀ n, P1135665051244494939.a n = A293436 (n + 1)

end A293436

/-! ## A293436.P5454493063483534107

`A005092(n+1)%A072728(n)`
-/

namespace A293436.P5454493063483534107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005092 (n + 1)) (A072728 n)

end

end A293436.P5454493063483534107

namespace A293436

/-- `A005092(n+1)%A072728(n)` -/
def P5454493063483534107.Spec : Prop :=
  ∀ n, P5454493063483534107.a n = A293436 (n + 1)

end A293436

/-! ## A293436.P3077345989339832983

`A005092(n+1)-(n+1)*A192687(n)`
-/

namespace A293436.P3077345989339832983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005092 (n + 1) - (n + 1 : ℤ) * A192687 n

end

end A293436.P3077345989339832983

namespace A293436

/-- `A005092(n+1)-(n+1)*A192687(n)` -/
def P3077345989339832983.Spec : Prop :=
  ∀ n, P3077345989339832983.a n = A293436 (n + 1)

end A293436

/-! ## A293436.P4473737713124640450

`∑{d}[n+1, A005092(#)*A157658((n+1)/#)]`
-/

namespace A293436.P4473737713124640450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005092 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293436.P4473737713124640450

namespace A293436

/-- `∑{d}[n+1, A005092(#)*A157658((n+1)/#)]` -/
def P4473737713124640450.Spec : Prop :=
  ∀ n, P4473737713124640450.a n = A293436 (n + 1)

end A293436

/-! ## A293436.P11748827302029666850

`∑{d}[n+1, #*A192687(#-1)]%A256663(n+1)`
-/

namespace A293436.P11748827302029666850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A192687 (d - 1)) (A256663 (n + 1))

end

end A293436.P11748827302029666850

namespace A293436

/-- `∑{d}[n+1, #*A192687(#-1)]%A256663(n+1)` -/
def P11748827302029666850.Spec : Prop :=
  ∀ n, P11748827302029666850.a n = A293436 (n + 1)

end A293436

/-!
# A293437: Numbers n that are persistently squarefree for base-2 shifting (in A293430), and for which A163511(n) is also in A293430.

The programs for A293437, there is no canonical definition to state claims against.
-/

/-! ## A293437.P3794418602945967919

`record[∏{p}[A038572(n)²², #]]`
-/

namespace A293437.P3794418602945967919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038572 n ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293437.P3794418602945967919

/-! ## A293437.P15559702601917971354

`record[xor(A059169(n+1), A107457(n))]`
-/

namespace A293437.P15559702601917971354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059169 (n + 1)) (A107457 (n + 18))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293437.P15559702601917971354

/-! ## A293437.P1964404564662495505

`record[A007947(n+1)/A187818(2*n+3)]`
-/

namespace A293437.P1964404564662495505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A187818 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293437.P1964404564662495505

/-! ## A293437.P8966051598914796854

`lt[A124773(n), A124736(A000961(n+1))]`
-/

namespace A293437.P8966051598914796854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A000961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293437.P8966051598914796854

/-!
# A293438: Product of deficiencies of proper divisors of n.

The programs for A293438, there is no canonical definition to state claims against.
-/

/-! ## A293438.P2218297162817246976

`∏{p}[A067911(n+1), A033879((n+1)/#)]`
-/

namespace A293438.P2218297162817246976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033879 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A293438.P2218297162817246976

/-! ## A293438.P11623757971923773227

`C(A334622(n), A290106(A182027(n)))`
-/

namespace A293438.P11623757971923773227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334622 n).toNat (A290106 (A182027 n).toNat).toNat

end

end A293438.P11623757971923773227

/-! ## A293438.P17972844029329559933

`A341635(A000265(n+1)^A051709(n+1))`
-/

namespace A293438.P17972844029329559933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341635 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A051709 (n + 1) : ℤ))).toNat

end

end A293438.P17972844029329559933

/-! ## A293438.P16671575769774399027

`A347090(A000265(n+1)^A051709(n+1))`
-/

namespace A293438.P16671575769774399027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347090 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A051709 (n + 1) : ℤ))).toNat

end

end A293438.P16671575769774399027

/-! ## A293438.P1616579607770963784

`C(A232089(n), A096863(A078099(n+1)))`
-/

namespace A293438.P1616579607770963784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A232089 n).toNat (A096863 (A078099 (n + 1)).toNat).toNat

end

end A293438.P1616579607770963784

/-!
# A293439: Number of odious exponents in the prime factorization of n.

The programs for A293439, the canonical program `A293439.P5122133940352064495` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293439 has offset 1).

The definition of A293439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293439.P4181892465376323890

`A007814(A293443(n+1))`
-/

namespace A293439.P4181892465376323890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293443 (n + 1)).toNat

end

end A293439.P4181892465376323890

namespace A293439

/-- `A007814(A293443(n+1))` -/
def P4181892465376323890.Spec : Prop :=
  ∀ n, P4181892465376323890.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P5261038913906442017

`log2(A367515(n+1))`
-/

namespace A293439.P5261038913906442017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A367515 (n + 1) : ℝ)

end

end A293439.P5261038913906442017

namespace A293439

/-- `log2(A367515(n+1))` -/
def P5261038913906442017.Spec : Prop :=
  ∀ n, P5261038913906442017.a n = (A293439 (n + 1) : ℝ)

end A293439

/-! ## A293439.P5122133940352064495

`∑{e}[n+1, A010060(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293439

/-- `∑{e}[n+1, A010060(#)]` -/
def P5122133940352064495.Spec : Prop :=
  ∀ n, P5122133940352064495.a n = A293439 (n + 1)

theorem P5122133940352064495.correct : P5122133940352064495.Spec := by
  intro n
  simp only [A293439, Nat.add_sub_cancel]

end A293439

/-! ## A293439.P4933478386245617597

`A001221(A270418(n+1))`
-/

namespace A293439.P4933478386245617597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A270418 (n + 1)).toNat

end

end A293439.P4933478386245617597

namespace A293439

/-- `A001221(A270418(n+1))` -/
def P4933478386245617597.Spec : Prop :=
  ∀ n, P4933478386245617597.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P7221205510822363420

`A001221(A367514(n+1))`
-/

namespace A293439.P7221205510822363420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367514 (n + 1)).toNat

end

end A293439.P7221205510822363420

namespace A293439

/-- `A001221(A367514(n+1))` -/
def P7221205510822363420.Spec : Prop :=
  ∀ n, P7221205510822363420.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P14124067332622465892

`A001221(A367699(n+1))`
-/

namespace A293439.P14124067332622465892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367699 (n + 1)).toNat

end

end A293439.P14124067332622465892

namespace A293439

/-- `A001221(A367699(n+1))` -/
def P14124067332622465892.Spec : Prop :=
  ∀ n, P14124067332622465892.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P3499390934435130331

`A001222(∏{p}[A270418(n+1), #])`
-/

namespace A293439.P3499390934435130331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A293439.P3499390934435130331

namespace A293439

/-- `A001222(∏{p}[A270418(n+1), #])` -/
def P3499390934435130331.Spec : Prop :=
  ∀ n, P3499390934435130331.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P8444604292319366069

`A001221(n+1)-A367512(n+1)`
-/

namespace A293439.P8444604292319366069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A367512 (n + 1)

end

end A293439.P8444604292319366069

namespace A293439

/-- `A001221(n+1)-A367512(n+1)` -/
def P8444604292319366069.Spec : Prop :=
  ∀ n, P8444604292319366069.a n = A293439 (n + 1)

theorem P8444604292319366069.correct : P8444604292319366069.Spec := by
  intro n
  simp only [A293439, Nat.add_sub_cancel, A293439.P8444604292319366069.a, A293439.P5122133940352064495.f1, A293439.P5122133940352064495.a, A001221, A001221.P10258181745752134128.a, A010060, A010060.P3080921269106500717.a, A367512, A367512.P6814161711481593875.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293439

/-! ## A293439.P6814803019573379840

`A001221((n+1)/A367513(n+1))`
-/

namespace A293439.P6814803019573379840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A367513 (n + 1) : ℚ))).toNat

end

end A293439.P6814803019573379840

namespace A293439

/-- `A001221((n+1)/A367513(n+1))` -/
def P6814803019573379840.Spec : Prop :=
  ∀ n, P6814803019573379840.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P2799709798560648787

`∑{e}[n+1, A283735(val(A006068(#), 2)+3)]`
-/

namespace A293439.P2799709798560648787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A283735 (SequenceMachineLib.valuation (A006068 (Nat.factorization (f1 n) p)).toNat 2 + 3)

end

end A293439.P2799709798560648787

namespace A293439

/-- `∑{e}[n+1, A283735(val(A006068(#), 2)+3)]` -/
def P2799709798560648787.Spec : Prop :=
  ∀ n, P2799709798560648787.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P11295001110588369571

`A001221(n+1)-A001221(A367513(n+1))`
-/

namespace A293439.P11295001110588369571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A367513 (n + 1)).toNat

end

end A293439.P11295001110588369571

namespace A293439

/-- `A001221(n+1)-A001221(A367513(n+1))` -/
def P11295001110588369571.Spec : Prop :=
  ∀ n, P11295001110588369571.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P1971347841769315467

`∑{e}[A007913(A268385(n+1)), #]`
-/

namespace A293439.P1971347841769315467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A268385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A293439.P1971347841769315467

namespace A293439

/-- `∑{e}[A007913(A268385(n+1)), #]` -/
def P1971347841769315467.Spec : Prop :=
  ∀ n, (P1971347841769315467.a n : ℤ) = A293439 (n + 1)

end A293439

/-! ## A293439.P15779845594348855676

`A001221(A367932(n+1))`
-/

namespace A293439.P15779845594348855676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367932 (n + 1)).toNat

end

end A293439.P15779845594348855676

namespace A293439

/-- `A001221(A367932(n+1))` -/
def P15779845594348855676.Spec : Prop :=
  ∀ n, P15779845594348855676.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P4800375780382856752

`A162642(A268385(n+1))`
-/

namespace A293439.P4800375780382856752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A268385 (n + 1)).toNat

end

end A293439.P4800375780382856752

namespace A293439

/-- `A162642(A268385(n+1))` -/
def P4800375780382856752.Spec : Prop :=
  ∀ n, P4800375780382856752.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P15491667173355941423

`A001221(A306775(A367515(n+1))²)`
-/

namespace A293439.P15491667173355941423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306775 (A367515 (n + 1)).toNat ^ 2).toNat

end

end A293439.P15491667173355941423

namespace A293439

/-- `A001221(A306775(A367515(n+1))²)` -/
def P15491667173355941423.Spec : Prop :=
  ∀ n, P15491667173355941423.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P13460002781721991218

`and(A203878(n+1), A366074(n+1))`
-/

namespace A293439.P13460002781721991218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203878 (n + 1)) (A366074 (n + 1))

end

end A293439.P13460002781721991218

namespace A293439

/-- `and(A203878(n+1), A366074(n+1))` -/
def P13460002781721991218.Spec : Prop :=
  ∀ n, P13460002781721991218.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P10508527711525169155

`and(A072828(n+1), A366074(n+1))`
-/

namespace A293439.P10508527711525169155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A366074 (n + 1))

end

end A293439.P10508527711525169155

namespace A293439

/-- `and(A072828(n+1), A366074(n+1))` -/
def P10508527711525169155.Spec : Prop :=
  ∀ n, P10508527711525169155.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P9682198241008490635

`and(A051684(n+1), A366074(n+1))`
-/

namespace A293439.P9682198241008490635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051684 (n + 1)) (A366074 (n + 1))

end

end A293439.P9682198241008490635

namespace A293439

/-- `and(A051684(n+1), A366074(n+1))` -/
def P9682198241008490635.Spec : Prop :=
  ∀ n, P9682198241008490635.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P2799577282898853452

`and(A086827(n+1), A366074(n+1))`
-/

namespace A293439.P2799577282898853452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A366074 (n + 1))

end

end A293439.P2799577282898853452

namespace A293439

/-- `and(A086827(n+1), A366074(n+1))` -/
def P2799577282898853452.Spec : Prop :=
  ∀ n, P2799577282898853452.a n = A293439 (n + 1)

end A293439

/-! ## A293439.P8036906969362633343

`A366074(A000290(n+1))`
-/

namespace A293439.P8036906969362633343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366074 (A000290 (n + 1)).toNat

end

end A293439.P8036906969362633343

namespace A293439

/-- `A366074(A000290(n+1))` -/
def P8036906969362633343.Spec : Prop :=
  ∀ n, P8036906969362633343.a n = A293439 (n + 1)

end A293439

/-!
# A293440: First differences of A293230: how many more alive nodes there are in generation n+1 than in generation n in the binary tree of persistently squarefree numbers.

The programs for A293440, there is no canonical definition to state claims against.
-/

/-! ## A293440.P10818573553678649974

`A293230(1+n)-A293230(n)`
-/

namespace A293440.P10818573553678649974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 (1 + n) - A293230 n

end

end A293440.P10818573553678649974

/-! ## A293440.P10200641804552063876

`A293522(n)-A293520(n)`
-/

namespace A293440.P10200641804552063876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293522 n - A293520 n

end

end A293440.P10200641804552063876

/-! ## A293440.P6620404690769342711

`Δ[A293230(n)]`
-/

namespace A293440.P6620404690769342711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293440.P6620404690769342711

/-! ## A293440.P144509724505255807

`A293517(abs(1-n))+A293517(n)`
-/

namespace A293440.P144509724505255807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 |1 - (n : ℤ)|.toNat + A293517 n

end

end A293440.P144509724505255807

/-! ## A293440.P13017008381904707837

`record[A293230(A324344(n))]-A293230(n)`
-/

namespace A293440.P13017008381904707837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 (A324344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A293230 n

end

end A293440.P13017008381904707837

/-! ## A293440.P16369075721049678205

`A293441(n)-(A293520(n)+A293519(n))`
-/

namespace A293440.P16369075721049678205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - (A293520 n + A293519 n)

end

end A293440.P16369075721049678205

/-! ## A293440.P11232892049138239059

`A293441(n+1)-(A293520(n)+A293518(n))`
-/

namespace A293440.P11232892049138239059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (n + 1) - (A293520 n + A293518 n)

end

end A293440.P11232892049138239059

/-!
# A293441: a(n) is the number of odd numbers k in range [2^n, (2^(n+1))-1] such that all terms in finite sequence [k, floor(k/2), floor(k/4), floor(k/8), ..., 1] are squarefree.

The programs for A293441, there is no canonical definition to state claims against.
-/

/-! ## A293441.P2228617668497575936

`∑[A293517(abs(1-n))]`
-/

namespace A293441.P2228617668497575936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293441.P2228617668497575936

/-! ## A293441.P16803627803365952252

`A293230(n)-a(n-1)` with `a(0)=1`
-/

namespace A293441.P16803627803365952252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293230 n - a (n - 1)

end

end A293441.P16803627803365952252

/-! ## A293441.P16847400680150432046

`A293517(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293441.P16847400680150432046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293517 (n - 1) + a (n - 1)

end

end A293441.P16847400680150432046

/-! ## A293441.P3764672445143638981

`A293440(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A293441.P3764672445143638981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A293440 (n - 1) + a (n - 2)

end

end A293441.P3764672445143638981

/-! ## A293441.P2392142198524546703

`∑[A293517(comp[2*(n+1)]-n)]+1`
-/

namespace A293441.P2392142198524546703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A293441.P2392142198524546703

/-! ## A293441.P11920553075672240693

`abs(∑[A033999(n)*A293230(n)])`
-/

namespace A293441.P11920553075672240693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A293441.P11920553075672240693

/-! ## A293441.P16282041529370404747

`∑[A293440(n)-A293517(n)]`
-/

namespace A293441.P16282041529370404747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293440 n - A293517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293441.P16282041529370404747

/-! ## A293441.P9706379092257012752

`A293522(n)+A293519(n)`
-/

namespace A293441.P9706379092257012752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293522 n + A293519 n

end

end A293441.P9706379092257012752

/-! ## A293441.P11260955984266213882

`A293230(n)-(A293520(n)+A293518(n))`
-/

namespace A293441.P11260955984266213882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293520 n + A293518 n)

end

end A293441.P11260955984266213882

/-! ## A293441.P11492703110456633151

`A293518(n)+A293522(n)-A293517(n)`
-/

namespace A293441.P11492703110456633151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n + (A293522 n - A293517 n)

end

end A293441.P11492703110456633151

/-!
# A293442: Multiplicative with a(p^e) = A019565(e).

The programs for A293442, the canonical program `A293442.P10456637239250951956` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293442 has offset 1).

The definition of A293442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A003961, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293442.P7099177626130185984

`A019565(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A293442.P7099177626130185984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019565 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A293442.P7099177626130185984

namespace A293442

/-- `A019565(A067029(n+1))*a(A028234(n+1)-1)` -/
def P7099177626130185984.Spec : Prop :=
  ∀ n, P7099177626130185984.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P10456637239250951956

`2^A162642(n+1)*A003961(a(A000188(n+1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A293442

/-- `2^A162642(n+1)*A003961(a(A000188(n+1)-1))` -/
def P10456637239250951956.Spec : Prop :=
  ∀ n, P10456637239250951956.a n = (A293442 (n + 1) : ℚ)

end A293442

/-! ## A293442.P3038400220345581814

`∏{e}[n+1, A019565(#)]`
-/

namespace A293442.P3038400220345581814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019565 (Nat.factorization (f1 n) p)

end

end A293442.P3038400220345581814

namespace A293442

/-- `∏{e}[n+1, A019565(#)]` -/
def P3038400220345581814.Spec : Prop :=
  ∀ n, P3038400220345581814.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P13899852487263703894

`∏{e}[n+1, A339809(#)+1]`
-/

namespace A293442.P13899852487263703894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A339809 (Nat.factorization (f1 n) p) + 1)

end

end A293442.P13899852487263703894

namespace A293442

/-- `∏{e}[n+1, A339809(#)+1]` -/
def P13899852487263703894.Spec : Prop :=
  ∀ n, P13899852487263703894.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P18218800568709408509

`∏{e}[n+1, A097248(2^#)]`
-/

namespace A293442.P18218800568709408509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A097248 (2 ^ Nat.factorization (f1 n) p)

end

end A293442.P18218800568709408509

namespace A293442

/-- `∏{e}[n+1, A097248(2^#)]` -/
def P18218800568709408509.Spec : Prop :=
  ∀ n, P18218800568709408509.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P14677343370011520714

`∏{p}[n+1, A019565(val(n+1, #))]`
-/

namespace A293442.P14677343370011520714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019565 (SequenceMachineLib.valuation (n + 1) p)

end

end A293442.P14677343370011520714

namespace A293442

/-- `∏{p}[n+1, A019565(val(n+1, #))]` -/
def P14677343370011520714.Spec : Prop :=
  ∀ n, P14677343370011520714.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P17205839801331971466

`∏{e}[n+1, A276086(A276156(#))]`
-/

namespace A293442.P17205839801331971466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A276086 (A276156 (Nat.factorization (f1 n) p)).toNat

end

end A293442.P17205839801331971466

namespace A293442

/-- `∏{e}[n+1, A276086(A276156(#))]` -/
def P17205839801331971466.Spec : Prop :=
  ∀ n, P17205839801331971466.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P9944686396915230402

`A293443(A268385(n+1))`
-/

namespace A293442.P9944686396915230402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293443 (A268385 (n + 1)).toNat

end

end A293442.P9944686396915230402

namespace A293442

/-- `A293443(A268385(n+1))` -/
def P9944686396915230402.Spec : Prop :=
  ∀ n, P9944686396915230402.a n = A293442 (n + 1)

end A293442

/-! ## A293442.P16852051405071519154

`∏{e}[n+1, A308328(2^#)]`
-/

namespace A293442.P16852051405071519154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A308328 (2 ^ Nat.factorization (f1 n) p)

end

end A293442.P16852051405071519154

namespace A293442

/-- `∏{e}[n+1, A308328(2^#)]` -/
def P16852051405071519154.Spec : Prop :=
  ∀ n, P16852051405071519154.a n = A293442 (n + 1)

end A293442

/-!
# A293443: Multiplicative with a(p^e) = A019565(A193231(e)).

The programs for A293443, there is no canonical definition to state claims against.
-/

/-! ## A293443.P8147512132600450546

`A019565(A193231(A067029(n+1)))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A293443.P8147512132600450546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019565 (A193231 (A067029 (n + 1)).toNat).toNat * a (A028234 (n + 1) - 1).toNat

end

end A293443.P8147512132600450546

/-! ## A293443.P16898622603101109869

`∏{e}[n+1, A365810(#)]`
-/

namespace A293443.P16898622603101109869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A365810 (Nat.factorization (f1 n) p)

end

end A293443.P16898622603101109869

/-! ## A293443.P6814056889139728192

`∏{e}[n+1, A019565(A193231(#))]`
-/

namespace A293443.P6814056889139728192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019565 (A193231 (Nat.factorization (f1 n) p)).toNat

end

end A293443.P6814056889139728192

/-! ## A293443.P14951880302127481241

`∏{e}[A268385(n+1), A019565(#)]`
-/

namespace A293443.P14951880302127481241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A019565 (Nat.factorization (f1 n).natAbs p)

end

end A293443.P14951880302127481241

/-! ## A293443.P10898221711408590554

`∏{e}[A268385(n+1), A336322(A000040(#))]`
-/

namespace A293443.P10898221711408590554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A336322 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A293443.P10898221711408590554

/-! ## A293443.P5799817150314358486

`A293442(A268385(n+1))`
-/

namespace A293443.P5799817150314358486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A268385 (n + 1)).toNat

end

end A293443.P5799817150314358486

/-!
# A293444: a(n) = A293442(A293442(n)), where A293442 is multiplicative with a(p^e) = A019565(e).

The programs for A293444, the canonical program `A293444.P2340337305881596205` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293444 has offset 1).

The definition of A293444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293444.P2340337305881596205

`A293442(A293442(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A293444

/-- `A293442(A293442(n+1))` -/
def P2340337305881596205.Spec : Prop :=
  ∀ n, P2340337305881596205.a n = A293444 (n + 1)

theorem P2340337305881596205.correct : P2340337305881596205.Spec := by
  intro n
  simp only [A293444, Nat.add_sub_cancel]

end A293444

/-! ## A293444.P17444154023251481701

`∏{e}[∏{e}[n+1, A019565(#)], A019565(#)]`
-/

namespace A293444.P17444154023251481701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A019565 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A019565 (Nat.factorization (f1 n).natAbs p)

end

end A293444.P17444154023251481701

namespace A293444

/-- `∏{e}[∏{e}[n+1, A019565(#)], A019565(#)]` -/
def P17444154023251481701.Spec : Prop :=
  ∀ n, P17444154023251481701.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P6976843243776876041

`∏{e}[∏{e}[n+1, A001317(#)], A000265(#)+#]`
-/

namespace A293444.P6976843243776876041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A001317 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000265 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A293444.P6976843243776876041

namespace A293444

/-- `∏{e}[∏{e}[n+1, A001317(#)], A000265(#)+#]` -/
def P6976843243776876041.Spec : Prop :=
  ∀ n, P6976843243776876041.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P13602964792137665226

`A293443(A268385(A293443(A268385(n+1))))`
-/

namespace A293444.P13602964792137665226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293443 (A268385 (A293443 (A268385 (n + 1)).toNat).toNat).toNat

end

end A293444.P13602964792137665226

namespace A293444

/-- `A293443(A268385(A293443(A268385(n+1))))` -/
def P13602964792137665226.Spec : Prop :=
  ∀ n, P13602964792137665226.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P2274348335298570531

`A318470(A293442(xor(n, -1)²))`
-/

namespace A293444.P2274348335298570531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318470 (A293442 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A293444.P2274348335298570531

namespace A293444

/-- `A318470(A293442(xor(n, -1)²))` -/
def P2274348335298570531.Spec : Prop :=
  ∀ n, P2274348335298570531.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P4961388841631525644

`A318470(or(A318470(n+1), A318474(n+1)))`
-/

namespace A293444.P4961388841631525644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318470 (Int.lor (A318470 (n + 1)) (A318474 (n + 1))).toNat

end

end A293444.P4961388841631525644

namespace A293444

/-- `A318470(or(A318470(n+1), A318474(n+1)))` -/
def P4961388841631525644.Spec : Prop :=
  ∀ n, P4961388841631525644.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P11520045568251420732

`A000120(∏{e}[(n+1)², A006995(#²)])`
-/

namespace A293444.P11520045568251420732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∏ p ∈ Nat.primeFactors (f1 n), A006995 (Nat.factorization (f1 n) p ^ 2)).toNat

end

end A293444.P11520045568251420732

namespace A293444

/-- `A000120(∏{e}[(n+1)², A006995(#²)])` -/
def P11520045568251420732.Spec : Prop :=
  ∀ n, P11520045568251420732.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P11419510033285460236

`∏{e}[∏{e}[n+1, A000204(#²+1)], A001610(#)]`
-/

namespace A293444.P11419510033285460236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000204 (Nat.factorization (f2 n) p ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001610 (Nat.factorization (f1 n).natAbs p)

end

end A293444.P11419510033285460236

namespace A293444

/-- `∏{e}[∏{e}[n+1, A000204(#²+1)], A001610(#)]` -/
def P11419510033285460236.Spec : Prop :=
  ∀ n, P11419510033285460236.a n = A293444 (n + 1)

end A293444

/-! ## A293444.P15593276600945332639

`A000120(∏{e}[n+1, A264618(#+#)])`
-/

namespace A293444.P15593276600945332639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∏ p ∈ Nat.primeFactors (f1 n), A264618 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)).toNat

end

end A293444.P15593276600945332639

namespace A293444

/-- `A000120(∏{e}[n+1, A264618(#+#)])` -/
def P15593276600945332639.Spec : Prop :=
  ∀ n, P15593276600945332639.a n = A293444 (n + 1)

end A293444

/-!
# A293447: Fully additive with a(p^e) = e * A000225(PrimePi(p)), where PrimePi(n) = A000720(n) and A000225(n) = (2^n)-1.

The programs for A293447, the canonical program `A293447.P13625130516549796158` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293447 has offset 1).

The definition of A293447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293447.P13625130516549796158

`A005187(A087207(n+1))+a(A003557(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A293447

/-- `A005187(A087207(n+1))+a(A003557(n+1)-1)` -/
def P13625130516549796158.Spec : Prop :=
  ∀ n, P13625130516549796158.a n = A293447 (n + 1)

theorem P13625130516549796158.correct : P13625130516549796158.Spec := by
  intro n
  simp only [A293447, Nat.add_sub_cancel]

end A293447

/-! ## A293447.P3129221889988226573

`2*Δ[A336415(n)]-A001222(n+1)`
-/

namespace A293447.P3129221889988226573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A001222 (n + 1)

end

end A293447.P3129221889988226573

namespace A293447

/-- `2*Δ[A336415(n)]-A001222(n+1)` -/
def P3129221889988226573.Spec : Prop :=
  ∀ n, P3129221889988226573.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P10162471155614579537

`2*A048675(n+1)-A001222(n+1)`
-/

namespace A293447.P10162471155614579537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (n + 1) - A001222 (n + 1)

end

end A293447.P10162471155614579537

namespace A293447

/-- `2*A048675(n+1)-A001222(n+1)` -/
def P10162471155614579537.Spec : Prop :=
  ∀ n, P10162471155614579537.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P10549761545361089434

`2*A048675(n+1)-A048675(A061142(n+1))`
-/

namespace A293447.P10549761545361089434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (n + 1) - A048675 (A061142 (n + 1)).toNat

end

end A293447.P10549761545361089434

namespace A293447

/-- `2*A048675(n+1)-A048675(A061142(n+1))` -/
def P10549761545361089434.Spec : Prop :=
  ∀ n, P10549761545361089434.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P104359596343165430

`2*A048675(n+1)-A048675(A293442(n+1))`
-/

namespace A293447.P104359596343165430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (n + 1) - A048675 (A293442 (n + 1)).toNat

end

end A293447.P104359596343165430

namespace A293447

/-- `2*A048675(n+1)-A048675(A293442(n+1))` -/
def P104359596343165430.Spec : Prop :=
  ∀ n, P104359596343165430.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P7924707388527137313

`2*A048675(n+1)-A048675(A318470(n+1))`
-/

namespace A293447.P7924707388527137313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048675 (n + 1) - A048675 (A318470 (n + 1)).toNat

end

end A293447.P7924707388527137313

namespace A293447

/-- `2*A048675(n+1)-A048675(A318470(n+1))` -/
def P7924707388527137313.Spec : Prop :=
  ∀ n, P7924707388527137313.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P13974853730554140803

`A048675(n+1)+A048675(n+1)-A001222(A046523(n+1))`
-/

namespace A293447.P13974853730554140803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A048675 (n + 1) - A001222 (A046523 (n + 1)).toNat)

end

end A293447.P13974853730554140803

namespace A293447

/-- `A048675(n+1)+A048675(n+1)-A001222(A046523(n+1))` -/
def P13974853730554140803.Spec : Prop :=
  ∀ n, P13974853730554140803.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P100373423127635050

`Δ[2*A336415(n)-A022559(n)]`
-/

namespace A293447.P100373423127635050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336415 n - A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293447.P100373423127635050

namespace A293447

/-- `Δ[2*A336415(n)-A022559(n)]` -/
def P100373423127635050.Spec : Prop :=
  ∀ n, P100373423127635050.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P3322322095873160403

`A048675(n+1)+A048675(n+1)-A001222(A003961(n+1))`
-/

namespace A293447.P3322322095873160403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A048675 (n + 1) - A001222 (A003961 (n + 1)).toNat)

end

end A293447.P3322322095873160403

namespace A293447

/-- `A048675(n+1)+A048675(n+1)-A001222(A003961(n+1))` -/
def P3322322095873160403.Spec : Prop :=
  ∀ n, P3322322095873160403.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P14142097260008708511

`A048675(A003961(n+1))-A001222(n+1)`
-/

namespace A293447.P14142097260008708511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A003961 (n + 1)).toNat - A001222 (n + 1)

end

end A293447.P14142097260008708511

namespace A293447

/-- `A048675(A003961(n+1))-A001222(n+1)` -/
def P14142097260008708511.Spec : Prop :=
  ∀ n, P14142097260008708511.a n = A293447 (n + 1)

end A293447

/-! ## A293447.P989423471866450629

`A048675(A003961(n+1))-A048675(A318470(n+1))`
-/

namespace A293447.P989423471866450629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A003961 (n + 1)).toNat - A048675 (A318470 (n + 1)).toNat

end

end A293447.P989423471866450629

namespace A293447

/-- `A048675(A003961(n+1))-A048675(A318470(n+1))` -/
def P989423471866450629.Spec : Prop :=
  ∀ n, P989423471866450629.a n = A293447 (n + 1)

end A293447

/-!
# A293448: Self-inverse permutation of natural numbers: replace (with multiplicity) each prime factor A000040(k) with A000040(min+(max-k)) in the prime factorization of n, where min = A055396(n) and max = A061395(n).

The programs for A293448, there is no canonical definition to state claims against.
-/

/-! ## A293448.P4439981622452546911

`A005940(A057889(A156552(n+1))+1)`
-/

namespace A293448.P4439981622452546911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A057889 (A156552 (n + 1)).toNat + 1).toNat

end

end A293448.P4439981622452546911

/-!
# A293449: Characteristic function for A056166, numbers that have no nonprime exponents present in their prime factorization n = p_1^e_1 * ... * p_k^e_k.

The programs for A293449, the canonical program `A293449.P1988941039110302622` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293449 has offset 1).

The definition of A293449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293449.P10359876062989901496

`A010051(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A293449.P10359876062989901496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A010051 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A293449.P10359876062989901496

namespace A293449

/-- `A010051(A067029(n+1))*a(A028234(n+1)-1)` -/
def P10359876062989901496.Spec : Prop :=
  ∀ n, P10359876062989901496.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P1988941039110302622

`∏{e}[n+1, A010051(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293449

/-- `∏{e}[n+1, A010051(#)]` -/
def P1988941039110302622.Spec : Prop :=
  ∀ n, P1988941039110302622.a n = A293449 (n + 1)

theorem P1988941039110302622.correct : P1988941039110302622.Spec := by
  intro n
  simp only [A293449, Nat.add_sub_cancel]

end A293449

/-! ## A293449.P18056666143633446148

`∏{e}[n+1, A257000(#)]`
-/

namespace A293449.P18056666143633446148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A257000 (Nat.factorization (f1 n) p)

end

end A293449.P18056666143633446148

namespace A293449

/-- `∏{e}[n+1, A257000(#)]` -/
def P18056666143633446148.Spec : Prop :=
  ∀ n, P18056666143633446148.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P5732966624482198572

`char[A056166(n+1)-1]`
-/

namespace A293449.P5732966624482198572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A293449.P5732966624482198572

namespace A293449

/-- `char[A056166(n+1)-1]` -/
def P5732966624482198572.Spec : Prop :=
  ∀ n, (P5732966624482198572.a n : ℤ) = A293449 (n + 1)

end A293449

/-! ## A293449.P17769790236934398527

`char[A304203(n+1)-1]`
-/

namespace A293449.P17769790236934398527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A293449.P17769790236934398527

namespace A293449

/-- `char[A304203(n+1)-1]` -/
def P17769790236934398527.Spec : Prop :=
  ∀ n, (P17769790236934398527.a n : ℤ) = A293449 (n + 1)

end A293449

/-! ## A293449.P7979143199781449832

`C(2, A125070(n+1)+2)`
-/

namespace A293449.P7979143199781449832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A125070 (n + 1) + 2).toNat

end

end A293449.P7979143199781449832

namespace A293449

/-- `C(2, A125070(n+1)+2)` -/
def P7979143199781449832.Spec : Prop :=
  ∀ n, (P7979143199781449832.a n : ℤ) = A293449 (n + 1)

end A293449

/-! ## A293449.P12952770093728948556

`C(A366993(n+1), n+1)`
-/

namespace A293449.P12952770093728948556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A366993 (n + 1)).toNat (n + 1)

end

end A293449.P12952770093728948556

namespace A293449

/-- `C(A366993(n+1), n+1)` -/
def P12952770093728948556.Spec : Prop :=
  ∀ n, (P12952770093728948556.a n : ℤ) = A293449 (n + 1)

end A293449

/-! ## A293449.P9137950574979922051

`∏{e}[n+1, val(A000203(#), #+1)]`
-/

namespace A293449.P9137950574979922051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000203 (Nat.factorization (f1 n) p)).toNat (Nat.factorization (f1 n) p + 1)

end

end A293449.P9137950574979922051

namespace A293449

/-- `∏{e}[n+1, val(A000203(#), #+1)]` -/
def P9137950574979922051.Spec : Prop :=
  ∀ n, (P9137950574979922051.a n : ℤ) = A293449 (n + 1)

end A293449

/-! ## A293449.P7259871528358205281

`A000007(A125071(n+1))`
-/

namespace A293449.P7259871528358205281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A125071 (n + 1)).toNat

end

end A293449.P7259871528358205281

namespace A293449

/-- `A000007(A125071(n+1))` -/
def P7259871528358205281.Spec : Prop :=
  ∀ n, P7259871528358205281.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P15276120945069413696

`A028590(2*A125071(n+1)²)`
-/

namespace A293449.P15276120945069413696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028590 (2 * A125071 (n + 1) ^ 2).toNat

end

end A293449.P15276120945069413696

namespace A293449

/-- `A028590(2*A125071(n+1)²)` -/
def P15276120945069413696.Spec : Prop :=
  ∀ n, P15276120945069413696.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P7864853175798512535

`∏{e}[n+1, val(A000040(A000005(#)), 3)]`
-/

namespace A293449.P7864853175798512535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000040 (A000005 (Nat.factorization (f1 n) p)).toNat).toNat 3

end

end A293449.P7864853175798512535

namespace A293449

/-- `∏{e}[n+1, val(A000040(A000005(#)), 3)]` -/
def P7864853175798512535.Spec : Prop :=
  ∀ n, (P7864853175798512535.a n : ℤ) = A293449 (n + 1)

end A293449

/-! ## A293449.P3038022279021048285

`A008683(∏{e}[n+1, (A008683(#)+2)²])`
-/

namespace A293449.P3038022279021048285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), (A008683 (Nat.factorization (f1 n) p) + 2) ^ 2).toNat

end

end A293449.P3038022279021048285

namespace A293449

/-- `A008683(∏{e}[n+1, (A008683(#)+2)²])` -/
def P3038022279021048285.Spec : Prop :=
  ∀ n, P3038022279021048285.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P12424818013171523982

`∑{d}[n+1, A008683(#)*A095691((n+1)/#)]`
-/

namespace A293449.P12424818013171523982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A095691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293449.P12424818013171523982

namespace A293449

/-- `∑{d}[n+1, A008683(#)*A095691((n+1)/#)]` -/
def P12424818013171523982.Spec : Prop :=
  ∀ n, P12424818013171523982.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P12507286155362480632

`A000007(n*A125070(n+1))`
-/

namespace A293449.P12507286155362480632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A125070 (n + 1)).toNat

end

end A293449.P12507286155362480632

namespace A293449

/-- `A000007(n*A125070(n+1))` -/
def P12507286155362480632.Spec : Prop :=
  ∀ n, P12507286155362480632.a n = A293449 (n + 1)

end A293449

/-! ## A293449.P16855483625970044815

`∏{e}[A069799(n+1), A069851(#)]`
-/

namespace A293449.P16855483625970044815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A069851 (Nat.factorization (f1 n).natAbs p)

end

end A293449.P16855483625970044815

namespace A293449

/-- `∏{e}[A069799(n+1), A069851(#)]` -/
def P16855483625970044815.Spec : Prop :=
  ∀ n, P16855483625970044815.a n = A293449 (n + 1)

end A293449

/-!
# A293451: Number of proper divisors of n of the form 4k+1.

The programs for A293451, the canonical program `A293451.P7933704041420674484` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293451 has offset 1).

The definition of A293451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293451.P7933704041420674484

`A001826(n+1)-A121262(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293451

/-- `A001826(n+1)-A121262(n)` -/
def P7933704041420674484.Spec : Prop :=
  ∀ n, P7933704041420674484.a n = A293451 (n + 1)

theorem P7933704041420674484.correct : P7933704041420674484.Spec := by
  intro n
  simp only [A293451, Nat.add_sub_cancel]

end A293451

/-! ## A293451.P1418159347531641442

`A091954(n+1)-A293513(n+1)`
-/

namespace A293451.P1418159347531641442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A293513 (n + 1)

end

end A293451.P1418159347531641442

namespace A293451

/-- `A091954(n+1)-A293513(n+1)` -/
def P1418159347531641442.Spec : Prop :=
  ∀ n, P1418159347531641442.a n = A293451 (n + 1)

theorem P1418159347531641442.correct : P1418159347531641442.Spec := by
  intro n
  simp only [A293451, Nat.add_sub_cancel, A293451.P1418159347531641442.a, A293451.P7933704041420674484.a, A001826, A001826.P1518250824516108745.a, A091954, A091954.P3013811461556753393.a, A121262, A121262.P5808261376347758400.a, A293513, A293513.P2913360707613170259.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293451

/-! ## A293451.P10471049657952010296

`∑{d}[n+1, A326055(#%(n+1)+1)%2]`
-/

namespace A293451.P10471049657952010296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A326055 (d % (n + 1) + 1)) 2

end

end A293451.P10471049657952010296

namespace A293451

/-- `∑{d}[n+1, A326055(#%(n+1)+1)%2]` -/
def P10471049657952010296.Spec : Prop :=
  ∀ n, P10471049657952010296.a n = A293451 (n + 1)

end A293451

/-! ## A293451.P8956366392410349441

`∑{d}[n+1, A001826(#)*A157658((n+1)/#)]`
-/

namespace A293451.P8956366392410349441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001826 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293451.P8956366392410349441

namespace A293451

/-- `∑{d}[n+1, A001826(#)*A157658((n+1)/#)]` -/
def P8956366392410349441.Spec : Prop :=
  ∀ n, P8956366392410349441.a n = A293451 (n + 1)

end A293451

/-! ## A293451.P1549271555763884049

`∑{d}[n+1, A014577(#-1)*A296066((n+1)/#)]`
-/

namespace A293451.P1549271555763884049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014577 (d - 1) * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293451.P1549271555763884049

namespace A293451

/-- `∑{d}[n+1, A014577(#-1)*A296066((n+1)/#)]` -/
def P1549271555763884049.Spec : Prop :=
  ∀ n, P1549271555763884049.a n = A293451 (n + 1)

end A293451

/-! ## A293451.P9170572509414029009

`∑{d}[n+1, A057427(#-1)*A121262((n+1)/#-1)]`
-/

namespace A293451.P9170572509414029009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A121262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A293451.P9170572509414029009

namespace A293451

/-- `∑{d}[n+1, A057427(#-1)*A121262((n+1)/#-1)]` -/
def P9170572509414029009.Spec : Prop :=
  ∀ n, P9170572509414029009.a n = A293451 (n + 1)

end A293451

/-! ## A293451.P18326643320788111132

`A001227(n+1)-(A121262(n)+A001842(n+1))`
-/

namespace A293451.P18326643320788111132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A121262 n + A001842 (n + 1))

end

end A293451.P18326643320788111132

namespace A293451

/-- `A001227(n+1)-(A121262(n)+A001842(n+1))` -/
def P18326643320788111132.Spec : Prop :=
  ∀ n, P18326643320788111132.a n = A293451 (n + 1)

theorem P18326643320788111132.correct : P18326643320788111132.Spec := by
  intro n
  simp only [A293451, Nat.add_sub_cancel, A293451.P18326643320788111132.a, A293451.P7933704041420674484.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293451

/-! ## A293451.P12357296332371036499

`A091954(n+1)+A011765(n+2)-A001842(n+1)`
-/

namespace A293451.P12357296332371036499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + (A011765 (n + 2) - A001842 (n + 1))

end

end A293451.P12357296332371036499

namespace A293451

/-- `A091954(n+1)+A011765(n+2)-A001842(n+1)` -/
def P12357296332371036499.Spec : Prop :=
  ∀ n, P12357296332371036499.a n = A293451 (n + 1)

end A293451

/-! ## A293451.P764897196510314492

`and(A120275(n+2), A293901(n+1))`
-/

namespace A293451.P764897196510314492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120275 (n + 2)) (A293901 (n + 1))

end

end A293451.P764897196510314492

namespace A293451

/-- `and(A120275(n+2), A293901(n+1))` -/
def P764897196510314492.Spec : Prop :=
  ∀ n, P764897196510314492.a n = A293451 (n + 1)

end A293451

/-! ## A293451.P7351924505085894146

`and(A293901(n+1), A342363(n+1))`
-/

namespace A293451.P7351924505085894146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293901 (n + 1)) (A342363 (n + 1))

end

end A293451.P7351924505085894146

namespace A293451

/-- `and(A293901(n+1), A342363(n+1))` -/
def P7351924505085894146.Spec : Prop :=
  ∀ n, P7351924505085894146.a n = A293451 (n + 1)

end A293451

/-!
# A293453: Zumkeller numbers k such that sigma(k)/2 is a Zumkeller number.

The programs for A293453, there is no canonical definition to state claims against.
-/

/-! ## A293453.P836722394522672273

`record[A083207(n+1)*A179527(A175582(n+1))]`
-/

namespace A293453.P836722394522672273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) * A179527 (A175582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293453.P836722394522672273

/-!
# A293457: Primes that divide the numerator of the sum of the reciprocals of all smaller primes.

The programs for A293457, there is no canonical definition to state claims against.
-/

/-! ## A293457.P14480894335220521405

`A000040(1+A369972(n+1))`
-/

namespace A293457.P14480894335220521405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A369972 (n + 1)).toNat

end

end A293457.P14480894335220521405

/-! ## A293457.P13792193873148079427

`p?[record[A373843(n+1)]]`
-/

namespace A293457.P13792193873148079427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373843 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293457.P13792193873148079427

/-!
# A293458: Numerator of probability that a permutation of elements of some subset of set {1,2,...,n} is a permutation of elements of some set of the form 1..k, k <= n.

The programs for A293458, there is no canonical definition to state claims against.
-/

/-! ## A293458.P1821638054399622935

`or(1, ∑[floor((n+1)!/2)])`
-/

namespace A293458.P1821638054399622935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293458.P1821638054399622935

/-! ## A293458.P15849662016179013636

`∑[ceil((n+1)!/2)]-char[1]`
-/

namespace A293458.P15849662016179013636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A293458.P15849662016179013636

/-! ## A293458.P11203626261219627720

`or(1, ∑[(n+1)*a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A293458.P11203626261219627720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293458.P11203626261219627720

/-! ## A293458.P15450398617071630095

`2*(floor(∑[∏[n+1]]/4)-1)+3`
-/

namespace A293458.P15450398617071630095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋ - 1) + 3

end

end A293458.P15450398617071630095

/-! ## A293458.P9166976362538647427

`a(n-1)%2*∑[(n+1)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A293458.P9166976362538647427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) % 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293458.P9166976362538647427

/-!
# A293460: a(n) = Sum_{k=1..n} sign(omega(n+1) - omega(n)) (where omega(m) = A001221(m), the number of distinct primes dividing m).

The programs for A293460, there is no canonical definition to state claims against.
-/

/-! ## A293460.P10519997321181038510

`A001221(A166140(n+1)%A167486(n+1))`
-/

namespace A293460.P10519997321181038510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A166140 (n + 1)) (A167486 (n + 1))).toNat

end

end A293460.P10519997321181038510

/-!
# A293461: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} (1 + Sum_{j=1..k} j*x^(j*(2*i-1))).

The programs for A293461, there is no canonical definition to state claims against.
-/

/-! ## A293461.P8156953341640254551

`gcd(A071607(A354234(n+1)), A290217(n))`
-/

namespace A293461.P8156953341640254551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071607 (A354234 (n + 1)).toNat) (A290217 n)

end

end A293461.P8156953341640254551

/-! ## A293461.P14753463676722998882

`and(A048680(A156582(n)), A143841(n))`
-/

namespace A293461.P14753463676722998882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048680 (A156582 n).toNat) (A143841 n)

end

end A293461.P14753463676722998882

/-! ## A293461.P2408625841273470035

`and(A000032(A294212(n)), A143841(n))`
-/

namespace A293461.P2408625841273470035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (A294212 n).toNat) (A143841 n)

end

end A293461.P2408625841273470035

/-! ## A293461.P8091560754160693999

`and(A048680(A156582(n)), A247506(n))`
-/

namespace A293461.P8091560754160693999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048680 (A156582 n).toNat) (A247506 n)

end

end A293461.P8091560754160693999

/-! ## A293461.P2480057955626535371

`and(A000032(A294212(n)), A247506(n))`
-/

namespace A293461.P2480057955626535371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000032 (A294212 n).toNat) (A247506 n)

end

end A293461.P2480057955626535371

/-!
# A293463: Expansion of Product_{m>0} (1 + x^(2*m-1) + 2*x^(4*m-2) + 3*x^(6*m-3)).

The programs for A293463, there is no canonical definition to state claims against.
-/

/-! ## A293463.P15088466432365715913

`A293461(∑[n+4]+2)`
-/

namespace A293463.P15088466432365715913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293463.P15088466432365715913

/-! ## A293463.P12215131222434552830

`or(char[1], A293461(A056000(n)+6))`
-/

namespace A293463.P12215131222434552830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293461 (A056000 n + 6).toNat)

end

end A293463.P12215131222434552830

/-! ## A293463.P14367572297251659453

`A293461(A056000(n)+6)%A017343(n)`
-/

namespace A293463.P14367572297251659453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293461 (A056000 n + 6).toNat) (A017343 n)

end

end A293463.P14367572297251659453

/-! ## A293463.P5404945607584194302

`gcd(A000038(n), A293461(A056000(n)+6))`
-/

namespace A293463.P5404945607584194302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293461 (A056000 n + 6).toNat)

end

end A293463.P5404945607584194302

/-! ## A293463.P4530266435353762003

`lcm(A033999(n), A293461(A056000(n)+6))`
-/

namespace A293463.P4530266435353762003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A293461 (A056000 n + 6).toNat)

end

end A293463.P4530266435353762003

/-! ## A293463.P7075190877941803161

`char[A061579(n)]*A293461(A056000(n)+6)`
-/

namespace A293463.P7075190877941803161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293461 (A056000 n + 6).toNat

end

end A293463.P7075190877941803161

/-! ## A293463.P12061476736130931159

`char[A222226(n)]*A293461(A056000(n)+6)`
-/

namespace A293463.P12061476736130931159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A293461 (A056000 n + 6).toNat

end

end A293463.P12061476736130931159

/-! ## A293463.P5894833645204074121

`A057427(n+1)*A293461(A056000(n)+6)`
-/

namespace A293463.P5894833645204074121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A293461 (A056000 n + 6).toNat

end

end A293463.P5894833645204074121

/-! ## A293463.P7646376405390066747

`A007318(C(2, n))*A293461(A056000(n)+6)`
-/

namespace A293463.P7646376405390066747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A293461 (A056000 n + 6).toNat

end

end A293463.P7646376405390066747

/-! ## A293463.P14875001523830595613

`A000041(and(1, -n))*A293461(A056000(n)+6)`
-/

namespace A293463.P14875001523830595613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A293461 (A056000 n + 6).toNat

end

end A293463.P14875001523830595613

/-! ## A293463.P10801683806720593236

`A007318(and(2, -n))*A293461(A056000(n)+6)`
-/

namespace A293463.P10801683806720593236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A293461 (A056000 n + 6).toNat

end

end A293463.P10801683806720593236

/-! ## A293463.P17149543346627472386

`A293461(A056000(n)+6)+A232342(n+1)%2`
-/

namespace A293463.P17149543346627472386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (A056000 n + 6).toNat + Int.tmod (A232342 (n + 1)) 2

end

end A293463.P17149543346627472386

/-! ## A293463.P8696341403585045671

`A014963(8*n+6)*A293461(A056000(n)+6)`
-/

namespace A293463.P8696341403585045671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A293461 (A056000 n + 6).toNat

end

end A293463.P8696341403585045671

/-! ## A293463.P5427413772771932115

`A000041(C(2, n+2))*A293461(A056000(n)+6)`
-/

namespace A293463.P5427413772771932115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A293461 (A056000 n + 6).toNat

end

end A293463.P5427413772771932115

/-! ## A293463.P1100637538291096934

`A000040(n+7)%2*A293461(A056000(n)+6)`
-/

namespace A293463.P1100637538291096934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 7)) 2 * A293461 (A056000 n + 6).toNat

end

end A293463.P1100637538291096934

/-! ## A293463.P12177736419282997207

`A293461(A056000(n)+6)^(A000040(n+1)%2)`
-/

namespace A293463.P12177736419282997207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293461 (A056000 n + 6).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A293463.P12177736419282997207

/-! ## A293463.P17481004466396667697

`A000041(gcd(n, n+1))*A293461(A056000(n)+6)`
-/

namespace A293463.P17481004466396667697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A293461 (A056000 n + 6).toNat

end

end A293463.P17481004466396667697

/-! ## A293463.P314845008811999808

`A293461(A056000(n)+6)^(comp[A018252(n+1)]%2)`
-/

namespace A293463.P314845008811999808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (A056000 n + 6).toNat ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2)

end

end A293463.P314845008811999808

/-! ## A293463.P13646616674391516766

`A007318(A057944(n))*A293461(A056000(n)+6)`
-/

namespace A293463.P13646616674391516766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * A293461 (A056000 n + 6).toNat

end

end A293463.P13646616674391516766

/-! ## A293463.P9875051031173457190

`A293461(A167499(n)+A008486(n))%A022410(n)`
-/

namespace A293463.P9875051031173457190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293461 (A167499 n + A008486 n).toNat) (A022410 n)

end

end A293463.P9875051031173457190

/-!
# A293464: a(n) = Sum_{k=0..n} (-1)^k * 2^k * p(k), where p(k) is the partition function A000041.

The programs for A293464, there is no canonical definition to state claims against.
-/

/-! ## A293464.P1202832852841976839

`∑[(-2)^n*A000041(n)]`
-/

namespace A293464.P1202832852841976839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P1202832852841976839

/-! ## A293464.P9862624733024216905

`∑[(-2)^n*record[A035377(n+1)]]+1`
-/

namespace A293464.P9862624733024216905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A293464.P9862624733024216905

/-! ## A293464.P11873974757123528381

`∑[A000041(n)*A122803(n)]`
-/

namespace A293464.P11873974757123528381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P11873974757123528381

/-! ## A293464.P14901710371656005319

`∑[A033999(n)*A327550(n)]`
-/

namespace A293464.P14901710371656005319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A327550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P14901710371656005319

/-! ## A293464.P5713967676712980010

`∑[∑[A002865(n)]*A122803(n)]`
-/

namespace A293464.P5713967676712980010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P5713967676712980010

/-! ## A293464.P13124040515715706789

`∑[A000041(n)*A123344(n+1)]`
-/

namespace A293464.P13124040515715706789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A123344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P13124040515715706789

/-! ## A293464.P12898088297022204632

`∑[A000041(n)*A077966(2*n)]`
-/

namespace A293464.P12898088297022204632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A077966 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P12898088297022204632

/-! ## A293464.P14951855815297199838

`∑[A122803(n)*A194543(∑[n])]`
-/

namespace A293464.P14951855815297199838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A194543 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293464.P14951855815297199838

/-!
# A293465: a(n) = Sum_{k=0..n} (-1)^k * 2^k * q(k), where q(k) is A000009 (partitions into distinct parts).

The programs for A293465, there is no canonical definition to state claims against.
-/

/-! ## A293465.P13289316298001653555

`∑[2^n*A081360(n)]`
-/

namespace A293465.P13289316298001653555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293465.P13289316298001653555

/-! ## A293465.P14670198698378920619

`∑[(-2)^n*A000009(n)]`
-/

namespace A293465.P14670198698378920619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293465.P14670198698378920619

/-! ## A293465.P1313253603664157023

`∑[A000009(n)*A122803(n)]`
-/

namespace A293465.P1313253603664157023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293465.P1313253603664157023

/-! ## A293465.P977417528349760976

`∑[A000009(n)*A123344(n+1)]`
-/

namespace A293465.P977417528349760976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A123344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293465.P977417528349760976

/-! ## A293465.P13087942393928223074

`a(A023443(n))+2^n*A081360(n)` with `a(0)=1`
-/

namespace A293465.P13087942393928223074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat + (2 ^ n : ℤ) * A081360 n

end

end A293465.P13087942393928223074

/-! ## A293465.P17884196443042880569

`a(n-1)+A011782(n+1)*A081360(n)` with `a(0)=1`
-/

namespace A293465.P17884196443042880569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A011782 (n + 1) * A081360 n

end

end A293465.P17884196443042880569

/-!
# A293466: a(n) = Sum_{k=0..n} 2^k * q(k), where q(k) is A000009 (partitions into distinct parts).

The programs for A293466, there is no canonical definition to state claims against.
-/

/-! ## A293466.P1412470479251938216

`∑[2^n*A000009(n)]`
-/

namespace A293466.P1412470479251938216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293466.P1412470479251938216

/-! ## A293466.P4304410777119047812

`∑[(-2)^n*A081360(n)]`
-/

namespace A293466.P4304410777119047812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293466.P4304410777119047812

/-! ## A293466.P12213856114285672341

`∑[sqrt(A304990(n))*2^n]`
-/

namespace A293466.P12213856114285672341
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A304990 n : ℝ) * (2 ^ n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293466.P12213856114285672341

/-! ## A293466.P18194450354551243869

`∑[2^n*A054242(∑[n])]`
-/

namespace A293466.P18194450354551243869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054242 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293466.P18194450354551243869

/-! ## A293466.P7344487621360976570

`∑[2^n*∑[A087897(n)]]`
-/

namespace A293466.P7344487621360976570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293466.P7344487621360976570

/-!
# A293467: a(n) = Sum_{k=0..n} (-1)^k * binomial(n, k) * q(k), where q(k) is A000009 (partitions into distinct parts).

The programs for A293467, there is no canonical definition to state claims against.
-/

/-! ## A293467.P2868556551848071110

`∑[A033999(n)*A320591(n)]`
-/

namespace A293467.P2868556551848071110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A320591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293467.P2868556551848071110

/-! ## A293467.P13945841067137822115

`∑[A056594(2*n)*A320591(n)]`
-/

namespace A293467.P13945841067137822115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A320591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293467.P13945841067137822115

/-! ## A293467.P108838984531357937

`∑[A034947(2*n+1)*A320591(n)]`
-/

namespace A293467.P108838984531357937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A320591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293467.P108838984531357937

/-! ## A293467.P9078479651566959776

`∑[A320591(n)/A034947(n+n+1)]`
-/

namespace A293467.P9078479651566959776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320591 n : ℚ) / (A034947 (n + n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293467.P9078479651566959776

/-! ## A293467.P1246631305053340475

`∑[A280193(Δ[n²])^n*A320591(n)]`
-/

namespace A293467.P1246631305053340475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ n * A320591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293467.P1246631305053340475

/-! ## A293467.P3507743576493875368

`∑[A008836(A276391(n+1))*A320591(n)]`
-/

namespace A293467.P3507743576493875368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A276391 (n + 1)).toNat * A320591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293467.P3507743576493875368

/-!
# A293468: a(n) = Sum_{k=0..n} k!*binomial(2*n-k, n).

The programs for A293468, there is no canonical definition to state claims against.
-/

/-! ## A293468.P13208072261431797552

`A361042(∑[4*n])`
-/

namespace A293468.P13208072261431797552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293468.P13208072261431797552

/-! ## A293468.P14869098449650441380

`record[A361024(2*n+1)*A361042(n)]`
-/

namespace A293468.P14869098449650441380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (2 * n + 1) * A361042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293468.P14869098449650441380

/-!
# A293469: a(n) = Sum_{k=0..n} (2*k-1)!!*binomial(2*n-k, n).

The programs for A293469, there is no canonical definition to state claims against.
-/

/-! ## A293469.P5661464522688646985

`A140199(A305823(n+1))`
-/

namespace A293469.P5661464522688646985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A305823 (n + 1)).toNat

end

end A293469.P5661464522688646985

/-!
# A293470: a(n) = [x^n] (1/(1 - x/(1 - 2*x/(1 - 3*x/(1 - 4*x/(1 - 5*x/(1 - 6*x/(1 - ...))))))))^n, a continued fraction.

The programs for A293470, there is no canonical definition to state claims against.
-/

/-! ## A293470.P8068924729574138573

`A111106(∑[4*n])`
-/

namespace A293470.P8068924729574138573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293470.P8068924729574138573

/-! ## A293470.P14223266329988893544

`lcm(A111106(A106232(n+1)), A130151(n))`
-/

namespace A293470.P14223266329988893544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111106 (A106232 (n + 1)).toNat) (A130151 n)

end

end A293470.P14223266329988893544

/-! ## A293470.P4869895532168850035

`A111106(A106232(n+1))+A000007(n+2)`
-/

namespace A293470.P4869895532168850035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111106 (A106232 (n + 1)).toNat + A000007 (n + 2)

end

end A293470.P4869895532168850035

/-! ## A293470.P15781010097384150031

`gcd(A000038(n), A111106(A007590(2*n+1)))`
-/

namespace A293470.P15781010097384150031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111106 (A007590 (2 * n + 1)).toNat)

end

end A293470.P15781010097384150031

/-! ## A293470.P8575412061172013463

`A111106(A007590(2*n+1))+A000038(n+1)`
-/

namespace A293470.P8575412061172013463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111106 (A007590 (2 * n + 1)).toNat + A000038 (n + 1)

end

end A293470.P8575412061172013463

/-!
# A293471: a(n) = [x^n] (1/(1 - 2*x/(1 - 2*x/(1 - 4*x/(1 - 4*x/(1 - 6*x/(1 - 6*x/(1 - ...))))))))^n, a continued fraction.

The programs for A293471, there is no canonical definition to state claims against.
-/

/-! ## A293471.P13503199404904855287

`2^n*A287899(n)`
-/

namespace A293471.P13503199404904855287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A287899 n

end

end A293471.P13503199404904855287

/-! ## A293471.P10564761537844498540

`lcm(A000079(n), A287899(n))`
-/

namespace A293471.P10564761537844498540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A287899 n)

end

end A293471.P10564761537844498540

/-! ## A293471.P11139979537894666711

`A000079(n)*A084938(∑[4*n])`
-/

namespace A293471.P11139979537894666711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A084938 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293471.P11139979537894666711

/-! ## A293471.P8329729644499186055

`Δ[A000225(n)]*A084938(∑[4*n])`
-/

namespace A293471.P8329729644499186055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084938 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A293471.P8329729644499186055

/-! ## A293471.P13310856079353100338

`Δ[A036563(n)]*A084938(∑[4*n])`
-/

namespace A293471.P13310856079353100338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084938 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A293471.P13310856079353100338

/-!
# A293472: Triangle read by rows, coefficients of polynomials in t = log(x) of the n-th derivative of x^x, evaluated at x = 1. T(n, k) with n >= 0 and 0 <= k <= n.

The programs for A293472, there is no canonical definition to state claims against.
-/

/-! ## A293472.P5348501357455335303

`A007318(n)*A005727(A025581(n))`
-/

namespace A293472.P5348501357455335303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005727 (A025581 n).toNat

end

end A293472.P5348501357455335303

/-! ## A293472.P12990801470223203651

`Δ[A102363(n)]*A005727(A025581(n))`
-/

namespace A293472.P12990801470223203651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005727 (A025581 n).toNat

end

end A293472.P12990801470223203651

/-! ## A293472.P972163790518265516

`A005727(A025581(n))/2*A028326(n)`
-/

namespace A293472.P972163790518265516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005727 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A293472.P972163790518265516

/-! ## A293472.P960561580148393510

`A005727(A025581(n))*A097805(A014132(n+1))`
-/

namespace A293472.P960561580148393510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005727 (A025581 n).toNat * A097805 (A014132 (n + 1)).toNat

end

end A293472.P960561580148393510

/-! ## A293472.P5115704557203437127

`A319995(A282453(n))+A107230(n)`
-/

namespace A293472.P5115704557203437127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A282453 n).toNat + A107230 n

end

end A293472.P5115704557203437127

/-!
# A293475: a(n) = (3*n + 4)*Pochhammer(n, 4) / 4!.

The programs for A293475, the canonical program `A293475.P2408118490500465292` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293475 has offset 0).

The definition of A293475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293475.P2408118490500465292

`n*(24+62*n+57*n²+22*n^3+3*n^4)/24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293475

/-- `n*(24+62*n+57*n²+22*n^3+3*n^4)/24` -/
def P2408118490500465292.Spec : Prop :=
  ∀ n, P2408118490500465292.a n = (A293475 n : ℚ)

end A293475

/-! ## A293475.P7509091827625198333

`∑[∑[∑[A022272(n)]]]`
-/

namespace A293475.P7509091827625198333
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P7509091827625198333

namespace A293475

/-- `∑[∑[∑[A022272(n)]]]` -/
def P7509091827625198333.Spec : Prop :=
  ∀ n, P7509091827625198333.a n = A293475 n

end A293475

/-! ## A293475.P5603304094502273658

`∑[∑[∑[A022273(n)-n]]]`
-/

namespace A293475.P5603304094502273658
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P5603304094502273658

namespace A293475

/-- `∑[∑[∑[A022273(n)-n]]]` -/
def P5603304094502273658.Spec : Prop :=
  ∀ n, P5603304094502273658.a n = A293475 n

end A293475

/-! ## A293475.P11508421208086852581

`∑[∑[n*∑[A016861(n)]]]`
-/

namespace A293475.P11508421208086852581
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P11508421208086852581

namespace A293475

/-- `∑[∑[n*∑[A016861(n)]]]` -/
def P11508421208086852581.Spec : Prop :=
  ∀ n, P11508421208086852581.a n = A293475 n

end A293475

/-! ## A293475.P5347376126992179723

`∑[∑[∑[n]*A016873(n)]]`
-/

namespace A293475.P5347376126992179723
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A016873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P5347376126992179723

namespace A293475

/-- `∑[∑[∑[n]*A016873(n)]]` -/
def P5347376126992179723.Spec : Prop :=
  ∀ n, P5347376126992179723.a n = A293475 n

end A293475

/-! ## A293475.P16515846844845707005

`n/(n+1)*A108650(n)`
-/

namespace A293475.P16515846844845707005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A108650 n : ℚ)

end

end A293475.P16515846844845707005

namespace A293475

/-- `n/(n+1)*A108650(n)` -/
def P16515846844845707005.Spec : Prop :=
  ∀ n, P16515846844845707005.a n = (A293475 n : ℚ)

end A293475

/-! ## A293475.P5882204093206483377

`∑[∑[n*A000566(n+1)]]`
-/

namespace A293475.P5882204093206483377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000566 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P5882204093206483377

namespace A293475

/-- `∑[∑[n*A000566(n+1)]]` -/
def P5882204093206483377.Spec : Prop :=
  ∀ n, P5882204093206483377.a n = A293475 n

end A293475

/-! ## A293475.P13367705226248361313

`∑[∑[n*∑[A016921(n)-n]]]`
-/

namespace A293475.P13367705226248361313
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P13367705226248361313

namespace A293475

/-- `∑[∑[n*∑[A016921(n)-n]]]` -/
def P13367705226248361313.Spec : Prop :=
  ∀ n, P13367705226248361313.a n = A293475 n

end A293475

/-! ## A293475.P6754785272499829635

`A151974(n)-A162668(n)`
-/

namespace A293475.P6754785272499829635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n - A162668 n

end

end A293475.P6754785272499829635

namespace A293475

/-- `A151974(n)-A162668(n)` -/
def P6754785272499829635.Spec : Prop :=
  ∀ n, P6754785272499829635.a n = A293475 n

end A293475

/-! ## A293475.P18408630758407963517

`A271870(n)-A257199(n+1)`
-/

namespace A293475.P18408630758407963517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n - A257199 (n + 1)

end

end A293475.P18408630758407963517

namespace A293475

/-- `A271870(n)-A257199(n+1)` -/
def P18408630758407963517.Spec : Prop :=
  ∀ n, P18408630758407963517.a n = A293475 n

end A293475

/-! ## A293475.P16266997141436942995

`A027480(n)+n*A215862(n)`
-/

namespace A293475.P16266997141436942995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + (n : ℤ) * A215862 n

end

end A293475.P16266997141436942995

namespace A293475

/-- `A027480(n)+n*A215862(n)` -/
def P16266997141436942995.Spec : Prop :=
  ∀ n, P16266997141436942995.a n = A293475 n

end A293475

/-! ## A293475.P8485065200001211575

`∑[∑[(A016885(n)-1)*A000217(n)]]`
-/

namespace A293475.P8485065200001211575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n - 1) * A000217 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293475.P8485065200001211575

namespace A293475

/-- `∑[∑[(A016885(n)-1)*A000217(n)]]` -/
def P8485065200001211575.Spec : Prop :=
  ∀ n, P8485065200001211575.a n = A293475 n

end A293475

/-! ## A293475.P8266529119921462405

`A051836(n)+A271567(n)-A051740(n)`
-/

namespace A293475.P8266529119921462405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n + (A271567 n - A051740 n)

end

end A293475.P8266529119921462405

namespace A293475

/-- `A051836(n)+A271567(n)-A051740(n)` -/
def P8266529119921462405.Spec : Prop :=
  ∀ n, P8266529119921462405.a n = A293475 n

end A293475

/-! ## A293475.P4619067766988957639

`n*Δ[A051836(n)]`
-/

namespace A293475.P4619067766988957639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A293475.P4619067766988957639

namespace A293475

/-- `n*Δ[A051836(n)]` -/
def P4619067766988957639.Spec : Prop :=
  ∀ n, P4619067766988957639.a n = A293475 n

end A293475

/-! ## A293475.P16692493265877768871

`n*A001296(n+1)`
-/

namespace A293475.P16692493265877768871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001296 (n + 1)

end

end A293475.P16692493265877768871

namespace A293475

/-- `n*A001296(n+1)` -/
def P16692493265877768871.Spec : Prop :=
  ∀ n, P16692493265877768871.a n = A293475 n

end A293475

/-! ## A293475.P18284415197628198464

`n*∑[A002411(n+1)]`
-/

namespace A293475.P18284415197628198464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293475.P18284415197628198464

namespace A293475

/-- `n*∑[A002411(n+1)]` -/
def P18284415197628198464.Spec : Prop :=
  ∀ n, P18284415197628198464.a n = A293475 n

end A293475

/-! ## A293475.P15302110494998733674

`A108650(n)-A001296(n+1)`
-/

namespace A293475.P15302110494998733674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n - A001296 (n + 1)

end

end A293475.P15302110494998733674

namespace A293475

/-- `A108650(n)-A001296(n+1)` -/
def P15302110494998733674.Spec : Prop :=
  ∀ n, P15302110494998733674.a n = A293475 n

end A293475

/-! ## A293475.P5005809649882391814

`A112851(n+1)+A112851(n+1)+A051836(n)`
-/

namespace A293475.P5005809649882391814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + (A112851 (n + 1) + A051836 n)

end

end A293475.P5005809649882391814

namespace A293475

/-- `A112851(n+1)+A112851(n+1)+A051836(n)` -/
def P5005809649882391814.Spec : Prop :=
  ∀ n, P5005809649882391814.a n = A293475 n

end A293475

/-! ## A293475.P5656632663698845523

`A001297(n+1)-(A001297(n)+A001296(n+1))`
-/

namespace A293475.P5656632663698845523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 (n + 1) - (A001297 n + A001296 (n + 1))

end

end A293475.P5656632663698845523

namespace A293475

/-- `A001297(n+1)-(A001297(n)+A001296(n+1))` -/
def P5656632663698845523.Spec : Prop :=
  ∀ n, P5656632663698845523.a n = A293475 n

end A293475

/-! ## A293475.P8649590405801236169

`A002417(n+1)+A151974(n)-A220212(n+1)`
-/

namespace A293475.P8649590405801236169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + (A151974 n - A220212 (n + 1))

end

end A293475.P8649590405801236169

namespace A293475

/-- `A002417(n+1)+A151974(n)-A220212(n+1)` -/
def P8649590405801236169.Spec : Prop :=
  ∀ n, P8649590405801236169.a n = A293475 n

end A293475

/-!
# A293476: a(n) = ((n + 1)/2)*(n + 2)*Pochhammer(n, 5) / 4!.

The programs for A293476, the canonical program `A293476.P2081506014407810362` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293476 has offset 0).

The definition of A293476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293476.P2081506014407810362

`1/48*n*(2+3*n+n²)²*(12+7*n+n²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293476

/-- `1/48*n*(2+3*n+n²)²*(12+7*n+n²)` -/
def P2081506014407810362.Spec : Prop :=
  ∀ n, P2081506014407810362.a n = (A293476 n : ℚ)

end A293476

/-! ## A293476.P7212763034568406457

`n*(∑[A108650(n)]+1)-n`
-/

namespace A293476.P7212763034568406457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)

end

end A293476.P7212763034568406457

namespace A293476

/-- `n*(∑[A108650(n)]+1)-n` -/
def P7212763034568406457.Spec : Prop :=
  ∀ n, P7212763034568406457.a n = A293476 n

end A293476

/-! ## A293476.P6884628021364255416

`n*A259455(n+1)/(n+1)`
-/

namespace A293476.P6884628021364255416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A259455 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A293476.P6884628021364255416

namespace A293476

/-- `n*A259455(n+1)/(n+1)` -/
def P6884628021364255416.Spec : Prop :=
  ∀ n, P6884628021364255416.a n = (A293476 n : ℚ)

end A293476

/-! ## A293476.P13346458475958955929

`Δ[A001298(n)]-A001297(n+1)`
-/

namespace A293476.P13346458475958955929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001297 (n + 1)

end

end A293476.P13346458475958955929

namespace A293476

/-- `Δ[A001298(n)]-A001297(n+1)` -/
def P13346458475958955929.Spec : Prop :=
  ∀ n, P13346458475958955929.a n = A293476 n

end A293476

/-! ## A293476.P116261565874196263

`A259455(n+1)-A001297(n+1)`
-/

namespace A293476.P116261565874196263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259455 (n + 1) - A001297 (n + 1)

end

end A293476.P116261565874196263

namespace A293476

/-- `A259455(n+1)-A001297(n+1)` -/
def P116261565874196263.Spec : Prop :=
  ∀ n, P116261565874196263.a n = A293476 n

end A293476

/-! ## A293476.P6262853264502255168

`Δ[A001298(n)-A001297(n)]-A001297(n)`
-/

namespace A293476.P6262853264502255168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 n - A001297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001297 n

end

end A293476.P6262853264502255168

namespace A293476

/-- `Δ[A001298(n)-A001297(n)]-A001297(n)` -/
def P6262853264502255168.Spec : Prop :=
  ∀ n, P6262853264502255168.a n = A293476 n

end A293476

/-! ## A293476.P12418098949234685035

`A001298(n+1)-(A001298(n)+A001297(n+1))`
-/

namespace A293476.P12418098949234685035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 (n + 1) - (A001298 n + A001297 (n + 1))

end

end A293476.P12418098949234685035

namespace A293476

/-- `A001298(n+1)-(A001298(n)+A001297(n+1))` -/
def P12418098949234685035.Spec : Prop :=
  ∀ n, P12418098949234685035.a n = A293476 n

end A293476

/-! ## A293476.P738924656526497036

`n*A005461(n+1)/A000142(n)`
-/

namespace A293476.P738924656526497036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A005461 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A293476.P738924656526497036

namespace A293476

/-- `n*A005461(n+1)/A000142(n)` -/
def P738924656526497036.Spec : Prop :=
  ∀ n, P738924656526497036.a n = (A293476 n : ℚ)

end A293476

/-! ## A293476.P7471674448877461380

`n*A037961(n+1)/A000142(n+1)`
-/

namespace A293476.P7471674448877461380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A037961 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A293476.P7471674448877461380

namespace A293476

/-- `n*A037961(n+1)/A000142(n+1)` -/
def P7471674448877461380.Spec : Prop :=
  ∀ n, P7471674448877461380.a n = (A293476 n : ℚ)

end A293476

/-!
# A293481: Numbers with last digit greater than or equal to 5 (in base 10).

The programs for A293481, the canonical program `A293481.P13769957900219439246` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293481 has offset 1).

The definition of A293481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293481.P13769957900219439246

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=5, a(1)=6, a(2)=7, a(3)=8, a(4)=9, a(5)=15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293481

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P13769957900219439246.Spec : Prop :=
  ∀ n, P13769957900219439246.a n = A293481 (n + 1)

theorem P13769957900219439246.correct : P13769957900219439246.Spec := by
  intro n
  simp only [A293481, Nat.add_sub_cancel]

end A293481

/-! ## A293481.P16566043264030433058

`A293292(n+1)+5`
-/

namespace A293481.P16566043264030433058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1) + 5

end

end A293481.P16566043264030433058

namespace A293481

/-- `A293292(n+1)+5` -/
def P16566043264030433058.Spec : Prop :=
  ∀ n, P16566043264030433058.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P3202215929477868678

`comp[2*n-n%5]`
-/

namespace A293481.P3202215929477868678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A293481.P3202215929477868678

namespace A293481

/-- `comp[2*n-n%5]` -/
def P3202215929477868678.Spec : Prop :=
  ∀ n, (P3202215929477868678.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P7841887705452811426

`comp[5*floor(n/5)+n]`
-/

namespace A293481.P7841887705452811426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(n : ℚ) / 5⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A293481.P7841887705452811426

namespace A293481

/-- `comp[5*floor(n/5)+n]` -/
def P7841887705452811426.Spec : Prop :=
  ∀ n, (P7841887705452811426.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P18045673419007572570

`lt[(n+5)%10-5+n, n]`
-/

namespace A293481.P18045673419007572570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 5) % 10 : ℕ) : ℤ) - 5 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293481.P18045673419007572570

namespace A293481

/-- `lt[(n+5)%10-5+n, n]` -/
def P18045673419007572570.Spec : Prop :=
  ∀ n, (P18045673419007572570.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P3280786365408208729

`∑[floor(a(n-5))]` with `a(0)=5, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A293481.P3280786365408208729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 1, 1, 1, 6] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293481.P3280786365408208729

namespace A293481

/-- `∑[floor(a(n-5))]` -/
def P3280786365408208729.Spec : Prop :=
  ∀ n, (P3280786365408208729.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P7978450253743620112

`comp[Δ[n²]-(n+1)%5]+1`
-/

namespace A293481.P7978450253743620112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (((n + 1) % 5 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A293481.P7978450253743620112

namespace A293481

/-- `comp[Δ[n²]-(n+1)%5]+1` -/
def P7978450253743620112.Spec : Prop :=
  ∀ n, (P7978450253743620112.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P17179834290730515039

`∑[A010122(n)]+2`
-/

namespace A293481.P17179834290730515039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A293481.P17179834290730515039

namespace A293481

/-- `∑[A010122(n)]+2` -/
def P17179834290730515039.Spec : Prop :=
  ∀ n, P17179834290730515039.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P9178844863617275493

`comp[A235499(n)]+1`
-/

namespace A293481.P9178844863617275493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A293481.P9178844863617275493

namespace A293481

/-- `comp[A235499(n)]+1` -/
def P9178844863617275493.Spec : Prop :=
  ∀ n, (P9178844863617275493.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P11887648470545301360

`∑[ceil(sqrt(A040327(n)))]`
-/

namespace A293481.P11887648470545301360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A040327 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293481.P11887648470545301360

namespace A293481

/-- `∑[ceil(sqrt(A040327(n)))]` -/
def P11887648470545301360.Spec : Prop :=
  ∀ n, P11887648470545301360.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P2822206235367684800

`A192333(n+1)+5-n`
-/

namespace A293481.P2822206235367684800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1) + (5 - (n : ℤ))

end

end A293481.P2822206235367684800

namespace A293481

/-- `A192333(n+1)+5-n` -/
def P2822206235367684800.Spec : Prop :=
  ∀ n, P2822206235367684800.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P16360872215825842596

`eq[2, A020639(ceil((n+1)/5))]`
-/

namespace A293481.P16360872215825842596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(n + 1 : ℚ) / 5⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293481.P16360872215825842596

namespace A293481

/-- `eq[2, A020639(ceil((n+1)/5))]` -/
def P16360872215825842596.Spec : Prop :=
  ∀ n, (P16360872215825842596.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P4179520790423956466

`lt[2, A020639(floor(n/5)+2)]`
-/

namespace A293481.P4179520790423956466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(n : ℚ) / 5⌋ + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293481.P4179520790423956466

namespace A293481

/-- `lt[2, A020639(floor(n/5)+2)]` -/
def P4179520790423956466.Spec : Prop :=
  ∀ n, (P4179520790423956466.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P13851658200213408381

`A020739(n)-A010884(n)`
-/

namespace A293481.P13851658200213408381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n - A010884 n

end

end A293481.P13851658200213408381

namespace A293481

/-- `A020739(n)-A010884(n)` -/
def P13851658200213408381.Spec : Prop :=
  ∀ n, P13851658200213408381.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P14452542333080486503

`A020735(n+1)-A010874(n)`
-/

namespace A293481.P14452542333080486503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1) - A010874 n

end

end A293481.P14452542333080486503

namespace A293481

/-- `A020735(n+1)-A010874(n)` -/
def P14452542333080486503.Spec : Prop :=
  ∀ n, P14452542333080486503.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P4819904131582077777

`A140058(n+1)+A023462(n)-n`
-/

namespace A293481.P4819904131582077777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140058 (n + 1) + (A023462 n - (n : ℤ))

end

end A293481.P4819904131582077777

namespace A293481

/-- `A140058(n+1)+A023462(n)-n` -/
def P4819904131582077777.Spec : Prop :=
  ∀ n, P4819904131582077777.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P9518463937908438141

`A065187(n+1)+A065187(n+2)`
-/

namespace A293481.P9518463937908438141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (n + 1) + A065187 (n + 2)

end

end A293481.P9518463937908438141

namespace A293481

/-- `A065187(n+1)+A065187(n+2)` -/
def P9518463937908438141.Spec : Prop :=
  ∀ n, P9518463937908438141.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P11022808810943021023

`A237415(n+3)-3`
-/

namespace A293481.P11022808810943021023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 (n + 3) - 3

end

end A293481.P11022808810943021023

namespace A293481

/-- `A237415(n+3)-3` -/
def P11022808810943021023.Spec : Prop :=
  ∀ n, P11022808810943021023.a n = A293481 (n + 1)

end A293481

/-! ## A293481.P2070008121370543695

`lt[5, A274206(n+1)]`
-/

namespace A293481.P2070008121370543695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293481.P2070008121370543695

namespace A293481

/-- `lt[5, A274206(n+1)]` -/
def P2070008121370543695.Spec : Prop :=
  ∀ n, (P2070008121370543695.a n : ℤ) = A293481 (n + 1)

end A293481

/-! ## A293481.P5300698878697147715

`A065187(2*(n+1))+1`
-/

namespace A293481.P5300698878697147715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (2 * (n + 1)) + 1

end

end A293481.P5300698878697147715

namespace A293481

/-- `A065187(2*(n+1))+1` -/
def P5300698878697147715.Spec : Prop :=
  ∀ n, P5300698878697147715.a n = A293481 (n + 1)

end A293481

/-!
# A293482: The number of 5th powers in the multiplicative group modulo n.

The programs for A293482, there is no canonical definition to state claims against.
-/

/-! ## A293482.P5388788322477578988

`Δ[A002088(n)]/A319099(n+1)`
-/

namespace A293482.P5388788322477578988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A319099 (n + 1) : ℚ)

end

end A293482.P5388788322477578988

/-! ## A293482.P17239858874335228310

`A000010(n+1)/A319099(n+1)`
-/

namespace A293482.P17239858874335228310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A319099 (n + 1) : ℚ)

end

end A293482.P17239858874335228310

/-! ## A293482.P10893730650955306068

`A247257(n+1)*A293485(n+1)/A319099(n+1)`
-/

namespace A293482.P10893730650955306068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) * A293485 (n + 1) : ℚ) / (A319099 (n + 1) : ℚ)

end

end A293482.P10893730650955306068

/-! ## A293482.P7613132407520970793

`A293483(n+1)/A319099(n+1)*A319100(n+1)`
-/

namespace A293482.P7613132407520970793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A319099 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A293482.P7613132407520970793

/-! ## A293482.P17559769616338399330

`A293484(n+1)/A319099(n+1)*A319101(n+1)`
-/

namespace A293482.P17559769616338399330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A319099 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A293482.P17559769616338399330

/-! ## A293482.P10442732972206057781

`A106621(Δ[A016825(A002088(n))])`
-/

namespace A293482.P10442732972206057781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A002088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (f1 (n + 1) - f1 n).toNat

end

end A293482.P10442732972206057781

/-! ## A293482.P2102027301545612647

`A106616(Δ[A008486(A049643(n))])`
-/

namespace A293482.P2102027301545612647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A049643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (f1 (n + 1) - f1 n).toNat

end

end A293482.P2102027301545612647

/-! ## A293482.P99373501227321789

`A106616(3*A054522(∑[n+1]))`
-/

namespace A293482.P99373501227321789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (3 * A054522 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A293482.P99373501227321789

/-! ## A293482.P7870700943338518990

`A060791(A000010(n+1)²)/A000010(n+1)`
-/

namespace A293482.P7870700943338518990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060791 (A000010 (n + 1) ^ 2).toNat : ℚ) / (A000010 (n + 1) : ℚ)

end

end A293482.P7870700943338518990

/-! ## A293482.P1150799639554382580

`A000010(n+1)/A109009(A000010(n+1)²)`
-/

namespace A293482.P1150799639554382580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A109009 (A000010 (n + 1) ^ 2).toNat : ℚ)

end

end A293482.P1150799639554382580

/-! ## A293482.P10091411848286294133

`A132739(A000010((n+1)²))/A132739(n+1)`
-/

namespace A293482.P10091411848286294133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132739 (A000010 ((n + 1) ^ 2)).toNat : ℚ) / (A132739 (n + 1) : ℚ)

end

end A293482.P10091411848286294133

/-! ## A293482.P11319726466174725141

`gcd(A000010(n+1), A061043(n*A000010(n+1)+5))`
-/

namespace A293482.P11319726466174725141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A061043 ((n : ℤ) * A000010 (n + 1) + 5).toNat)

end

end A293482.P11319726466174725141

/-!
# A293483: The number of 6th powers in the multiplicative group modulo n.

The programs for A293483, the canonical program `A293483.P17008692828281999765` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293483 has offset 1).

The definition of A293483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293483.P1913873764535134674

`Δ[A002088(n)]/A319100(n+1)`
-/

namespace A293483.P1913873764535134674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P1913873764535134674

namespace A293483

/-- `Δ[A002088(n)]/A319100(n+1)` -/
def P1913873764535134674.Spec : Prop :=
  ∀ n, P1913873764535134674.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P16423234211172095936

`A046073(n+1)/A060839(n+1)`
-/

namespace A293483.P16423234211172095936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

end

end A293483.P16423234211172095936

namespace A293483

/-- `A046073(n+1)/A060839(n+1)` -/
def P16423234211172095936.Spec : Prop :=
  ∀ n, P16423234211172095936.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P17945663645146842783

`A087692(n+1)/A060594(n+1)`
-/

namespace A293483.P17945663645146842783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087692 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A293483.P17945663645146842783

namespace A293483

/-- `A087692(n+1)/A060594(n+1)` -/
def P17945663645146842783.Spec : Prop :=
  ∀ n, P17945663645146842783.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P10170384206522414467

`A000010(n+1)/A319100(n+1)`
-/

namespace A293483.P10170384206522414467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P10170384206522414467

namespace A293483

/-- `A000010(n+1)/A319100(n+1)` -/
def P10170384206522414467.Spec : Prop :=
  ∀ n, P10170384206522414467.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P17008692828281999765

`gcd(A046073(n+1), A087692(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A293483

/-- `gcd(A046073(n+1), A087692(n+1))` -/
def P17008692828281999765.Spec : Prop :=
  ∀ n, (P17008692828281999765.a n : ℤ) = A293483 (n + 1)

theorem P17008692828281999765.correct : P17008692828281999765.Spec := by
  intro n
  simp only [A293483, Nat.add_sub_cancel]

end A293483

/-! ## A293483.P14717824239273049701

`(A109606(n+1)+1)/A319100(n+1)`
-/

namespace A293483.P14717824239273049701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P14717824239273049701

namespace A293483

/-- `(A109606(n+1)+1)/A319100(n+1)` -/
def P14717824239273049701.Spec : Prop :=
  ∀ n, P14717824239273049701.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P4757782047522496468

`(A039649(n+1)-1)/A319100(n+1)`
-/

namespace A293483.P4757782047522496468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P4757782047522496468

namespace A293483

/-- `(A039649(n+1)-1)/A319100(n+1)` -/
def P4757782047522496468.Spec : Prop :=
  ∀ n, P4757782047522496468.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P3295265701712404058

`A124625(A039649(n+1))/A319100(n+1)`
-/

namespace A293483.P3295265701712404058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124625 (A039649 (n + 1)).toNat : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P3295265701712404058

namespace A293483

/-- `A124625(A039649(n+1))/A319100(n+1)` -/
def P3295265701712404058.Spec : Prop :=
  ∀ n, P3295265701712404058.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P18001003908020278

`A000010(n+1)/(A060594(n+1)*A060839(n+1))`
-/

namespace A293483.P18001003908020278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A060594 (n + 1) * A060839 (n + 1) : ℚ)

end

end A293483.P18001003908020278

namespace A293483

/-- `A000010(n+1)/(A060594(n+1)*A060839(n+1))` -/
def P18001003908020278.Spec : Prop :=
  ∀ n, P18001003908020278.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P13286904757967827622

`A046073(n+1)/A000010(n+1)*A087692(n+1)`
-/

namespace A293483.P13286904757967827622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A087692 (n + 1) : ℚ)

end

end A293483.P13286904757967827622

namespace A293483

/-- `A046073(n+1)/A000010(n+1)*A087692(n+1)` -/
def P13286904757967827622.Spec : Prop :=
  ∀ n, P13286904757967827622.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P15231524817042825348

`A060839(n+1)*A087692(n+1)/A319100(n+1)`
-/

namespace A293483.P15231524817042825348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P15231524817042825348

namespace A293483

/-- `A060839(n+1)*A087692(n+1)/A319100(n+1)` -/
def P15231524817042825348.Spec : Prop :=
  ∀ n, P15231524817042825348.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P4850478331152526528

`A073103(n+1)*A250207(n+1)/A319100(n+1)`
-/

namespace A293483.P4850478331152526528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) * A250207 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P4850478331152526528

namespace A293483

/-- `A073103(n+1)*A250207(n+1)/A319100(n+1)` -/
def P4850478331152526528.Spec : Prop :=
  ∀ n, P4850478331152526528.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P17964236961900320758

`A247257(n+1)*A293485(n+1)/A319100(n+1)`
-/

namespace A293483.P17964236961900320758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) * A293485 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P17964236961900320758

namespace A293483

/-- `A247257(n+1)*A293485(n+1)/A319100(n+1)` -/
def P17964236961900320758.Spec : Prop :=
  ∀ n, P17964236961900320758.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P4895114468914246079

`A293482(n+1)*A319099(n+1)/A319100(n+1)`
-/

namespace A293483.P4895114468914246079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) * A319099 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ)

end

end A293483.P4895114468914246079

namespace A293483

/-- `A293482(n+1)*A319099(n+1)/A319100(n+1)` -/
def P4895114468914246079.Spec : Prop :=
  ∀ n, P4895114468914246079.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P13104694055356842519

`A293484(n+1)/A319100(n+1)*A319101(n+1)`
-/

namespace A293483.P13104694055356842519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A293483.P13104694055356842519

namespace A293483

/-- `A293484(n+1)/A319100(n+1)*A319101(n+1)` -/
def P13104694055356842519.Spec : Prop :=
  ∀ n, P13104694055356842519.a n = (A293483 (n + 1) : ℚ)

end A293483

/-! ## A293483.P14704350172783458689

`A046073(n+1)/A319100(n+1)*A322362(A319100(n+1))`
-/

namespace A293483.P14704350172783458689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A319100 (n + 1) : ℚ) * (A322362 (A319100 (n + 1)).toNat : ℚ)

end

end A293483.P14704350172783458689

namespace A293483

/-- `A046073(n+1)/A319100(n+1)*A322362(A319100(n+1))` -/
def P14704350172783458689.Spec : Prop :=
  ∀ n, P14704350172783458689.a n = (A293483 (n + 1) : ℚ)

end A293483

/-!
# A293484: The number of 7th powers in the multiplicative group modulo n.

The programs for A293484, there is no canonical definition to state claims against.
-/

/-! ## A293484.P16479060207268517822

`Δ[A002088(n)]/A319101(n+1)`
-/

namespace A293484.P16479060207268517822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A319101 (n + 1) : ℚ)

end

end A293484.P16479060207268517822

/-! ## A293484.P13827006985282914718

`Δ[A005728(n)]/A319101(n+1)`
-/

namespace A293484.P13827006985282914718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A319101 (n + 1) : ℚ)

end

end A293484.P13827006985282914718

/-! ## A293484.P14996763008593901929

`A000010(n+1)/A319101(n+1)`
-/

namespace A293484.P14996763008593901929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A319101 (n + 1) : ℚ)

end

end A293484.P14996763008593901929

/-! ## A293484.P1371044447143334927

`A060839(n+1)*A087692(n+1)/A319101(n+1)`
-/

namespace A293484.P1371044447143334927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A319101 (n + 1) : ℚ)

end

end A293484.P1371044447143334927

/-! ## A293484.P499246083122152268

`A247257(n+1)*A293485(n+1)/A319101(n+1)`
-/

namespace A293484.P499246083122152268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) * A293485 (n + 1) : ℚ) / (A319101 (n + 1) : ℚ)

end

end A293484.P499246083122152268

/-! ## A293484.P16791509447671401280

`A293482(n+1)*A319099(n+1)/A319101(n+1)`
-/

namespace A293484.P16791509447671401280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) * A319099 (n + 1) : ℚ) / (A319101 (n + 1) : ℚ)

end

end A293484.P16791509447671401280

/-! ## A293484.P16571666137325459559

`A106608(A130207(A000217(n+1)))`
-/

namespace A293484.P16571666137325459559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A130207 (A000217 (n + 1)).toNat).toNat

end

end A293484.P16571666137325459559

/-! ## A293484.P3939000412477616926

`A242603(A002618(n+1))/A242603(n+1)`
-/

namespace A293484.P3939000412477616926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242603 (A002618 (n + 1)).toNat : ℚ) / (A242603 (n + 1) : ℚ)

end

end A293484.P3939000412477616926

/-! ## A293484.P15597181671983367380

`A242603(A000010(n+1)²)/A242603(A000010(n+1))`
-/

namespace A293484.P15597181671983367380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242603 (A000010 (n + 1) ^ 2).toNat : ℚ) / (A242603 (A000010 (n + 1)).toNat : ℚ)

end

end A293484.P15597181671983367380

/-! ## A293484.P18417963769333261189

`A106608(A054532(∑[n+1]))`
-/

namespace A293484.P18417963769333261189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A054532 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A293484.P18417963769333261189

/-! ## A293484.P5187786331503900106

`A106608(A000010(n+1)²)/A000010(n+1)`
-/

namespace A293484.P5187786331503900106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106608 (A000010 (n + 1) ^ 2).toNat : ℚ) / (A000010 (n + 1) : ℚ)

end

end A293484.P5187786331503900106

/-! ## A293484.P3405346250721451091

`A000010(n+1)/A109010(A000010(n+1)²)`
-/

namespace A293484.P3405346250721451091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A109010 (A000010 (n + 1) ^ 2).toNat : ℚ)

end

end A293484.P3405346250721451091

/-!
# A293485: The number of 8th powers in the multiplicative group modulo n.

The programs for A293485, there is no canonical definition to state claims against.
-/

/-! ## A293485.P807040859264223923

`A000010(n+1)/A247257(n+1)`
-/

namespace A293485.P807040859264223923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A247257 (n + 1) : ℚ)

end

end A293485.P807040859264223923

/-! ## A293485.P1205126343967731903

`Δ[A002088(n)]/A247257(n+1)`
-/

namespace A293485.P1205126343967731903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A247257 (n + 1) : ℚ)

end

end A293485.P1205126343967731903

/-! ## A293485.P7982108429919787358

`(A109606(n+1)+1)/A247257(n+1)`
-/

namespace A293485.P7982108429919787358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A247257 (n + 1) : ℚ)

end

end A293485.P7982108429919787358

/-! ## A293485.P17474231435006866123

`A060839(n+1)*A087692(n+1)/A247257(n+1)`
-/

namespace A293485.P17474231435006866123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A247257 (n + 1) : ℚ)

end

end A293485.P17474231435006866123

/-! ## A293485.P11972736528201834968

`A073103(n+1)/A247257(n+1)*A250207(n+1)`
-/

namespace A293485.P11972736528201834968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) : ℚ) / (A247257 (n + 1) : ℚ) * (A250207 (n + 1) : ℚ)

end

end A293485.P11972736528201834968

/-! ## A293485.P3028615250174897807

`A293482(n+1)/A247257(n+1)*A319099(n+1)`
-/

namespace A293485.P3028615250174897807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A247257 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A293485.P3028615250174897807

/-! ## A293485.P14284945711063807618

`A293483(n+1)/A247257(n+1)*A319100(n+1)`
-/

namespace A293485.P14284945711063807618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A247257 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A293485.P14284945711063807618

/-! ## A293485.P4174150707868801222

`A293484(n+1)/A247257(n+1)*A319101(n+1)`
-/

namespace A293485.P4174150707868801222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A247257 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A293485.P4174150707868801222

/-! ## A293485.P16201447001982358700

`A026741(A250207(n+1)²)/A250207(n+1)`
-/

namespace A293485.P16201447001982358700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (A250207 (n + 1) ^ 2).toNat : ℚ) / (A250207 (n + 1) : ℚ)

end

end A293485.P16201447001982358700

/-!
# A293486: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>0} Sum_{j=0..k} x^(j*(2*i-1))/j!.

The programs for A293486, there is no canonical definition to state claims against.
-/

/-! ## A293486.P428140744282669573

`A004013(A137252(n)%A004021(n))`
-/

namespace A293486.P428140744282669573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (Int.tmod (A137252 n) (A004021 n)).toNat

end

end A293486.P428140744282669573

/-! ## A293486.P8468129994651590012

`A136868(A293301(n)+5)`
-/

namespace A293486.P8468129994651590012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 (A293301 n + 5).toNat

end

end A293486.P8468129994651590012

/-! ## A293486.P17590188933082105254

`A286351(A293135(n)+6)`
-/

namespace A293486.P17590188933082105254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286351 (A293135 n + 6).toNat

end

end A293486.P17590188933082105254

/-! ## A293486.P224624088026813794

`dr(A351884(xor(1, A293135(n))))`
-/

namespace A293486.P224624088026813794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A351884 (Int.xor 1 (A293135 n)).toNat)

end

end A293486.P224624088026813794

/-! ## A293486.P9902651919009775245

`A118604(A247504(n)²*A247504(n))`
-/

namespace A293486.P9902651919009775245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118604 (A247504 n ^ 2 * A247504 n).toNat

end

end A293486.P9902651919009775245

/-!
# A293487: E.g.f.: Product_{m>0} (1 + x^(2*m-1)).

The programs for A293487, there is no canonical definition to state claims against.
-/

/-! ## A293487.P11385541977071297597

`n!*A000700(n)`
-/

namespace A293487.P11385541977071297597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000700 n

end

end A293487.P11385541977071297597

/-! ## A293487.P15416981623378654227

`abs(A293300(n))`
-/

namespace A293487.P15416981623378654227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293300 n|

end

end A293487.P15416981623378654227

/-! ## A293487.P7490602591067222452

`abs(n!*A081362(n))`
-/

namespace A293487.P7490602591067222452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A081362 n|

end

end A293487.P7490602591067222452

/-! ## A293487.P12567151912138079170

`A293486(∑[n+1]+n)`
-/

namespace A293487.P12567151912138079170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293486 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A293487.P12567151912138079170

/-! ## A293487.P837258839972926679

`abs(2-∑[abs(A298596(n))])*n!`
-/

namespace A293487.P837258839972926679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298596 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j| * (Nat.factorial n : ℤ)

end

end A293487.P837258839972926679

/-! ## A293487.P11564154052615880654

`A000142(n)*A000700(n)`
-/

namespace A293487.P11564154052615880654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000700 n

end

end A293487.P11564154052615880654

/-!
# A293488: E.g.f.: Product_{m>0} (1 + x^(2*m-1) + x^(4*m-2)/2!).

The programs for A293488, there is no canonical definition to state claims against.
-/

/-! ## A293488.P9238267685975559036

`A293486(∑[n+3])`
-/

namespace A293488.P9238267685975559036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293488.P9238267685975559036

/-! ## A293488.P8197820190731047849

`gcd(A151933(n), A293486(A055998(n+1)))`
-/

namespace A293488.P8197820190731047849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A293486 (A055998 (n + 1)).toNat)

end

end A293488.P8197820190731047849

/-! ## A293488.P2023815113233280787

`(-1)^n+A293486(A055998(n+1))-A033999(n)`
-/

namespace A293488.P2023815113233280787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (A293486 (A055998 (n + 1)).toNat - A033999 n)

end

end A293488.P2023815113233280787

/-! ## A293488.P10004721814893292939

`A033999(n+1)+A293486(A055998(n+1))+(-1)^n`
-/

namespace A293488.P10004721814893292939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (A293486 (A055998 (n + 1)).toNat + (-1) ^ n)

end

end A293488.P10004721814893292939

/-! ## A293488.P1689479921253078992

`A057427(A132749(n+1))*A293486(A055998(n+1))`
-/

namespace A293488.P1689479921253078992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A132749 (n + 1)).toNat * A293486 (A055998 (n + 1)).toNat

end

end A293488.P1689479921253078992

/-!
# A293489: E.g.f.: Product_{m>0} (1 + x^(2*m-1) + x^(4*m-2)/2! + x^(6*m-3)/3!).

The programs for A293489, there is no canonical definition to state claims against.
-/

/-! ## A293489.P227990830615222613

`A293486(∑[n+3]+n+3)`
-/

namespace A293489.P227990830615222613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293486 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293489.P227990830615222613

/-! ## A293489.P16544554101633400468

`A088009(n)+A056594(A048863(n))`
-/

namespace A293489.P16544554101633400468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088009 n + A056594 (A048863 n).toNat

end

end A293489.P16544554101633400468

/-! ## A293489.P18042441572979981372

`A228087(A088009(n))+A000009(n)`
-/

namespace A293489.P18042441572979981372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (A088009 n).toNat + A000009 n

end

end A293489.P18042441572979981372

/-!
# A293490: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n-k, n).

The programs for A293490, there is no canonical definition to state claims against.
-/

/-! ## A293490.P9114963569988372229

`(n+1)*A129442(n)`
-/

namespace A293490.P9114963569988372229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A129442 n

end

end A293490.P9114963569988372229

/-! ## A293490.P10063400349359655722

`∑[abs(Δ[n*A121988(n)])]`
-/

namespace A293490.P10063400349359655722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293490.P10063400349359655722

/-! ## A293490.P13023492445527602150

`(n+1)*A121988(n+1)`
-/

namespace A293490.P13023492445527602150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121988 (n + 1)

end

end A293490.P13023492445527602150

/-! ## A293490.P10131715271528587565

`A129442(n)*A158416(2*n)`
-/

namespace A293490.P10131715271528587565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129442 n * A158416 (2 * n)

end

end A293490.P10131715271528587565

/-! ## A293490.P17080641088941908879

`(n+1)*record[A127631(n)]`
-/

namespace A293490.P17080641088941908879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293490.P17080641088941908879

/-! ## A293490.P2319885181713221867

`A187887(∑[4*n])`
-/

namespace A293490.P2319885181713221867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293490.P2319885181713221867

/-! ## A293490.P10876247251281662815

`A187888(2*(n+1)²)`
-/

namespace A293490.P10876247251281662815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187888 (2 * (n + 1) ^ 2)

end

end A293490.P10876247251281662815

/-!
# A293491: a(n) = n! * [x^n] exp((n+2)*x)*BesselI(0,2*x).

The programs for A293491, there is no canonical definition to state claims against.
-/

/-! ## A293491.P14118790610081880091

`A292627(A090288(n)+1)`
-/

namespace A293491.P14118790610081880091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A090288 n + 1).toNat

end

end A293491.P14118790610081880091

/-! ## A293491.P12398348128623380264

`A292627(A132209(n+1))`
-/

namespace A293491.P12398348128623380264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A132209 (n + 1)).toNat

end

end A293491.P12398348128623380264

/-! ## A293491.P4812961430822034612

`A292627(A142463(n+1))`
-/

namespace A293491.P4812961430822034612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A142463 (n + 1)).toNat

end

end A293491.P4812961430822034612

/-! ## A293491.P6099306347916271889

`A292627(or(1, A090288(n)))`
-/

namespace A293491.P6099306347916271889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (Int.lor 1 (A090288 n)).toNat

end

end A293491.P6099306347916271889

/-! ## A293491.P13834032240983333560

`A292627(eq[0, A131085(n)])`
-/

namespace A293491.P13834032240983333560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293491.P13834032240983333560

/-!
# A293492: a(n) is the number of sequences (s_1, ..., s_n) of positive integers such that (Product_{k=1..n} [s_k, -1; 1, 0])^2 = [-1, 0; 0, -1].

The programs for A293492, there is no canonical definition to state claims against.
-/

/-! ## A293492.P17447887463528037351

`ogf((-2x^2+4x^4+3x^5+7x^6)/(-1+3x+3x^2))`
-/

namespace A293492.P17447887463528037351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 0, -4, -3, -7] [1, -3, -3] n

end

end A293492.P17447887463528037351

/-! ## A293492.P4001710231114527672

`round(A027171(n)/28)`
-/

namespace A293492.P4001710231114527672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A027171 n : ℚ) / 28)

end

end A293492.P4001710231114527672

/-! ## A293492.P12571066997394763313

`round(A092317(n+1)/(19*2^n-1))`
-/

namespace A293492.P12571066997394763313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092317 (n + 1) : ℚ) / ((19 * 2 ^ n : ℤ) - 1 : ℚ))

end

end A293492.P12571066997394763313

/-!
# A293493: Expansion of e.g.f. exp(x/(1 - x^3)).

The programs for A293493, there is no canonical definition to state claims against.
-/

/-! ## A293493.P3240911971878265533

`A159083(n)+A000027(A190875(n))`
-/

namespace A293493.P3240911971878265533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159083 n + A000027 (A190875 n).toNat

end

end A293493.P3240911971878265533

/-! ## A293493.P16371581934912078511

`A159083(n)+A000027(A205800(n))`
-/

namespace A293493.P16371581934912078511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159083 n + A000027 (A205800 n).toNat

end

end A293493.P16371581934912078511

/-! ## A293493.P17275160678101966922

`A159083(n)+∑{d}[A205800(n), A000010(#)]`
-/

namespace A293493.P17275160678101966922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159083 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A293493.P17275160678101966922

/-! ## A293493.P17810551224725357393

`A159083(n)+∏{d}[A205800(n), A006530(#)]`
-/

namespace A293493.P17810551224725357393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159083 n + ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A293493.P17810551224725357393

/-! ## A293493.P8779961495079640898

`A159083(n)+∏{d}[A205800(n), A020639(#)]`
-/

namespace A293493.P8779961495079640898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159083 n + ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A293493.P8779961495079640898

/-!
# A293494: E.g.f.: exp(x^2/(1 - x^3)).

The programs for A293494, there is no canonical definition to state claims against.
-/

/-! ## A293494.P5901340681686712656

`A106618(abs(A293567(n)))`
-/

namespace A293494.P5901340681686712656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 |A293567 n|.toNat

end

end A293494.P5901340681686712656

/-! ## A293494.P3971496938964447379

`A263273(abs(A293567(n)))`
-/

namespace A293494.P3971496938964447379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 |A293567 n|.toNat

end

end A293494.P3971496938964447379

/-! ## A293494.P4532110074963388361

`A265352(abs(A293567(n)))`
-/

namespace A293494.P4532110074963388361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 |A293567 n|.toNat

end

end A293494.P4532110074963388361

/-! ## A293494.P1426400441730839061

`A158777(n*A277191(n))`
-/

namespace A293494.P1426400441730839061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 ((n : ℤ) * A277191 n).toNat

end

end A293494.P1426400441730839061

/-!
# A293495: Number of balanced binary words of length n whose index is less than (5 + sqrt(5))/2.

The programs for A293495, there is no canonical definition to state claims against.
-/

/-! ## A293495.P17902359045491353882

`A353847(A385071(n)+A161680(n))`
-/

namespace A293495.P17902359045491353882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A385071 n + A161680 n).toNat

end

end A293495.P17902359045491353882

/-! ## A293495.P2768984536100729334

`A322554(A261422(n))+1-A048766(A069999(3*n+4))`
-/

namespace A293495.P2768984536100729334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A261422 n).toNat + 1 - A048766 (A069999 (3 * n + 4)).toNat

end

end A293495.P2768984536100729334

/-! ## A293495.P3503767126672026046

`∑[∑[A035185(A246805(n+1))]]`
-/

namespace A293495.P3503767126672026046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A246805 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293495.P3503767126672026046

/-! ## A293495.P9596122471309817244

`∑[A098667(2*n+1)%A098625(n+4)]`
-/

namespace A293495.P9596122471309817244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098667 (2 * n + 1)) (A098625 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293495.P9596122471309817244

/-! ## A293495.P5161531784173063940

`∑[A151800(n)-A057427(A000108(n))]`
-/

namespace A293495.P5161531784173063940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A057427 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293495.P5161531784173063940

/-!
# A293496: Array read by antidiagonals: T(n,k) = number of chiral pairs of necklaces with n beads using a maximum of k colors.

The programs for A293496, there is no canonical definition to state claims against.
-/

/-! ## A293496.P17332034937871041469

`(A075195(n+1)-A284855(n+1))/2`
-/

namespace A293496.P17332034937871041469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075195 (n + 1) - A284855 (n + 1) : ℚ) / 2

end

end A293496.P17332034937871041469

/-! ## A293496.P8161089213360211866

`A014682(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P8161089213360211866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P8161089213360211866

/-! ## A293496.P12954455475576157862

`A001281(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P12954455475576157862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P12954455475576157862

/-! ## A293496.P16932378132178598588

`A004525(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P16932378132178598588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P16932378132178598588

/-! ## A293496.P11175433981596831936

`A004526(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P11175433981596831936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P11175433981596831936

/-! ## A293496.P7091269669384327605

`A025480(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P7091269669384327605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P7091269669384327605

/-! ## A293496.P9339797534348754135

`A026741(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P9339797534348754135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P9339797534348754135

/-! ## A293496.P2789956758844286990

`A029578(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P2789956758844286990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P2789956758844286990

/-! ## A293496.P12060148925490073266

`A110654(A075195(n+1)-A284855(n+1))`
-/

namespace A293496.P12060148925490073266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A075195 (n + 1) - A284855 (n + 1)).toNat

end

end A293496.P12060148925490073266

/-!
# A293497: Triangular array read by rows: row n >= 1 is the list of integers from 0 to 2n-1.

The programs for A293497, there is no canonical definition to state claims against.
-/

/-! ## A293497.P12406281004375013251

`n-2*C(round(sqrt(n+1)), 2)`
-/

namespace A293497.P12406281004375013251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat 2 : ℤ)

end

end A293497.P12406281004375013251

/-! ## A293497.P13356025497096991844

`comp[n²]-(round(sqrt(n+1))²+1)`
-/

namespace A293497.P13356025497096991844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + 1)

end

end A293497.P13356025497096991844

/-! ## A293497.P1225329834024450845

`(a(n-1)+1)%floor(2*sqrt(n))` with `a(0)=0`
-/

namespace A293497.P1225329834024450845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) ⌊2 * Real.sqrt (n : ℝ)⌋

end

end A293497.P1225329834024450845

/-! ## A293497.P11452377231362598906

`comp[n²]%(∑[char[∑[2*n]]]²+1)`
-/

namespace A293497.P11452377231362598906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 1)

end

end A293497.P11452377231362598906

/-! ## A293497.P7840746238335543701

`(a(n-1)+1)*(1-Δ[round(sqrt(n))])` with `a(0)=0`
-/

namespace A293497.P7840746238335543701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * (1 - (f1 (n + 1) - f1 n))

end

end A293497.P7840746238335543701

/-! ## A293497.P4592612188698121090

`A053186(comp[n²-1])`
-/

namespace A293497.P4592612188698121090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A293497.P4592612188698121090

/-! ## A293497.P14657557625221181112

`abs(1-A074294(n+1))`
-/

namespace A293497.P14657557625221181112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074294 (n + 1)|

end

end A293497.P14657557625221181112

/-! ## A293497.P2499165680177822872

`A002262(floor(sqrt(n))²+n)`
-/

namespace A293497.P2499165680177822872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Nat.sqrt n ^ 2 + n)

end

end A293497.P2499165680177822872

/-! ## A293497.P1307809764255225727

`A259361(A074294(n+1)²)`
-/

namespace A293497.P1307809764255225727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A074294 (n + 1) ^ 2).toNat

end

end A293497.P1307809764255225727

/-! ## A293497.P17325344501658329576

`A179753(A074294(n+1)²+1)`
-/

namespace A293497.P17325344501658329576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A074294 (n + 1) ^ 2 + 1).toNat

end

end A293497.P17325344501658329576

/-!
# A293498: Number of unlabeled semiorders on n points and having dimension at most 2.

The programs for A293498, there is no canonical definition to state claims against.
-/

/-! ## A293498.P15398187437711364027

`A001405(n)+A002264(record[A126953(n)])`
-/

namespace A293498.P15398187437711364027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A293498.P15398187437711364027

/-! ## A293498.P8379062230122217505

`A002264(record[A126953(n)])+A051920(n)-1`
-/

namespace A293498.P8379062230122217505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (A051920 n - 1)

end

end A293498.P8379062230122217505

/-! ## A293498.P13198180130349773089

`A002264(A156577(n)/3^n)+A001405(n)`
-/

namespace A293498.P13198180130349773089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A156577 n : ℚ) / (3 ^ n : ℚ))).toNat + A001405 n

end

end A293498.P13198180130349773089

/-! ## A293498.P17953025280995882966

`A002264(A156577(n)/3^n)+A051920(n)-1`
-/

namespace A293498.P17953025280995882966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A156577 n : ℚ) / (3 ^ n : ℚ))).toNat + (A051920 n - 1)

end

end A293498.P17953025280995882966

/-!
# A293499: Number of unlabeled hereditary semiorders on n points.

The programs for A293499, there is no canonical definition to state claims against.
-/

/-! ## A293499.P3011253828310222464

`A152226(n)-A004760(A309861(n))`
-/

namespace A293499.P3011253828310222464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152226 n - A004760 (A309861 n).toNat

end

end A293499.P3011253828310222464

/-! ## A293499.P16395631373360175352

`A024175(n+1)-A025466(n!)`
-/

namespace A293499.P16395631373360175352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) - A025466 (Nat.factorial n)

end

end A293499.P16395631373360175352

/-! ## A293499.P16517749231929749994

`A152226(n)-A185037(A007590(n))`
-/

namespace A293499.P16517749231929749994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152226 n - A185037 (A007590 n).toNat

end

end A293499.P16517749231929749994

/-! ## A293499.P7617796434329641663

`A152226(n)-A164292(A293493(n))`
-/

namespace A293499.P7617796434329641663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152226 n - A164292 (A293493 n).toNat

end

end A293499.P7617796434329641663

