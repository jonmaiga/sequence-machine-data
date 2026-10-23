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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
# A277402: "3-Portolan numbers": number of regions formed by n-secting the angles of an equilateral triangle.

The programs for A277402, there is no canonical definition to state claims against.
-/

/-! ## A277402.P14566584514239623877

`∑[2*n]+A335412(n+1)/3`
-/

namespace A277402.P14566584514239623877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A335412 (n + 1) : ℚ) / 3

end

end A277402.P14566584514239623877

/-! ## A277402.P7904300006622860738

`(A335412(n+1)+A028896(n))/3`
-/

namespace A277402.P7904300006622860738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335412 (n + 1) + A028896 n : ℚ) / 3

end

end A277402.P7904300006622860738

/-! ## A277402.P9242473644017004522

`A335412(n+1)+1-A335411(n+1)`
-/

namespace A277402.P9242473644017004522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335412 (n + 1) + (1 - A335411 (n + 1))

end

end A277402.P9242473644017004522

/-! ## A277402.P5860356902563846909

`A335412(n+1)/3+2*A000217(n)`
-/

namespace A277402.P5860356902563846909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335412 (n + 1) : ℚ) / 3 + (2 * A000217 n : ℚ)

end

end A277402.P5860356902563846909

/-! ## A277402.P2293766277020749033

`A335412(n+1)/3+A005563(n)-n`
-/

namespace A277402.P2293766277020749033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335412 (n + 1) : ℚ) / 3 + (A005563 n - (n : ℤ) : ℚ)

end

end A277402.P2293766277020749033

/-! ## A277402.P18004855990474913973

`A335412(n+1)-A185048(A335411(n+1))`
-/

namespace A277402.P18004855990474913973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335412 (n + 1) - A185048 (A335411 (n + 1)).toNat

end

end A277402.P18004855990474913973

/-! ## A277402.P13362270549723379272

`A045943(n)+A004526(A335411(n+1))`
-/

namespace A277402.P13362270549723379272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + A004526 (A335411 (n + 1)).toNat

end

end A277402.P13362270549723379272

/-! ## A277402.P5217757013011951792

`A004526(A335411(n+1))+A008585(∑[n])`
-/

namespace A277402.P5217757013011951792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A335411 (n + 1)).toNat + A008585 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277402.P5217757013011951792

/-!
# A277403: E.g.f. satisfies: A(x - Integral A(x) dx) = x + Integral A(x) dx.

The programs for A277403, there is no canonical definition to state claims against.
-/

/-! ## A277403.P380578478060394982

`A002522(n)*A104445(A009881(n))`
-/

namespace A277403.P380578478060394982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A104445 (A009881 n).toNat

end

end A277403.P380578478060394982

/-! ## A277403.P16082528579117353695

`A002522(n)*A104445(A004273(n²))`
-/

namespace A277403.P16082528579117353695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A104445 (A004273 (n ^ 2)).toNat

end

end A277403.P16082528579117353695

/-!
# A277404: E.g.f. A(x) satisfies: A( x - (exp(x) - 1)^2 ) = x + (exp(x) - 1)^2.

The programs for A277404, there is no canonical definition to state claims against.
-/

/-! ## A277404.P7109599359800803191

`2*A143138(n+1)-A000007(n)`
-/

namespace A277404.P7109599359800803191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143138 (n + 1) - A000007 n

end

end A277404.P7109599359800803191

/-! ## A277404.P4973962336417464471

`A000005(A008578(n+1))*A143138(n+1)`
-/

namespace A277404.P4973962336417464471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A143138 (n + 1)

end

end A277404.P4973962336417464471

/-! ## A277404.P1044950691722372273

`A143074(2*n)*A143138(n+1)`
-/

namespace A277404.P1044950691722372273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143074 (2 * n) * A143138 (n + 1)

end

end A277404.P1044950691722372273

/-! ## A277404.P8457167776464853548

`A006530(A143095(n))*A143138(n+1)`
-/

namespace A277404.P8457167776464853548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143095 n).toNat * A143138 (n + 1)

end

end A277404.P8457167776464853548

/-! ## A277404.P4419545805207082

`A020639(A000143(n))*A143138(n+1)`
-/

namespace A277404.P4419545805207082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000143 n).toNat * A143138 (n + 1)

end

end A277404.P4419545805207082

/-!
# A277406: a(n) equals the sum of all permutations of compositions of functions (1 + k*x) for k=1..n, evaluated at x=1.

The programs for A277406, there is no canonical definition to state claims against.
-/

/-! ## A277406.P4923946149781036829

`(n+1)*A277407(n)`
-/

namespace A277406.P4923946149781036829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A277407 n

end

end A277406.P4923946149781036829

/-! ## A277406.P6074283746511915539

`A277407(n)*A284823(A000124(n))`
-/

namespace A277406.P6074283746511915539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277407 n * A284823 (A000124 n).toNat

end

end A277406.P6074283746511915539

/-! ## A277406.P12529400258790073984

`A277407(n)*A278530(A000079(n))`
-/

namespace A277406.P12529400258790073984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277407 n * A278530 (A000079 n).toNat

end

end A277406.P12529400258790073984

/-! ## A277406.P4588934872028522802

`A277407(n)*A305149(A020714(n))`
-/

namespace A277406.P4588934872028522802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277407 n * A305149 (A020714 n).toNat

end

end A277406.P4588934872028522802

/-!
# A277407: a(n) = A277406(n)/(n+1).

The programs for A277407, there is no canonical definition to state claims against.
-/

/-! ## A277407.P13118712171992371897

