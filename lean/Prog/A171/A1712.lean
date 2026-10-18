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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171200: G.f. satisfies A(x) = 1 + x*A(2x)^3.

The programs for A171200, there is no canonical definition to state claims against.
-/

/-! ## A171200.P15238574882342792602

`A164910((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A171200.P15238574882342792602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A164910 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A171200.P15238574882342792602

/-!
# A171201: G.f. satisfies: A(x) = (1 + x*A(2x))^3.

The programs for A171201, there is no canonical definition to state claims against.
-/

/-! ## A171201.P11355050160226372405

`A171200(n+1)/2^n`
-/

namespace A171201.P11355050160226372405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171200 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A171201.P11355050160226372405

/-! ## A171201.P10662331619643292620

`floor(A171200(n+1)/A000079(n))`
-/

namespace A171201.P10662331619643292620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171200 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A171201.P10662331619643292620

/-! ## A171201.P32474000903347443

`A000079(n+1)*A171200(n+1)/(2*A000079(n)²)`
-/

namespace A171201.P32474000903347443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A171200 (n + 1) : ℚ) / (2 * A000079 n ^ 2 : ℚ)

end

end A171201.P32474000903347443

/-! ## A171201.P18189186548841501454

`A000079(n+1)*A171200(n+1)/A000079(2*n+1)`
-/

namespace A171201.P18189186548841501454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A171200 (n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A171201.P18189186548841501454

/-!
# A171202: G.f. A(x) satisfies A(x) = 1 + x*A(2*x)^4.

The programs for A171202, there is no canonical definition to state claims against.
-/

/-! ## A171202.P10817341147094432602

`A033950(ceil(8*a(n-1)/3))` with `a(0)=1, a(1)=1`
-/

namespace A171202.P10817341147094432602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033950 ⌈(8 * a (n - 1) : ℚ) / 3⌉.toNat

end

end A171202.P10817341147094432602

/-!
# A171203: G.f. satisfies: A(x) = (1 + x*A(2x))^4.

The programs for A171203, there is no canonical definition to state claims against.
-/

/-! ## A171203.P12792968749372171333

`A171202(n+1)/2^n`
-/

namespace A171203.P12792968749372171333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171202 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A171203.P12792968749372171333

/-! ## A171203.P6830411546824719861

`floor(A171202(n+1)/A000079(n))`
-/

namespace A171203.P6830411546824719861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171202 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A171203.P6830411546824719861

/-! ## A171203.P10652258754198158618

`2*A171202(n+1)/A000079(n+1)`
-/

namespace A171203.P10652258754198158618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A171202 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A171203.P10652258754198158618

/-!
# A171204: G.f. A(x) satisfies A(x) = 1 + x*A(2*x)^5.

The programs for A171204, there is no canonical definition to state claims against.
-/

/-! ## A171204.P5424999278779460156

`∏[A324293(∏[A000217(n+1)])]`
-/

namespace A171204.P5424999278779460156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324293 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A171204.P5424999278779460156

/-!
# A171205: G.f. satisfies: A(x) = (1 + x*A(2x))^5.

The programs for A171205, there is no canonical definition to state claims against.
-/

/-! ## A171205.P17987967913832533911

`A171204(n+1)/2^n`
-/

namespace A171205.P17987967913832533911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171204 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A171205.P17987967913832533911

/-!
# A171206: G.f. A(x) satisfies A(x) = 1 + x*A(2*x)^6.

The programs for A171206, there is no canonical definition to state claims against.
-/

/-! ## A171206.P1014871275736473354

`A086781(A030918(n+1)-A280730(n+1))`
-/

namespace A171206.P1014871275736473354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086781 (A030918 (n + 1) - A280730 (n + 1)).toNat

end

end A171206.P1014871275736473354

/-!
# A171207: G.f. satisfies: A(x) = (1 + x*A(2x))^6.

The programs for A171207, there is no canonical definition to state claims against.
-/

/-! ## A171207.P17276130454668415378

`A171206(n+1)/2^n`
-/

namespace A171207.P17276130454668415378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171206 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A171207.P17276130454668415378

/-! ## A171207.P9515221783640638305

`floor(A171206(n+1)/A000079(n))`
-/

namespace A171207.P9515221783640638305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171206 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A171207.P9515221783640638305

/-! ## A171207.P8983450122418389221

`floor(A171206(n+1)/A131577(n+1))`
-/

namespace A171207.P8983450122418389221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171206 (n + 1) : ℚ) / (A131577 (n + 1) : ℚ)⌋

end

end A171207.P8983450122418389221

/-!
# A171209: G.f. satisfies: A(x) = (1 + x*A(2x))^7.

The programs for A171209, there is no canonical definition to state claims against.
-/

/-! ## A171209.P16982346387582095277

`A171208(n+1)/2^n`
-/

namespace A171209.P16982346387582095277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171208 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A171209.P16982346387582095277

/-! ## A171209.P12843658548438612499

`floor(A171208(n+1)/A000079(n))`
-/

namespace A171209.P12843658548438612499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171208 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A171209.P12843658548438612499

/-! ## A171209.P2181364246288985534

`abs(A171208(n+1)/Δ[A000051(n)])`
-/

namespace A171209.P2181364246288985534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A171208 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A171209.P2181364246288985534

/-! ## A171209.P16941396705069939903

`A000079(n+1)*A171208(n+1)/(2*A000079(n)²)`
-/

namespace A171209.P16941396705069939903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A171208 (n + 1) : ℚ) / (2 * A000079 n ^ 2 : ℚ)

end

end A171209.P16941396705069939903

/-! ## A171209.P13746329198692508165

`A000079(n+1)*A171208(n+1)/A000079(2*n+1)`
-/

namespace A171209.P13746329198692508165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A171208 (n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A171209.P13746329198692508165

/-!
# A171211: G.f. satisfies: A(x) = (1 + x*A(2x))^8.

The programs for A171211, there is no canonical definition to state claims against.
-/

/-! ## A171211.P14276763011968316844

`A171210(n+1)/2^n`
-/

namespace A171211.P14276763011968316844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171210 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A171211.P14276763011968316844

/-! ## A171211.P12941016485317919639

`floor(A171210(n+1)/A000079(n))`
-/

namespace A171211.P12941016485317919639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171210 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A171211.P12941016485317919639

/-! ## A171211.P5344015188188265373

`floor(A171210(n+1)/A011782(n+1))`
-/

namespace A171211.P5344015188188265373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171210 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A171211.P5344015188188265373

/-! ## A171211.P12496747565427688029

`A000079(n+1)*A171210(n+1)/(2*A000079(n)²)`
-/

namespace A171211.P12496747565427688029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A171210 (n + 1) : ℚ) / (2 * A000079 n ^ 2 : ℚ)

end

end A171211.P12496747565427688029

/-! ## A171211.P9834933713811767545

`A000079(n+1)*A171210(n+1)/A000079(2*n+1)`
-/

namespace A171211.P9834933713811767545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A171210 (n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ)

end

end A171211.P9834933713811767545

/-!
# A171212: G.f.: A(x) satisfies A(x) = x + x*A(A(2*x)).

The programs for A171212, there is no canonical definition to state claims against.
-/

/-! ## A171212.P5227981868544148415

`A227428(or(n+1, (2*n)^n))`
-/

namespace A171212.P5227981868544148415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (Nat.lor (n + 1) ((2 * n) ^ n))

end

end A171212.P5227981868544148415

/-!
# A171214: G.f. A(x) satisfies A(x) = x + x*A(A(x/3)) = Sum_{n>=1} a(n)*x^n/3^(n*(n+1)/2).

The programs for A171214, there is no canonical definition to state claims against.
-/

/-! ## A171214.P14421357678928763204

`A106432(n!²)`
-/

namespace A171214.P14421357678928763204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (Nat.factorial n ^ 2)

end

end A171214.P14421357678928763204

/-!
# A171215: Row cubed sums of triangle of Lucas polynomials (A034807) for n>0: Sum_{k=0..[n/2]} A034807(n,k)^3.

The programs for A171215, there is no canonical definition to state claims against.
-/

/-! ## A171215.P5545408606707180564

`A055012(2*A041058(n))`
-/

namespace A171215.P5545408606707180564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (2 * A041058 n).toNat

end

end A171215.P5545408606707180564

/-!
# A171216: a(n) = (4^(5*n+1) + 7)/11.

The programs for A171216, the canonical program `A171216.P971889078184600728` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171216 has offset 1).

The definition of A171216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171216.P971889078184600728

`(4^(5*(n+1)+1)+7)/11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171216

/-- `(4^(5*(n+1)+1)+7)/11` -/
def P971889078184600728.Spec : Prop :=
  ∀ n, P971889078184600728.a n = (A171216 (n + 1) : ℚ)

end A171216

/-! ## A171216.P8764128489681096227

`ceil(A013830(n+1)/11)`
-/

namespace A171216.P8764128489681096227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A013830 (n + 1) : ℚ) / 11⌉

end

end A171216.P8764128489681096227

namespace A171216

/-- `ceil(A013830(n+1)/11)` -/
def P8764128489681096227.Spec : Prop :=
  ∀ n, P8764128489681096227.a n = A171216 (n + 1)

end A171216

/-! ## A171216.P6578051943682080972

`A262236(A017377(n))`
-/

namespace A171216.P6578051943682080972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262236 (A017377 n).toNat

end

end A171216.P6578051943682080972

namespace A171216

/-- `A262236(A017377(n))` -/
def P6578051943682080972.Spec : Prop :=
  ∀ n, P6578051943682080972.a n = A171216 (n + 1)

end A171216

/-!
# A171217: Numbers of the form (noncomposite number)^(noncomposite number), but not p^p where p is prime.

The programs for A171217, there is no canonical definition to state claims against.
-/

/-! ## A171217.P6191827188962497152

`record[A028233(A284763(n+1))]`
-/

namespace A171217.P6191827188962497152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A284763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171217.P6191827188962497152

/-! ## A171217.P16630564639183452170

`filter[A284763(n+1), A010055(#)]`
-/

namespace A171217.P16630564639183452170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A171217.P16630564639183452170

/-! ## A171217.P13524726223220661346

`filter[A334393(n+1), A342004(#)]`
-/

namespace A171217.P13524726223220661346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A171217.P13524726223220661346

/-! ## A171217.P14152060673938003604

`filter[A384419(n+1), A342004(#)]`
-/

namespace A171217.P14152060673938003604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A171217.P14152060673938003604

/-! ## A171217.P10204734412770452916

`record[A034684(A284763(C(n+1, n)))]`
-/

namespace A171217.P10204734412770452916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A284763 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171217.P10204734412770452916

/-! ## A171217.P17020695963879872772

`∩[A000961(n+1), A284763(n+1)]`
-/

namespace A171217.P17020695963879872772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171217.P17020695963879872772

/-! ## A171217.P11541948169730722629

`∩[A063743(n+1), A334393(n+1)]`
-/

namespace A171217.P11541948169730722629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171217.P11541948169730722629

/-! ## A171217.P13233228692860766234

`∩[A063743(n+1), A384419(n+1)]`
-/

namespace A171217.P13233228692860766234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171217.P13233228692860766234

/-! ## A171217.P2847048835184608629

`∩[A164336(n+1), A284763(n+1)]`
-/

namespace A171217.P2847048835184608629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171217.P2847048835184608629

/-! ## A171217.P7786254864229347965

`∩[A144146(n+1), A334393(n+1)]`
-/

namespace A171217.P7786254864229347965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171217.P7786254864229347965

/-!
# A171218: a(n) = Sum_{k=0..n} A109613(k)*A005843(n-k).

The programs for A171218, the canonical program `A171218.P7067605316328415207` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171218 has offset 0).

The definition of A171218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171218.P14382118629109127902

`(2*n*(2*n²+3*n+4)-3*(-1)^n+3)/12`
-/

namespace A171218.P14382118629109127902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n * (2 * n ^ 2 + 3 * n + 4)) : ℤ) - 3 * (-1) ^ n + 3 : ℚ) / 12

end

end A171218.P14382118629109127902

namespace A171218

/-- `(2*n*(2*n²+3*n+4)-3*(-1)^n+3)/12` -/
def P14382118629109127902.Spec : Prop :=
  ∀ n, P14382118629109127902.a n = (A171218 n : ℚ)

theorem P14382118629109127902.correct : P14382118629109127902.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A171218, Nat.add_sub_cancel, A171218.P14382118629109127902.a, A171218.P7067605316328415207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A171218, Nat.add_sub_cancel, A171218.P14382118629109127902.a, A171218.P7067605316328415207.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171218

/-! ## A171218.P7067605316328415207

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=16, a(4)=32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171218

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P7067605316328415207.Spec : Prop :=
  ∀ n, P7067605316328415207.a n = A171218 n

theorem P7067605316328415207.correct : P7067605316328415207.Spec := by
  intro n
  simp only [A171218]

end A171218

/-! ## A171218.P4530271662556842586

`2*A131941(n)`
-/

namespace A171218.P4530271662556842586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131941 n

end

end A171218.P4530271662556842586

namespace A171218

/-- `2*A131941(n)` -/
def P4530271662556842586.Spec : Prop :=
  ∀ n, P4530271662556842586.a n = A171218 n

end A171218

/-! ## A171218.P4045295681988159710

`∑[n%2+n²]`
-/

namespace A171218.P4045295681988159710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P4045295681988159710

namespace A171218

/-- `∑[n%2+n²]` -/
def P4045295681988159710.Spec : Prop :=
  ∀ n, (P4045295681988159710.a n : ℤ) = A171218 n

end A171218

/-! ## A171218.P14391603244820503861

`∑[and(1, n)+n²]`
-/

namespace A171218.P14391603244820503861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P14391603244820503861

namespace A171218

/-- `∑[and(1, n)+n²]` -/
def P14391603244820503861.Spec : Prop :=
  ∀ n, (P14391603244820503861.a n : ℤ) = A171218 n

end A171218

/-! ## A171218.P4173822599554280257

`∑[1-or(1, -n²)]`
-/

namespace A171218.P4173822599554280257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P4173822599554280257

namespace A171218

/-- `∑[1-or(1, -n²)]` -/
def P4173822599554280257.Spec : Prop :=
  ∀ n, P4173822599554280257.a n = A171218 n

end A171218

/-! ## A171218.P17153040250068448273

`∑[n²--n%2]`
-/

