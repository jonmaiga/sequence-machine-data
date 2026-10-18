import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.Opaque.C025

/-!
# A185300: Numbers k such that (sum of the decimal digits of k) + (product of the decimal digits of k) is prime.

The programs for A185300, the canonical program `A185300.P2066547640795483324` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185300 has offset 1).

The definition of A185300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185300.P2066547640795483324

`eq[1, ∑{e}[A061762(n), #]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185300

/-- `eq[1, ∑{e}[A061762(n), #]]` -/
def P2066547640795483324.Spec : Prop :=
  ∀ n, (P2066547640795483324.a n : ℤ) = A185300 (n + 1)

theorem P2066547640795483324.correct : P2066547640795483324.Spec := by
  intro n
  simp only [A185300, Nat.add_sub_cancel]

end A185300

/-! ## A185300.P17296153473240617908

`eq[0, A007920(A061762(n))]`
-/

namespace A185300.P17296153473240617908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185300.P17296153473240617908

namespace A185300

/-- `eq[0, A007920(A061762(n))]` -/
def P17296153473240617908.Spec : Prop :=
  ∀ n, (P17296153473240617908.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P8235168325490139954

`eq[2, A000005(A061762(n+1))]+1`
-/

namespace A185300.P8235168325490139954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061762 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A185300.P8235168325490139954

namespace A185300

/-- `eq[2, A000005(A061762(n+1))]+1` -/
def P8235168325490139954.Spec : Prop :=
  ∀ n, (P8235168325490139954.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P3145030463139343472

`eq[A003415(A061762(n)), A054977(n)]`
-/

namespace A185300.P3145030463139343472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A061762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185300.P3145030463139343472

namespace A185300

/-- `eq[A003415(A061762(n)), A054977(n)]` -/
def P3145030463139343472.Spec : Prop :=
  ∀ n, (P3145030463139343472.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P5083480228023611844

`eq[A000007(n), A325142(A061762(n))]`
-/

namespace A185300.P5083480228023611844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185300.P5083480228023611844

namespace A185300

/-- `eq[A000007(n), A325142(A061762(n))]` -/
def P5083480228023611844.Spec : Prop :=
  ∀ n, (P5083480228023611844.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P2568599643978562981

`eq[2, A105700(2*A061762(n))]`
-/

namespace A185300.P2568599643978562981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185300.P2568599643978562981

namespace A185300

/-- `eq[2, A105700(2*A061762(n))]` -/
def P2568599643978562981.Spec : Prop :=
  ∀ n, (P2568599643978562981.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P9458425288531065871

`eq[2, A226378(2*A061762(n))]`
-/

namespace A185300.P9458425288531065871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185300.P9458425288531065871

namespace A185300

/-- `eq[2, A226378(2*A061762(n))]` -/
def P9458425288531065871.Spec : Prop :=
  ∀ n, (P9458425288531065871.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P13612266954837997134

`eq[2, A105700(A061762(n)²)]`
-/

namespace A185300.P13612266954837997134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A061762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185300.P13612266954837997134

namespace A185300

/-- `eq[2, A105700(A061762(n)²)]` -/
def P13612266954837997134.Spec : Prop :=
  ∀ n, (P13612266954837997134.a n : ℤ) = A185300 (n + 1)

end A185300

/-! ## A185300.P5215752236283288778

`eq[2, A226378(A061762(n)²)]`
-/

namespace A185300.P5215752236283288778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A061762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185300.P5215752236283288778

namespace A185300

/-- `eq[2, A226378(A061762(n)²)]` -/
def P5215752236283288778.Spec : Prop :=
  ∀ n, (P5215752236283288778.a n : ℤ) = A185300 (n + 1)

end A185300

/-!
# A185302: a(n) = Sum_{d|n} d*sigma(n/d)^d.

The programs for A185302, the canonical program `A185302.P10911868235339170465` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185302 has offset 1).

The definition of A185302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185302.P10911868235339170465

`∑{d}[n+1, #*A000203((n+1)/#)^#]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185302

/-- `∑{d}[n+1, #*A000203((n+1)/#)^#]` -/
def P10911868235339170465.Spec : Prop :=
  ∀ n, P10911868235339170465.a n = A185302 (n + 1)

theorem P10911868235339170465.correct : P10911868235339170465.Spec := by
  intro n
  simp only [A185302, Nat.add_sub_cancel]

end A185302

/-! ## A185302.P9730560599631435021

`and(∏{d}[n+1, #+1]-1, A271448(n+1)-1)`
-/

namespace A185302.P9730560599631435021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - 1) (A271448 (n + 1) - 1)

end

end A185302.P9730560599631435021

namespace A185302

/-- `and(∏{d}[n+1, #+1]-1, A271448(n+1)-1)` -/
def P9730560599631435021.Spec : Prop :=
  ∀ n, P9730560599631435021.a n = A185302 (n + 1)

end A185302

/-!
# A185304: Triangular array E(n,k) counting not necessarily connected k-regular simple graphs on n vertices with girth at least 4.

The programs for A185304, there is no canonical definition to state claims against.
-/

/-! ## A185304.P17857897416130905948

`A025581(gcd(A074206(n), A352683(n)))`
-/

namespace A185304.P17857897416130905948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.gcd (A074206 n) (A352683 n))

end

end A185304.P17857897416130905948

/-! ## A185304.P17943741457903769456

`A093658(gcd(A002808(3*n+5), A026729(3*(n+1))))`
-/

namespace A185304.P17943741457903769456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093658 (Int.gcd (A002808 (3 * n + 5)) (A026729 (3 * (n + 1))))

end

end A185304.P17943741457903769456

/-! ## A185304.P17792647644816864249

`A165414(A000265(n+1)*A147072(n+1))`
-/

namespace A185304.P17792647644816864249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165414 (A000265 (n + 1) * A147072 (n + 1)).toNat

end

end A185304.P17792647644816864249

/-! ## A185304.P807646290021412

`A230000(A219666(n)+2)`
-/

namespace A185304.P807646290021412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230000 (A219666 n + 2).toNat

end

end A185304.P807646290021412

/-! ## A185304.P17023431745796636571

`A235453(∏{e}[A339400(3*n+5), #])`
-/

namespace A185304.P17023431745796636571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339400 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A185304.P17023431745796636571

/-!
# A185305: Triangular array E(n,k) counting not necessarily connected k-regular simple graphs on n vertices with girth at least 5.

The programs for A185305, there is no canonical definition to state claims against.
-/

/-! ## A185305.P1210577269743445913

`A033687(C(A322973(n+1), A322996(3*n+4)))`
-/

namespace A185305.P1210577269743445913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (Nat.choose (A322973 (n + 1)).toNat (A322996 (3 * n + 4)).toNat)

end

end A185305.P1210577269743445913

/-! ## A185305.P17950544171564968520

`A133388(gcd(A339002(2*(n+2)), A340083(3*n+4)))`
-/

namespace A185305.P17950544171564968520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (Int.gcd (A339002 (2 * (n + 2))) (A340083 (3 * n + 4)))

end

end A185305.P17950544171564968520

/-!
# A185306: Number of maximally nonhamiltonian graphs on n vertices.

The programs for A185306, there is no canonical definition to state claims against.
-/

/-! ## A185306.P18277315279167473056

`A219026(A167539(n+1))`
-/

namespace A185306.P18277315279167473056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219026 (A167539 (n + 1)).toNat

end

end A185306.P18277315279167473056

/-! ## A185306.P1079487332670031228

`A140473(A343315(n+1))`
-/

namespace A185306.P1079487332670031228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A343315 (n + 1)).toNat

end

end A185306.P1079487332670031228

/-! ## A185306.P18303559858377336674

`A281273(A248220(n+1))`
-/

namespace A185306.P18303559858377336674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281273 (A248220 (n + 1)).toNat

end

end A185306.P18303559858377336674

/-! ## A185306.P8918289761100361849

`A281543(A303029(n+1))`
-/

namespace A185306.P8918289761100361849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A303029 (n + 1)).toNat

end

end A185306.P8918289761100361849

/-! ## A185306.P8916777876336067447

`A191497(n)+A152188(n)`
-/

namespace A185306.P8916777876336067447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191497 n + A152188 n

end

end A185306.P8916777876336067447

/-!
# A185307: Numbers not divisible by the number of their distinct prime factors.

The programs for A185307, the canonical program `A185307.P12380565764827468973` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185307 has offset 1).

The definition of A185307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185307.P12380565764827468973

`comp[A075592(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185307

/-- `comp[A075592(n+1)-1]+1` -/
def P12380565764827468973.Spec : Prop :=
  ∀ n, (P12380565764827468973.a n : ℤ) = A185307 (n + 1)

theorem P12380565764827468973.correct : P12380565764827468973.Spec := by
  intro n
  simp only [A185307, Nat.add_sub_cancel]

end A185307

/-! ## A185307.P8622063029431843867

`∩[A070537(n+1), comp[A075592(n+1)]]`
-/

namespace A185307.P8622063029431843867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A185307.P8622063029431843867

namespace A185307

/-- `∩[A070537(n+1), comp[A075592(n+1)]]` -/
def P8622063029431843867.Spec : Prop :=
  ∀ n, (P8622063029431843867.a n : ℤ) = A185307 (n + 1)

end A185307

/-! ## A185307.P4217982351612527465

`∩[comp[A075592(n+1)], A231877(n+1)]`
-/

namespace A185307.P4217982351612527465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A185307.P4217982351612527465

namespace A185307

/-- `∩[comp[A075592(n+1)], A231877(n+1)]` -/
def P4217982351612527465.Spec : Prop :=
  ∀ n, (P4217982351612527465.a n : ℤ) = A185307 (n + 1)

end A185307

/-! ## A185307.P882895188449695767

`∩[A265128(n+1), A275616(n+1)]`
-/

namespace A185307.P882895188449695767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185307.P882895188449695767

namespace A185307

/-- `∩[A265128(n+1), A275616(n+1)]` -/
def P882895188449695767.Spec : Prop :=
  ∀ n, (P882895188449695767.a n : ℤ) = A185307 (n + 1)

end A185307

/-! ## A185307.P12133329851383916405

`∩[A275616(n+1), A327476(n+1)]`
-/

namespace A185307.P12133329851383916405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185307.P12133329851383916405

namespace A185307

/-- `∩[A275616(n+1), A327476(n+1)]` -/
def P12133329851383916405.Spec : Prop :=
  ∀ n, (P12133329851383916405.a n : ℤ) = A185307 (n + 1)

end A185307

/-!
# A185308: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + n*a(n-2) + 1.

The programs for A185308, the canonical program `A185308.P15777424825574371849` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185308 has offset 0).

The definition of A185308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+n*a(n-2)` (program `A185308.P15777424825574371849`, by `A185308.P15777424825574371849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185308.P15777424825574371849

`1+a(n-1)+n*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185308

/-- `1+a(n-1)+n*a(n-2)` -/
def P15777424825574371849.Spec : Prop :=
  ∀ n, (P15777424825574371849.a n : ℤ) = A185308 n

theorem P15777424825574371849.correct : P15777424825574371849.Spec := by
  intro n
  simp only [A185308]

end A185308

/-! ## A185308.P18263120907555038145

`a(n-1)+n*a(n-2)+1` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185308.P18263120907555038145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + n * a (n - 2) + 1

end

end A185308.P18263120907555038145

namespace A185308

/-- `a(n-1)+n*a(n-2)+1` -/
def P18263120907555038145.Spec : Prop :=
  ∀ n, (P18263120907555038145.a n : ℤ) = A185308 n

end A185308

/-! ## A185308.P13866939235620865142

`a(n-1)-(-1%n-n*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A185308.P13866939235620865142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - (Int.tmod (-1) (n : ℤ) - (n : ℤ) * a (n - 2))

end

end A185308.P13866939235620865142

namespace A185308

/-- `a(n-1)-(-1%n-n*a(n-2))` -/
def P13866939235620865142.Spec : Prop :=
  ∀ n, P13866939235620865142.a n = A185308 n

end A185308

/-! ## A185308.P17650320114136474856

`1-(n*(1-a(n-2))-a(n-1)-n)` with `a(0)=0, a(1)=0`
-/

namespace A185308.P17650320114136474856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ((n : ℤ) * (1 - a (n - 2)) - a (n - 1) - (n : ℤ))

end

end A185308.P17650320114136474856

namespace A185308

/-- `1-(n*(1-a(n-2))-a(n-1)-n)` -/
def P17650320114136474856.Spec : Prop :=
  ∀ n, P17650320114136474856.a n = A185308 n

end A185308

/-! ## A185308.P9517035035877753870

`∑[abs(A262020(n))]-1`
-/

namespace A185308.P9517035035877753870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262020 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A185308.P9517035035877753870

namespace A185308

/-- `∑[abs(A262020(n))]-1` -/
def P9517035035877753870.Spec : Prop :=
  ∀ n, P9517035035877753870.a n = A185308 n

end A185308

/-! ## A185308.P12827112022768808983

`∑[abs(A057427(n)*A262020(n))]`
-/

namespace A185308.P12827112022768808983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n * A262020 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185308.P12827112022768808983

namespace A185308

/-- `∑[abs(A057427(n)*A262020(n))]` -/
def P12827112022768808983.Spec : Prop :=
  ∀ n, P12827112022768808983.a n = A185308 n

end A185308

/-! ## A185308.P1270127412242755206

`A186739(n+2)-A000085(n+1)`
-/

namespace A185308.P1270127412242755206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 2) - A000085 (n + 1)

end

end A185308.P1270127412242755206

namespace A185308

/-- `A186739(n+2)-A000085(n+1)` -/
def P1270127412242755206.Spec : Prop :=
  ∀ n, P1270127412242755206.a n = A185308 n

end A185308

/-! ## A185308.P6412623111231812637

`A187044(n+1)%A000085(n+1)`
-/

namespace A185308.P6412623111231812637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187044 (n + 1)) (A000085 (n + 1))

end

end A185308.P6412623111231812637

namespace A185308

/-- `A187044(n+1)%A000085(n+1)` -/
def P6412623111231812637.Spec : Prop :=
  ∀ n, P6412623111231812637.a n = A185308 n

end A185308

/-! ## A185308.P10305046178538415198

`A186738(n+1)+A000932(n)-A000085(n+1)`
-/

namespace A185308.P10305046178538415198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186738 (n + 1) + (A000932 n - A000085 (n + 1))

end

end A185308.P10305046178538415198

namespace A185308

/-- `A186738(n+1)+A000932(n)-A000085(n+1)` -/
def P10305046178538415198.Spec : Prop :=
  ∀ n, P10305046178538415198.a n = A185308 n

end A185308

/-!
# A185309: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n+1)*a(n-2) + 1.

The programs for A185309, the canonical program `A185309.P10544623770828284864` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185309 has offset 0).

The definition of A185309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n+1)*a(n-2)` (program `A185309.P10544623770828284864`, by `A185309.P10544623770828284864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185309.P10544623770828284864

`1+a(n-1)+(n+1)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185309

/-- `1+a(n-1)+(n+1)*a(n-2)` -/
def P10544623770828284864.Spec : Prop :=
  ∀ n, (P10544623770828284864.a n : ℤ) = A185309 n

theorem P10544623770828284864.correct : P10544623770828284864.Spec := by
  intro n
  simp only [A185309]

end A185309

/-! ## A185309.P5176741220114339677

`a(n-1)+(n+1)*a(n-2)+1` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185309.P5176741220114339677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + (n + 1) * a (n - 2) + 1

end

end A185309.P5176741220114339677

namespace A185309

/-- `a(n-1)+(n+1)*a(n-2)+1` -/
def P5176741220114339677.Spec : Prop :=
  ∀ n, (P5176741220114339677.a n : ℤ) = A185309 n

end A185309

/-! ## A185309.P15559290273766570873

`1-(xor(n, -1)*a(n-2)-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A185309.P15559290273766570873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (Int.xor (n : ℤ) (-1) * a (n - 2) - a (n - 1))

end

end A185309.P15559290273766570873

namespace A185309

/-- `1-(xor(n, -1)*a(n-2)-a(n-1))` -/
def P15559290273766570873.Spec : Prop :=
  ∀ n, P15559290273766570873.a n = A185309 n

end A185309

/-! ## A185309.P7719412030791054448

`A186738(n+2)-A001475(n+1)`
-/

namespace A185309.P7719412030791054448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186738 (n + 2) - A001475 (n + 1)

end

end A185309.P7719412030791054448

namespace A185309

/-- `A186738(n+2)-A001475(n+1)` -/
def P7719412030791054448.Spec : Prop :=
  ∀ n, P7719412030791054448.a n = A185309 n

end A185309

/-! ## A185309.P13702064531656734452

`A185308(n+1)-A291856(n+2)/2`
-/

namespace A185309.P13702064531656734452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185308 (n + 1) : ℚ) - (A291856 (n + 2) : ℚ) / 2

end

end A185309.P13702064531656734452

namespace A185309

/-- `A185308(n+1)-A291856(n+2)/2` -/
def P13702064531656734452.Spec : Prop :=
  ∀ n, P13702064531656734452.a n = (A185309 n : ℚ)

end A185309

/-! ## A185309.P5349852922204463327

`A001475(n+1)-(A000932(n+1)-A185308(n+1))`
-/

namespace A185309.P5349852922204463327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 1) - (A000932 (n + 1) - A185308 (n + 1))

end

end A185309.P5349852922204463327

namespace A185309

/-- `A001475(n+1)-(A000932(n+1)-A185308(n+1))` -/
def P5349852922204463327.Spec : Prop :=
  ∀ n, P5349852922204463327.a n = A185309 n

end A185309

/-!
# A185310: G.f.: Sum_{n>=0} n! * (1+n*x)^n * x^n / Product_{k=1..n} (1 + k*x + n*k*x^2).

The programs for A185310, there is no canonical definition to state claims against.
-/

/-! ## A185310.P2636650310591210564

`A008616(Δ[(n-1)*a(n-1)])` with `a(0)=16, a(1)=16`
-/

namespace A185310.P2636650310591210564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 16] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A185310.P2636650310591210564

/-! ## A185310.P7487221942355369029

`A229301(A383389(n))`
-/

namespace A185310.P7487221942355369029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A383389 n).toNat

end

end A185310.P7487221942355369029

/-! ## A185310.P5063406734526254695

`A269357(A049093(n!))`
-/

namespace A185310.P5063406734526254695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269357 (A049093 (Nat.factorial n)).toNat

end

end A185310.P5063406734526254695

/-!
# A185311: Keränen's abelian squarefree endomorphism of size 85 on the symbols {1,2,3,4}.

The programs for A185311, there is no canonical definition to state claims against.
-/

/-! ## A185311.P9977660564179862966

`A001222(A333342(n)+A001222(A333343(n)))`
-/

namespace A185311.P9977660564179862966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333342 n + A001222 (A333343 n).toNat).toNat

end

end A185311.P9977660564179862966

/-! ## A185311.P7594319314309034071

`xor(A185312(n+1), A235145(A214899(n)))`
-/

namespace A185311.P7594319314309034071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185312 (n + 1)) (A235145 (A214899 n).toNat)

end

end A185311.P7594319314309034071

/-! ## A185311.P3642067457411079531

`A185312(n+1)+A011715(A084033(n+1))`
-/

namespace A185311.P3642067457411079531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185312 (n + 1) + A011715 (A084033 (n + 1)).toNat

end

end A185311.P3642067457411079531

/-! ## A185311.P10730653309991083227

`A185312(n+1)+A185274(A185315(n+1))`
-/

namespace A185311.P10730653309991083227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185312 (n + 1) + A185274 (A185315 (n + 1)).toNat

end

end A185311.P10730653309991083227

/-! ## A185311.P10522843000877727995

`A185312(n+1)+A185274(A271949(n+4))`
-/

namespace A185311.P10522843000877727995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185312 (n + 1) + A185274 (A271949 (n + 4)).toNat

end

end A185311.P10522843000877727995

/-!
# A185312: Keränen's sequence of length 98 on the alphabet{1,2,3,4} used to construct an abelian squarefree endomorphism of size 98.

The programs for A185312, there is no canonical definition to state claims against.
-/

/-! ## A185312.P10694198829402506381

`xor(A185311(n+1), A235145(A214899(n)))`
-/

namespace A185312.P10694198829402506381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185311 (n + 1)) (A235145 (A214899 n).toNat)

end

end A185312.P10694198829402506381

/-! ## A185312.P14690679668582888308

`A185311(∑[A339104(n)!])`
-/

namespace A185312.P14690679668582888308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185312.P14690679668582888308

/-! ## A185312.P9069984629238544678

`A185311(A187829(n+1)*A294775(n))`
-/

namespace A185312.P9069984629238544678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185311 (A187829 (n + 1) * A294775 n).toNat

end

end A185312.P9069984629238544678

/-! ## A185312.P11551789145768244700

`A185311(lcm(A187829(n+1), A271949(n)))`
-/

namespace A185312.P11551789145768244700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185311 (Int.lcm (A187829 (n + 1)) (A271949 n))

end

end A185312.P11551789145768244700

/-! ## A185312.P17421754340206667476

`and(A185311(n+1), A268169(A013601(n)))`
-/

namespace A185312.P17421754340206667476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185311 (n + 1)) (A268169 (A013601 n).toNat)

end

end A185312.P17421754340206667476

/-!
# A185314: Number of, not necessarily connected, regular simple graphs on n vertices with girth at least 4.

The programs for A185314, there is no canonical definition to state claims against.
-/

/-! ## A185314.P971961028708266726

`A186724(n)+A185214(n)`
-/

namespace A185314.P971961028708266726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186724 n + A185214 n

end

end A185314.P971961028708266726

/-! ## A185314.P5285256903062618294

`A198314(n)+A185315(n)`
-/

namespace A185314.P5285256903062618294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198314 n + A185315 n

end

end A185314.P5285256903062618294

/-! ## A185314.P18057397132532324977

`A185214(n)+A186744(n)+A186725(n)`
-/

namespace A185314.P18057397132532324977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 n + (A186744 n + A186725 n)

end

end A185314.P18057397132532324977

/-! ## A185314.P13812502302038393689

`A185215(n)+A210714(n)+A186724(n)`
-/

namespace A185314.P13812502302038393689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n + (A210714 n + A186724 n)

end

end A185314.P13812502302038393689

/-! ## A185314.P5424581524605266557

`A068932(n)+A186724(n)-A210713(n)`
-/

namespace A185314.P5424581524605266557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n + (A186724 n - A210713 n)

end

end A185314.P5424581524605266557

/-!
# A185315: Number of, not necessarily connected, regular simple graphs on n vertices with girth at least 5.

The programs for A185315, there is no canonical definition to state claims against.
-/

/-! ## A185315.P12478076980415230900

`A186725(n)+A185215(n)`
-/

namespace A185315.P12478076980415230900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n + A185215 n

end

end A185315.P12478076980415230900

/-! ## A185315.P15338848458539730439

`A185314(n)-A198314(n)`
-/

namespace A185315.P15338848458539730439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n - A198314 n

end

end A185315.P15338848458539730439

/-! ## A185315.P18004654572843209855

`A211097(A002095(n)*A133900(n+1))`
-/

namespace A185315.P18004654572843209855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A002095 n * A133900 (n + 1)).toNat

end

end A185315.P18004654572843209855

/-! ## A185315.P1063840696655176722

`A327041(A054706(n+1)^A328929(n))`
-/

namespace A185315.P1063840696655176722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (SequenceMachineLib.roundAway ((A054706 (n + 1) : ℚ) ^ (A328929 n : ℤ))).toNat

end

end A185315.P1063840696655176722

/-! ## A185315.P16727471874426567354

`A211097(lcm(A002095(n), A133900(n+1)))`
-/

namespace A185315.P16727471874426567354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (Int.lcm (A002095 n) (A133900 (n + 1)))

end

end A185315.P16727471874426567354

/-!
# A185316: Number of, not necessarily connected, regular simple graphs on n vertices with girth at least 6.

The programs for A185316, there is no canonical definition to state claims against.
-/

/-! ## A185316.P17320533886522931530

`A186726(n)+A185216(n)`
-/

namespace A185316.P17320533886522931530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 n + A185216 n

end

end A185316.P17320533886522931530

/-! ## A185316.P15544692246171388519

`A198316(n)+A185317(n)`
-/

namespace A185316.P15544692246171388519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198316 n + A185317 n

end

end A185316.P15544692246171388519

/-! ## A185316.P6481191994302471345

`A185216(n)+A186746(n)+A186727(n)`
-/

namespace A185316.P6481191994302471345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + (A186746 n + A186727 n)

end

end A185316.P6481191994302471345

/-! ## A185316.P15286734206321294921

`A185318(n)+A198317(n)+A198316(n)`
-/

namespace A185316.P15286734206321294921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 n + (A198317 n + A198316 n)

end

end A185316.P15286734206321294921

/-! ## A185316.P15609755353037866093

`A185217(n)+A210716(n)+A186726(n)`
-/

namespace A185316.P15609755353037866093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + (A210716 n + A186726 n)

end

end A185316.P15609755353037866093

/-!
# A185317: Number of, not necessarily connected, regular simple graphs on n vertices with girth at least 7.

The programs for A185317, there is no canonical definition to state claims against.
-/

/-! ## A185317.P9112038534135849691

`A186727(n)+A185217(n)`
-/

namespace A185317.P9112038534135849691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n + A185217 n

end

end A185317.P9112038534135849691

/-! ## A185317.P11821274107551067079

`A198317(n)+A185318(n)`
-/

namespace A185317.P11821274107551067079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 n + A185318 n

end

end A185317.P11821274107551067079

/-! ## A185317.P2952578976909956164

`A185217(n)+A186747(n)+A186728(n)`
-/

namespace A185317.P2952578976909956164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + (A186747 n + A186728 n)

end

end A185317.P2952578976909956164

/-! ## A185317.P17303729571224992721

`A185218(n)+A198317(n)+A186728(n)`
-/

namespace A185317.P17303729571224992721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A198317 n + A186728 n)

end

end A185317.P17303729571224992721

/-! ## A185317.P10040532877775061623

`A185319(n)+A198318(n)+A198317(n)`
-/

namespace A185317.P10040532877775061623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n + (A198318 n + A198317 n)

end

end A185317.P10040532877775061623

/-!
# A185318: Number of, not necessarily connected, regular simple graphs on n vertices with girth at least 8.

The programs for A185318, there is no canonical definition to state claims against.
-/

/-! ## A185318.P3355776487298687008

`A186728(n)+A185218(n)`
-/

namespace A185318.P3355776487298687008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n + A185218 n

end

end A185318.P3355776487298687008

/-! ## A185318.P3831525893249102921

`A198318(n)+A185319(n)`
-/

namespace A185318.P3831525893249102921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 n + A185319 n

end

end A185318.P3831525893249102921

/-! ## A185318.P6974922501891571877

`A185218(n)+A186748(n)+A186729(n)`
-/

namespace A185318.P6974922501891571877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A186748 n + A186729 n)

end

end A185318.P6974922501891571877

/-! ## A185318.P6341854763061241443

`A185219(n)+A198318(n)+A186729(n)`
-/

namespace A185318.P6341854763061241443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185219 n + (A198318 n + A186729 n)

end

end A185318.P6341854763061241443

/-! ## A185318.P13911766323205453008

`A185219(n)+A210718(n)+A186728(n)`
-/

namespace A185318.P13911766323205453008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185219 n + (A210718 n + A186728 n)

end

end A185318.P13911766323205453008

/-!
# A185319: Number of, not necessarily connected, regular simple graphs on n vertices with girth at least 9.

The programs for A185319, there is no canonical definition to state claims against.
-/

/-! ## A185319.P1987021561176233990

`A186729(n)+A185219(n)`
-/

namespace A185319.P1987021561176233990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 n + A185219 n

end

end A185319.P1987021561176233990

/-! ## A185319.P2032893840146958481

`A185218(n)+A186729(n)-A210718(n)`
-/

namespace A185319.P2032893840146958481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A186729 n - A210718 n)

end

end A185319.P2032893840146958481

/-! ## A185319.P16462476941908253594

`A186729(n)-A057428(n)*A185219(n)`
-/

namespace A185319.P16462476941908253594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 n - A057428 n * A185219 n

end

end A185319.P16462476941908253594

/-! ## A185319.P12873544403205154463

`A186729(n)+A185217(n)-(A210718(n)+A210717(n))`
-/

namespace A185319.P12873544403205154463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 n + (A185217 n - (A210718 n + A210717 n))

end

end A185319.P12873544403205154463

/-! ## A185319.P8302299103362280271

`A185219(n)+A060576(A000045(floor(n/e)))`
-/

namespace A185319.P8302299103362280271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185219 n + A060576 (A000045 ⌊(n : ℝ) / Real.exp 1⌋.toNat).toNat

end

end A185319.P8302299103362280271

/-!
# A185320: E.g.f. A(x) = Sum_{n>=0} a(n)*x^(2*n+1)/(2*n+1)! is inverse to f(x) = 2*arctan(x) - x.

The programs for A185320, there is no canonical definition to state claims against.
-/

/-! ## A185320.P7418345954811003483

`log2(A040002(n))*A206305(n)`
-/

namespace A185320.P7418345954811003483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040002 n : ℝ) * (A206305 n : ℝ)

end

end A185320.P7418345954811003483

/-! ## A185320.P4061264587303081682

`A006530(A000079(n))*A206305(n)`
-/

namespace A185320.P4061264587303081682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A206305 n

end

end A185320.P4061264587303081682

/-! ## A185320.P9556346778514366180

`A014963(A001316(n))*A206305(n)`
-/

namespace A185320.P9556346778514366180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A206305 n

end

end A185320.P9556346778514366180

/-! ## A185320.P16938881396287132757

`A020639(A311385(n))*A206305(n)`
-/

namespace A185320.P16938881396287132757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A311385 n).toNat * A206305 n

end

end A185320.P16938881396287132757

/-! ## A185320.P8272664853924974617

`A000005(A008578(n+1))*A206305(n)`
-/

namespace A185320.P8272664853924974617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A206305 n

end

end A185320.P8272664853924974617

/-!
# A185321: Carmichael numbers congruent to 3 modulo 4.

The programs for A185321, there is no canonical definition to state claims against.
-/

/-! ## A185321.P8270275268376171794

`∩[A329468(n+1), A329799(n+1)]`
-/

namespace A185321.P8270275268376171794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P8270275268376171794

/-! ## A185321.P2527016676294807235

`∩[A262043(n+1), A329468(n+1)]`
-/

namespace A185321.P2527016676294807235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P2527016676294807235

/-! ## A185321.P13111718733973115240

`∩[A329468(n+1), A355039(n+1)]`
-/

namespace A185321.P13111718733973115240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P13111718733973115240

/-! ## A185321.P6847923535554075547

`∩[or(2, A002997(n+2)), A002997(n+2)]`
-/

namespace A185321.P6847923535554075547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A002997 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P6847923535554075547

/-! ## A185321.P9858850369628150059

`∩[A002997(n+1), A177884(n+1)]`
-/

namespace A185321.P9858850369628150059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P9858850369628150059

/-! ## A185321.P5964927588601882682

`∩[A097130(n+1), A177884(n+1)]`
-/

namespace A185321.P5964927588601882682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P5964927588601882682

/-! ## A185321.P8351322322845008597

`∩[A110889(n+1), A177884(n+1)]`
-/

namespace A185321.P8351322322845008597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P8351322322845008597

/-! ## A185321.P12934054899458710591

`∩[A177884(n+1), A262043(n+1)]`
-/

namespace A185321.P12934054899458710591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P12934054899458710591

/-! ## A185321.P12710874716598459065

`∩[A177884(n+1), A329468(n+1)]`
-/

namespace A185321.P12710874716598459065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P12710874716598459065

/-! ## A185321.P15031977805985940506

`∩[A177884(n+1), A329799(n+1)]`
-/

namespace A185321.P15031977805985940506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P15031977805985940506

/-! ## A185321.P9097534623419206837

`∩[A177884(n+1), A355039(n+1)]`
-/

namespace A185321.P9097534623419206837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185321.P9097534623419206837

/-!
# A185322: a(n) = ceiling(prime(n)/10).

The programs for A185322, the canonical program `A185322.P1874524359197115943` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185322 has offset 1).

The definition of A185322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185322.P8077668366647860092

`ceil(Δ[A007504(n)/10])`
-/

namespace A185322.P8077668366647860092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A185322.P8077668366647860092

namespace A185322

/-- `ceil(Δ[A007504(n)/10])` -/
def P8077668366647860092.Spec : Prop :=
  ∀ n, P8077668366647860092.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P1874524359197115943

`ceil(A111333(n+1)/5)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A185322

/-- `ceil(A111333(n+1)/5)` -/
def P1874524359197115943.Spec : Prop :=
  ∀ n, P1874524359197115943.a n = A185322 (n + 1)

theorem P1874524359197115943.correct : P1874524359197115943.Spec := by
  intro n
  simp only [A185322, Nat.add_sub_cancel]

end A185322

/-! ## A185322.P6058827931588791402

`floor(A140353(n+1)/10)`
-/

namespace A185322.P6058827931588791402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140353 (n + 1) : ℚ) / 10⌋

end

end A185322.P6058827931588791402

namespace A185322

/-- `floor(A140353(n+1)/10)` -/
def P6058827931588791402.Spec : Prop :=
  ∀ n, P6058827931588791402.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P16507880117245247049

`ceil(A000040(n+1)/10)`
-/

namespace A185322.P16507880117245247049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 10⌉

end

end A185322.P16507880117245247049

namespace A185322

/-- `ceil(A000040(n+1)/10)` -/
def P16507880117245247049.Spec : Prop :=
  ∀ n, P16507880117245247049.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P6223253616375922095

`ceil(A006005(n+1)/10)`
-/

namespace A185322.P6223253616375922095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006005 (n + 1) : ℚ) / 10⌉

end

end A185322.P6223253616375922095

namespace A185322

/-- `ceil(A006005(n+1)/10)` -/
def P6223253616375922095.Spec : Prop :=
  ∀ n, P6223253616375922095.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P14297791731389678119

`ceil(A008864(n+1)/10)`
-/

namespace A185322.P14297791731389678119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (n + 1) : ℚ) / 10⌉

end

end A185322.P14297791731389678119

namespace A185322

/-- `ceil(A008864(n+1)/10)` -/
def P14297791731389678119.Spec : Prop :=
  ∀ n, P14297791731389678119.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P7208817797298397662

`ceil(A175216(n+1)/10)`
-/

namespace A185322.P7208817797298397662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175216 (n + 1) : ℚ) / 10⌉

end

end A185322.P7208817797298397662

namespace A185322

/-- `ceil(A175216(n+1)/10)` -/
def P7208817797298397662.Spec : Prop :=
  ∀ n, P7208817797298397662.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P1120476003564823422

`ceil(A072055(n+1)/20)`
-/

namespace A185322.P1120476003564823422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072055 (n + 1) : ℚ) / 20⌉