`A277406(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277407.P13118712171992371897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277406 n : ℚ) / (n + 1 : ℚ)

end

end A277407.P13118712171992371897

/-! ## A277407.P7910214113502860180

`floor(A277406(n)/A008619(2*n))`
-/

namespace A277407.P7910214113502860180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277406 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A277407.P7910214113502860180

/-! ## A277407.P6315208529147225395

`A006013(n)/A045721(n)*A277406(n)`
-/

namespace A277407.P6315208529147225395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006013 n : ℚ) / (A045721 n : ℚ) * (A277406 n : ℚ)

end

end A277407.P6315208529147225395

/-!
# A277408: Triangle, read by rows, where the g.f. of row n equals the sum of permutations of compositions of functions (1 + k*y*x) for k=1..n with parameter y independent of variable x, as evaluated at x=1.

The programs for A277408, there is no canonical definition to state claims against.
-/

/-! ## A277408.P5815102453145052131

`A094638(n+1)*A098361(n)`
-/

namespace A277408.P5815102453145052131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (n + 1) * A098361 n

end

end A277408.P5815102453145052131

/-! ## A277408.P2863414701805421967

`abs(A008276(n+1)*A098361(n))`
-/

namespace A277408.P2863414701805421967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008276 (n + 1) * A098361 n|

end

end A277408.P2863414701805421967

/-! ## A277408.P12660936001589230921

`A098361(n)*A130534(∑[2*n]%comp[∑[n]])`
-/

namespace A277408.P12660936001589230921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A130534 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A277408.P12660936001589230921

/-! ## A277408.P9019612213257581311

`A098361(n)*A130534(∑[char[∑[n]]]²-n-1)`
-/

namespace A277408.P9019612213257581311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A130534 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A277408.P9019612213257581311

/-! ## A277408.P2637497866755444186

`A188881(A038722(n+1))*A233543(n)`
-/

namespace A277408.P2637497866755444186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188881 (A038722 (n + 1)).toNat * A233543 n

end

end A277408.P2637497866755444186

/-! ## A277408.P12125564965236227569

`abs(A008275(A038722(n+1))*A098361(n))`
-/

namespace A277408.P12125564965236227569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (A038722 (n + 1)).toNat * A098361 n|

end

end A277408.P12125564965236227569

/-! ## A277408.P17065390652078580766

`gcd(A008276(n+1)*A098361(n), A000038(n))`
-/

namespace A277408.P17065390652078580766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008276 (n + 1) * A098361 n) (A000038 n)

end

end A277408.P17065390652078580766

/-! ## A277408.P9535825019079286166

`lcm(A008276(n+1), A033999(n))*A098361(n)`
-/

namespace A277408.P9535825019079286166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008276 (n + 1)) (A033999 n) : ℤ) * A098361 n

end

end A277408.P9535825019079286166

/-! ## A277408.P12305961566217851019

`lcm(A008276(n+1)*A098361(n), A097807(n))`
-/

namespace A277408.P12305961566217851019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008276 (n + 1) * A098361 n) (A097807 n)

end

end A277408.P12305961566217851019

/-!
# A277409: a(n) equals the coefficient of x^n in (1 - log(1-x))^n! for n>=0.

The programs for A277409, there is no canonical definition to state claims against.
-/

/-! ## A277409.P991173659703012406

`A108897(∏[∏[A001006(n)]])`
-/

namespace A277409.P991173659703012406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108897 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277409.P991173659703012406

/-!
# A277411: Column 1 of triangle A277410.

The programs for A277411, the canonical program `A277411.P3434670696952066326` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277411 has offset 1).

The definition of A277411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277411.P3434670696952066326

`∑[∑[∑[2^n]]-1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277411

/-- `∑[∑[∑[2^n]]-1]` -/
def P3434670696952066326.Spec : Prop :=
  ∀ n, P3434670696952066326.a n = A277411 (n + 1)

theorem P3434670696952066326.correct : P3434670696952066326.Spec := by
  intro n
  simp only [A277411, Nat.add_sub_cancel]

end A277411

/-! ## A277411.P8069902400342103541

`∑[n]+2*(a(n-1)+n)` with `a(0)=0`
-/

namespace A277411.P8069902400342103541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * (a (n - 1) + n)

end

end A277411.P8069902400342103541

namespace A277411

/-- `∑[n]+2*(a(n-1)+n)` -/
def P8069902400342103541.Spec : Prop :=
  ∀ n, (P8069902400342103541.a n : ℤ) = A277411 (n + 1)

end A277411

/-! ## A277411.P5769281386953261305

`floor(∑[∑[∑[2*a(n-1)]]])` with `a(0)=0, a(1)=3, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A277411.P5769281386953261305
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277411.P5769281386953261305

namespace A277411

/-- `floor(∑[∑[∑[2*a(n-1)]]])` -/
def P5769281386953261305.Spec : Prop :=
  ∀ n, (P5769281386953261305.a n : ℤ) = A277411 (n + 1)

end A277411

/-! ## A277411.P4503560271544182117

`∑[∑[2*a(n-1)]]-∑[n]` with `a(0)=0, a(1)=4`
-/

namespace A277411.P4503560271544182117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A277411.P4503560271544182117

namespace A277411

/-- `∑[∑[2*a(n-1)]]-∑[n]` -/
def P4503560271544182117.Spec : Prop :=
  ∀ n, P4503560271544182117.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P4236507559159377658

`floor(∑[∑[a(n-1)+a(n-1)+1]])` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A277411.P4236507559159377658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277411.P4236507559159377658

namespace A277411

/-- `floor(∑[∑[a(n-1)+a(n-1)+1]])` -/
def P4236507559159377658.Spec : Prop :=
  ∀ n, (P4236507559159377658.a n : ℤ) = A277411 (n + 1)

end A277411

/-! ## A277411.P818012601105376645

`∑[a(n-1)+a(n-1)+4]-∑[n]` with `a(0)=0`
-/

namespace A277411.P818012601105376645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A277411.P818012601105376645

namespace A277411

/-- `∑[a(n-1)+a(n-1)+4]-∑[n]` -/
def P818012601105376645.Spec : Prop :=
  ∀ n, P818012601105376645.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P15349166032998142046

`A342352(n+3)-n`
-/

namespace A277411.P15349166032998142046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342352 (n + 3) - (n : ℤ)

end

end A277411.P15349166032998142046

namespace A277411

/-- `A342352(n+3)-n` -/
def P15349166032998142046.Spec : Prop :=
  ∀ n, P15349166032998142046.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P17532154374813781297

`∑[A173033(n)-n]-1`
-/

namespace A277411.P17532154374813781297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173033 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A277411.P17532154374813781297

namespace A277411

/-- `∑[A173033(n)-n]-1` -/
def P17532154374813781297.Spec : Prop :=
  ∀ n, P17532154374813781297.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P3375713741425718580

`A324172(n+3)+∑[n]`
-/

namespace A277411.P3375713741425718580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324172 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277411.P3375713741425718580

namespace A277411

/-- `A324172(n+3)+∑[n]` -/
def P3375713741425718580.Spec : Prop :=
  ∀ n, P3375713741425718580.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P9961668639543551893

`A302689(n+3)-∑[n]`
-/

namespace A277411.P9961668639543551893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302689 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277411.P9961668639543551893

namespace A277411

/-- `A302689(n+3)-∑[n]` -/
def P9961668639543551893.Spec : Prop :=
  ∀ n, P9961668639543551893.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P15220676404991651938

`∑[∑[A091270(n)]]+n²`
-/

namespace A277411.P15220676404991651938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091270 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A277411.P15220676404991651938

namespace A277411

/-- `∑[∑[A091270(n)]]+n²` -/
def P15220676404991651938.Spec : Prop :=
  ∀ n, P15220676404991651938.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P16233773955800361074

`A002662(n+3)-(n+1)`
-/

namespace A277411.P16233773955800361074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 (n + 3) - (n + 1 : ℤ)

end

end A277411.P16233773955800361074

namespace A277411

/-- `A002662(n+3)-(n+1)` -/
def P16233773955800361074.Spec : Prop :=
  ∀ n, P16233773955800361074.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P6786887045314158429

`A130104(n+2)-(n+2)`
-/

namespace A277411.P6786887045314158429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130104 (n + 2) - (n + 2 : ℤ)

end

end A277411.P6786887045314158429

namespace A277411

/-- `A130104(n+2)-(n+2)` -/
def P6786887045314158429.Spec : Prop :=
  ∀ n, P6786887045314158429.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P17919057275830422935

`A014833(n+3)-(n+2)`
-/

namespace A277411.P17919057275830422935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 (n + 3) - (n + 2 : ℤ)

end

end A277411.P17919057275830422935

namespace A277411

/-- `A014833(n+3)-(n+2)` -/
def P17919057275830422935.Spec : Prop :=
  ∀ n, P17919057275830422935.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P14636125852075665399

`∑[A109363(n)]+(n+1)²`
-/

namespace A277411.P14636125852075665399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A277411.P14636125852075665399

namespace A277411

/-- `∑[A109363(n)]+(n+1)²` -/
def P14636125852075665399.Spec : Prop :=
  ∀ n, P14636125852075665399.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P13497460856234195350

`A095264(n+1)-∑[n+1]`
-/

namespace A277411.P13497460856234195350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095264 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277411.P13497460856234195350

namespace A277411

/-- `A095264(n+1)-∑[n+1]` -/
def P13497460856234195350.Spec : Prop :=
  ∀ n, P13497460856234195350.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P307127488389322258

`A024012(n+3)+∑[n+1]`
-/

namespace A277411.P307127488389322258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277411.P307127488389322258

namespace A277411

/-- `A024012(n+3)+∑[n+1]` -/
def P307127488389322258.Spec : Prop :=
  ∀ n, P307127488389322258.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P13990262491246865963

`A048492(n+1)-(2*n+3)`
-/

namespace A277411.P13990262491246865963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048492 (n + 1) - (2 * n + 3 : ℤ)

end

end A277411.P13990262491246865963

namespace A277411

/-- `A048492(n+1)-(2*n+3)` -/
def P13990262491246865963.Spec : Prop :=
  ∀ n, P13990262491246865963.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P6313541580563284634

`a(n-1)+A055998(n)+a(n-1)` with `a(0)=0`
-/

namespace A277411.P6313541580563284634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A055998 n + a (n - 1))

end

end A277411.P6313541580563284634

namespace A277411

/-- `a(n-1)+A055998(n)+a(n-1)` -/
def P6313541580563284634.Spec : Prop :=
  ∀ n, P6313541580563284634.a n = A277411 (n + 1)

end A277411

/-! ## A277411.P2145895975727883620

`A109363(n)+A048492(n)`
-/

namespace A277411.P2145895975727883620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109363 n + A048492 n

end

end A277411.P2145895975727883620

namespace A277411

/-- `A109363(n)+A048492(n)` -/
def P2145895975727883620.Spec : Prop :=
  ∀ n, P2145895975727883620.a n = A277411 (n + 1)

end A277411

/-!
# A277412: A diagonal of triangle A277410.

The programs for A277412, there is no canonical definition to state claims against.
-/

/-! ## A277412.P16000608705253537612

`A277410(∑[n+3]+1)`
-/

namespace A277412.P16000608705253537612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277412.P16000608705253537612

/-! ## A277412.P7026414721251436999

`record[A277410(A286158(2*n+1))]`
-/

namespace A277412.P7026414721251436999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277410 (A286158 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277412.P7026414721251436999

/-! ## A277412.P13567048063924648696

`record[A010054(n+3)*A277410(n+1)]`
-/

namespace A277412.P13567048063924648696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A277410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277412.P13567048063924648696

/-! ## A277412.P12330708870587367714

`char[A002487(n)]*A277410(A052905(n)+3)`
-/

namespace A277412.P12330708870587367714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A277410 (A052905 n + 3).toNat

end

end A277412.P12330708870587367714

/-! ## A277412.P14489870669933401565

`char[A302234(n)]*A277410(A052905(n)+3)`
-/

namespace A277412.P14489870669933401565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302234 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A277410 (A052905 n + 3).toNat

end

end A277412.P14489870669933401565

/-!
# A277415: Permutation of nonnegative integers: a(n) = A048675(A260442(n)).

The programs for A277415, there is no canonical definition to state claims against.
-/

/-! ## A277415.P18013546580392922325

`A048675(A260442(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277415.P18013546580392922325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A260442 n).toNat

end

end A277415.P18013546580392922325

/-! ## A277415.P114851343245430919

`∑{d}[A260442(n), A297108(#)]`
-/

namespace A277415.P114851343245430919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A277415.P114851343245430919

/-! ## A277415.P6749542902346602403

`A277333(A260442(2*n-n))`
-/

namespace A277415.P6749542902346602403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (A260442 (2 * n - n)).toNat

end

end A277415.P6749542902346602403

/-! ## A277415.P5885480564263932229

`A277333(A260442(n)%(∑[n+1]+2))`
-/

namespace A277415.P5885480564263932229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (Int.tmod (A260442 n) ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A277415.P5885480564263932229

/-! ## A277415.P12255492280766033377

`A277333(lt[atan(n), A277333(n+1)+1]+1)`
-/

namespace A277415.P12255492280766033377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1)

end

end A277415.P12255492280766033377

/-! ## A277415.P17534548682094255183

`A048675(eq[A048675(n+1), A277333(n+1)]+1)`
-/

namespace A277415.P17534548682094255183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A277415.P17534548682094255183

/-!
# A277417: Numbers n for which A248663(n) = A277333(n).

The programs for A277417, the canonical program `A277417.P7340486011847553374` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277417 has offset 1).

The definition of A277417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277417.P7340486011847553374

`∪[(n+1)², A073485(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A277417

/-- `∪[(n+1)², A073485(n+1)]` -/
def P7340486011847553374.Spec : Prop :=
  ∀ n, (P7340486011847553374.a n : ℤ) = A277417 (n + 1)

theorem P7340486011847553374.correct : P7340486011847553374.Spec := by
  intro n
  simp only [A277417, Nat.add_sub_cancel]

end A277417

/-! ## A277417.P7420749253088300402

`∪[A073485(n+1), A034793(n+1)]`
-/

namespace A277417.P7420749253088300402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277417.P7420749253088300402

namespace A277417

/-- `∪[A073485(n+1), A034793(n+1)]` -/
def P7420749253088300402.Spec : Prop :=
  ∀ n, (P7420749253088300402.a n : ℤ) = A277417 (n + 1)

end A277417

/-! ## A277417.P6436831135862339259

`record[A336642(n+1)+A053590(A007913(n+1))]`
-/

namespace A277417.P6436831135862339259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + A053590 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277417.P6436831135862339259

namespace A277417

/-- `record[A336642(n+1)+A053590(A007913(n+1))]` -/
def P6436831135862339259.Spec : Prop :=
  ∀ n, P6436831135862339259.a n = A277417 (n + 1)

end A277417

/-! ## A277417.P6582866224103931668

`record[A336642(n+1)+A053590(A071975(n+1))]`
-/

namespace A277417.P6582866224103931668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + A053590 (A071975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277417.P6582866224103931668

namespace A277417

/-- `record[A336642(n+1)+A053590(A071975(n+1))]` -/
def P6582866224103931668.Spec : Prop :=
  ∀ n, P6582866224103931668.a n = A277417 (n + 1)

end A277417

/-! ## A277417.P6232757740452187831

`record[A336642(n+1)+A053590(A350389(n+1))]`
-/

namespace A277417.P6232757740452187831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + A053590 (A350389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277417.P6232757740452187831

namespace A277417

/-- `record[A336642(n+1)+A053590(A350389(n+1))]` -/
def P6232757740452187831.Spec : Prop :=
  ∀ n, P6232757740452187831.a n = A277417 (n + 1)

end A277417

/-! ## A277417.P472735373265172832

`eq[A248663(n+1), A277333(n+1)]+1`
-/

namespace A277417.P472735373265172832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277417.P472735373265172832

namespace A277417

/-- `eq[A248663(n+1), A277333(n+1)]+1` -/
def P472735373265172832.Spec : Prop :=
  ∀ n, (P472735373265172832.a n : ℤ) = A277417 (n + 1)

end A277417

/-! ## A277417.P710463880499481789

`∪[A073485(n+1), A152186(n+1)]`
-/

namespace A277417.P710463880499481789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277417.P710463880499481789

namespace A277417

/-- `∪[A073485(n+1), A152186(n+1)]` -/
def P710463880499481789.Spec : Prop :=
  ∀ n, (P710463880499481789.a n : ℤ) = A277417 (n + 1)

end A277417

/-!
# A277418: a(n) = n!*LaguerreL(n, -4*n).

The programs for A277418, there is no canonical definition to state claims against.
-/

/-! ## A277418.P4541498709486252720

`A338435(eq[5, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A277418.P4541498709486252720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277418.P4541498709486252720

/-! ## A277418.P12050898923717195207

`A338435(A052905(n+2))`
-/

namespace A277418.P12050898923717195207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338435 (A052905 (n + 2)).toNat

end

end A277418.P12050898923717195207

/-!
# A277419: a(n) = n!*LaguerreL(n, -5*n).

The programs for A277419, there is no canonical definition to state claims against.
-/

/-! ## A277419.P17629654163505282992

`A338435(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A277419.P17629654163505282992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277419.P17629654163505282992

/-!
# A277423: a(n) = n!*LaguerreL(n, n).

The programs for A277423, there is no canonical definition to state claims against.
-/

/-! ## A277423.P1593447047961308211

`A295381(∑[4*n])`
-/

namespace A277423.P1593447047961308211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277423.P1593447047961308211

/-! ## A277423.P511382513964135926

`or(A000007(n), A295381(A046092(n)))`
-/

namespace A277423.P511382513964135926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295381 (A046092 n).toNat)

end

end A277423.P511382513964135926

/-! ## A277423.P3017829976812918415

`A295381(A046092(n))+A072769(n+1)`
-/

namespace A277423.P3017829976812918415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A046092 n).toNat + A072769 (n + 1)

end

end A277423.P3017829976812918415

/-!
# A277424: Total number of nodes summed over all self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1).

The programs for A277424, there is no canonical definition to state claims against.
-/

/-! ## A277424.P5188879962900022237

`A000201(A001863(n+2))-A086428(n)`
-/

namespace A277424.P5188879962900022237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A001863 (n + 2)).toNat - A086428 n

end

end A277424.P5188879962900022237

/-!
# A277425: a(n) = sqrt(16*t^2 - 32*t + k^2 + 8*k - 8*k*t + 16), where t = ceiling(sqrt(n)) and k = t^2 - n.

The programs for A277425, the canonical program `A277425.P8219772306962692040` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277425 has offset 1).

The definition of A277425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277425.P8219772306962692040

`n+1-(floor(sqrt(n))-1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277425

/-- `n+1-(floor(sqrt(n))-1)²` -/
def P8219772306962692040.Spec : Prop :=
  ∀ n, P8219772306962692040.a n = A277425 (n + 1)

theorem P8219772306962692040.correct : P8219772306962692040.Spec := by
  intro n
  simp only [A277425, Nat.add_sub_cancel]

end A277425

/-! ## A277425.P17892231265647849441

`A023443(A053186(n)+A001650(n+1))`
-/

namespace A277425.P17892231265647849441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053186 n + A001650 (n + 1)).toNat

end

end A277425.P17892231265647849441

namespace A277425

/-- `A023443(A053186(n)+A001650(n+1))` -/
def P17892231265647849441.Spec : Prop :=
  ∀ n, P17892231265647849441.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P10648825241668122704

`A051162(A161983(n))`
-/

namespace A277425.P10648825241668122704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A161983 n).toNat

end

end A277425.P10648825241668122704

namespace A277425

/-- `A051162(A161983(n))` -/
def P10648825241668122704.Spec : Prop :=
  ∀ n, P10648825241668122704.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P1351767561919891628

`A051162(A007606(n+1)-1)`
-/

namespace A277425.P1351767561919891628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A007606 (n + 1) - 1).toNat

end

end A277425.P1351767561919891628

namespace A277425

/-- `A051162(A007606(n+1)-1)` -/
def P1351767561919891628.Spec : Prop :=
  ∀ n, P1351767561919891628.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P10482198529346194422

`A051162(eq[1, A057211(n+1)])`
-/

namespace A277425.P10482198529346194422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277425.P10482198529346194422

namespace A277425

/-- `A051162(eq[1, A057211(n+1)])` -/
def P10482198529346194422.Spec : Prop :=
  ∀ n, P10482198529346194422.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P8075405703914143186

`A051162(eq[1, A201208(n+1)])`
-/

namespace A277425.P8075405703914143186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277425.P8075405703914143186

namespace A277425

/-- `A051162(eq[1, A201208(n+1)])` -/
def P8075405703914143186.Spec : Prop :=
  ∀ n, P8075405703914143186.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P425682424029071810

`A051162(2*n-A196199(n))`
-/

namespace A277425.P425682424029071810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((2 * n : ℤ) - A196199 n).toNat

end

end A277425.P425682424029071810

namespace A277425

/-- `A051162(2*n-A196199(n))` -/
def P425682424029071810.Spec : Prop :=
  ∀ n, P425682424029071810.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P17828354430895880782

`A051162(n-A196199(n)+n)`
-/

namespace A277425.P17828354430895880782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A277425.P17828354430895880782

namespace A277425

/-- `A051162(n-A196199(n)+n)` -/
def P17828354430895880782.Spec : Prop :=
  ∀ n, P17828354430895880782.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P14781658384934086168

`A051162(n-(A196199(n)-n))`
-/

namespace A277425.P14781658384934086168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A277425.P14781658384934086168

namespace A277425

/-- `A051162(n-(A196199(n)-n))` -/
def P14781658384934086168.Spec : Prop :=
  ∀ n, P14781658384934086168.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P3258660948180983840

`A051162(eq[n+1, A056011(n+1)])`
-/

namespace A277425.P3258660948180983840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277425.P3258660948180983840

namespace A277425

/-- `A051162(eq[n+1, A056011(n+1)])` -/
def P3258660948180983840.Spec : Prop :=
  ∀ n, P3258660948180983840.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P291448434226834747

`A134478(2*n-A196199(n))%∑[n+1]`
-/

namespace A277425.P291448434226834747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134478 ((2 * n : ℤ) - A196199 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A277425.P291448434226834747

namespace A277425

/-- `A134478(2*n-A196199(n))%∑[n+1]` -/
def P291448434226834747.Spec : Prop :=
  ∀ n, P291448434226834747.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P12446226577060990991

`A134478(eq[1, A057211(n+1)])%A000594(n+1)`
-/

namespace A277425.P12446226577060990991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000594 (n + 1))

end

end A277425.P12446226577060990991

namespace A277425

/-- `A134478(eq[1, A057211(n+1)])%A000594(n+1)` -/
def P12446226577060990991.Spec : Prop :=
  ∀ n, P12446226577060990991.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P3138282378863761939

`A051162(A116942(2*n))`
-/

namespace A277425.P3138282378863761939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A116942 (2 * n)).toNat