namespace A171218.P17153040250068448273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.tmod (-(n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P17153040250068448273

namespace A171218

/-- `∑[n²--n%2]` -/
def P17153040250068448273.Spec : Prop :=
  ∀ n, P17153040250068448273.a n = A171218 n

end A171218

/-! ## A171218.P15245252974912404984

`∑[char[or(1, n)]+n²]`
-/

namespace A171218.P15245252974912404984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P15245252974912404984

namespace A171218

/-- `∑[char[or(1, n)]+n²]` -/
def P15245252974912404984.Spec : Prop :=
  ∀ n, (P15245252974912404984.a n : ℤ) = A171218 n

end A171218

/-! ## A171218.P798655127052903553

`∑[2-gcd(2, n)+n²]`
-/

namespace A171218.P798655127052903553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P798655127052903553

namespace A171218

/-- `∑[2-gcd(2, n)+n²]` -/
def P798655127052903553.Spec : Prop :=
  ∀ n, P798655127052903553.a n = A171218 n

end A171218

/-! ## A171218.P11995627422249095387

`∑[val(n²+1, 2)+n²]`
-/

namespace A171218.P11995627422249095387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P11995627422249095387

namespace A171218

/-- `∑[val(n²+1, 2)+n²]` -/
def P11995627422249095387.Spec : Prop :=
  ∀ n, (P11995627422249095387.a n : ℤ) = A171218 n

end A171218

/-! ## A171218.P11372213978751422730

`∑[∑[a(n-2)+4]]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A171218.P11372213978751422730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P11372213978751422730

namespace A171218

/-- `∑[∑[a(n-2)+4]]` -/
def P11372213978751422730.Spec : Prop :=
  ∀ n, (P11372213978751422730.a n : ℤ) = A171218 n

end A171218

/-! ## A171218.P755047612738213271

`∑[1-(and(1, n-1)-n²)]`
-/

namespace A171218.P755047612738213271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.land 1 ((n : ℤ) - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P755047612738213271

namespace A171218

/-- `∑[1-(and(1, n-1)-n²)]` -/
def P755047612738213271.Spec : Prop :=
  ∀ n, P755047612738213271.a n = A171218 n

end A171218

/-! ## A171218.P5276989728349066941

`∑[∑[2*n]+and(1, n)-n]`
-/

namespace A171218.P5276989728349066941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 1 n : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P5276989728349066941

namespace A171218

/-- `∑[∑[2*n]+and(1, n)-n]` -/
def P5276989728349066941.Spec : Prop :=
  ∀ n, P5276989728349066941.a n = A171218 n

end A171218

/-! ## A171218.P12998461457149921999

`∑[∑[2*n]-(n-and(1, n))]`
-/

namespace A171218.P12998461457149921999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P12998461457149921999

namespace A171218

/-- `∑[∑[2*n]-(n-and(1, n))]` -/
def P12998461457149921999.Spec : Prop :=
  ∀ n, P12998461457149921999.a n = A171218 n

end A171218

/-! ## A171218.P9187826872825525899

`∑[∑[∑[4-a(n-1)]]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A171218.P9187826872825525899
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f3 =>
  4 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P9187826872825525899

namespace A171218

/-- `∑[∑[∑[4-a(n-1)]]]` -/
def P9187826872825525899.Spec : Prop :=
  ∀ n, P9187826872825525899.a n = A171218 n

end A171218

/-! ## A171218.P17550207381442677779

`∑[or(1, (n+1)*(n-1))+1]`
-/

namespace A171218.P17550207381442677779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 1 : ℤ) * ((n : ℤ) - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P17550207381442677779

namespace A171218

/-- `∑[or(1, (n+1)*(n-1))+1]` -/
def P17550207381442677779.Spec : Prop :=
  ∀ n, P17550207381442677779.a n = A171218 n

end A171218

/-! ## A171218.P8204023212894316242

`and(1, n)+a(n-1)+n²` with `a(0)=0`
-/

namespace A171218.P8204023212894316242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 n + (a (n - 1) + n ^ 2)

end

end A171218.P8204023212894316242

namespace A171218

/-- `and(1, n)+a(n-1)+n²` -/
def P8204023212894316242.Spec : Prop :=
  ∀ n, (P8204023212894316242.a n : ℤ) = A171218 n

end A171218

/-! ## A171218.P5784024973754023400

`∑[or(1, (n+1)²)]-(n+1)²`
-/

namespace A171218.P5784024973754023400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A171218.P5784024973754023400

namespace A171218

/-- `∑[or(1, (n+1)²)]-(n+1)²` -/
def P5784024973754023400.Spec : Prop :=
  ∀ n, P5784024973754023400.a n = A171218 n

end A171218

/-! ## A171218.P6963484606199392549

`∑[gcd(n-1, 2*n)-(1-n²)]`
-/

namespace A171218.P6963484606199392549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) - (1 - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P6963484606199392549

namespace A171218

/-- `∑[gcd(n-1, 2*n)-(1-n²)]` -/
def P6963484606199392549.Spec : Prop :=
  ∀ n, P6963484606199392549.a n = A171218 n

end A171218

/-! ## A171218.P15786511632418981842

`∑[C(n+1, lcm(2, n+1))+n²]`
-/

namespace A171218.P15786511632418981842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lcm 2 (n + 1)) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171218.P15786511632418981842

namespace A171218

/-- `∑[C(n+1, lcm(2, n+1))+n²]` -/
def P15786511632418981842.Spec : Prop :=
  ∀ n, (P15786511632418981842.a n : ℤ) = A171218 n

end A171218

/-!
# A171219: A138101(n)+A168142(n).

The programs for A171219, there is no canonical definition to state claims against.
-/

/-! ## A171219.P17766862088888339667

`A138101(n+1)+A168142(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171219.P17766862088888339667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (n + 1) + A168142 (n + 1)

end

end A171219.P17766862088888339667

/-! ## A171219.P4288411314179933293

`3-2*(n-A137904(n))`
-/

namespace A171219.P4288411314179933293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * ((n : ℤ) - A137904 n)

end

end A171219.P4288411314179933293

/-! ## A171219.P7995253462727492433

`A166464(∑[char[∑[2*n²]]])`
-/

namespace A171219.P7995253462727492433
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171219.P7995253462727492433

/-! ## A171219.P1502904207220433935

`2*(comp[A137937(n)]-n)+3`
-/

namespace A171219.P1502904207220433935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) + 3

end

end A171219.P1502904207220433935

/-! ## A171219.P1489783260667463881

`A168234(n+1)+2*∑[char[∑[2*n²]]]²`
-/

namespace A171219.P1489783260667463881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168234 (n + 1) + ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A171219.P1489783260667463881

/-! ## A171219.P8231634048177633674

`A171710(A138101(n+1))`
-/

namespace A171219.P8231634048177633674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A138101 (n + 1)).toNat

end

end A171219.P8231634048177633674

/-! ## A171219.P17417781625871647217

`A171710(A168234(n+1))`
-/

namespace A171219.P17417781625871647217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A168234 (n + 1)).toNat

end

end A171219.P17417781625871647217

/-! ## A171219.P3143729559252761606

`A171710(A137904(n)+2)`
-/

namespace A171219.P3143729559252761606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A137904 n + 2).toNat

end

end A171219.P3143729559252761606

/-! ## A171219.P496692084097880161

`A004273(A138101(n+1)-n)`
-/

namespace A171219.P496692084097880161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A138101 (n + 1) - (n : ℤ)).toNat

end

end A171219.P496692084097880161

/-! ## A171219.P11695472426631002232

`filter[A171710(n+1), A023970(#)]`
-/

namespace A171219.P11695472426631002232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023970 (f1 j).toNat = 1) n)

end

end A171219.P11695472426631002232

/-!
# A171220: a(n) = (2n + 1)*5^n.

The programs for A171220, the canonical program `A171220.P8329238177841684145` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171220 has offset 0).

The definition of A171220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*5^n` (program `A171220.P8329238177841684145`, by `A171220.P8329238177841684145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171220.P8329238177841684145

`(2*n+1)*5^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171220

/-- `(2*n+1)*5^n` -/
def P8329238177841684145.Spec : Prop :=
  ∀ n, (P8329238177841684145.a n : ℤ) = A171220 n

theorem P8329238177841684145.correct : P8329238177841684145.Spec := by
  intro n
  simp only [A171220]

end A171220

/-! ## A171220.P9034573974539419848

`10*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A171220.P9034573974539419848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  10 * a (n - 1) - 25 * a (n - 2)

end

end A171220.P9034573974539419848

namespace A171220

/-- `10*a(n-1)-25*a(n-2)` -/
def P9034573974539419848.Spec : Prop :=
  ∀ n, P9034573974539419848.a n = A171220 n

theorem P9034573974539419848.correct : P9034573974539419848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A171220, Nat.add_sub_cancel, A171220.P9034573974539419848.a, A171220.P8329238177841684145.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A171220, Nat.add_sub_cancel, A171220.P9034573974539419848.a, A171220.P8329238177841684145.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A171220

/-! ## A171220.P16293569155435161939

`(4*n+2)*A000351(n)/2`
-/

namespace A171220.P16293569155435161939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) * A000351 n : ℚ) / 2

end

end A171220.P16293569155435161939

namespace A171220

/-- `(4*n+2)*A000351(n)/2` -/
def P16293569155435161939.Spec : Prop :=
  ∀ n, P16293569155435161939.a n = (A171220 n : ℚ)

end A171220

/-! ## A171220.P5688658554191405542

`abs(Δ[n²]*A074872(2*(n+1)))`
-/

namespace A171220.P5688658554191405542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A074872 (2 * (n + 1))|

end

end A171220.P5688658554191405542

namespace A171220

/-- `abs(Δ[n²]*A074872(2*(n+1)))` -/
def P5688658554191405542.Spec : Prop :=
  ∀ n, P5688658554191405542.a n = A171220 n

end A171220

/-! ## A171220.P16132783100831417766

`(2*n+1)*A020699(n+1)/2`
-/

namespace A171220.P16132783100831417766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * A020699 (n + 1) : ℚ) / 2

end

end A171220.P16132783100831417766

namespace A171220

/-- `(2*n+1)*A020699(n+1)/2` -/
def P16132783100831417766.Spec : Prop :=
  ∀ n, P16132783100831417766.a n = (A171220 n : ℚ)

end A171220

/-! ## A171220.P11796986096278877452

`A000351(n)+2*A036291(n)`
-/

namespace A171220.P11796986096278877452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + 2 * A036291 n

end

end A171220.P11796986096278877452

namespace A171220

/-- `A000351(n)+2*A036291(n)` -/
def P11796986096278877452.Spec : Prop :=
  ∀ n, P11796986096278877452.a n = A171220 n

end A171220

/-! ## A171220.P193734187838015075

`A000351(n)+n*A020729(n)`
-/

namespace A171220.P193734187838015075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + (n : ℤ) * A020729 n

end

end A171220.P193734187838015075

namespace A171220

/-- `A000351(n)+n*A020729(n)` -/
def P193734187838015075.Spec : Prop :=
  ∀ n, P193734187838015075.a n = A171220 n

end A171220

/-! ## A171220.P12558988867826459528

`∑{d}[2*n+1, A000010(#)*A000351(n)]`
-/

namespace A171220.P12558988867826459528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000351 n

end

end A171220.P12558988867826459528

namespace A171220

/-- `∑{d}[2*n+1, A000010(#)*A000351(n)]` -/
def P12558988867826459528.Spec : Prop :=
  ∀ n, P12558988867826459528.a n = A171220 n

end A171220

/-! ## A171220.P11165850406081119092

`A026950(2*n+1)-A026383(2*n+1)`
-/

namespace A171220.P11165850406081119092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026950 (2 * n + 1) - A026383 (2 * n + 1)

end

end A171220.P11165850406081119092

namespace A171220

/-- `A026950(2*n+1)-A026383(2*n+1)` -/
def P11165850406081119092.Spec : Prop :=
  ∀ n, P11165850406081119092.a n = A171220 n

end A171220

/-! ## A171220.P13507452688148892238

`A026955(2*n+1)-A026395(2*n+1)`
-/

namespace A171220.P13507452688148892238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026955 (2 * n + 1) - A026395 (2 * n + 1)

end

end A171220.P13507452688148892238

namespace A171220

/-- `A026955(2*n+1)-A026395(2*n+1)` -/
def P13507452688148892238.Spec : Prop :=
  ∀ n, P13507452688148892238.a n = A171220 n

end A171220

/-! ## A171220.P6663933399268960706

`A026383(2*n)+n*A026383(2*n+1)`
-/

namespace A171220.P6663933399268960706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (2 * n) + (n : ℤ) * A026383 (2 * n + 1)

end

end A171220.P6663933399268960706

namespace A171220

/-- `A026383(2*n)+n*A026383(2*n+1)` -/
def P6663933399268960706.Spec : Prop :=
  ∀ n, P6663933399268960706.a n = A171220 n

end A171220

/-! ## A171220.P14320707672516896567

`A187275(2*n+1)/5`
-/

namespace A171220.P14320707672516896567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187275 (2 * n + 1) : ℚ) / 5

end

end A171220.P14320707672516896567

namespace A171220

/-- `A187275(2*n+1)/5` -/
def P14320707672516896567.Spec : Prop :=
  ∀ n, P14320707672516896567.a n = (A171220 n : ℚ)

end A171220

/-!
# A171221: Primes in lunar arithmetic in base 9 written in base 9.

The programs for A171221, there is no canonical definition to state claims against.
-/

/-! ## A171221.P14821849911152528668

`A007095(A171169(n+1))`
-/

namespace A171221.P14821849911152528668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A171169 (n + 1)).toNat

end

end A171221.P14821849911152528668

/-! ## A171221.P10171396913282933058

`∩[A144175(n+1), A283611(n+1)]`
-/

namespace A171221.P10171396913282933058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171221.P10171396913282933058

/-! ## A171221.P7958070791689248266

`eq[2, A089862(A087028(n+1))]+1`
-/

namespace A171221.P7958070791689248266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (A087028 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171221.P7958070791689248266

/-! ## A171221.P4363298864785159526

`A144175(n+2)%A289218(n+1)`
-/

namespace A171221.P4363298864785159526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144175 (n + 2)) (A289218 (n + 1))

end

end A171221.P4363298864785159526

/-! ## A171221.P7134253988982830476

`eq[8, A340184(n)]`
-/

namespace A171221.P7134253988982830476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171221.P7134253988982830476

/-!
# A171222: Squares in lunar arithmetic in base 2 written in base 2.

The programs for A171222, there is no canonical definition to state claims against.
-/

/-! ## A171222.P1867918961018373924

`A087019(lcm(A007088(n), A293718(n)))`
-/

namespace A171222.P1867918961018373924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (Int.lcm (A007088 n) (A293718 n))

end

end A171222.P1867918961018373924

/-! ## A171222.P4833374381017791891

`A087019(A007088(n)^A184318(n+1))`
-/

namespace A171222.P4833374381017791891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.roundAway ((A007088 n : ℚ) ^ (A184318 (n + 1) : ℤ))).toNat

end

end A171222.P4833374381017791891

/-! ## A171222.P5201712523099870947

`A087019(C(A007088(n), A184318(n+1)))`
-/

namespace A171222.P5201712523099870947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (Nat.choose (A007088 n).toNat (A184318 (n + 1)).toNat)

end

end A171222.P5201712523099870947

/-! ## A171222.P7485288808808045553

`A087019(A007088(n))%A193039(2*(n+2))`
-/

namespace A171222.P7485288808808045553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087019 (A007088 n).toNat) (A193039 (2 * (n + 2)))

end

end A171222.P7485288808808045553

/-! ## A171222.P2099344548152358040

`A087019(A007088(n)^A172358(n))`
-/

namespace A171222.P2099344548152358040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.roundAway ((A007088 n : ℚ) ^ (A172358 n : ℤ))).toNat

end

end A171222.P2099344548152358040

/-!
# A171224: Riordan array (f(x),x*f(x)) where f(x) is the g.f. of A117641.

The programs for A171224, there is no canonical definition to state claims against.
-/

/-! ## A171224.P17721369553393581142

`A091951(A145878(n))`
-/

namespace A171224.P17721369553393581142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (A145878 n).toNat

end