end

end A185322.P1120476003564823422

namespace A185322

/-- `ceil(A072055(n+1)/20)` -/
def P1120476003564823422.Spec : Prop :=
  ∀ n, P1120476003564823422.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P2259158171694598612

`floor(A116572(n+1)/2)+1`
-/

namespace A185322.P2259158171694598612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116572 (n + 1) : ℚ) / 2⌋ + 1

end

end A185322.P2259158171694598612

namespace A185322

/-- `floor(A116572(n+1)/2)+1` -/
def P2259158171694598612.Spec : Prop :=
  ∀ n, P2259158171694598612.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P12099775990074602068

`ceil(record[A006530(n+2)/10])`
-/

namespace A185322.P12099775990074602068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A185322.P12099775990074602068

namespace A185322

/-- `ceil(record[A006530(n+2)/10])` -/
def P12099775990074602068.Spec : Prop :=
  ∀ n, P12099775990074602068.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P6821656990475085986

`ceil(record[A020639(n+2)/10])`
-/

namespace A185322.P6821656990475085986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A185322.P6821656990475085986

namespace A185322

/-- `ceil(record[A020639(n+2)/10])` -/
def P6821656990475085986.Spec : Prop :=
  ∀ n, P6821656990475085986.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P9108112368107487400

`A008619(A116572(n+1))`
-/

namespace A185322.P9108112368107487400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A116572 (n + 1)).toNat

end

end A185322.P9108112368107487400

namespace A185322

/-- `A008619(A116572(n+1))` -/
def P9108112368107487400.Spec : Prop :=
  ∀ n, P9108112368107487400.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P16050081414824699544

`ceil(A006530(lt[n, A006530(n+2)]+2)/10)`
-/

namespace A185322.P16050081414824699544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) : ℚ) / 10⌉

end

end A185322.P16050081414824699544

namespace A185322

/-- `ceil(A006530(lt[n, A006530(n+2)]+2)/10)` -/
def P16050081414824699544.Spec : Prop :=
  ∀ n, P16050081414824699544.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P6859389846750925111

`ceil((lt[A000010(n+1), A020639(n+1)]+1)/10)`
-/

namespace A185322.P6859389846750925111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℚ) / 10⌉

end

end A185322.P6859389846750925111

namespace A185322

/-- `ceil((lt[A000010(n+1), A020639(n+1)]+1)/10)` -/
def P6859389846750925111.Spec : Prop :=
  ∀ n, P6859389846750925111.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P324428427048964548

`A002266(A102781(n+1))+1`
-/

namespace A185322.P324428427048964548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A102781 (n + 1)).toNat + 1

end

end A185322.P324428427048964548

namespace A185322

/-- `A002266(A102781(n+1))+1` -/
def P324428427048964548.Spec : Prop :=
  ∀ n, P324428427048964548.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P11321051905278068947

`A002266(A130290(n+1))+1`
-/

namespace A185322.P11321051905278068947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A130290 (n + 1)).toNat + 1

end

end A185322.P11321051905278068947

namespace A185322

/-- `A002266(A130290(n+1))+1` -/
def P11321051905278068947.Spec : Prop :=
  ∀ n, P11321051905278068947.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P13014962757716083621

`A008616(A175221(n+1))`
-/

namespace A185322.P13014962757716083621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A175221 (n + 1)).toNat

end

end A185322.P13014962757716083621

namespace A185322

/-- `A008616(A175221(n+1))` -/
def P13014962757716083621.Spec : Prop :=
  ∀ n, P13014962757716083621.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P9604339690894432375

`A059995(A140353(n+1))`
-/

namespace A185322.P9604339690894432375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A140353 (n + 1)).toNat

end

end A185322.P9604339690894432375

namespace A185322

/-- `A059995(A140353(n+1))` -/
def P9604339690894432375.Spec : Prop :=
  ∀ n, P9604339690894432375.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P1639464862931011041

`A226233(A000040(n+1))`
-/

namespace A185322.P1639464862931011041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A000040 (n + 1)).toNat

end

end A185322.P1639464862931011041

namespace A185322

/-- `A226233(A000040(n+1))` -/
def P1639464862931011041.Spec : Prop :=
  ∀ n, P1639464862931011041.a n = A185322 (n + 1)

end A185322

/-! ## A185322.P6220003478180726006

`A226233(A006005(n+1))`
-/

namespace A185322.P6220003478180726006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A006005 (n + 1)).toNat

end

end A185322.P6220003478180726006

namespace A185322

/-- `A226233(A006005(n+1))` -/
def P6220003478180726006.Spec : Prop :=
  ∀ n, P6220003478180726006.a n = A185322 (n + 1)

end A185322

/-!
# A185323: E.g.f. A(x) = 1/(2-tan(x)-sec(x)).

The programs for A185323, there is no canonical definition to state claims against.
-/

/-! ## A185323.P9774587710790714566

`A033270(A216435(2*n)+2)`
-/

namespace A185323.P9774587710790714566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A216435 (2 * n) + 2).toNat

end

end A185323.P9774587710790714566

/-! ## A185323.P5980161711038845185

`A003602(A111530(n)+A002450(n))`
-/

namespace A185323.P5980161711038845185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A111530 n + A002450 n).toNat

end

end A185323.P5980161711038845185

/-!
# A185324: E.g.f. log(1/(2-tan(x)-sec(x))).

The programs for A185324, there is no canonical definition to state claims against.
-/

/-! ## A185324.P7917538831380739643

`∑[∑[A339218(∑[n²])]]-1`
-/

namespace A185324.P7917538831380739643
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A185324.P7917538831380739643

/-! ## A185324.P13345657045628427994

`A090735(∏[∑[∏{e}[n+1, #]]])`
-/

namespace A185324.P13345657045628427994
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A185324.P13345657045628427994

/-!
# A185325: Number of partitions of n into parts >= 5.

The programs for A185325, there is no canonical definition to state claims against.
-/

/-! ## A185325.P4895581206467016461