end

end A277425.P3138282378863761939

namespace A277425

/-- `A051162(A116942(2*n))` -/
def P3138282378863761939.Spec : Prop :=
  ∀ n, P3138282378863761939.a n = A277425 (n + 1)

end A277425

/-! ## A277425.P13045422269200654965

`A053615((A028391(n)+2)*A028392(n))`
-/

namespace A277425.P13045422269200654965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((A028391 n + 2) * A028392 n).toNat

end

end A277425.P13045422269200654965

namespace A277425

/-- `A053615((A028391(n)+2)*A028392(n))` -/
def P13045422269200654965.Spec : Prop :=
  ∀ n, P13045422269200654965.a n = A277425 (n + 1)

end A277425

/-!
# A277426: a(n) = 2^(6n+5).

The programs for A277426, the canonical program `A277426.P943364373019440255` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277426 has offset 0).

The definition of A277426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(6*n+5)` (program `A277426.P943364373019440255`, by `A277426.P943364373019440255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277426.P943364373019440255

`2^(6*n+5)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277426

/-- `2^(6*n+5)` -/
def P943364373019440255.Spec : Prop :=
  ∀ n, (P943364373019440255.a n : ℤ) = A277426 n

theorem P943364373019440255.correct : P943364373019440255.Spec := by
  intro n
  simp only [A277426]

end A277426

/-! ## A277426.P2676323602262103091

`64*a(n-1)` with `a(0)=32`
-/

namespace A277426.P2676323602262103091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [32] fun n a =>
  64 * a (n - 1)

end

end A277426.P2676323602262103091

namespace A277426

/-- `64*a(n-1)` -/
def P2676323602262103091.Spec : Prop :=
  ∀ n, (P2676323602262103091.a n : ℤ) = A277426 n

theorem P2676323602262103091.correct : P2676323602262103091.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A277426, Nat.add_sub_cancel, A277426.P2676323602262103091.a, A277426.P943364373019440255.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A277426, Nat.add_sub_cancel, A277426.P2676323602262103091.a, A277426.P943364373019440255.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A277426

/-! ## A277426.P5114718529143153320

`2*A013735(n)`
-/

namespace A277426.P5114718529143153320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013735 n

end

end A277426.P5114718529143153320

namespace A277426

/-- `2*A013735(n)` -/
def P5114718529143153320.Spec : Prop :=
  ∀ n, P5114718529143153320.a n = A277426 n

end A277426

/-! ## A277426.P7979844714910780067

`4*A013713(n)`
-/

namespace A277426.P7979844714910780067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013713 n

end

end A277426.P7979844714910780067

namespace A277426

/-- `4*A013713(n)` -/
def P7979844714910780067.Spec : Prop :=
  ∀ n, P7979844714910780067.a n = A277426 n

end A277426

/-! ## A277426.P1543490223152606169

`8*A013734(n)`
-/

namespace A277426.P1543490223152606169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A013734 n

end

end A277426.P1543490223152606169

namespace A277426

/-- `8*A013734(n)` -/
def P1543490223152606169.Spec : Prop :=
  ∀ n, P1543490223152606169.a n = A277426 n

end A277426

/-! ## A277426.P6836358368903439143

`A013731(Δ[n²])`
-/

namespace A277426.P6836358368903439143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A277426.P6836358368903439143

namespace A277426

/-- `A013731(Δ[n²])` -/
def P6836358368903439143.Spec : Prop :=
  ∀ n, P6836358368903439143.a n = A277426 n

end A277426

/-! ## A277426.P15018005347713649711

`A092811(2*(n+1))`
-/

namespace A277426.P15018005347713649711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 (2 * (n + 1))

end

end A277426.P15018005347713649711

namespace A277426

/-- `A092811(2*(n+1))` -/
def P15018005347713649711.Spec : Prop :=
  ∀ n, P15018005347713649711.a n = A277426 n

end A277426

/-! ## A277426.P14030692246650192116

`A081294(3*(n+1))`
-/

namespace A277426.P14030692246650192116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (3 * (n + 1))

end

end A277426.P14030692246650192116

namespace A277426

/-- `A081294(3*(n+1))` -/
def P14030692246650192116.Spec : Prop :=
  ∀ n, P14030692246650192116.a n = A277426 n

end A277426

/-! ## A277426.P6625520397474841635

`A089357(n+1)/2`
-/

namespace A277426.P6625520397474841635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089357 (n + 1) : ℚ) / 2

end

end A277426.P6625520397474841635

namespace A277426

/-- `A089357(n+1)/2` -/
def P6625520397474841635.Spec : Prop :=
  ∀ n, P6625520397474841635.a n = (A277426 n : ℚ)

end A277426

/-! ## A277426.P16692341194235432791

`A183425(3*(n+1))`
-/

namespace A277426.P16692341194235432791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183425 (3 * (n + 1))

end

end A277426.P16692341194235432791

namespace A277426

/-- `A183425(3*(n+1))` -/
def P16692341194235432791.Spec : Prop :=
  ∀ n, P16692341194235432791.a n = A277426 n

end A277426

/-!
# A277427: Prime permutations, ordered lexicographically.

The programs for A277427, there is no canonical definition to state claims against.
-/

/-! ## A277427.P10652684853121844478

`gcd(n+3, A033880(A000713(n)))`
-/

namespace A277427.P10652684853121844478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A033880 (A000713 n).toNat)

end

end A277427.P10652684853121844478

/-! ## A277427.P11609578479939420329

`gcd(A117950(n), A128166(A071904(n+1)))`
-/

namespace A277427.P11609578479939420329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117950 n) (A128166 (A071904 (n + 1)).toNat)

end

end A277427.P11609578479939420329

/-! ## A277427.P622529951556737468

`A003059(gcd(A085736(n+3), A336333(3*n+4)))`
-/

namespace A277427.P622529951556737468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.gcd (A085736 (n + 3)) (A336333 (3 * n + 4)))

end

end A277427.P622529951556737468

/-!
# A277428: a(n) = the n-bit number in which the i-th bit is 1 if and only if prime(i) divides A060795(n).

The programs for A277428, there is no canonical definition to state claims against.
-/

/-! ## A277428.P5138120072805178463

`∑{p}[A060795(n+1), A248663(#)]`
-/

namespace A277428.P5138120072805178463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A277428.P5138120072805178463

/-!
# A277430: Denominators of the Fabius function F(3/2^n).

The programs for A277430, there is no canonical definition to state claims against.
-/

/-! ## A277430.P322452491586573720

`lcm(A272757(n+2), A272757(n))`
-/

namespace A277430.P322452491586573720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A272757 (n + 2)) (A272757 n)

end

end A277430.P322452491586573720

/-!
# A277431: Expansion of e.g.f.: cosh(sqrt(2)*x)/(1-x).

The programs for A277431, the canonical program `A277431.P12945636346883419527` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277431 has offset 0).

The definition of A277431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277431.P12945636346883419527

`n*a(n-1)+2*a(n-2)-2*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277431

/-- `n*a(n-1)+2*a(n-2)-2*(n-2)*a(n-3)` -/
def P12945636346883419527.Spec : Prop :=
  ∀ n, P12945636346883419527.a n = A277431 n

theorem P12945636346883419527.correct : P12945636346883419527.Spec := by
  intro n
  simp only [A277431]

end A277431

/-! ## A277431.P15077322554992221068

`A077957(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277431.P15077322554992221068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077957 n + (n : ℤ) * a (n - 1)

end

end A277431.P15077322554992221068

namespace A277431

/-- `A077957(n)+n*a(n-1)` -/
def P15077322554992221068.Spec : Prop :=
  ∀ n, P15077322554992221068.a n = A277431 n

end A277431

/-! ## A277431.P10572879483298794039

`A131575(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A277431.P10572879483298794039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131575 (n + 1) + (n : ℤ) * a (n - 1)

end

end A277431.P10572879483298794039

namespace A277431

/-- `A131575(n+1)+n*a(n-1)` -/
def P10572879483298794039.Spec : Prop :=
  ∀ n, P10572879483298794039.a n = A277431 n

end A277431

/-! ## A277431.P12595254942562577579

`n*a(n-1)-(1-A052552(n))` with `a(0)=1`
-/

namespace A277431.P12595254942562577579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - (1 - A052552 n)

end

end A277431.P12595254942562577579

namespace A277431

/-- `n*a(n-1)-(1-A052552(n))` -/
def P12595254942562577579.Spec : Prop :=
  ∀ n, P12595254942562577579.a n = A277431 n

end A277431

/-! ## A277431.P11173288461393773249

`n*a(n-1)+A016724(n)-(n+1)` with `a(0)=1`
-/

namespace A277431.P11173288461393773249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A016724 n - (n + 1 : ℤ))

end

end A277431.P11173288461393773249

namespace A277431

/-- `n*a(n-1)+A016724(n)-(n+1)` -/
def P11173288461393773249.Spec : Prop :=
  ∀ n, P11173288461393773249.a n = A277431 n

end A277431

/-! ## A277431.P7422241080810911483

`∑[A077957(n)/A000142(n)]*A000142(n)`
-/

namespace A277431.P7422241080810911483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077957 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000142 n : ℚ)

end

end A277431.P7422241080810911483

namespace A277431

/-- `∑[A077957(n)/A000142(n)]*A000142(n)` -/
def P7422241080810911483.Spec : Prop :=
  ∀ n, P7422241080810911483.a n = (A277431 n : ℚ)

end A277431

/-!
# A277432: E.g.f.: sinh(sqrt(2)*x)/(sqrt(2)*(1-x)).

The programs for A277432, the canonical program `A277432.P17610358508682852111` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277432 has offset 0).

The definition of A277432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277432.P17610358508682852111

`n*a(n-1)+2*a(n-2)-2*(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277432

/-- `n*a(n-1)+2*a(n-2)-2*(n-2)*a(n-3)` -/
def P17610358508682852111.Spec : Prop :=
  ∀ n, P17610358508682852111.a n = A277432 n

theorem P17610358508682852111.correct : P17610358508682852111.Spec := by
  intro n
  simp only [A277432]

end A277432

/-! ## A277432.P14487660390385232113

`A131575(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A277432.P14487660390385232113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131575 n + (n : ℤ) * a (n - 1)

end

end A277432.P14487660390385232113

namespace A277432

/-- `A131575(n)+n*a(n-1)` -/
def P14487660390385232113.Spec : Prop :=
  ∀ n, P14487660390385232113.a n = A277432 n

end A277432

/-! ## A277432.P4455558801575005862

`Δ[A016116(n)]+n*a(n-1)` with `a(0)=0`
-/

namespace A277432.P4455558801575005862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A277432.P4455558801575005862

namespace A277432

/-- `Δ[A016116(n)]+n*a(n-1)` -/
def P4455558801575005862.Spec : Prop :=
  ∀ n, P4455558801575005862.a n = A277432 n

end A277432

/-! ## A277432.P8139576108033380606

`A077957(n-1)+n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A277432.P8139576108033380606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A077957 (n - 1) + (n : ℤ) * a (n - 1)

end

end A277432.P8139576108033380606

namespace A277432

/-- `A077957(n-1)+n*a(n-1)` -/
def P8139576108033380606.Spec : Prop :=
  ∀ n, P8139576108033380606.a n = A277432 n

end A277432

/-! ## A277432.P11757269351871985204

`n*a(n-1)-(A052551(n)-A052955(n))` with `a(0)=0, a(1)=1`
-/

namespace A277432.P11757269351871985204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) - (A052551 n - A052955 n)

end

end A277432.P11757269351871985204

namespace A277432

/-- `n*a(n-1)-(A052551(n)-A052955(n))` -/
def P11757269351871985204.Spec : Prop :=
  ∀ n, P11757269351871985204.a n = A277432 n

end A277432

/-!
# A277436: a(n) = |Gamma(n, i)|^2, where i = sqrt(-1).

The programs for A277436, there is no canonical definition to state claims against.
-/

/-! ## A277436.P6867138053943109764

`A009102(n)²+A009551(n)²`
-/

namespace A277436.P6867138053943109764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009102 n ^ 2 + A009551 n ^ 2

end

end A277436.P6867138053943109764

/-!
# A277439: Numerators of a sequence defined by a modified recurrence for the exponential of the von Mangoldt function.

The programs for A277439, there is no canonical definition to state claims against.
-/

/-! ## A277439.P15354766138472163813

`(n+1)*A193773(A287843(n))`
-/

namespace A277439.P15354766138472163813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193773 (A287843 n).toNat

end

end A277439.P15354766138472163813

/-!
# A277440: Denominators of a sequence defined by a modified recurrence for the exponential of the von Mangoldt function.

The programs for A277440, there is no canonical definition to state claims against.
-/

/-! ## A277440.P13927663753887883156

`gcd(A005563(n), A249042(A058187(n)))`
-/

namespace A277440.P13927663753887883156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005563 n) (A249042 (A058187 n).toNat)