end A171224.P17721369553393581142

/-! ## A171224.P9226333136926680371

`A361789(A349454(n))`
-/

namespace A171224.P9226333136926680371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361789 (A349454 n).toNat

end

end A171224.P9226333136926680371

/-! ## A171224.P16902015899553938427

`A332436(A090238(n+1))`
-/

namespace A171224.P16902015899553938427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332436 (A090238 (n + 1)).toNat

end

end A171224.P16902015899553938427

/-! ## A171224.P12157828275568173821

`∑{d}[A327125(n), A225631(#)]`
-/

namespace A171224.P12157828275568173821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A225631 d

end

end A171224.P12157828275568173821

/-! ## A171224.P16673884110307016826

`A053737(A145878(n)^A069283(3*n))`
-/

namespace A171224.P16673884110307016826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.roundAway ((A145878 n : ℚ) ^ (A069283 (3 * n) : ℤ))).toNat

end

end A171224.P16673884110307016826

/-!
# A171225: Nonnegative numbers which cannot be represented by inserting plus or minus signs between the digits of 123456789.

The programs for A171225, there is no canonical definition to state claims against.
-/

/-! ## A171225.P3216554010755173661

`eq[0, A066956(n)]`
-/

namespace A171225.P3216554010755173661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171225.P3216554010755173661

/-! ## A171225.P5483016176754489382

`lt[A066956(n+1), 1]+1`
-/

namespace A171225.P5483016176754489382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171225.P5483016176754489382

/-! ## A171225.P819545266305830968

`lt[A066956(n), acot(A004526(n))]`
-/

namespace A171225.P819545266305830968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004526 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P819545266305830968

/-! ## A171225.P9179589145596933628

`lt[A066956(n), acot(A007895(n))]`
-/

namespace A171225.P9179589145596933628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007895 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P9179589145596933628

/-! ## A171225.P16159627300142063773

`lt[A066956(n), acot(A025147(n))]`
-/

namespace A171225.P16159627300142063773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A025147 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P16159627300142063773

/-! ## A171225.P12210086381670517504

`lt[A066956(n), acot(A066957(n))]`
-/

namespace A171225.P12210086381670517504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A066957 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P12210086381670517504

/-! ## A171225.P18009603447405544969

`lt[A066956(n), acot(A107286(n))]`
-/

namespace A171225.P18009603447405544969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A107286 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P18009603447405544969

/-! ## A171225.P18153847605344541484

`lt[A066956(n), acot(A131791(n))]`
-/

namespace A171225.P18153847605344541484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A131791 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P18153847605344541484

/-! ## A171225.P12556633336445991592

`lt[A066956(n), acot(A136604(n))]`
-/

namespace A171225.P12556633336445991592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A136604 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171225.P12556633336445991592

/-! ## A171225.P8766439128286480929

`lt[A066956(n)*A273536(n), 1]`
-/

namespace A171225.P8766439128286480929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066956 n * A273536 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171225.P8766439128286480929

/-!
# A171226: a(n) = 9+10^n+9*100^n.

The programs for A171226, there is no canonical definition to state claims against.
-/

/-! ## A171226.P14974590159214273880

`10*A066138(n)-A171553(n)`
-/

namespace A171226.P14974590159214273880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A066138 n - A171553 n

end

end A171226.P14974590159214273880

/-! ## A171226.P16102561483722474003

`A253213(n)+A067479(2*n+1)`
-/

namespace A171226.P16102561483722474003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253213 n + A067479 (2 * n + 1)

end

end A171226.P16102561483722474003

/-! ## A171226.P10253064189059671037

`A253213(n)+A050683(4*n+1)`
-/

namespace A171226.P10253064189059671037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253213 n + A050683 (4 * n + 1)

end

end A171226.P10253064189059671037

/-! ## A171226.P3932827259744396275

`record[A083819(2*n+5)+A083816(n)]`
-/

namespace A171226.P3932827259744396275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083819 (2 * n + 5) + A083816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171226.P3932827259744396275

/-! ## A171226.P76310642345501486

`A063945(2*n+1)+A253213(2*(n+2))%A063945(n+1)`
-/

namespace A171226.P76310642345501486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063945 (2 * n + 1) + Int.tmod (A253213 (2 * (n + 2))) (A063945 (n + 1))

end

end A171226.P76310642345501486

/-!
# A171227: Numbers k such that 9 + 10^k + 9*100^k is prime.

The programs for A171227, there is no canonical definition to state claims against.
-/

/-! ## A171227.P17549299249142435185

`eq[1, A100957(A028310(n))]`
-/

namespace A171227.P17549299249142435185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171227.P17549299249142435185

/-!
# A171228: n^(p-n) where p is smallest prime > n.

The programs for A171228, the canonical program `A171228.P4419088175126916163` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171228 has offset 0).

The definition of A171228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171228.P4419088175126916163

`n^A013632(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171228

/-- `n^A013632(n)` -/
def P4419088175126916163.Spec : Prop :=
  ∀ n, P4419088175126916163.a n = (A171228 n : ℚ)

end A171228

/-! ## A171228.P11689306116367105917

`n^(A151800(n)-n)`
-/

namespace A171228.P11689306116367105917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A151800 n - (n : ℤ) : ℤ)

end

end A171228.P11689306116367105917

namespace A171228

/-- `n^(A151800(n)-n)` -/
def P11689306116367105917.Spec : Prop :=
  ∀ n, P11689306116367105917.a n = (A171228 n : ℚ)

end A171228

/-! ## A171228.P12633016743136269731

`A171424(n+1)-(n+1)`
-/

namespace A171228.P12633016743136269731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171424 (n + 1) - (n + 1 : ℤ)

end

end A171228.P12633016743136269731

namespace A171228

/-- `A171424(n+1)-(n+1)` -/
def P12633016743136269731.Spec : Prop :=
  ∀ n, P12633016743136269731.a n = A171228 n

end A171228

/-! ## A171228.P6571844509149339140

`n^(A007920(n+1)+1)`
-/

namespace A171228.P6571844509149339140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007920 (n + 1) + 1 : ℤ)

end

end A171228.P6571844509149339140

namespace A171228

/-- `n^(A007920(n+1)+1)` -/
def P6571844509149339140.Spec : Prop :=
  ∀ n, P6571844509149339140.a n = (A171228 n : ℚ)

end A171228

/-! ## A171228.P15616828681566943235

`n^(A007918(n+1)-n)`
-/

namespace A171228.P15616828681566943235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007918 (n + 1) - (n : ℤ) : ℤ)

end

end A171228.P15616828681566943235

namespace A171228

/-- `n^(A007918(n+1)-n)` -/
def P15616828681566943235.Spec : Prop :=
  ∀ n, P15616828681566943235.a n = (A171228 n : ℚ)

end A171228

/-! ## A171228.P11804170660871785100

`n^(A159477(n+1)-n)`
-/

namespace A171228.P11804170660871785100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A159477 (n + 1) - (n : ℤ) : ℤ)

end

end A171228.P11804170660871785100

namespace A171228

/-- `n^(A159477(n+1)-n)` -/
def P11804170660871785100.Spec : Prop :=
  ∀ n, P11804170660871785100.a n = (A171228 n : ℚ)

end A171228

/-! ## A171228.P9676293072877212745

`n^A100802(A013634(n))`
-/

namespace A171228.P9676293072877212745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A100802 (A013634 n).toNat : ℤ)

end

end A171228.P9676293072877212745

namespace A171228

/-- `n^A100802(A013634(n))` -/
def P9676293072877212745.Spec : Prop :=
  ∀ n, P9676293072877212745.a n = (A171228 n : ℚ)

end A171228

/-!
# A171229: Triangle T(n,k) read by rows: T(0,k)=1, otherwise T(n,k)= 1 + floor(n!*exp(-(k-floor(n)/2)^2)).

The programs for A171229, there is no canonical definition to state claims against.
-/

/-! ## A171229.P13042839476272543605

`A121900(A183065(n))`
-/

namespace A171229.P13042839476272543605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A183065 n).toNat

end

end A171229.P13042839476272543605

/-! ## A171229.P17088526649901094038

`A267861(A174412(n))`
-/

namespace A171229.P17088526649901094038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267861 (A174412 n).toNat

end

end A171229.P17088526649901094038

/-! ## A171229.P15781170936299294530

`A345965(A131235(n))`
-/

namespace A171229.P15781170936299294530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345965 (A131235 n).toNat

end

end A171229.P15781170936299294530

/-! ## A171229.P8979378396020181356

`A330878(A028657(n)²)`
-/

namespace A171229.P8979378396020181356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A028657 n ^ 2).toNat

end

end A171229.P8979378396020181356

/-! ## A171229.P465383077905511372

`A330878(A053534(n)²)`
-/

namespace A171229.P465383077905511372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A053534 n ^ 2).toNat

end

end A171229.P465383077905511372

/-!
# A171230: a(n) = 0+1+2+...+n in lunar arithmetic in base 2 written in base 2.

The programs for A171230, there is no canonical definition to state claims against.
-/

/-! ## A171230.P16583969854008348115

`10*a(floor(n/2))+1` with `a(0)=0`
-/

namespace A171230.P16583969854008348115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A171230.P16583969854008348115

/-! ## A171230.P10511448313039720388

`lcm(10, a(floor(n/2)))+1` with `a(0)=0`
-/

namespace A171230.P10511448313039720388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 10 (a ⌊(n : ℚ) / 2⌋.toNat) + 1

end

end A171230.P10511448313039720388

/-! ## A171230.P14129851996968365601

`or(1, 10*a(floor(n/2)))` with `a(0)=0`
-/

namespace A171230.P14129851996968365601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (10 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A171230.P14129851996968365601

/-! ## A171230.P17729464436457129548

`xor(1, 10*a(floor(n/2)))` with `a(0)=0`
-/

namespace A171230.P17729464436457129548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (10 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A171230.P17729464436457129548

/-! ## A171230.P2992913664798605733

`floor(10^ceil(log2(n+1))/9)`
-/

namespace A171230.P2992913664798605733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) / 9⌋

end

end A171230.P2992913664798605733

/-!
# A171231: a(n) = (10*2^n + 3 - (-1)^n)/6.

The programs for A171231, the canonical program `A171231.P437109371819831341` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171231 has offset 0).

The definition of A171231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171231.P437109371819831341

`ceil(5/3*2^n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171231

/-- `ceil(5/3*2^n)` -/
def P437109371819831341.Spec : Prop :=
  ∀ n, P437109371819831341.a n = A171231 n

theorem P437109371819831341.correct : P437109371819831341.Spec := by
  intro n
  simp only [A171231]

end A171231

/-! ## A171231.P6441152998245319209

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A171231.P6441152998245319209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 7] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A171231.P6441152998245319209

namespace A171231

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P6441152998245319209.Spec : Prop :=
  ∀ n, P6441152998245319209.a n = A171231 n

end A171231

/-! ## A171231.P11330518300670791290