`A026798(n+5)`
-/

namespace A185325.P4895581206467016461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 5)

end

end A185325.P4895581206467016461

/-! ## A185325.P8251985528127700757

`A026798(A020710(n))*A060576(n)`
-/

namespace A185325.P8251985528127700757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (A020710 n).toNat * A060576 n

end

end A185325.P8251985528127700757

/-! ## A185325.P10468267376512848184

`A008484(n)-A026797(abs(1-n)+1)`
-/

namespace A185325.P10468267376512848184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A026797 (|1 - (n : ℤ)| + 1).toNat

end

end A185325.P10468267376512848184

/-! ## A185325.P3990862275249281097

`A026797(n+4)-A026797(A028310(n))`
-/

namespace A185325.P3990862275249281097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 4) - A026797 (A028310 n).toNat

end

end A185325.P3990862275249281097

/-! ## A185325.P8770393729615622717

`A026798(A020710(n))*A057427(A008486(n))`
-/

namespace A185325.P8770393729615622717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (A020710 n).toNat * A057427 (A008486 n).toNat

end

end A185325.P8770393729615622717

/-! ## A185325.P3782061844290396589

`A026798(A020710(n))-A048158(A000124(n))`
-/

namespace A185325.P3782061844290396589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (A020710 n).toNat - A048158 (A000124 n).toNat

end

end A185325.P3782061844290396589

/-! ## A185325.P17846053092603941237

`A009001(A002378(n))²*A026798(A020710(n))`
-/

namespace A185325.P17846053092603941237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A002378 n).toNat ^ 2 * A026798 (A020710 n).toNat

end

end A185325.P17846053092603941237

/-! ## A185325.P15278320792188288708

`A026794(A167499(n+3))`
-/

namespace A185325.P15278320792188288708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167499 (n + 3)).toNat

end

end A185325.P15278320792188288708

/-! ## A185325.P12765064025717148465

`A026794(A155212(n)+13)`
-/

namespace A185325.P12765064025717148465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A155212 n + 13).toNat

end

end A185325.P12765064025717148465

/-! ## A185325.P12522089353201407046

`A026794(A056000(n)+15)`
-/

namespace A185325.P12522089353201407046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A056000 n + 15).toNat

end

end A185325.P12522089353201407046

/-! ## A185325.P3961333813798501323

`A026794(A000124(n+4)+4)`
-/

namespace A185325.P3961333813798501323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 (n + 4) + 4).toNat

end

end A185325.P3961333813798501323

/-! ## A185325.P5576475238284419168

`A026794(A000217(n+4)+5)`
-/

namespace A185325.P5576475238284419168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000217 (n + 4) + 5).toNat

end

end A185325.P5576475238284419168

/-! ## A185325.P3544536607630823421

`A026794(A016028(n+8)-(n+3))`
-/

namespace A185325.P3544536607630823421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A016028 (n + 8) - (n + 3 : ℤ)).toNat

end

end A185325.P3544536607630823421

/-! ## A185325.P8889267400148558157

`A303810(Δ[A264443(n)])`
-/

namespace A185325.P8889267400148558157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (f1 (n + 1) - f1 n).toNat

end

end A185325.P8889267400148558157

/-! ## A185325.P4751160288569649398

`A303810(A264443(n+1)-A264443(n))`
-/

namespace A185325.P4751160288569649398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (A264443 (n + 1) - A264443 n).toNat

end

end A185325.P4751160288569649398

/-!
# A185326: Number of partitions of n into parts >= 6.

The programs for A185326, there is no canonical definition to state claims against.
-/

/-! ## A185326.P5624672513013902541

`A185226(n)+A185116(n)`
-/

namespace A185326.P5624672513013902541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185226 n + A185116 n

end

end A185326.P5624672513013902541

/-! ## A185326.P9630340410134468029

`A185327(n)+A026799(n)`
-/

namespace A185326.P9630340410134468029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n + A026799 n

end

end A185326.P9630340410134468029

/-! ## A185326.P12688355660059842364

`A026799(n+6)`
-/

namespace A185326.P12688355660059842364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 (n + 6)

end

end A185326.P12688355660059842364

/-! ## A185326.P12888060514978533229

`A026798(A020710(n))-A026798(n)*A057427(n)`
-/

namespace A185326.P12888060514978533229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (A020710 n).toNat - A026798 n * A057427 n

end

end A185326.P12888060514978533229

/-! ## A185326.P6098483920586974184

`A185325(n)-A026798(n)%A000041(n)`
-/

namespace A185326.P6098483920586974184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - Int.tmod (A026798 n) (A000041 n)

end

end A185326.P6098483920586974184

/-! ## A185326.P13997660493545279928

`A185325(n)-A026798(A233583(n+1))`
-/

namespace A185326.P13997660493545279928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A026798 (A233583 (n + 1)).toNat

end

end A185326.P13997660493545279928

/-! ## A185326.P5984521524236806796

`A026794(A166136(n+4))`
-/

namespace A185326.P5984521524236806796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A166136 (n + 4)).toNat

end

end A185326.P5984521524236806796

/-! ## A185326.P7231134245812199269

`A026794(A056115(n)+21)`
-/

namespace A185326.P7231134245812199269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A056115 n + 21).toNat

end

end A185326.P7231134245812199269

/-! ## A185326.P7284357175262233944

`A026794(A246172(n+1)+20)`
-/

namespace A185326.P7284357175262233944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A246172 (n + 1) + 20).toNat

end

end A185326.P7284357175262233944

/-! ## A185326.P8350293189744238267

`A303810(Δ[A264443(n+1)]-1)`
-/

namespace A185326.P8350293189744238267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303810 (f1 (n + 1) - f1 n - 1).toNat

end

end A185326.P8350293189744238267

/-!
# A185327: Number of partitions of n into parts >= 7.

The programs for A185327, there is no canonical definition to state claims against.
-/

/-! ## A185327.P13842985454985933578

`A185328(n)+A026800(n)`
-/

namespace A185327.P13842985454985933578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n + A026800 n

end

end A185327.P13842985454985933578

/-! ## A185327.P7643580311641227068

`A185227(n)+A185117(n)`
-/

namespace A185327.P7643580311641227068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185227 n + A185117 n

end

end A185327.P7643580311641227068

/-! ## A185327.P4932761343400213662

`A185326(n)-A026799(n)`
-/

namespace A185327.P4932761343400213662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A026799 n

end

end A185327.P4932761343400213662

/-! ## A185327.P18010501235184367899

`A185227(n)+A179184(A000194(n))`
-/

namespace A185327.P18010501235184367899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185227 n + A179184 (A000194 n).toNat

end

end A185327.P18010501235184367899

/-! ## A185327.P2504940269506341724

`A185227(n)+A185114(A110654(n))`
-/

namespace A185327.P2504940269506341724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185227 n + A185114 (A110654 n).toNat

end

end A185327.P2504940269506341724

/-! ## A185327.P9074594001012574386

`A185227(n)+A185114(A123578(n))`
-/

namespace A185327.P9074594001012574386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185227 n + A185114 (A123578 n).toNat

end

end A185327.P9074594001012574386

/-! ## A185327.P1737731665328563590

`A185017(n)+A185227(n)+A185118(n)`
-/

namespace A185327.P1737731665328563590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n + (A185227 n + A185118 n)

end

end A185327.P1737731665328563590

/-! ## A185327.P16893869188731952112

`A026800(n+7)`
-/

namespace A185327.P16893869188731952112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026800 (n + 7)

end

end A185327.P16893869188731952112

/-! ## A185327.P8948001059153105772

`A026799(n+6)-A026799(n)`
-/

namespace A185327.P8948001059153105772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 (n + 6) - A026799 n

end

end A185327.P8948001059153105772

/-! ## A185327.P773260204985012459

`A185227(n)+A185114(A002265(2*(n+1)))`
-/

namespace A185327.P773260204985012459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185227 n + A185114 (A002265 (2 * (n + 1))).toNat

end

end A185327.P773260204985012459

/-! ## A185327.P1391272747790805990

`A026794(A167499(n+5)+2)`
-/

namespace A185327.P1391272747790805990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167499 (n + 5) + 2).toNat

end

end A185327.P1391272747790805990

/-! ## A185327.P5985138594675325672

`A026794(A000124(n+6)+6)`
-/

namespace A185327.P5985138594675325672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 (n + 6) + 6).toNat

end

end A185327.P5985138594675325672

/-! ## A185327.P14773473079702963028

`A026794(A000096(n+5)+8)`
-/

namespace A185327.P14773473079702963028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000096 (n + 5) + 8).toNat

end

end A185327.P14773473079702963028

/-! ## A185327.P2341470367840015942

`A026794(A000217(n+6)+7)`
-/

namespace A185327.P2341470367840015942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000217 (n + 6) + 7).toNat

end

end A185327.P2341470367840015942

/-! ## A185327.P10237168195527258220

`A026794(A034856(n+5)+9)`
-/

namespace A185327.P10237168195527258220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A034856 (n + 5) + 9).toNat

end

end A185327.P10237168195527258220

/-! ## A185327.P14801403432331542868

`A026794(A052905(n+5)-A005408(n+1))`
-/

namespace A185327.P14801403432331542868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A052905 (n + 5) - A005408 (n + 1)).toNat

end

end A185327.P14801403432331542868

/-! ## A185327.P14052013615788981011

`A026794(A167614(n+3)+A005408(n+7))`
-/

namespace A185327.P14052013615788981011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167614 (n + 3) + A005408 (n + 7)).toNat

end

end A185327.P14052013615788981011

/-!
# A185328: Number of partitions of n with parts >= 8.

The programs for A185328, there is no canonical definition to state claims against.
-/

/-! ## A185328.P17928481744443841129

`A185228(n)+A185118(n)`
-/

namespace A185328.P17928481744443841129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185228 n + A185118 n

end

end A185328.P17928481744443841129

/-! ## A185328.P2274871906023563698

`A185327(n)-A026800(n)`
-/

namespace A185328.P2274871906023563698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A026800 n

end

end A185328.P2274871906023563698

/-! ## A185328.P11161614234327257462

`A185228(n)+A185114(A004525(n))`
-/

namespace A185328.P11161614234327257462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185228 n + A185114 (A004525 n).toNat

end

end A185328.P11161614234327257462

/-! ## A185328.P17182323947252464832

`A185228(n)+A185116(A219642(n))`
-/

namespace A185328.P17182323947252464832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185228 n + A185116 (A219642 n).toNat

end

end A185328.P17182323947252464832

/-! ## A185328.P13474631167864395454

`A185228(n)+A179184(A202276(n+1))`
-/

namespace A185328.P13474631167864395454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185228 n + A179184 (A202276 (n + 1)).toNat

end

end A185328.P13474631167864395454

/-! ## A185328.P12940354315876528312

`A185326(n)-(A026800(n)+A026799(n))`
-/

namespace A185328.P12940354315876528312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - (A026800 n + A026799 n)

end

end A185328.P12940354315876528312

/-! ## A185328.P12933938948247036139

`A026800(n+7)-A026800(n)`
-/

namespace A185328.P12933938948247036139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026800 (n + 7) - A026800 n

end

end A185328.P12933938948247036139

/-! ## A185328.P2017187761154782678

`A026801(n+8)`
-/

namespace A185328.P2017187761154782678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026801 (n + 8)

end

end A185328.P2017187761154782678

/-! ## A185328.P6972505228100720673

`A026794(A000124(n+7)+7)`
-/

namespace A185328.P6972505228100720673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 (n + 7) + 7).toNat

end

end A185328.P6972505228100720673

/-! ## A185328.P15766817357915667178

`A026794(A000217(n+7)+8)`
-/

namespace A185328.P15766817357915667178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000217 (n + 7) + 8).toNat

end

end A185328.P15766817357915667178

/-! ## A185328.P11821353717296511325

`A026794(A027379(n+7)-A004275(n+4))`
-/

namespace A185328.P11821353717296511325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A027379 (n + 7) - A004275 (n + 4)).toNat

end

end A185328.P11821353717296511325

/-! ## A185328.P15873560108350660295

`A026794(A000096(n+8)-A004275(n+5))`
-/

namespace A185328.P15873560108350660295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000096 (n + 8) - A004275 (n + 5)).toNat

end

end A185328.P15873560108350660295

/-!
# A185329: Number of partitions of n with parts >= 9.

The programs for A185329, there is no canonical definition to state claims against.
-/

/-! ## A185329.P15099370395303382244

`A185229(n)+A185119(n)`
-/

namespace A185329.P15099370395303382244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185119 n

end

end A185329.P15099370395303382244

/-! ## A185329.P934838259395201600

`A185229(n)+A060576(A110656(n))`
-/

namespace A185329.P934838259395201600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A060576 (A110656 n).toNat

end

end A185329.P934838259395201600

/-! ## A185329.P10185596406914856977

`A185229(n)+A179184(A000196(n))`
-/

namespace A185329.P10185596406914856977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A179184 (A000196 n).toNat

end

end A185329.P10185596406914856977

/-! ## A185329.P9429932436831131814

`A185229(n)+A185115(A004525(n))`
-/

namespace A185329.P9429932436831131814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185115 (A004525 n).toNat

end

end A185329.P9429932436831131814

/-! ## A185329.P7523044943616150507

`A185229(n)+A185116(A005374(n))`
-/

namespace A185329.P7523044943616150507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185116 (A005374 n).toNat

end

end A185329.P7523044943616150507

/-! ## A185329.P9575064798919459570

`A185229(n)+A185116(A073188(n))`
-/

namespace A185329.P9575064798919459570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185116 (A073188 n).toNat

end

end A185329.P9575064798919459570

/-! ## A185329.P11888700043237521603

`A185229(n)+A185115(A110654(n))`
-/

namespace A185329.P11888700043237521603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185115 (A110654 n).toNat

end

end A185329.P11888700043237521603

/-! ## A185329.P4248118506707003637

`A185229(n)+A185118(A121856(n))`
-/

namespace A185329.P4248118506707003637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185118 (A121856 n).toNat

end

end A185329.P4248118506707003637

/-! ## A185329.P11670430942371815354

`A185229(n)+A185114(A202276(n+1))`
-/

namespace A185329.P11670430942371815354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185229 n + A185114 (A202276 (n + 1)).toNat

end

end A185329.P11670430942371815354

/-! ## A185329.P5283042970581358786

`A026802(n+9)`
-/

namespace A185329.P5283042970581358786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026802 (n + 9)

end

end A185329.P5283042970581358786

/-! ## A185329.P16993984697168068460

`A185328(n)-A026801(A233583(n+1))`
-/

namespace A185329.P16993984697168068460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n - A026801 (A233583 (n + 1)).toNat

end

end A185329.P16993984697168068460

/-! ## A185329.P17896157876795221871

`A026794(A008458(n+7)+A000217(n+2))`
-/

namespace A185329.P17896157876795221871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A008458 (n + 7) + A000217 (n + 2)).toNat

end

end A185329.P17896157876795221871

/-! ## A185329.P6851280950450741277

`A026794(A004767(n+8)+A000217(n+4))`
-/

namespace A185329.P6851280950450741277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A004767 (n + 8) + A000217 (n + 4)).toNat

end

end A185329.P6851280950450741277

/-!
# A185331: Riordan array ((1-x+x^2)/(1+x^2), x/(1+x^2)).

The programs for A185331, the canonical program `A185331.P6064579063357933049` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185331 has offset 0).

The definition of A185331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185331.P9020111972643325307

`A049310(n)+A130777(n)-A108045(n)`
-/

namespace A185331.P9020111972643325307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n + (A130777 n - A108045 n)

end

end A185331.P9020111972643325307

namespace A185331

/-- `A049310(n)+A130777(n)-A108045(n)` -/
def P9020111972643325307.Spec : Prop :=
  ∀ n, P9020111972643325307.a n = A185331 n

end A185331

/-! ## A185331.P10068975634072843328

`A128174(n+1)*A130777(n)-(A108045(n)-A130777(n))`
-/

namespace A185331.P10068975634072843328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A130777 n - (A108045 n - A130777 n)

end

end A185331.P10068975634072843328

namespace A185331

/-- `A128174(n+1)*A130777(n)-(A108045(n)-A130777(n))` -/
def P10068975634072843328.Spec : Prop :=
  ∀ n, P10068975634072843328.a n = A185331 n

end A185331

/-! ## A185331.P7433710506901530338

`A053119(A061579(n))-(A108045(n)-A130777(n))`
-/

namespace A185331.P7433710506901530338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A061579 n).toNat - (A108045 n - A130777 n)

end

end A185331.P7433710506901530338

namespace A185331

/-- `A053119(A061579(n))-(A108045(n)-A130777(n))` -/
def P7433710506901530338.Spec : Prop :=
  ∀ n, P7433710506901530338.a n = A185331 n

end A185331

/-! ## A185331.P6064579063357933049

`A049310(n)-A133607(A038722(n+2))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A185331

/-- `A049310(n)-A133607(A038722(n+2))` -/
def P6064579063357933049.Spec : Prop :=
  ∀ n, P6064579063357933049.a n = A185331 n

theorem P6064579063357933049.correct : P6064579063357933049.Spec := by
  intro n
  simp only [A185331]

end A185331

/-! ## A185331.P8207419881713569850

`A053119(A038722(n+2))-(A108045(n)-A130777(n))`
-/

namespace A185331.P8207419881713569850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A038722 (n + 2)).toNat - (A108045 n - A130777 n)

end

end A185331.P8207419881713569850

namespace A185331

/-- `A053119(A038722(n+2))-(A108045(n)-A130777(n))` -/
def P8207419881713569850.Spec : Prop :=
  ∀ n, P8207419881713569850.a n = A185331 n

end A185331

/-! ## A185331.P1510059754702906548

`A056594(A095832(n+1))*A206474(n)`
-/

namespace A185331.P1510059754702906548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A095832 (n + 1)).toNat * A206474 n

end

end A185331.P1510059754702906548

namespace A185331

/-- `A056594(A095832(n+1))*A206474(n)` -/
def P1510059754702906548.Spec : Prop :=
  ∀ n, P1510059754702906548.a n = A185331 n

end A185331

/-! ## A185331.P4158784845860628091

`A033999(A245300(n))*A206474(n)`
-/

namespace A185331.P4158784845860628091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A245300 n).toNat * A206474 n

end

end A185331.P4158784845860628091

namespace A185331

/-- `A033999(A245300(n))*A206474(n)` -/
def P4158784845860628091.Spec : Prop :=
  ∀ n, P4158784845860628091.a n = A185331 n

end A185331

/-!
# A185333: Number of binary necklaces of n beads for which a cut exists producing a palindrome.

The programs for A185333, the canonical program `A185333.P14986518920725297879` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185333 has offset 1).

The definition of A185333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185333.P14986518920725297879

`A082392(n)+A016116(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185333

/-- `A082392(n)+A016116(n)` -/
def P14986518920725297879.Spec : Prop :=
  ∀ n, P14986518920725297879.a n = A185333 (n + 1)

theorem P14986518920725297879.correct : P14986518920725297879.Spec := by
  intro n
  simp only [A185333, Nat.add_sub_cancel]

end A185333

/-! ## A185333.P8183197371616258782

`A016116((n+1)/(or(n, n+1)-n))+A016116(n)`
-/

namespace A185333.P8183197371616258782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat + A016116 n

end

end A185333.P8183197371616258782

namespace A185333

/-- `A016116((n+1)/(or(n, n+1)-n))+A016116(n)` -/
def P8183197371616258782.Spec : Prop :=
  ∀ n, P8183197371616258782.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P11747057461355723372

`A016116((n+1)/xor(n, or(n, n+1)))+A016116(n)`
-/

namespace A185333.P11747057461355723372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat + A016116 n

end

end A185333.P11747057461355723372

namespace A185333

/-- `A016116((n+1)/xor(n, or(n, n+1)))+A016116(n)` -/
def P11747057461355723372.Spec : Prop :=
  ∀ n, P11747057461355723372.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P12390990382335033875

`A016116((n+1)/and(n+1, -(n+1)))+A016116(n)`
-/

namespace A185333.P12390990382335033875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + A016116 n

end

end A185333.P12390990382335033875

namespace A185333

/-- `A016116((n+1)/and(n+1, -(n+1)))+A016116(n)` -/
def P12390990382335033875.Spec : Prop :=
  ∀ n, P12390990382335033875.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P17963412842376278290

`A016116(2*(n+1)/(xor(n, n+1)+1))+A016116(n)`
-/

namespace A185333.P17963412842376278290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat + A016116 n

end

end A185333.P17963412842376278290

namespace A185333

/-- `A016116(2*(n+1)/(xor(n, n+1)+1))+A016116(n)` -/
def P17963412842376278290.Spec : Prop :=
  ∀ n, P17963412842376278290.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P10471662701619495910

`A016116(n)+A016116(A153733(n))`
-/

namespace A185333.P10471662701619495910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A016116 (A153733 n).toNat

end

end A185333.P10471662701619495910

namespace A185333

/-- `A016116(n)+A016116(A153733(n))` -/
def P10471662701619495910.Spec : Prop :=
  ∀ n, P10471662701619495910.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P7451084334966820247

`A016116(A000265(n+1))+A016116(n)`
-/

namespace A185333.P7451084334966820247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000265 (n + 1)).toNat + A016116 n