end

end A277440.P13927663753887883156

/-! ## A277440.P13474531771240451113

`A199204(A164316(n+1))`
-/

namespace A277440.P13474531771240451113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199204 (A164316 (n + 1)).toNat

end

end A277440.P13474531771240451113

/-! ## A277440.P17975373741576474643

`A163491(A057574(n))*A222266(n+1)`
-/

namespace A277440.P17975373741576474643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (A057574 n).toNat * A222266 (n + 1)

end

end A277440.P17975373741576474643

/-! ## A277440.P16912397292473372548

`A010766(A292549(n))*A060654(n+2)`
-/

namespace A277440.P16912397292473372548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A292549 n).toNat * A060654 (n + 2)

end

end A277440.P16912397292473372548

/-! ## A277440.P18213418019015042215

`A007956(n+2)*A202853(A202844(n))`
-/

namespace A277440.P18213418019015042215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 2) * A202853 (A202844 n).toNat

end

end A277440.P18213418019015042215

/-!
# A277441: Least number k such that k^2 can be obtained from k by inserting n internal (but not necessarily contiguous) digits.

The programs for A277441, there is no canonical definition to state claims against.
-/

/-! ## A277441.P14503058255485502823

`10^n-A123108(floor(10^(n-1)))`
-/

namespace A277441.P14503058255485502823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A123108 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A277441.P14503058255485502823

/-!
# A277444: Square array A(n,k) (n>=1, k>=1) read by antidiagonals: A(n,k) is the number of n-colorings of the Möbius ladder M_k on 2k vertices.

The programs for A277444, there is no canonical definition to state claims against.
-/

/-! ## A277444.P6690083613060896438

`C(A212085(n+1), A325547(A333901(3*n)))`
-/

namespace A277444.P6690083613060896438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212085 (n + 1)).toNat (A325547 (A333901 (3 * n)).toNat).toNat

end

end A277444.P6690083613060896438

/-!
# A277446: Longest partition of the binary digits of n read from left to right into contiguous blocks so that the value of a block divides the value of its successor and with no leading zeros in the blocks.

The programs for A277446, there is no canonical definition to state claims against.
-/

/-! ## A277446.P2423406152169972755

`A211097(A008834(2*n+1)*A103517(n))`
-/

namespace A277446.P2423406152169972755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A008834 (2 * n + 1) * A103517 n).toNat

end

end A277446.P2423406152169972755

/-! ## A277446.P13606708784746799588

`A334297(A319988(∑[n²]+1)+n+1)`
-/

namespace A277446.P13606708784746799588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A319988 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n + 1 : ℤ)).toNat

end

end A277446.P13606708784746799588

/-! ## A277446.P15473602706197464108

`A334029(n+1)/A003114(A348613(2*n+1))`
-/

namespace A277446.P15473602706197464108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334029 (n + 1) : ℚ) / (A003114 (A348613 (2 * n + 1)).toNat : ℚ)

end

end A277446.P15473602706197464108

/-! ## A277446.P7881139692977954522

`A329326(2*n+3)-A187188(A308220(n+2))`
-/

namespace A277446.P7881139692977954522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (2 * n + 3) - A187188 (A308220 (n + 2)).toNat

end

end A277446.P7881139692977954522

/-! ## A277446.P5917986712074389556

`A329326(2*n+3)-A303707(A327481(n+4))`
-/

namespace A277446.P5917986712074389556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (2 * n + 3) - A303707 (A327481 (n + 4)).toNat

end

end A277446.P5917986712074389556

/-!
# A277447: a(n) = A277446(n^2).

The programs for A277447, there is no canonical definition to state claims against.
-/

/-! ## A277447.P11170425800628491242

`A334029(A227065(n+1)+A011848(n))`
-/

namespace A277447.P11170425800628491242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A227065 (n + 1) + A011848 n).toNat

end

end A277447.P11170425800628491242

/-! ## A277447.P2000036325906466847

`A334297(A227065(n+1)+A011848(n))`
-/

namespace A277447.P2000036325906466847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A227065 (n + 1) + A011848 n).toNat

end

end A277447.P2000036325906466847

/-! ## A277447.P13765456561414978601

`gcd(A044949(A282685(n)), A278953(n))`
-/

namespace A277447.P13765456561414978601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044949 (A282685 n).toNat) (A278953 n)

end

end A277447.P13765456561414978601

/-! ## A277447.P8133419667670444206

`A284256(A375047(2*(n+2)))+A279497(2*(n+1))`
-/

namespace A277447.P8133419667670444206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A375047 (2 * (n + 2))).toNat + A279497 (2 * (n + 1))

end

end A277447.P8133419667670444206

/-!
# A277448: a(n) = A277446(n^3).

The programs for A277448, there is no canonical definition to state claims against.
-/

/-! ## A277448.P1475049554802809409

`A358372(gcd(A299909(3*(n+1)), A360862(3*n+5)))`
-/

namespace A277448.P1475049554802809409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (Int.gcd (A299909 (3 * (n + 1))) (A360862 (3 * n + 5)))

end

end A277448.P1475049554802809409

/-! ## A277448.P4824163873801770050

`A122385(A193842(n))%7`
-/

namespace A277448.P4824163873801770050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122385 (A193842 n).toNat) 7

end

end A277448.P4824163873801770050

/-! ## A277448.P12725544065471445476

`A002260(A029600(n)^A025581(n+2))`
-/

namespace A277448.P12725544065471445476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A029600 n : ℚ) ^ (A025581 (n + 2) : ℤ))).toNat

end

end A277448.P12725544065471445476

/-! ## A277448.P3306707744210545274

`A109004(A029600(n)^A025581(n+2))`
-/

namespace A277448.P3306707744210545274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.roundAway ((A029600 n : ℚ) ^ (A025581 (n + 2) : ℤ))).toNat

end

end A277448.P3306707744210545274

/-! ## A277448.P14581510386570391512

`A159335(A029600(n)^A025581(n+2))`
-/

namespace A277448.P14581510386570391512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159335 (SequenceMachineLib.roundAway ((A029600 n : ℚ) ^ (A025581 (n + 2) : ℤ))).toNat

end

end A277448.P14581510386570391512

/-!
# A277449: Numbers n such that there is exactly one nontrivial square n-gonal number.

The programs for A277449, there is no canonical definition to state claims against.
-/

/-! ## A277449.P18221611698119048034

`A005893(lt[n², A328191(n+1)])`
-/

namespace A277449.P18221611698119048034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277449.P18221611698119048034

/-! ## A277449.P1182827429750623346

`A005893(lt[A156552(3*n+4), A365615(3*n+1)])`
-/

namespace A277449.P1182827429750623346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365615 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277449.P1182827429750623346

/-! ## A277449.P5328183593962087173

`A005893(lt[24, A193556(n+2)])`
-/

namespace A277449.P5328183593962087173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193556 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277449.P5328183593962087173

/-!
# A277450: a(1) = 1, a(n) = floor(n*Sum_{k=1..n-1} a(k)/2^k - Sum_{k=1..n-1} a(k)) for n > 1.

The programs for A277450, there is no canonical definition to state claims against.
-/

/-! ## A277450.P18191863728191110319

`A342991(A279431(n+1)+A139275(n))`
-/

namespace A277450.P18191863728191110319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342991 (A279431 (n + 1) + A139275 n).toNat

end

end A277450.P18191863728191110319

/-!
# A277451: Number of edges in geodesic dome generated from icosahedron by recursively dividing each triangle in 4.

The programs for A277451, the canonical program `A277451.P16460946410777495567` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277451 has offset 0).

The definition of A277451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277451.P16460946410777495567