`(10*2^n+3-(-1)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171231.P11330518300670791290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 2 ^ n : ℤ) + (3 - (-1) ^ n) : ℚ) / 6

end

end A171231.P11330518300670791290

namespace A171231

/-- `(10*2^n+3-(-1)^n)/6` -/
def P11330518300670791290.Spec : Prop :=
  ∀ n, P11330518300670791290.a n = (A171231 n : ℚ)

end A171231

/-! ## A171231.P8645812737482988288

`(1-n)%2+2*a(n-1)` with `a(0)=2`
-/

namespace A171231.P8645812737482988288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 + 2 * a (n - 1)

end

end A171231.P8645812737482988288

namespace A171231

/-- `(1-n)%2+2*a(n-1)` -/
def P8645812737482988288.Spec : Prop :=
  ∀ n, P8645812737482988288.a n = A171231 n

end A171231

/-! ## A171231.P17956563520662321080

`2*a(n-1)+1-gcd(2, n)` with `a(0)=2`
-/

namespace A171231.P17956563520662321080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + (1 - (Nat.gcd 2 n : ℤ))

end

end A171231.P17956563520662321080

namespace A171231

/-- `2*a(n-1)+1-gcd(2, n)` -/
def P17956563520662321080.Spec : Prop :=
  ∀ n, P17956563520662321080.a n = A171231 n

end A171231

/-! ## A171231.P3772713462410931231

`2*a(n-1)-(1-n%2)` with `a(0)=2`
-/

namespace A171231.P3772713462410931231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (1 - ((n % 2 : ℕ) : ℤ))

end

end A171231.P3772713462410931231

namespace A171231

/-- `2*a(n-1)-(1-n%2)` -/
def P3772713462410931231.Spec : Prop :=
  ∀ n, P3772713462410931231.a n = A171231 n

end A171231

/-! ## A171231.P6522176450733921428

`2*a(n-1)-and(1, n+1)` with `a(0)=2`
-/

namespace A171231.P6522176450733921428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (Nat.land 1 (n + 1) : ℤ)

end

end A171231.P6522176450733921428

namespace A171231

/-- `2*a(n-1)-and(1, n+1)` -/
def P6522176450733921428.Spec : Prop :=
  ∀ n, P6522176450733921428.a n = A171231 n

end A171231

/-! ## A171231.P17817175432947738987

`∑[2*a(n-1)-(-1)^n]` with `a(0)=2, a(1)=2`
-/

namespace A171231.P17817175432947738987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171231.P17817175432947738987

namespace A171231

/-- `∑[2*a(n-1)-(-1)^n]` -/
def P17817175432947738987.Spec : Prop :=
  ∀ n, P17817175432947738987.a n = A171231 n

end A171231

/-! ## A171231.P5842321601692594619

`2*a(n-1)-and(1, n-1)²` with `a(0)=2`
-/

namespace A171231.P5842321601692594619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - Int.land 1 ((n : ℤ) - 1) ^ 2

end

end A171231.P5842321601692594619

namespace A171231

/-- `2*a(n-1)-and(1, n-1)²` -/
def P5842321601692594619.Spec : Prop :=
  ∀ n, P5842321601692594619.a n = A171231 n

end A171231

/-! ## A171231.P5126911231202843430

`floor(2*a(n-1)-and(1, n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A171231.P5126911231202843430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - Int.land 1 ((n : ℤ) - 1)

end

end A171231.P5126911231202843430

namespace A171231

/-- `floor(2*a(n-1)-and(1, n-1))` -/
def P5126911231202843430.Spec : Prop :=
  ∀ n, P5126911231202843430.a n = A171231 n

end A171231

/-! ## A171231.P673795282592670091

`a(n-1)+2*a(n-2)-1` with `a(0)=2, a(1)=4`
-/

namespace A171231.P673795282592670091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 1

end

end A171231.P673795282592670091

namespace A171231

/-- `a(n-1)+2*a(n-2)-1` -/
def P673795282592670091.Spec : Prop :=
  ∀ n, P673795282592670091.a n = A171231 n

end A171231

/-! ## A171231.P7248579612976430443

`a(n-1)-(1-2*a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A171231.P7248579612976430443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (1 - 2 * a (n - 2))

end

end A171231.P7248579612976430443

namespace A171231

/-- `a(n-1)-(1-2*a(n-2))` -/
def P7248579612976430443.Spec : Prop :=
  ∀ n, P7248579612976430443.a n = A171231 n

end A171231

/-! ## A171231.P15661395689462056438

`a(n-1)-((n-1)%2-a(n-1))` with `a(0)=2`
-/

namespace A171231.P15661395689462056438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 1) 2 - a (n - 1))

end

end A171231.P15661395689462056438

namespace A171231

/-- `a(n-1)-((n-1)%2-a(n-1))` -/
def P15661395689462056438.Spec : Prop :=
  ∀ n, P15661395689462056438.a n = A171231 n

end A171231

/-! ## A171231.P9482345839942777113

`a(n-1)+a(n-1)-and(1, n+1)` with `a(0)=2`
-/

namespace A171231.P9482345839942777113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) - (Nat.land 1 (n + 1) : ℤ))

end

end A171231.P9482345839942777113

namespace A171231

/-- `a(n-1)+a(n-1)-and(1, n+1)` -/
def P9482345839942777113.Spec : Prop :=
  ∀ n, P9482345839942777113.a n = A171231 n

end A171231

/-! ## A171231.P5938749226819865281

`a(n-1)-(and(1, n-1)-a(n-1))` with `a(0)=2`
-/

namespace A171231.P5938749226819865281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Int.land 1 ((n : ℤ) - 1) - a (n - 1))

end

end A171231.P5938749226819865281

namespace A171231

/-- `a(n-1)-(and(1, n-1)-a(n-1))` -/
def P5938749226819865281.Spec : Prop :=
  ∀ n, P5938749226819865281.a n = A171231 n

end A171231

/-! ## A171231.P4617742996169104522

`∑[a(n-1)-((-1)^n-a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A171231.P4617742996169104522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - ((-1) ^ n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171231.P4617742996169104522

namespace A171231

/-- `∑[a(n-1)-((-1)^n-a(n-1))]` -/
def P4617742996169104522.Spec : Prop :=
  ∀ n, P4617742996169104522.a n = A171231 n

end A171231

/-! ## A171231.P15103472290659140347

`a(n-1)+a(n-2)+a(n-2)-1` with `a(0)=2, a(1)=4`
-/

namespace A171231.P15103472290659140347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - 1))

end

end A171231.P15103472290659140347

namespace A171231

/-- `a(n-1)+a(n-2)+a(n-2)-1` -/
def P15103472290659140347.Spec : Prop :=
  ∀ n, P15103472290659140347.a n = A171231 n

end A171231

/-! ## A171231.P2915120163330674707

`a(n-1)-(1-a(n-2)-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A171231.P2915120163330674707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 2))

end

end A171231.P2915120163330674707

namespace A171231

/-- `a(n-1)-(1-a(n-2)-a(n-2))` -/
def P2915120163330674707.Spec : Prop :=
  ∀ n, P2915120163330674707.a n = A171231 n

end A171231

/-!
# A171232: Array read by antidiagonals, T(n,k) = 2*(n/k) - 1, if n mod k = 0; otherwise, T(n,k) = 1.

The programs for A171232, the canonical program `A171232.P120387607848267038` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171232 has offset 1).

The definition of A171232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171232.P2071652521456678599

`lcm(2, A171233(n+1))-1`
-/

namespace A171232.P2071652521456678599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A171233 (n + 1)) : ℤ) - 1

end

end A171232.P2071652521456678599

namespace A171232

/-- `lcm(2, A171233(n+1))-1` -/
def P2071652521456678599.Spec : Prop :=
  ∀ n, P2071652521456678599.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P2247384915729151110

`A124741(A171233(n+1))`
-/

namespace A171232.P2247384915729151110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A171233 (n + 1)).toNat

end

end A171232.P2247384915729151110

namespace A171232

/-- `A124741(A171233(n+1))` -/
def P2247384915729151110.Spec : Prop :=
  ∀ n, P2247384915729151110.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P10583126421537851296

`A028310(A171233(n+1)-1)`
-/

namespace A171232.P10583126421537851296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A171233 (n + 1) - 1).toNat

end

end A171232.P10583126421537851296

namespace A171232

/-- `A028310(A171233(n+1)-1)` -/
def P10583126421537851296.Spec : Prop :=
  ∀ n, P10583126421537851296.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P17717720562544666517

`A029579(A171233(n+1)-1)`
-/

namespace A171232.P17717720562544666517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A171233 (n + 1) - 1).toNat

end

end A171232.P17717720562544666517

namespace A171232

/-- `A029579(A171233(n+1)-1)` -/
def P17717720562544666517.Spec : Prop :=
  ∀ n, P17717720562544666517.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P3432585959514586213

`A093178(A171233(n+1)-1)`
-/

namespace A171232.P3432585959514586213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A171233 (n + 1) - 1).toNat

end

end A171232.P3432585959514586213

namespace A171232

/-- `A093178(A171233(n+1)-1)` -/
def P3432585959514586213.Spec : Prop :=
  ∀ n, P3432585959514586213.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P2575824825173946891

`A006083(3*A171233(n+1))`
-/

namespace A171232.P2575824825173946891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (3 * A171233 (n + 1)).toNat

end

end A171232.P2575824825173946891

namespace A171232

/-- `A006083(3*A171233(n+1))` -/
def P2575824825173946891.Spec : Prop :=
  ∀ n, P2575824825173946891.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P12304816833928595890

`A004525(2*A171233(n+1)-1)`
-/

namespace A171232.P12304816833928595890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A171233 (n + 1) - 1).toNat

end

end A171232.P12304816833928595890

namespace A171232

/-- `A004525(2*A171233(n+1)-1)` -/
def P12304816833928595890.Spec : Prop :=
  ∀ n, P12304816833928595890.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P1469312047493915141

`A171233(n+1)-A077049(n+1)`
-/

namespace A171232.P1469312047493915141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1) - A077049 (n + 1)

end

end A171232.P1469312047493915141

namespace A171232

/-- `A171233(n+1)-A077049(n+1)` -/
def P1469312047493915141.Spec : Prop :=
  ∀ n, P1469312047493915141.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P1463451164145601233

`A099375(A286237(A014132(n+1)))`
-/

namespace A171232.P1463451164145601233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A286237 (A014132 (n + 1)).toNat).toNat

end

end A171232.P1463451164145601233

namespace A171232

/-- `A099375(A286237(A014132(n+1)))` -/
def P1463451164145601233.Spec : Prop :=
  ∀ n, P1463451164145601233.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P15100375920652066766

`A171233(n+1)-A000035(A171233(n+1)+1)`
-/

namespace A171232.P15100375920652066766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1) - A000035 (A171233 (n + 1) + 1).toNat

end

end A171232.P15100375920652066766

namespace A171232

/-- `A171233(n+1)-A000035(A171233(n+1)+1)` -/
def P15100375920652066766.Spec : Prop :=
  ∀ n, P15100375920652066766.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P18012951471835077228

`A004525(A171233(n+1)+A171233(n+1)-1)`
-/

namespace A171232.P18012951471835077228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A171233 (n + 1) + (A171233 (n + 1) - 1)).toNat

end

end A171232.P18012951471835077228

namespace A171232

/-- `A004525(A171233(n+1)+A171233(n+1)-1)` -/
def P18012951471835077228.Spec : Prop :=
  ∀ n, P18012951471835077228.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P14094583016853391414

`A171233(n+1)-A059841(A171233(n+1)+2)`
-/

namespace A171232.P14094583016853391414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1) - A059841 (A171233 (n + 1) + 2).toNat

end

end A171232.P14094583016853391414

namespace A171232

/-- `A171233(n+1)-A059841(A171233(n+1)+2)` -/
def P14094583016853391414.Spec : Prop :=
  ∀ n, P14094583016853391414.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P120387607848267038

`A004277(A003988(n+1)*A077049(n+1))-A077049(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171232

/-- `A004277(A003988(n+1)*A077049(n+1))-A077049(n+1)` -/
def P120387607848267038.Spec : Prop :=
  ∀ n, P120387607848267038.a n = A171232 (n + 1)

theorem P120387607848267038.correct : P120387607848267038.Spec := by
  intro n
  simp only [A171232, Nat.add_sub_cancel]

end A171232

/-! ## A171232.P14094607763767192294

`A004277(A010766(n+1)*A077049(n+1))-A077049(n+1)`
-/

namespace A171232.P14094607763767192294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A010766 (n + 1) * A077049 (n + 1)).toNat - A077049 (n + 1)

end

end A171232.P14094607763767192294

namespace A171232

/-- `A004277(A010766(n+1)*A077049(n+1))-A077049(n+1)` -/
def P14094607763767192294.Spec : Prop :=
  ∀ n, P14094607763767192294.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P11839059792689483584

`A004277(A072030(n+1)*A077049(n+1))-A077049(n+1)`
-/

namespace A171232.P11839059792689483584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A072030 (n + 1) * A077049 (n + 1)).toNat - A077049 (n + 1)

end

end A171232.P11839059792689483584

namespace A171232

/-- `A004277(A072030(n+1)*A077049(n+1))-A077049(n+1)` -/
def P11839059792689483584.Spec : Prop :=
  ∀ n, P11839059792689483584.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P16813845246660695028

`A004277(A077049(n+1)*A089913(n+1))-A077049(n+1)`
-/

namespace A171232.P16813845246660695028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077049 (n + 1) * A089913 (n + 1)).toNat - A077049 (n + 1)

end

end A171232.P16813845246660695028

namespace A171232

/-- `A004277(A077049(n+1)*A089913(n+1))-A077049(n+1)` -/
def P16813845246660695028.Spec : Prop :=
  ∀ n, P16813845246660695028.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P5801352039798810408

`A171233(n+1)-A057979(A171233(n+1)²)`
-/

namespace A171232.P5801352039798810408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1) - A057979 (A171233 (n + 1) ^ 2).toNat

end

end A171232.P5801352039798810408

namespace A171232

/-- `A171233(n+1)-A057979(A171233(n+1)²)` -/
def P5801352039798810408.Spec : Prop :=
  ∀ n, P5801352039798810408.a n = A171232 (n + 1)

end A171232

/-! ## A171232.P4665556226662947293

`A171233(n+1)-A059841(A171233(n+1)²)`
-/

namespace A171232.P4665556226662947293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171233 (n + 1) - A059841 (A171233 (n + 1) ^ 2).toNat

end

end A171232.P4665556226662947293

namespace A171232

/-- `A171233(n+1)-A059841(A171233(n+1)²)` -/
def P4665556226662947293.Spec : Prop :=
  ∀ n, P4665556226662947293.a n = A171232 (n + 1)

end A171232

/-!
# A171233: Array, T(n,k) = 2*(n/k), if n mod k = 0; otherwise, T(n,k) = 1. Read by antidiagonals.

The programs for A171233, the canonical program `A171233.P2556039700440970836` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171233 has offset 1).

The definition of A171233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171233.P14884819300454313619

`xor(1, A198954(A286157(n+1)))`
-/

namespace A171233.P14884819300454313619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A198954 (A286157 (n + 1)).toNat)

end

end A171233.P14884819300454313619

namespace A171233

/-- `xor(1, A198954(A286157(n+1)))` -/
def P14884819300454313619.Spec : Prop :=
  ∀ n, P14884819300454313619.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P2556039700440970836