end

end A185333.P7451084334966820247

namespace A185333

/-- `A016116(A000265(n+1))+A016116(n)` -/
def P7451084334966820247.Spec : Prop :=
  ∀ n, P7451084334966820247.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P10611830775556559875

`A016116(2*A025480(n))+A016116(n)`
-/

namespace A185333.P10611830775556559875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A025480 n).toNat + A016116 n

end

end A185333.P10611830775556559875

namespace A185333

/-- `A016116(2*A025480(n))+A016116(n)` -/
def P10611830775556559875.Spec : Prop :=
  ∀ n, P10611830775556559875.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P13350178002398124471

`A016116(A139391(2*(n+1)))+A016116(n)`
-/

namespace A185333.P13350178002398124471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A139391 (2 * (n + 1))).toNat + A016116 n

end

end A185333.P13350178002398124471

namespace A185333

/-- `A016116(A139391(2*(n+1)))+A016116(n)` -/
def P13350178002398124471.Spec : Prop :=
  ∀ n, P13350178002398124471.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P13131984437589144732

`A016116((n+1)/A006519(n+1))+A016116(n)`
-/

namespace A185333.P13131984437589144732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat + A016116 n

end

end A185333.P13131984437589144732

namespace A185333

/-- `A016116((n+1)/A006519(n+1))+A016116(n)` -/
def P13131984437589144732.Spec : Prop :=
  ∀ n, P13131984437589144732.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P4392501460160355144

`A016116((n+1)/A000010(xor(n, n+1)+1))+A016116(n)`
-/

namespace A185333.P4392501460160355144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))).toNat + A016116 n

end

end A185333.P4392501460160355144

namespace A185333

/-- `A016116((n+1)/A000010(xor(n, n+1)+1))+A016116(n)` -/
def P4392501460160355144.Spec : Prop :=
  ∀ n, P4392501460160355144.a n = A185333 (n + 1)

end A185333

/-! ## A185333.P13686135719473982983

`A000079(A004526(n))+A000079(A025480(n))`
-/

namespace A185333.P13686135719473982983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n).toNat + A000079 (A025480 n).toNat

end

end A185333.P13686135719473982983

namespace A185333

/-- `A000079(A004526(n))+A000079(A025480(n))` -/
def P13686135719473982983.Spec : Prop :=
  ∀ n, P13686135719473982983.a n = A185333 (n + 1)

end A185333

/-!
# A185334: Number of not necessarily connected 3-regular simple graphs on 2n vertices with girth at least 4.

The programs for A185334, there is no canonical definition to state claims against.
-/

/-! ## A185334.P17543614971437195187

`A185234(n)+A014371(n)`
-/

namespace A185334.P17543614971437195187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n + A014371 n

end

end A185334.P17543614971437195187

/-! ## A185334.P1861588136613454417

`A185335(n)+A185134(n)`
-/

namespace A185334.P1861588136613454417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185335 n + A185134 n

end

end A185334.P1861588136613454417

/-! ## A185334.P14627024078069730104

`A005638(n)-A185133(n)`
-/

namespace A185334.P14627024078069730104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - A185133 n

end

end A185334.P14627024078069730104

/-! ## A185334.P8182086706622312938

`A006924(n)+A185234(n)+A014372(n)`
-/

namespace A185334.P8182086706622312938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 n + (A185234 n + A014372 n)

end

end A185334.P8182086706622312938

/-! ## A185334.P8080138829328590968

`A006924(n)+A185335(n)+A185034(n)`
-/

namespace A185334.P8080138829328590968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 n + (A185335 n + A185034 n)

end

end A185334.P8080138829328590968

/-!
# A185335: Number of not necessarily connected 3-regular simple graphs on 2n vertices with girth at least 5.

The programs for A185335, there is no canonical definition to state claims against.
-/

/-! ## A185335.P10681553278573554248

`A185235(n)+A014372(n)`
-/

namespace A185335.P10681553278573554248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185235 n + A014372 n

end

end A185335.P10681553278573554248

/-! ## A185335.P6607703310426117654

`A185336(n)+A185135(n)`
-/

namespace A185335.P6607703310426117654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185336 n + A185135 n

end

end A185335.P6607703310426117654

/-! ## A185335.P12942445205513058547

`A185334(n)-A185134(n)`
-/

namespace A185335.P12942445205513058547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185334 n - A185134 n

end

end A185335.P12942445205513058547

/-! ## A185335.P17983707200164870479

`A006925(n)+A185235(n)+A014374(n)`
-/

namespace A185335.P17983707200164870479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006925 n + (A185235 n + A014374 n)

end

end A185335.P17983707200164870479

/-! ## A185335.P6579183538459453133

`A006925(n)+A185336(n)+A185035(n)`
-/

namespace A185335.P6579183538459453133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006925 n + (A185336 n + A185035 n)

end

end A185335.P6579183538459453133

/-!
# A185336: Number of not necessarily connected 3-regular simple graphs on 2n vertices with girth at least 6.

The programs for A185336, there is no canonical definition to state claims against.
-/

/-! ## A185336.P14554019197085979349

`A185036(n)+A014374(n)`
-/

namespace A185336.P14554019197085979349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A014374 n

end

end A185336.P14554019197085979349

/-! ## A185336.P5832394347501981587

`A185236(n)+A014374(n)`
-/

namespace A185336.P5832394347501981587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + A014374 n

end

end A185336.P5832394347501981587

/-! ## A185336.P8573460053926021899

`A014374(n)-(A011738(n)-A185236(n))`
-/

namespace A185336.P8573460053926021899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n - (A011738 n - A185236 n)

end

end A185336.P8573460053926021899

/-! ## A185336.P16645544421978464893

`A014374(n)-(A011744(n)-A185236(n))`
-/

namespace A185336.P16645544421978464893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n - (A011744 n - A185236 n)

end

end A185336.P16645544421978464893

/-! ## A185336.P8552833228082413283

`A014374(n)-(A025438(n)-A185236(n))`
-/

namespace A185336.P8552833228082413283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n - (A025438 n - A185236 n)

end

end A185336.P8552833228082413283

/-!
# A185337: Primes p(n) such that p(n) < 2^((p(n+1) - p(n))/2).

The programs for A185337, there is no canonical definition to state claims against.
-/

/-! ## A185337.P18307533383718626422

`p?[gcd(A060265(n+2), A088948(n+1))]`
-/

namespace A185337.P18307533383718626422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060265 (n + 2)) (A088948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A185337.P18307533383718626422

/-!
# A185340: Irregular triangle E(n,g) counting not necessarily connected 4-regular simple graphs on n vertices with girth at least g.

The programs for A185340, there is no canonical definition to state claims against.
-/

/-! ## A185340.P10306657944163264995

`A235145((n²+8)²)+A184941(n+5)`
-/

namespace A185340.P10306657944163264995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 ((n ^ 2 + 8) ^ 2) + A184941 (n + 5)

end

end A185340.P10306657944163264995

/-! ## A185340.P1075116685486542498

`A184941(n+5)+A102679(A000108(n))`
-/

namespace A185340.P1075116685486542498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184941 (n + 5) + A102679 (A000108 n).toNat

end

end A185340.P1075116685486542498

/-! ## A185340.P7435108963973523742

`A184941(n+5)+A011731(A185134(n))`
-/

namespace A185340.P7435108963973523742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184941 (n + 5) + A011731 (A185134 n).toNat

end

end A185340.P7435108963973523742

/-! ## A185340.P1691154666124461764

`A230106(A185034(n))+A184941(n+5)`
-/

namespace A185340.P1691154666124461764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 (A185034 n).toNat + A184941 (n + 5)

end

end A185340.P1691154666124461764

/-!
# A185342: Triangle of successive recurrences in columns of A117317(n).

The programs for A185342, the canonical program `A185342.P17628851280790117132` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185342 has offset 0).

The definition of A185342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185342.P17628851280790117132

`2*A033999(A002262(n))*A193862(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A185342

/-- `2*A033999(A002262(n))*A193862(n)` -/
def P17628851280790117132.Spec : Prop :=
  ∀ n, P17628851280790117132.a n = A185342 n

theorem P17628851280790117132.correct : P17628851280790117132.Spec := by
  intro n
  simp only [A185342]

end A185342

/-! ## A185342.P15747291003928654637

`A062157(A002260(n+1))*A276985(n+1)`
-/

namespace A185342.P15747291003928654637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A276985 (n + 1)

end

end A185342.P15747291003928654637

namespace A185342

/-- `A062157(A002260(n+1))*A276985(n+1)` -/
def P15747291003928654637.Spec : Prop :=
  ∀ n, P15747291003928654637.a n = A185342 n

end A185342

/-! ## A185342.P9016300525772769580

`A013609(A014132(n+1))*A033999(A002262(n))`
-/

namespace A185342.P9016300525772769580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat * A033999 (A002262 n).toNat

end

end A185342.P9016300525772769580

namespace A185342

/-- `A013609(A014132(n+1))*A033999(A002262(n))` -/
def P9016300525772769580.Spec : Prop :=
  ∀ n, P9016300525772769580.a n = A185342 n

end A185342

/-! ## A185342.P9763133257345142989

`A013609(A014132(n+1))*A097807(A061579(n))`
-/

namespace A185342.P9763133257345142989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat * A097807 (A061579 n).toNat

end

end A185342.P9763133257345142989

namespace A185342

/-- `A013609(A014132(n+1))*A097807(A061579(n))` -/
def P9763133257345142989.Spec : Prop :=
  ∀ n, P9763133257345142989.a n = A185342 n

end A185342

/-! ## A185342.P5250681341248144357

`A013609(A014132(n+1))*A097807(A112367(n))`
-/

namespace A185342.P5250681341248144357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat * A097807 (A112367 n).toNat

end

end A185342.P5250681341248144357

namespace A185342

/-- `A013609(A014132(n+1))*A097807(A112367(n))` -/
def P5250681341248144357.Spec : Prop :=
  ∀ n, P5250681341248144357.a n = A185342 n

end A185342

/-! ## A185342.P14223182511217279104

`A303872(A014132(n+1))*A303872(A057944(n))`
-/

namespace A185342.P14223182511217279104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (A014132 (n + 1)).toNat * A303872 (A057944 n).toNat

end

end A185342.P14223182511217279104

namespace A185342

/-- `A303872(A014132(n+1))*A303872(A057944(n))` -/
def P14223182511217279104.Spec : Prop :=
  ∀ n, P14223182511217279104.a n = A185342 n

end A185342

/-! ## A185342.P7463708855848696101

`A013609(A014132(n+1))*A062157(A002260(n+1))`
-/

namespace A185342.P7463708855848696101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat * A062157 (A002260 (n + 1)).toNat

end

end A185342.P7463708855848696101

namespace A185342

/-- `A013609(A014132(n+1))*A062157(A002260(n+1))` -/
def P7463708855848696101.Spec : Prop :=
  ∀ n, P7463708855848696101.a n = A185342 n

end A185342

/-! ## A185342.P9054180523473418207

`A013609(A003057(n+2)+n)*A097807(A061579(n))`
-/

namespace A185342.P9054180523473418207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A003057 (n + 2) + (n : ℤ)).toNat * A097807 (A061579 n).toNat

end

end A185342.P9054180523473418207

namespace A185342

/-- `A013609(A003057(n+2)+n)*A097807(A061579(n))` -/
def P9054180523473418207.Spec : Prop :=
  ∀ n, P9054180523473418207.a n = A185342 n

end A185342

/-! ## A185342.P15289949417428853255

`2*A062157(A063657(n+1))*A193862(n)`
-/

namespace A185342.P15289949417428853255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062157 (A063657 (n + 1)).toNat * A193862 n)

end

end A185342.P15289949417428853255

namespace A185342

/-- `2*A062157(A063657(n+1))*A193862(n)` -/
def P15289949417428853255.Spec : Prop :=
  ∀ n, P15289949417428853255.a n = A185342 n

end A185342

/-! ## A185342.P7277277711107154575

`A013609(A014132(n+1))*A165586(A059268(n))`
-/

namespace A185342.P7277277711107154575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat * A165586 (A059268 n).toNat

end

end A185342.P7277277711107154575

namespace A185342

/-- `A013609(A014132(n+1))*A165586(A059268(n))` -/
def P7277277711107154575.Spec : Prop :=
  ∀ n, P7277277711107154575.a n = A185342 n

end A185342

/-!
# A185343: Least positive number k such that k*p+1 divides 2^p+1 where p is prime(n), or 0 if no such number exists.

The programs for A185343, there is no canonical definition to state claims against.
-/

/-! ## A185343.P11135956729546513825

`A165920(A156037(n+1)%A017365(a(n-1))+1)` with `a(0)=2`
-/

namespace A185343.P11135956729546513825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A165920 (Int.tmod (A156037 (n + 1)) (A017365 (a (n - 1)).toNat) + 1).toNat

end

end A185343.P11135956729546513825

/-! ## A185343.P10347171116735904402

`2*A103221(A164740(n+1))`
-/

namespace A185343.P10347171116735904402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103221 (A164740 (n + 1)).toNat

end

end A185343.P10347171116735904402

/-!
# A185344: Number of not necessarily connected 4-regular simple graphs on n vertices with girth at least 4.

The programs for A185344, there is no canonical definition to state claims against.
-/

/-! ## A185344.P9758030093721836915

`A185044(n)+A033886(n)`
-/

namespace A185344.P9758030093721836915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A033886 n

end

end A185344.P9758030093721836915

/-! ## A185344.P4362827390642579267

`A185144(n)+A058343(n)`
-/

namespace A185344.P4362827390642579267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185144 n + A058343 n

end

end A185344.P4362827390642579267

/-! ## A185344.P3213809278185466151

`A033301(n)-A185143(n)`
-/

namespace A185344.P3213809278185466151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A185143 n

end

end A185344.P3213809278185466151

/-! ## A185344.P16122500967710790611

`A058343(n)+A185044(n)+A184944(n)`
-/

namespace A185344.P16122500967710790611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n + (A185044 n + A184944 n)

end

end A185344.P16122500967710790611

/-! ## A185344.P15517388017664029224

`A058348(n)+A185144(n)+A184945(n)`
-/

namespace A185344.P15517388017664029224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n + (A185144 n + A184945 n)

end

end A185344.P15517388017664029224

/-!
# A185345: Numbers that are not the sum of two rational cubes.

The programs for A185345, there is no canonical definition to state claims against.
-/

/-! ## A185345.P2654607733643744098

`∩[A022555(n+1), A309960(n+1)]`
-/

namespace A185345.P2654607733643744098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185345.P2654607733643744098

/-! ## A185345.P4926866284589807978

`∩[A022555(n+1), comp[A159843(n+1)]]`
-/

namespace A185345.P4926866284589807978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022555 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A185345.P4926866284589807978

/-! ## A185345.P14916350828226136612

`eq[A060838(A028310(n)), A175362(n)]`
-/

namespace A185345.P14916350828226136612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185345.P14916350828226136612

/-! ## A185345.P7561076900012271962

`eq[char[A159843(n+2)], A061007(2*(n+1))]`
-/

namespace A185345.P7561076900012271962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185345.P7561076900012271962

/-! ## A185345.P5827666489385301145

`eq[A060838(A022144(n)), A175362(n)]`
-/

namespace A185345.P5827666489385301145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185345.P5827666489385301145

/-!
# A185346: a(n) = 2^n - 9.

The programs for A185346, the canonical program `A185346.P8390841429819542791` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185346 has offset 0).

The definition of A185346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-9` (program `A185346.P8390841429819542791`, by `A185346.P8390841429819542791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185346.P8390841429819542791

`2^n-9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185346

/-- `2^n-9` -/
def P8390841429819542791.Spec : Prop :=
  ∀ n, P8390841429819542791.a n = A185346 n

theorem P8390841429819542791.correct : P8390841429819542791.Spec := by
  intro n
  simp only [A185346]

end A185346

/-!
# A185347: Semiprimes that are the sum of 10 consecutive primes.

The programs for A185347, the canonical program `A185347.P5405652770871536656` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185347 has offset 1).

The definition of A185347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185347.P5405652770871536656

`∩[A064899(n+1), A127337(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A185347

/-- `∩[A064899(n+1), A127337(n+1)]` -/
def P5405652770871536656.Spec : Prop :=
  ∀ n, (P5405652770871536656.a n : ℤ) = A185347 (n + 1)

theorem P5405652770871536656.correct : P5405652770871536656.Spec := by
  intro n
  simp only [A185347, Nat.add_sub_cancel]

end A185347

/-! ## A185347.P16275583861463578602

`filter[A127337(n+1), A064911(#)]`
-/

namespace A185347.P16275583861463578602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A185347.P16275583861463578602

namespace A185347

/-- `filter[A127337(n+1), A064911(#)]` -/
def P16275583861463578602.Spec : Prop :=
  ∀ n, P16275583861463578602.a n = A185347 (n + 1)

end A185347

/-! ## A185347.P5612234215680989407

`record[A066048(A127337(n+1))]`
-/

namespace A185347.P5612234215680989407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A127337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185347.P5612234215680989407

namespace A185347

/-- `record[A066048(A127337(n+1))]` -/
def P5612234215680989407.Spec : Prop :=
  ∀ n, P5612234215680989407.a n = A185347 (n + 1)

end A185347

/-! ## A185347.P5051564333491895414

`record[A066048(A007504(n+10)-A007504(n))]`
-/

namespace A185347.P5051564333491895414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A007504 (n + 10) - A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185347.P5051564333491895414

namespace A185347

/-- `record[A066048(A007504(n+10)-A007504(n))]` -/
def P5051564333491895414.Spec : Prop :=
  ∀ n, P5051564333491895414.a n = A185347 (n + 1)

end A185347

/-! ## A185347.P9293108101308857754

`record[A066048(A127336(n+2)+A000040(n+1))]`
-/

namespace A185347.P9293108101308857754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A127336 (n + 2) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185347.P9293108101308857754

namespace A185347

/-- `record[A066048(A127336(n+2)+A000040(n+1))]` -/
def P9293108101308857754.Spec : Prop :=
  ∀ n, P9293108101308857754.a n = A185347 (n + 1)

end A185347

/-!
# A185348: Number of ordered quadruples of distinct pairwise coprime positive integers with largest element n; also first differences of A015623.

The programs for A185348, there is no canonical definition to state claims against.
-/

/-! ## A185348.P13852201450139187107

`Δ[A015623(abs(1-n)+1)]`
-/

namespace A185348.P13852201450139187107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185348.P13852201450139187107

/-! ## A185348.P9976507289290487387

`-Δ[-A015623(A028310(n))]`
-/

namespace A185348.P9976507289290487387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A015623 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A185348.P9976507289290487387

/-! ## A185348.P13907170085101653781

`A186988(n+1)-A186987(n+1)`
-/

namespace A185348.P13907170085101653781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) - A186987 (n + 1)

end

end A185348.P13907170085101653781

/-! ## A185348.P17721996178843938523

`A015623(n+1)-A015623(abs(1-n)+1)`
-/

namespace A185348.P17721996178843938523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) - A015623 (|1 - (n : ℤ)| + 1).toNat

end

end A185348.P17721996178843938523

/-! ## A185348.P6841814456235675120

`Δ[A015623(A233583(n+1))]%A000041(n+1)`
-/

namespace A185348.P6841814456235675120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 (n + 1))

end

end A185348.P6841814456235675120

/-! ## A185348.P8318096669664889080

`Δ[A015623(A233583(n+1))]%A078042(n)`
-/

namespace A185348.P8318096669664889080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A078042 n)

end

end A185348.P8318096669664889080

/-!
# A185350: Number of parts in all partitions of n in which no part occurs more than twice.

The programs for A185350, there is no canonical definition to state claims against.
-/