`4*a(n-1)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277451

/-- `4*a(n-1)` -/
def P16460946410777495567.Spec : Prop :=
  ∀ n, (P16460946410777495567.a n : ℤ) = A277451 n

theorem P16460946410777495567.correct : P16460946410777495567.Spec := by
  intro n
  simp only [A277451]

end A277451

/-! ## A277451.P17055979398489344174

`ogf((1+26x)/(1-4x))`
-/

namespace A277451.P17055979398489344174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 26] [1, -4] n

end

end A277451.P17055979398489344174

namespace A277451

/-- `ogf((1+26x)/(1-4x))` -/
def P17055979398489344174.Spec : Prop :=
  ∀ n, P17055979398489344174.a n = A277451 n

end A277451

/-! ## A277451.P12933825255670768219

`a(n-1)/(1/2)²` with `a(0)=1, a(1)=30`
-/

namespace A277451.P12933825255670768219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 30] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A277451.P12933825255670768219

namespace A277451

/-- `a(n-1)/(1/2)²` -/
def P12933825255670768219.Spec : Prop :=
  ∀ n, P12933825255670768219.a n = (A277451 n : ℚ)

end A277451

/-! ## A277451.P1384210948372933172

`Δ[a(n-1)/(1-3/4)]` with `a(0)=9, a(1)=10`
-/

namespace A277451.P1384210948372933172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [9, 10] fun n f1 =>
  f1 (n - 1) / (1 - (3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277451.P1384210948372933172

namespace A277451

/-- `Δ[a(n-1)/(1-3/4)]` -/
def P1384210948372933172.Spec : Prop :=
  ∀ n, P1384210948372933172.a n = (A277451 n : ℚ)

end A277451

/-! ## A277451.P16867434128142106091

`A089693(4*n+1)`
-/

namespace A277451.P16867434128142106091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089693 (4 * n + 1)

end

end A277451.P16867434128142106091

namespace A277451

/-- `A089693(4*n+1)` -/
def P16867434128142106091.Spec : Prop :=
  ∀ n, P16867434128142106091.a n = A277451 n

end A277451

/-! ## A277451.P2864522936950041432

`Δ[A154252(A004273(n))]`
-/

namespace A277451.P2864522936950041432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277451.P2864522936950041432

namespace A277451

/-- `Δ[A154252(A004273(n))]` -/
def P2864522936950041432.Spec : Prop :=
  ∀ n, P2864522936950041432.a n = A277451 n

end A277451

/-! ## A277451.P13423554343353047600

`lcm(A003947(n), A164908(n))`
-/

namespace A277451.P13423554343353047600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003947 n) (A164908 n)

end

end A277451.P13423554343353047600

namespace A277451

/-- `lcm(A003947(n), A164908(n))` -/
def P13423554343353047600.Spec : Prop :=
  ∀ n, (P13423554343353047600.a n : ℤ) = A277451 n

end A277451

/-! ## A277451.P11502176517255574799

`A082505(n+1)*A146523(n)`
-/

namespace A277451.P11502176517255574799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 (n + 1) * A146523 n

end

end A277451.P11502176517255574799

namespace A277451

/-- `A082505(n+1)*A146523(n)` -/
def P11502176517255574799.Spec : Prop :=
  ∀ n, P11502176517255574799.a n = A277451 n

end A277451

/-! ## A277451.P13951574933106176993

`record[A084181(n+3)-A084184(n)]`
-/

namespace A277451.P13951574933106176993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (n + 3) - A084184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277451.P13951574933106176993

namespace A277451

/-- `record[A084181(n+3)-A084184(n)]` -/
def P13951574933106176993.Spec : Prop :=
  ∀ n, P13951574933106176993.a n = A277451 n

end A277451

/-! ## A277451.P275087343450515988

`A082505(n+1)²-A082505(2*n)`
-/

namespace A277451.P275087343450515988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 (n + 1) ^ 2 - A082505 (2 * n)

end

end A277451.P275087343450515988

namespace A277451

/-- `A082505(n+1)²-A082505(2*n)` -/
def P275087343450515988.Spec : Prop :=
  ∀ n, P275087343450515988.a n = A277451 n

end A277451

/-! ## A277451.P10023155843038639402

`2*A146541(2*n)-A011782(2*n)`
-/

namespace A277451.P10023155843038639402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146541 (2 * n) - A011782 (2 * n)

end

end A277451.P10023155843038639402

namespace A277451

/-- `2*A146541(2*n)-A011782(2*n)` -/
def P10023155843038639402.Spec : Prop :=
  ∀ n, P10023155843038639402.a n = A277451 n

end A277451

/-! ## A277451.P8484353495625141729

`2*A146541(2*n)-A199573(2*n)`
-/

namespace A277451.P8484353495625141729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146541 (2 * n) - A199573 (2 * n)

end

end A277451.P8484353495625141729

namespace A277451

/-- `2*A146541(2*n)-A199573(2*n)` -/
def P8484353495625141729.Spec : Prop :=
  ∀ n, P8484353495625141729.a n = A277451 n

end A277451

/-! ## A277451.P9024690376849847498

`A154252(2*n+1)-A154252(A004273(n))`
-/

namespace A277451.P9024690376849847498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154252 (2 * n + 1) - A154252 (A004273 n).toNat

end

end A277451.P9024690376849847498

namespace A277451

/-- `A154252(2*n+1)-A154252(A004273(n))` -/
def P9024690376849847498.Spec : Prop :=
  ∀ n, P9024690376849847498.a n = A277451 n

end A277451

/-! ## A277451.P13063867438867941491

`(A154252(n+1)-A154252(n))*A003945(n)`
-/

namespace A277451.P13063867438867941491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154252 (n + 1) - A154252 n) * A003945 n

end

end A277451.P13063867438867941491

namespace A277451

/-- `(A154252(n+1)-A154252(n))*A003945(n)` -/
def P13063867438867941491.Spec : Prop :=
  ∀ n, P13063867438867941491.a n = A277451 n

end A277451

/-! ## A277451.P7705945168732289105

`(A082505(n+1)-A131577(n))*A082505(n+1)`
-/

namespace A277451.P7705945168732289105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082505 (n + 1) - A131577 n) * A082505 (n + 1)

end

end A277451.P7705945168732289105

namespace A277451

/-- `(A082505(n+1)-A131577(n))*A082505(n+1)` -/
def P7705945168732289105.Spec : Prop :=
  ∀ n, P7705945168732289105.a n = A277451 n

end A277451

/-! ## A277451.P15746461945028981152

`A042950(n+1)*A082505(n+1)-A042950(2*n)`
-/

namespace A277451.P15746461945028981152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) * A082505 (n + 1) - A042950 (2 * n)

end

end A277451.P15746461945028981152

namespace A277451

/-- `A042950(n+1)*A082505(n+1)-A042950(2*n)` -/
def P15746461945028981152.Spec : Prop :=
  ∀ n, P15746461945028981152.a n = A277451 n

end A277451

/-! ## A277451.P5221343322644129877

`A146523(2*n)+A057427(n)*A146523(2*n+1)`
-/

namespace A277451.P5221343322644129877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (2 * n) + A057427 n * A146523 (2 * n + 1)

end

end A277451.P5221343322644129877

namespace A277451

/-- `A146523(2*n)+A057427(n)*A146523(2*n+1)` -/
def P5221343322644129877.Spec : Prop :=
  ∀ n, P5221343322644129877.a n = A277451 n

end A277451

/-! ## A277451.P3862519301483388399

`xor(A171497(2*n)-A199573(2*n), A171497(2*n))`
-/

namespace A277451.P3862519301483388399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171497 (2 * n) - A199573 (2 * n)) (A171497 (2 * n))

end

end A277451.P3862519301483388399

namespace A277451

/-- `xor(A171497(2*n)-A199573(2*n), A171497(2*n))` -/
def P3862519301483388399.Spec : Prop :=
  ∀ n, P3862519301483388399.a n = A277451 n

end A277451

/-! ## A277451.P946017865729481426

`A168642(2*n+1)+A168642(2*n)+A157823(2*n)`
-/

namespace A277451.P946017865729481426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168642 (2 * n + 1) + (A168642 (2 * n) + A157823 (2 * n))

end

end A277451.P946017865729481426

namespace A277451

/-- `A168642(2*n+1)+A168642(2*n)+A157823(2*n)` -/
def P946017865729481426.Spec : Prop :=
  ∀ n, P946017865729481426.a n = A277451 n

end A277451

/-! ## A277451.P285521671829843941

`xor(A198633(2*n)+A042950(2*n), A198633(2*n+1))`
-/

namespace A277451.P285521671829843941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198633 (2 * n) + A042950 (2 * n)) (A198633 (2 * n + 1))

end

end A277451.P285521671829843941

namespace A277451

/-- `xor(A198633(2*n)+A042950(2*n), A198633(2*n+1))` -/
def P285521671829843941.Spec : Prop :=
  ∀ n, P285521671829843941.a n = A277451 n

end A277451

/-!
# A277452: a(n) = Sum_{k=0..n} binomial(n,k) * n^k * k!.

The programs for A277452, there is no canonical definition to state claims against.
-/

/-! ## A277452.P1357008942541923475

`A320031(∑[4*n])`
-/

namespace A277452.P1357008942541923475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277452.P1357008942541923475

/-! ## A277452.P4699091329688574404

`record[A320031(gcd(n, A114327(n)))]`
-/

namespace A277452.P4699091329688574404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277452.P4699091329688574404

/-! ## A277452.P16844530802955113357

`A320031(A046092(n))+A008683(4*(n+1))`
-/

namespace A277452.P16844530802955113357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A277452.P16844530802955113357

/-! ## A277452.P3946896226285203272

`A320031(A046092(n))/A007318(C(2, n+1))`
-/

namespace A277452.P3946896226285203272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320031 (A046092 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A277452.P3946896226285203272

/-! ## A277452.P544187504047654505

`A320031(A046092(n))/A014963(9*n+12)`
-/

namespace A277452.P544187504047654505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320031 (A046092 n).toNat : ℚ) / (A014963 (9 * n + 12) : ℚ)

end

end A277452.P544187504047654505

/-!
# A277453: a(n) = Sum_{k=0..n} binomial(n,k) * 2^k * n^k * k!.

The programs for A277453, there is no canonical definition to state claims against.
-/

/-! ## A277453.P7450831552021376162

`A320031(A062725(n))`
-/

namespace A277453.P7450831552021376162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A062725 n).toNat

end

end A277453.P7450831552021376162

/-! ## A277453.P16075530933617015751

`A320031(A064225(n)-1)`
-/

namespace A277453.P16075530933617015751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A064225 n - 1).toNat

end

end A277453.P16075530933617015751

/-! ## A277453.P12835777618986572270

`A320031(eq[1, A059679(n+3)])`
-/

namespace A277453.P12835777618986572270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277453.P12835777618986572270

/-! ## A277453.P6351745752715770026

`A320031(A000217(3*n)+n)`
-/

namespace A277453.P6351745752715770026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A277453.P6351745752715770026

/-! ## A277453.P807510894095311874

`A320031(A000326(2*n+1)-A000326(n+1))`
-/

namespace A277453.P807510894095311874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 (A000326 (2 * n + 1) - A000326 (n + 1)).toNat

end

end A277453.P807510894095311874

/-!
# A277454: a(n) = 1 + Sum_{k=1..n} binomial(n,k) * 2^k * k^k.

The programs for A277454, there is no canonical definition to state claims against.
-/

/-! ## A277454.P506987596076059308

`A307418(n)-A062610(A001147(n+1))`
-/

namespace A277454.P506987596076059308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307418 n - A062610 (A001147 (n + 1)).toNat

end

end A277454.P506987596076059308

/-!
# A277455: Arithmetic derivatives of the Motzkin numbers.

The programs for A277455, the canonical program `A277455.P11217868120756742316` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277455 has offset 0).

The definition of A277455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277455.P11217868120756742316

`A003415(A001006(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277455

/-- `A003415(A001006(n))` -/
def P11217868120756742316.Spec : Prop :=
  ∀ n, P11217868120756742316.a n = A277455 n

theorem P11217868120756742316.correct : P11217868120756742316.Spec := by
  intro n
  simp only [A277455]

end A277455

/-! ## A277455.P9549551927628595502

`A328099(A094288(n))`
-/

namespace A277455.P9549551927628595502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A094288 n).toNat

end

end A277455.P9549551927628595502

namespace A277455

/-- `A328099(A094288(n))` -/
def P9549551927628595502.Spec : Prop :=
  ∀ n, P9549551927628595502.a n = A277455 n

end A277455

/-! ## A277455.P12102077559063361538

`A328099(A064189(∑[n]))`
-/

namespace A277455.P12102077559063361538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A064189 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277455.P12102077559063361538

namespace A277455

/-- `A328099(A064189(∑[n]))` -/
def P12102077559063361538.Spec : Prop :=
  ∀ n, P12102077559063361538.a n = A277455 n

end A277455

/-! ## A277455.P8007988805364666403

`A328099(Δ[A097332(n)])`
-/

namespace A277455.P8007988805364666403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (f1 (n + 1) - f1 n).toNat

end

end A277455.P8007988805364666403

namespace A277455

/-- `A328099(Δ[A097332(n)])` -/
def P8007988805364666403.Spec : Prop :=
  ∀ n, P8007988805364666403.a n = A277455 n

end A277455

/-! ## A277455.P5859021103751851449

`∑{d}[A001006(n), A300251(#)]`
-/

namespace A277455.P5859021103751851449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A277455.P5859021103751851449

namespace A277455

/-- `∑{d}[A001006(n), A300251(#)]` -/
def P5859021103751851449.Spec : Prop :=
  ∀ n, P5859021103751851449.a n = A277455 n

end A277455

/-!
# A277457: E.g.f.: exp(2*x)/(1+LambertW(-x)).

The programs for A277457, there is no canonical definition to state claims against.
-/

/-! ## A277457.P4035912003971955428

`A290824(∑[n+3])`
-/

namespace A277457.P4035912003971955428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277457.P4035912003971955428

/-! ## A277457.P13414486133395863620

`record[A290824(n)/A271025(n+2)]`
-/

namespace A277457.P13414486133395863620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290824 n : ℚ) / (A271025 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277457.P13414486133395863620

/-! ## A277457.P10499456601316330617

`record[gcd(A238416(n+3), A290824(n))]`
-/

namespace A277457.P10499456601316330617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238416 (n + 3)) (A290824 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277457.P10499456601316330617

/-! ## A277457.P2153825230664067549

`A290824(A141214(n))^A251072(n)`
-/

namespace A277457.P2153825230664067549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290824 (A141214 n).toNat : ℚ) ^ (A251072 n : ℤ)

end

end A277457.P2153825230664067549

/-! ## A277457.P13395498246844971314

`C(A290824(A141214(n)), A251079(n))`
-/

namespace A277457.P13395498246844971314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290824 (A141214 n).toNat).toNat (A251079 n).toNat

end

end A277457.P13395498246844971314

/-!
# A277458: Expansion of e.g.f. -1/(1-LambertW(-x)).

The programs for A277458, there is no canonical definition to state claims against.
-/

/-! ## A277458.P3684993647552834118

`n*A133297(n)-A134095(n)`
-/

namespace A277458.P3684993647552834118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133297 n - A134095 n

end

end A277458.P3684993647552834118

/-! ## A277458.P8986229457200294396

`A000312(n)-2*A134095(n)`
-/

namespace A277458.P8986229457200294396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - 2 * A134095 n

end

end A277458.P8986229457200294396

/-! ## A277458.P10784693953140800246

`A308506(n)/2^n`
-/

namespace A277458.P10784693953140800246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308506 n : ℚ) / (2 ^ n : ℚ)

end

end A277458.P10784693953140800246

/-! ## A277458.P12601539343509586844

`floor(A308506(n)/A000079(n))`
-/

namespace A277458.P12601539343509586844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A308506 n : ℚ) / (A000079 n : ℚ)⌋

end

end A277458.P12601539343509586844

/-! ## A277458.P7993554962732420773

`A000142(n)/A000165(n)*A308506(n)`
-/

namespace A277458.P7993554962732420773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000165 n : ℚ) * (A308506 n : ℚ)

end

end A277458.P7993554962732420773

/-! ## A277458.P16493091700536549974

`A000312(n)/A062971(n)*A308506(n)`
-/

namespace A277458.P16493091700536549974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n : ℚ) / (A062971 n : ℚ) * (A308506 n : ℚ)

end

end A277458.P16493091700536549974

/-!
# A277459: Decades with the same semiprime pattern as the next decade.

The programs for A277459, there is no canonical definition to state claims against.
-/

/-! ## A277459.P4382564215751429

`A277460(n+1)-1`
-/

namespace A277459.P4382564215751429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277460 (n + 1) - 1

end

end A277459.P4382564215751429

/-! ## A277459.P4327415912725902454

`A220063(n+1)-2`
-/

namespace A277459.P4327415912725902454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220063 (n + 1) - 2

end

end A277459.P4327415912725902454

/-! ## A277459.P4072781076738854295

`A023444(A220063(n+1))`
-/

namespace A277459.P4072781076738854295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A220063 (n + 1)).toNat

end

end A277459.P4072781076738854295

/-! ## A277459.P15252686707210918156

`A023443(A277460(n+1))`
-/

namespace A277459.P15252686707210918156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A277460 (n + 1)).toNat

end

end A277459.P15252686707210918156

/-! ## A277459.P4129006094625409021

`A023444(A277460(n+1)+1)`
-/

namespace A277459.P4129006094625409021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A277460 (n + 1) + 1).toNat

end

end A277459.P4129006094625409021