`A171232(n+1)+A077049(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171233

/-- `A171232(n+1)+A077049(n+1)` -/
def P2556039700440970836.Spec : Prop :=
  ∀ n, P2556039700440970836.a n = A171233 (n + 1)

theorem P2556039700440970836.correct : P2556039700440970836.Spec := by
  intro n
  simp only [A171233, Nat.add_sub_cancel]

end A171233

/-! ## A171233.P7631466856601485236

`A004277(A003988(n+1)*A077049(n+1))`
-/

namespace A171233.P7631466856601485236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003988 (n + 1) * A077049 (n + 1)).toNat

end

end A171233.P7631466856601485236

namespace A171233

/-- `A004277(A003988(n+1)*A077049(n+1))` -/
def P7631466856601485236.Spec : Prop :=
  ∀ n, P7631466856601485236.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P7864784237592796672

`A004277(A010766(n+1)*A077049(n+1))`
-/

namespace A171233.P7864784237592796672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A010766 (n + 1) * A077049 (n + 1)).toNat

end

end A171233.P7864784237592796672

namespace A171233

/-- `A004277(A010766(n+1)*A077049(n+1))` -/
def P7864784237592796672.Spec : Prop :=
  ∀ n, P7864784237592796672.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P14444272583315250110

`A004277(A072030(n+1)*A077049(n+1))`
-/

namespace A171233.P14444272583315250110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A072030 (n + 1) * A077049 (n + 1)).toNat

end

end A171233.P14444272583315250110

namespace A171233

/-- `A004277(A072030(n+1)*A077049(n+1))` -/
def P14444272583315250110.Spec : Prop :=
  ∀ n, P14444272583315250110.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P12550721216505137503

`xor(1, A004273(A126988(A014132(n+1))))`
-/

namespace A171233.P12550721216505137503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004273 (A126988 (A014132 (n + 1)).toNat).toNat)

end

end A171233.P12550721216505137503

namespace A171233

/-- `xor(1, A004273(A126988(A014132(n+1))))` -/
def P12550721216505137503.Spec : Prop :=
  ∀ n, P12550721216505137503.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P6283913821646067060

`A171232(n+1)+A051731(A080036(n))`
-/

namespace A171233.P6283913821646067060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171232 (n + 1) + A051731 (A080036 n).toNat

end

end A171233.P6283913821646067060

namespace A171233

/-- `A171232(n+1)+A051731(A080036(n))` -/
def P6283913821646067060.Spec : Prop :=
  ∀ n, P6283913821646067060.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P15690835964451025671

`A093375(A286157(n+1)+A010766(n+1))`
-/

namespace A171233.P15690835964451025671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (A286157 (n + 1) + A010766 (n + 1)).toNat

end

end A171233.P15690835964451025671

namespace A171233

/-- `A093375(A286157(n+1)+A010766(n+1))` -/
def P15690835964451025671.Spec : Prop :=
  ∀ n, P15690835964451025671.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P7147884527887553890

`A004277(A077049(n+1)*A089913(n+1))`
-/

namespace A171233.P7147884527887553890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077049 (n + 1) * A089913 (n + 1)).toNat

end

end A171233.P7147884527887553890

namespace A171233

/-- `A004277(A077049(n+1)*A089913(n+1))` -/
def P7147884527887553890.Spec : Prop :=
  ∀ n, P7147884527887553890.a n = A171233 (n + 1)

end A171233

/-! ## A171233.P10843021855595622346

`A002260(A010766(n+1)+2*A003988(n+1)²)`
-/

namespace A171233.P10843021855595622346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A010766 (n + 1) + 2 * A003988 (n + 1) ^ 2).toNat

end

end A171233.P10843021855595622346

namespace A171233

/-- `A002260(A010766(n+1)+2*A003988(n+1)²)` -/
def P10843021855595622346.Spec : Prop :=
  ∀ n, P10843021855595622346.a n = A171233 (n + 1)

end A171233

/-!
# A171234: Squares in lunar arithmetic in base 3 written in base 10.

The programs for A171234, there is no canonical definition to state claims against.
-/

/-! ## A171234.P14223613947280612920

`A028898(A171396(n))`
-/

namespace A171234.P14223613947280612920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A171396 n).toNat

end

end A171234.P14223613947280612920

/-!
# A171235: Solutions to the equation M(n) = -4 (M = Mertens's function A002321).

The programs for A171235, the canonical program `A171235.P3919789132326738972` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171235 has offset 1).

The definition of A171235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1064 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171235.P3919789132326738972

`eq[0, A008683(n)+a(n-1)]` with `a(0)=4`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A171235

/-- `eq[0, A008683(n)+a(n-1)]` -/
def P3919789132326738972.Spec : Prop :=
  ∀ n, (P3919789132326738972.a n : ℤ) = A171235 (n + 1)

theorem P3919789132326738972.correct : P3919789132326738972.Spec := by
  intro n
  simp only [A171235, Nat.add_sub_cancel]

end A171235

/-! ## A171235.P6447571759783929195

`eq[9, a(n-1)-A008683(2*n-n)]` with `a(0)=5`
-/

namespace A171235.P6447571759783929195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) - A008683 (2 * n - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171235.P6447571759783929195

namespace A171235

/-- `eq[9, a(n-1)-A008683(2*n-n)]` -/
def P6447571759783929195.Spec : Prop :=
  ∀ n, (P6447571759783929195.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P17962516941338720052

`eq[1, A002321(n+1)+5]+1`
-/

namespace A171235.P17962516941338720052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171235.P17962516941338720052

namespace A171235

/-- `eq[1, A002321(n+1)+5]+1` -/
def P17962516941338720052.Spec : Prop :=
  ∀ n, (P17962516941338720052.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P2959013807232231154

`eq[32, A162943(A028310(n))]`
-/

namespace A171235.P2959013807232231154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171235.P2959013807232231154

namespace A171235

/-- `eq[32, A162943(A028310(n))]` -/
def P2959013807232231154.Spec : Prop :=
  ∀ n, (P2959013807232231154.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P7143886059860078589

`eq[a(n-1)-A157657(n+1), A007423(n+1)]` with `a(0)=6`
-/

namespace A171235.P7143886059860078589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171235.P7143886059860078589

namespace A171235

/-- `eq[a(n-1)-A157657(n+1), A007423(n+1)]` -/
def P7143886059860078589.Spec : Prop :=
  ∀ n, (P7143886059860078589.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P2116825233819031647

`eq[a(n-1)-A157657(n+1), A231821(n+1)]` with `a(0)=8`
-/

namespace A171235.P2116825233819031647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171235.P2116825233819031647

namespace A171235

/-- `eq[a(n-1)-A157657(n+1), A231821(n+1)]` -/
def P2116825233819031647.Spec : Prop :=
  ∀ n, (P2116825233819031647.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P8330071776647920277

`eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` with `a(0)=5`
-/

namespace A171235.P8330071776647920277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171235.P8330071776647920277

namespace A171235

/-- `eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` -/
def P8330071776647920277.Spec : Prop :=
  ∀ n, (P8330071776647920277.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P16998053231799623081

`eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` with `a(0)=5`
-/

namespace A171235.P16998053231799623081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171235.P16998053231799623081

namespace A171235

/-- `eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` -/
def P16998053231799623081.Spec : Prop :=
  ∀ n, (P16998053231799623081.a n : ℤ) = A171235 (n + 1)

end A171235

/-! ## A171235.P11007528657507076159

`eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` with `a(0)=5`
-/

namespace A171235.P11007528657507076159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A171235.P11007528657507076159

namespace A171235

/-- `eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` -/
def P11007528657507076159.Spec : Prop :=
  ∀ n, (P11007528657507076159.a n : ℤ) = A171235 (n + 1)

end A171235

/-!
# A171236: Solutions to the equation M(n) = -5 (M = Mertens's function A002321).

The programs for A171236, the canonical program `A171236.P17951238614423559107` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171236 has offset 1).

The definition of A171236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171236.P17951238614423559107

`eq[0, A008683(n)+a(n-1)]` with `a(0)=5`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A171236

/-- `eq[0, A008683(n)+a(n-1)]` -/
def P17951238614423559107.Spec : Prop :=
  ∀ n, (P17951238614423559107.a n : ℤ) = A171236 (n + 1)

theorem P17951238614423559107.correct : P17951238614423559107.Spec := by
  intro n
  simp only [A171236, Nat.add_sub_cancel]

end A171236

/-! ## A171236.P11041288056140912121

`eq[64, A162943(A028310(n))]`
-/

namespace A171236.P11041288056140912121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171236.P11041288056140912121

namespace A171236

/-- `eq[64, A162943(A028310(n))]` -/
def P11041288056140912121.Spec : Prop :=
  ∀ n, (P11041288056140912121.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P430221530150381975

`eq[A002321(n+1)+6, A007423(n+1)]`
-/

namespace A171236.P430221530150381975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171236.P430221530150381975

namespace A171236

/-- `eq[A002321(n+1)+6, A007423(n+1)]` -/
def P430221530150381975.Spec : Prop :=
  ∀ n, (P430221530150381975.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P3122468705321594779

`eq[a(n-1)-A157657(n+1), A080847(n+1)]` with `a(0)=8`
-/

namespace A171236.P3122468705321594779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171236.P3122468705321594779

namespace A171236

/-- `eq[a(n-1)-A157657(n+1), A080847(n+1)]` -/
def P3122468705321594779.Spec : Prop :=
  ∀ n, (P3122468705321594779.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P1340071284258940823

`eq[a(n-1)-A157657(n+1), A231821(n+1)]` with `a(0)=9`
-/

namespace A171236.P1340071284258940823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171236.P1340071284258940823

namespace A171236

/-- `eq[a(n-1)-A157657(n+1), A231821(n+1)]` -/
def P1340071284258940823.Spec : Prop :=
  ∀ n, (P1340071284258940823.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P12776736006077911340

`eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` with `a(0)=6`
-/

namespace A171236.P12776736006077911340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171236.P12776736006077911340

namespace A171236

/-- `eq[a(n-1)-A157657(n+1), A162512(n+1)%2]` -/
def P12776736006077911340.Spec : Prop :=
  ∀ n, (P12776736006077911340.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P2532101666555774345

`eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` with `a(0)=6`
-/

namespace A171236.P2532101666555774345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171236.P2532101666555774345

namespace A171236

/-- `eq[a(n-1)-A157657(n+1), A346254(n+1)%2]` -/
def P2532101666555774345.Spec : Prop :=
  ∀ n, (P2532101666555774345.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P18328930827020609054

`eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` with `a(0)=6`
-/

namespace A171236.P18328930827020609054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A171236.P18328930827020609054

namespace A171236

/-- `eq[a(n-1)-A157657(n+1), A055615(n+1)/(n+1)]` -/
def P18328930827020609054.Spec : Prop :=
  ∀ n, (P18328930827020609054.a n : ℤ) = A171236 (n + 1)

end A171236

/-! ## A171236.P18044176601206568792

`eq[a(n-1)-A157657(n+1), A181434(n+1)]` with `a(0)=6`
-/

namespace A171236.P18044176601206568792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - A157657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171236.P18044176601206568792

namespace A171236

/-- `eq[a(n-1)-A157657(n+1), A181434(n+1)]` -/
def P18044176601206568792.Spec : Prop :=
  ∀ n, (P18044176601206568792.a n : ℤ) = A171236 (n + 1)

end A171236

/-!
# A171237: a(0)=2, a(1)=3, a(n) = 3 + a(n-1) + a(n-2) for n >= 2.

The programs for A171237, the canonical program `A171237.P626281817406296960` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171237 has offset 0).

The definition of A171237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+a(n-1)+a(n-2)` (program `A171237.P626281817406296960`, by `A171237.P626281817406296960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171237.P626281817406296960

`3+a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171237

/-- `3+a(n-1)+a(n-2)` -/
def P626281817406296960.Spec : Prop :=
  ∀ n, (P626281817406296960.a n : ℤ) = A171237 n

theorem P626281817406296960.correct : P626281817406296960.Spec := by
  intro n
  simp only [A171237]

end A171237

/-! ## A171237.P706764509477884298

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=8`
-/

namespace A171237.P706764509477884298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A171237.P706764509477884298

namespace A171237

/-- `2*a(n-1)-a(n-3)` -/
def P706764509477884298.Spec : Prop :=
  ∀ n, P706764509477884298.a n = A171237 n

end A171237

/-! ## A171237.P4535431142745017221

`A022095(n+1)-3`
-/

namespace A171237.P4535431142745017221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 1) - 3

end

end A171237.P4535431142745017221

namespace A171237

/-- `A022095(n+1)-3` -/
def P4535431142745017221.Spec : Prop :=
  ∀ n, P4535431142745017221.a n = A171237 n

end A171237

/-! ## A171237.P10683446162110265488

`4-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A171237.P10683446162110265488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 - (1 - a (n - 1) - a (n - 2))

end

end A171237.P10683446162110265488

namespace A171237

/-- `4-floor(1-a(n-1)-a(n-2))` -/
def P10683446162110265488.Spec : Prop :=
  ∀ n, P10683446162110265488.a n = A171237 n

end A171237

/-! ## A171237.P12946211745926943506

`4-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A171237.P12946211745926943506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A171237.P12946211745926943506

namespace A171237

/-- `4-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P12946211745926943506.Spec : Prop :=
  ∀ n, P12946211745926943506.a n = A171237 n

end A171237

/-! ## A171237.P8037696837095248116

`A182415(n)+1`
-/

namespace A171237.P8037696837095248116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + 1

end

end A171237.P8037696837095248116

namespace A171237

/-- `A182415(n)+1` -/
def P8037696837095248116.Spec : Prop :=
  ∀ n, P8037696837095248116.a n = A171237 n

end A171237

/-! ## A171237.P13355199247882177184

`A022309(n+1)-2`
-/

namespace A171237.P13355199247882177184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 1) - 2

end

end A171237.P13355199247882177184

namespace A171237

/-- `A022309(n+1)-2` -/
def P13355199247882177184.Spec : Prop :=
  ∀ n, P13355199247882177184.a n = A171237 n

end A171237

/-! ## A171237.P17740278165389838109

`A210677(n)+1+n`
-/

namespace A171237.P17740278165389838109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + 1 + (n : ℤ)

end

end A171237.P17740278165389838109

namespace A171237

/-- `A210677(n)+1+n` -/
def P17740278165389838109.Spec : Prop :=
  ∀ n, P17740278165389838109.a n = A171237 n

end A171237

/-! ## A171237.P9938732188598145432

`A210730(n)+2+n`
-/

namespace A171237.P9938732188598145432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + 2 + (n : ℤ)

end

end A171237.P9938732188598145432

namespace A171237

/-- `A210730(n)+2+n` -/
def P9938732188598145432.Spec : Prop :=
  ∀ n, P9938732188598145432.a n = A171237 n

end A171237

/-! ## A171237.P5160239137693056548

`A192964(n)+Δ[n²]`
-/

namespace A171237.P5160239137693056548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A171237.P5160239137693056548

namespace A171237

/-- `A192964(n)+Δ[n²]` -/
def P5160239137693056548.Spec : Prop :=
  ∀ n, P5160239137693056548.a n = A171237 n

end A171237

/-! ## A171237.P9065007072053323659

`A014739(n)+A001595(n)`
-/

namespace A171237.P9065007072053323659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + A001595 n

end

end A171237.P9065007072053323659

namespace A171237

/-- `A014739(n)+A001595(n)` -/
def P9065007072053323659.Spec : Prop :=
  ∀ n, P9065007072053323659.a n = A171237 n

end A171237

/-! ## A171237.P15312518155349517099

`A081659(n)+A030119(n)`
-/

namespace A171237.P15312518155349517099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + A030119 n

end

end A171237.P15312518155349517099

namespace A171237

/-- `A081659(n)+A030119(n)` -/
def P15312518155349517099.Spec : Prop :=
  ∀ n, P15312518155349517099.a n = A171237 n

end A171237

/-! ## A171237.P4993411307099256435

`A212804(n)+A154691(n)`
-/

namespace A171237.P4993411307099256435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A154691 n

end

end A171237.P4993411307099256435

namespace A171237

/-- `A212804(n)+A154691(n)` -/
def P4993411307099256435.Spec : Prop :=
  ∀ n, P4993411307099256435.a n = A171237 n

end A171237

/-! ## A171237.P4126698400181801869

`A377628(n)+A001911(n)`
-/

namespace A171237.P4126698400181801869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A001911 n

end

end A171237.P4126698400181801869

namespace A171237

/-- `A377628(n)+A001911(n)` -/
def P4126698400181801869.Spec : Prop :=
  ∀ n, P4126698400181801869.a n = A171237 n

end A171237

/-! ## A171237.P18332920202345018242

`A001911(n)+A111314(n)+1`
-/

namespace A171237.P18332920202345018242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (A111314 n + 1)

end

end A171237.P18332920202345018242

namespace A171237

/-- `A001911(n)+A111314(n)+1` -/
def P18332920202345018242.Spec : Prop :=
  ∀ n, P18332920202345018242.a n = A171237 n

end A171237

/-! ## A171237.P7306447367380990468

`A171516(n)+A000045(n+1)`
-/

namespace A171237.P7306447367380990468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + A000045 (n + 1)

end

end A171237.P7306447367380990468

namespace A171237

/-- `A171516(n)+A000045(n+1)` -/
def P7306447367380990468.Spec : Prop :=
  ∀ n, P7306447367380990468.a n = A171237 n

end A171237

/-! ## A171237.P8646771054137966

`A152163(n)+A027961(n+1)`
-/

namespace A171237.P8646771054137966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A027961 (n + 1)

end

end A171237.P8646771054137966

namespace A171237

/-- `A152163(n)+A027961(n+1)` -/
def P8646771054137966.Spec : Prop :=
  ∀ n, P8646771054137966.a n = A171237 n

end A171237

/-! ## A171237.P4732804738280369636

`A192981(n)+A129728(n+1)`
-/

namespace A171237.P4732804738280369636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 n + A129728 (n + 1)

end

end A171237.P4732804738280369636

namespace A171237

/-- `A192981(n)+A129728(n+1)` -/
def P4732804738280369636.Spec : Prop :=
  ∀ n, P4732804738280369636.a n = A171237 n

end A171237

/-! ## A171237.P16684905283268737214

`A168193(n)+A212804(n)+1`
-/

namespace A171237.P16684905283268737214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + (A212804 n + 1)

end

end A171237.P16684905283268737214

namespace A171237

/-- `A168193(n)+A212804(n)+1` -/
def P16684905283268737214.Spec : Prop :=
  ∀ n, P16684905283268737214.a n = A171237 n

end A171237

/-!
# A171238: Given M = triangle A122196 as an infinite lower triangular matrix, this sequence is lim_{k->infinity} M^k.

The programs for A171238, there is no canonical definition to state claims against.
-/

/-! ## A171238.P7667865852197180953

`∑[A173283(floor(n/2))]`
-/

namespace A171238.P7667865852197180953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173283 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171238.P7667865852197180953

/-! ## A171238.P15014999561200938132

`∑[A251631(A052551(n+2))]`
-/

namespace A171238.P15014999561200938132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A052551 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171238.P15014999561200938132

/-!
# A171239: Triangle read by rows extracted from convolution product (1,2,3,...) * A002865: (1,1,2,2,4,4,7,8,...)

The programs for A171239, there is no canonical definition to state claims against.
-/

/-! ## A171239.P17691792500467198743

`A002260(n+1)*A344417(A130321(n))`
-/