/-! ## A185350.P11827698190573206121

`A210485(∑[char[2]+n]+1)`
-/

namespace A185350.P11827698190573206121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185350.P11827698190573206121

/-! ## A185350.P13528755021044416150

`A213177(∑[n]+1)+A213177(A133263(n))`
-/

namespace A185350.P13528755021044416150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A213177 (A133263 n).toNat

end

end A185350.P13528755021044416150

/-! ## A185350.P17197849750268556728

`A141730(A272402(n+1))`
-/

namespace A185350.P17197849750268556728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141730 (A272402 (n + 1)).toNat

end

end A185350.P17197849750268556728

/-! ## A185350.P14427951118345197650

`A211373(n+1)-A353841(2*n+3)^A147088(3*n+1)`
-/

namespace A185350.P14427951118345197650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211373 (n + 1) : ℚ) - (A353841 (2 * n + 3) : ℚ) ^ (A147088 (3 * n + 1) : ℤ)

end

end A185350.P14427951118345197650

/-!
# A185351: Sums of distinct perfect numbers.

The programs for A185351, there is no canonical definition to state claims against.
-/

/-! ## A185351.P17590559546256364238

`∑{p}[A344530(n), A006516(#)]`
-/

namespace A185351.P17590559546256364238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006516 p

end

end A185351.P17590559546256364238

/-! ## A185351.P8848345196154159597

`∑{p}[A048102(n+1), A006516(#)]`
-/

namespace A185351.P8848345196154159597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006516 p

end

end A185351.P8848345196154159597

/-! ## A185351.P10759003470206771319

`record[A187794(2*(n+1))+A187794(n+2)]`
-/

namespace A185351.P10759003470206771319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (2 * (n + 1)) + A187794 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185351.P10759003470206771319

/-! ## A185351.P2546239905230994556

`record[A294888(2*(n+1))%A294886(2*(n+1))]`
-/

namespace A185351.P2546239905230994556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294888 (2 * (n + 1))) (A294886 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185351.P2546239905230994556

/-!
# A185352: The "smallest countdown" numbers are the smallest positive integer that cannot be made using the numbers n through 1, in order, using the operations +, -, *, /, and parentheses.

The programs for A185352, there is no canonical definition to state claims against.
-/

/-! ## A185352.P3040840396653606306

`A108408(A000213(n+2))+A108305(n)`
-/

namespace A185352.P3040840396653606306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108408 (A000213 (n + 2)).toNat + A108305 n

end

end A185352.P3040840396653606306

/-!
# A185353: a(n) = (1^1 + 2^2 . . . + n^n) mod 10.

The programs for A185353, the canonical program `A185353.P9660579593036902322` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185353 has offset 1).

The definition of A185353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185353.P9660579593036902322

`∑[A056849(n+1)]%10`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185353

/-- `∑[A056849(n+1)]%10` -/
def P9660579593036902322.Spec : Prop :=
  ∀ n, P9660579593036902322.a n = A185353 (n + 1)

theorem P9660579593036902322.correct : P9660579593036902322.Spec := by
  intro n
  simp only [A185353, Nat.add_sub_cancel]

end A185353

/-!
# A185354: Number of not necessarily connected 5-regular simple graphs on 2n vertices with girth at least 4.

The programs for A185354, there is no canonical definition to state claims against.
-/

/-! ## A185354.P18208006897325306958

`A058275(n)+A185254(n)`
-/

namespace A185354.P18208006897325306958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058275 n + A185254 n

end

end A185354.P18208006897325306958

/-! ## A185354.P14899922586612523155

`A058275(n)+A031346(n)`
-/

namespace A185354.P14899922586612523155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058275 n + A031346 n

end

end A185354.P14899922586612523155

/-! ## A185354.P10797511396433865808

`A059995(n)+A058275(n)`
-/

namespace A185354.P10797511396433865808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + A058275 n

end

end A185354.P10797511396433865808

/-! ## A185354.P1271064517969981041

`A062329(n)+A058275(n)`
-/

namespace A185354.P1271064517969981041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + A058275 n

end

end A185354.P1271064517969981041

/-! ## A185354.P3897062892603743601

`A081503(n)+A058275(n)`
-/

namespace A185354.P3897062892603743601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081503 n + A058275 n

end

end A185354.P3897062892603743601

/-!
# A185355: Number of n X n symmetric (0,1)-matrices containing four ones.

The programs for A185355, the canonical program `A185355.P7942247087978771433` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185355 has offset 1).

The definition of A185355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185355.P7942247087978771433

`(n+1)²*n*(5*(n+1)-7)/12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185355

/-- `(n+1)²*n*(5*(n+1)-7)/12` -/
def P7942247087978771433.Spec : Prop :=
  ∀ n, P7942247087978771433.a n = (A185355 (n + 1) : ℚ)

end A185355

/-! ## A185355.P661089195465249758

`n²²-A390922(n)`
-/

namespace A185355.P661089195465249758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A390922 n

end

end A185355.P661089195465249758

namespace A185355

/-- `n²²-A390922(n)` -/
def P661089195465249758.Spec : Prop :=
  ∀ n, P661089195465249758.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P16771440180317206057

`A163102(n)-∑[∑[n²]]`
-/

namespace A185355.P16771440180317206057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185355.P16771440180317206057

namespace A185355

/-- `A163102(n)-∑[∑[n²]]` -/
def P16771440180317206057.Spec : Prop :=
  ∀ n, P16771440180317206057.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P9955129848261187389

`A288961(n+1)+∑[∑[n²]]`
-/

namespace A185355.P9955129848261187389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288961 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185355.P9955129848261187389

namespace A185355

/-- `A288961(n+1)+∑[∑[n²]]` -/
def P9955129848261187389.Spec : Prop :=
  ∀ n, P9955129848261187389.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P5840369041100816989

`(n+1)*∑[A152773(n)/3]/2`
-/

namespace A185355.P5840369041100816989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152773 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A185355.P5840369041100816989

namespace A185355

/-- `(n+1)*∑[A152773(n)/3]/2` -/
def P5840369041100816989.Spec : Prop :=
  ∀ n, P5840369041100816989.a n = (A185355 (n + 1) : ℚ)

end A185355

/-! ## A185355.P12186939239823652580

`A002415(n)+∑[C(2*n+1, 3)]`
-/

namespace A185355.P12186939239823652580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185355.P12186939239823652580

namespace A185355

/-- `A002415(n)+∑[C(2*n+1, 3)]` -/
def P12186939239823652580.Spec : Prop :=
  ∀ n, P12186939239823652580.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P7308836420050351800

`∑[∑[n²-n]]+n*A000330(n)`
-/

namespace A185355.P7308836420050351800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A000330 n

end

end A185355.P7308836420050351800

namespace A185355

/-- `∑[∑[n²-n]]+n*A000330(n)` -/
def P7308836420050351800.Spec : Prop :=
  ∀ n, P7308836420050351800.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P18073342908871834516

`∑[A000447(n)]+n/2*∑[C(n, 2)]`
-/

namespace A185355.P18073342908871834516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A185355.P18073342908871834516

namespace A185355

/-- `∑[A000447(n)]+n/2*∑[C(n, 2)]` -/
def P18073342908871834516.Spec : Prop :=
  ∀ n, P18073342908871834516.a n = (A185355 (n + 1) : ℚ)

end A185355

/-! ## A185355.P5977216102583330073

`A212415(n)+A002418(n)`
-/

namespace A185355.P5977216102583330073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 n + A002418 n

end

end A185355.P5977216102583330073

namespace A185355

/-- `A212415(n)+A002418(n)` -/
def P5977216102583330073.Spec : Prop :=
  ∀ n, P5977216102583330073.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P17926964456630988405

`A103220(n)-A002415(n)`
-/

namespace A185355.P17926964456630988405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 n - A002415 n

end

end A185355.P17926964456630988405

namespace A185355

/-- `A103220(n)-A002415(n)` -/
def P17926964456630988405.Spec : Prop :=
  ∀ n, P17926964456630988405.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P7135933859723324510

`A051799(n)-A135712(n)`
-/

namespace A185355.P7135933859723324510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n - A135712 n

end

end A185355.P7135933859723324510

namespace A185355

/-- `A051799(n)-A135712(n)` -/
def P7135933859723324510.Spec : Prop :=
  ∀ n, P7135933859723324510.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P16060483625086454225

`A213827(n)-A071238(n)`
-/

namespace A185355.P16060483625086454225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213827 n - A071238 n

end

end A185355.P16060483625086454225

namespace A185355

/-- `A213827(n)-A071238(n)` -/
def P16060483625086454225.Spec : Prop :=
  ∀ n, P16060483625086454225.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P15724009450285614690

`A180324(n)-A176060(n)`
-/

namespace A185355.P15724009450285614690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n - A176060 n

end

end A185355.P15724009450285614690

namespace A185355

/-- `A180324(n)-A176060(n)` -/
def P15724009450285614690.Spec : Prop :=
  ∀ n, P15724009450285614690.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P17571787676923474778

`A368046(n)-A006002(n)`
-/

namespace A185355.P17571787676923474778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n - A006002 n

end

end A185355.P17571787676923474778

namespace A185355

/-- `A368046(n)-A006002(n)` -/
def P17571787676923474778.Spec : Prop :=
  ∀ n, P17571787676923474778.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P13551961052312190771

`A117066(n+1)-A050509(n)`
-/

namespace A185355.P13551961052312190771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) - A050509 n

end

end A185355.P13551961052312190771

namespace A185355

/-- `A117066(n+1)-A050509(n)` -/
def P13551961052312190771.Spec : Prop :=
  ∀ n, P13551961052312190771.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P4725018864518719439

`A004302(n)-A391978(n+1)`
-/

namespace A185355.P4725018864518719439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 n - A391978 (n + 1)

end

end A185355.P4725018864518719439

namespace A185355

/-- `A004302(n)-A391978(n+1)` -/
def P4725018864518719439.Spec : Prop :=
  ∀ n, P4725018864518719439.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P15371772045325820992

`A255499(n)-A328152(n+1)`
-/

namespace A185355.P15371772045325820992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n - A328152 (n + 1)

end

end A185355.P15371772045325820992

namespace A185355

/-- `A255499(n)-A328152(n+1)` -/
def P15371772045325820992.Spec : Prop :=
  ∀ n, P15371772045325820992.a n = A185355 (n + 1)

end A185355

/-! ## A185355.P935838137231664876

`A002411(n)+2*A212415(n)`
-/

namespace A185355.P935838137231664876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + 2 * A212415 n

end

end A185355.P935838137231664876

namespace A185355

/-- `A002411(n)+2*A212415(n)` -/
def P935838137231664876.Spec : Prop :=
  ∀ n, P935838137231664876.a n = A185355 (n + 1)

end A185355

/-!
# A185356: Triangle read by rows: number of type B alternating permutations according to their last value.

The programs for A185356, there is no canonical definition to state claims against.
-/

/-! ## A185356.P3442349386535702634

`A124768(A005700(n)%A117517(n+1))`
-/

namespace A185356.P3442349386535702634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.tmod (A005700 n) (A117517 (n + 1))).toNat

end

end A185356.P3442349386535702634

/-! ## A185356.P15350107346767809425

`A322975(A329005(n+1)+A329002(2*n+3))`
-/

namespace A185356.P15350107346767809425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322975 (A329005 (n + 1) + A329002 (2 * n + 3)).toNat

end

end A185356.P15350107346767809425

/-! ## A185356.P17523389664583989087

`n%A091110(A007500(n+2))`
-/

namespace A185356.P17523389664583989087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A091110 (A007500 (n + 2)).toNat)

end

end A185356.P17523389664583989087

/-! ## A185356.P15040358545841214852

`and(A140185(A000041(n)), A197819(n))`
-/

namespace A185356.P15040358545841214852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140185 (A000041 n).toNat) (A197819 n)

end

end A185356.P15040358545841214852

/-! ## A185356.P5757718316220347390

`n%A135975(A325878(n))`
-/

namespace A185356.P5757718316220347390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A135975 (A325878 n).toNat)

end

end A185356.P5757718316220347390

/-!
# A185357: Expansion of 1/(1 - x - x^2 + x^18 - x^20).

The programs for A185357, the canonical program `A185357.P4019843997585819469` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185357 has offset 0).

The definition of A185357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^18-x^20))` (program `A185357.P4019843997585819469`, by `A185357.P4019843997585819469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185357.P4019843997585819469

`ogf(1/(1-x-x^2+x^18-x^20))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185357

/-- `ogf(1/(1-x-x^2+x^18-x^20))` -/
def P4019843997585819469.Spec : Prop :=
  ∀ n, P4019843997585819469.a n = A185357 n

theorem P4019843997585819469.correct : P4019843997585819469.Spec := by
  intro n
  simp only [A185357]

end A185357

/-! ## A185357.P17356032854621010116

`∑[A212804(n)-A178798(A026812(n))]`
-/

namespace A185357.P17356032854621010116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A178798 (A026812 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185357.P17356032854621010116

namespace A185357

/-- `∑[A212804(n)-A178798(A026812(n))]` -/
def P17356032854621010116.Spec : Prop :=
  ∀ n, P17356032854621010116.a n = A185357 n

end A185357

/-! ## A185357.P1209066062294184636

`∑[A212804(n)-A185284(A103609(n))]`
-/

namespace A185357.P1209066062294184636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A185284 (A103609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185357.P1209066062294184636

namespace A185357

/-- `∑[A212804(n)-A185284(A103609(n))]` -/
def P1209066062294184636.Spec : Prop :=
  ∀ n, P1209066062294184636.a n = A185357 n

end A185357

/-! ## A185357.P7085496225010566278

`A000045(n+1)-A102683(A165656(n))`
-/

namespace A185357.P7085496225010566278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A102683 (A165656 n).toNat

end

end A185357.P7085496225010566278

namespace A185357

/-- `A000045(n+1)-A102683(A165656(n))` -/
def P7085496225010566278.Spec : Prop :=
  ∀ n, P7085496225010566278.a n = A185357 n

end A185357

/-! ## A185357.P12905632796392445847

`A000045(n+1)-A185284(2*n+1)`
-/

namespace A185357.P12905632796392445847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A185284 (2 * n + 1)

end

end A185357.P12905632796392445847

namespace A185357

/-- `A000045(n+1)-A185284(2*n+1)` -/
def P12905632796392445847.Spec : Prop :=
  ∀ n, P12905632796392445847.a n = A185357 n

end A185357

/-!
# A185358: The period of the sequence i^i (mod n) starts from i=a(n).

The programs for A185358, there is no canonical definition to state claims against.
-/

/-! ## A185358.P834491162299784830

`and(7, A371279(A368333(n+1)))`
-/

namespace A185358.P834491162299784830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A371279 (A368333 (n + 1)).toNat)

end

end A185358.P834491162299784830

/-! ## A185358.P15751750988989143544

`A260728(lcm(69, A349387(n+1)))`
-/

namespace A185358.P15751750988989143544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (Int.lcm 69 (A349387 (n + 1)))

end

end A185358.P15751750988989143544

/-! ## A185358.P8436300814903607454

`A317933((n+1)*A001747(n+1))`
-/

namespace A185358.P8436300814903607454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 ((n + 1 : ℤ) * A001747 (n + 1)).toNat

end

end A185358.P8436300814903607454

/-! ## A185358.P7076378913915266121

`A317933((n+1)*A161344(n+1))`
-/

namespace A185358.P7076378913915266121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 ((n + 1 : ℤ) * A161344 (n + 1)).toNat

end

end A185358.P7076378913915266121

/-! ## A185358.P17781604827621193337

`A023136(A062378(n+1)^a(n-1)^2+1)` with `a(0)=1`
-/

namespace A185358.P17781604827621193337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023136 (SequenceMachineLib.roundAway ((A062378 (n + 1) : ℚ) ^ (a (n - 1) ^ 2 : ℤ) + 1)).toNat

end

end A185358.P17781604827621193337

/-! ## A185358.P11017457934961168357

`A001511(gcd(A000217(n), A118826(n+1)))`
-/

namespace A185358.P11017457934961168357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A000217 n) (A118826 (n + 1)))

end

end A185358.P11017457934961168357

/-! ## A185358.P3396019579680742240

`A052552(A295657(n+1)^A360119(n+4))`
-/

namespace A185358.P3396019579680742240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (SequenceMachineLib.roundAway ((A295657 (n + 1) : ℚ) ^ (A360119 (n + 4) : ℤ))).toNat

end

end A185358.P3396019579680742240

/-! ## A185358.P18118155186074402212

`A000005(gcd(A118821(n+1), A118823(n+1)))`
-/

namespace A185358.P18118155186074402212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A118821 (n + 1)) (A118823 (n + 1)))

end

end A185358.P18118155186074402212

/-! ## A185358.P16359463581717989402

`or(1, A007814(A069097(n+1)))`
-/

namespace A185358.P16359463581717989402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007814 (A069097 (n + 1)).toNat)

end

end A185358.P16359463581717989402

/-! ## A185358.P3537998915164189185

`A040856(A059152(n))`
-/

namespace A185358.P3537998915164189185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040856 (A059152 n).toNat

end

end A185358.P3537998915164189185

/-!
# A185359: Numbers k such that {m^m mod k: m >= 1} is not purely periodic.

The programs for A185359, there is no canonical definition to state claims against.
-/

/-! ## A185359.P11451846645950521325

`∪[A048104(n+1), A068935(n+1)]`
-/

namespace A185359.P11451846645950521325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185359.P11451846645950521325

/-! ## A185359.P14270672296861047819

`eq[0, A182938(n+1)]+1`
-/

namespace A185359.P14270672296861047819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A185359.P14270672296861047819

/-! ## A185359.P13197776223894016400

`lt[1, A368329(n+1)]+1`
-/

namespace A185359.P13197776223894016400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A185359.P13197776223894016400

/-! ## A185359.P9052414095493248881

`eq[0, A182938(A028310(n))]`
-/

namespace A185359.P9052414095493248881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185359.P9052414095493248881

/-! ## A185359.P17943602989230675806

`A020725(eq[0, A182938(n+1)])`
-/

namespace A185359.P17943602989230675806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185359.P17943602989230675806

/-! ## A185359.P18028812972657746398

`eq[0, A182938(A008706(n))]`
-/

namespace A185359.P18028812972657746398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185359.P18028812972657746398

/-! ## A185359.P11353474345953301014

`eq[0, A182938(A233583(n+1))]`
-/

namespace A185359.P11353474345953301014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185359.P11353474345953301014

/-! ## A185359.P15253716497247056153

`eq[0, A007428(A233583(2*n+1))]`
-/

namespace A185359.P15253716497247056153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185359.P15253716497247056153

/-!
# A185360: Number of almost Hamiltonian simple graphs on n vertices.

The programs for A185360, there is no canonical definition to state claims against.
-/

/-! ## A185360.P13391120745183782388

`(1-char[1])*A218585(A113715(n))`
-/

namespace A185360.P13391120745183782388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A218585 (A113715 n).toNat

end

end A185360.P13391120745183782388

/-! ## A185360.P7849771845562537375

`A155584(A093645(n)+A022096(n))`
-/

namespace A185360.P7849771845562537375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155584 (A093645 n + A022096 n).toNat

end

end A185360.P7849771845562537375

/-! ## A185360.P6111546996502598766

`A122651(A000311(n))-A010054(n)`
-/

namespace A185360.P6111546996502598766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A000311 n).toNat - A010054 n

end

end A185360.P6111546996502598766

/-!
# A185363: a(n) = square-root of the largest proper divisor of A187101(n).

The programs for A185363, the canonical program `A185363.P16953117172959039940` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185363 has offset 1).

The definition of A185363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185363.P546352270280207742

`sqrt(A032742(A187101(n+1)))`
-/

namespace A185363.P546352270280207742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032742 (A187101 (n + 1)).toNat : ℝ)

end

end A185363.P546352270280207742

namespace A185363

/-- `sqrt(A032742(A187101(n+1)))` -/
def P546352270280207742.Spec : Prop :=
  ∀ n, P546352270280207742.a n = (A185363 (n + 1) : ℝ)

end A185363

/-! ## A185363.P16953117172959039940