/-!
# A277460: Decades with the same semiprime pattern as the previous decade.

The programs for A277460, there is no canonical definition to state claims against.
-/

/-! ## A277460.P13460065756420378841

`A277459(n+1)+1`
-/

namespace A277460.P13460065756420378841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277459 (n + 1) + 1

end

end A277460.P13460065756420378841

/-! ## A277460.P11194581312450846258

`A220063(n+1)-1`
-/

namespace A277460.P11194581312450846258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220063 (n + 1) - 1

end

end A277460.P11194581312450846258

/-! ## A277460.P9756210053961758461

`A023443(A220063(n+1))`
-/

namespace A277460.P9756210053961758461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220063 (n + 1)).toNat

end

end A277460.P9756210053961758461

/-! ## A277460.P4035121345412083352

`A011760(A277459(n+1))`
-/

namespace A277460.P4035121345412083352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A277459 (n + 1)).toNat

end

end A277460.P4035121345412083352

/-! ## A277460.P16594352173029703185

`A023444(A220063(n+1)+1)`
-/

namespace A277460.P16594352173029703185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A220063 (n + 1) + 1).toNat

end

end A277460.P16594352173029703185

/-!
# A277461: E.g.f.: sin(x)/(1+LambertW(-x)).

The programs for A277461, there is no canonical definition to state claims against.
-/

/-! ## A277461.P18062682388028209102