namespace A171239.P17691792500467198743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A344417 (A130321 n).toNat

end

end A171239.P17691792500467198743

/-! ## A171239.P10776243809366670819

`A000120(A099627(n))*A344417(A130321(n))`
-/

namespace A171239.P10776243809366670819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099627 n).toNat * A344417 (A130321 n).toNat

end

end A171239.P10776243809366670819

/-! ## A171239.P10567410989800090506

`A002260(n+1)*A351202(A131031(n))`
-/

namespace A171239.P10567410989800090506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A351202 (A131031 n).toNat

end

end A171239.P10567410989800090506

/-! ## A171239.P16914742443043808730

`A001222(A340316(n+1)^A101566(n))`
-/

namespace A171239.P16914742443043808730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A340316 (n + 1) : ℚ) ^ (A101566 n : ℤ))).toNat

end

end A171239.P16914742443043808730

/-! ## A171239.P14774651598589646392

`A000120(xor(A068125(n+2), A256222(n)))`
-/

namespace A171239.P14774651598589646392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A068125 (n + 2)) (A256222 n)).toNat

end

end A171239.P14774651598589646392

/-!
# A171240: a(n) = n^d+d^n where d = A013632(n) is the distance to the next prime.

The programs for A171240, the canonical program `A171240.P10536427391965387438` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171240 has offset 1).

The definition of A171240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171240.P10536427391965387438

`(n+1)^A013632(n+1)+A013632(n+1)^(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171240

/-- `(n+1)^A013632(n+1)+A013632(n+1)^(n+1)` -/
def P10536427391965387438.Spec : Prop :=
  ∀ n, P10536427391965387438.a n = (A171240 (n + 1) : ℚ)

end A171240

/-!
# A171241: Numbers k such that A169611(k) = 3.

The programs for A171241, the canonical program `A171241.P9264165893758049052` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171241 has offset 1).

The definition of A171241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171241.P9264165893758049052

`eq[3, A169611(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171241

/-- `eq[3, A169611(n+1)]+1` -/
def P9264165893758049052.Spec : Prop :=
  ∀ n, (P9264165893758049052.a n : ℤ) = A171241 (n + 1)

theorem P9264165893758049052.correct : P9264165893758049052.Spec := by
  intro n
  simp only [A171241, Nat.add_sub_cancel]

end A171241

/-! ## A171241.P14607716442364619025

`eq[3, A169611(A028310(n))]`
-/

namespace A171241.P14607716442364619025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P14607716442364619025

namespace A171241

/-- `eq[3, A169611(A028310(n))]` -/
def P14607716442364619025.Spec : Prop :=
  ∀ n, (P14607716442364619025.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P221135053943961984

`eq[3, A001222(A065331(n+1))]+1`
-/

namespace A171241.P221135053943961984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065331 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171241.P221135053943961984

namespace A171241

/-- `eq[3, A001222(A065331(n+1))]+1` -/
def P221135053943961984.Spec : Prop :=
  ∀ n, (P221135053943961984.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P2461282776264376741

`A253046(eq[3, A007949(n+1)+A007814(n+1)]+1)`
-/

namespace A171241.P2461282776264376741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171241.P2461282776264376741

namespace A171241

/-- `A253046(eq[3, A007949(n+1)+A007814(n+1)]+1)` -/
def P2461282776264376741.Spec : Prop :=
  ∀ n, P2461282776264376741.a n = A171241 (n + 1)

end A171241

/-! ## A171241.P10248655235132401115

`eq[4, A169611(A004277(n))]`
-/

namespace A171241.P10248655235132401115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P10248655235132401115

namespace A171241

/-- `eq[4, A169611(A004277(n))]` -/
def P10248655235132401115.Spec : Prop :=
  ∀ n, (P10248655235132401115.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P16857106288016216185

`eq[3, A169611(A123108(2*n))]`
-/

namespace A171241.P16857106288016216185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P16857106288016216185

namespace A171241

/-- `eq[3, A169611(A123108(2*n))]` -/
def P16857106288016216185.Spec : Prop :=
  ∀ n, (P16857106288016216185.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P15466796097639080106

`eq[4, A169611(A008486(n))]`
-/

namespace A171241.P15466796097639080106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P15466796097639080106

namespace A171241

/-- `eq[4, A169611(A008486(n))]` -/
def P15466796097639080106.Spec : Prop :=
  ∀ n, (P15466796097639080106.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P13251824197211592471

`eq[5, A169611(A008574(n))]`
-/

namespace A171241.P13251824197211592471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P13251824197211592471

namespace A171241

/-- `eq[5, A169611(A008574(n))]` -/
def P13251824197211592471.Spec : Prop :=
  ∀ n, (P13251824197211592471.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P8982295057711157053

`eq[5, A169611(A008458(n))]`
-/

namespace A171241.P8982295057711157053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P8982295057711157053

namespace A171241

/-- `eq[5, A169611(A008458(n))]` -/
def P8982295057711157053.Spec : Prop :=
  ∀ n, (P8982295057711157053.a n : ℤ) = A171241 (n + 1)

end A171241

/-! ## A171241.P5723764066228734005

`eq[3, A169611(A233583(n+1))]`
-/

namespace A171241.P5723764066228734005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171241.P5723764066228734005

namespace A171241

/-- `eq[3, A169611(A233583(n+1))]` -/
def P5723764066228734005.Spec : Prop :=
  ∀ n, (P5723764066228734005.a n : ℤ) = A171241 (n + 1)

end A171241

/-!
# A171242: a(n) = k is the smallest exponent k such that at least 3 equal decimal digits "n n n" appear in the decimal representation of 2^k (n=0,1,...,9).

The programs for A171242, there is no canonical definition to state claims against.
-/

/-! ## A171242.P2802961508355567832

`A259092(∑{digits}[n, #])`
-/

namespace A171242.P2802961508355567832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259092 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A171242.P2802961508355567832

/-! ## A171242.P11670446213369076429

`A259092(∏{digits}[n, #])`
-/

namespace A171242.P11670446213369076429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259092 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A171242.P11670446213369076429

/-! ## A171242.P1763012528780479975

`A259092(n)%252`
-/

namespace A171242.P1763012528780479975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259092 n) 252

end

end A171242.P1763012528780479975

/-! ## A171242.P12858237608469348734

`A259092(n-char[11])`
-/

namespace A171242.P12858237608469348734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259092 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A171242.P12858237608469348734

/-! ## A171242.P15429994199624336089

`A004181(A259092(n))`
-/

namespace A171242.P15429994199624336089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A259092 n).toNat

end

end A171242.P15429994199624336089

/-!
# A171244: a(n)=Mod(2^Fibonacci(n),Fibonacci(n)).

The programs for A171244, there is no canonical definition to state claims against.
-/

/-! ## A171244.P15271815722735527749

`A015910(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A171244.P15271815722735527749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (f1 (n + 1) - f1 n).toNat

end

end A171244.P15271815722735527749

/-! ## A171244.P5352647875803714346

`A015910(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A171244.P5352647875803714346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (f1 (n + 1) - f1 n).toNat

end

end A171244.P5352647875803714346

/-! ## A171244.P8320603094362483107

`A015910(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A171244.P8320603094362483107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A171244.P8320603094362483107

/-! ## A171244.P8482926600471022613

`A015910(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A171244.P8482926600471022613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171244.P8482926600471022613

/-! ## A171244.P7124679881266502927

`A015910(A036355(∑[n]))`
-/

namespace A171244.P7124679881266502927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A036355 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A171244.P7124679881266502927

/-!
# A171246: Triangle read by rows: T(n,k) = 1 + floor(n!/2^((k - n/2)^2 + 1)).

The programs for A171246, there is no canonical definition to state claims against.
-/

/-! ## A171246.P16096849061504137836

`A134561(2^(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A171246.P16096849061504137836
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134561 (SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A171246.P16096849061504137836

/-! ## A171246.P18307282880033963214

`A196169(A034801(n))`
-/

namespace A171246.P18307282880033963214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A034801 n).toNat

end

end A171246.P18307282880033963214

/-! ## A171246.P3405415050908201596

`A134561(A117401(n))`
-/

namespace A171246.P3405415050908201596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134561 (A117401 n).toNat

end

end A171246.P3405415050908201596

/-! ## A171246.P911608669178111999

`A078833(A173889(n))`
-/

namespace A171246.P911608669178111999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (A173889 n).toNat

end

end A171246.P911608669178111999

/-! ## A171246.P8885101942890734775

`A083023(A176429(n))`
-/

namespace A171246.P8885101942890734775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A176429 n).toNat

end

end A171246.P8885101942890734775

/-!
# A171248: a(n) = 10^n*(2+3*10^n)+3.

The programs for A171248, the canonical program `A171248.P846187975252557081` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171248 has offset 0).

The definition of A171248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(2+3*10^n)+3` (program `A171248.P846187975252557081`, by `A171248.P846187975252557081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171248.P846187975252557081

`10^n*(2+3*10^n)+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171248

/-- `10^n*(2+3*10^n)+3` -/
def P846187975252557081.Spec : Prop :=
  ∀ n, (P846187975252557081.a n : ℤ) = A171248 n

theorem P846187975252557081.correct : P846187975252557081.Spec := by
  intro n
  simp only [A171248]

end A171248

/-!
# A171250: Row lengths of A082381: number of iterations of "sum of digits squared" until 1 or 4 is reached.

The programs for A171250, there is no canonical definition to state claims against.
-/

/-! ## A171250.P2927360355689752084

`floor(sqrt(A003621(n+1)²+1))`
-/

namespace A171250.P2927360355689752084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A003621 (n + 1) ^ 2 + 1)

end

end A171250.P2927360355689752084

/-! ## A171250.P11548901268552459236

`A028310(A003621(n+1))`
-/

namespace A171250.P11548901268552459236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003621 (n + 1)).toNat

end

end A171250.P11548901268552459236

/-! ## A171250.P14355823249320661547

`A098925(A003621(n+1)²)`
-/

namespace A171250.P14355823249320661547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A003621 (n + 1) ^ 2).toNat

end

end A171250.P14355823249320661547

/-! ## A171250.P16074112314878151568

`A137734(A003621(n+1)²)`
-/

namespace A171250.P16074112314878151568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A003621 (n + 1) ^ 2).toNat

end

end A171250.P16074112314878151568

/-! ## A171250.P8323324132791195642

`A137735(A003621(n+1)²)`
-/

namespace A171250.P8323324132791195642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A003621 (n + 1) ^ 2).toNat

end

end A171250.P8323324132791195642

/-! ## A171250.P6157925454432650473

`A065033(2*A003621(n+1))`
-/

namespace A171250.P6157925454432650473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A003621 (n + 1)).toNat

end

end A171250.P6157925454432650473

/-! ## A171250.P13783612441342036090

`A123108(2*A003621(n+1))`
-/

namespace A171250.P13783612441342036090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A003621 (n + 1)).toNat

end

end A171250.P13783612441342036090

/-! ## A171250.P13738541049764011643

`A005361(2^A003621(n+1))`
-/

namespace A171250.P13738541049764011643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003621 (n + 1) : ℤ))).toNat

end

end A171250.P13738541049764011643

/-! ## A171250.P10592635512388572327

`A078899(2^A003621(n+1))`
-/

namespace A171250.P10592635512388572327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003621 (n + 1) : ℤ))).toNat

end

end A171250.P10592635512388572327

/-! ## A171250.P819037316407756070

`∏{d}[A003621(n+1), A014963(#)]`
-/

namespace A171250.P819037316407756070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A171250.P819037316407756070

/-! ## A171250.P440275593289436928

`A000196(A003621(n+1)²+1)`
-/

namespace A171250.P440275593289436928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003621 (n + 1) ^ 2 + 1).toNat

end

end A171250.P440275593289436928

/-! ## A171250.P10562032795863210418

`A084600(A003621(n+1)²+1)`
-/

namespace A171250.P10562032795863210418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (A003621 (n + 1) ^ 2 + 1).toNat

end

end A171250.P10562032795863210418

/-! ## A171250.P6000429130287694515

`A154281(n+1)+A003621(n+1)`
-/

namespace A171250.P6000429130287694515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1) + A003621 (n + 1)

end

end A171250.P6000429130287694515

/-! ## A171250.P17878985259380900379

`ceil(A000267(A003621(n+1)²)/2)`
-/

namespace A171250.P17878985259380900379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000267 (A003621 (n + 1) ^ 2).toNat : ℚ) / 2⌉

end

end A171250.P17878985259380900379

/-! ## A171250.P4176355677394271148

`or(A000007(floor(n/4)), A003621(n+1))`
-/

namespace A171250.P4176355677394271148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 ⌊(n : ℚ) / 4⌋.toNat) (A003621 (n + 1))

end

end A171250.P4176355677394271148

/-! ## A171250.P9184737940738521685

`A000005(A220469(A003621(n+1)+1))`
-/

namespace A171250.P9184737940738521685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A220469 (A003621 (n + 1) + 1).toNat).toNat

end

end A171250.P9184737940738521685

/-! ## A171250.P15926615040624279743

`A000005(A000010(2^A003621(n+1)))`
-/

namespace A171250.P15926615040624279743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003621 (n + 1) : ℤ))).toNat).toNat

end

end A171250.P15926615040624279743

/-! ## A171250.P12653763268003285520

`A003621(n+1)+A000007(A003621(n+1)²)`
-/

namespace A171250.P12653763268003285520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (n + 1) + A000007 (A003621 (n + 1) ^ 2).toNat

end

end A171250.P12653763268003285520

/-! ## A171250.P15844642831566376257

`A003621(n+1)+A000007(2*A003621(n+1))`
-/

namespace A171250.P15844642831566376257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (n + 1) + A000007 (2 * A003621 (n + 1)).toNat

end

end A171250.P15844642831566376257

/-!
# A171251: Sums of two (not necessarily distinct) Mersenne primes (A000668).

The programs for A171251, there is no canonical definition to state claims against.
-/

/-! ## A171251.P2407100769563743857

`2*A169628(n+1)`
-/

namespace A171251.P2407100769563743857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169628 (n + 1)

end

end A171251.P2407100769563743857

/-! ## A171251.P7456774656739862740

`record[2*A169628(A020986(n))]`
-/

namespace A171251.P7456774656739862740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169628 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171251.P7456774656739862740

/-! ## A171251.P9066792602516931124

`record[2*A169628(A022446(n))]`
-/

namespace A171251.P9066792602516931124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169628 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171251.P9066792602516931124

/-! ## A171251.P5133993758595135349

`record[2*A169628(A028920(n))]`
-/

namespace A171251.P5133993758595135349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169628 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171251.P5133993758595135349

/-! ## A171251.P3629589752173434843

`lcm(2, A169628(A000027(n+1)))`
-/

namespace A171251.P3629589752173434843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A169628 (A000027 (n + 1)).toNat)

end

end A171251.P3629589752173434843

/-!
# A171252: Least power of 2 to have at least n consecutive digits 'n' in its decimal expansion.

The programs for A171252, there is no canonical definition to state claims against.
-/

/-! ## A171252.P2654673486405099489

`A030000(A379678(n+1)+A053422(n))`
-/

namespace A171252.P2654673486405099489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 (A379678 (n + 1) + A053422 n).toNat

end

end A171252.P2654673486405099489

/-!
# A171253: Semi-sums (average) of any two distinct Mersenne primes (A000668).