`A000188(A187101(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A185363

/-- `A000188(A187101(n+1))` -/
def P16953117172959039940.Spec : Prop :=
  ∀ n, P16953117172959039940.a n = A185363 (n + 1)

theorem P16953117172959039940.correct : P16953117172959039940.Spec := by
  intro n
  simp only [A185363, Nat.add_sub_cancel]

end A185363

/-! ## A185363.P13063727702649066839

`A337101(2*A187101(n+1))`
-/

namespace A185363.P13063727702649066839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A187101 (n + 1)).toNat

end

end A185363.P13063727702649066839

namespace A185363

/-- `A337101(2*A187101(n+1))` -/
def P13063727702649066839.Spec : Prop :=
  ∀ n, P13063727702649066839.a n = A185363 (n + 1)

end A185363

/-! ## A185363.P4719186700995565827

`A337101(lcm(2, A187101(n+1)))`
-/

namespace A185363.P4719186700995565827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (Int.lcm 2 (A187101 (n + 1)))

end

end A185363.P4719186700995565827

namespace A185363

/-- `A337101(lcm(2, A187101(n+1)))` -/
def P4719186700995565827.Spec : Prop :=
  ∀ n, P4719186700995565827.a n = A185363 (n + 1)

end A185363

/-! ## A185363.P12991199703976274813

`A335881(or(A335883(n+2), A335895(n+2)))`
-/

namespace A185363.P12991199703976274813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (Int.lor (A335883 (n + 2)) (A335895 (n + 2))).toNat

end

end A185363.P12991199703976274813

namespace A185363

/-- `A335881(or(A335883(n+2), A335895(n+2)))` -/
def P12991199703976274813.Spec : Prop :=
  ∀ n, P12991199703976274813.a n = A185363 (n + 1)

end A185363

/-!
# A185365: Prime denominators in the continued fraction convergents for sqrt(950).

The programs for A185365, there is no canonical definition to state claims against.
-/

/-! ## A185365.P11517569968372316506

`p?[A042839(n)]`
-/

namespace A185365.P11517569968372316506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185365.P11517569968372316506

/-!
# A185367: First n-digit square in the digits of the golden ratio.

The programs for A185367, there is no canonical definition to state claims against.
-/

/-! ## A185367.P6252555851889785004

`A359803(A055922(3*n+2))²`
-/

namespace A185367.P6252555851889785004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359803 (A055922 (3 * n + 2)).toNat ^ 2

end

end A185367.P6252555851889785004

/-!
# A185368: First n-digit square in the digits of Euler's constant (or the Euler-Mascheroni constant) gamma.

The programs for A185368, there is no canonical definition to state claims against.
-/

/-! ## A185368.P11495316144847915371

`A278223(A155647(n))^A278223(n+1)`
-/

namespace A185368.P11495316144847915371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278223 (A155647 n).toNat : ℚ) ^ (A278223 (n + 1) : ℤ)

end

end A185368.P11495316144847915371

/-!
# A185369: Number of simple labeled graphs on n nodes of degree 1 or 2 without cycles.

The programs for A185369, there is no canonical definition to state claims against.
-/

/-! ## A185369.P17830532214375773431

`floor(A243797(2*(n+1))/∑[floor((2/acot(n))²)])`
-/

namespace A185369.P17830532214375773431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243797 (2 * (n + 1)) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A185369.P17830532214375773431

/-! ## A185369.P1014910200416513432

`A300763(Δ[A002467(n)])`
-/

namespace A185369.P1014910200416513432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (f1 (n + 1) - f1 n).toNat

end

end A185369.P1014910200416513432

/-!
# A185370: Triangle read by rows: T(n,k) is the number of occurrences of k in the n-th region of the set of partitions of j, if 1<=n<=A000041(j).

The programs for A185370, there is no canonical definition to state claims against.
-/

/-! ## A185370.P14433567963839792782

`A156348(A086646(n)+3)`
-/

namespace A185370.P14433567963839792782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (A086646 n + 3).toNat

end

end A185370.P14433567963839792782

/-! ## A185370.P11850818510636901304

`A178616((n-1)*A178616(n+1))`
-/

namespace A185370.P11850818510636901304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178616 (((n : ℤ) - 1) * A178616 (n + 1)).toNat

end

end A185370.P11850818510636901304

/-! ## A185370.P2133425687171802629

`∏{p}[n+1, #^val(n+1, #²)]-A073089(A328923(n))`
-/

namespace A185370.P2133425687171802629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - A073089 (A328923 n).toNat

end

end A185370.P2133425687171802629

/-! ## A185370.P10454236990420003294

`A342753(n+1)+A287331(A000628(n))`
-/

namespace A185370.P10454236990420003294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (n + 1) + A287331 (A000628 n).toNat

end

end A185370.P10454236990420003294

/-! ## A185370.P2064423408167122204

`A216229(A195943(n+1)^A365921(n))`
-/

namespace A185370.P2064423408167122204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216229 (SequenceMachineLib.roundAway ((A195943 (n + 1) : ℚ) ^ (A365921 n : ℤ))).toNat

end

end A185370.P2064423408167122204

/-!
# A185371: Product of two consecutive primes divided by the next prime and rounded down.

The programs for A185371, the canonical program `A185371.P14009335989578313983` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185371 has offset 1).

The definition of A185371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185371.P14009335989578313983

`floor(A166329(n+1)/A046301(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A185371

/-- `floor(A166329(n+1)/A046301(n+1))` -/
def P14009335989578313983.Spec : Prop :=
  ∀ n, P14009335989578313983.a n = A185371 (n + 1)

theorem P14009335989578313983.correct : P14009335989578313983.Spec := by
  intro n
  simp only [A185371, Nat.add_sub_cancel]

end A185371

/-! ## A185371.P14760321838001657064

`floor(A006094(n+1)²/A046301(n+1))`
-/

namespace A185371.P14760321838001657064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) ^ 2 : ℚ) / (A046301 (n + 1) : ℚ)⌋

end

end A185371.P14760321838001657064

namespace A185371

/-- `floor(A006094(n+1)²/A046301(n+1))` -/
def P14760321838001657064.Spec : Prop :=
  ∀ n, P14760321838001657064.a n = A185371 (n + 1)

end A185371

/-! ## A185371.P8780023822866057807

`floor(A006094(n+1)/A000040(n+3))`
-/

namespace A185371.P8780023822866057807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (A000040 (n + 3) : ℚ)⌋

end

end A185371.P8780023822866057807

namespace A185371

/-- `floor(A006094(n+1)/A000040(n+3))` -/
def P8780023822866057807.Spec : Prop :=
  ∀ n, P8780023822866057807.a n = A185371 (n + 1)

end A185371

/-! ## A185371.P7294096115162588425

`floor(A000040(n+1)/ratio[A000040(n+2)])`
-/

namespace A185371.P7294096115162588425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A185371.P7294096115162588425

namespace A185371

/-- `floor(A000040(n+1)/ratio[A000040(n+2)])` -/
def P7294096115162588425.Spec : Prop :=
  ∀ n, P7294096115162588425.a n = A185371 (n + 1)

end A185371

/-! ## A185371.P7216833293140938308

`floor(A006094(n+1)/p?[A062545(n)])`
-/

namespace A185371.P7216833293140938308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A185371.P7216833293140938308

namespace A185371

/-- `floor(A006094(n+1)/p?[A062545(n)])` -/
def P7216833293140938308.Spec : Prop :=
  ∀ n, P7216833293140938308.a n = A185371 (n + 1)

end A185371

/-! ## A185371.P10659041580684095723

`floor(A006094(n+1)/A006530(A006094(n+2)))`
-/

namespace A185371.P10659041580684095723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 1) : ℚ) / (A006530 (A006094 (n + 2)).toNat : ℚ)⌋

end

end A185371.P10659041580684095723

namespace A185371

/-- `floor(A006094(n+1)/A006530(A006094(n+2)))` -/
def P10659041580684095723.Spec : Prop :=
  ∀ n, P10659041580684095723.a n = A185371 (n + 1)

end A185371

/-!
# A185373: The numerator of the fraction |n^2/A049417(n)-A064380(n)|.

The programs for A185373, there is no canonical definition to state claims against.
-/

/-! ## A185373.P13389739213353022313

`A185088(n+2)/A049417(n+2)*A185383(n+2)`
-/

namespace A185373.P13389739213353022313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185088 (n + 2) : ℚ) / (A049417 (n + 2) : ℚ) * (A185383 (n + 2) : ℚ)

end

end A185373.P13389739213353022313

/-!
# A185375: a(n) = n*(n-1)*(2*n+1)*(2*n-1)*(2*n-3)*(10*n-17)/90.

The programs for A185375, the canonical program `A185375.P14876904991816916945` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185375 has offset 0).

The definition of A185375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185375.P14876904991816916945

`n*(n-1)*(2*n+1)*(2*n-1)*(2*n-3)*(10*n-17)/90`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185375

/-- `n*(n-1)*(2*n+1)*(2*n-1)*(2*n-3)*(10*n-17)/90` -/
def P14876904991816916945.Spec : Prop :=
  ∀ n, P14876904991816916945.a n = (A185375 n : ℚ)

end A185375

/-! ## A185375.P16596761256983621156

`A271040(2*n+1)+A000389(2*n+1)`
-/

namespace A185375.P16596761256983621156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271040 (2 * n + 1) + A000389 (2 * n + 1)

end

end A185375.P16596761256983621156

namespace A185375

/-- `A271040(2*n+1)+A000389(2*n+1)` -/
def P16596761256983621156.Spec : Prop :=
  ∀ n, P16596761256983621156.a n = A185375 n

end A185375

/-! ## A185375.P5101694400622287309

`A000389(2*n+1)+2*A000910(2*n+1)`
-/

namespace A185375.P5101694400622287309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 1) + 2 * A000910 (2 * n + 1)

end

end A185375.P5101694400622287309

namespace A185375

/-- `A000389(2*n+1)+2*A000910(2*n+1)` -/
def P5101694400622287309.Spec : Prop :=
  ∀ n, P5101694400622287309.a n = A185375 n

end A185375

/-! ## A185375.P16095660680762476874

`A000389(2*n+1)+10*A000579(2*n+1)`
-/

namespace A185375.P16095660680762476874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 1) + 10 * A000579 (2 * n + 1)

end

end A185375.P16095660680762476874

namespace A185375

/-- `A000389(2*n+1)+10*A000579(2*n+1)` -/
def P16095660680762476874.Spec : Prop :=
  ∀ n, P16095660680762476874.a n = A185375 n

end A185375

/-! ## A185375.P9656548027627548597

`A008958(A133263(n))-A256434(n²)`
-/

namespace A185375.P9656548027627548597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A133263 n).toNat - A256434 (n ^ 2)

end

end A185375.P9656548027627548597

namespace A185375

/-- `A008958(A133263(n))-A256434(n²)` -/
def P9656548027627548597.Spec : Prop :=
  ∀ n, P9656548027627548597.a n = A185375 n

end A185375

/-!
# A185376: Number of binary necklaces of 2n beads for which a cut exists producing a palindrome.

The programs for A185376, the canonical program `A185376.P12395458477438105240` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185376 has offset 1).

The definition of A185376 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185376.P12395458477438105240

`A185333(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A185376

/-- `A185333(2*(n+1))` -/
def P12395458477438105240.Spec : Prop :=
  ∀ n, P12395458477438105240.a n = A185376 (n + 1)

theorem P12395458477438105240.correct : P12395458477438105240.Spec := by
  intro n
  simp only [A185376, Nat.add_sub_cancel]

end A185376

/-! ## A185376.P13463443295583715218

`A082392(n)+2^n`
-/

namespace A185376.P13463443295583715218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 n + (2 ^ n : ℤ)

end

end A185376.P13463443295583715218

namespace A185376

/-- `A082392(n)+2^n` -/
def P13463443295583715218.Spec : Prop :=
  ∀ n, P13463443295583715218.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P7267608506910189484

`A011782(floor(n/and(n+1, -(n+1)))/2+1)+2^n`
-/

namespace A185376.P7267608506910189484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2 + 1)).toNat + (2 ^ n : ℤ)

end

end A185376.P7267608506910189484

namespace A185376

/-- `A011782(floor(n/and(n+1, -(n+1)))/2+1)+2^n` -/
def P7267608506910189484.Spec : Prop :=
  ∀ n, P7267608506910189484.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P17264340890977270365

`xor(A082392(n), A171559(n))`
-/

namespace A185376.P17264340890977270365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082392 n) (A171559 n)

end

end A185376.P17264340890977270365

namespace A185376

/-- `xor(A082392(n), A171559(n))` -/
def P17264340890977270365.Spec : Prop :=
  ∀ n, P17264340890977270365.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P3108995936082901854

`A000079(n)+A000079(A025480(n))`
-/

namespace A185376.P3108995936082901854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000079 (A025480 n).toNat

end

end A185376.P3108995936082901854

namespace A185376

/-- `A000079(n)+A000079(A025480(n))` -/
def P3108995936082901854.Spec : Prop :=
  ∀ n, P3108995936082901854.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P3579105641795137428

`A000225(n)+A000051(A025480(n))`
-/

namespace A185376.P3579105641795137428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000051 (A025480 n).toNat

end

end A185376.P3579105641795137428

namespace A185376

/-- `A000225(n)+A000051(A025480(n))` -/
def P3579105641795137428.Spec : Prop :=
  ∀ n, P3579105641795137428.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P2550523745425797704

`A016116(A000265(n+1))+A000079(n)`
-/

namespace A185376.P2550523745425797704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000265 (n + 1)).toNat + A000079 n

end

end A185376.P2550523745425797704

namespace A185376

/-- `A016116(A000265(n+1))+A000079(n)` -/
def P2550523745425797704.Spec : Prop :=
  ∀ n, P2550523745425797704.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P12803357584077072839

`A051032(A000265(n+1))+A000225(n)`
-/

namespace A185376.P12803357584077072839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (A000265 (n + 1)).toNat + A000225 n

end

end A185376.P12803357584077072839

namespace A185376

/-- `A051032(A000265(n+1))+A000225(n)` -/
def P12803357584077072839.Spec : Prop :=
  ∀ n, P12803357584077072839.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P4479894971106251030

`A000051(n)+A000051(A025480(n))-2`
-/

namespace A185376.P4479894971106251030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000051 (A025480 n).toNat - 2)

end

end A185376.P4479894971106251030

namespace A185376

/-- `A000051(n)+A000051(A025480(n))-2` -/
def P4479894971106251030.Spec : Prop :=
  ∀ n, P4479894971106251030.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P7023738107359585826

`A016116(2*n)+A016116(A153733(n))`
-/

namespace A185376.P7023738107359585826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + A016116 (A153733 n).toNat

end

end A185376.P7023738107359585826

namespace A185376

/-- `A016116(2*n)+A016116(A153733(n))` -/
def P7023738107359585826.Spec : Prop :=
  ∀ n, P7023738107359585826.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P10820724449139022508

`A011782(A025480(n)+1)+∑[A011782(n)]`
-/

namespace A185376.P10820724449139022508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025480 n + 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185376.P10820724449139022508

namespace A185376

/-- `A011782(A025480(n)+1)+∑[A011782(n)]` -/
def P10820724449139022508.Spec : Prop :=
  ∀ n, P10820724449139022508.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P15361908128731941957

`A011782(A003602(n+1))+A000225(n)+1`
-/

namespace A185376.P15361908128731941957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003602 (n + 1)).toNat + (A000225 n + 1)

end

end A185376.P15361908128731941957

namespace A185376

/-- `A011782(A003602(n+1))+A000225(n)+1` -/
def P15361908128731941957.Spec : Prop :=
  ∀ n, P15361908128731941957.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P11548196717358552644

`A011782(A003602(n+1))+A011782(n+1)`
-/

namespace A185376.P11548196717358552644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003602 (n + 1)).toNat + A011782 (n + 1)

end

end A185376.P11548196717358552644

namespace A185376

/-- `A011782(A003602(n+1))+A011782(n+1)` -/
def P11548196717358552644.Spec : Prop :=
  ∀ n, P11548196717358552644.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P7872735777601023354

`A011782(A025480(n)+1)+A011782(n+1)`
-/

namespace A185376.P7872735777601023354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025480 n + 1).toNat + A011782 (n + 1)

end

end A185376.P7872735777601023354

namespace A185376

/-- `A011782(A025480(n)+1)+A011782(n+1)` -/
def P7872735777601023354.Spec : Prop :=
  ∀ n, P7872735777601023354.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P1066815228060747770

`A000079(A003602(n+1)-1)+A000079(n)`
-/

namespace A185376.P1066815228060747770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003602 (n + 1) - 1).toNat + A000079 n

end

end A185376.P1066815228060747770

namespace A185376

/-- `A000079(A003602(n+1)-1)+A000079(n)` -/
def P1066815228060747770.Spec : Prop :=
  ∀ n, P1066815228060747770.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P261355076906345652

`A051032(A000265(n+1))+A000051(n)-2`
-/

namespace A185376.P261355076906345652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (A000265 (n + 1)).toNat + (A000051 n - 2)

end

end A185376.P261355076906345652

namespace A185376

/-- `A051032(A000265(n+1))+A000051(n)-2` -/
def P261355076906345652.Spec : Prop :=
  ∀ n, P261355076906345652.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P7990488436579520954

`A034008(n+2)+A034008(A103391(n+2))`
-/

namespace A185376.P7990488436579520954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 2) + A034008 (A103391 (n + 2)).toNat

end

end A185376.P7990488436579520954

namespace A185376

/-- `A034008(n+2)+A034008(A103391(n+2))` -/
def P7990488436579520954.Spec : Prop :=
  ∀ n, P7990488436579520954.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P3884386079519790372

`A016116(A000265(n+1))+A016116(2*n)`
-/

namespace A185376.P3884386079519790372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000265 (n + 1)).toNat + A016116 (2 * n)

end

end A185376.P3884386079519790372

namespace A185376

/-- `A016116(A000265(n+1))+A016116(2*n)` -/
def P3884386079519790372.Spec : Prop :=
  ∀ n, P3884386079519790372.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P9175803671039029376

`A000079(n)+gcd(A000079(n), A117303(n+1))`
-/

namespace A185376.P9175803671039029376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (Int.gcd (A000079 n) (A117303 (n + 1)) : ℤ)

end

end A185376.P9175803671039029376

namespace A185376

/-- `A000079(n)+gcd(A000079(n), A117303(n+1))` -/
def P9175803671039029376.Spec : Prop :=
  ∀ n, P9175803671039029376.a n = A185376 (n + 1)

end A185376

/-! ## A185376.P13705814520652538817

`∑[A011782(n)]+2^A028242(A000265(n+1))`
-/

namespace A185376.P13705814520652538817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (2 : ℚ) ^ (A028242 (A000265 (n + 1)).toNat : ℤ)

end

end A185376.P13705814520652538817

namespace A185376

/-- `∑[A011782(n)]+2^A028242(A000265(n+1))` -/
def P13705814520652538817.Spec : Prop :=
  ∀ n, P13705814520652538817.a n = (A185376 (n + 1) : ℚ)

end A185376

/-!
# A185377: Product of exactly two distinct primes congruent to 1 mod 8 (A007519).

The programs for A185377, there is no canonical definition to state claims against.
-/

/-! ## A185377.P8724734039670592649

`∩[A004625(n+1), A131574(n+1)]`
-/

namespace A185377.P8724734039670592649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185377.P8724734039670592649

/-! ## A185377.P17734805206993388043

`∩[A121387(n+1), A263011(n+1)]`
-/

namespace A185377.P17734805206993388043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185377.P17734805206993388043

/-! ## A185377.P18362161768468276133

`∩[A131574(n+1), A263011(n+1)]`
-/

namespace A185377.P18362161768468276133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185377.P18362161768468276133

/-! ## A185377.P10993075487859383495

`∩[A131574(n+1), A192453(n+1)]`
-/

namespace A185377.P10993075487859383495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185377.P10993075487859383495

/-! ## A185377.P11261429072370159440

`∩[A131574(n+1), A035198(n)]`
-/

namespace A185377.P11261429072370159440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035198 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185377.P11261429072370159440

/-! ## A185377.P2031571685984987328

`∩[A274044(n+1), A035198(n)]`
-/

namespace A185377.P2031571685984987328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035198 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185377.P2031571685984987328

/-!
# A185378: Number of binary necklaces of 2n beads that are identical when turned over yet cannot be cut to produce a palindrome.

The programs for A185378, there is no canonical definition to state claims against.
-/

/-! ## A185378.P6913741612729380890

`2^(n+1)-2^floor(n/(xor(n, n+1)+1))`
-/

namespace A185378.P6913741612729380890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ)

end

end A185378.P6913741612729380890

/-! ## A185378.P5800121790875086162

`and(-2^floor(n/(xor(n, n+1)+1)), ∑[2^n])`
-/