`A014681(2*(n+1)*a(n-1))-(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A277461.P18062682388028209102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A014681 ((2 * (n + 1) : ℤ) * a (n - 1)).toNat - (n + 1 : ℤ)

end

end A277461.P18062682388028209102

/-! ## A277461.P12079379294701761693

`∑[A276952(A277467(n))]`
-/

namespace A277461.P12079379294701761693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A277467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277461.P12079379294701761693

/-!
# A277462: E.g.f.: cos(x)/(1 + LambertW(-x)).

The programs for A277462, there is no canonical definition to state claims against.
-/

/-! ## A277462.P17754915426410255971

`A094870(n!*A210344(n))`
-/

namespace A277462.P17754915426410255971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094870 ((Nat.factorial n : ℤ) * A210344 n).toNat

end

end A277462.P17754915426410255971

/-! ## A277462.P4117369184878687389

`A066246(A000312(n))+A006154(n)`
-/

namespace A277462.P4117369184878687389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A000312 n).toNat + A006154 n

end

end A277462.P4117369184878687389

/-!
# A277463: E.g.f.: sinh(x)/(1+LambertW(-x)).

The programs for A277463, there is no canonical definition to state claims against.
-/

/-! ## A277463.P16826727769792402466

`A086331(n)-A277464(n)`
-/

namespace A277463.P16826727769792402466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086331 n - A277464 n

end

end A277463.P16826727769792402466

/-! ## A277463.P5807300908386280728

`A277464(n)-abs(A069856(n))`
-/

namespace A277463.P5807300908386280728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277464 n - |A069856 n|

end

end A277463.P5807300908386280728

/-! ## A277463.P17645952372156477154

`A277464(n)-A350212(A000217(n))`
-/

namespace A277463.P17645952372156477154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277464 n - A350212 (A000217 n).toNat

end

end A277463.P17645952372156477154

/-! ## A277463.P5905213514898519120

`A290824(∑[n+2]-1)-A277464(n)`
-/

namespace A277463.P5905213514898519120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290824 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A277464 n

end

end A277463.P5905213514898519120

/-! ## A277463.P7316909387419429979

`A290824(A034856(n+1))%A159734(n+2)-A277464(n)`
-/

namespace A277463.P7316909387419429979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290824 (A034856 (n + 1)).toNat) (A159734 (n + 2)) - A277464 n

end

end A277463.P7316909387419429979

/-!
# A277464: Expansion of e.g.f. cosh(x)/(1 + LambertW(-x)).

The programs for A277464, there is no canonical definition to state claims against.
-/

/-! ## A277464.P17827796998013837804

`A086331(n)-A277463(n)`
-/

namespace A277464.P17827796998013837804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086331 n - A277463 n

end

end A277464.P17827796998013837804

/-! ## A277464.P17729495073740943913

`A277463(n)+abs(A069856(n))`
-/

namespace A277464.P17729495073740943913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277463 n + |A069856 n|

end

end A277464.P17729495073740943913

/-! ## A277464.P316316392800654002

`A350212(A000217(n))+A277463(n)`
-/

namespace A277464.P316316392800654002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350212 (A000217 n).toNat + A277463 n

end

end A277464.P316316392800654002

/-! ## A277464.P5155586108360073961

`A290824(∑[n+2]-1)-A277463(n)`
-/

namespace A277464.P5155586108360073961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290824 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A277463 n

end

end A277464.P5155586108360073961

/-! ## A277464.P1854742070536674982

`A290824(A034856(n+1))%A159734(n+2)-A277463(n)`
-/

namespace A277464.P1854742070536674982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290824 (A034856 (n + 1)).toNat) (A159734 (n + 2)) - A277463 n

end

end A277464.P1854742070536674982

/-!
# A277465: Expansion of e.g.f. log(1+x)/(1 + LambertW(-x)).

The programs for A277465, there is no canonical definition to state claims against.
-/

/-! ## A277465.P17417574867501476208

`A076272(A351288(n))-A008619(n)`
-/

namespace A277465.P17417574867501476208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A351288 n).toNat - A008619 n

end

end A277465.P17417574867501476208

/-! ## A277465.P9503377323954766523

`A057365(A095067(n+1)+A020554(n))`
-/

namespace A277465.P9503377323954766523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A095067 (n + 1) + A020554 n).toNat

end

end A277465.P9503377323954766523

/-!
# A277466: E.g.f.: -log(1-x)/(1+LambertW(-x)).

The programs for A277466, there is no canonical definition to state claims against.
-/

/-! ## A277466.P3151249970486053930

`A286750(A049464(n))%(2*n)!`
-/

namespace A277466.P3151249970486053930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286750 (A049464 n).toNat) (Nat.factorial (2 * n) : ℤ)

end

end A277466.P3151249970486053930

/-! ## A277466.P7487797810760975969

`A222254(A138013(n)-floor(1/(n+1)))`
-/

namespace A277466.P7487797810760975969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A138013 n - ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A277466.P7487797810760975969

/-!
# A277467: E.g.f.: tan(x)/(1+LambertW(-x)).

The programs for A277467, there is no canonical definition to state claims against.
-/

/-! ## A277467.P11985255477724446303

`A008624(A299995((n+1)²))`
-/

namespace A277467.P11985255477724446303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A299995 ((n + 1) ^ 2)).toNat

end

end A277467.P11985255477724446303

/-! ## A277467.P13044534902746530553

`A194237(A045621(n)+n^n)`
-/

namespace A277467.P13044534902746530553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194237 (A045621 n + (n ^ n : ℤ)).toNat

end

end A277467.P13044534902746530553

/-!
# A277468: E.g.f.: tanh(x)/(1+LambertW(-x)).

The programs for A277468, there is no canonical definition to state claims against.
-/

/-! ## A277468.P15755191758604415935

`A056656(a(n-2)+6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=10`
-/

namespace A277468.P15755191758604415935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 10] fun n a =>
  A056656 (a (n - 2) + 6).toNat

end

end A277468.P15755191758604415935

/-! ## A277468.P10186948751711295599

`A056656(∑[A005316(n)])`
-/

namespace A277468.P10186948751711295599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277468.P10186948751711295599

/-!
# A277469: E.g.f.: arcsin(x)/(1 + LambertW(-x)).

The programs for A277469, there is no canonical definition to state claims against.
-/

/-! ## A277469.P14007292434420430335

`A277463(n)+A067169(A002104(n))`
-/

namespace A277469.P14007292434420430335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277463 n + A067169 ((A002104 n).toNat + 11)

end

end A277469.P14007292434420430335

/-! ## A277469.P2749415966050468374

`A363731(A129613(n))+A277463(n)`
-/

namespace A277469.P2749415966050468374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363731 (A129613 n).toNat + A277463 n

end

end A277469.P2749415966050468374

/-!
# A277470: E.g.f.: arcsinh(x)/(1+LambertW(-x)).

The programs for A277470, there is no canonical definition to state claims against.
-/

/-! ## A277470.P15077363223136790693

`Δ[A032615(∑[A275551(n)])]`
-/

namespace A277470.P15077363223136790693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277470.P15077363223136790693

/-! ## A277470.P13926539451734879410

`A057354(xor(n^n, A132159(n)))`
-/

namespace A277470.P13926539451734879410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Int.xor (n ^ n : ℤ) (A132159 n)).toNat

end

end A277470.P13926539451734879410

/-!
# A277472: a(n) = (-i)^n * Integral_{x>=0} H_n(i*x) * exp(-x), where H_n(x) is n-th Hermite polynomial, i=sqrt(-1).

The programs for A277472, there is no canonical definition to state claims against.
-/

/-! ## A277472.P3118011093444478716

`A319365(2*n+1)/∏[2*n+1]`
-/

namespace A277472.P3118011093444478716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319365 (2 * n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A277472.P3118011093444478716

/-! ## A277472.P7613249005124613781

`record[A319365(n)/A055634(n)]`
-/

namespace A277472.P7613249005124613781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319365 n : ℚ) / (A055634 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277472.P7613249005124613781

/-!
# A277473: E.g.f.: -exp(x)*LambertW(-x).

The programs for A277473, there is no canonical definition to state claims against.
-/

/-! ## A277473.P12492141737051789450

`n*A088957(abs(1-n))`
-/

namespace A277473.P12492141737051789450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088957 |1 - (n : ℤ)|.toNat

end

end A277473.P12492141737051789450

/-! ## A277473.P11201671946343099785

`A277478(n)+A277476(n)`
-/

namespace A277473.P11201671946343099785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n + A277476 n

end

end A277473.P11201671946343099785

/-! ## A277473.P15491680652540964879

`A277474(n)+2*A277476(n)`
-/

namespace A277473.P15491680652540964879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277474 n + 2 * A277476 n

end

end A277473.P15491680652540964879

/-! ## A277473.P1021001768814056915

`2*A277478(n)-A277474(n)`
-/

namespace A277473.P1021001768814056915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277478 n - A277474 n

end

end A277473.P1021001768814056915

/-! ## A277473.P1600106811386856634

`A219034(A000124(n))+2*A277476(n)`
-/

namespace A277473.P1600106811386856634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000124 n).toNat + 2 * A277476 n

end

end A277473.P1600106811386856634

/-! ## A277473.P6843182239352903094

`2*A277478(n)-A219034(A000124(n))`
-/

namespace A277473.P6843182239352903094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277478 n - A219034 (A000124 n).toNat

end

end A277473.P6843182239352903094

/-! ## A277473.P8467682129690581228

`∑[A038051(n+1)]-A038051(n+1)`
-/

namespace A277473.P8467682129690581228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038051 (n + 1)

end

end A277473.P8467682129690581228

/-!
# A277474: E.g.f.: -exp(-x)*LambertW(-x).

The programs for A277474, there is no canonical definition to state claims against.
-/

/-! ## A277474.P1431349110529469457

`A219034(∑[n]+1)`
-/

namespace A277474.P1431349110529469457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277474.P1431349110529469457

/-! ## A277474.P6699854827863098100

`n*A105785(abs(1-n))`
-/

namespace A277474.P6699854827863098100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105785 |1 - (n : ℤ)|.toNat

end

end A277474.P6699854827863098100

/-! ## A277474.P12211138340675172962

`A277478(n)-A277476(n)`
-/

namespace A277474.P12211138340675172962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n - A277476 n

end

end A277474.P12211138340675172962

/-! ## A277474.P11898014966450493227

`or(char[1], A219034(A000124(n)))`
-/

namespace A277474.P11898014966450493227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219034 (A000124 n).toNat)

end

end A277474.P11898014966450493227

/-! ## A277474.P14166042233424333257

`2*A277478(n)-A277473(n)`
-/

namespace A277474.P14166042233424333257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277478 n - A277473 n

end

end A277474.P14166042233424333257

/-! ## A277474.P9920732976215212182

`A277473(n)-2*A277476(n)`
-/

namespace A277474.P9920732976215212182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 n - 2 * A277476 n

end

end A277474.P9920732976215212182

/-! ## A277474.P3791284660642207226

`n*A219034(A000217(n)-n)`
-/

namespace A277474.P3791284660642207226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A219034 (A000217 n - (n : ℤ)).toNat

end

end A277474.P3791284660642207226

/-!
# A277475: E.g.f.: -sin(x)*LambertW(-x).

The programs for A277475, there is no canonical definition to state claims against.
-/

/-! ## A277475.P6447306390577315779

`A114375(A317079(n))`
-/

namespace A277475.P6447306390577315779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114375 (A317079 n).toNat

end

end A277475.P6447306390577315779

/-! ## A277475.P16493552520861332486

`A364000(A148374(n))`
-/

namespace A277475.P16493552520861332486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364000 (A148374 n).toNat

end

end A277475.P16493552520861332486

/-!
# A277476: E.g.f.: -sinh(x)*LambertW(-x).

The programs for A277476, there is no canonical definition to state claims against.
-/

/-! ## A277476.P13274868131691022262

`A277473(n)-A277478(n)`
-/

namespace A277476.P13274868131691022262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 n - A277478 n

end

end A277476.P13274868131691022262

/-! ## A277476.P15444501030072604316

`A277478(n)-A277474(n)`
-/

namespace A277476.P15444501030072604316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n - A277474 n

end

end A277476.P15444501030072604316

/-! ## A277476.P10949021644973982184

`(A277473(n)-A277474(n))/2`
-/

namespace A277476.P10949021644973982184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277473 n - A277474 n : ℚ) / 2

end

end A277476.P10949021644973982184

/-! ## A277476.P8841255091878786763

`A277478(n)-A219034(A000124(n))`
-/

namespace A277476.P8841255091878786763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n - A219034 (A000124 n).toNat

end

end A277476.P8841255091878786763

/-! ## A277476.P10314134609014385640

`∑[A038051(n+1)]-(A277478(n)+A038051(n+1))`
-/

namespace A277476.P10314134609014385640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A277478 n + A038051 (n + 1))

end

end A277476.P10314134609014385640

/-!
# A277477: E.g.f.: -cos(x)*LambertW(-x).

The programs for A277477, there is no canonical definition to state claims against.
-/

/-! ## A277477.P6592401291860907788

`n*floor(A085890(3*n+1)/4)`
-/

namespace A277477.P6592401291860907788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(A085890 (3 * n + 1) : ℚ) / 4⌋

end

end A277477.P6592401291860907788

/-! ## A277477.P17965823066646668235

`∑[A008615(A081680(n))]`
-/

namespace A277477.P17965823066646668235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A081680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277477.P17965823066646668235

/-!
# A277478: E.g.f.: -cosh(x)*LambertW(-x).

The programs for A277478, there is no canonical definition to state claims against.
-/

/-! ## A277478.P12409160123040190529

`A277476(n)+A277474(n)`
-/

namespace A277478.P12409160123040190529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277476 n + A277474 n

end

end A277478.P12409160123040190529

/-! ## A277478.P12986731445333430334

`A277473(n)-A277476(n)`
-/

namespace A277478.P12986731445333430334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 n - A277476 n

end

end A277478.P12986731445333430334

/-! ## A277478.P1981180893296460924

`(A277474(n)+A277473(n))/2`
-/

namespace A277478.P1981180893296460924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277474 n + A277473 n : ℚ) / 2

end

end A277478.P1981180893296460924

/-! ## A277478.P14271853450664157771

`(n*A088957(abs(1-n))+n*A105785(abs(1-n)))/2`
-/

namespace A277478.P14271853450664157771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A088957 |1 - (n : ℤ)|.toNat + (n : ℤ) * A105785 |1 - (n : ℤ)|.toNat : ℚ) / 2

end

end A277478.P14271853450664157771

/-! ## A277478.P4681879441018108816

`A277476(n)+A219034(A000124(n))`
-/

namespace A277478.P4681879441018108816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277476 n + A219034 (A000124 n).toNat

end

end A277478.P4681879441018108816

/-!
# A277479: E.g.f.: -tan(x)*LambertW(-x).

The programs for A277479, there is no canonical definition to state claims against.
-/

/-! ## A277479.P11940457968861442456

`∑{e}[3*10^n, A354327(#)]`
-/

namespace A277479.P11940457968861442456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354327 (Nat.factorization (f1 n) p)

end

end A277479.P11940457968861442456

/-! ## A277479.P18259924570282465327

`A051274(A352327(n))`
-/

namespace A277479.P18259924570282465327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A352327 n).toNat

end

end A277479.P18259924570282465327

/-!
# A277480: E.g.f.: -tanh(x)*LambertW(-x).

The programs for A277480, there is no canonical definition to state claims against.
-/

/-! ## A277480.P15174073251080158898

`A238782(2^n+3)+n-2`
-/

namespace A277480.P15174073251080158898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238782 (2 ^ n + 3) + ((n : ℤ) - 2)

end

end A277480.P15174073251080158898

/-! ## A277480.P8103832911319737548

`A200001(A025235(n))`
-/

namespace A277480.P8103832911319737548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (A025235 n).toNat

end

end A277480.P8103832911319737548

/-!
# A277481: E.g.f.: -log(1+x)*LambertW(-x).

The programs for A277481, there is no canonical definition to state claims against.
-/

/-! ## A277481.P18337015032168952516

`n*A063759(a(n-2)*a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A277481.P18337015032168952516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℤ) * A063759 (a (n - 2) * a (n - 2)).toNat

end

end A277481.P18337015032168952516

/-! ## A277481.P15464886428884106046

`n*A014457(A129585(n))`
-/

namespace A277481.P15464886428884106046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014457 (A129585 n).toNat

end

end A277481.P15464886428884106046

/-!
# A277482: E.g.f.: log(1-x)*LambertW(-x).

The programs for A277482, there is no canonical definition to state claims against.
-/

/-! ## A277482.P5382662592029814426

`∑[A330474(n)-char[n²]]`
-/

namespace A277482.P5382662592029814426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330474 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277482.P5382662592029814426

/-! ## A277482.P17043580230277141513

`n*A004788(A052332(n))`
-/

namespace A277482.P17043580230277141513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004788 (A052332 n).toNat

end

end A277482.P17043580230277141513

/-!
# A277483: E.g.f.: -arcsin(x)*LambertW(-x).

The programs for A277483, there is no canonical definition to state claims against.
-/

/-! ## A277483.P14007613893520027668

`A056023(A277476(n)+1)-1`
-/

namespace A277483.P14007613893520027668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A277476 n + 1).toNat - 1

end

end A277483.P14007613893520027668

/-!
# A277484: E.g.f.: -arcsinh(x)*LambertW(-x).

The programs for A277484, there is no canonical definition to state claims against.
-/

/-! ## A277484.P4747479172248043466

`A277475(n)+A175365(A328762(n+1))`
-/

namespace A277484.P4747479172248043466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277475 n + A175365 (A328762 (n + 1)).toNat

end

end A277484.P4747479172248043466

/-!
# A277485: E.g.f.: -exp(2*x)*LambertW(-x).

The programs for A277485, there is no canonical definition to state claims against.
-/

/-! ## A277485.P5304493980780495149

`A294411(∑[n+3])`
-/

namespace A277485.P5304493980780495149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294411 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277485.P5304493980780495149

/-! ## A277485.P4524815153987667521

`lcm(n, A294411(A055998(n+1)))`
-/

namespace A277485.P4524815153987667521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A294411 (A055998 (n + 1)).toNat)

end

end A277485.P4524815153987667521

/-! ## A277485.P1804646795031546165

`A294411(A055998(n+1))+A000038(2*n+3)`
-/

namespace A277485.P1804646795031546165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294411 (A055998 (n + 1)).toNat + A000038 (2 * n + 3)

end

end A277485.P1804646795031546165

/-! ## A277485.P5806639715398917006

`A294411(A141214(n))^A290830(n)`
-/

namespace A277485.P5806639715398917006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294411 (A141214 n).toNat : ℚ) ^ (A290830 n : ℤ)

end

end A277485.P5806639715398917006

/-!
# A277486: a(n) = number of integers one more than a prime encountered before reaching (n^2)-1 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A277486, there is no canonical definition to state claims against.
-/

/-! ## A277486.P6482803973528592978

`A000007(n)+Δ[A278166(A028310(n))]`
-/

namespace A277486.P6482803973528592978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A277486.P6482803973528592978

/-! ## A277486.P10912314690340444661

`A278166(n+1)+A000007(n)-A278166(A028310(n))`
-/

namespace A277486.P10912314690340444661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (n + 1) + (A000007 n - A278166 (A028310 n).toNat)

end

end A277486.P10912314690340444661

/-! ## A277486.P1952822056402251086

`A278166(n+1)+A057428(n)*A278166(A028310(n))`
-/

namespace A277486.P1952822056402251086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (n + 1) + A057428 n * A278166 (A028310 n).toNat

end

end A277486.P1952822056402251086

/-! ## A277486.P16338607457960720694

`A278166(n+1)-A057427(n)*A278166(A028310(n))`
-/

namespace A277486.P16338607457960720694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (n + 1) - A057427 n * A278166 (A028310 n).toNat

end

end A277486.P16338607457960720694

/-! ## A277486.P2273707415724046111

`Δ[A278166(A028310(n))+A057427(n)]`
-/

namespace A277486.P2273707415724046111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277486.P2273707415724046111

/-! ## A277486.P3468116493251748204

`Δ[A278166(A028310(n))-A057428(n)]`
-/

namespace A277486.P3468116493251748204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277486.P3468116493251748204

/-! ## A277486.P5318777879744496642

`Δ[A278166(A028310(n))%A046691(n)]`
-/

namespace A277486.P5318777879744496642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278166 (A028310 n).toNat) (A046691 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277486.P5318777879744496642

/-! ## A277486.P4835030736056058624

`Δ[A278166(A028310(n))+A060576(n+1)]`
-/

namespace A277486.P4835030736056058624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278166 (A028310 n).toNat + A060576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277486.P4835030736056058624

/-!
# A277487: a(n) = number of primes encountered before reaching (n^2)-1 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A277487, there is no canonical definition to state claims against.
-/

/-! ## A277487.P9704684107305085622

`A000007(n)+Δ[A278167(A028310(n))]`
-/

namespace A277487.P9704684107305085622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A277487.P9704684107305085622

/-! ## A277487.P15153265325903549341

`A278167(n+1)+A000007(n)-A278167(A028310(n))`
-/

namespace A277487.P15153265325903549341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (n + 1) + (A000007 n - A278167 (A028310 n).toNat)

end

end A277487.P15153265325903549341

/-! ## A277487.P11092598168957118555

`A278167(n+1)+A057428(n)*A278167(A028310(n))`
-/

namespace A277487.P11092598168957118555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (n + 1) + A057428 n * A278167 (A028310 n).toNat

end

end A277487.P11092598168957118555

/-! ## A277487.P4304015906536595207

`Δ[A278167(A028310(n))-A057428(n)]`
-/

namespace A277487.P4304015906536595207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277487.P4304015906536595207

/-! ## A277487.P972126591431370296

`Δ[A278167(A028310(n))%A278166(n+1)]`
-/

namespace A277487.P972126591431370296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278167 (A028310 n).toNat) (A278166 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277487.P972126591431370296

/-! ## A277487.P16905653449581999105

`Δ[A278167(A028310(n))+A000040(n+1)%2]`
-/

namespace A277487.P16905653449581999105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277487.P16905653449581999105

/-! ## A277487.P7713680036732727677

`Δ[A278167(A028310(n))%A282465(n)]`
-/

namespace A277487.P7713680036732727677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278167 (A028310 n).toNat) (A282465 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277487.P7713680036732727677

/-! ## A277487.P13122314147479356645

`Δ[A278167(A028310(n))]-A240328(A319412(n+1))`
-/

namespace A277487.P13122314147479356645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240328 (A319412 (n + 1)).toNat

end

end A277487.P13122314147479356645

/-! ## A277487.P9828178466754943947

`Δ[A278167(A028310(n))]-A240330(A270325(n))`
-/

namespace A277487.P9828178466754943947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278167 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240330 (A270325 n).toNat

end

end A277487.P9828178466754943947

/-!
# A277488: a(n) = number of integers one less than a prime encountered before reaching (n^2)-1 when starting from k = ((n+1)^2)-1 and iterating map k -> k - A002828(k).

The programs for A277488, there is no canonical definition to state claims against.
-/

/-! ## A277488.P8497471314372222791

`Δ[A278168(A028310(n))]`
-/

namespace A277488.P8497471314372222791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277488.P8497471314372222791

/-! ## A277488.P10164815076692300158

`A278168(n+1)-A278168(A028310(n))`
-/

namespace A277488.P10164815076692300158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (n + 1) - A278168 (A028310 n).toNat

end

end A277488.P10164815076692300158

/-! ## A277488.P6750224962486836291

`A278168(n+1)-A278168(A000007(n)+n)`
-/

namespace A277488.P6750224962486836291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (n + 1) - A278168 (A000007 n + (n : ℤ)).toNat

end

end A277488.P6750224962486836291

/-! ## A277488.P3007571574769605554

`Δ[A278168(A000007(n)+n)]`
-/

namespace A277488.P3007571574769605554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277488.P3007571574769605554

/-! ## A277488.P4585225352472521643

`Δ[A278168(gcd(n, A008574(n)))]`
-/

namespace A277488.P4585225352472521643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277488.P4585225352472521643

/-! ## A277488.P17658558089661036937

`A278168(n+1)-A278168(A065033(2*n))`
-/

namespace A277488.P17658558089661036937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (n + 1) - A278168 (A065033 (2 * n)).toNat

end

end A277488.P17658558089661036937

/-! ## A277488.P8970789472545767371

`A278168(n+1)-A278168(A123108(2*n))`
-/

namespace A277488.P8970789472545767371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (n + 1) - A278168 (A123108 (2 * n)).toNat

end

end A277488.P8970789472545767371

/-! ## A277488.P5433293762591967885

`Δ[A278168(A065033(2*n))]`
-/

namespace A277488.P5433293762591967885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277488.P5433293762591967885

/-! ## A277488.P13504774340390661314

`Δ[A278168(A123108(2*n))]`
-/

namespace A277488.P13504774340390661314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278168 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277488.P13504774340390661314

/-!
# A277489: Expansion of e.g.f. -LambertW(-log(1+x)).

The programs for A277489, there is no canonical definition to state claims against.
-/

/-! ## A277489.P14584310585266168717

`A322611(a(n-1))+floor(n²/2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A277489.P14584310585266168717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A322611 (a (n - 1)).toNat + ⌊(n ^ 2 : ℚ) / 2⌋

end

end A277489.P14584310585266168717

/-! ## A277489.P17597196962817041469

`A239072(A007563(n))`
-/

namespace A277489.P17597196962817041469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239072 (A007563 n).toNat

end

end A277489.P17597196962817041469

/-!
# A277490: E.g.f.: -1/(1+LambertW(-x)^2).

The programs for A277490, there is no canonical definition to state claims against.
-/

/-! ## A277490.P2757181347034878495

`(n-1)*A325468(A271785(n))`
-/

namespace A277490.P2757181347034878495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A325468 (A271785 n).toNat

end

end A277490.P2757181347034878495

/-! ## A277490.P15345064740551068110

`A369285(n+1)-A357621(A248537(n+1))`
-/

namespace A277490.P15345064740551068110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369285 (n + 1) - A357621 (A248537 (n + 1)).toNat

end

end A277490.P15345064740551068110

/-!
# A277491: Number of triangles in the standard triangulation of the n-th approximation of the Koch snowflake fractal.

The programs for A277491, the canonical program `A277491.P2794628506374851133` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277491 has offset 0).

The definition of A277491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277491.P2794628506374851133

`13*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277491

/-- `13*a(n-1)-36*a(n-2)` -/
def P2794628506374851133.Spec : Prop :=
  ∀ n, P2794628506374851133.a n = A277491 n

theorem P2794628506374851133.correct : P2794628506374851133.Spec := by
  intro n
  simp only [A277491]

end A277491

/-! ## A277491.P1101208623508054732

`(8*9^n-3*4^n)/5`
-/

namespace A277491.P1101208623508054732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 9 ^ n : ℤ) - (3 * 4 ^ n : ℤ) : ℚ) / 5

end

end A277491.P1101208623508054732

namespace A277491

/-- `(8*9^n-3*4^n)/5` -/
def P1101208623508054732.Spec : Prop :=
  ∀ n, P1101208623508054732.a n = (A277491 n : ℚ)

theorem P1101208623508054732.correct : P1101208623508054732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A277491, Nat.add_sub_cancel, A277491.P1101208623508054732.a, A277491.P2794628506374851133.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A277491, Nat.add_sub_cancel, A277491.P1101208623508054732.a, A277491.P2794628506374851133.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A277491

/-! ## A277491.P12573432204527224593

`Δ[A016153(n)]`
-/

namespace A277491.P12573432204527224593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277491.P12573432204527224593

namespace A277491

/-- `Δ[A016153(n)]` -/
def P12573432204527224593.Spec : Prop :=
  ∀ n, P12573432204527224593.a n = A277491 n

end A277491

/-! ## A277491.P7283796925836210075

`Δ[A015441(2*n)]`
-/

namespace A277491.P7283796925836210075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277491.P7283796925836210075

namespace A277491

/-- `Δ[A015441(2*n)]` -/
def P7283796925836210075.Spec : Prop :=
  ∀ n, P7283796925836210075.a n = A277491 n

end A277491

/-! ## A277491.P7406666092650660818

`Δ[A167910(2*n)]`
-/

namespace A277491.P7406666092650660818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277491.P7406666092650660818

namespace A277491

/-- `Δ[A167910(2*n)]` -/
def P7406666092650660818.Spec : Prop :=
  ∀ n, P7406666092650660818.a n = A277491 n

end A277491

/-! ## A277491.P13818911233702157073

`Δ[record[-A091005(n)]]`
-/

namespace A277491.P13818911233702157073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A091005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277491.P13818911233702157073

namespace A277491

/-- `Δ[record[-A091005(n)]]` -/
def P13818911233702157073.Spec : Prop :=
  ∀ n, P13818911233702157073.a n = A277491 n

end A277491

/-! ## A277491.P15447363725973740903

`Δ[abs(A091005(Δ[n²]))]`
-/

namespace A277491.P15447363725973740903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277491.P15447363725973740903

namespace A277491

/-- `Δ[abs(A091005(Δ[n²]))]` -/
def P15447363725973740903.Spec : Prop :=
  ∀ n, P15447363725973740903.a n = A277491 n

end A277491

/-! ## A277491.P5319850122220401872

`abs(Δ[A091005(2*n+1)])`
-/

namespace A277491.P5319850122220401872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A277491.P5319850122220401872

namespace A277491

/-- `abs(Δ[A091005(2*n+1)])` -/
def P5319850122220401872.Spec : Prop :=
  ∀ n, P5319850122220401872.a n = A277491 n

end A277491

/-! ## A277491.P2548795216364059202

`A016153(n+1)-A016153(n)`
-/

namespace A277491.P2548795216364059202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016153 (n + 1) - A016153 n

end

end A277491.P2548795216364059202

namespace A277491

/-- `A016153(n+1)-A016153(n)` -/
def P2548795216364059202.Spec : Prop :=
  ∀ n, P2548795216364059202.a n = A277491 n

end A277491

/-! ## A277491.P14912028894210279016

`2*A000244(n)²-A102901(2*n)`
-/

namespace A277491.P14912028894210279016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n ^ 2 - A102901 (2 * n)

end

end A277491.P14912028894210279016

namespace A277491

/-- `2*A000244(n)²-A102901(2*n)` -/
def P14912028894210279016.Spec : Prop :=
  ∀ n, P14912028894210279016.a n = A277491 n

end A277491

/-! ## A277491.P12334904098099159527

`2*A133467(2*n)-A000079(n)²`
-/

namespace A277491.P12334904098099159527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133467 (2 * n) - A000079 n ^ 2

end

end A277491.P12334904098099159527

namespace A277491

/-- `2*A133467(2*n)-A000079(n)²` -/
def P12334904098099159527.Spec : Prop :=
  ∀ n, P12334904098099159527.a n = A277491 n

end A277491

/-! ## A277491.P6930276974811557928

`Δ[A091002(2*n)+A091001(2*n)]`
-/

namespace A277491.P6930276974811557928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (2 * n) + A091001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277491.P6930276974811557928

namespace A277491

/-- `Δ[A091002(2*n)+A091001(2*n)]` -/
def P6930276974811557928.Spec : Prop :=
  ∀ n, P6930276974811557928.a n = A277491 n

end A277491

/-! ## A277491.P829641091060739232

`A091005(2*n+1)+A016153(n+1)`
-/

namespace A277491.P829641091060739232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (2 * n + 1) + A016153 (n + 1)

end

end A277491.P829641091060739232

namespace A277491

/-- `A091005(2*n+1)+A016153(n+1)` -/
def P829641091060739232.Spec : Prop :=
  ∀ n, P829641091060739232.a n = A277491 n

end A277491

/-! ## A277491.P2458629535544836511

`A015441(2*n+1)+A001047(2*n)`
-/

namespace A277491.P2458629535544836511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n + 1) + A001047 (2 * n)

end

end A277491.P2458629535544836511

namespace A277491

/-- `A015441(2*n+1)+A001047(2*n)` -/
def P2458629535544836511.Spec : Prop :=
  ∀ n, P2458629535544836511.a n = A277491 n

end A277491

/-! ## A277491.P4697734712141141033

`A094555(2*(n+1))+A091002(2*n)`
-/

namespace A277491.P4697734712141141033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (2 * (n + 1)) + A091002 (2 * n)

end

end A277491.P4697734712141141033

namespace A277491

/-- `A094555(2*(n+1))+A091002(2*n)` -/
def P4697734712141141033.Spec : Prop :=
  ∀ n, P4697734712141141033.a n = A277491 n

end A277491

/-! ## A277491.P10088660517296767310

`A102901(2*n+1)+A102901(2*n)`
-/

namespace A277491.P10088660517296767310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 (2 * n + 1) + A102901 (2 * n)

end

end A277491.P10088660517296767310

namespace A277491

/-- `A102901(2*n+1)+A102901(2*n)` -/
def P10088660517296767310.Spec : Prop :=
  ∀ n, P10088660517296767310.a n = A277491 n

end A277491

/-! ## A277491.P4183748067758388009

`A232015(2*n+1)+A087451(2*n)`
-/

namespace A277491.P4183748067758388009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 (2 * n + 1) + A087451 (2 * n)

end

end A277491.P4183748067758388009

namespace A277491

/-- `A232015(2*n+1)+A087451(2*n)` -/
def P4183748067758388009.Spec : Prop :=
  ∀ n, P4183748067758388009.a n = A277491 n

end A277491

/-! ## A277491.P7536457443754360676

`A015441(2*(n+1))-A015441(2*n)`
-/

namespace A277491.P7536457443754360676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * (n + 1)) - A015441 (2 * n)

end

end A277491.P7536457443754360676

namespace A277491

/-- `A015441(2*(n+1))-A015441(2*n)` -/
def P7536457443754360676.Spec : Prop :=
  ∀ n, P7536457443754360676.a n = A277491 n

end A277491

/-! ## A277491.P17701303883059370746

`A133467(2*n+1)-A133467(2*n)`
-/

namespace A277491.P17701303883059370746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 (2 * n + 1) - A133467 (2 * n)

end

end A277491.P17701303883059370746

namespace A277491

/-- `A133467(2*n+1)-A133467(2*n)` -/
def P17701303883059370746.Spec : Prop :=
  ∀ n, P17701303883059370746.a n = A277491 n

end A277491

/-! ## A277491.P13717903381054951900

`A167910(2*(n+1))-A167910(2*n)`
-/

namespace A277491.P13717903381054951900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * (n + 1)) - A167910 (2 * n)

end

end A277491.P13717903381054951900

namespace A277491

/-- `A167910(2*(n+1))-A167910(2*n)` -/
def P13717903381054951900.Spec : Prop :=
  ∀ n, P13717903381054951900.a n = A277491 n

end A277491

/-!
# A277492: Number of vertices in the metrically regular triangulation of the n-th approximation of the Koch snowflake fractal.

The programs for A277492, the canonical program `A277492.P14330355664234639950` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277492 has offset 0).

The definition of A277492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277492.P14330355664234639950

`13*a(n-1)-36*a(n-2)` with `a(0)=3, a(1)=13, a(2)=96`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277492

/-- `13*a(n-1)-36*a(n-2)` -/
def P14330355664234639950.Spec : Prop :=
  ∀ n, P14330355664234639950.a n = A277492 n

theorem P14330355664234639950.correct : P14330355664234639950.Spec := by
  intro n
  simp only [A277492]

end A277492

/-!
# A277493: Number of planar rooted Eulerian orientations (i.e., planar directed Eulerian maps with in-degree and out-degree equal for each vertex) with n edges.

The programs for A277493, there is no canonical definition to state claims against.
-/

/-! ## A277493.P12821249445549773778

`abs(A324311(n+2)/2)`
-/

namespace A277493.P12821249445549773778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A324311 (n + 2) : ℚ) / 2|

end

end A277493.P12821249445549773778

/-! ## A277493.P3242972061686333492

`A324311(n+2)/(A007318(C(2, n))-3)`
-/

namespace A277493.P3242972061686333492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324311 (n + 2) : ℚ) / (A007318 (Nat.choose 2 n) - 3 : ℚ)

end

end A277493.P3242972061686333492

/-! ## A277493.P6520559278014727039

`gcd(A324311(n+2)/2, A000010(n+2)%2)`
-/

namespace A277493.P6520559278014727039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A324311 (n + 2) : ℚ) / 2)) (Int.tmod (A000010 (n + 2)) 2)

end

end A277493.P6520559278014727039

/-! ## A277493.P445380381457350257

`lcm(A324311(n+2)/2, A014963(A018252(n+1)))`
-/

namespace A277493.P445380381457350257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A324311 (n + 2) : ℚ) / 2)) (A014963 (A018252 (n + 1)).toNat)

end

end A277493.P445380381457350257

/-!
# A277495: a(1) = 1; a(n) = n if a(n-1) = 1; otherwise, a(n) = digit sum (n written in base a(n-1)).

The programs for A277495, there is no canonical definition to state claims against.
-/

/-! ## A277495.P9825227805461798616

`A138530(∑[n]+a(n-1))` with `a(0)=1`
-/

namespace A277495.P9825227805461798616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138530 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1)).toNat

end

end A277495.P9825227805461798616

/-!
# A277498: E.g.f.: -LambertW(-sin(x)).

The programs for A277498, there is no canonical definition to state claims against.
-/

/-! ## A277498.P10331404300294021663

`and(-n, A269381(C(∑[n], n)))`
-/

namespace A277498.P10331404300294021663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A269381 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n))

end

end A277498.P10331404300294021663

/-! ## A277498.P3376683693379452498

`A181786(∑[2*n*a(n-1)])` with `a(0)=1`
-/

namespace A277498.P3376683693379452498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (n * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277498.P3376683693379452498

/-!
# A277499: E.g.f.: -sin(LambertW(-x)).

The programs for A277499, there is no canonical definition to state claims against.
-/

/-! ## A277499.P1304695012125951277

`A245573(A244469(n))`
-/

namespace A277499.P1304695012125951277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A244469 n).toNat

end

end A277499.P1304695012125951277

/-! ## A277499.P12009959742132914675

`A262868(∑[A025164(n)])`
-/

namespace A277499.P12009959742132914675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277499.P12009959742132914675