The programs for A171253, there is no canonical definition to state claims against.
-/

/-! ## A171253.P14724874968834646750

`A169628(comp[∑[n]])`
-/

namespace A171253.P14724874968834646750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A171253.P14724874968834646750

/-! ## A171253.P1020463028787926603

`or(1, A169628(comp[C(n, 2)-1]+1))`
-/

namespace A171253.P1020463028787926603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169628 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1))

end

end A171253.P1020463028787926603

/-! ## A171253.P709755752375276085

`or(1, A169628(∑[A035214(n)]))`
-/

namespace A171253.P709755752375276085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169628 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A171253.P709755752375276085

/-! ## A171253.P12517237082566773072

`or(1, A169628(A014132(n+1)))`
-/

namespace A171253.P12517237082566773072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169628 (A014132 (n + 1)).toNat)

end

end A171253.P12517237082566773072

/-! ## A171253.P9438946983253061854

`or(1, A169628(A003056(n)+2+n))`
-/

namespace A171253.P9438946983253061854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A169628 (A003056 n + 2 + (n : ℤ)).toNat)

end

end A171253.P9438946983253061854

/-!
# A171254: Primes which are the average of any two (not necessarily distinct) Mersenne primes (A000668).

The programs for A171254, there is no canonical definition to state claims against.
-/

/-! ## A171254.P3090932529521246537

`p?[A169628(n+1)]`
-/

namespace A171254.P3090932529521246537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171254.P3090932529521246537

/-! ## A171254.P16450274069949757624

`p?[record[A169628(A020986(n))]]`
-/

namespace A171254.P16450274069949757624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171254.P16450274069949757624

/-! ## A171254.P17512803901832400833

`p?[record[A169628(A022446(n))]]`
-/

namespace A171254.P17512803901832400833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171254.P17512803901832400833

/-! ## A171254.P12665963619336398475

`p?[record[A169628(A028920(n))]]`
-/

namespace A171254.P12665963619336398475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171254.P12665963619336398475

/-!
# A171255: Primes which are the average of two distinct Mersenne primes (A000668).

The programs for A171255, there is no canonical definition to state claims against.
-/

/-! ## A171255.P3461159834783192318

`∩[A171253(n+1), A171254(n+1)]`
-/

namespace A171255.P3461159834783192318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171255.P3461159834783192318

/-! ## A171255.P14279199992311700455

`∩[A169628(A014132(n+1)), A171254(n+1)]`
-/