namespace A185378.P5800121790875086162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (-((2 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ)))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185378.P5800121790875086162

/-! ## A185378.P14038379264394149046

`xor(2^floor(n/(xor(n, n+1)+1)), ∑[2^n])+1`
-/

namespace A185378.P14038379264394149046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A185378.P14038379264394149046

/-! ## A185378.P16285075867624665613

`record[Δ[A082392(n+1)]]`
-/

namespace A185378.P16285075867624665613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185378.P16285075867624665613

/-! ## A185378.P17913600512894389929

`2^(n+1)-A082392(n)`
-/

namespace A185378.P17913600512894389929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A082392 n

end

end A185378.P17913600512894389929

/-!
# A185381: a(n) = Fibonacci(k) where k = floor( n*(1+sqrt(5))/2 ).

The programs for A185381, the canonical program `A185381.P9864076903114994448` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185381 has offset 0).

The definition of A185381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185381.P6133613038170599139

`A000045(floor(ϕ*n))`
-/

namespace A185381.P6133613038170599139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

end

end A185381.P6133613038170599139

namespace A185381

/-- `A000045(floor(ϕ*n))` -/
def P6133613038170599139.Spec : Prop :=
  ∀ n, P6133613038170599139.a n = A185381 n

end A185381

/-! ## A185381.P9864076903114994448

`A103609(A130568(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185381

/-- `A103609(A130568(n))` -/
def P9864076903114994448.Spec : Prop :=
  ∀ n, P9864076903114994448.a n = A185381 n

theorem P9864076903114994448.correct : P9864076903114994448.Spec := by
  intro n
  simp only [A185381]

end A185381

/-! ## A185381.P5442329162471336426

`A212804(A026351(n))`
-/

namespace A185381.P5442329162471336426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A026351 n).toNat

end

end A185381.P5442329162471336426

namespace A185381

/-- `A212804(A026351(n))` -/
def P5442329162471336426.Spec : Prop :=
  ∀ n, P5442329162471336426.a n = A185381 n

end A185381

/-! ## A185381.P15680545916637528295

`A103609(A276854(n))`
-/

namespace A185381.P15680545916637528295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A276854 n).toNat

end

end A185381.P15680545916637528295

namespace A185381

/-- `A103609(A276854(n))` -/
def P15680545916637528295.Spec : Prop :=
  ∀ n, P15680545916637528295.a n = A185381 n

end A185381

/-! ## A185381.P1236932277611662906

`A212804(A026352(n)-n)`
-/

namespace A185381.P1236932277611662906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A026352 n - (n : ℤ)).toNat

end

end A185381.P1236932277611662906

namespace A185381

/-- `A212804(A026352(n)-n)` -/
def P1236932277611662906.Spec : Prop :=
  ∀ n, P1236932277611662906.a n = A185381 n

end A185381

/-! ## A185381.P12607211668022676414

`record[A000045(n*A096270(n))]`
-/

namespace A185381.P12607211668022676414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n : ℤ) * A096270 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P12607211668022676414

namespace A185381

/-- `record[A000045(n*A096270(n))]` -/
def P12607211668022676414.Spec : Prop :=
  ∀ n, P12607211668022676414.a n = A185381 n

end A185381

/-! ## A185381.P11352675423923651142

`A001611(A060143(n)+n)-1`
-/

namespace A185381.P11352675423923651142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A060143 n + (n : ℤ)).toNat - 1

end

end A185381.P11352675423923651142

namespace A185381

/-- `A001611(A060143(n)+n)-1` -/
def P11352675423923651142.Spec : Prop :=
  ∀ n, P11352675423923651142.a n = A185381 n

end A185381

/-! ## A185381.P7441871233148259050

`A212804(comp[A001950(n+1)]+1)`
-/

namespace A185381.P7441871233148259050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A185381.P7441871233148259050

namespace A185381

/-- `A212804(comp[A001950(n+1)]+1)` -/
def P7441871233148259050.Spec : Prop :=
  ∀ n, P7441871233148259050.a n = A185381 n

end A185381

/-! ## A185381.P8174068414975383073

`record[A096270(n)*A212804(n+1)]`
-/

namespace A185381.P8174068414975383073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P8174068414975383073

namespace A185381

/-- `record[A096270(n)*A212804(n+1)]` -/
def P8174068414975383073.Spec : Prop :=
  ∀ n, P8174068414975383073.a n = A185381 n

end A185381

/-! ## A185381.P16008749298004416454

`record[(A001611(n)-1)*A096270(n)]`
-/

namespace A185381.P16008749298004416454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P16008749298004416454

namespace A185381

/-- `record[(A001611(n)-1)*A096270(n)]` -/
def P16008749298004416454.Spec : Prop :=
  ∀ n, P16008749298004416454.a n = A185381 n

end A185381

/-! ## A185381.P17388997328491283792

`record[A000045(n)/(2-A096270(n))]`
-/

namespace A185381.P17388997328491283792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 - A096270 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P17388997328491283792

namespace A185381

/-- `record[A000045(n)/(2-A096270(n))]` -/
def P17388997328491283792.Spec : Prop :=
  ∀ n, P17388997328491283792.a n = (A185381 n : ℚ)

end A185381

/-! ## A185381.P12811440524471975757

`record[A000045(A005206(A002251(n)))]`
-/

namespace A185381.P12811440524471975757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005206 (A002251 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P12811440524471975757

namespace A185381

/-- `record[A000045(A005206(A002251(n)))]` -/
def P12811440524471975757.Spec : Prop :=
  ∀ n, P12811440524471975757.a n = A185381 n

end A185381

/-! ## A185381.P1596045416056680208

`record[A000045(A022290(A004273(n)))]`
-/

namespace A185381.P1596045416056680208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A022290 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P1596045416056680208

namespace A185381

/-- `record[A000045(A022290(A004273(n)))]` -/
def P1596045416056680208.Spec : Prop :=
  ∀ n, P1596045416056680208.a n = A185381 n

end A185381

/-! ## A185381.P4773720770352451

`record[A000045(A022290(A006369(n)))]`
-/

namespace A185381.P4773720770352451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A022290 (A006369 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P4773720770352451

namespace A185381

/-- `record[A000045(A022290(A006369(n)))]` -/
def P4773720770352451.Spec : Prop :=
  ∀ n, P4773720770352451.a n = A185381 n

end A185381

/-! ## A185381.P5832001095351386988

`round(A000045(A004956(n))/ϕ)`
-/

namespace A185381.P5832001095351386988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A004956 n).toNat : ℝ) / Real.goldenRatio)

end

end A185381.P5832001095351386988

namespace A185381

/-- `round(A000045(A004956(n))/ϕ)` -/
def P5832001095351386988.Spec : Prop :=
  ∀ n, P5832001095351386988.a n = A185381 n

end A185381

/-! ## A185381.P13559413388554214787

`record[Δ[A000071(n+1)]*A096270(n)]`
-/

namespace A185381.P13559413388554214787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P13559413388554214787

namespace A185381

/-- `record[Δ[A000071(n+1)]*A096270(n)]` -/
def P13559413388554214787.Spec : Prop :=
  ∀ n, P13559413388554214787.a n = A185381 n

end A185381

/-! ## A185381.P9826328276651313745

`record[Δ[A187179(n+1)]*A096270(n)]`
-/

namespace A185381.P9826328276651313745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P9826328276651313745

namespace A185381

/-- `record[Δ[A187179(n+1)]*A096270(n)]` -/
def P9826328276651313745.Spec : Prop :=
  ∀ n, P9826328276651313745.a n = A185381 n

end A185381

/-! ## A185381.P8613171457850838748

`record[sqrt(A007598(n*A096270(n)))]`
-/

namespace A185381.P8613171457850838748
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 ((n : ℤ) * A096270 n).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185381.P8613171457850838748

namespace A185381

/-- `record[sqrt(A007598(n*A096270(n)))]` -/
def P8613171457850838748.Spec : Prop :=
  ∀ n, P8613171457850838748.a n = (A185381 n : ℝ)

end A185381

/-!
# A185382: Sum_{j=1..n-1} P(n)-P(j), where P(j) = A065091(j) is the j-th odd prime.

The programs for A185382, the canonical program `A185382.P16906752280608413030` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185382 has offset 1).

The definition of A185382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185382.P16906752280608413030

`(n+1)*p?[2*n+1]-∑[p?[2*n+1]]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185382

/-- `(n+1)*p?[2*n+1]-∑[p?[2*n+1]]` -/
def P16906752280608413030.Spec : Prop :=
  ∀ n, P16906752280608413030.a n = A185382 (n + 1)

theorem P16906752280608413030.correct : P16906752280608413030.Spec := by
  intro n
  simp only [A185382, Nat.add_sub_cancel]

end A185382

/-! ## A185382.P5409301770733082695

`∑[n*A001223(n+1)]`
-/

namespace A185382.P5409301770733082695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P5409301770733082695

namespace A185382

/-- `∑[n*A001223(n+1)]` -/
def P5409301770733082695.Spec : Prop :=
  ∀ n, P5409301770733082695.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P3707919476522243307

`∑[n*sqrt(A076821(n+1))]`
-/

namespace A185382.P3707919476522243307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A076821 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P3707919476522243307

namespace A185382

/-- `∑[n*sqrt(A076821(n+1))]` -/
def P3707919476522243307.Spec : Prop :=
  ∀ n, P3707919476522243307.a n = (A185382 (n + 1) : ℝ)

end A185382

/-! ## A185382.P4574904437057751603

`∑[n*log2(A218075(n+1))]`
-/

namespace A185382.P4574904437057751603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (A218075 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P4574904437057751603

namespace A185382

/-- `∑[n*log2(A218075(n+1))]` -/
def P4574904437057751603.Spec : Prop :=
  ∀ n, P4574904437057751603.a n = (A185382 (n + 1) : ℝ)

end A185382

/-! ## A185382.P8768353022874810975

`∑[n*(A046933(n+1)+1)]`
-/

namespace A185382.P8768353022874810975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A046933 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P8768353022874810975

namespace A185382

/-- `∑[n*(A046933(n+1)+1)]` -/
def P8768353022874810975.Spec : Prop :=
  ∀ n, P8768353022874810975.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P13190462506984405515

`∑[n*(A123128(n+1)-(n+1))]`
-/

namespace A185382.P13190462506984405515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A123128 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P13190462506984405515

namespace A185382

/-- `∑[n*(A123128(n+1)-(n+1))]` -/
def P13190462506984405515.Spec : Prop :=
  ∀ n, P13190462506984405515.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P6934992013011247577

`∑[n*(A001043(n+1)-A100484(n+1))]`
-/

namespace A185382.P6934992013011247577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001043 (n + 1) - A100484 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P6934992013011247577

namespace A185382

/-- `∑[n*(A001043(n+1)-A100484(n+1))]` -/
def P6934992013011247577.Spec : Prop :=
  ∀ n, P6934992013011247577.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P18105653897020098441

`∑[n*A075526(n+1)]`
-/

namespace A185382.P18105653897020098441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P18105653897020098441

namespace A185382

/-- `∑[n*A075526(n+1)]` -/
def P18105653897020098441.Spec : Prop :=
  ∀ n, P18105653897020098441.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P7177725129024898103

`∑[n*A054541(n+2)]`
-/

namespace A185382.P7177725129024898103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P7177725129024898103

namespace A185382

/-- `∑[n*A054541(n+2)]` -/
def P7177725129024898103.Spec : Prop :=
  ∀ n, P7177725129024898103.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P5351447206116225061

`∑[n*A125266(n+2)]`
-/

namespace A185382.P5351447206116225061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P5351447206116225061

namespace A185382

/-- `∑[n*A125266(n+2)]` -/
def P5351447206116225061.Spec : Prop :=
  ∀ n, P5351447206116225061.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P4284912984274431205

`∑[n*Δ[A000040(n+1)]]`
-/

namespace A185382.P4284912984274431205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P4284912984274431205

namespace A185382

/-- `∑[n*Δ[A000040(n+1)]]` -/
def P4284912984274431205.Spec : Prop :=
  ∀ n, P4284912984274431205.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P18150972178349428183

`∑[n*Δ[A006093(n+1)]]`
-/

namespace A185382.P18150972178349428183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P18150972178349428183

namespace A185382

/-- `∑[n*Δ[A006093(n+1)]]` -/
def P18150972178349428183.Spec : Prop :=
  ∀ n, P18150972178349428183.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P10590410110820614258

`∑[n*Δ[A008864(n+1)]]`
-/

namespace A185382.P10590410110820614258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P10590410110820614258

namespace A185382

/-- `∑[n*Δ[A008864(n+1)]]` -/
def P10590410110820614258.Spec : Prop :=
  ∀ n, P10590410110820614258.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P12862881071952433125

`∑[n*Δ[A040976(n+1)]]`
-/

namespace A185382.P12862881071952433125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P12862881071952433125

namespace A185382

/-- `∑[n*Δ[A040976(n+1)]]` -/
def P12862881071952433125.Spec : Prop :=
  ∀ n, P12862881071952433125.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P10022397624589991796

`∑[n*Δ[A086801(n+1)]]`
-/

namespace A185382.P10022397624589991796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P10022397624589991796

namespace A185382

/-- `∑[n*Δ[A086801(n+1)]]` -/
def P10022397624589991796.Spec : Prop :=
  ∀ n, P10022397624589991796.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P4470453267761261487

`∑[n*Δ[A113935(n+1)]]`
-/

namespace A185382.P4470453267761261487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P4470453267761261487

namespace A185382

/-- `∑[n*Δ[A113935(n+1)]]` -/
def P4470453267761261487.Spec : Prop :=
  ∀ n, P4470453267761261487.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P4490014584340684481

`∑[n*Δ[A175221(n+1)]]`
-/

namespace A185382.P4490014584340684481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P4490014584340684481

namespace A185382

/-- `∑[n*Δ[A175221(n+1)]]` -/
def P4490014584340684481.Spec : Prop :=
  ∀ n, P4490014584340684481.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P9165281443930994541

`∑[n*(Δ[A014689(n+1)]+1)]`
-/

namespace A185382.P9165281443930994541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P9165281443930994541

namespace A185382

/-- `∑[n*(Δ[A014689(n+1)]+1)]` -/
def P9165281443930994541.Spec : Prop :=
  ∀ n, P9165281443930994541.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P9933190422024737392

`A152535(n+2)-∑[A054541(n+2)]`
-/

namespace A185382.P9933190422024737392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185382.P9933190422024737392

namespace A185382

/-- `A152535(n+2)-∑[A054541(n+2)]` -/
def P9933190422024737392.Spec : Prop :=
  ∀ n, P9933190422024737392.a n = A185382 (n + 1)

end A185382

/-! ## A185382.P7316249007368874692

`A007504(n+1)+A240568(n+2)+2`
-/

namespace A185382.P7316249007368874692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A240568 (n + 2) + 2)

end

end A185382.P7316249007368874692

namespace A185382

/-- `A007504(n+1)+A240568(n+2)+2` -/
def P7316249007368874692.Spec : Prop :=
  ∀ n, P7316249007368874692.a n = A185382 (n + 1)

end A185382

/-!
# A185384: A binomial transform of Fibonacci numbers.

The programs for A185384, the canonical program `A185384.P10083727125216535924` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185384 has offset 0).

The definition of A185384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185384.P10083727125216535924