namespace A171255.P14279199992311700455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (A014132 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171255.P14279199992311700455

/-! ## A171255.P11116454118081802422

`p?[A171253(n+1)]`
-/

namespace A171255.P11116454118081802422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171255.P11116454118081802422

/-! ## A171255.P15544463735875968946

`p?[A169628(comp[∑[n]])]`
-/

namespace A171255.P15544463735875968946
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171255.P15544463735875968946

/-! ## A171255.P15512944419022061353

`p?[A169628(n+1)+char[∑[n-1]]]`
-/

namespace A171255.P15512944419022061353
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171255.P15512944419022061353

/-!
# A171256: Numbers n such that sigma(n) = 10*phi(n) (where sigma=A000203, phi=A000010).

The programs for A171256, there is no canonical definition to state claims against.
-/

/-! ## A171256.P1579594563011763820

`filter[A074452(n+3), A351114(#)]`
-/

namespace A171256.P1579594563011763820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074452 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A171256.P1579594563011763820

/-! ## A171256.P8343236073160598902

`∩[A074452(n+1), A076484(n+1)]`
-/

namespace A171256.P8343236073160598902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171256.P8343236073160598902

/-! ## A171256.P5331339621373161904

`∩[A020492(n+1), A074452(n+5)]`
-/

namespace A171256.P5331339621373161904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074452 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171256.P5331339621373161904

/-!
# A171260: Numbers n such that sigma(n) = 15*phi(n) (where sigma=A000203, phi=A000010).

The programs for A171260, there is no canonical definition to state claims against.
-/

/-! ## A171260.P1944605605416054196

`record[A109046(A171256(n+1))]`
-/

namespace A171260.P1944605605416054196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 (A171256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171260.P1944605605416054196

/-!
# A171262: Numbers k such that phi(k) = 2*phi(k+1).

The programs for A171262, the canonical program `A171262.P14994919271324457303` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171262 has offset 1).

The definition of A171262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171262.P14994919271324457303

`eq[2*A000010(n+2), A000010(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A171262

/-- `eq[2*A000010(n+2), A000010(n+1)]+1` -/
def P14994919271324457303.Spec : Prop :=
  ∀ n, (P14994919271324457303.a n : ℤ) = A171262 (n + 1)

theorem P14994919271324457303.correct : P14994919271324457303.Spec := by
  intro n
  simp only [A171262, Nat.add_sub_cancel]

end A171262

/-! ## A171262.P8924488045692271673

`eq[2, A000010(n+2)/A000010(n+3)]+2`
-/

namespace A171262.P8924488045692271673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A000010 (n + 3) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A171262.P8924488045692271673

namespace A171262

/-- `eq[2, A000010(n+2)/A000010(n+3)]+2` -/
def P8924488045692271673.Spec : Prop :=
  ∀ n, (P8924488045692271673.a n : ℤ) = A171262 (n + 1)

end A171262

/-! ## A171262.P18245054941344502936

`eq[2*A000010(n+1), A000010(A093178(n))]`
-/

namespace A171262.P18245054941344502936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171262.P18245054941344502936

namespace A171262

/-- `eq[2*A000010(n+1), A000010(A093178(n))]` -/
def P18245054941344502936.Spec : Prop :=
  ∀ n, (P18245054941344502936.a n : ℤ) = A171262 (n + 1)

end A171262

/-! ## A171262.P2941721707924299539

`eq[2*A000010(n+1), A000010(A028310(n))]`
-/

namespace A171262.P2941721707924299539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171262.P2941721707924299539

namespace A171262

/-- `eq[2*A000010(n+1), A000010(A028310(n))]` -/
def P2941721707924299539.Spec : Prop :=
  ∀ n, (P2941721707924299539.a n : ℤ) = A171262 (n + 1)

end A171262

/-! ## A171262.P10758912455294416100

`eq[2*A000010(n+1), A000010(A029579(n))]`
-/

namespace A171262.P10758912455294416100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171262.P10758912455294416100

namespace A171262

/-- `eq[2*A000010(n+1), A000010(A029579(n))]` -/
def P10758912455294416100.Spec : Prop :=
  ∀ n, (P10758912455294416100.a n : ℤ) = A171262 (n + 1)

end A171262

/-! ## A171262.P4520693321738849533

`eq[2*A000010(n+1), A000010(A266303(n))]`
-/

namespace A171262.P4520693321738849533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171262.P4520693321738849533

namespace A171262

/-- `eq[2*A000010(n+1), A000010(A266303(n))]` -/
def P4520693321738849533.Spec : Prop :=
  ∀ n, (P4520693321738849533.a n : ℤ) = A171262 (n + 1)

end A171262

/-! ## A171262.P13456132227393592740

`eq[2*A000010(n+1), A000010(A267352(n))]`
-/

namespace A171262.P13456132227393592740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A267352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171262.P13456132227393592740

namespace A171262

/-- `eq[2*A000010(n+1), A000010(A267352(n))]` -/
def P13456132227393592740.Spec : Prop :=
  ∀ n, (P13456132227393592740.a n : ℤ) = A171262 (n + 1)

end A171262

/-! ## A171262.P4318409016924314629

`eq[2*A000010(n+1), A000010(A000007(n)+n)]`
-/

namespace A171262.P4318409016924314629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171262.P4318409016924314629

namespace A171262

/-- `eq[2*A000010(n+1), A000010(A000007(n)+n)]` -/
def P4318409016924314629.Spec : Prop :=
  ∀ n, (P4318409016924314629.a n : ℤ) = A171262 (n + 1)

end A171262

/-!
# A171267: Primes p such that p^s ends with p, where s is sum of the digits of p.

The programs for A171267, there is no canonical definition to state claims against.
-/

/-! ## A171267.P11642515256681764424

`A291279(and(A191371(n), A291279(n+1)))`
-/

namespace A171267.P11642515256681764424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291279 (Int.land (A191371 n) (A291279 (n + 1))).toNat

end

end A171267.P11642515256681764424

/-!
# A171270: a(n) is the only number m such that m = pi(1^(1/n)) + pi(2^(1/n)) + ... + pi(m^(1/n)).

The programs for A171270, the canonical program `A171270.P7570151437831089654` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171270 has offset 1).

The definition of A171270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171270.P7570151437831089654

`3^(n+1)+2^(n+1)-2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171270

/-- `3^(n+1)+2^(n+1)-2` -/
def P7570151437831089654.Spec : Prop :=
  ∀ n, P7570151437831089654.a n = A171270 (n + 1)

theorem P7570151437831089654.correct : P7570151437831089654.Spec := by
  intro n
  simp only [A171270, Nat.add_sub_cancel]

end A171270

/-!
# A171271: Numbers n such that phi(n)=2*phi(n-1).

The programs for A171271, there is no canonical definition to state claims against.
-/

/-! ## A171271.P9616583044751863392

`A050472(n+1)+1`
-/

namespace A171271.P9616583044751863392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050472 (n + 1) + 1

end

end A171271.P9616583044751863392

/-! ## A171271.P11330672754887614324

`record[or(1, A050472(A331742(n)))]`
-/

namespace A171271.P11330672754887614324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050472 (A331742 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171271.P11330672754887614324

/-! ## A171271.P15284811306782084005

`or(1, A050472(A005408(n)-n))`
-/

namespace A171271.P15284811306782084005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050472 (A005408 n - (n : ℤ)).toNat)

end

end A171271.P15284811306782084005

/-! ## A171271.P6301310077213870926

`record[or(1, A050472(A038568(n)))]`
-/

namespace A171271.P6301310077213870926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050472 (A038568 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171271.P6301310077213870926

/-! ## A171271.P1455430376667694155

`record[or(1, A050472(A038569(n)))]`
-/

namespace A171271.P1455430376667694155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050472 (A038569 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171271.P1455430376667694155

/-!
# A171272: a(n) = 1 + 4*n*(1 + 2*n^2)/3.

The programs for A171272, the canonical program `A171272.P18099679542622453646` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171272 has offset 0).

The definition of A171272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171272.P18099679542622453646

`1+4*n*(1+2*n²)/3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A171272

/-- `1+4*n*(1+2*n²)/3` -/
def P18099679542622453646.Spec : Prop :=
  ∀ n, P18099679542622453646.a n = (A171272 n : ℚ)

end A171272

/-! ## A171272.P3628877315133936

`(A168574(n)+A168547(n))/2`
-/

namespace A171272.P3628877315133936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168574 n + A168547 n : ℚ) / 2

end

end A171272.P3628877315133936

namespace A171272

/-- `(A168574(n)+A168547(n))/2` -/
def P3628877315133936.Spec : Prop :=
  ∀ n, P3628877315133936.a n = (A171272 n : ℚ)

end A171272

/-! ## A171272.P16308423738081155705

`or(1, 2*A035597(n))`
-/

namespace A171272.P16308423738081155705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A035597 n)

end

end A171272.P16308423738081155705

namespace A171272

/-- `or(1, 2*A035597(n))` -/
def P16308423738081155705.Spec : Prop :=
  ∀ n, P16308423738081155705.a n = A171272 n

end A171272

/-! ## A171272.P16056218325748570539

`(A173200(n+1)+n+3)/3`
-/

namespace A171272.P16056218325748570539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173200 (n + 1) + (n + 3 : ℤ) : ℚ) / 3

end

end A171272.P16056218325748570539

namespace A171272

/-- `(A173200(n+1)+n+3)/3` -/
def P16056218325748570539.Spec : Prop :=
  ∀ n, P16056218325748570539.a n = (A171272 n : ℚ)

end A171272

/-! ## A171272.P14765149835029365097

`∑[A161712(2*n)]/(n+1)`
-/

namespace A171272.P14765149835029365097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A171272.P14765149835029365097

namespace A171272

/-- `∑[A161712(2*n)]/(n+1)` -/
def P14765149835029365097.Spec : Prop :=
  ∀ n, P14765149835029365097.a n = (A171272 n : ℚ)

end A171272

/-! ## A171272.P12599290299629445118

`A167238(A004277(n))`
-/

namespace A171272.P12599290299629445118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167238 (A004277 n).toNat

end

end A171272.P12599290299629445118

namespace A171272

/-- `A167238(A004277(n))` -/
def P12599290299629445118.Spec : Prop :=
  ∀ n, P12599290299629445118.a n = A171272 n

end A171272

/-! ## A171272.P3989431323371773150

`∑[A005893(A004273(n))]`
-/

namespace A171272.P3989431323371773150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171272.P3989431323371773150

namespace A171272

/-- `∑[A005893(A004273(n))]` -/
def P3989431323371773150.Spec : Prop :=
  ∀ n, P3989431323371773150.a n = A171272 n

end A171272

/-! ## A171272.P16123524273441322897

`A167238(A004275(n+1))`
-/

namespace A171272.P16123524273441322897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167238 (A004275 (n + 1)).toNat

end

end A171272.P16123524273441322897

namespace A171272

/-- `A167238(A004275(n+1))` -/
def P16123524273441322897.Spec : Prop :=
  ∀ n, P16123524273441322897.a n = A171272 n

end A171272

/-! ## A171272.P17037589471334674416

`∑[A005893(A004275(n+1)-1)]`
-/

namespace A171272.P17037589471334674416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A004275 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171272.P17037589471334674416

namespace A171272

/-- `∑[A005893(A004275(n+1)-1)]` -/
def P17037589471334674416.Spec : Prop :=
  ∀ n, P17037589471334674416.a n = A171272 n

end A171272

/-! ## A171272.P15694466647871334720

`∑[A005893(A004275(2*n)/2)]`
-/

namespace A171272.P15694466647871334720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171272.P15694466647871334720

namespace A171272

/-- `∑[A005893(A004275(2*n)/2)]` -/
def P15694466647871334720.Spec : Prop :=
  ∀ n, P15694466647871334720.a n = A171272 n

end A171272

/-! ## A171272.P3203275142569483422

`A116731(Δ[n²])`
-/

namespace A171272.P3203275142569483422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A171272.P3203275142569483422

namespace A171272

/-- `A116731(Δ[n²])` -/
def P3203275142569483422.Spec : Prop :=
  ∀ n, P3203275142569483422.a n = A171272 n

end A171272

/-! ## A171272.P1539310919704338833

`A006484(Δ[n²])/(n+1)`
-/

namespace A171272.P1539310919704338833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006484 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A171272.P1539310919704338833

namespace A171272

/-- `A006484(Δ[n²])/(n+1)` -/
def P1539310919704338833.Spec : Prop :=
  ∀ n, P1539310919704338833.a n = (A171272 n : ℚ)

end A171272

/-! ## A171272.P6789411192257374380

`∩[A116731(n+1), A167238(n+1)]`
-/

namespace A171272.P6789411192257374380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171272.P6789411192257374380

namespace A171272

/-- `∩[A116731(n+1), A167238(n+1)]` -/
def P6789411192257374380.Spec : Prop :=
  ∀ n, (P6789411192257374380.a n : ℤ) = A171272 n

end A171272

/-!
# A171275: T(n,m) = number of 1..m integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171275, there is no canonical definition to state claims against.
-/

/-! ## A171275.P406593179809395768

`A051128(n+1)-A124737(A288972(n))`
-/

namespace A171275.P406593179809395768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A124737 (A288972 n).toNat

end

end A171275.P406593179809395768

/-! ## A171275.P17067700833205410759

`A055208(n+1)-A124737(A288972(n))`
-/

namespace A171275.P17067700833205410759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055208 (n + 1) - A124737 (A288972 n).toNat

end

end A171275.P17067700833205410759

/-! ## A171275.P17155200943810857402

`A051128(n+1)-A333487(A257895(n+1))`
-/

namespace A171275.P17155200943810857402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A333487 (A257895 (n + 1)).toNat

end

end A171275.P17155200943810857402

/-! ## A171275.P18209421156144762269

`A055208(n+1)-A333487(A257895(n+1))`
-/

namespace A171275.P18209421156144762269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055208 (n + 1) - A333487 (A257895 (n + 1)).toNat

end

end A171275.P18209421156144762269

/-! ## A171275.P6878805921742165120

`A051128(n+1)-A124762(A047920(n))`
-/

namespace A171275.P6878805921742165120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A124762 (A047920 n).toNat

end

end A171275.P6878805921742165120

/-!
# A171276: Number of 1..2 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171276, there is no canonical definition to state claims against.
-/

/-! ## A171276.P9952543597248836289

`A171275(∑[n+2])`
-/

namespace A171276.P9952543597248836289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171276.P9952543597248836289

/-! ## A171276.P15260691195160906150

`record[A171275(abs(A201163(n)))]`
-/

namespace A171276.P15260691195160906150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171276.P15260691195160906150

/-! ## A171276.P11392708741283962633

`A171275(A000096(n+1))+char[19]`
-/

namespace A171276.P11392708741283962633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171276.P11392708741283962633

/-! ## A171276.P6724025483347154485

`record[A171275(lt[A051128(n+1), n])]`
-/

namespace A171276.P6724025483347154485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171276.P6724025483347154485

/-! ## A171276.P1171887943434045586

`A171275(A000096(n+1))%A125128(n+2)`
-/

namespace A171276.P1171887943434045586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171275 (A000096 (n + 1)).toNat) (A125128 (n + 2))

end

end A171276.P1171887943434045586

/-!
# A171277: Number of 1..3 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171277, there is no canonical definition to state claims against.
-/

/-! ## A171277.P2252225337429694650

`A171275(∑[n+3]+1)`
-/

namespace A171277.P2252225337429694650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A171277.P2252225337429694650

/-! ## A171277.P4068844246106321650

`A171275(A052905(n)+3)+char[19]`
-/

namespace A171277.P4068844246106321650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171277.P4068844246106321650

/-! ## A171277.P6941992435433390890

`A007318(C(2, n))*A171275(A052905(n)+3)`
-/

namespace A171277.P6941992435433390890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A171275 (A052905 n + 3).toNat

end

end A171277.P6941992435433390890

/-! ## A171277.P8527700842954109267

`A000041(C(2, n+2))*A171275(A052905(n)+3)`
-/

namespace A171277.P8527700842954109267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A171275 (A052905 n + 3).toNat

end

end A171277.P8527700842954109267

/-! ## A171277.P1349530438574109070

`A171275(A052905(n)+3)/A007318(C(2, n+2))`
-/

namespace A171277.P1349530438574109070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171275 (A052905 n + 3).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A171277.P1349530438574109070

/-!
# A171278: Number of 1..4 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171278, there is no canonical definition to state claims against.
-/

/-! ## A171278.P16372849895868220360

`A171275(∑[n+4]+3)`
-/

namespace A171278.P16372849895868220360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A171278.P16372849895868220360

/-! ## A171278.P3356654426617930507

`A171275(A141214(n+1))+char[17]`
-/

namespace A171278.P3356654426617930507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171278.P3356654426617930507

/-! ## A171278.P10376307684153366929

`A171275(A141214(n+1))%A235208(n+1)`
-/

namespace A171278.P10376307684153366929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171275 (A141214 (n + 1)).toNat) (A235208 (n + 1))

end

end A171278.P10376307684153366929

/-! ## A171278.P11995232507330893122

`lcm(A076479(n+1), A171275(A141214(n+1)))`
-/

namespace A171278.P11995232507330893122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A171275 (A141214 (n + 1)).toNat)

end

end A171278.P11995232507330893122

/-! ## A171278.P12519388031414527312

`A007318(C(2, n))*A171275(A141214(n+1))`
-/

namespace A171278.P12519388031414527312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A171275 (A141214 (n + 1)).toNat

end

end A171278.P12519388031414527312

/-!
# A171279: Number of 1..5 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171279, there is no canonical definition to state claims against.
-/

/-! ## A171279.P205897459321727240

`A171275(∑[n+5]+6)`
-/

namespace A171279.P205897459321727240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A171279.P205897459321727240

/-! ## A171279.P11476924950013880785

`A171275(A046691(n+3))+char[16]`
-/

namespace A171279.P11476924950013880785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171279.P11476924950013880785

/-! ## A171279.P3157482185559858285

`A171275(A046691(n+3))%A298758(n+1)`
-/

namespace A171279.P3157482185559858285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171275 (A046691 (n + 3)).toNat) (A298758 (n + 1))

end

end A171279.P3157482185559858285

/-! ## A171279.P10260305434824306663

`A007318(C(2, n+1))*A171275(A046691(n+3))`
-/

namespace A171279.P10260305434824306663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A171275 (A046691 (n + 3)).toNat

end

end A171279.P10260305434824306663

/-! ## A171279.P3398818616465007906

`A000041(C(2, n+2))*A171275(A046691(n+3))`
-/

namespace A171279.P3398818616465007906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A171275 (A046691 (n + 3)).toNat

end

end A171279.P3398818616465007906

/-!
# A171280: Number of 1..6 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171280, there is no canonical definition to state claims against.
-/

/-! ## A171280.P14153542189699582474

`A171275(A052905(n+3))`
-/

namespace A171280.P14153542189699582474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A052905 (n + 3)).toNat

end

end A171280.P14153542189699582474

/-! ## A171280.P9128578440913381606

`A171275(A056119(n)+16)`
-/

namespace A171280.P9128578440913381606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A056119 n + 16).toNat

end

end A171280.P9128578440913381606

/-! ## A171280.P821406700206747437

`A171275(eq[3, A219347(n)])`
-/

namespace A171280.P821406700206747437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171280.P821406700206747437

/-! ## A171280.P1294613465591027195

`A171275(eq[5, A193592(n)])`
-/

namespace A171280.P1294613465591027195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171280.P1294613465591027195

/-! ## A171280.P16172247757923040185

`A171275(eq[8, A258709(n)])`
-/

namespace A171280.P16172247757923040185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171280.P16172247757923040185

/-!
# A171281: Number of 1..7 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171281, there is no canonical definition to state claims against.
-/

/-! ## A171281.P13624353641923057088

`A171275(A055999(n+4))`
-/

namespace A171281.P13624353641923057088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A055999 (n + 4)).toNat

end

end A171281.P13624353641923057088

/-! ## A171281.P14971049745921829797

`A171275(A056121(n)+22)`
-/

namespace A171281.P14971049745921829797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A056121 n + 22).toNat

end

end A171281.P14971049745921829797

/-! ## A171281.P17568292508279415309

`A171275(eq[4, A219347(n)])`
-/

namespace A171281.P17568292508279415309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171281.P17568292508279415309

/-! ## A171281.P16310526667164904263

`A171275(eq[6, A193592(n)])`
-/

namespace A171281.P16310526667164904263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171281.P16310526667164904263

/-! ## A171281.P11160871994325258661

`A171275(eq[32, A166065(n)])`
-/

namespace A171281.P11160871994325258661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171281.P11160871994325258661

/-!
# A171282: Number of 1..8 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171282, there is no canonical definition to state claims against.
-/

/-! ## A171282.P13763705035534177034

`A171275(eq[5, A219347(n)])`
-/

namespace A171282.P13763705035534177034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171282.P13763705035534177034

/-! ## A171282.P6626549421363320363

`A171275(eq[7, A193592(n)])`
-/

namespace A171282.P6626549421363320363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171282.P6626549421363320363

/-! ## A171282.P2129180434377300998

`A171275(A056000(n+4)+3)`
-/

namespace A171282.P2129180434377300998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A056000 (n + 4) + 3).toNat

end

end A171282.P2129180434377300998

/-! ## A171282.P4527358491375039856

`A171275(A253145(n+7)-7)`
-/

namespace A171282.P4527358491375039856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A253145 (n + 7) - 7).toNat

end

end A171282.P4527358491375039856

/-! ## A171282.P2049199135826857241

`A171275(eq[7, A025581(n)]+1)`
-/

namespace A171282.P2049199135826857241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171282.P2049199135826857241

/-!
# A171283: Number of 1..9 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171283, there is no canonical definition to state claims against.
-/

/-! ## A171283.P15693070683250356828

`A171275(eq[6, A219347(n)])`
-/

namespace A171283.P15693070683250356828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171283.P15693070683250356828

/-! ## A171283.P5920397171266847800

`A171275(eq[8, A193592(n)])`
-/

namespace A171283.P5920397171266847800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171283.P5920397171266847800

/-! ## A171283.P7769711850393161925

`A171275(A055999(n+6)-2)`
-/

namespace A171283.P7769711850393161925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A055999 (n + 6) - 2).toNat

end

end A171283.P7769711850393161925

/-! ## A171283.P11353325492989856957

`A171275(eq[8, A025581(n)]+1)`
-/

namespace A171283.P11353325492989856957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171283.P11353325492989856957

/-! ## A171283.P6259597569301751989

`A171275(eq[14, A185782(n+1)])`
-/

namespace A171283.P6259597569301751989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171283.P6259597569301751989

/-!
# A171284: Number of 1..10 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171284, there is no canonical definition to state claims against.
-/

/-! ## A171284.P13564236196565357589

`A171275(eq[8, A219347(n)])`
-/

namespace A171284.P13564236196565357589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171284.P13564236196565357589

/-! ## A171284.P8165628502316204262

`A171275(eq[9, A193592(n)])`
-/

namespace A171284.P8165628502316204262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171284.P8165628502316204262

/-! ## A171284.P6599846578141686950

`A171275(A052905(n+7)-4)`
-/

namespace A171284.P6599846578141686950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A052905 (n + 7) - 4).toNat

end

end A171284.P6599846578141686950

/-! ## A171284.P6093876269458309983

`A171275(A046691(n+8)-5)`
-/

namespace A171284.P6093876269458309983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A046691 (n + 8) - 5).toNat

end

end A171284.P6093876269458309983

/-! ## A171284.P8029273601411742982

`A171275(A000096(n+9)-8)`
-/

namespace A171284.P8029273601411742982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000096 (n + 9) - 8).toNat

end

end A171284.P8029273601411742982

/-!
# A171285: Number of 1..11 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171285, there is no canonical definition to state claims against.
-/

/-! ## A171285.P1627166354598995662

`A171275(eq[10, A193592(n)])`
-/

namespace A171285.P1627166354598995662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171285.P1627166354598995662

/-! ## A171285.P13212745157137588599

`A171275(eq[10, A219347(n)])`
-/

namespace A171285.P13212745157137588599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171285.P13212745157137588599

/-! ## A171285.P14293529313103414480

`A171275(eq[10, A025581(n)]+1)`
-/

namespace A171285.P14293529313103414480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A171285.P14293529313103414480

/-! ## A171285.P13640520436323529024

`A171275(eq[18, A185782(n+1)])`
-/

namespace A171285.P13640520436323529024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171285.P13640520436323529024

/-! ## A171285.P8968893655148766463

`A171275(A000096(n+8)+12+n+n)`
-/

namespace A171285.P8968893655148766463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A000096 (n + 8) + 12 + (n : ℤ) + (n : ℤ)).toNat

end

end A171285.P8968893655148766463

/-!
# A171286: Number of 1..12 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171286, there is no canonical definition to state claims against.
-/

/-! ## A171286.P18151113419420700638

`A171275(eq[11, A193592(n)])`
-/

namespace A171286.P18151113419420700638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171286.P18151113419420700638

/-! ## A171286.P15795191606181891948

`A171275(eq[12, A219347(n)])`
-/

namespace A171286.P15795191606181891948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171286.P15795191606181891948

/-! ## A171286.P13773386482656144854

`A171275(eq[20, A185782(n+1)])`
-/

namespace A171286.P13773386482656144854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171286.P13773386482656144854

/-!
# A171287: Number of 1..13 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171287, there is no canonical definition to state claims against.
-/

/-! ## A171287.P10352745726612433924

`A171275(eq[12, A193592(n)])`
-/

namespace A171287.P10352745726612433924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171287.P10352745726612433924

/-! ## A171287.P6180625776199329132

`A171275(eq[15, A219347(n)])`
-/

namespace A171287.P6180625776199329132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171287.P6180625776199329132

/-! ## A171287.P15727771048671214207

`A171275(eq[22, A185782(n+1)])`
-/

namespace A171287.P15727771048671214207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171287.P15727771048671214207

/-!
# A171288: Number of 1..14 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171288, there is no canonical definition to state claims against.
-/

/-! ## A171288.P10727336557390950505

`A171275(eq[13, A193592(n)])`
-/

namespace A171288.P10727336557390950505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171288.P10727336557390950505

/-! ## A171288.P2334842301916743356

`A171275(eq[18, A219347(n)])`
-/

namespace A171288.P2334842301916743356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171288.P2334842301916743356

/-! ## A171288.P15797691147118285776

`A171275(eq[24, A185782(n+1)])`
-/

namespace A171288.P15797691147118285776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171288.P15797691147118285776

/-!
# A171289: Number of 1..15 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171289, there is no canonical definition to state claims against.
-/

/-! ## A171289.P3103577939120265872

`A171275(eq[14, A193592(n)])`
-/

namespace A171289.P3103577939120265872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171289.P3103577939120265872

/-! ## A171289.P5918030715752241685

`A171275(eq[22, A219347(n)])`
-/

namespace A171289.P5918030715752241685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171289.P5918030715752241685

/-! ## A171289.P1432632641294823450

`A171275(A046691(n+13)-10)`
-/

namespace A171289.P1432632641294823450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (A046691 (n + 13) - 10).toNat

end

end A171289.P1432632641294823450

/-!
# A171290: Number of 1..16 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171290, there is no canonical definition to state claims against.
-/

/-! ## A171290.P6642432514216621186

`A171275(eq[15, A193592(n)])`
-/

namespace A171290.P6642432514216621186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171290.P6642432514216621186

/-! ## A171290.P17109194771336066416

`A171275(eq[27, A219347(n)])`
-/

namespace A171290.P17109194771336066416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171290.P17109194771336066416

/-!
# A171291: Number of 1..17 integer arrays v[1..n] of length n with all autocorrelation values sum(i){v[i]*v[i-k]} distinct for k in 0..n-1.

The programs for A171291, there is no canonical definition to state claims against.
-/

/-! ## A171291.P7381839025266971183

`A171275(eq[16, A193592(n)])`
-/

namespace A171291.P7381839025266971183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171291.P7381839025266971183