`A000045(A128076(n+1))*A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A185384

/-- `A000045(A128076(n+1))*A007318(n)` -/
def P10083727125216535924.Spec : Prop :=
  ∀ n, P10083727125216535924.a n = A185384 n

theorem P10083727125216535924.correct : P10083727125216535924.Spec := by
  intro n
  simp only [A185384]

end A185384

/-! ## A185384.P2757222876188114207

`A122070(A061579(n))`
-/

namespace A185384.P2757222876188114207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A061579 n).toNat

end

end A185384.P2757222876188114207

namespace A185384

/-- `A122070(A061579(n))` -/
def P2757222876188114207.Spec : Prop :=
  ∀ n, P2757222876188114207.a n = A185384 n

end A185384

/-! ## A185384.P2548378783788844182

`A122070(A114327(n)+n)`
-/

namespace A185384.P2548378783788844182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A114327 n + (n : ℤ)).toNat

end

end A185384.P2548378783788844182

namespace A185384

/-- `A122070(A114327(n)+n)` -/
def P2548378783788844182.Spec : Prop :=
  ∀ n, P2548378783788844182.a n = A185384 n

end A185384

/-! ## A185384.P81909884962732397

`A122070(A038722(n+1)-1)`
-/

namespace A185384.P81909884962732397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A038722 (n + 1) - 1).toNat

end

end A185384.P81909884962732397

namespace A185384

/-- `A122070(A038722(n+1)-1)` -/
def P81909884962732397.Spec : Prop :=
  ∀ n, P81909884962732397.a n = A185384 n

end A185384

/-! ## A185384.P10808983461079733421

`A122070(A023443(A038722(n+1)))`
-/

namespace A185384.P10808983461079733421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A185384.P10808983461079733421

namespace A185384

/-- `A122070(A023443(A038722(n+1)))` -/
def P10808983461079733421.Spec : Prop :=
  ∀ n, P10808983461079733421.a n = A185384 n

end A185384

/-! ## A185384.P12458155386176390111

`A122070(A057944(n)+A025581(n))`
-/

namespace A185384.P12458155386176390111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A057944 n + A025581 n).toNat

end

end A185384.P12458155386176390111

namespace A185384

/-- `A122070(A057944(n)+A025581(n))` -/
def P12458155386176390111.Spec : Prop :=
  ∀ n, P12458155386176390111.a n = A185384 n

end A185384

/-! ## A185384.P17942258971644855866

`A122070(A057428(n)+A038722(n+1))`
-/

namespace A185384.P17942258971644855866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A057428 n + A038722 (n + 1)).toNat

end

end A185384.P17942258971644855866

namespace A185384

/-- `A122070(A057428(n)+A038722(n+1))` -/
def P17942258971644855866.Spec : Prop :=
  ∀ n, P17942258971644855866.a n = A185384 n

end A185384

/-! ## A185384.P14552521688319319965

`A122070(A002378(n)%A014132(n+1))`
-/

namespace A185384.P14552521688319319965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A185384.P14552521688319319965

namespace A185384

/-- `A122070(A002378(n)%A014132(n+1))` -/
def P14552521688319319965.Spec : Prop :=
  ∀ n, P14552521688319319965.a n = A185384 n

end A185384

/-! ## A185384.P12924904516796582774

`A122070(A259361(A038722(n+1)²))`
-/

namespace A185384.P12924904516796582774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (A259361 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A185384.P12924904516796582774

namespace A185384

/-- `A122070(A259361(A038722(n+1)²))` -/
def P12924904516796582774.Spec : Prop :=
  ∀ n, P12924904516796582774.a n = A185384 n

end A185384

/-!
# A185385: G.f. satisfies: A(x) = exp( Sum_{n>=1} (2*A(x) - (-1)^n)^n * x^n/n ).

The programs for A185385, there is no canonical definition to state claims against.
-/

/-! ## A185385.P16733612247409338957

`A053224(or(Δ[n²], A111059(n+1)))`
-/

namespace A185385.P16733612247409338957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (Int.lor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A111059 (n + 1))).toNat

end

end A185385.P16733612247409338957

/-! ## A185385.P10069766397197984874

`or(A215366(n), A256260(A002426(n)))`
-/

namespace A185385.P10069766397197984874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215366 n) (A256260 (A002426 n).toNat)

end

end A185385.P10069766397197984874

/-!
# A185386: E.g.f. A(x) = (x*e^A(x) + x*e^(A(x)^2))/2.

The programs for A185386, there is no canonical definition to state claims against.
-/

/-! ## A185386.P4767369528972132693

`gcd(n, ∑[n])*A228125(floor((n+4)*2^(n-2)))`
-/

namespace A185386.P4767369528972132693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A228125 ⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat

end

end A185386.P4767369528972132693

/-! ## A185386.P13919437405543983594

`A008624(A130293(n+1))`
-/

namespace A185386.P13919437405543983594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A130293 (n + 1)).toNat

end

end A185386.P13919437405543983594

/-!
# A185387: Expansion of e.g.f. exp(x)+log(1/(1-x)).

The programs for A185387, there is no canonical definition to state claims against.
-/

/-! ## A185387.P10924918569062461797

`ceil(abs(sin(n)))+abs(1-n)!`
-/

namespace A185387.P10924918569062461797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ + (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A185387.P10924918569062461797

/-! ## A185387.P1879498685830693499

`abs(1-n)!-floor(acot(n))+1`
-/

namespace A185387.P1879498685830693499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1

end

end A185387.P1879498685830693499

/-! ## A185387.P13965834383661706794

`abs(1-n)!-(floor(acot(n))-1)`
-/

namespace A185387.P13965834383661706794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A185387.P13965834383661706794

/-! ## A185387.P14982121699870072734

`a(C(2, n+2))+(n-1)!` with `a(0)=1`
-/

namespace A185387.P14982121699870072734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.choose 2 (n + 2)) + Nat.factorial ((n : ℤ) - 1).toNat

end

end A185387.P14982121699870072734

/-! ## A185387.P18255220149793783623

`a(and(1, 2*n))+(n-1)!` with `a(0)=1`
-/

namespace A185387.P18255220149793783623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.land 1 (2 * n)) + Nat.factorial ((n : ℤ) - 1).toNat

end

end A185387.P18255220149793783623

/-! ## A185387.P4119861145479424355

`a(val(n, n+1))+(n-1)!` with `a(0)=1`
-/

namespace A185387.P4119861145479424355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.valuation n (n + 1)) + Nat.factorial ((n : ℤ) - 1).toNat

end

end A185387.P4119861145479424355

/-! ## A185387.P6895556786228581991

`ceil(abs(1-n)!+n/(n+1))`
-/

namespace A185387.P6895556786228581991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial |1 - (n : ℤ)|.toNat : ℚ) + (n : ℚ) / (n + 1 : ℚ)⌉

end

end A185387.P6895556786228581991

/-! ## A185387.P10400261206261946194

`round(abs(1-n)!+n/(n+1))`
-/

namespace A185387.P10400261206261946194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial |1 - (n : ℤ)|.toNat : ℚ) + (n : ℚ) / (n + 1 : ℚ))

end

end A185387.P10400261206261946194

/-! ## A185387.P8959202328906957709

`(n-1)!-or(-1, a(n-1))` with `a(0)=1`
-/

namespace A185387.P8959202328906957709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - Int.lor (-1) (a (n - 1))

end

end A185387.P8959202328906957709

/-! ## A185387.P9813537484770574409

`abs(1-n)!+(n+2)%(n+1)`
-/

namespace A185387.P9813537484770574409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat + (n + 2) % (n + 1)

end

end A185387.P9813537484770574409

/-!
# A185388: E.g.f. A(x), where A(x)=x*exp(A(x))+x*log(1/(1-A(x))).

The programs for A185388, there is no canonical definition to state claims against.
-/

/-! ## A185388.P1111833879944784733

`A299405((n-1)*a(n-1))+1` with `a(0)=1`
-/

namespace A185388.P1111833879944784733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299405 (((n : ℤ) - 1) * a (n - 1)).toNat + 1

end

end A185388.P1111833879944784733

/-!
# A185389: Largest number k such that the greatest prime factor of k^2+1 is A002313(n), the n-th prime not congruent to 3 mod 4.

The programs for A185389, there is no canonical definition to state claims against.
-/

/-! ## A185389.P16368957574469131657

`A223702(A285283(n+1))`
-/

namespace A185389.P16368957574469131657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223702 (A285283 (n + 1)).toNat

end

end A185389.P16368957574469131657

/-! ## A185389.P16883989341375752702

`A223702(∑[A379346(n+1)])`
-/

namespace A185389.P16883989341375752702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223702 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185389.P16883989341375752702

/-!
# A185390: Triangular array read by rows. T(n,k) is the number of partial functions on n labeled objects in which the domain of definition contains exactly k elements such that for all i in {1,2,3,...}, (f^i)(x) is defined.

The programs for A185390, there is no canonical definition to state claims against.
-/

/-! ## A185390.P8417837340406135622

`A066320(n+1)/∑[char[∑[n]]]`
-/

namespace A185390.P8417837340406135622
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066320 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A185390.P8417837340406135622

/-! ## A185390.P802701425593388597

`1/A002024(n+1)*A066320(n+1)`
-/

namespace A185390.P802701425593388597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002024 (n + 1) : ℚ) * (A066320 (n + 1) : ℚ)

end

end A185390.P802701425593388597

/-! ## A185390.P16083693202134582997

`A000312(A002262(n))*A088956(n)`
-/

namespace A185390.P16083693202134582997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002262 n).toNat * A088956 n

end

end A185390.P16083693202134582997

/-! ## A185390.P6942163221672475390

`A088956(n)*A174551(A112367(n))`
-/

namespace A185390.P6942163221672475390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 n * A174551 (A112367 n).toNat

end

end A185390.P6942163221672475390

/-! ## A185390.P592324719543819572

`A244137(A114327(n)+A014132(n+1))/A002024(n+1)`
-/

namespace A185390.P592324719543819572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 (A114327 n + A014132 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)

end

end A185390.P592324719543819572

/-! ## A185390.P16444846961032723401

`A244137(A038722(n+1)+A002024(n+1))/A002024(n+1)`
-/

namespace A185390.P16444846961032723401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244137 (A038722 (n + 1) + A002024 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)

end

end A185390.P16444846961032723401

/-!
# A185391: a(n) = Sum_{k=0..n} A185390(n,k) * k.

The programs for A185391, there is no canonical definition to state claims against.
-/

/-! ## A185391.P13301901058455854115

`(n+1)^(n+1)-A001865(n+1)`
-/

namespace A185391.P13301901058455854115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A001865 (n + 1)

end

end A185391.P13301901058455854115

/-! ## A185391.P13826780351171346245

`A219706(n+1)/(n+1)`
-/

namespace A185391.P13826780351171346245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219706 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A185391.P13826780351171346245

/-! ## A185391.P7516677619069557889

`n*A000169(n+1)-A000435(n+1)`
-/

namespace A185391.P7516677619069557889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000169 (n + 1) - A000435 (n + 1)

end

end A185391.P7516677619069557889

/-! ## A185391.P11457700171883799581

`n*(A000169(n+1)-A001863(n+1))`
-/

namespace A185391.P11457700171883799581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000169 (n + 1) - A001863 (n + 1))

end

end A185391.P11457700171883799581

/-! ## A185391.P7178584298255571257

`n*A001865(n+1)-A001864(n+1)`
-/

namespace A185391.P7178584298255571257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001865 (n + 1) - A001864 (n + 1)

end

end A185391.P7178584298255571257

/-! ## A185391.P7458491874852424983

`A000312(n+1)-A350079(A000124(n))`
-/

namespace A185391.P7458491874852424983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A350079 (A000124 n).toNat

end

end A185391.P7458491874852424983

/-! ## A185391.P3876773768909545638

`A000312(n+1)-A060281(A000217(n)+1)`
-/

namespace A185391.P3876773768909545638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A060281 (A000217 n + 1).toNat

end

end A185391.P3876773768909545638

/-! ## A185391.P15191611134421794661

`A063169(n+1)-(A001865(n+1)+A001864(n+1))`
-/

namespace A185391.P15191611134421794661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063169 (n + 1) - (A001865 (n + 1) + A001864 (n + 1))

end

end A185391.P15191611134421794661

/-! ## A185391.P3940733859134503459

`A063170(n+1)-(A063169(n+1)+A001865(n+1))`
-/

namespace A185391.P3940733859134503459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063170 (n + 1) - (A063169 (n + 1) + A001865 (n + 1))

end

end A185391.P3940733859134503459

/-!
# A185392: Position of g(n) when the numbers f(j) and g(k) are jointly ranked, where f(j) = j + |cos j| and g(k) = k + |sin k|.

The programs for A185392, the canonical program `A185392.P7306616833962096304` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185392 has offset 1).

The definition of A185392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185392.P7306616833962096304

`ceil(2*(sin(n+1)²+n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A185392

/-- `ceil(2*(sin(n+1)²+n))` -/
def P7306616833962096304.Spec : Prop :=
  ∀ n, P7306616833962096304.a n = A185392 (n + 1)

theorem P7306616833962096304.correct : P7306616833962096304.Spec := by
  intro n
  simp only [A185392, Nat.add_sub_cancel]

end A185392

/-! ## A185392.P18239053908693941162

`ceil(2*(n+1-cos(n+1)²))`
-/

namespace A185392.P18239053908693941162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n + 1 : ℝ) - Real.cos (n + 1 : ℝ) ^ 2)⌉

end

end A185392.P18239053908693941162

namespace A185392

/-- `ceil(2*(n+1-cos(n+1)²))` -/
def P18239053908693941162.Spec : Prop :=
  ∀ n, P18239053908693941162.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P18246092480082420431

`round(sin(n+1)²+2*n+1)`
-/

namespace A185392.P18246092480082420431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (n + 1 : ℝ) ^ 2 + (2 * n + 1 : ℝ))

end

end A185392.P18246092480082420431

namespace A185392

/-- `round(sin(n+1)²+2*n+1)` -/
def P18246092480082420431.Spec : Prop :=
  ∀ n, P18246092480082420431.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P4990445656110392973

`round(n+1+sin(n+1)²+n)`
-/

namespace A185392.P4990445656110392973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) + (Real.sin (n + 1 : ℝ) ^ 2 + (n : ℝ)))

end

end A185392.P4990445656110392973

namespace A185392

/-- `round(n+1+sin(n+1)²+n)` -/
def P4990445656110392973.Spec : Prop :=
  ∀ n, P4990445656110392973.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P17224947760428813091

`2*n+1-floor(cos(2*(n+1)))`
-/

namespace A185392.P17224947760428813091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊Real.cos (2 * (n + 1) : ℝ)⌋

end

end A185392.P17224947760428813091

namespace A185392

/-- `2*n+1-floor(cos(2*(n+1)))` -/
def P17224947760428813091.Spec : Prop :=
  ∀ n, P17224947760428813091.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P9658570065637810864

`ceil(2*n+1-cos(2*(n+1)))`
-/

namespace A185392.P9658570065637810864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) - Real.cos (2 * (n + 1) : ℝ)⌉

end

end A185392.P9658570065637810864

namespace A185392

/-- `ceil(2*n+1-cos(2*(n+1)))` -/
def P9658570065637810864.Spec : Prop :=
  ∀ n, P9658570065637810864.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P586075698288240875

`2*n+1-floor(sin(2*n-9))`
-/

namespace A185392.P586075698288240875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ⌊Real.sin ((2 * n : ℤ) - 9 : ℝ)⌋

end

end A185392.P586075698288240875

namespace A185392

/-- `2*n+1-floor(sin(2*n-9))` -/
def P586075698288240875.Spec : Prop :=
  ∀ n, P586075698288240875.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P5441892307327757901

`ceil(sin(9-2*n)+2*n+1)`
-/

namespace A185392.P5441892307327757901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (9 - (2 * n : ℤ) : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A185392.P5441892307327757901

namespace A185392

/-- `ceil(sin(9-2*n)+2*n+1)` -/
def P5441892307327757901.Spec : Prop :=
  ∀ n, P5441892307327757901.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P1655169113317363146

`round(n+1-cos(n+1)²)+n+1`
-/

namespace A185392.P1655169113317363146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.cos (n + 1 : ℝ) ^ 2) + (n + 1 : ℤ)

end

end A185392.P1655169113317363146

namespace A185392

/-- `round(n+1-cos(n+1)²)+n+1` -/
def P1655169113317363146.Spec : Prop :=
  ∀ n, P1655169113317363146.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P6154144401602563579

`A372456(n+1)+Δ[n²]`
-/

namespace A185392.P6154144401602563579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372456 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A185392.P6154144401602563579

namespace A185392

/-- `A372456(n+1)+Δ[n²]` -/
def P6154144401602563579.Spec : Prop :=
  ∀ n, P6154144401602563579.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P18306488208104403612

`A014681(A208327(n+1))`
-/

namespace A185392.P18306488208104403612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A208327 (n + 1)).toNat

end

end A185392.P18306488208104403612

namespace A185392

/-- `A014681(A208327(n+1))` -/
def P18306488208104403612.Spec : Prop :=
  ∀ n, P18306488208104403612.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P9794240917660049525

`A004767(n)-A208327(n+1)`
-/

namespace A185392.P9794240917660049525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A208327 (n + 1)

end

end A185392.P9794240917660049525

namespace A185392

/-- `A004767(n)-A208327(n+1)` -/
def P9794240917660049525.Spec : Prop :=
  ∀ n, P9794240917660049525.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P1505533200265138769

`xor(A088837(n+1), A208327(n+1))`
-/

namespace A185392.P1505533200265138769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A208327 (n + 1))

end

end A185392.P1505533200265138769

namespace A185392

/-- `xor(A088837(n+1), A208327(n+1))` -/
def P1505533200265138769.Spec : Prop :=
  ∀ n, P1505533200265138769.a n = A185392 (n + 1)

end A185392

/-! ## A185392.P14785668827985859158

`floor(A005843(n+1)-cos(A005843(n+1)))`
-/

namespace A185392.P14785668827985859158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (n + 1) : ℝ) - Real.cos (A005843 (n + 1) : ℝ)⌋

end

end A185392.P14785668827985859158

namespace A185392

/-- `floor(A005843(n+1)-cos(A005843(n+1)))` -/
def P14785668827985859158.Spec : Prop :=
  ∀ n, P14785668827985859158.a n = A185392 (n + 1)

end A185392

/-!
# A185393: Decimal expansion of e/(e-1) = 1 + 1/e + 1/e^2 + ...

The programs for A185393, there is no canonical definition to state claims against.
-/

/-! ## A185393.P3703496589582049432

`A073333(lcm(1-n, ceil(acot(n))))`
-/

namespace A185393.P3703496589582049432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073333 (Int.lcm (1 - (n : ℤ)) ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A185393.P3703496589582049432

/-!
# A185394: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+193)^2 = y^2.

The programs for A185394, there is no canonical definition to state claims against.
-/

/-! ## A185394.P12762693885013370907

`A129289(n+1)+A129544(n+1)-A118120(n)`
-/

namespace A185394.P12762693885013370907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129289 (n + 1) + (A129544 (n + 1) - A118120 n)

end

end A185394.P12762693885013370907

/-!
# A185395: a(3n) = n^2, a(3n+1) = a(3n+2) = 3*n*(n+1)/2.

The programs for A185395, the canonical program `A185395.P13652728076347247808` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185395 has offset 0).

The definition of A185395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185395.P13652728076347247808

`A005899(n)-A299272(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A185395

/-- `A005899(n)-A299272(n)` -/
def P13652728076347247808.Spec : Prop :=
  ∀ n, P13652728076347247808.a n = A185395 n

theorem P13652728076347247808.correct : P13652728076347247808.Spec := by
  intro n
  simp only [A185395]

end A185395

/-! ## A185395.P3633612344869123470

`Δ[A161712(n)]%A299272(n)`
-/

namespace A185395.P3633612344869123470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A299272 n)

end

end A185395.P3633612344869123470

namespace A185395

/-- `Δ[A161712(n)]%A299272(n)` -/
def P3633612344869123470.Spec : Prop :=
  ∀ n, P3633612344869123470.a n = A185395 n

end A185395

/-! ## A185395.P247441464479696057

`A008130(n)/2*A164359(n)`
-/

namespace A185395.P247441464479696057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008130 n : ℚ) / 2 * (A164359 n : ℚ)

end

end A185395.P247441464479696057

namespace A185395

/-- `A008130(n)/2*A164359(n)` -/
def P247441464479696057.Spec : Prop :=
  ∀ n, P247441464479696057.a n = (A185395 n : ℚ)

end A185395

/-! ## A185395.P2625588236982730842

`A010001(n)-(A299272(n)+n²)`
-/

namespace A185395.P2625588236982730842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - (A299272 n + (n ^ 2 : ℤ))

end

end A185395.P2625588236982730842

namespace A185395

/-- `A010001(n)-(A299272(n)+n²)` -/
def P2625588236982730842.Spec : Prop :=
  ∀ n, P2625588236982730842.a n = A185395 n

end A185395

/-! ## A185395.P6901201195022534464

`A010006(n)-(A299272(n)+A135453(n))`
-/

namespace A185395.P6901201195022534464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n - (A299272 n + A135453 n)

end

end A185395.P6901201195022534464

namespace A185395

/-- `A010006(n)-(A299272(n)+A135453(n))` -/
def P6901201195022534464.Spec : Prop :=
  ∀ n, P6901201195022534464.a n = A185395 n

end A185395

/-! ## A185395.P4307419852145121440

`A005899(n)%A299272(n%A001845(n))`
-/

namespace A185395.P4307419852145121440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005899 n) (A299272 (Int.tmod (n : ℤ) (A001845 n)).toNat)

end

end A185395.P4307419852145121440

namespace A185395

/-- `A005899(n)%A299272(n%A001845(n))` -/
def P4307419852145121440.Spec : Prop :=
  ∀ n, P4307419852145121440.a n = A185395 n

end A185395

/-! ## A185395.P12533375743222136080

`lcm(A005899(n), A164359(n))%A299272(n)`
-/

namespace A185395.P12533375743222136080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A005899 n) (A164359 n) : ℤ) (A299272 n)

end

end A185395.P12533375743222136080

namespace A185395

/-- `lcm(A005899(n), A164359(n))%A299272(n)` -/
def P12533375743222136080.Spec : Prop :=
  ∀ n, P12533375743222136080.a n = A185395 n

end A185395

/-! ## A185395.P7449475281660923439

`A026741(A008130(n)*A164359(n))`
-/

namespace A185395.P7449475281660923439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008130 n * A164359 n).toNat

end

end A185395.P7449475281660923439

namespace A185395

/-- `A026741(A008130(n)*A164359(n))` -/
def P7449475281660923439.Spec : Prop :=
  ∀ n, P7449475281660923439.a n = A185395 n

end A185395

/-! ## A185395.P9338614557616122353

`A016825(n²)%A299272(n)`
-/

namespace A185395.P9338614557616122353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 (n ^ 2)) (A299272 n)

end

end A185395.P9338614557616122353

namespace A185395

/-- `A016825(n²)%A299272(n)` -/
def P9338614557616122353.Spec : Prop :=
  ∀ n, P9338614557616122353.a n = A185395 n

end A185395

/-!
# A185396: Largest number x such that the greatest prime factor of x^2-2 is A038873(n), the n-th prime not congruent to 3 or 5 mod 8.

The programs for A185396, there is no canonical definition to state claims against.
-/

/-! ## A185396.P585647317473811971

`A242488(∑[A379348(n+1)])`
-/

namespace A185396.P585647317473811971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242488 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185396.P585647317473811971

/-!
# A185399: As p runs through the primes, sequence gives denominator of Sum_{k=1..p-1} 1/k.

The programs for A185399, there is no canonical definition to state claims against.
-/

/-! ## A185399.P12345038605510821669

`A002805(A006093(n+1))`
-/

namespace A185399.P12345038605510821669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (A006093 (n + 1)).toNat

end

end A185399.P12345038605510821669

/-! ## A185399.P11676792701125255659

`A027611(A000040(n+1))`
-/

namespace A185399.P11676792701125255659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A000040 (n + 1)).toNat

end

end A185399.P11676792701125255659

/-! ## A185399.P2082609543027623524

`A027611(A006005(n+1))`
-/

namespace A185399.P2082609543027623524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A006005 (n + 1)).toNat

end

end A185399.P2082609543027623524

/-! ## A185399.P16583027629435550375

`A002805(Δ[A007504(n)]-1)`
-/

namespace A185399.P16583027629435550375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (f1 (n + 1) - f1 n - 1).toNat

end

end A185399.P16583027629435550375

/-! ## A185399.P4699989127002889796

`A002805(record[A000010(n+1)])`
-/

namespace A185399.P4699989127002889796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185399.P4699989127002889796

/-! ## A185399.P18350592906098478669

`record[A027611(A006530(n+1))]`
-/

namespace A185399.P18350592906098478669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185399.P18350592906098478669

/-! ## A185399.P5256910460404757493

`record[A027611(A020639(n+1))]`
-/

namespace A185399.P5256910460404757493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185399.P5256910460404757493

/-! ## A185399.P15145440468535649009

`A069220(record[A006530(n+2)])`
-/

namespace A185399.P15145440468535649009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185399.P15145440468535649009

/-! ## A185399.P3219718794130488794

`A069220(record[A020639(n+2)])`
-/

namespace A185399.P3219718794130488794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069220 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185399.P3219718794130488794

/-! ## A185399.P10956810275553635315

`A128438(record[A006530(n+2)])`
-/

namespace A185399.P10956810275553635315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128438 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185399.P10956810275553635315

