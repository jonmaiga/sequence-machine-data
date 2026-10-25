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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A293600: G.f. A(x,y) = Sum_{-oo..+oo} (x - y^n)^(n+1), as a flattened rectangular array of coefficients T(n,k) of x^n * y^(k*(n+k-1)) in A(x,y) for n>=1.

The programs for A293600, the canonical program `A293600.P7342064870478371486` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293600 has offset 1).

The definition of A293600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293600.P7342064870478371486

`A063007(n)/A027555(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A293600

/-- `A063007(n)/A027555(n)` -/
def P7342064870478371486.Spec : Prop :=
  ∀ n, P7342064870478371486.a n = (A293600 (n + 1) : ℚ)

end A293600

/-! ## A293600.P14883460624900702138

`A104684(A061579(n))/A027555(n)`
-/

namespace A293600.P14883460624900702138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (A061579 n).toNat : ℚ) / (A027555 n : ℚ)

end

end A293600.P14883460624900702138

namespace A293600

/-- `A104684(A061579(n))/A027555(n)` -/
def P14883460624900702138.Spec : Prop :=
  ∀ n, P14883460624900702138.a n = (A293600 (n + 1) : ℚ)

end A293600

/-! ## A293600.P1441698131796122747

`A132460(A056537(n+1)-1)`
-/

namespace A293600.P1441698131796122747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (A056537 (n + 1) - 1).toNat

end

end A293600.P1441698131796122747

namespace A293600

/-- `A132460(A056537(n+1)-1)` -/
def P1441698131796122747.Spec : Prop :=
  ∀ n, P1441698131796122747.a n = A293600 (n + 1)

end A293600

/-! ## A293600.P1940258434303775074

`A109983(A061885(n))/A027555(n)`
-/

namespace A293600.P1940258434303775074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109983 (A061885 n).toNat : ℚ) / (A027555 n : ℚ)

end

end A293600.P1940258434303775074

namespace A293600

/-- `A109983(A061885(n))/A027555(n)` -/
def P1940258434303775074.Spec : Prop :=
  ∀ n, P1940258434303775074.a n = (A293600 (n + 1) : ℚ)

end A293600

/-! ## A293600.P2079468216779509610

`A100218(A245300(n)+A025581(n))`
-/

namespace A293600.P2079468216779509610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (A245300 n + A025581 n).toNat

end

end A293600.P2079468216779509610

namespace A293600

/-- `A100218(A245300(n)+A025581(n))` -/
def P2079468216779509610.Spec : Prop :=
  ∀ n, P2079468216779509610.a n = A293600 (n + 1)

end A293600

/-! ## A293600.P3149802337150142379

`A108045(A245300(n)+A114327(n))`
-/

namespace A293600.P3149802337150142379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 (A245300 n + A114327 n).toNat

end

end A293600.P3149802337150142379

namespace A293600

/-- `A108045(A245300(n)+A114327(n))` -/
def P3149802337150142379.Spec : Prop :=
  ∀ n, P3149802337150142379.a n = A293600 (n + 1)

end A293600

/-! ## A293600.P4221216572703645611

`A089627(A245300(n))/A027555(n)`
-/

namespace A293600.P4221216572703645611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 (A245300 n).toNat : ℚ) / (A027555 n : ℚ)

end

end A293600.P4221216572703645611

namespace A293600

/-- `A089627(A245300(n))/A027555(n)` -/
def P4221216572703645611.Spec : Prop :=
  ∀ n, P4221216572703645611.a n = (A293600 (n + 1) : ℚ)

end A293600

/-! ## A293600.P6947534255183751047

`A303986(n)/A124320(n)`
-/

namespace A293600.P6947534255183751047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303986 n : ℚ) / (A124320 n : ℚ)

end

end A293600.P6947534255183751047

namespace A293600

/-- `A303986(n)/A124320(n)` -/
def P6947534255183751047.Spec : Prop :=
  ∀ n, P6947534255183751047.a n = (A293600 (n + 1) : ℚ)

end A293600

/-! ## A293600.P10042509078754348153

`A132460(A194061(n+1))`
-/

namespace A293600.P10042509078754348153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (A194061 (n + 1)).toNat

end

end A293600.P10042509078754348153

namespace A293600

/-- `A132460(A194061(n+1))` -/
def P10042509078754348153.Spec : Prop :=
  ∀ n, P10042509078754348153.a n = A293600 (n + 1)

end A293600

/-!
# A293601: Limit of rows in rectangular array A292929.

The programs for A293601, there is no canonical definition to state claims against.
-/

/-! ## A293601.P15356300824082793936

`A292929(A132209(n)+1)`
-/

namespace A293601.P15356300824082793936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A132209 n + 1).toNat

end

end A293601.P15356300824082793936

/-! ## A293601.P17185227686264310151

`A292929(A046092(n)+A000007(n))`
-/

namespace A293601.P17185227686264310151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A046092 n + A000007 n).toNat

end

end A293601.P17185227686264310151

/-! ## A293601.P11849938209741188030

`A292929(A046092(n)^A178489(n))`
-/

namespace A293601.P11849938209741188030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (SequenceMachineLib.roundAway ((A046092 n : ℚ) ^ (A178489 n : ℤ))).toNat

end

end A293601.P11849938209741188030

/-! ## A293601.P15712771434706891573

`A292929(A046092(n)+1-A178489(n))`
-/

namespace A293601.P15712771434706891573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A046092 n + (1 - A178489 n)).toNat

end

end A293601.P15712771434706891573

/-! ## A293601.P15909110015201397889

`A292929(1-(A178489(n)-A046092(n)))`
-/

namespace A293601.P15909110015201397889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (1 - (A178489 n - A046092 n)).toNat

end

end A293601.P15909110015201397889

/-! ## A293601.P8847898076774859061

`A292929(A056220(n+1))`
-/

namespace A293601.P8847898076774859061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A056220 (n + 1)).toNat

end

end A293601.P8847898076774859061

/-! ## A293601.P10778337608497379155

`A292929(A090288(n)+1)`
-/

namespace A293601.P10778337608497379155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A090288 n + 1).toNat

end

end A293601.P10778337608497379155

/-! ## A293601.P9315263102674566143

`A292929(A142463(n+1))`
-/

namespace A293601.P9315263102674566143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A142463 (n + 1)).toNat

end

end A293601.P9315263102674566143

/-! ## A293601.P1160785912772557447

`A292929(A054000(n+1)+1)`
-/

namespace A293601.P1160785912772557447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A054000 (n + 1) + 1).toNat

end

end A293601.P1160785912772557447

/-! ## A293601.P8851911809075419803

`A292929(A046092(n+1)-1)`
-/

namespace A293601.P8851911809075419803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (A046092 (n + 1) - 1).toNat

end

end A293601.P8851911809075419803

/-!
# A293604: Expansion of e.g.f.: exp(x * (1 - x)).

The programs for A293604, the canonical program `A293604.P9618816378021372198` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293604 has offset 0).

The definition of A293604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293604.P9618816378021372198

`a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293604

/-- `a(n-1)-2*(n-1)*a(n-2)` -/
def P9618816378021372198.Spec : Prop :=
  ∀ n, P9618816378021372198.a n = A293604 n

theorem P9618816378021372198.correct : P9618816378021372198.Spec := by
  intro n
  simp only [A293604]

end A293604

/-! ## A293604.P7051677642609573710

`(-1)^n*A000321(n)`
-/

namespace A293604.P7051677642609573710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000321 n

end

end A293604.P7051677642609573710

namespace A293604

/-- `(-1)^n*A000321(n)` -/
def P7051677642609573710.Spec : Prop :=
  ∀ n, P7051677642609573710.a n = A293604 n

end A293604

/-! ## A293604.P9550627053590603119

`A000321(n)*A033999(n)`
-/

namespace A293604.P9550627053590603119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000321 n * A033999 n

end

end A293604.P9550627053590603119

namespace A293604

/-- `A000321(n)*A033999(n)` -/
def P9550627053590603119.Spec : Prop :=
  ∀ n, P9550627053590603119.a n = A293604 n

end A293604

/-! ## A293604.P7104772698783067840

`A000321(n)/A033999(n+2)`
-/

namespace A293604.P7104772698783067840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000321 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A293604.P7104772698783067840

namespace A293604

/-- `A000321(n)/A033999(n+2)` -/
def P7104772698783067840.Spec : Prop :=
  ∀ n, P7104772698783067840.a n = (A293604 n : ℚ)

end A293604

/-! ## A293604.P8259052865875963276

`A000321(n)*A057077(2*n)`
-/

namespace A293604.P8259052865875963276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000321 n * A057077 (2 * n)

end

end A293604.P8259052865875963276

namespace A293604

/-- `A000321(n)*A057077(2*n)` -/
def P8259052865875963276.Spec : Prop :=
  ∀ n, P8259052865875963276.a n = A293604 n

end A293604

/-! ## A293604.P5894432430198984619

`A000321(n)*A010892(3*n)`
-/

namespace A293604.P5894432430198984619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000321 n * A010892 (3 * n)

end

end A293604.P5894432430198984619

namespace A293604

/-- `A000321(n)*A010892(3*n)` -/
def P5894432430198984619.Spec : Prop :=
  ∀ n, P5894432430198984619.a n = A293604 n

end A293604

/-! ## A293604.P3427907691967014825

`A362277(∑[n+3])`
-/

namespace A293604.P3427907691967014825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293604.P3427907691967014825

namespace A293604

/-- `A362277(∑[n+3])` -/
def P3427907691967014825.Spec : Prop :=
  ∀ n, P3427907691967014825.a n = A293604 n

end A293604

/-!
# A293605: Primes p such that phi(p-1) < (p-1)/4.

The programs for A293605, there is no canonical definition to state claims against.
-/

/-! ## A293605.P96958617597293818

`A267540(A388028(n+2))`
-/

namespace A293605.P96958617597293818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267540 (A388028 (n + 2)).toNat

end

end A293605.P96958617597293818

/-!
# A293606: Number of unlabeled antichains of weight n.

The programs for A293606, there is no canonical definition to state claims against.
-/

/-! ## A293606.P16481697805039587394

`∑[A321678(n)]`
-/

namespace A293606.P16481697805039587394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293606.P16481697805039587394

/-! ## A293606.P14443470464274166002

`ceil(A339541(A274059(n))/6)`
-/

namespace A293606.P14443470464274166002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339541 (A274059 n).toNat : ℚ) / 6⌉

end

end A293606.P14443470464274166002

/-! ## A293606.P2354803028838442080

`A300776(2*n+1)+A103295(n)`
-/

namespace A293606.P2354803028838442080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (2 * n + 1) + A103295 n

end

end A293606.P2354803028838442080

/-! ## A293606.P16274712876283472395

`A328727(A351004(n))+A157133(n)`
-/

namespace A293606.P16274712876283472395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (A351004 n).toNat + A157133 n

end

end A293606.P16274712876283472395

/-! ## A293606.P5197669556109730961

`A240080(n)+A005843(A324408(n+1))`
-/

namespace A293606.P5197669556109730961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240080 n + A005843 (A324408 (n + 1)).toNat

end

end A293606.P5197669556109730961

/-!
# A293607: Number of unlabeled clutters of weight n.

The programs for A293607, there is no canonical definition to state claims against.
-/

/-! ## A293607.P11787757652730085917

`ceil(A093637(n)/∑{d}[n+1, #])`
-/

namespace A293607.P11787757652730085917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093637 n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌉

end

end A293607.P11787757652730085917

/-! ## A293607.P13846277739810570407

`ceil(p?[A032615((n+1)²+1)+2]/11)`
-/

namespace A293607.P13846277739810570407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 ((n + 1) ^ 2 + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 11⌉

end

end A293607.P13846277739810570407

/-! ## A293607.P16110419467577134353

`A025769(A054156(n))`
-/

namespace A293607.P16110419467577134353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025769 (A054156 n).toNat

end

end A293607.P16110419467577134353

/-! ## A293607.P5667513489581858939

`A132188(A304867(n))`
-/

namespace A293607.P5667513489581858939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132188 (A304867 n).toNat

end

end A293607.P5667513489581858939

/-! ## A293607.P9801602058126590603

`A029046(A241408(n+1))`
-/

namespace A293607.P9801602058126590603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (A241408 (n + 1)).toNat

end

end A293607.P9801602058126590603

/-!
# A293608: a(n) = (3*n + 7)*Pochhammer(n, 5) / 4!.

The programs for A293608, the canonical program `A293608.P8901696904297523615` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293608 has offset 0).

The definition of A293608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293608.P8901696904297523615

`∑[n*∑[∑[(3*(n+1))²-(n+1)]]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293608

/-- `∑[n*∑[∑[(3*(n+1))²-(n+1)]]]` -/
def P8901696904297523615.Spec : Prop :=
  ∀ n, P8901696904297523615.a n = A293608 n

theorem P8901696904297523615.correct : P8901696904297523615.Spec := by
  intro n
  simp only [A293608]

end A293608

/-! ## A293608.P604293384279995030

`(3*A005563(n)+n)*C(n+4, 4)`
-/

namespace A293608.P604293384279995030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A005563 n + (n : ℤ)) * (Nat.choose (n + 4) 4 : ℤ)

end

end A293608.P604293384279995030

namespace A293608

/-- `(3*A005563(n)+n)*C(n+4, 4)` -/
def P604293384279995030.Spec : Prop :=
  ∀ n, P604293384279995030.a n = A293608 n

end A293608

/-! ## A293608.P11579389994117615205

`A112414(n)*A174002(n)`
-/

namespace A293608.P11579389994117615205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n * A174002 n

end

end A293608.P11579389994117615205

namespace A293608

/-- `A112414(n)*A174002(n)` -/
def P11579389994117615205.Spec : Prop :=
  ∀ n, P11579389994117615205.a n = A293608 n

end A293608

/-! ## A293608.P6012701065077653819

`n*(A027789(n+1)+A006411(n+1))`
-/

namespace A293608.P6012701065077653819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027789 (n + 1) + A006411 (n + 1))

end

end A293608.P6012701065077653819

namespace A293608

/-- `n*(A027789(n+1)+A006411(n+1))` -/
def P6012701065077653819.Spec : Prop :=
  ∀ n, P6012701065077653819.a n = A293608 n

end A293608

/-! ## A293608.P3550505956580259595

`n*A293475(n+1)`
-/

namespace A293608.P3550505956580259595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293475 (n + 1)

end

end A293608.P3550505956580259595

namespace A293608

/-- `n*A293475(n+1)` -/
def P3550505956580259595.Spec : Prop :=
  ∀ n, P3550505956580259595.a n = A293608 n

end A293608

/-! ## A293608.P5355278548267640226

`A016777(n+2)*A174002(n)`
-/

namespace A293608.P5355278548267640226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 2) * A174002 n

end

end A293608.P5355278548267640226

namespace A293608

/-- `A016777(n+2)*A174002(n)` -/
def P5355278548267640226.Spec : Prop :=
  ∀ n, P5355278548267640226.a n = A293608 n

end A293608

/-! ## A293608.P10661484149304221795

`∑[A160378(n+1)]*A000217(n+3)`
-/

namespace A293608.P10661484149304221795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000217 (n + 3)

end

end A293608.P10661484149304221795

namespace A293608

/-- `∑[A160378(n+1)]*A000217(n+3)` -/
def P10661484149304221795.Spec : Prop :=
  ∀ n, P10661484149304221795.a n = A293608 n

end A293608

/-! ## A293608.P2710328121373445110

`n*(A151974(n+1)-A162668(n+1))`
-/

namespace A293608.P2710328121373445110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A151974 (n + 1) - A162668 (n + 1))

end

end A293608.P2710328121373445110

namespace A293608

/-- `n*(A151974(n+1)-A162668(n+1))` -/
def P2710328121373445110.Spec : Prop :=
  ∀ n, P2710328121373445110.a n = A293608 n

end A293608

/-! ## A293608.P5239062900564455226

`n*(A271870(n+1)-A257199(n+2))`
-/

namespace A293608.P5239062900564455226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A271870 (n + 1) - A257199 (n + 2))

end

end A293608.P5239062900564455226

namespace A293608

/-- `n*(A271870(n+1)-A257199(n+2))` -/
def P5239062900564455226.Spec : Prop :=
  ∀ n, P5239062900564455226.a n = A293608 n

end A293608

/-! ## A293608.P14865582823471215858

`A001296(n+1)*A028552(n+1)-A033488(n+1)`
-/

namespace A293608.P14865582823471215858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) * A028552 (n + 1) - A033488 (n + 1)

end

end A293608.P14865582823471215858

namespace A293608

/-- `A001296(n+1)*A028552(n+1)-A033488(n+1)` -/
def P14865582823471215858.Spec : Prop :=
  ∀ n, P14865582823471215858.a n = A293608 n

end A293608

/-! ## A293608.P4337539835815441451

`∑[n]*A153978(n+3)`
-/

namespace A293608.P4337539835815441451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A153978 (n + 3)

end

end A293608.P4337539835815441451

namespace A293608

/-- `∑[n]*A153978(n+3)` -/
def P4337539835815441451.Spec : Prop :=
  ∀ n, P4337539835815441451.a n = A293608 n

end A293608

/-! ## A293608.P4546884553814426263

`∑[2*n]*A001296(n+2)`
-/

namespace A293608.P4546884553814426263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001296 (n + 2)

end

end A293608.P4546884553814426263

namespace A293608

/-- `∑[2*n]*A001296(n+2)` -/
def P4546884553814426263.Spec : Prop :=
  ∀ n, P4546884553814426263.a n = A293608 n

end A293608

/-! ## A293608.P5112743992036475900

`A001296(n+2)*A002378(n)`
-/

namespace A293608.P5112743992036475900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 2) * A002378 n

end

end A293608.P5112743992036475900

namespace A293608

/-- `A001296(n+2)*A002378(n)` -/
def P5112743992036475900.Spec : Prop :=
  ∀ n, P5112743992036475900.a n = A293608 n

end A293608

/-! ## A293608.P15322078541941201777

`A000217(n+3)*A290055(2*n)`
-/

namespace A293608.P15322078541941201777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3) * A290055 (2 * n)

end

end A293608.P15322078541941201777

namespace A293608

/-- `A000217(n+3)*A290055(2*n)` -/
def P15322078541941201777.Spec : Prop :=
  ∀ n, P15322078541941201777.a n = A293608 n

end A293608

/-! ## A293608.P1995642382779005605

`(A020742(n)+n)*A333321(A020742(n))`
-/

namespace A293608.P1995642382779005605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020742 n + (n : ℤ)) * A333321 (A020742 n).toNat

end

end A293608.P1995642382779005605

namespace A293608

/-- `(A020742(n)+n)*A333321(A020742(n))` -/
def P1995642382779005605.Spec : Prop :=
  ∀ n, P1995642382779005605.a n = A293608 n

end A293608

/-!
# A293610: a(n) = (15*n^2 + 35*n + 16)*Pochhammer(n, 5) / 6!.

The programs for A293610, the canonical program `A293610.P2657003918187026131` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293610 has offset 0).

The definition of A293610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293610.P2657003918187026131

`∑[∑[∑[∑[7*n+1]]]*∑[n]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293610

/-- `∑[∑[∑[∑[7*n+1]]]*∑[n]]` -/
def P2657003918187026131.Spec : Prop :=
  ∀ n, (P2657003918187026131.a n : ℤ) = A293610 n

theorem P2657003918187026131.correct : P2657003918187026131.Spec := by
  intro n
  simp only [A293610]

end A293610

/-! ## A293610.P15424251683035211831

`A034264(n)+A000217(n)*A027800(n)`
-/

namespace A293610.P15424251683035211831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 n + A000217 n * A027800 n

end

end A293610.P15424251683035211831

namespace A293610

/-- `A034264(n)+A000217(n)*A027800(n)` -/
def P15424251683035211831.Spec : Prop :=
  ∀ n, P15424251683035211831.a n = A293610 n

end A293610

/-! ## A293610.P17075168309701706432

`A124796(A007283(n+4)-A007283(n))`
-/

namespace A293610.P17075168309701706432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124796 (A007283 (n + 4) - A007283 n).toNat

end

end A293610.P17075168309701706432

namespace A293610

/-- `A124796(A007283(n+4)-A007283(n))` -/
def P17075168309701706432.Spec : Prop :=
  ∀ n, P17075168309701706432.a n = A293610 n

end A293610

/-!
# A293611: a(n) = (25*n + 41)*Pochhammer(n, 5) / 6!.

The programs for A293611, the canonical program `A293611.P16775360234379216699` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293611 has offset 0).

The definition of A293611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293611.P16775360234379216699

`∑[∑[A000292(n)]*(5*n+6)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293611

/-- `∑[∑[A000292(n)]*(5*n+6)]` -/
def P16775360234379216699.Spec : Prop :=
  ∀ n, P16775360234379216699.a n = A293611 n

theorem P16775360234379216699.correct : P16775360234379216699.Spec := by
  intro n
  simp only [A293611]

end A293611

/-! ## A293611.P5191529708092628568

`A274501(n+5)+A266732(n)`
-/

namespace A293611.P5191529708092628568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274501 (n + 5) + A266732 n

end

end A293611.P5191529708092628568

namespace A293611

/-- `A274501(n+5)+A266732(n)` -/
def P5191529708092628568.Spec : Prop :=
  ∀ n, P5191529708092628568.a n = A293611 n

end A293611

/-! ## A293611.P7966109123590627243

`∑[(A016885(n)+3)*∑[A000292(n)]]`
-/

namespace A293611.P7966109123590627243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293611.P7966109123590627243

namespace A293611

/-- `∑[(A016885(n)+3)*∑[A000292(n)]]` -/
def P7966109123590627243.Spec : Prop :=
  ∀ n, P7966109123590627243.a n = A293611 n

end A293611

/-! ## A293611.P15848159772687496591

`∑[A033994(n+1)/2*A000096(n)]`
-/

namespace A293611.P15848159772687496591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033994 (n + 1) : ℚ) / 2 * (A000096 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293611.P15848159772687496591

namespace A293611

/-- `∑[A033994(n+1)/2*A000096(n)]` -/
def P15848159772687496591.Spec : Prop :=
  ∀ n, P15848159772687496591.a n = (A293611 n : ℚ)

end A293611

/-! ## A293611.P3381862468309495403

`∑[A016861(n+1)*∑[∑[∑[n]]]]`
-/

namespace A293611.P3381862468309495403
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293611.P3381862468309495403

namespace A293611

/-- `∑[A016861(n+1)*∑[∑[∑[n]]]]` -/
def P3381862468309495403.Spec : Prop :=
  ∀ n, P3381862468309495403.a n = A293611 n

end A293611

/-!
# A293614: a(n) = (8*n + 18)*Pochhammer(n, 6) / 6!.

The programs for A293614, the canonical program `A293614.P1598022764654396077` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293614 has offset 0).

The definition of A293614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293614.P1598022764654396077

`n*∑[∑[(n+3)*∑[(n+1)²]]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293614

/-- `n*∑[∑[(n+3)*∑[(n+1)²]]]` -/
def P1598022764654396077.Spec : Prop :=
  ∀ n, (P1598022764654396077.a n : ℤ) = A293614 n

theorem P1598022764654396077.correct : P1598022764654396077.Spec := by
  intro n
  simp only [A293614]

end A293614

/-! ## A293614.P1327975284539759708

`∑[2*n]*A034263(n+1)/3`
-/

namespace A293614.P1327975284539759708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A034263 (n + 1) : ℚ) / 3

end

end A293614.P1327975284539759708

namespace A293614

/-- `∑[2*n]*A034263(n+1)/3` -/
def P1327975284539759708.Spec : Prop :=
  ∀ n, P1327975284539759708.a n = (A293614 n : ℚ)

end A293614

/-!
# A293615: a(n) = Pochhammer(n, 5) / 2.

The programs for A293615, the canonical program `A293615.P5529908107608948817` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293615 has offset 0).

The definition of A293615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293615.P5529908107608948817

`1/2*n*(1+n)*(2+n)*(3+n)*(4+n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293615

/-- `1/2*n*(1+n)*(2+n)*(3+n)*(4+n)` -/
def P5529908107608948817.Spec : Prop :=
  ∀ n, P5529908107608948817.a n = (A293615 n : ℚ)

end A293615

/-! ## A293615.P5015622959253529809

`C((n+3)², 2)*∑[2*n]/(n+3)`
-/

namespace A293615.P5015622959253529809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((n + 3) ^ 2) 2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (n + 3 : ℚ)

end

end A293615.P5015622959253529809

namespace A293615

/-- `C((n+3)², 2)*∑[2*n]/(n+3)` -/
def P5015622959253529809.Spec : Prop :=
  ∀ n, P5015622959253529809.a n = (A293615 n : ℚ)

end A293615

/-! ## A293615.P6577111592992245476

`∑[5*A033486(n)]`
-/

namespace A293615.P6577111592992245476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293615.P6577111592992245476

namespace A293615

/-- `∑[5*A033486(n)]` -/
def P6577111592992245476.Spec : Prop :=
  ∀ n, P6577111592992245476.a n = A293615 n

end A293615

/-! ## A293615.P14610374510185375949

`Δ[2*n*(n-1)*∑[C(n+3, 3)]]`
-/

namespace A293615.P14610374510185375949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293615.P14610374510185375949

namespace A293615

/-- `Δ[2*n*(n-1)*∑[C(n+3, 3)]]` -/
def P14610374510185375949.Spec : Prop :=
  ∀ n, P14610374510185375949.a n = A293615 n

end A293615

/-! ## A293615.P5419550208326845148

`Δ[4*A240440(n+1)]`
-/

namespace A293615.P5419550208326845148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A240440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293615.P5419550208326845148

namespace A293615

/-- `Δ[4*A240440(n+1)]` -/
def P5419550208326845148.Spec : Prop :=
  ∀ n, P5419550208326845148.a n = A293615 n

end A293615

/-! ## A293615.P9709598069705863419

`A005563(n)*A127736(n+2)-A005563(n)`
-/

namespace A293615.P9709598069705863419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A127736 (n + 2) - A005563 n

end

end A293615.P9709598069705863419

namespace A293615

/-- `A005563(n)*A127736(n+2)-A005563(n)` -/
def P9709598069705863419.Spec : Prop :=
  ∀ n, P9709598069705863419.a n = A293615 n

end A293615

/-! ## A293615.P7235214132104476213

`∑[A395421((n+1)²+n+1)]`
-/

namespace A293615.P7235214132104476213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395421 ((n + 1) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293615.P7235214132104476213

namespace A293615

/-- `∑[A395421((n+1)²+n+1)]` -/
def P7235214132104476213.Spec : Prop :=
  ∀ n, P7235214132104476213.a n = A293615 n

end A293615

/-!
# A293616: Array of generalized Eulerian number triangles read by ascending antidiagonals, with m >= 0, n >= 0 and 0 <= k <= n.

The programs for A293616, there is no canonical definition to state claims against.
-/

/-! ## A293616.P9425723933194347917

`A165253(n)%A107832(A001414(3*n+4))`
-/

namespace A293616.P9425723933194347917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165253 n) (A107832 (A001414 (3 * n + 4)).toNat)

end

end A293616.P9425723933194347917

/-! ## A293616.P4944152359835802348

`A140313(A276999(n))*A165253(n)`
-/

namespace A293616.P4944152359835802348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (A276999 n).toNat * A165253 n

end

end A293616.P4944152359835802348

/-! ## A293616.P1355473402221234404

`and(A000587(A233543(n)), A106800(n))`
-/

namespace A293616.P1355473402221234404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000587 (A233543 n).toNat) (A106800 n)

end

end A293616.P1355473402221234404

/-! ## A293616.P9174062475329498260

`and(A000587(A233543(n)), A151510(n))`
-/

namespace A293616.P9174062475329498260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000587 (A233543 n).toNat) (A151510 n)

end

end A293616.P9174062475329498260

/-! ## A293616.P9027894754087334553

`and(A000587(A233543(n)), A151512(n))`
-/

namespace A293616.P9027894754087334553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000587 (A233543 n).toNat) (A151512 n)

end

end A293616.P9027894754087334553

/-!
# A293617: Array of triangles read by ascending antidiagonals, T(m, n, k) = Pochhammer(m, k) * Stirling2(n + m, k + m) with m >= 0, n >= 0 and 0 <= k <= n.

The programs for A293617, there is no canonical definition to state claims against.
-/

/-! ## A293617.P1572873834059256828

`A106800(n)%p?[A238437(A008615(n))]`
-/

namespace A293617.P1572873834059256828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238437 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106800 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A293617.P1572873834059256828

/-! ## A293617.P12376002947057997192

`A151512(n)%p?[A238437(A008615(n))]`
-/

namespace A293617.P12376002947057997192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238437 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151512 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A293617.P12376002947057997192

/-! ## A293617.P15899972419506054343

`A003056(A286957(n)^A194856(n+1))`
-/

namespace A293617.P15899972419506054343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A286957 n : ℚ) ^ (A194856 (n + 1) : ℤ))).toNat

end

end A293617.P15899972419506054343

/-! ## A293617.P1446442843757814791

`A106800(n)%A006530(A317644(n))`
-/

namespace A293617.P1446442843757814791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106800 n) (A006530 (A317644 n).toNat)

end

end A293617.P1446442843757814791

/-! ## A293617.P15064235540479454258

`A165253(n)%A000040(A035470(n+1))`
-/

namespace A293617.P15064235540479454258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165253 n) (A000040 (A035470 (n + 1)).toNat)

end

end A293617.P15064235540479454258

/-!
# A293618: Numbers n that equal the sum of their first k consecutive aliquot bi-unitary divisors, but not all of them (i.e k < A286324(n)-1).

The programs for A293618, there is no canonical definition to state claims against.
-/

/-! ## A293618.P17484330778062758669

`A062401(A006450(n+1)+A000582(n+11))`
-/

namespace A293618.P17484330778062758669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A006450 (n + 1) + A000582 (n + 11)).toNat

end

end A293618.P17484330778062758669

/-!
# A293620: Numbers k such that f(k), f(k+1) and f(k+2) are all primes, where f(k) = (2k+1)^2 - 2 (A073577).

The programs for A293620, there is no canonical definition to state claims against.
-/

/-! ## A293620.P7217712855772981179

`A111228(A051682(n))`
-/

namespace A293620.P7217712855772981179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111228 (A051682 n).toNat

end

end A293620.P7217712855772981179

/-!
# A293621: Numbers k such that (2*k)^2 + 1 and (2*k+2)^2 + 1 are both primes.

The programs for A293621, there is no canonical definition to state claims against.
-/

/-! ## A293621.P12451896239337490886

`A096012(n+1)/2`
-/

namespace A293621.P12451896239337490886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096012 (n + 1) : ℚ) / 2

end

end A293621.P12451896239337490886

/-! ## A293621.P14206757030412513106

`floor(A108814(n+1)/2)`
-/

namespace A293621.P14206757030412513106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108814 (n + 1) : ℚ) / 2⌋

end

end A293621.P14206757030412513106

/-! ## A293621.P11184929900889570466

`floor(sqrt(A206328(n+1))/2)`
-/

namespace A293621.P11184929900889570466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A206328 (n + 1) : ℝ) / 2⌋

end

end A293621.P11184929900889570466

/-! ## A293621.P11531531436084248420

`floor(sqrt(A217583(n+1))/2)`
-/

namespace A293621.P11531531436084248420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A217583 (n + 1) : ℝ) / 2⌋

end

end A293621.P11531531436084248420

/-! ## A293621.P12277003291981466931

`A001912(eq[1, A206400(n+1)])`
-/

namespace A293621.P12277003291981466931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293621.P12277003291981466931

/-! ## A293621.P325815293902198375

`A001912(record[(n+1)/A214517(n+1)])`
-/

namespace A293621.P325815293902198375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214517 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A293621.P325815293902198375

/-! ## A293621.P17484758352056574405

`∩[A001912(n+1)-1, A001912(n+1)]`
-/

namespace A293621.P17484758352056574405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293621.P17484758352056574405

/-! ## A293621.P8208450235577591001

`A001912(eq[1, A001912(n+2)-A001912(n+1)]+1)`
-/

namespace A293621.P8208450235577591001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2) - A001912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293621.P8208450235577591001

/-! ## A293621.P12457291969994219130

`A001281(A096012(n+1))`
-/

namespace A293621.P12457291969994219130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A096012 (n + 1)).toNat

end

end A293621.P12457291969994219130

/-! ## A293621.P11275350941075620059

`A004524(A108814(n+1))`
-/

namespace A293621.P11275350941075620059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A108814 (n + 1)).toNat

end

end A293621.P11275350941075620059

/-!
# A293622: Fermat pseudoprimes to base 2 that are triangular.

The programs for A293622, there is no canonical definition to state claims against.
-/

/-! ## A293622.P1304150693809726649

`∩[A001567(n+1), C(n+7, 2)]`
-/

namespace A293622.P1304150693809726649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A293622.P1304150693809726649

/-! ## A293622.P17022937696725770422

`∩[A001567(n+1), A000217(n)]`
-/

namespace A293622.P17022937696725770422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P17022937696725770422

/-! ## A293622.P13467008602567406993

`∩[A001567(n+1), A061304(n+1)]`
-/

namespace A293622.P13467008602567406993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P13467008602567406993

/-! ## A293622.P16111389959017708934

`∩[A001567(n+1), A014493(n+1)]`
-/

namespace A293622.P16111389959017708934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P16111389959017708934

/-! ## A293622.P14789333869835209529

`∩[A001567(n+1), A272398(n+1)]`
-/

namespace A293622.P14789333869835209529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P14789333869835209529

/-! ## A293622.P8806951751753951413

`∩[A001567(n+1), A117520(n+1)]`
-/

namespace A293622.P8806951751753951413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P8806951751753951413

/-! ## A293622.P3783735870193204503

`∩[A001567(n+1), A129966(n+1)]`
-/

namespace A293622.P3783735870193204503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P3783735870193204503

/-! ## A293622.P5180157390215528935

`∩[A001567(n+1), A161777(n+1)]`
-/

namespace A293622.P5180157390215528935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P5180157390215528935

/-! ## A293622.P12438303303280837402

`∩[A001567(n+1), A000096(n)+1]`
-/

namespace A293622.P12438303303280837402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P12438303303280837402

/-! ## A293622.P7138020666555065742

`∩[A001567(n+1), A074314(n+1)]`
-/

namespace A293622.P7138020666555065742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293622.P7138020666555065742

/-!
# A293623: Fermat pseudoprimes to base 2 that are pentagonal.

The programs for A293623, there is no canonical definition to state claims against.
-/

/-! ## A293623.P8096839890754658544

`∩[A001567(n+1), A033570(n)]`
-/

namespace A293623.P8096839890754658544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293623.P8096839890754658544

/-! ## A293623.P10695362505718554364

`∩[A001567(n+1), n*A032766(n)]`
-/

namespace A293623.P10695362505718554364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293623.P10695362505718554364

/-!
# A293625: Generators of Fermat pseudoprimes to base 2 that are square pyramidal numbers: numbers k such that 12*k+1, 18*k+1 and 36*k+1 are all primes.

The programs for A293625, there is no canonical definition to state claims against.
-/

/-! ## A293625.P1281579894205237006

`eq[3, A066272(18*n+1)]`
-/

namespace A293625.P1281579894205237006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (18 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293625.P1281579894205237006

/-!
# A293626: Numbers of the form (2^(2p) + 1)/5, where p is a prime > 5.

The programs for A293626, there is no canonical definition to state claims against.
-/

/-! ## A293626.P4113923521956417791

`A113876(p?[a(n-1)+2])` with `a(0)=32, a(1)=7`
-/

namespace A293626.P4113923521956417791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113876 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A293626.P4113923521956417791

/-! ## A293626.P4636375810313299547

`A014985(A004139(n+2))`
-/

namespace A293626.P4636375810313299547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014985 (A004139 (n + 2)).toNat

end

end A293626.P4636375810313299547

/-! ## A293626.P16113138495352671770

`A066845(A197638(n+2))`
-/

namespace A293626.P16113138495352671770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (A197638 (n + 2)).toNat

end

end A293626.P16113138495352671770

/-! ## A293626.P17361418494961627620

`A014985(A000040(n+4))`
-/

namespace A293626.P17361418494961627620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014985 (A000040 (n + 4)).toNat

end

end A293626.P17361418494961627620

/-! ## A293626.P15215959672146328140

`A256494(A197638(n+2)+1)`
-/

namespace A293626.P15215959672146328140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (A197638 (n + 2) + 1).toNat

end

end A293626.P15215959672146328140

/-!
# A293628: Expansion of Product_{k>0} ((1 - q^(2*k))^3*(1 - q^(6*k))*(1 - q^(12*k)))/((1 - q^k)^4*(1 - q^(4*k))).

The programs for A293628, there is no canonical definition to state claims against.
-/

/-! ## A293628.P14582233191317341742

`1/2*A102186(3*n+2)`
-/

namespace A293628.P14582233191317341742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A102186 (3 * n + 2) : ℚ)

end

end A293628.P14582233191317341742

/-! ## A293628.P9326751415579709037

`A102186(3*n+2)/2`
-/

namespace A293628.P9326751415579709037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102186 (3 * n + 2) : ℚ) / 2

end

end A293628.P9326751415579709037

/-! ## A293628.P17924716000632559568

`floor(A102186(A016789(n))/2)`
-/

namespace A293628.P17924716000632559568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102186 (A016789 n).toNat : ℚ) / 2⌋

end

end A293628.P17924716000632559568

/-! ## A293628.P10954288230543233682

`record[A102186(A014682(n))/A000034(n)]`
-/

namespace A293628.P10954288230543233682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102186 (A014682 n).toNat : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293628.P10954288230543233682

/-! ## A293628.P16300554042505207619

`A102186(A016789(n))/(2-A000007(n))-A000007(n)`
-/

namespace A293628.P16300554042505207619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102186 (A016789 n).toNat : ℚ) / (2 - A000007 n : ℚ) - (A000007 n : ℚ)

end

end A293628.P16300554042505207619

/-!
# A293629: Expansion of Product_{k>0} ((1 - q^(3*k))^4*(1 - q^(6*k))^2)/((1 - q^k)^4*(1 - q^(2*k))^2).

The programs for A293629, there is no canonical definition to state claims against.
-/

/-! ## A293629.P10579832320316635624

`1/3*A293569(3*n+2)`
-/

namespace A293629.P10579832320316635624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A293569 (3 * n + 2) : ℚ)

end

end A293629.P10579832320316635624

/-! ## A293629.P4868241595855400523

`A293569(3*n+2)/3`
-/

namespace A293629.P4868241595855400523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293569 (3 * n + 2) : ℚ) / 3

end

end A293629.P4868241595855400523

/-! ## A293629.P10400222592942433709

`floor(A293569(A016789(n))/3)`
-/

namespace A293629.P10400222592942433709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293569 (A016789 n).toNat : ℚ) / 3⌋

end

end A293629.P10400222592942433709

/-! ## A293629.P16022217366219756197

`round(A293569(A016789(n))/3%A212452(n+1))`
-/

namespace A293629.P16022217366219756197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293569 (A016789 n).toNat : ℚ) / (Int.tmod 3 (A212452 (n + 1)) : ℚ))

end

end A293629.P16022217366219756197

/-! ## A293629.P5321031325220492002

`(A293569(A016789(n))/3)%A038607(n+1)`
-/

namespace A293629.P5321031325220492002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A293569 (A016789 n).toNat : ℚ) / 3)) (A038607 (n + 1))

end

end A293629.P5321031325220492002

/-!
# A293630: "Look to the left" sequence starting with (1, 2): when the sequence has n terms, extend it by appending a(n) copies of a(1..n-1).

The programs for A293630, there is no canonical definition to state claims against.
-/

/-! ## A293630.P7188167820128904538

`Δ[A298606(A028310(n))]!`
-/

namespace A293630.P7188167820128904538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A293630.P7188167820128904538

/-! ## A293630.P314755903365561294

`∏{p}[Δ[A298606(A028310(n))], A000041(#)]`
-/

namespace A293630.P314755903365561294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 p

end

end A293630.P314755903365561294

/-! ## A293630.P4660164762584794785

`∏{p}[Δ[A298606(A028310(n))], A005811(#)]`
-/

namespace A293630.P4660164762584794785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005811 p

end

end A293630.P4660164762584794785

/-! ## A293630.P17031072035502309319

`∏{p}[Δ[A298606(A028310(n))], A061854(#)]`
-/

namespace A293630.P17031072035502309319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061854 p

end

end A293630.P17031072035502309319

/-! ## A293630.P6255131535837630814

`∏{p}[A298606(n+1)-A298606(A028310(n)), #]`
-/

namespace A293630.P6255131535837630814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (n + 1) - A298606 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293630.P6255131535837630814

/-! ## A293630.P7757023606399648681

`Δ[A298606(A123108(2*n))]!`
-/

namespace A293630.P7757023606399648681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298606 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A293630.P7757023606399648681

/-! ## A293630.P13358200101182283138

`A322426(∑[n]+2)`
-/

namespace A293630.P13358200101182283138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293630.P13358200101182283138

/-! ## A293630.P18038473034861912982

`A322426(A000217(n)+2)%3`
-/

namespace A293630.P18038473034861912982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322426 (A000217 n + 2).toNat) 3

end

end A293630.P18038473034861912982

/-! ## A293630.P13677312458990257293

`∏{d}[1-A322426(A000217(n)+2), A000040(#)]`
-/

namespace A293630.P13677312458990257293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322426 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000040 d

end

end A293630.P13677312458990257293

/-! ## A293630.P14695459685200289224

`∏{d}[1-A322426(A000217(n)+2), A274640(#)]`
-/

namespace A293630.P14695459685200289224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322426 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A274640 d

end

end A293630.P14695459685200289224

/-!
# A293631: Greatest integer k such that k/Fibonacci(n) <= 3/4.

The programs for A293631, the canonical program `A293631.P28781918714373891` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293631 has offset 1).

The definition of A293631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293631.P28781918714373891

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=6, a(6)=9, a(7)=15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293631

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P28781918714373891.Spec : Prop :=
  ∀ n, P28781918714373891.a n = A293631 (n + 1)

theorem P28781918714373891.correct : P28781918714373891.Spec := by
  intro n
  simp only [A293631, Nat.add_sub_cancel]

end A293631

/-! ## A293631.P8045311299767304355

`floor(3/4*A000045(n+1))`
-/

namespace A293631.P8045311299767304355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 4 * (A000045 (n + 1) : ℚ)⌋

end

end A293631.P8045311299767304355

namespace A293631

/-- `floor(3/4*A000045(n+1))` -/
def P8045311299767304355.Spec : Prop :=
  ∀ n, P8045311299767304355.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P1478694158281151578

`A293553(n+1)+A004695(n+1)`
-/

namespace A293631.P1478694158281151578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (n + 1) + A004695 (n + 1)

end

end A293631.P1478694158281151578

namespace A293631

/-- `A293553(n+1)+A004695(n+1)` -/
def P1478694158281151578.Spec : Prop :=
  ∀ n, P1478694158281151578.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P1392724265768042415

`A000045(n+1)-A293552(n+1)`
-/

namespace A293631.P1392724265768042415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A293552 (n + 1)

end

end A293631.P1392724265768042415

namespace A293631

/-- `A000045(n+1)-A293552(n+1)` -/
def P1392724265768042415.Spec : Prop :=
  ∀ n, P1392724265768042415.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P3853885957017968578

`A001611(n+1)-(A293552(n+1)+1)`
-/

namespace A293631.P3853885957017968578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - (A293552 (n + 1) + 1)

end

end A293631.P3853885957017968578

namespace A293631

/-- `A001611(n+1)-(A293552(n+1)+1)` -/
def P3853885957017968578.Spec : Prop :=
  ∀ n, P3853885957017968578.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P3338522081386517503

`A000071(n+1)-floor(A000071(n+1)/4)`
-/

namespace A293631.P3338522081386517503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - ⌊(A000071 (n + 1) : ℚ) / 4⌋

end

end A293631.P3338522081386517503

namespace A293631

/-- `A000071(n+1)-floor(A000071(n+1)/4)` -/
def P3338522081386517503.Spec : Prop :=
  ∀ n, P3338522081386517503.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P1192160936822675821

`A027976(n)-(A131132(n)+A004695(n+1))`
-/

namespace A293631.P1192160936822675821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027976 n - (A131132 n + A004695 (n + 1))

end

end A293631.P1192160936822675821

namespace A293631

/-- `A027976(n)-(A131132(n)+A004695(n+1))` -/
def P1192160936822675821.Spec : Prop :=
  ∀ n, P1192160936822675821.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P1002879994474683365

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=3, a(1)=0`
-/

namespace A293631.P1002879994474683365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A293631.P1002879994474683365

namespace A293631

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P1002879994474683365.Spec : Prop :=
  ∀ n, P1002879994474683365.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P7840317942886200986

`floor(A131326(n)/4)`
-/

namespace A293631.P7840317942886200986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131326 n : ℚ) / 4⌋

end

end A293631.P7840317942886200986

namespace A293631

/-- `floor(A131326(n)/4)` -/
def P7840317942886200986.Spec : Prop :=
  ∀ n, P7840317942886200986.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P4587739192139303244

`round(A111314(n)/4)`
-/

namespace A293631.P4587739192139303244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A111314 n : ℚ) / 4)

end

end A293631.P4587739192139303244

namespace A293631

/-- `round(A111314(n)/4)` -/
def P4587739192139303244.Spec : Prop :=
  ∀ n, P4587739192139303244.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P15110965231741732298

`floor(A022086(n+1)/4)`
-/

namespace A293631.P15110965231741732298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022086 (n + 1) : ℚ) / 4⌋

end

end A293631.P15110965231741732298

namespace A293631

/-- `floor(A022086(n+1)/4)` -/
def P15110965231741732298.Spec : Prop :=
  ∀ n, P15110965231741732298.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P12660790934795591044

`ceil(A187893(n+1)/4)-1`
-/

namespace A293631.P12660790934795591044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187893 (n + 1) : ℚ) / 4⌉ - 1

end

end A293631.P12660790934795591044

namespace A293631

/-- `ceil(A187893(n+1)/4)-1` -/
def P12660790934795591044.Spec : Prop :=
  ∀ n, P12660790934795591044.a n = A293631 (n + 1)

end A293631

/-! ## A293631.P17003821649067958397

`round(Δ[A192953(n)/4])`
-/

namespace A293631.P17003821649067958397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192953 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A293631.P17003821649067958397

namespace A293631

/-- `round(Δ[A192953(n)/4])` -/
def P17003821649067958397.Spec : Prop :=
  ∀ n, P17003821649067958397.a n = A293631 (n + 1)

end A293631

/-!
# A293632: Least integer k such that k/Fibonacci(n) >= 3/4.

The programs for A293632, the canonical program `A293632.P5247206660475103088` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293632 has offset 1).

The definition of A293632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293632.P5247206660475103088

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293632

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-7)` -/
def P5247206660475103088.Spec : Prop :=
  ∀ n, P5247206660475103088.a n = A293632 (n + 1)

theorem P5247206660475103088.correct : P5247206660475103088.Spec := by
  intro n
  simp only [A293632, Nat.add_sub_cancel]

end A293632

/-! ## A293632.P8079886110162038368

`ceil(3/4*A000045(n+1))`
-/

namespace A293632.P8079886110162038368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 4 * (A000045 (n + 1) : ℚ)⌉

end

end A293632.P8079886110162038368

namespace A293632

/-- `ceil(3/4*A000045(n+1))` -/
def P8079886110162038368.Spec : Prop :=
  ∀ n, P8079886110162038368.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P7622222467766627028

`A227047(n+2)-A004697(n)`
-/

namespace A293632.P7622222467766627028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (n + 2) - A004697 n

end

end A293632.P7622222467766627028

namespace A293632

/-- `A227047(n+2)-A004697(n)` -/
def P7622222467766627028.Spec : Prop :=
  ∀ n, P7622222467766627028.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P7605205690644597029

`A000045(n+1)-A004697(n+1)`
-/

namespace A293632.P7605205690644597029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A004697 (n + 1)

end

end A293632.P7605205690644597029

namespace A293632

/-- `A000045(n+1)-A004697(n+1)` -/
def P7605205690644597029.Spec : Prop :=
  ∀ n, P7605205690644597029.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P10196202635228237583

`A000071(n+1)+1-A004697(n+1)`
-/

namespace A293632.P10196202635228237583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (1 - A004697 (n + 1))

end

end A293632.P10196202635228237583

namespace A293632

/-- `A000071(n+1)+1-A004697(n+1)` -/
def P10196202635228237583.Spec : Prop :=
  ∀ n, P10196202635228237583.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P18038655521162860346

`A131132(n)-(A293553(n)+A004697(n))`
-/

namespace A293632.P18038655521162860346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 n - (A293553 n + A004697 n)

end

end A293632.P18038655521162860346

namespace A293632

/-- `A131132(n)-(A293553(n)+A004697(n))` -/
def P18038655521162860346.Spec : Prop :=
  ∀ n, P18038655521162860346.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P2273788390791070295

`A000045(n+1)+A179006(n)-A179006(n+1)`
-/

namespace A293632.P2273788390791070295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A179006 n - A179006 (n + 1))

end

end A293632.P2273788390791070295

namespace A293632

/-- `A000045(n+1)+A179006(n)-A179006(n+1)` -/
def P2273788390791070295.Spec : Prop :=
  ∀ n, P2273788390791070295.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P4410390500576609165

`ceil(A286311(n+1)/2)`
-/

namespace A293632.P4410390500576609165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286311 (n + 1) : ℚ) / 2⌉

end

end A293632.P4410390500576609165

namespace A293632

/-- `ceil(A286311(n+1)/2)` -/
def P4410390500576609165.Spec : Prop :=
  ∀ n, P4410390500576609165.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P12600188683219483195

`ceil(A022086(n+1)/4)`
-/

namespace A293632.P12600188683219483195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022086 (n + 1) : ℚ) / 4⌉

end

end A293632.P12600188683219483195

namespace A293632

/-- `ceil(A022086(n+1)/4)` -/
def P12600188683219483195.Spec : Prop :=
  ∀ n, P12600188683219483195.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P1909593397348228692

`round(A187893(n+1)/4)`
-/

namespace A293632.P1909593397348228692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A187893 (n + 1) : ℚ) / 4)

end

end A293632.P1909593397348228692

namespace A293632

/-- `round(A187893(n+1)/4)` -/
def P1909593397348228692.Spec : Prop :=
  ∀ n, P1909593397348228692.a n = A293632 (n + 1)

end A293632

/-! ## A293632.P15492512994994477950

`ceil(9*A212804(n+2)/12)`
-/

namespace A293632.P15492512994994477950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 * A212804 (n + 2) : ℚ) / 12⌉

end

end A293632.P15492512994994477950

namespace A293632

/-- `ceil(9*A212804(n+2)/12)` -/
def P15492512994994477950.Spec : Prop :=
  ∀ n, P15492512994994477950.a n = A293632 (n + 1)

end A293632

/-!
# A293633: a(n) is the integer k that minimizes |k/Fibonacci(n) - 3/4|.

The programs for A293633, the canonical program `A293633.P15729169089698166078` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293633 has offset 1).

The definition of A293633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293633.P15729169089698166078

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=6, a(6)=10, a(7)=16`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293633

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P15729169089698166078.Spec : Prop :=
  ∀ n, P15729169089698166078.a n = A293633 (n + 1)

theorem P15729169089698166078.correct : P15729169089698166078.Spec := by
  intro n
  simp only [A293633, Nat.add_sub_cancel]

end A293633

/-! ## A293633.P13593478850939179821

`round(3/4*A000045(n+1))`
-/

namespace A293633.P13593478850939179821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 4 * (A000045 (n + 1) : ℚ))

end

end A293633.P13593478850939179821

namespace A293633

/-- `round(3/4*A000045(n+1))` -/
def P13593478850939179821.Spec : Prop :=
  ∀ n, P13593478850939179821.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P15863504563487397386

`A131132(n)-A004695(n)`
-/

namespace A293633.P15863504563487397386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 n - A004695 n

end

end A293633.P15863504563487397386

namespace A293633

/-- `A131132(n)-A004695(n)` -/
def P15863504563487397386.Spec : Prop :=
  ∀ n, P15863504563487397386.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P10847771338995304178

`A293552(n+1)+A004695(n+1)`
-/

namespace A293633.P10847771338995304178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (n + 1) + A004695 (n + 1)

end

end A293633.P10847771338995304178

namespace A293633

/-- `A293552(n+1)+A004695(n+1)` -/
def P10847771338995304178.Spec : Prop :=
  ∀ n, P10847771338995304178.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P1283028736488797926

`A000045(n+1)-A293553(n+1)`
-/

namespace A293633.P1283028736488797926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A293553 (n + 1)

end

end A293633.P1283028736488797926

namespace A293633

/-- `A000045(n+1)-A293553(n+1)` -/
def P1283028736488797926.Spec : Prop :=
  ∀ n, P1283028736488797926.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P17855412553085875060

`ceil(A286350(n+1)/2)`
-/

namespace A293633.P17855412553085875060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286350 (n + 1) : ℚ) / 2⌉

end

end A293633.P17855412553085875060

namespace A293633

/-- `ceil(A286350(n+1)/2)` -/
def P17855412553085875060.Spec : Prop :=
  ∀ n, P17855412553085875060.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P8908117234642366448

`A293632(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A293633.P8908117234642366448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293632 (n + 2) - a (n - 1)

end

end A293633.P8908117234642366448

namespace A293633

/-- `A293632(n+2)-a(n-1)` -/
def P8908117234642366448.Spec : Prop :=
  ∀ n, P8908117234642366448.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P3139209606875400853

`ceil((A005252(n)+A000045(n+1))/2)`
-/

namespace A293633.P3139209606875400853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005252 n + A000045 (n + 1) : ℚ) / 2⌉

end

end A293633.P3139209606875400853

namespace A293633

/-- `ceil((A005252(n)+A000045(n+1))/2)` -/
def P3139209606875400853.Spec : Prop :=
  ∀ n, P3139209606875400853.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P10436023984340509314

`Δ[A293632(n+2)]+and(1, A265036(n+1))`
-/

namespace A293633.P10436023984340509314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293632 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.land 1 (A265036 (n + 1))

end

end A293633.P10436023984340509314

namespace A293633

/-- `Δ[A293632(n+2)]+and(1, A265036(n+1))` -/
def P10436023984340509314.Spec : Prop :=
  ∀ n, P10436023984340509314.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P13497991069115515090

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=5, a(1)=0, a(2)=3`
-/

namespace A293633.P13497991069115515090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A293633.P13497991069115515090

namespace A293633

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P13497991069115515090.Spec : Prop :=
  ∀ n, P13497991069115515090.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P3278701160930619248

`round(A022086(n+1)/4)`
-/

namespace A293633.P3278701160930619248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022086 (n + 1) : ℚ) / 4)

end

end A293633.P3278701160930619248

namespace A293633

/-- `round(A022086(n+1)/4)` -/
def P3278701160930619248.Spec : Prop :=
  ∀ n, P3278701160930619248.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P13165693507323532995

`floor((3*A000071(n+1)+1)/4)+1`
-/

namespace A293633.P13165693507323532995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A000071 (n + 1) + 1 : ℚ) / 4⌋ + 1

end

end A293633.P13165693507323532995

namespace A293633

/-- `floor((3*A000071(n+1)+1)/4)+1` -/
def P13165693507323532995.Spec : Prop :=
  ∀ n, P13165693507323532995.a n = A293633 (n + 1)

end A293633

/-! ## A293633.P9257830811651210300

`round((A055389(n+1)+A000045(n+1))/4)`
-/

namespace A293633.P9257830811651210300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055389 (n + 1) + A000045 (n + 1) : ℚ) / 4)

end

end A293633.P9257830811651210300

namespace A293633

/-- `round((A055389(n+1)+A000045(n+1))/4)` -/
def P9257830811651210300.Spec : Prop :=
  ∀ n, P9257830811651210300.a n = A293633 (n + 1)

end A293633

/-!
# A293635: Positions of superabundant numbers in the sequence of primorial products.

The programs for A293635, there is no canonical definition to state claims against.
-/

/-! ## A293635.P10541396029009018850

`A085089(A004394(n+1))`
-/

namespace A293635.P10541396029009018850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A004394 (n + 1)).toNat

end

end A293635.P10541396029009018850

/-! ## A293635.P573859704749420071

`A085089(A077006(n+1))`
-/

namespace A293635.P573859704749420071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A077006 (n + 1)).toNat

end

end A293635.P573859704749420071

/-! ## A293635.P671751483556031533

`A085089(A166981(n+1))`
-/

namespace A293635.P671751483556031533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A166981 (n + 1)).toNat

end

end A293635.P671751483556031533

/-! ## A293635.P14782796066861897957

`A101296(A004394(-xor(n, -1)))`
-/

namespace A293635.P14782796066861897957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A004394 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A293635.P14782796066861897957

/-! ## A293635.P13969827692528268363

`A101296(A004394(n+1))%A000211(n)`
-/

namespace A293635.P13969827692528268363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A004394 (n + 1)).toNat) (A000211 n)

end

end A293635.P13969827692528268363

/-!
# A293636: a(1) = a(2) = 1; a(n) = ( Sum_{i|(n-1)} a(i) ) + Sum_{j|(n-2)} a(j).

The programs for A293636, there is no canonical definition to state claims against.
-/

/-! ## A293636.P386489973400385799

`A320791(n+6)+A055396(A320806(n))`
-/

namespace A293636.P386489973400385799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320791 (n + 6) + A055396 (A320806 n).toNat

end

end A293636.P386489973400385799

/-! ## A293636.P14045061378066391035

`A232746(∑[A156304(n)])`
-/

namespace A293636.P14045061378066391035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293636.P14045061378066391035

/-! ## A293636.P10085709078509857699

`A035936(∑[A007436(n+1)]²)`
-/

namespace A293636.P10085709078509857699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A293636.P10085709078509857699

/-! ## A293636.P9330197818824687269

`A201206(∑[A007436(n+1)]²)`
-/

namespace A293636.P9330197818824687269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A293636.P9330197818824687269

/-! ## A293636.P13089620845342622808

`A000991(n)-A000989(A000245(n))`
-/

namespace A293636.P13089620845342622808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000991 n - A000989 (A000245 n).toNat

end

end A293636.P13089620845342622808

/-!
# A293637: a(n) is the least integer k such that k/Fibonacci(n) > 1/5.

The programs for A293637, the canonical program `A293637.P15390255035316120638` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293637 has offset 0).

The definition of A293637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293637.P15390255035316120638

`A011558(n)+A004698(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293637

/-- `A011558(n)+A004698(n)` -/
def P15390255035316120638.Spec : Prop :=
  ∀ n, P15390255035316120638.a n = A293637 n

theorem P15390255035316120638.correct : P15390255035316120638.Spec := by
  intro n
  simp only [A293637]

end A293637

/-! ## A293637.P971100939258319970

`ceil(A293640(n)/2)`
-/

namespace A293637.P971100939258319970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293640 n : ℚ) / 2⌉

end

end A293637.P971100939258319970

namespace A293637

/-- `ceil(A293640(n)/2)` -/
def P971100939258319970.Spec : Prop :=
  ∀ n, P971100939258319970.a n = A293637 n

end A293637

/-! ## A293637.P5509523780970781927

`A293640(n)-A293638(n)`
-/

namespace A293637.P5509523780970781927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n - A293638 n

end

end A293637.P5509523780970781927

namespace A293637

/-- `A293640(n)-A293638(n)` -/
def P5509523780970781927.Spec : Prop :=
  ∀ n, P5509523780970781927.a n = A293637 n

theorem P5509523780970781927.correct : P5509523780970781927.Spec := by
  intro n
  simp only [A293637, Nat.add_sub_cancel, A293637.P5509523780970781927.a, A293637.P15390255035316120638.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293639, A293639.P9503296093773056529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293637

/-! ## A293637.P17238102807624982933

`A004698(n)+A293640(n)-A293639(n)`
-/

namespace A293637.P17238102807624982933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293640 n - A293639 n)

end

end A293637.P17238102807624982933

namespace A293637

/-- `A004698(n)+A293640(n)-A293639(n)` -/
def P17238102807624982933.Spec : Prop :=
  ∀ n, P17238102807624982933.a n = A293637 n

theorem P17238102807624982933.correct : P17238102807624982933.Spec := by
  intro n
  simp only [A293637, Nat.add_sub_cancel, A293637.P17238102807624982933.a, A293637.P15390255035316120638.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293637

/-! ## A293637.P5220263519788184633

`ceil(A293643(n)/3)`
-/

namespace A293637.P5220263519788184633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293643 n : ℚ) / 3⌉

end

end A293637.P5220263519788184633

namespace A293637

/-- `ceil(A293643(n)/3)` -/
def P5220263519788184633.Spec : Prop :=
  ∀ n, P5220263519788184633.a n = A293637 n

end A293637

/-! ## A293637.P4315445119749430562

`ceil(A293644(n)/3)`
-/

namespace A293637.P4315445119749430562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293644 n : ℚ) / 3⌉

end

end A293637.P4315445119749430562

namespace A293637

/-- `ceil(A293644(n)/3)` -/
def P4315445119749430562.Spec : Prop :=
  ∀ n, P4315445119749430562.a n = A293637 n

end A293637

/-! ## A293637.P13438331051239938348

`A293643(n)-A293641(n)`
-/

namespace A293637.P13438331051239938348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n - A293641 n

end

end A293637.P13438331051239938348

namespace A293637

/-- `A293643(n)-A293641(n)` -/
def P13438331051239938348.Spec : Prop :=
  ∀ n, P13438331051239938348.a n = A293637 n

theorem P13438331051239938348.correct : P13438331051239938348.Spec := by
  intro n
  simp only [A293637, Nat.add_sub_cancel, A293637.P13438331051239938348.a, A293637.P15390255035316120638.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293641, A293641.P3298730872533662908.a, A293643, A293643.P4507541113369721667.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293642, A293642.P4545341947688583851.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293637

/-! ## A293637.P9190870413092856694

`A293644(n)-A293639(n)`
-/

namespace A293637.P9190870413092856694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 n - A293639 n

end

end A293637.P9190870413092856694

namespace A293637

/-- `A293644(n)-A293639(n)` -/
def P9190870413092856694.Spec : Prop :=
  ∀ n, P9190870413092856694.a n = A293637 n

theorem P9190870413092856694.correct : P9190870413092856694.Spec := by
  intro n
  simp only [A293637, Nat.add_sub_cancel, A293637.P9190870413092856694.a, A293637.P15390255035316120638.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293644, A293644.P9174250443400626299.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293637

/-! ## A293637.P12088705287440034757

`A004698(n)+A293643(n)-A293642(n)`
-/

namespace A293637.P12088705287440034757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293643 n - A293642 n)

end

end A293637.P12088705287440034757

namespace A293637

/-- `A004698(n)+A293643(n)-A293642(n)` -/
def P12088705287440034757.Spec : Prop :=
  ∀ n, P12088705287440034757.a n = A293637 n

theorem P12088705287440034757.correct : P12088705287440034757.Spec := by
  intro n
  simp only [A293637, Nat.add_sub_cancel, A293637.P12088705287440034757.a, A293637.P15390255035316120638.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293642, A293642.P4545341947688583851.a, A293643, A293643.P4507541113369721667.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293641, A293641.P3298730872533662908.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293637

/-! ## A293637.P1526785070260008228

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=4, a(1)=1, a(2)=0`
-/

namespace A293637.P1526785070260008228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293637.P1526785070260008228

namespace A293637

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P1526785070260008228.Spec : Prop :=
  ∀ n, P1526785070260008228.a n = A293637 n

end A293637

/-! ## A293637.P354958319147626801

`ceil(A000045(n)/5)`
-/

namespace A293637.P354958319147626801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 n : ℚ) / 5⌉

end

end A293637.P354958319147626801

namespace A293637

/-- `ceil(A000045(n)/5)` -/
def P354958319147626801.Spec : Prop :=
  ∀ n, P354958319147626801.a n = A293637 n

end A293637

/-! ## A293637.P12239701474481549960

`ceil(A212804(n+1)/5)`
-/

namespace A293637.P12239701474481549960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212804 (n + 1) : ℚ) / 5⌉

end

end A293637.P12239701474481549960

namespace A293637

/-- `ceil(A212804(n+1)/5)` -/
def P12239701474481549960.Spec : Prop :=
  ∀ n, P12239701474481549960.a n = A293637 n

end A293637

/-! ## A293637.P12987847823164763059

`ceil((A001611(n)-1)/5)`
-/

namespace A293637.P12987847823164763059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001611 n - 1 : ℚ) / 5⌉

end

end A293637.P12987847823164763059

namespace A293637

/-- `ceil((A001611(n)-1)/5)` -/
def P12987847823164763059.Spec : Prop :=
  ∀ n, P12987847823164763059.a n = A293637 n

end A293637

/-! ## A293637.P12279177026177885654

`ceil(A103609(2*n)/5)`
-/

namespace A293637.P12279177026177885654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103609 (2 * n) : ℚ) / 5⌉

end

end A293637.P12279177026177885654

namespace A293637

/-- `ceil(A103609(2*n)/5)` -/
def P12279177026177885654.Spec : Prop :=
  ∀ n, P12279177026177885654.a n = A293637 n

end A293637

/-! ## A293637.P13297492259190907130

`ceil(∑[A212804(abs(1-n))]/5)`
-/

namespace A293637.P13297492259190907130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌉

end

end A293637.P13297492259190907130

namespace A293637

/-- `ceil(∑[A212804(abs(1-n))]/5)` -/
def P13297492259190907130.Spec : Prop :=
  ∀ n, P13297492259190907130.a n = A293637 n

end A293637

/-! ## A293637.P18373824227381828957

`A000045(n)-A293671(n)`
-/

namespace A293637.P18373824227381828957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293671 n

end

end A293637.P18373824227381828957

namespace A293637

/-- `A000045(n)-A293671(n)` -/
def P18373824227381828957.Spec : Prop :=
  ∀ n, P18373824227381828957.a n = A293637 n

end A293637

/-! ## A293637.P12309884051883257154

`A293673(n)-A293642(n)`
-/

namespace A293637.P12309884051883257154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293673 n - A293642 n

end

end A293637.P12309884051883257154

namespace A293637

/-- `A293673(n)-A293642(n)` -/
def P12309884051883257154.Spec : Prop :=
  ∀ n, P12309884051883257154.a n = A293637 n

end A293637

/-! ## A293637.P9517144442882556206

`A212804(n+1)-A293671(n)`
-/

namespace A293637.P9517144442882556206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293671 n

end

end A293637.P9517144442882556206

namespace A293637

/-- `A212804(n+1)-A293671(n)` -/
def P9517144442882556206.Spec : Prop :=
  ∀ n, P9517144442882556206.a n = A293637 n

end A293637

/-! ## A293637.P7776078110886295923

`ceil((A293545(n)+A293543(n))/5)`
-/

namespace A293637.P7776078110886295923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293545 n + A293543 n : ℚ) / 5⌉

end

end A293637.P7776078110886295923

namespace A293637

/-- `ceil((A293545(n)+A293543(n))/5)` -/
def P7776078110886295923.Spec : Prop :=
  ∀ n, P7776078110886295923.a n = A293637 n

end A293637

/-! ## A293637.P13229103372665388922

`ceil(lcm(A167808(n), A167816(n))/5)`
-/

namespace A293637.P13229103372665388922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (A167808 n) (A167816 n) : ℚ) / 5⌉

end

end A293637.P13229103372665388922

namespace A293637

/-- `ceil(lcm(A167808(n), A167816(n))/5)` -/
def P13229103372665388922.Spec : Prop :=
  ∀ n, P13229103372665388922.a n = A293637 n

end A293637

/-!
# A293638: a(n) is the integer k that minimizes |k/Fibonacci(n) - 1/5|.

The programs for A293638, the canonical program `A293638.P8604032493732434023` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293638 has offset 0).

The definition of A293638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293638.P3664256330619196052

`floor(A293640(n)/2)`
-/

namespace A293638.P3664256330619196052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293640 n : ℚ) / 2⌋

end

end A293638.P3664256330619196052

namespace A293638

/-- `floor(A293640(n)/2)` -/
def P3664256330619196052.Spec : Prop :=
  ∀ n, P3664256330619196052.a n = A293638 n

end A293638

/-! ## A293638.P1387384924075525806

`ceil(A293639(n)/2)`
-/

namespace A293638.P1387384924075525806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293639 n : ℚ) / 2⌉

end

end A293638.P1387384924075525806

namespace A293638

/-- `ceil(A293639(n)/2)` -/
def P1387384924075525806.Spec : Prop :=
  ∀ n, P1387384924075525806.a n = A293638 n

end A293638

/-! ## A293638.P2612596754310135319

`A293639(n)-A004698(n)`
-/

namespace A293638.P2612596754310135319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n - A004698 n

end

end A293638.P2612596754310135319

namespace A293638

/-- `A293639(n)-A004698(n)` -/
def P2612596754310135319.Spec : Prop :=
  ∀ n, P2612596754310135319.a n = A293638 n

theorem P2612596754310135319.correct : P2612596754310135319.Spec := by
  intro n
  simp only [A293638, Nat.add_sub_cancel, A293638.P2612596754310135319.a, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A004698, A004698.P15694019374451496152.a, A293639, A293639.P9503296093773056529.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293638

/-! ## A293638.P10263547874432565034

`A293640(n)-A293637(n)`
-/

namespace A293638.P10263547874432565034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n - A293637 n

end

end A293638.P10263547874432565034

namespace A293638

/-- `A293640(n)-A293637(n)` -/
def P10263547874432565034.Spec : Prop :=
  ∀ n, P10263547874432565034.a n = A293638 n

theorem P10263547874432565034.correct : P10263547874432565034.Spec := by
  intro n
  simp only [A293638, Nat.add_sub_cancel, A293638.P10263547874432565034.a, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293637, A293637.P15390255035316120638.a, A293640, A293640.P11125392320751003996.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293638

/-! ## A293638.P9515344088308592974

`round(A293644(n)/3)`
-/

namespace A293638.P9515344088308592974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293644 n : ℚ) / 3)

end

end A293638.P9515344088308592974

namespace A293638

/-- `round(A293644(n)/3)` -/
def P9515344088308592974.Spec : Prop :=
  ∀ n, P9515344088308592974.a n = A293638 n

end A293638

/-! ## A293638.P16752951171248590191

`A293639(n)+A293640(n)-A293644(n)`
-/

namespace A293638.P16752951171248590191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293640 n - A293644 n)

end

end A293638.P16752951171248590191

namespace A293638

/-- `A293639(n)+A293640(n)-A293644(n)` -/
def P16752951171248590191.Spec : Prop :=
  ∀ n, P16752951171248590191.a n = A293638 n

theorem P16752951171248590191.correct : P16752951171248590191.Spec := by
  intro n
  simp only [A293638, Nat.add_sub_cancel, A293638.P16752951171248590191.a, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A293644, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293638

/-! ## A293638.P10776176542878631473

`A293639(n)+A293641(n)-A293642(n)`
-/

namespace A293638.P10776176542878631473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293641 n - A293642 n)

end

end A293638.P10776176542878631473

namespace A293638

/-- `A293639(n)+A293641(n)-A293642(n)` -/
def P10776176542878631473.Spec : Prop :=
  ∀ n, P10776176542878631473.a n = A293638 n

theorem P10776176542878631473.correct : P10776176542878631473.Spec := by
  intro n
  simp only [A293638, Nat.add_sub_cancel, A293638.P10776176542878631473.a, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293639, A293639.P9503296093773056529.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293638

/-! ## A293638.P2597804937628760278

`A293640(n)+A293641(n)-A293643(n)`
-/

namespace A293638.P2597804937628760278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293641 n - A293643 n)

end

end A293638.P2597804937628760278

namespace A293638

/-- `A293640(n)+A293641(n)-A293643(n)` -/
def P2597804937628760278.Spec : Prop :=
  ∀ n, P2597804937628760278.a n = A293638 n

theorem P2597804937628760278.correct : P2597804937628760278.Spec := by
  intro n
  simp only [A293638, Nat.add_sub_cancel, A293638.P2597804937628760278.a, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A293641, A293641.P3298730872533662908.a, A293643, A293643.P4507541113369721667.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293642, A293642.P4545341947688583851.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293638

/-! ## A293638.P8604032493732434023

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293638

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P8604032493732434023.Spec : Prop :=
  ∀ n, P8604032493732434023.a n = A293638 n

theorem P8604032493732434023.correct : P8604032493732434023.Spec := by
  intro n
  simp only [A293638]

end A293638

/-! ## A293638.P1258134496278311255

`round(A000045(n)/5)`
-/

namespace A293638.P1258134496278311255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 n : ℚ) / 5)

end

end A293638.P1258134496278311255

namespace A293638

/-- `round(A000045(n)/5)` -/
def P1258134496278311255.Spec : Prop :=
  ∀ n, P1258134496278311255.a n = A293638 n

end A293638

/-! ## A293638.P2476241338899526488

`round((A001611(n)-1)/5)`
-/

namespace A293638.P2476241338899526488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001611 n - 1 : ℚ) / 5)

end

end A293638.P2476241338899526488

namespace A293638

/-- `round((A001611(n)-1)/5)` -/
def P2476241338899526488.Spec : Prop :=
  ∀ n, P2476241338899526488.a n = A293638 n

end A293638

/-! ## A293638.P7772775364800096753

`A000045(n)-A293673(n)`
-/

namespace A293638.P7772775364800096753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293673 n

end

end A293638.P7772775364800096753

namespace A293638

/-- `A000045(n)-A293673(n)` -/
def P7772775364800096753.Spec : Prop :=
  ∀ n, P7772775364800096753.a n = A293638 n

end A293638

/-! ## A293638.P8542265782127547878

`A293671(n)-A293642(n)`
-/

namespace A293638.P8542265782127547878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n - A293642 n

end

end A293638.P8542265782127547878

namespace A293638

/-- `A293671(n)-A293642(n)` -/
def P8542265782127547878.Spec : Prop :=
  ∀ n, P8542265782127547878.a n = A293638 n

end A293638

/-! ## A293638.P15891223589107275509

`A293672(n)-A293643(n)`
-/

namespace A293638.P15891223589107275509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n - A293643 n

end

end A293638.P15891223589107275509

namespace A293638

/-- `A293672(n)-A293643(n)` -/
def P15891223589107275509.Spec : Prop :=
  ∀ n, P15891223589107275509.a n = A293638 n

end A293638

/-! ## A293638.P12580773241172959462

`A212804(n+1)-A293673(n)`
-/

namespace A293638.P12580773241172959462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293673 n

end

end A293638.P12580773241172959462

namespace A293638

/-- `A212804(n+1)-A293673(n)` -/
def P12580773241172959462.Spec : Prop :=
  ∀ n, P12580773241172959462.a n = A293638 n

end A293638

/-! ## A293638.P16206944580390165013

`round(lcm(A167808(n), A167816(n))/5)`
-/

namespace A293638.P16206944580390165013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (A167808 n) (A167816 n) : ℚ) / 5)

end

end A293638.P16206944580390165013

namespace A293638

/-- `round(lcm(A167808(n), A167816(n))/5)` -/
def P16206944580390165013.Spec : Prop :=
  ∀ n, P16206944580390165013.a n = A293638 n

end A293638

/-! ## A293638.P8006833687005106151

`A293640(n)+A293671(n)-A000045(n)`
-/

namespace A293638.P8006833687005106151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293671 n - A000045 n)

end

end A293638.P8006833687005106151

namespace A293638

/-- `A293640(n)+A293671(n)-A000045(n)` -/
def P8006833687005106151.Spec : Prop :=
  ∀ n, P8006833687005106151.a n = A293638 n

end A293638

/-! ## A293638.P14431357429321374200

`A293671(n)-(A293641(n)+A004698(n))`
-/

namespace A293638.P14431357429321374200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n - (A293641 n + A004698 n)

end

end A293638.P14431357429321374200

namespace A293638

/-- `A293671(n)-(A293641(n)+A004698(n))` -/
def P14431357429321374200.Spec : Prop :=
  ∀ n, P14431357429321374200.a n = A293638 n

end A293638

/-! ## A293638.P16108577925843957707

`A293640(n)+A293642(n)-A293673(n)`
-/

namespace A293638.P16108577925843957707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293673 n)

end

end A293638.P16108577925843957707

namespace A293638

/-- `A293640(n)+A293642(n)-A293673(n)` -/
def P16108577925843957707.Spec : Prop :=
  ∀ n, P16108577925843957707.a n = A293638 n

end A293638

/-! ## A293638.P4516764838099511513

`A000071(n+2)-(A293673(n)+A000071(n+1))`
-/

namespace A293638.P4516764838099511513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293673 n + A000071 (n + 1))

end

end A293638.P4516764838099511513

namespace A293638

/-- `A000071(n+2)-(A293673(n)+A000071(n+1))` -/
def P4516764838099511513.Spec : Prop :=
  ∀ n, P4516764838099511513.a n = A293638 n

end A293638

/-!
# A293639: a(n) is the greatest integer k such that k/Fibonacci(n) < 2/5.

The programs for A293639, the canonical program `A293639.P9503296093773056529` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293639 has offset 0).

The definition of A293639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293639.P9503296093773056529

`A293638(n)+A004698(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293639

/-- `A293638(n)+A004698(n)` -/
def P9503296093773056529.Spec : Prop :=
  ∀ n, P9503296093773056529.a n = A293639 n

theorem P9503296093773056529.correct : P9503296093773056529.Spec := by
  intro n
  simp only [A293639]

end A293639

/-! ## A293639.P11346969165400933298

`A293640(n)-A011558(n)`
-/

namespace A293639.P11346969165400933298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n - A011558 n

end

end A293639.P11346969165400933298

namespace A293639

/-- `A293640(n)-A011558(n)` -/
def P11346969165400933298.Spec : Prop :=
  ∀ n, P11346969165400933298.a n = A293639 n

theorem P11346969165400933298.correct : P11346969165400933298.Spec := by
  intro n
  simp only [A293639, Nat.add_sub_cancel, A293639.P11346969165400933298.a, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293639

/-! ## A293639.P2059308281914005351

`A004698(n)+A293640(n)-A293637(n)`
-/

namespace A293639.P2059308281914005351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293640 n - A293637 n)

end

end A293639.P2059308281914005351

namespace A293639

/-- `A004698(n)+A293640(n)-A293637(n)` -/
def P2059308281914005351.Spec : Prop :=
  ∀ n, P2059308281914005351.a n = A293639 n

theorem P2059308281914005351.correct : P2059308281914005351.Spec := by
  intro n
  simp only [A293639, Nat.add_sub_cancel, A293639.P2059308281914005351.a, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A293637, A293637.P15390255035316120638.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293639

/-! ## A293639.P6663825044028008125

`A293640(n)-A293637(A293637(n)-A004698(n))`
-/

namespace A293639.P6663825044028008125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n - A293637 (A293637 n - A004698 n).toNat

end

end A293639.P6663825044028008125

namespace A293639

/-- `A293640(n)-A293637(A293637(n)-A004698(n))` -/
def P6663825044028008125.Spec : Prop :=
  ∀ n, P6663825044028008125.a n = A293639 n

end A293639

/-! ## A293639.P9242515984415229683

`A293644(n)-A293637(n)`
-/

namespace A293639.P9242515984415229683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 n - A293637 n

end

end A293639.P9242515984415229683

namespace A293639

/-- `A293644(n)-A293637(n)` -/
def P9242515984415229683.Spec : Prop :=
  ∀ n, P9242515984415229683.a n = A293639 n

theorem P9242515984415229683.correct : P9242515984415229683.Spec := by
  intro n
  simp only [A293639, Nat.add_sub_cancel, A293639.P9242515984415229683.a, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A293637, A293637.P15390255035316120638.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293644, A293644.P9174250443400626299.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293640, A293640.P11125392320751003996.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293639

/-! ## A293639.P14980006249750698698

`A293638(n)+A293642(n)-A293641(n)`
-/

namespace A293639.P14980006249750698698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293638 n + (A293642 n - A293641 n)

end

end A293639.P14980006249750698698

namespace A293639

/-- `A293638(n)+A293642(n)-A293641(n)` -/
def P14980006249750698698.Spec : Prop :=
  ∀ n, P14980006249750698698.a n = A293639 n

theorem P14980006249750698698.correct : P14980006249750698698.Spec := by
  intro n
  simp only [A293639, Nat.add_sub_cancel, A293639.P14980006249750698698.a, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293639

/-! ## A293639.P6789757795957473307

`A293640(n)+A293642(n)-A293643(n)`
-/

namespace A293639.P6789757795957473307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293643 n)

end

end A293639.P6789757795957473307

namespace A293639

/-- `A293640(n)+A293642(n)-A293643(n)` -/
def P6789757795957473307.Spec : Prop :=
  ∀ n, P6789757795957473307.a n = A293639 n

theorem P6789757795957473307.correct : P6789757795957473307.Spec := by
  intro n
  simp only [A293639, Nat.add_sub_cancel, A293639.P6789757795957473307.a, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A293642, A293642.P4545341947688583851.a, A293643, A293643.P4507541113369721667.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293641, A293641.P3298730872533662908.a, A079998, A079998.P5984370107414098605.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293639

/-! ## A293639.P8940463788208043207

`A293641(n)+A293644(n)-A293643(n)`
-/

namespace A293639.P8940463788208043207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + (A293644 n - A293643 n)

end

end A293639.P8940463788208043207

namespace A293639

/-- `A293641(n)+A293644(n)-A293643(n)` -/
def P8940463788208043207.Spec : Prop :=
  ∀ n, P8940463788208043207.a n = A293639 n

theorem P8940463788208043207.correct : P8940463788208043207.Spec := by
  intro n
  simp only [A293639, Nat.add_sub_cancel, A293639.P8940463788208043207.a, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293641, A293641.P3298730872533662908.a, A293643, A293643.P4507541113369721667.a, A293644, A293644.P9174250443400626299.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293640, A293640.P11125392320751003996.a, A293642, A293642.P4545341947688583851.a, A293672, A293672.P8681346290342597704.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293639

/-! ## A293639.P9879004790708560204

`A293640(n)-A293640(A293643(n)-A293642(n))`
-/

namespace A293639.P9879004790708560204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n - A293640 (A293643 n - A293642 n).toNat

end

end A293639.P9879004790708560204

namespace A293639

/-- `A293640(n)-A293640(A293643(n)-A293642(n))` -/
def P9879004790708560204.Spec : Prop :=
  ∀ n, P9879004790708560204.a n = A293639 n

end A293639

/-! ## A293639.P4128721852477800170

`A293641(n)-A293643(A293643(n)-A293644(n))`
-/

namespace A293639.P4128721852477800170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n - A293643 (A293643 n - A293644 n).toNat

end

end A293639.P4128721852477800170

namespace A293639

/-- `A293641(n)-A293643(A293643(n)-A293644(n))` -/
def P4128721852477800170.Spec : Prop :=
  ∀ n, P4128721852477800170.a n = A293639 n

end A293639

/-! ## A293639.P7291475387381673920

`floor(A293671(n)/2)`
-/

namespace A293639.P7291475387381673920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293671 n : ℚ) / 2⌋

end

end A293639.P7291475387381673920

namespace A293639

/-- `floor(A293671(n)/2)` -/
def P7291475387381673920.Spec : Prop :=
  ∀ n, P7291475387381673920.a n = A293639 n

end A293639

/-! ## A293639.P9978675143948838129

`floor(2/5*A000045(n))`
-/

namespace A293639.P9978675143948838129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 5 * (A000045 n : ℚ)⌋

end

end A293639.P9978675143948838129

namespace A293639

/-- `floor(2/5*A000045(n))` -/
def P9978675143948838129.Spec : Prop :=
  ∀ n, P9978675143948838129.a n = A293639 n

end A293639

/-! ## A293639.P14385617897398383157

`floor(2*(A001611(n)-1)/5)`
-/

namespace A293639.P14385617897398383157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A001611 n - 1 : ℚ) / 5)⌋

end

end A293639.P14385617897398383157

namespace A293639

/-- `floor(2*(A001611(n)-1)/5)` -/
def P14385617897398383157.Spec : Prop :=
  ∀ n, P14385617897398383157.a n = A293639 n

end A293639

/-! ## A293639.P14086947350561515753

`A000045(n)-A293643(n)`
-/

namespace A293639.P14086947350561515753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293643 n

end

end A293639.P14086947350561515753

namespace A293639

/-- `A000045(n)-A293643(n)` -/
def P14086947350561515753.Spec : Prop :=
  ∀ n, P14086947350561515753.a n = A293639 n

end A293639

/-! ## A293639.P10772099595015142383

`A293671(n)-A293641(n)`
-/

namespace A293639.P10772099595015142383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n - A293641 n

end

end A293639.P10772099595015142383

namespace A293639

/-- `A293671(n)-A293641(n)` -/
def P10772099595015142383.Spec : Prop :=
  ∀ n, P10772099595015142383.a n = A293639 n

end A293639

/-! ## A293639.P3224718507736412994

`A001611(n)-(A293643(n)+1)`
-/

namespace A293639.P3224718507736412994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A293643 n + 1)

end

end A293639.P3224718507736412994

namespace A293639

/-- `A001611(n)-(A293643(n)+1)` -/
def P3224718507736412994.Spec : Prop :=
  ∀ n, P3224718507736412994.a n = A293639 n

end A293639

/-! ## A293639.P14017346733863182267

`A212804(n+1)-A293643(n)`
-/

namespace A293639.P14017346733863182267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293643 n

end

end A293639.P14017346733863182267

namespace A293639

/-- `A212804(n+1)-A293643(n)` -/
def P14017346733863182267.Spec : Prop :=
  ∀ n, P14017346733863182267.a n = A293639 n

end A293639

/-! ## A293639.P15283232183359077133

`A002062(n)-(A293643(n)+n)`
-/

namespace A293639.P15283232183359077133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - (A293643 n + (n : ℤ))

end

end A293639.P15283232183359077133

namespace A293639

/-- `A002062(n)-(A293643(n)+n)` -/
def P15283232183359077133.Spec : Prop :=
  ∀ n, P15283232183359077133.a n = A293639 n

end A293639

/-! ## A293639.P8871755628308204112

`A004698(n)+A293671(n)-A293642(n)`
-/

namespace A293639.P8871755628308204112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293671 n - A293642 n)

end

end A293639.P8871755628308204112

namespace A293639

/-- `A004698(n)+A293671(n)-A293642(n)` -/
def P8871755628308204112.Spec : Prop :=
  ∀ n, P8871755628308204112.a n = A293639 n

end A293639

/-!
# A293640: a(n) is the least integer k such that k/Fibonacci(n) > 2/5.

The programs for A293640, the canonical program `A293640.P11125392320751003996` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293640 has offset 0).

The definition of A293640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293640.P11125392320751003996

`A293639(n)+A011558(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293640

/-- `A293639(n)+A011558(n)` -/
def P11125392320751003996.Spec : Prop :=
  ∀ n, P11125392320751003996.a n = A293640 n

theorem P11125392320751003996.correct : P11125392320751003996.Spec := by
  intro n
  simp only [A293640]

end A293640

/-! ## A293640.P6139364047280225879

`A293638(n)+A293637(n)`
-/

namespace A293640.P6139364047280225879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293638 n + A293637 n

end

end A293640.P6139364047280225879

namespace A293640

/-- `A293638(n)+A293637(n)` -/
def P6139364047280225879.Spec : Prop :=
  ∀ n, P6139364047280225879.a n = A293640 n

theorem P6139364047280225879.correct : P6139364047280225879.Spec := by
  intro n
  simp only [A293640, Nat.add_sub_cancel, A293640.P6139364047280225879.a, A293640.P11125392320751003996.a, A011558, A011558.P10594584635942187014.a, A293637, A293637.P15390255035316120638.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293639, A293639.P9503296093773056529.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293640

/-! ## A293640.P13902069166422812644

`A293637(n)+A293639(n)-A004698(n)`
-/

namespace A293640.P13902069166422812644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293639 n - A004698 n)

end

end A293640.P13902069166422812644

namespace A293640

/-- `A293637(n)+A293639(n)-A004698(n)` -/
def P13902069166422812644.Spec : Prop :=
  ∀ n, P13902069166422812644.a n = A293640 n

theorem P13902069166422812644.correct : P13902069166422812644.Spec := by
  intro n
  simp only [A293640, Nat.add_sub_cancel, A293640.P13902069166422812644.a, A293640.P11125392320751003996.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293637, A293637.P15390255035316120638.a, A293639, A293639.P9503296093773056529.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293640

/-! ## A293640.P11593199562104579765

`A293644(n)-A004698(n)`
-/

namespace A293640.P11593199562104579765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 n - A004698 n

end

end A293640.P11593199562104579765

namespace A293640

/-- `A293644(n)-A004698(n)` -/
def P11593199562104579765.Spec : Prop :=
  ∀ n, P11593199562104579765.a n = A293640 n

theorem P11593199562104579765.correct : P11593199562104579765.Spec := by
  intro n
  simp only [A293640, Nat.add_sub_cancel, A293640.P11593199562104579765.a, A293640.P11125392320751003996.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293644, A293644.P9174250443400626299.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293640

/-! ## A293640.P9796859230914217362

`A293639(n)+A293643(n)-A293642(n)`
-/

namespace A293640.P9796859230914217362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293643 n - A293642 n)

end

end A293640.P9796859230914217362

namespace A293640

/-- `A293639(n)+A293643(n)-A293642(n)` -/
def P9796859230914217362.Spec : Prop :=
  ∀ n, P9796859230914217362.a n = A293640 n

theorem P9796859230914217362.correct : P9796859230914217362.Spec := by
  intro n
  simp only [A293640, Nat.add_sub_cancel, A293640.P9796859230914217362.a, A293640.P11125392320751003996.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293642, A293642.P4545341947688583851.a, A293643, A293643.P4507541113369721667.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293641, A293641.P3298730872533662908.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293640

/-! ## A293640.P1565877372178707133

`A293641(n)+A293644(n)-A293642(n)`
-/

namespace A293640.P1565877372178707133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + (A293644 n - A293642 n)

end

end A293640.P1565877372178707133

namespace A293640

/-- `A293641(n)+A293644(n)-A293642(n)` -/
def P1565877372178707133.Spec : Prop :=
  ∀ n, P1565877372178707133.a n = A293640 n

theorem P1565877372178707133.correct : P1565877372178707133.Spec := by
  intro n
  simp only [A293640, Nat.add_sub_cancel, A293640.P1565877372178707133.a, A293640.P11125392320751003996.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A293644, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293640

/-! ## A293640.P4576802495775309603

`ceil(A293672(n)/2)`
-/

namespace A293640.P4576802495775309603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293672 n : ℚ) / 2⌉

end

end A293640.P4576802495775309603

namespace A293640

/-- `ceil(A293672(n)/2)` -/
def P4576802495775309603.Spec : Prop :=
  ∀ n, P4576802495775309603.a n = A293640 n

end A293640

/-! ## A293640.P7107622736926379039

`ceil(2/5*A000045(n))`
-/

namespace A293640.P7107622736926379039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 5 * (A000045 n : ℚ)⌉

end

end A293640.P7107622736926379039

namespace A293640

/-- `ceil(2/5*A000045(n))` -/
def P7107622736926379039.Spec : Prop :=
  ∀ n, P7107622736926379039.a n = A293640 n

end A293640

/-! ## A293640.P17155373054359961926

`A000045(n)-A293642(n)`
-/

namespace A293640.P17155373054359961926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293642 n

end

end A293640.P17155373054359961926

namespace A293640

/-- `A000045(n)-A293642(n)` -/
def P17155373054359961926.Spec : Prop :=
  ∀ n, P17155373054359961926.a n = A293640 n

end A293640

/-! ## A293640.P2956849832769428322

`A293672(n)-A293641(n)`
-/

namespace A293640.P2956849832769428322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n - A293641 n

end

end A293640.P2956849832769428322

namespace A293640

/-- `A293672(n)-A293641(n)` -/
def P2956849832769428322.Spec : Prop :=
  ∀ n, P2956849832769428322.a n = A293640 n

end A293640

/-! ## A293640.P8941771974203988867

`A212804(n+1)-A293642(n)`
-/

namespace A293640.P8941771974203988867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293642 n

end

end A293640.P8941771974203988867

namespace A293640

/-- `A212804(n+1)-A293642(n)` -/
def P8941771974203988867.Spec : Prop :=
  ∀ n, P8941771974203988867.a n = A293640 n

end A293640

/-! ## A293640.P14960533150367097801

`A103609(2*n)-A293642(n)`
-/

namespace A293640.P14960533150367097801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A293642 n

end

end A293640.P14960533150367097801

namespace A293640

/-- `A103609(2*n)-A293642(n)` -/
def P14960533150367097801.Spec : Prop :=
  ∀ n, P14960533150367097801.a n = A293640 n

end A293640

/-! ## A293640.P8290591404188337360

`A065220(n)+n-A293642(n)`
-/

namespace A293640.P8290591404188337360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + ((n : ℤ) - A293642 n)

end

end A293640.P8290591404188337360

namespace A293640

/-- `A065220(n)+n-A293642(n)` -/
def P8290591404188337360.Spec : Prop :=
  ∀ n, P8290591404188337360.a n = A293640 n

end A293640

/-! ## A293640.P11201035719646530806

`A000045(n)-(A293641(n)+A004698(n))`
-/

namespace A293640.P11201035719646530806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293641 n + A004698 n)

end

end A293640.P11201035719646530806

namespace A293640

/-- `A000045(n)-(A293641(n)+A004698(n))` -/
def P11201035719646530806.Spec : Prop :=
  ∀ n, P11201035719646530806.a n = A293640 n

end A293640

/-! ## A293640.P11525225088246634813

`A000045(n)+A293638(n)-A293671(n)`
-/

namespace A293640.P11525225088246634813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293638 n - A293671 n)

end

end A293640.P11525225088246634813

namespace A293640

/-- `A000045(n)+A293638(n)-A293671(n)` -/
def P11525225088246634813.Spec : Prop :=
  ∀ n, P11525225088246634813.a n = A293640 n

end A293640

/-! ## A293640.P11090871779553624881

`A293639(n)+A293672(n)-A293671(n)`
-/

namespace A293640.P11090871779553624881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293672 n - A293671 n)

end

end A293640.P11090871779553624881

namespace A293640

/-- `A293639(n)+A293672(n)-A293671(n)` -/
def P11090871779553624881.Spec : Prop :=
  ∀ n, P11090871779553624881.a n = A293640 n

end A293640

/-! ## A293640.P16217874998454622431

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=4, a(1)=2, a(2)=0`
-/

namespace A293640.P16217874998454622431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293640.P16217874998454622431

namespace A293640

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P16217874998454622431.Spec : Prop :=
  ∀ n, P16217874998454622431.a n = A293640 n

end A293640

/-! ## A293640.P13085457438206914855

`ceil(A006355(n+1)/5)`
-/

namespace A293640.P13085457438206914855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006355 (n + 1) : ℚ) / 5⌉

end

end A293640.P13085457438206914855

namespace A293640

/-- `ceil(A006355(n+1)/5)` -/
def P13085457438206914855.Spec : Prop :=
  ∀ n, P13085457438206914855.a n = A293640 n

end A293640

/-! ## A293640.P2543159950674339477

`ceil(A118658(n+1)/5)`
-/

namespace A293640.P2543159950674339477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118658 (n + 1) : ℚ) / 5⌉

end

end A293640.P2543159950674339477

namespace A293640

/-- `ceil(A118658(n+1)/5)` -/
def P2543159950674339477.Spec : Prop :=
  ∀ n, P2543159950674339477.a n = A293640 n

end A293640

/-!
# A293641: a(n) is the integer k that minimizes |k/Fibonacci(n) - 2/5|.

The programs for A293641, the canonical program `A293641.P3298730872533662908` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293641 has offset 0).

The definition of A293641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293641.P13044743800114308123

`A293642(n)-A004698(n)`
-/

namespace A293641.P13044743800114308123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n - A004698 n

end

end A293641.P13044743800114308123

namespace A293641

/-- `A293642(n)-A004698(n)` -/
def P13044743800114308123.Spec : Prop :=
  ∀ n, P13044743800114308123.a n = A293641 n

theorem P13044743800114308123.correct : P13044743800114308123.Spec := by
  intro n
  simp only [A293641, Nat.add_sub_cancel, A293641.P13044743800114308123.a, A293641.P3298730872533662908.a, A004698, A004698.P15694019374451496152.a, A293642, A293642.P4545341947688583851.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293641

/-! ## A293641.P17016370845330990868

`A293643(n)-A293637(n)`
-/

namespace A293641.P17016370845330990868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n - A293637 n

end

end A293641.P17016370845330990868

namespace A293641

/-- `A293643(n)-A293637(n)` -/
def P17016370845330990868.Spec : Prop :=
  ∀ n, P17016370845330990868.a n = A293641 n

theorem P17016370845330990868.correct : P17016370845330990868.Spec := by
  intro n
  simp only [A293641, Nat.add_sub_cancel, A293641.P17016370845330990868.a, A293641.P3298730872533662908.a, A293637, A293637.P15390255035316120638.a, A293643, A293643.P4507541113369721667.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293642, A293642.P4545341947688583851.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293641

/-! ## A293641.P12634907653785160341

`A293639(n)+A293643(n)-A293644(n)`
-/

namespace A293641.P12634907653785160341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293643 n - A293644 n)

end

end A293641.P12634907653785160341

namespace A293641

/-- `A293639(n)+A293643(n)-A293644(n)` -/
def P12634907653785160341.Spec : Prop :=
  ∀ n, P12634907653785160341.a n = A293641 n

theorem P12634907653785160341.correct : P12634907653785160341.Spec := by
  intro n
  simp only [A293641, Nat.add_sub_cancel, A293641.P12634907653785160341.a, A293641.P3298730872533662908.a, A293639, A293639.P9503296093773056529.a, A293643, A293643.P4507541113369721667.a, A293644, A293644.P9174250443400626299.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A293642, A293642.P4545341947688583851.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293641

/-! ## A293641.P13158872181896560074

`A293640(n)+A293642(n)-A293644(n)`
-/

namespace A293641.P13158872181896560074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293644 n)

end

end A293641.P13158872181896560074

namespace A293641

/-- `A293640(n)+A293642(n)-A293644(n)` -/
def P13158872181896560074.Spec : Prop :=
  ∀ n, P13158872181896560074.a n = A293641 n

theorem P13158872181896560074.correct : P13158872181896560074.Spec := by
  intro n
  simp only [A293641, Nat.add_sub_cancel, A293641.P13158872181896560074.a, A293641.P3298730872533662908.a, A293640, A293640.P11125392320751003996.a, A293642, A293642.P4545341947688583851.a, A293644, A293644.P9174250443400626299.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293641

/-! ## A293641.P580522411546124972

`A293640(n)-A293640(A293644(n)-A293642(n))`
-/

namespace A293641.P580522411546124972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n - A293640 (A293644 n - A293642 n).toNat

end

end A293641.P580522411546124972

namespace A293641

/-- `A293640(n)-A293640(A293644(n)-A293642(n))` -/
def P580522411546124972.Spec : Prop :=
  ∀ n, P580522411546124972.a n = A293641 n

end A293641

/-! ## A293641.P3298730872533662908

`floor(A293672(n)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293641

/-- `floor(A293672(n)/2)` -/
def P3298730872533662908.Spec : Prop :=
  ∀ n, P3298730872533662908.a n = A293641 n

theorem P3298730872533662908.correct : P3298730872533662908.Spec := by
  intro n
  simp only [A293641]

end A293641

/-! ## A293641.P17504401382893449888

`ceil(A293671(n)/2)`
-/

namespace A293641.P17504401382893449888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293671 n : ℚ) / 2⌉

end

end A293641.P17504401382893449888

namespace A293641

/-- `ceil(A293671(n)/2)` -/
def P17504401382893449888.Spec : Prop :=
  ∀ n, P17504401382893449888.a n = A293641 n

end A293641

/-! ## A293641.P3767670041756209567

`round(2/5*A000045(n))`
-/

namespace A293641.P3767670041756209567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 5 * (A000045 n : ℚ))

end

end A293641.P3767670041756209567

namespace A293641

/-- `round(2/5*A000045(n))` -/
def P3767670041756209567.Spec : Prop :=
  ∀ n, P3767670041756209567.a n = A293641 n

end A293641

/-! ## A293641.P5733191748543982689

`A000045(n)-A293644(n)`
-/

namespace A293641.P5733191748543982689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293644 n

end

end A293641.P5733191748543982689

namespace A293641

/-- `A000045(n)-A293644(n)` -/
def P5733191748543982689.Spec : Prop :=
  ∀ n, P5733191748543982689.a n = A293641 n

end A293641

/-! ## A293641.P4614704266042450679

`A293671(n)-A293639(n)`
-/

namespace A293641.P4614704266042450679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n - A293639 n

end

end A293641.P4614704266042450679

namespace A293641

/-- `A293671(n)-A293639(n)` -/
def P4614704266042450679.Spec : Prop :=
  ∀ n, P4614704266042450679.a n = A293641 n

end A293641

/-! ## A293641.P11603013378143177651

`A293672(n)-A293640(n)`
-/

namespace A293641.P11603013378143177651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n - A293640 n

end

end A293641.P11603013378143177651

namespace A293641

/-- `A293672(n)-A293640(n)` -/
def P11603013378143177651.Spec : Prop :=
  ∀ n, P11603013378143177651.a n = A293641 n

end A293641

/-! ## A293641.P8216236420122618647

`A212804(n+1)-A293644(n)`
-/

namespace A293641.P8216236420122618647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293644 n

end

end A293641.P8216236420122618647

namespace A293641

/-- `A212804(n+1)-A293644(n)` -/
def P8216236420122618647.Spec : Prop :=
  ∀ n, P8216236420122618647.a n = A293641 n

end A293641

/-! ## A293641.P138533104521952033

`A103609(2*n)-A293644(n)`
-/

namespace A293641.P138533104521952033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A293644 n

end

end A293641.P138533104521952033

namespace A293641

/-- `A103609(2*n)-A293644(n)` -/
def P138533104521952033.Spec : Prop :=
  ∀ n, P138533104521952033.a n = A293641 n

end A293641

/-! ## A293641.P4429420903083503965

`A065220(n)+n-A293644(n)`
-/

namespace A293641.P4429420903083503965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + ((n : ℤ) - A293644 n)

end

end A293641.P4429420903083503965

namespace A293641

/-- `A065220(n)+n-A293644(n)` -/
def P4429420903083503965.Spec : Prop :=
  ∀ n, P4429420903083503965.a n = A293641 n

end A293641

/-! ## A293641.P14252363992583336840

`A000045(n)-(A293640(n)+A004698(n))`
-/

namespace A293641.P14252363992583336840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293640 n + A004698 n)

end

end A293641.P14252363992583336840

namespace A293641

/-- `A000045(n)-(A293640(n)+A004698(n))` -/
def P14252363992583336840.Spec : Prop :=
  ∀ n, P14252363992583336840.a n = A293641 n

end A293641

/-! ## A293641.P6274857418839258476

`A293671(n)-(A293638(n)+A004698(n))`
-/

namespace A293641.P6274857418839258476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n - (A293638 n + A004698 n)

end

end A293641.P6274857418839258476

namespace A293641

/-- `A293671(n)-(A293638(n)+A004698(n))` -/
def P6274857418839258476.Spec : Prop :=
  ∀ n, P6274857418839258476.a n = A293641 n

end A293641

/-! ## A293641.P14680031608003490157

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A293641.P14680031608003490157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293641.P14680031608003490157

namespace A293641

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P14680031608003490157.Spec : Prop :=
  ∀ n, P14680031608003490157.a n = A293641 n

end A293641

/-! ## A293641.P7858450696119167977

`round(A055389(n)/5)`
-/

namespace A293641.P7858450696119167977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055389 n : ℚ) / 5)

end

end A293641.P7858450696119167977

namespace A293641

/-- `round(A055389(n)/5)` -/
def P7858450696119167977.Spec : Prop :=
  ∀ n, P7858450696119167977.a n = A293641 n

end A293641

/-! ## A293641.P14143445807300409367

`round(A006355(n+1)/5)`
-/

namespace A293641.P14143445807300409367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006355 (n + 1) : ℚ) / 5)

end

end A293641.P14143445807300409367

namespace A293641

/-- `round(A006355(n+1)/5)` -/
def P14143445807300409367.Spec : Prop :=
  ∀ n, P14143445807300409367.a n = A293641 n

end A293641

/-! ## A293641.P3683261263936901898

`round(A118658(n+1)/5)`
-/

namespace A293641.P3683261263936901898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A118658 (n + 1) : ℚ) / 5)

end

end A293641.P3683261263936901898

namespace A293641

/-- `round(A118658(n+1)/5)` -/
def P3683261263936901898.Spec : Prop :=
  ∀ n, P3683261263936901898.a n = A293641 n

end A293641

/-!
# A293642: a(n) is the greatest integer k such that k/Fibonacci(n) < 3/5.

The programs for A293642, the canonical program `A293642.P4545341947688583851` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293642 has offset 0).

The definition of A293642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293642.P4545341947688583851

`A293641(n)+A004698(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293642

/-- `A293641(n)+A004698(n)` -/
def P4545341947688583851.Spec : Prop :=
  ∀ n, P4545341947688583851.a n = A293642 n

theorem P4545341947688583851.correct : P4545341947688583851.Spec := by
  intro n
  simp only [A293642]

end A293642

/-! ## A293642.P5480053018176577671

`A293643(n)-A011558(n)`
-/

namespace A293642.P5480053018176577671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n - A011558 n

end

end A293642.P5480053018176577671

namespace A293642

/-- `A293643(n)-A011558(n)` -/
def P5480053018176577671.Spec : Prop :=
  ∀ n, P5480053018176577671.a n = A293642 n

theorem P5480053018176577671.correct : P5480053018176577671.Spec := by
  intro n
  simp only [A293642, Nat.add_sub_cancel, A293642.P5480053018176577671.a, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293641, A293641.P3298730872533662908.a, A293643, A293643.P4507541113369721667.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293642

/-! ## A293642.P11801357182128017998

`A293639(n)+A293641(n)-A293638(n)`
-/

namespace A293642.P11801357182128017998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293641 n - A293638 n)

end

end A293642.P11801357182128017998

namespace A293642

/-- `A293639(n)+A293641(n)-A293638(n)` -/
def P11801357182128017998.Spec : Prop :=
  ∀ n, P11801357182128017998.a n = A293642 n

theorem P11801357182128017998.correct : P11801357182128017998.Spec := by
  intro n
  simp only [A293642, Nat.add_sub_cancel, A293642.P11801357182128017998.a, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293639, A293639.P9503296093773056529.a, A293641, A293641.P3298730872533662908.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293642

/-! ## A293642.P12958649568560872786

`A293639(n)+A293643(n)-A293640(n)`
-/

namespace A293642.P12958649568560872786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293643 n - A293640 n)

end

end A293642.P12958649568560872786

namespace A293642

/-- `A293639(n)+A293643(n)-A293640(n)` -/
def P12958649568560872786.Spec : Prop :=
  ∀ n, P12958649568560872786.a n = A293642 n

theorem P12958649568560872786.correct : P12958649568560872786.Spec := by
  intro n
  simp only [A293642, Nat.add_sub_cancel, A293642.P12958649568560872786.a, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A293641, A293641.P3298730872533662908.a, A293643, A293643.P4507541113369721667.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293672, A293672.P8681346290342597704.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293642

/-! ## A293642.P2494647152268333454

`A293641(n)+A293644(n)-A293640(n)`
-/

namespace A293642.P2494647152268333454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + (A293644 n - A293640 n)

end

end A293642.P2494647152268333454

namespace A293642

/-- `A293641(n)+A293644(n)-A293640(n)` -/
def P2494647152268333454.Spec : Prop :=
  ∀ n, P2494647152268333454.a n = A293642 n

theorem P2494647152268333454.correct : P2494647152268333454.Spec := by
  intro n
  simp only [A293642, Nat.add_sub_cancel, A293642.P2494647152268333454.a, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A293640, A293640.P11125392320751003996.a, A293641, A293641.P3298730872533662908.a, A293644, A293644.P9174250443400626299.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293639, A293639.P9503296093773056529.a, A293672, A293672.P8681346290342597704.a, A079998, A079998.P5984370107414098605.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293642

/-! ## A293642.P8940920413082993443

`A293643(n)-A293640(A293640(n)-A293639(n))`
-/

namespace A293642.P8940920413082993443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n - A293640 (A293640 n - A293639 n).toNat

end

end A293642.P8940920413082993443

namespace A293642

/-- `A293643(n)-A293640(A293640(n)-A293639(n))` -/
def P8940920413082993443.Spec : Prop :=
  ∀ n, P8940920413082993443.a n = A293642 n

end A293642

/-! ## A293642.P155876679958511449

`A293644(n)-A293640(A293640(n)-A293641(n))`
-/

namespace A293642.P155876679958511449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293644 n - A293640 (A293640 n - A293641 n).toNat

end

end A293642.P155876679958511449

namespace A293642

/-- `A293644(n)-A293640(A293640(n)-A293641(n))` -/
def P155876679958511449.Spec : Prop :=
  ∀ n, P155876679958511449.a n = A293642 n

end A293642

/-! ## A293642.P1923855728781472636

`floor(3/5*A000045(n))`
-/

namespace A293642.P1923855728781472636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 5 * (A000045 n : ℚ)⌋

end

end A293642.P1923855728781472636

namespace A293642

/-- `floor(3/5*A000045(n))` -/
def P1923855728781472636.Spec : Prop :=
  ∀ n, P1923855728781472636.a n = A293642 n

end A293642

/-! ## A293642.P6649552095396397259

`A000045(n)-A293640(n)`
-/

namespace A293642.P6649552095396397259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293640 n

end

end A293642.P6649552095396397259

namespace A293642

/-- `A000045(n)-A293640(n)` -/
def P6649552095396397259.Spec : Prop :=
  ∀ n, P6649552095396397259.a n = A293642 n

end A293642

/-! ## A293642.P1877736976115254140

`A293671(n)-A293638(n)`
-/

namespace A293642.P1877736976115254140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n - A293638 n

end

end A293642.P1877736976115254140

namespace A293642

/-- `A293671(n)-A293638(n)` -/
def P1877736976115254140.Spec : Prop :=
  ∀ n, P1877736976115254140.a n = A293642 n

end A293642

/-! ## A293642.P13771449699165933674

`A293673(n)-A293637(n)`
-/

namespace A293642.P13771449699165933674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293673 n - A293637 n

end

end A293642.P13771449699165933674

namespace A293642

/-- `A293673(n)-A293637(n)` -/
def P13771449699165933674.Spec : Prop :=
  ∀ n, P13771449699165933674.a n = A293642 n

end A293642

/-! ## A293642.P17805647599904852005

`A212804(n+1)-A293640(n)`
-/

namespace A293642.P17805647599904852005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293640 n

end

end A293642.P17805647599904852005

namespace A293642

/-- `A212804(n+1)-A293640(n)` -/
def P17805647599904852005.Spec : Prop :=
  ∀ n, P17805647599904852005.a n = A293642 n

end A293642

/-! ## A293642.P12024430184379915497

`A000045(n)-(A293638(n)+A293637(n))`
-/

namespace A293642.P12024430184379915497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293638 n + A293637 n)

end

end A293642.P12024430184379915497

namespace A293642

/-- `A000045(n)-(A293638(n)+A293637(n))` -/
def P12024430184379915497.Spec : Prop :=
  ∀ n, P12024430184379915497.a n = A293642 n

end A293642

/-! ## A293642.P3856290197476984847

`A293671(n)+A293673(n)-A000045(n)`
-/

namespace A293642.P3856290197476984847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n + (A293673 n - A000045 n)

end

end A293642.P3856290197476984847

namespace A293642

/-- `A293671(n)+A293673(n)-A000045(n)` -/
def P3856290197476984847.Spec : Prop :=
  ∀ n, P3856290197476984847.a n = A293642 n

end A293642

/-! ## A293642.P16886849383431509076

`A004698(n)+A293671(n)-A293639(n)`
-/

namespace A293642.P16886849383431509076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293671 n - A293639 n)

end

end A293642.P16886849383431509076

namespace A293642

/-- `A004698(n)+A293671(n)-A293639(n)` -/
def P16886849383431509076.Spec : Prop :=
  ∀ n, P16886849383431509076.a n = A293642 n

end A293642

/-! ## A293642.P18294437513800821488

`A293637(n)+A293671(n)-A293640(n)`
-/

namespace A293642.P18294437513800821488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293671 n - A293640 n)

end

end A293642.P18294437513800821488

namespace A293642

/-- `A293637(n)+A293671(n)-A293640(n)` -/
def P18294437513800821488.Spec : Prop :=
  ∀ n, P18294437513800821488.a n = A293642 n

end A293642

/-! ## A293642.P9470303712872168269

`A293671(n)+A293673(n)-A212804(n+1)`
-/

namespace A293642.P9470303712872168269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n + (A293673 n - A212804 (n + 1))

end

end A293642.P9470303712872168269

namespace A293642

/-- `A293671(n)+A293673(n)-A212804(n+1)` -/
def P9470303712872168269.Spec : Prop :=
  ∀ n, P9470303712872168269.a n = A293642 n

end A293642

/-! ## A293642.P14812994464569415418

`A000071(n+2)-(A293640(n)+A000071(n+1))`
-/

namespace A293642.P14812994464569415418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293640 n + A000071 (n + 1))

end

end A293642.P14812994464569415418

namespace A293642

/-- `A000071(n+2)-(A293640(n)+A000071(n+1))` -/
def P14812994464569415418.Spec : Prop :=
  ∀ n, P14812994464569415418.a n = A293642 n

end A293642

/-! ## A293642.P13730733542860105059

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A293642.P13730733542860105059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293642.P13730733542860105059

namespace A293642

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P13730733542860105059.Spec : Prop :=
  ∀ n, P13730733542860105059.a n = A293642 n

end A293642

/-! ## A293642.P4602849322885101822

`floor(A022086(n)/5)`
-/

namespace A293642.P4602849322885101822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022086 n : ℚ) / 5⌋

end

end A293642.P4602849322885101822

namespace A293642

/-- `floor(A022086(n)/5)` -/
def P4602849322885101822.Spec : Prop :=
  ∀ n, P4602849322885101822.a n = A293642 n

end A293642

/-!
# A293643: a(n) is the least integer k such that k/Fibonacci(n) > 3/5.

The programs for A293643, the canonical program `A293643.P4507541113369721667` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293643 has offset 0).

The definition of A293643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293643.P4507541113369721667

`A293642(n)+A011558(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293643

/-- `A293642(n)+A011558(n)` -/
def P4507541113369721667.Spec : Prop :=
  ∀ n, P4507541113369721667.a n = A293643 n

theorem P4507541113369721667.correct : P4507541113369721667.Spec := by
  intro n
  simp only [A293643]

end A293643

/-! ## A293643.P8874324440532121876

`A293641(n)+A293637(n)`
-/

namespace A293643.P8874324440532121876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + A293637 n

end

end A293643.P8874324440532121876

namespace A293643

/-- `A293641(n)+A293637(n)` -/
def P8874324440532121876.Spec : Prop :=
  ∀ n, P8874324440532121876.a n = A293643 n

theorem P8874324440532121876.correct : P8874324440532121876.Spec := by
  intro n
  simp only [A293643, Nat.add_sub_cancel, A293643.P8874324440532121876.a, A293643.P4507541113369721667.a, A011558, A011558.P10594584635942187014.a, A293637, A293637.P15390255035316120638.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293643

/-! ## A293643.P1025233949973151574

`A293637(n)+A293642(n)-A004698(n)`
-/

namespace A293643.P1025233949973151574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293642 n - A004698 n)

end

end A293643.P1025233949973151574

namespace A293643

/-- `A293637(n)+A293642(n)-A004698(n)` -/
def P1025233949973151574.Spec : Prop :=
  ∀ n, P1025233949973151574.a n = A293643 n

theorem P1025233949973151574.correct : P1025233949973151574.Spec := by
  intro n
  simp only [A293643, Nat.add_sub_cancel, A293643.P1025233949973151574.a, A293643.P4507541113369721667.a, A004698, A004698.P15694019374451496152.a, A011558, A011558.P10594584635942187014.a, A293637, A293637.P15390255035316120638.a, A293642, A293642.P4545341947688583851.a, A000045, A000045.P11838749114346432762.a, A079998, A079998.P5984370107414098605.a, A082116, A082116.P4014037402897930621.a, A293641, A293641.P3298730872533662908.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293643

/-! ## A293643.P12424683673027439660

`A293640(n)+A293641(n)-A293638(n)`
-/

namespace A293643.P12424683673027439660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293641 n - A293638 n)

end

end A293643.P12424683673027439660

namespace A293643

/-- `A293640(n)+A293641(n)-A293638(n)` -/
def P12424683673027439660.Spec : Prop :=
  ∀ n, P12424683673027439660.a n = A293643 n

theorem P12424683673027439660.correct : P12424683673027439660.Spec := by
  intro n
  simp only [A293643, Nat.add_sub_cancel, A293643.P12424683673027439660.a, A293643.P4507541113369721667.a, A011558, A011558.P10594584635942187014.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A293639, A293639.P9503296093773056529.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293643

/-! ## A293643.P10912922024600900662

`A293640(n)+A293642(n)-A293639(n)`
-/

namespace A293643.P10912922024600900662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293639 n)

end

end A293643.P10912922024600900662

namespace A293643

/-- `A293640(n)+A293642(n)-A293639(n)` -/
def P10912922024600900662.Spec : Prop :=
  ∀ n, P10912922024600900662.a n = A293643 n

theorem P10912922024600900662.correct : P10912922024600900662.Spec := by
  intro n
  simp only [A293643, Nat.add_sub_cancel, A293643.P10912922024600900662.a, A293643.P4507541113369721667.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A293642, A293642.P4545341947688583851.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293641, A293641.P3298730872533662908.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, A293672, A293672.P8681346290342597704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293643

/-! ## A293643.P4240813426373774525

`A293641(n)+A293644(n)-A293639(n)`
-/

namespace A293643.P4240813426373774525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + (A293644 n - A293639 n)

end

end A293643.P4240813426373774525

namespace A293643

/-- `A293641(n)+A293644(n)-A293639(n)` -/
def P4240813426373774525.Spec : Prop :=
  ∀ n, P4240813426373774525.a n = A293643 n

theorem P4240813426373774525.correct : P4240813426373774525.Spec := by
  intro n
  simp only [A293643, Nat.add_sub_cancel, A293643.P4240813426373774525.a, A293643.P4507541113369721667.a, A011558, A011558.P10594584635942187014.a, A293639, A293639.P9503296093773056529.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A293644, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A079998, A079998.P5984370107414098605.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A293672, A293672.P8681346290342597704.a, A000045, A000045.P11838749114346432762.a, A082116, A082116.P4014037402897930621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293643

/-! ## A293643.P2577838760871117086

`ceil(3*A000045(n)/5)`
-/

namespace A293643.P2577838760871117086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((A000045 n : ℚ) / 5)⌉

end

end A293643.P2577838760871117086

namespace A293643

/-- `ceil(3*A000045(n)/5)` -/
def P2577838760871117086.Spec : Prop :=
  ∀ n, P2577838760871117086.a n = A293643 n

end A293643

/-! ## A293643.P462424456315064107

`A000045(n)-A293639(n)`
-/

namespace A293643.P462424456315064107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293639 n

end

end A293643.P462424456315064107

namespace A293643

/-- `A000045(n)-A293639(n)` -/
def P462424456315064107.Spec : Prop :=
  ∀ n, P462424456315064107.a n = A293643 n

end A293643

/-! ## A293643.P17080054431065373987

`A293673(n)-A004698(n)`
-/

namespace A293643.P17080054431065373987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293673 n - A004698 n

end

end A293643.P17080054431065373987

namespace A293643

/-- `A293673(n)-A004698(n)` -/
def P17080054431065373987.Spec : Prop :=
  ∀ n, P17080054431065373987.a n = A293643 n

end A293643

/-! ## A293643.P10856570692675078280

`A293672(n)-A293638(n)`
-/

namespace A293643.P10856570692675078280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n - A293638 n

end

end A293643.P10856570692675078280

namespace A293643

/-- `A293672(n)-A293638(n)` -/
def P10856570692675078280.Spec : Prop :=
  ∀ n, P10856570692675078280.a n = A293643 n

end A293643

/-! ## A293643.P92842921561617462

`A001611(n)-(A293639(n)+1)`
-/

namespace A293643.P92842921561617462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A293639 n + 1)

end

end A293643.P92842921561617462

namespace A293643

/-- `A001611(n)-(A293639(n)+1)` -/
def P92842921561617462.Spec : Prop :=
  ∀ n, P92842921561617462.a n = A293643 n

end A293643

/-! ## A293643.P17206218210860274130

`A212804(n+1)-A293639(n)`
-/

namespace A293643.P17206218210860274130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293639 n

end

end A293643.P17206218210860274130

namespace A293643

/-- `A212804(n+1)-A293639(n)` -/
def P17206218210860274130.Spec : Prop :=
  ∀ n, P17206218210860274130.a n = A293643 n

end A293643

/-! ## A293643.P11728015122294750614

`A002062(n)-(A293639(n)+n)`
-/

namespace A293643.P11728015122294750614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - (A293639 n + (n : ℤ))

end

end A293643.P11728015122294750614

namespace A293643

/-- `A002062(n)-(A293639(n)+n)` -/
def P11728015122294750614.Spec : Prop :=
  ∀ n, P11728015122294750614.a n = A293643 n

end A293643

/-! ## A293643.P2169729590468658599

`A000045(n)-(A293638(n)+A004698(n))`
-/

namespace A293643.P2169729590468658599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293638 n + A004698 n)

end

end A293643.P2169729590468658599

namespace A293643

/-- `A000045(n)-(A293638(n)+A004698(n))` -/
def P2169729590468658599.Spec : Prop :=
  ∀ n, P2169729590468658599.a n = A293643 n

end A293643

/-! ## A293643.P10196434591515928034

`A000045(n)+A293641(n)-A293671(n)`
-/

namespace A293643.P10196434591515928034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293641 n - A293671 n)

end

end A293643.P10196434591515928034

namespace A293643

/-- `A000045(n)+A293641(n)-A293671(n)` -/
def P10196434591515928034.Spec : Prop :=
  ∀ n, P10196434591515928034.a n = A293643 n

end A293643

/-! ## A293643.P17014152110534030515

`A293672(n)+A293673(n)-A000045(n)`
-/

namespace A293643.P17014152110534030515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n + (A293673 n - A000045 n)

end

end A293643.P17014152110534030515

namespace A293643

/-- `A293672(n)+A293673(n)-A000045(n)` -/
def P17014152110534030515.Spec : Prop :=
  ∀ n, P17014152110534030515.a n = A293643 n

end A293643

/-! ## A293643.P4249538297414549046

`A293641(n)+A293673(n)-A293642(n)`
-/

namespace A293643.P4249538297414549046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + (A293673 n - A293642 n)

end

end A293643.P4249538297414549046

namespace A293643

/-- `A293641(n)+A293673(n)-A293642(n)` -/
def P4249538297414549046.Spec : Prop :=
  ∀ n, P4249538297414549046.a n = A293643 n

end A293643

/-! ## A293643.P6422549478237607654

`A293642(n)+A293672(n)-A293671(n)`
-/

namespace A293643.P6422549478237607654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + (A293672 n - A293671 n)

end

end A293643.P6422549478237607654

namespace A293643

/-- `A293642(n)+A293672(n)-A293671(n)` -/
def P6422549478237607654.Spec : Prop :=
  ∀ n, P6422549478237607654.a n = A293643 n

end A293643

/-! ## A293643.P11411838115881054528

`A293672(n)+A293673(n)-A212804(n+1)`
-/

namespace A293643.P11411838115881054528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n + (A293673 n - A212804 (n + 1))

end

end A293643.P11411838115881054528

namespace A293643

/-- `A293672(n)+A293673(n)-A212804(n+1)` -/
def P11411838115881054528.Spec : Prop :=
  ∀ n, P11411838115881054528.a n = A293643 n

end A293643

/-!
# A293644: a(n) is the integer k that minimizes |k/Fibonacci(n) - 3/5|.

The programs for A293644, the canonical program `A293644.P9174250443400626299` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293644 has offset 0).

The definition of A293644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293644.P9174250443400626299

`A293640(n)+A004698(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293644

/-- `A293640(n)+A004698(n)` -/
def P9174250443400626299.Spec : Prop :=
  ∀ n, P9174250443400626299.a n = A293644 n

theorem P9174250443400626299.correct : P9174250443400626299.Spec := by
  intro n
  simp only [A293644]

end A293644

/-! ## A293644.P3242768843551635798

`A293639(n)+A293637(n)`
-/

namespace A293644.P3242768843551635798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + A293637 n

end

end A293644.P3242768843551635798

namespace A293644

/-- `A293639(n)+A293637(n)` -/
def P3242768843551635798.Spec : Prop :=
  ∀ n, P3242768843551635798.a n = A293644 n

theorem P3242768843551635798.correct : P3242768843551635798.Spec := by
  intro n
  simp only [A293644, Nat.add_sub_cancel, A293644.P3242768843551635798.a, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A293637, A293637.P15390255035316120638.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293644

/-! ## A293644.P11939692416460742343

`A004698(n)+A293638(n)+A293637(n)`
-/

namespace A293644.P11939692416460742343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293638 n + A293637 n)

end

end A293644.P11939692416460742343

namespace A293644

/-- `A004698(n)+A293638(n)+A293637(n)` -/
def P11939692416460742343.Spec : Prop :=
  ∀ n, P11939692416460742343.a n = A293644 n

theorem P11939692416460742343.correct : P11939692416460742343.Spec := by
  intro n
  simp only [A293644, Nat.add_sub_cancel, A293644.P11939692416460742343.a, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A293637, A293637.P15390255035316120638.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293639, A293639.P9503296093773056529.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293644

/-! ## A293644.P539050987971145478

`A293639(n)+A293640(n)-A293638(n)`
-/

namespace A293644.P539050987971145478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293640 n - A293638 n)

end

end A293644.P539050987971145478

namespace A293644

/-- `A293639(n)+A293640(n)-A293638(n)` -/
def P539050987971145478.Spec : Prop :=
  ∀ n, P539050987971145478.a n = A293644 n

theorem P539050987971145478.correct : P539050987971145478.Spec := by
  intro n
  simp only [A293644, Nat.add_sub_cancel, A293644.P539050987971145478.a, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293644

/-! ## A293644.P7058653148112195362

`A293639(n)+A293643(n)-A293641(n)`
-/

namespace A293644.P7058653148112195362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293643 n - A293641 n)

end

end A293644.P7058653148112195362

namespace A293644

/-- `A293639(n)+A293643(n)-A293641(n)` -/
def P7058653148112195362.Spec : Prop :=
  ∀ n, P7058653148112195362.a n = A293644 n

theorem P7058653148112195362.correct : P7058653148112195362.Spec := by
  intro n
  simp only [A293644, Nat.add_sub_cancel, A293644.P7058653148112195362.a, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A293639, A293639.P9503296093773056529.a, A293640, A293640.P11125392320751003996.a, A293641, A293641.P3298730872533662908.a, A293643, A293643.P4507541113369721667.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, A293642, A293642.P4545341947688583851.a, A293672, A293672.P8681346290342597704.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293644

/-! ## A293644.P5868472999085341638

`A293640(n)+A293642(n)-A293641(n)`
-/

namespace A293644.P5868472999085341638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293641 n)

end

end A293644.P5868472999085341638

namespace A293644

/-- `A293640(n)+A293642(n)-A293641(n)` -/
def P5868472999085341638.Spec : Prop :=
  ∀ n, P5868472999085341638.a n = A293644 n

theorem P5868472999085341638.correct : P5868472999085341638.Spec := by
  intro n
  simp only [A293644, Nat.add_sub_cancel, A293644.P5868472999085341638.a, A293644.P9174250443400626299.a, A004698, A004698.P15694019374451496152.a, A293640, A293640.P11125392320751003996.a, A293641, A293641.P3298730872533662908.a, A293642, A293642.P4545341947688583851.a, A000045, A000045.P11838749114346432762.a, A011558, A011558.P10594584635942187014.a, A082116, A082116.P4014037402897930621.a, A293639, A293639.P9503296093773056529.a, A293672, A293672.P8681346290342597704.a, A079998, A079998.P5984370107414098605.a, A293638, A293638.P8604032493732434023.f1, A293638.P8604032493732434023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293644

/-! ## A293644.P6146715551564165652

`A293643(n)-A293643(A293641(n)-A293639(n))`
-/

namespace A293644.P6146715551564165652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n - A293643 (A293641 n - A293639 n).toNat

end

end A293644.P6146715551564165652

namespace A293644

/-- `A293643(n)-A293643(A293641(n)-A293639(n))` -/
def P6146715551564165652.Spec : Prop :=
  ∀ n, P6146715551564165652.a n = A293644 n

end A293644

/-! ## A293644.P12212181561079225650

`round(3/5*A000045(n))`
-/

namespace A293644.P12212181561079225650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 5 * (A000045 n : ℚ))

end

end A293644.P12212181561079225650

namespace A293644

/-- `round(3/5*A000045(n))` -/
def P12212181561079225650.Spec : Prop :=
  ∀ n, P12212181561079225650.a n = A293644 n

end A293644

/-! ## A293644.P6927867164108640391

`A000045(n)-A293641(n)`
-/

namespace A293644.P6927867164108640391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293641 n

end

end A293644.P6927867164108640391

namespace A293644

/-- `A000045(n)-A293641(n)` -/
def P6927867164108640391.Spec : Prop :=
  ∀ n, P6927867164108640391.a n = A293644 n

end A293644

/-! ## A293644.P5660481781067447534

`A001611(n)-(A293641(n)+1)`
-/

namespace A293644.P5660481781067447534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A293641 n + 1)

end

end A293644.P5660481781067447534

namespace A293644

/-- `A001611(n)-(A293641(n)+1)` -/
def P5660481781067447534.Spec : Prop :=
  ∀ n, P5660481781067447534.a n = A293644 n

end A293644

/-! ## A293644.P10364286162983173266

`A212804(n+1)-A293641(n)`
-/

namespace A293644.P10364286162983173266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293641 n

end

end A293644.P10364286162983173266

namespace A293644

/-- `A212804(n+1)-A293641(n)` -/
def P10364286162983173266.Spec : Prop :=
  ∀ n, P10364286162983173266.a n = A293644 n

end A293644

/-! ## A293644.P16462076940304882562

`A002062(n)-(A293641(n)+n)`
-/

namespace A293644.P16462076940304882562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n - (A293641 n + (n : ℤ))

end

end A293644.P16462076940304882562

namespace A293644

/-- `A002062(n)-(A293641(n)+n)` -/
def P16462076940304882562.Spec : Prop :=
  ∀ n, P16462076940304882562.a n = A293644 n

end A293644

/-! ## A293644.P8952985719970369577

`A000045(n)+A004698(n)-A293642(n)`
-/

namespace A293644.P8952985719970369577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A004698 n - A293642 n)

end

end A293644.P8952985719970369577

namespace A293644

/-- `A000045(n)+A004698(n)-A293642(n)` -/
def P8952985719970369577.Spec : Prop :=
  ∀ n, P8952985719970369577.a n = A293644 n

end A293644

/-! ## A293644.P11388207158395273588

`A000045(n)+A293639(n)-A293671(n)`
-/

namespace A293644.P11388207158395273588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293639 n - A293671 n)

end

end A293644.P11388207158395273588

namespace A293644

/-- `A000045(n)+A293639(n)-A293671(n)` -/
def P11388207158395273588.Spec : Prop :=
  ∀ n, P11388207158395273588.a n = A293644 n

end A293644

/-! ## A293644.P2582934399295922658

`A000045(n)+A293640(n)-A293672(n)`
-/

namespace A293644.P2582934399295922658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293640 n - A293672 n)

end

end A293644.P2582934399295922658

namespace A293644

/-- `A000045(n)+A293640(n)-A293672(n)` -/
def P2582934399295922658.Spec : Prop :=
  ∀ n, P2582934399295922658.a n = A293644 n

end A293644

/-! ## A293644.P9545710743709553178

`A293637(n)+A293671(n)-A293641(n)`
-/

namespace A293644.P9545710743709553178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293671 n - A293641 n)

end

end A293644.P9545710743709553178

namespace A293644

/-- `A293637(n)+A293671(n)-A293641(n)` -/
def P9545710743709553178.Spec : Prop :=
  ∀ n, P9545710743709553178.a n = A293644 n

end A293644

/-! ## A293644.P18302898800366348530

`A293639(n)+A293673(n)-A293642(n)`
-/

namespace A293644.P18302898800366348530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293673 n - A293642 n)

end

end A293644.P18302898800366348530

namespace A293644

/-- `A293639(n)+A293673(n)-A293642(n)` -/
def P18302898800366348530.Spec : Prop :=
  ∀ n, P18302898800366348530.a n = A293644 n

end A293644

/-! ## A293644.P2324747787059568021

`A000071(n+2)-(A293641(n)+A000071(n+1))`
-/

namespace A293644.P2324747787059568021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293641 n + A000071 (n + 1))

end

end A293644.P2324747787059568021

namespace A293644

/-- `A000071(n+2)-(A293641(n)+A000071(n+1))` -/
def P2324747787059568021.Spec : Prop :=
  ∀ n, P2324747787059568021.a n = A293644 n

end A293644

/-! ## A293644.P2500480050472376098

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=2, a(1)=3, a(2)=0`
-/

namespace A293644.P2500480050472376098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293644.P2500480050472376098

namespace A293644

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P2500480050472376098.Spec : Prop :=
  ∀ n, P2500480050472376098.a n = A293644 n

end A293644

/-!
# A293645: Positive numbers that are the sum of two (possibly negative) coprime cubes.

The programs for A293645, there is no canonical definition to state claims against.
-/

/-! ## A293645.P11221472267167218000

`∪[A293646(n+1), A293647(n+1)]`
-/

namespace A293645.P11221472267167218000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293645.P11221472267167218000

/-! ## A293645.P13436014626870394988

`∑{e}[2^(n+1), A293646(#)]`
-/

namespace A293645.P13436014626870394988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A293646 (Nat.factorization (f1 n) p)

end

end A293645.P13436014626870394988

/-! ## A293645.P11570108308970743673

`A293646(A077342(n+1))`
-/

namespace A293645.P11570108308970743673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293646 (A077342 (n + 1)).toNat

end

end A293645.P11570108308970743673

/-! ## A293645.P10786636596133007385

`A293646(A242474(n+1))`
-/

namespace A293645.P10786636596133007385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293646 (A242474 (n + 1)).toNat

end

end A293645.P10786636596133007385

/-! ## A293645.P3155573740662054274

`A293646(A351374(n+1))`
-/

namespace A293645.P3155573740662054274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293646 (A351374 (n + 1)).toNat

end

end A293645.P3155573740662054274

/-!
# A293646: Sum of two (possibly negative) coprime cubes, but not the sum of 2 non-coprime cubes.

The programs for A293646, there is no canonical definition to state claims against.
-/

/-! ## A293646.P6666510937244087844

`A293645(lt[A145966(n+1), A293613(n)])`
-/

namespace A293646.P6666510937244087844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293646.P6666510937244087844

/-! ## A293646.P3228649324872794749

`A293645(lt[A000009(n), A001615(3*n+1)])`
-/

namespace A293646.P3228649324872794749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293646.P3228649324872794749

/-! ## A293646.P17987362087539630795

`A293645(lt[A145966(n+1), A293642(2*n+3)])`
-/

namespace A293646.P17987362087539630795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293646.P17987362087539630795

/-! ## A293646.P6818918163200327624

`A293645(lt[A145966(n+1), A293645(n+1)²²])`
-/

namespace A293646.P6818918163200327624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293645 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293646.P6818918163200327624

/-! ## A293646.P5947639285286731778

`∪[∏{e}[2^n, A020895(#)], A020895(n+1)]`
-/

namespace A293646.P5947639285286731778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A020895 (Nat.factorization (f2 n) p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A293646.P5947639285286731778

/-!
# A293648: Sum of two (possibly negative) coprime cubes in at least 2 ways, but not the sum of 2 noncoprime cubes.

The programs for A293648, there is no canonical definition to state claims against.
-/

/-! ## A293648.P4422397475860307064

`record[A007948(A051347(n+1))]`
-/

namespace A293648.P4422397475860307064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A051347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293648.P4422397475860307064

/-! ## A293648.P3249523624967459803

`record[A007948(A293647(n+1))]`
-/

namespace A293648.P3249523624967459803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A293647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293648.P3249523624967459803

/-! ## A293648.P17704116828327010512

`record[A050985(A051347(n+1))]/A033999(n)²`
-/

namespace A293648.P17704116828327010512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A051347 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A293648.P17704116828327010512

/-!
# A293650: Sum of two (possibly negative) cubes in at least 3 ways (primitive solutions).

The programs for A293650, there is no canonical definition to state claims against.
-/

/-! ## A293650.P6954701236736703123

`A051383(A293353(n*A273973(n)))`
-/

namespace A293650.P6954701236736703123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051383 (A293353 ((n : ℤ) * A273973 n).toNat).toNat

end

end A293650.P6954701236736703123

/-!
# A293651: Sum of two (possibly negative) coprime cubes in at least 3 ways, but not the sum of 2 noncoprime cubes.

The programs for A293651, there is no canonical definition to state claims against.
-/

/-! ## A293651.P10473344123868046461

`∩[A051383(n+1), A293648(n+1)]`
-/

namespace A293651.P10473344123868046461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293651.P10473344123868046461

/-! ## A293651.P5755324902981059312

`∩[A293648(n+1), A293650(n+1)]`
-/

namespace A293651.P5755324902981059312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293651.P5755324902981059312

/-!
# A293653: Young urn sequence (number of possible evolutions in n steps of the "Young" Pólya urn).

The programs for A293653, there is no canonical definition to state claims against.
-/

/-! ## A293653.P9692546877183832955

`∏[comp[3*(n+1)]+1]`
-/

namespace A293653.P9692546877183832955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A293653.P9692546877183832955

/-! ## A293653.P6538607897402518597

`abs(∏[record[2-gcd(3, n)+n]])`
-/

namespace A293653.P6538607897402518597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A293653.P6538607897402518597

/-! ## A293653.P1064083777507357834

`ceil(3*n/2)*a(n-1)` with `a(0)=1`
-/

namespace A293653.P1064083777507357834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈3 * ((n : ℚ) / 2)⌉ * a (n - 1)

end

end A293653.P1064083777507357834

/-! ## A293653.P8159608783503467461

`a(n-1)*comp[3*n+1]` with `a(0)=1`
-/

namespace A293653.P8159608783503467461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A293653.P8159608783503467461

/-! ## A293653.P15877435508446962171

`floor(floor((n+1)/2+n)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A293653.P15877435508446962171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) / 2 + (n : ℚ)⌋ * a (n - 1)

end

end A293653.P15877435508446962171

/-! ## A293653.P382877999094926543

`(2*n-floor(n/2))*floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A293653.P382877999094926543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - ⌊(n : ℚ) / 2⌋) * a (n - 1)

end

end A293653.P382877999094926543

/-! ## A293653.P8823319002856898403

`a(n-1)*∑[3-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A293653.P8823319002856898403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A293653.P8823319002856898403

/-! ## A293653.P16161055454318049510

`-∏[A045506(n)]`
-/

namespace A293653.P16161055454318049510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A293653.P16161055454318049510

/-! ## A293653.P18020732464790351230

`∏[sqrt(A065033(3*n))]²`
-/

namespace A293653.P18020732464790351230
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065033 (3 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A293653.P18020732464790351230

/-! ## A293653.P9822493599630573959

`∏[sqrt(A065033(n)+n)]²`
-/

namespace A293653.P9822493599630573959
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065033 n + (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A293653.P9822493599630573959

/-!
# A293654: Integers not represented by cyclotomic binary forms.

The programs for A293654, there is no canonical definition to state claims against.
-/

/-! ## A293654.P17860148714019218115

`eq[0, A299214(n+1)]+1`
-/

namespace A293654.P17860148714019218115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293654.P17860148714019218115

/-! ## A293654.P14826245524731917040

`comp[A296095(n+1)-1]+1`
-/

namespace A293654.P14826245524731917040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A293654.P14826245524731917040

/-! ## A293654.P2344041459622017217

`lt[n*A299214(A028310(n)), n]`
-/

namespace A293654.P2344041459622017217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A299214 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293654.P2344041459622017217

/-! ## A293654.P5163131138111249605

`comp[A023443(A296095(n+1))]+1`
-/

namespace A293654.P5163131138111249605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A296095 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A293654.P5163131138111249605

/-! ## A293654.P1101932135463267787

`lt[A299214(A028310(n+1)), 1]+1`
-/

namespace A293654.P1101932135463267787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (A028310 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A293654.P1101932135463267787

/-! ## A293654.P12997753920280247719

`lt[A299214(n+1), A055642(n)]+1`
-/

namespace A293654.P12997753920280247719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A293654.P12997753920280247719

/-! ## A293654.P5777307149207565428

`record[A000027(n+1)-A299214(n+1)]`
-/

namespace A293654.P5777307149207565428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P5777307149207565428

/-! ## A293654.P15633645478625049022

`record[1-A001489(n)-A299214(n+1)]`
-/

namespace A293654.P15633645478625049022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 n - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P15633645478625049022

/-! ## A293654.P2411924217462700200

`record[A008619(2*n)-A299214(n+1)]`
-/

namespace A293654.P2411924217462700200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P2411924217462700200

/-! ## A293654.P12412124732424072208

`record[A052938(2*n)-A299214(n+1)]`
-/

namespace A293654.P12412124732424072208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P12412124732424072208

/-! ## A293654.P14986990948603185734

`record[A131732(2*n)-A299214(n+1)]`
-/

namespace A293654.P14986990948603185734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * n) - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P14986990948603185734

/-! ## A293654.P13058045443388482402

`record[A008611(3*n)-A299214(n+1)]`
-/

namespace A293654.P13058045443388482402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P13058045443388482402

/-! ## A293654.P5928857195469734462

`record[n+1-A023808(A299214(n+1)+1)]`
-/

namespace A293654.P5928857195469734462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A023808 (A299214 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P5928857195469734462

/-! ## A293654.P5895569423198452930

`record[n+1-A052331(A299214(n+1)+1)]`
-/

namespace A293654.P5895569423198452930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052331 (A299214 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P5895569423198452930

/-! ## A293654.P1114506393588100619

`record[(n+1)/A047497(A299214(n+1)+1)]`
-/

namespace A293654.P1114506393588100619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A047497 (A299214 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P1114506393588100619

/-! ## A293654.P781696098172895766

`record[(n+1)/A117108(A299214(n+1)+1)]`
-/

namespace A293654.P781696098172895766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A117108 (A299214 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P781696098172895766

/-! ## A293654.P10091816509579900855

`record[(n+1)/A052331(A299214(n+1)+2)]`
-/

namespace A293654.P10091816509579900855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052331 (A299214 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P10091816509579900855

/-! ## A293654.P2848230246841593627

`record[A002264(3*n+5)-A299214(n+1)]`
-/

namespace A293654.P2848230246841593627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * n + 5) - A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P2848230246841593627

/-! ## A293654.P5352192390530522782

`lt[A299214(n+1), A000032(C(n, n²))]+1`
-/

namespace A293654.P5352192390530522782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A293654.P5352192390530522782

/-! ## A293654.P7355788795137592024

`record[n+1-A296095(n+1)*A299214(n+1)]`
-/

namespace A293654.P7355788795137592024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A296095 (n + 1) * A299214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293654.P7355788795137592024

/-!
# A293656: a(n) = binomial(n+1,2)*n!/n!!.

The programs for A293656, the canonical program `A293656.P5162966852586704272` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293656 has offset 1).

The definition of A293656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293656.P1174696444309605030

`∑[n+1]*∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A293656.P1174696444309605030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A293656.P1174696444309605030

namespace A293656

/-- `∑[n+1]*∏[n/a(n-1)]` -/
def P1174696444309605030.Spec : Prop :=
  ∀ n, P1174696444309605030.a n = (A293656 (n + 1) : ℚ)

end A293656

/-! ## A293656.P3904072817475644664

`(n+2)*a(n-2)/(1-2/(n+1))` with `a(0)=1, a(1)=3`
-/

namespace A293656.P3904072817475644664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 2 : ℚ) * (a (n - 2) / (1 - 2 / (n + 1 : ℚ)))

end

end A293656.P3904072817475644664

namespace A293656

/-- `(n+2)*a(n-2)/(1-2/(n+1))` -/
def P3904072817475644664.Spec : Prop :=
  ∀ n, P3904072817475644664.a n = (A293656 (n + 1) : ℚ)

end A293656

/-! ## A293656.P5162966852586704272

`∑[n+1]*A006882(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293656

/-- `∑[n+1]*A006882(n)` -/
def P5162966852586704272.Spec : Prop :=
  ∀ n, P5162966852586704272.a n = A293656 (n + 1)

theorem P5162966852586704272.correct : P5162966852586704272.Spec := by
  intro n
  simp only [A293656, Nat.add_sub_cancel]

end A293656

/-! ## A293656.P10008033621000869099

`(A128882(n)+1)*∑[n+1]`
-/

namespace A293656.P10008033621000869099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128882 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A293656.P10008033621000869099

namespace A293656

/-- `(A128882(n)+1)*∑[n+1]` -/
def P10008033621000869099.Spec : Prop :=
  ∀ n, P10008033621000869099.a n = A293656 (n + 1)

theorem P10008033621000869099.correct : P10008033621000869099.Spec := by
  intro n
  simp only [A293656, Nat.add_sub_cancel, A293656.P10008033621000869099.f1, A293656.P10008033621000869099.a, A293656.P5162966852586704272.f1, A293656.P5162966852586704272.a, A006882, A006882.P4505634677935663530.a, A128882, A128882.P10026494431697835336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293656

/-! ## A293656.P13156347331858157829

`A000124(n+1)*A006882(n)-A006882(n)`
-/

namespace A293656.P13156347331858157829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) * A006882 n - A006882 n

end

end A293656.P13156347331858157829

namespace A293656

/-- `A000124(n+1)*A006882(n)-A006882(n)` -/
def P13156347331858157829.Spec : Prop :=
  ∀ n, P13156347331858157829.a n = A293656 (n + 1)

end A293656

/-! ## A293656.P6730145257812499152

`A000217(n+1)+A000217(n+1)*A128882(n)`
-/

namespace A293656.P6730145257812499152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A128882 n

end

end A293656.P6730145257812499152

namespace A293656

/-- `A000217(n+1)+A000217(n+1)*A128882(n)` -/
def P6730145257812499152.Spec : Prop :=
  ∀ n, P6730145257812499152.a n = A293656 (n + 1)

end A293656

/-! ## A293656.P11558300318261643019

`∑[n+1]*A230698(∑[n])`
-/

namespace A293656.P11558300318261643019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A230698 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A293656.P11558300318261643019

namespace A293656

/-- `∑[n+1]*A230698(∑[n])` -/
def P11558300318261643019.Spec : Prop :=
  ∀ n, P11558300318261643019.a n = A293656 (n + 1)

end A293656

/-! ## A293656.P5723655357971447378

`(A000142(n+1)-A127111(n))*A000217(n+1)`
-/

namespace A293656.P5723655357971447378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A127111 n) * A000217 (n + 1)

end

end A293656.P5723655357971447378

namespace A293656

/-- `(A000142(n+1)-A127111(n))*A000217(n+1)` -/
def P5723655357971447378.Spec : Prop :=
  ∀ n, P5723655357971447378.a n = A293656 (n + 1)

end A293656

/-! ## A293656.P14997405337681847736

`A000142(n+1)/A006882(n+1)*A000217(n+1)`
-/

namespace A293656.P14997405337681847736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A006882 (n + 1) : ℚ) * (A000217 (n + 1) : ℚ)

end

end A293656.P14997405337681847736

namespace A293656

/-- `A000142(n+1)/A006882(n+1)*A000217(n+1)` -/
def P14997405337681847736.Spec : Prop :=
  ∀ n, P14997405337681847736.a n = (A293656 (n + 1) : ℚ)

end A293656

/-!
# A293657: Base-4 circular primes that are not base-4 repunits.

The programs for A293657, there is no canonical definition to state claims against.
-/

/-! ## A293657.P8267966348932214343

`p?[A194640(A152535(n+1)+9)]`
-/

namespace A293657.P8267966348932214343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A152535 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293657.P8267966348932214343

/-! ## A293657.P3781504934903815214

`p?[or(A208770(n+1), A339039(n))]`
-/

namespace A293657.P3781504934903815214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208770 (n + 1)) (A339039 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293657.P3781504934903815214

/-!
# A293658: Base-5 circular primes that are not base-5 repunits.

The programs for A293658, there is no canonical definition to state claims against.
-/

/-! ## A293658.P2038788498312816432

`A216524(A115896(n+1)+1)`
-/

namespace A293658.P2038788498312816432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216524 (A115896 (n + 1) + 1).toNat

end

end A293658.P2038788498312816432

/-! ## A293658.P3573129702775988781

`A216524(A116018(n+1)+1)`
-/

namespace A293658.P3573129702775988781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216524 (A116018 (n + 1) + 1).toNat

end

end A293658.P3573129702775988781

/-! ## A293658.P5975597836399532253

`A197300(A356824(n+1))`
-/

namespace A293658.P5975597836399532253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (A356824 (n + 1)).toNat

end

end A293658.P5975597836399532253

/-!
# A293659: Base-6 circular primes that are not base-6 repunits.

The programs for A293659, there is no canonical definition to state claims against.
-/

/-! ## A293659.P16971930224396648328

`p?[or(10*n, lcm(7, n)/7)]`
-/

namespace A293659.P16971930224396648328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (10 * n : ℤ) (SequenceMachineLib.roundAway ((Nat.lcm 7 n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293659.P16971930224396648328

/-!
# A293660: Base-7 circular primes that are not base-7 repunits.

The programs for A293660, there is no canonical definition to state claims against.
-/

/-! ## A293660.P10993362020089927657

`lt[A303727(2*(n+2)), A002522(A303711(2*(n+1)))]+1`
-/

namespace A293660.P10993362020089927657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A303711 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A293660.P10993362020089927657

/-! ## A293660.P1460086960520608769

`∩[A075237(A333491(n+1)+1), A333491(n+1)]`
-/

namespace A293660.P1460086960520608769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075237 (A333491 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293660.P1460086960520608769

/-! ## A293660.P16400528071418817225

`p?[C(2*n, gcd(11, n))+9]`
-/

namespace A293660.P16400528071418817225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (Nat.gcd 11 n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A293660.P16400528071418817225

/-! ## A293660.P16764625784862933638

`p?[Δ[A175459(n+3)]]`
-/

namespace A293660.P16764625784862933638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175459 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293660.P16764625784862933638

/-!
# A293662: Base-9 circular primes that are not base-9 repunits.

The programs for A293662, there is no canonical definition to state claims against.
-/

/-! ## A293662.P12457340889872928913

`filter[A075239(n+3), A130854(#)]`
-/

namespace A293662.P12457340889872928913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130854 (f1 j).toNat = 1) n)

end

end A293662.P12457340889872928913

/-! ## A293662.P13965352224010059496

`record[p?[A004498(A122282(n))]]`
-/

namespace A293662.P13965352224010059496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A122282 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293662.P13965352224010059496

/-! ## A293662.P349277897087085214

`record[p?[A004498(A122350(n))]]`
-/

namespace A293662.P349277897087085214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 (A122350 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293662.P349277897087085214

/-! ## A293662.P9595281997624958285

`∩[A075239(n+1), A135779(n+1)]`
-/

namespace A293662.P9595281997624958285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293662.P9595281997624958285

/-! ## A293662.P2575991466216701671

`A075239(A296090(n+5)^A283531(n))`
-/

namespace A293662.P2575991466216701671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (SequenceMachineLib.roundAway ((A296090 (n + 5) : ℚ) ^ (A283531 n : ℤ))).toNat

end

end A293662.P2575991466216701671

/-!
# A293663: Circular primes that are not repunits.

The programs for A293663, there is no canonical definition to state claims against.
-/

/-! ## A293663.P8555070351822056661

`A068652(comp[C(5*n, 4)])`
-/

namespace A293663.P8555070351822056661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A293663.P8555070351822056661

/-! ## A293663.P7708101676209584011

`A068652(gcd(2, C(3, n))+n)`
-/

namespace A293663.P7708101676209584011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (Nat.gcd 2 (Nat.choose 3 n) + n)

end

end A293663.P7708101676209584011

/-! ## A293663.P3072380310045295398

`A068652(A130543(n)+1+n)`
-/

namespace A293663.P3072380310045295398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A130543 n + 1 + (n : ℤ)).toNat

end

end A293663.P3072380310045295398

/-! ## A293663.P2616435471413380316

`A068652(A055642(n+6)+n)`
-/

namespace A293663.P2616435471413380316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A055642 (n + 6) + (n : ℤ)).toNat

end

end A293663.P2616435471413380316

/-! ## A293663.P17544963184751595898

`A068652(A004218(n+7)+n)`
-/

namespace A293663.P17544963184751595898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A004218 (n + 7) + (n : ℤ)).toNat

end

end A293663.P17544963184751595898

/-! ## A293663.P15201306861869518092

`A068652(A043566(3*n+2)+n)`
-/

namespace A293663.P15201306861869518092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A043566 (3 * n + 2) + (n : ℤ)).toNat

end

end A293663.P15201306861869518092

/-! ## A293663.P4377032689979505335

`A068652(comp[C(A063552(n)+3, n+1)]+1)`
-/

namespace A293663.P4377032689979505335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063552 n + 3).toNat (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A293663.P4377032689979505335

/-!
# A293664: For n >= 0, let E_n be the set of exponents in expression of 2*n as a sum of distinct powers of 2 (2*n = Sum_{e in E_n} 2^e); a(n) = number of distinct values taken by the expression Sum_{e in E_n} s(e)*2^e when s runs over all functions from the positive numbers to the set { +1, -1 }.

The programs for A293664, there is no canonical definition to state claims against.
-/

/-! ## A293664.P8258126680128028989

`A304793(A019565(n))+1`
-/

namespace A293664.P8258126680128028989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A019565 n).toNat + 1

end

end A293664.P8258126680128028989

/-! ## A293664.P3535825608593289631

`A304793(A339809(n)+1)+1`
-/

namespace A293664.P3535825608593289631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A339809 n + 1).toNat + 1

end

end A293664.P3535825608593289631

/-! ## A293664.P7368873593399159327

`A299701(A019565(n))`
-/

namespace A293664.P7368873593399159327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A019565 n).toNat

end

end A293664.P7368873593399159327

/-! ## A293664.P1934580817036764625

`A299701(sqrt(A334110(n)))`
-/

namespace A293664.P1934580817036764625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A293664.P1934580817036764625

/-! ## A293664.P13546510837992418123

`A299701(A339809(n)+1)`
-/

namespace A293664.P13546510837992418123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A339809 n + 1).toNat

end

end A293664.P13546510837992418123

/-! ## A293664.P16689827638736486605

`A001316(n)-A325801(A019565(n))`
-/

namespace A293664.P16689827638736486605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - A325801 (A019565 n).toNat

end

end A293664.P16689827638736486605

/-!
# A293665: a(0) = 1; a(n) = -Sum_{d|n} a(n-d).

The programs for A293665, there is no canonical definition to state claims against.
-/

/-! ## A293665.P5032797667258474840

`A124751(n+4)-A010060(A001787(n))`
-/

namespace A293665.P5032797667258474840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124751 (n + 4) - A010060 (A001787 n).toNat

end

end A293665.P5032797667258474840

/-! ## A293665.P7422957860353291925

`A349448(n+1)-A001221(A027893(n+1))`
-/

namespace A293665.P7422957860353291925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349448 (n + 1) - A001221 (A027893 (n + 1)).toNat

end

end A293665.P7422957860353291925

/-!
# A293666: Lexicographically earliest sequence of distinct positive integers such that the absolute value of the first difference contains only distinct prime numbers.

The programs for A293666, there is no canonical definition to state claims against.
-/

/-! ## A293666.P3813446287154263282

`A293667(n)+a(n-1)` with `a(0)=1`
-/

namespace A293666.P3813446287154263282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293667 n + a (n - 1)

end

end A293666.P3813446287154263282

/-! ## A293666.P12681200245273512101

`∑[A293667(abs(1-n)+1)]-2`
-/

namespace A293666.P12681200245273512101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293667 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A293666.P12681200245273512101

/-! ## A293666.P7862820675326713748

`∑[A293667(round(sqrt(n²+1)))-1]+n`
-/

namespace A293666.P7862820675326713748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293667 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A293666.P7862820675326713748

/-! ## A293666.P16676666292877816393

`A293667(n)-(n-1-A028310(n))*a(n-1)` with `a(0)=1`
-/

namespace A293666.P16676666292877816393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293667 n - ((n : ℤ) - 1 - A028310 n) * a (n - 1)

end

end A293666.P16676666292877816393

/-! ## A293666.P5871016790699208108

`A020725(∑[A293667(n+1)])-A293667(n+1)`
-/

namespace A293666.P5871016790699208108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A293667 (n + 1)

end

end A293666.P5871016790699208108

/-!
# A293667: First difference of A293666.

The programs for A293667, there is no canonical definition to state claims against.
-/

/-! ## A293667.P7180656163549143318

`Δ[A293666(n+1)]`
-/

namespace A293667.P7180656163549143318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293667.P7180656163549143318

/-! ## A293667.P268639364486120136

`A293666(n+2)-A293666(n+1)`
-/

namespace A293667.P268639364486120136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293666 (n + 2) - A293666 (n + 1)

end

end A293667.P268639364486120136

/-! ## A293667.P11126992133275622275

`A034947(A041875(n))*A144755(n+1)`
-/

namespace A293667.P11126992133275622275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A041875 n).toNat * A144755 (n + 1)

end

end A293667.P11126992133275622275

/-!
# A293668: First differences of A292046.

The programs for A293668, the canonical program `A293668.P14676330596261024754` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293668 has offset 0).

The definition of A293668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255308, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293668.P14676330596261024754

`A255308(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293668

/-- `A255308(n)+1` -/
def P14676330596261024754.Spec : Prop :=
  ∀ n, P14676330596261024754.a n = A293668 n

theorem P14676330596261024754.correct : P14676330596261024754.Spec := by
  intro n
  simp only [A293668]

end A293668

/-! ## A293668.P17654384266821963737

`Δ[a(ceil(log2(n)))+n]` with `a(0)=0`
-/

namespace A293668.P17654384266821963737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌈Real.logb 2 (n : ℝ)⌉.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293668.P17654384266821963737

namespace A293668

/-- `Δ[a(ceil(log2(n)))+n]` -/
def P17654384266821963737.Spec : Prop :=
  ∀ n, P17654384266821963737.a n = A293668 n

theorem P17654384266821963737.correct : P17654384266821963737.Spec := by
  intro n
  simp only [A293668, Nat.add_sub_cancel, A293668.P17654384266821963737.f1, A293668.P17654384266821963737.a, A293668.P14676330596261024754.a, A255308, A255308.P13716518925612893549.f1, A255308.P13716518925612893549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293668

/-! ## A293668.P4765462501969909156

`A049076(A358506(n+1))`
-/

namespace A293668.P4765462501969909156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A358506 (n + 1)).toNat

end

end A293668.P4765462501969909156

namespace A293668

/-- `A049076(A358506(n+1))` -/
def P4765462501969909156.Spec : Prop :=
  ∀ n, P4765462501969909156.a n = A293668 n

end A293668

/-! ## A293668.P10516181696037477279

`A000005(A001316(n)^A255308(n))`
-/

namespace A293668.P10516181696037477279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001316 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P10516181696037477279

namespace A293668

/-- `A000005(A001316(n)^A255308(n))` -/
def P10516181696037477279.Spec : Prop :=
  ∀ n, P10516181696037477279.a n = A293668 n

end A293668

/-! ## A293668.P8467559429785616562

`A000005(A033715(n)^A255308(n))`
-/

namespace A293668.P8467559429785616562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A033715 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P8467559429785616562

namespace A293668

/-- `A000005(A033715(n)^A255308(n))` -/
def P8467559429785616562.Spec : Prop :=
  ∀ n, P8467559429785616562.a n = A293668 n

end A293668

/-! ## A293668.P4092625698043280187

`A035215(A033715(n)^A255308(n))`
-/

namespace A293668.P4092625698043280187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (SequenceMachineLib.roundAway ((A033715 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P4092625698043280187

namespace A293668

/-- `A035215(A033715(n)^A255308(n))` -/
def P4092625698043280187.Spec : Prop :=
  ∀ n, P4092625698043280187.a n = A293668 n

end A293668

/-! ## A293668.P10452251693801831375

`A070939(A001316(n)^A255308(n))`
-/

namespace A293668.P10452251693801831375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A001316 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P10452251693801831375

namespace A293668

/-- `A070939(A001316(n)^A255308(n))` -/
def P10452251693801831375.Spec : Prop :=
  ∀ n, P10452251693801831375.a n = A293668 n

end A293668

/-! ## A293668.P5250577649575704012

`A000005(A255304(n)^A255308(n))`
-/

namespace A293668.P5250577649575704012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A255304 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P5250577649575704012

namespace A293668

/-- `A000005(A255304(n)^A255308(n))` -/
def P5250577649575704012.Spec : Prop :=
  ∀ n, P5250577649575704012.a n = A293668 n

end A293668

/-! ## A293668.P4731492961614892174

`A268726(A001316(n)^A255308(n))`
-/

namespace A293668.P4731492961614892174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (SequenceMachineLib.roundAway ((A001316 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P4731492961614892174

namespace A293668

/-- `A268726(A001316(n)^A255308(n))` -/
def P4731492961614892174.Spec : Prop :=
  ∀ n, P4731492961614892174.a n = A293668 n

end A293668

/-! ## A293668.P17467526669907182537

`A000005(A286252(n)^A255308(n))`
-/

namespace A293668.P17467526669907182537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A286252 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P17467526669907182537

namespace A293668

/-- `A000005(A286252(n)^A255308(n))` -/
def P17467526669907182537.Spec : Prop :=
  ∀ n, P17467526669907182537.a n = A293668 n

end A293668

/-! ## A293668.P1255462938625686899

`A070939(A278222(n)^A255308(n))`
-/

namespace A293668.P1255462938625686899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A278222 n : ℚ) ^ (A255308 n : ℤ))).toNat

end

end A293668.P1255462938625686899

namespace A293668

/-- `A070939(A278222(n)^A255308(n))` -/
def P1255462938625686899.Spec : Prop :=
  ∀ n, P1255462938625686899.a n = A293668 n

end A293668

/-! ## A293668.P8485338282681445991

`2-(A001222(A007918(n))-A255308(n))`
-/

namespace A293668.P8485338282681445991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A001222 (A007918 n).toNat - A255308 n)

end

end A293668.P8485338282681445991

namespace A293668

/-- `2-(A001222(A007918(n))-A255308(n))` -/
def P8485338282681445991.Spec : Prop :=
  ∀ n, P8485338282681445991.a n = A293668 n

end A293668

/-! ## A293668.P7600375112349502368

`1-A014653(A277561(n))*A255308(n)`
-/

namespace A293668.P7600375112349502368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014653 (A277561 n).toNat * A255308 n

end

end A293668.P7600375112349502368

namespace A293668

/-- `1-A014653(A277561(n))*A255308(n)` -/
def P7600375112349502368.Spec : Prop :=
  ∀ n, P7600375112349502368.a n = A293668 n

end A293668

/-! ## A293668.P17324824305884376244

`A000005(A000079(A000120(n)*A255308(n)))`
-/

namespace A293668.P17324824305884376244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 (A000120 n * A255308 n).toNat).toNat

end

end A293668.P17324824305884376244

namespace A293668

/-- `A000005(A000079(A000120(n)*A255308(n)))` -/
def P17324824305884376244.Spec : Prop :=
  ∀ n, P17324824305884376244.a n = A293668 n

end A293668

/-!
# A293669: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(Sum_{j=1..k} x^j).

The programs for A293669, there is no canonical definition to state claims against.
-/

/-! ## A293669.P8483760086207136082

`A176843(A293718(n)+2)`
-/

namespace A293669.P8483760086207136082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176843 (A293718 n + 2).toNat

end

end A293669.P8483760086207136082

/-! ## A293669.P4578471549940641559

`or(1, A129835(A276921(n)))`
-/

namespace A293669.P4578471549940641559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129835 (A276921 n).toNat)

end

end A293669.P4578471549940641559

/-! ## A293669.P10304056257553614254

`or(A057427(A107742(n)), A276921(n))`
-/

namespace A293669.P10304056257553614254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A107742 n).toNat) (A276921 n)

end

end A293669.P10304056257553614254

/-! ## A293669.P14285302356172758266

`A109613(A276921(n)%A015759(n+3))`
-/

namespace A293669.P14285302356172758266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.tmod (A276921 n) (A015759 (n + 3))).toNat

end

end A293669.P14285302356172758266

/-! ## A293669.P9584680702264165409

`or(A057427(A057372(n+1)), A276921(n))`
-/

namespace A293669.P9584680702264165409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A057372 (n + 1)).toNat) (A276921 n)

end

end A293669.P9584680702264165409

/-!
# A293671: a(n) is the greatest integer k such that k/Fibonacci(n) < 4/5.

The programs for A293671, the canonical program `A293671.P15712082427370859904` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293671 has offset 0).

The definition of A293671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293671.P15712082427370859904

`floor(4/5*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293671

/-- `floor(4/5*A000045(n))` -/
def P15712082427370859904.Spec : Prop :=
  ∀ n, P15712082427370859904.a n = A293671 n

theorem P15712082427370859904.correct : P15712082427370859904.Spec := by
  intro n
  simp only [A293671]

end A293671

/-! ## A293671.P4322577146010255909

`A293641(n)+A293639(n)`
-/

namespace A293671.P4322577146010255909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + A293639 n

end

end A293671.P4322577146010255909

namespace A293671

/-- `A293641(n)+A293639(n)` -/
def P4322577146010255909.Spec : Prop :=
  ∀ n, P4322577146010255909.a n = A293671 n

end A293671

/-! ## A293671.P18428808365898710172

`A293642(n)+A293638(n)`
-/

namespace A293671.P18428808365898710172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + A293638 n

end

end A293671.P18428808365898710172

namespace A293671

/-- `A293642(n)+A293638(n)` -/
def P18428808365898710172.Spec : Prop :=
  ∀ n, P18428808365898710172.a n = A293671 n

end A293671

/-! ## A293671.P2010246901233026508

`A000045(n)-A293637(n)`
-/

namespace A293671.P2010246901233026508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293637 n

end

end A293671.P2010246901233026508

namespace A293671

/-- `A000045(n)-A293637(n)` -/
def P2010246901233026508.Spec : Prop :=
  ∀ n, P2010246901233026508.a n = A293671 n

end A293671

/-! ## A293671.P13960073981936198612

`A293672(n)-A011558(n)`
-/

namespace A293671.P13960073981936198612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n - A011558 n

end

end A293671.P13960073981936198612

namespace A293671

/-- `A293672(n)-A011558(n)` -/
def P13960073981936198612.Spec : Prop :=
  ∀ n, P13960073981936198612.a n = A293671 n

end A293671

/-! ## A293671.P12526123426693833318

`A212804(n+1)-ceil(A212804(n+1)/5)`
-/

namespace A293671.P12526123426693833318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - ⌈(A212804 (n + 1) : ℚ) / 5⌉

end

end A293671.P12526123426693833318

namespace A293671

/-- `A212804(n+1)-ceil(A212804(n+1)/5)` -/
def P12526123426693833318.Spec : Prop :=
  ∀ n, P12526123426693833318.a n = A293671 n

end A293671

/-! ## A293671.P15140723249313675983

`A001611(n)-1-ceil((A001611(n)-1)/5)`
-/

namespace A293671.P15140723249313675983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1 - ⌈(A001611 n - 1 : ℚ) / 5⌉

end

end A293671.P15140723249313675983

namespace A293671

/-- `A001611(n)-1-ceil((A001611(n)-1)/5)` -/
def P15140723249313675983.Spec : Prop :=
  ∀ n, P15140723249313675983.a n = A293671 n

end A293671

/-! ## A293671.P7480581225290657008

`A004698(n)+A293641(n)+A293638(n)`
-/

namespace A293671.P7480581225290657008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293641 n + A293638 n)

end

end A293671.P7480581225290657008

namespace A293671

/-- `A004698(n)+A293641(n)+A293638(n)` -/
def P7480581225290657008.Spec : Prop :=
  ∀ n, P7480581225290657008.a n = A293671 n

end A293671

/-! ## A293671.P16750570882191549235

`A000045(n)-(A011558(n)+A004698(n))`
-/

namespace A293671.P16750570882191549235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A011558 n + A004698 n)

end

end A293671.P16750570882191549235

namespace A293671

/-- `A000045(n)-(A011558(n)+A004698(n))` -/
def P16750570882191549235.Spec : Prop :=
  ∀ n, P16750570882191549235.a n = A293671 n

end A293671

/-! ## A293671.P14825658123683033696

`A000045(n)+A293638(n)-A293640(n)`
-/

namespace A293671.P14825658123683033696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293638 n - A293640 n)

end

end A293671.P14825658123683033696

namespace A293671

/-- `A000045(n)+A293638(n)-A293640(n)` -/
def P14825658123683033696.Spec : Prop :=
  ∀ n, P14825658123683033696.a n = A293671 n

end A293671

/-! ## A293671.P13523792261286530056

`A293639(n)+A293642(n)-A004698(n)`
-/

namespace A293671.P13523792261286530056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293642 n - A004698 n)

end

end A293671.P13523792261286530056

namespace A293671

/-- `A293639(n)+A293642(n)-A004698(n)` -/
def P13523792261286530056.Spec : Prop :=
  ∀ n, P13523792261286530056.a n = A293671 n

end A293671

/-! ## A293671.P16717225207979229636

`A293640(n)+A293642(n)-A293637(n)`
-/

namespace A293671.P16717225207979229636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293637 n)

end

end A293671.P16717225207979229636

namespace A293671

/-- `A293640(n)+A293642(n)-A293637(n)` -/
def P16717225207979229636.Spec : Prop :=
  ∀ n, P16717225207979229636.a n = A293671 n

end A293671

/-! ## A293671.P9422255055725151993

`A293639(n)+A293672(n)-A293640(n)`
-/

namespace A293671.P9422255055725151993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293672 n - A293640 n)

end

end A293671.P9422255055725151993

namespace A293671

/-- `A293639(n)+A293672(n)-A293640(n)` -/
def P9422255055725151993.Spec : Prop :=
  ∀ n, P9422255055725151993.a n = A293671 n

end A293671

/-! ## A293671.P5311440074063795194

`A293672(n)-A293640(A293640(n)-A293639(n))`
-/

namespace A293671.P5311440074063795194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293672 n - A293640 (A293640 n - A293639 n).toNat

end

end A293671.P5311440074063795194

namespace A293671

/-- `A293672(n)-A293640(A293640(n)-A293639(n))` -/
def P5311440074063795194.Spec : Prop :=
  ∀ n, P5311440074063795194.a n = A293671 n

end A293671

/-! ## A293671.P15552084755979851795

`A000071(n+2)-(A293637(n)+A000071(n+1))`
-/

namespace A293671.P15552084755979851795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293637 n + A000071 (n + 1))

end

end A293671.P15552084755979851795

namespace A293671

/-- `A000071(n+2)-(A293637(n)+A000071(n+1))` -/
def P15552084755979851795.Spec : Prop :=
  ∀ n, P15552084755979851795.a n = A293671 n

end A293671

/-! ## A293671.P9374635821099055029

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=0, a(1)=4, a(2)=0`
-/

namespace A293671.P9374635821099055029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293671.P9374635821099055029

namespace A293671

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P9374635821099055029.Spec : Prop :=
  ∀ n, P9374635821099055029.a n = A293671 n

end A293671

/-! ## A293671.P15553829285132538537

`floor(A022087(n)/5)`
-/

namespace A293671.P15553829285132538537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022087 n : ℚ) / 5⌋

end

end A293671.P15553829285132538537

namespace A293671

/-- `floor(A022087(n)/5)` -/
def P15553829285132538537.Spec : Prop :=
  ∀ n, P15553829285132538537.a n = A293671 n

end A293671

/-! ## A293671.P2890928941170744387

`floor(4*(A001611(n)-1)/5)`
-/

namespace A293671.P2890928941170744387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * (A001611 n - 1) : ℚ) / 5⌋

end

end A293671.P2890928941170744387

namespace A293671

/-- `floor(4*(A001611(n)-1)/5)` -/
def P2890928941170744387.Spec : Prop :=
  ∀ n, P2890928941170744387.a n = A293671 n

end A293671

/-!
# A293672: a(n) is the least integer k such that k/Fibonacci(n) > 4/5.

The programs for A293672, the canonical program `A293672.P8681346290342597704` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293672 has offset 0).

The definition of A293672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293672.P8681346290342597704

`ceil(4/5*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293672

/-- `ceil(4/5*A000045(n))` -/
def P8681346290342597704.Spec : Prop :=
  ∀ n, P8681346290342597704.a n = A293672 n

theorem P8681346290342597704.correct : P8681346290342597704.Spec := by
  intro n
  simp only [A293672]

end A293672

/-! ## A293672.P10012727152130621330

`A293671(n)+A011558(n)`
-/

namespace A293672.P10012727152130621330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293671 n + A011558 n

end

end A293672.P10012727152130621330

namespace A293672

/-- `A293671(n)+A011558(n)` -/
def P10012727152130621330.Spec : Prop :=
  ∀ n, P10012727152130621330.a n = A293672 n

end A293672

/-! ## A293672.P15285043857253945373

`A293641(n)+A293640(n)`
-/

namespace A293672.P15285043857253945373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + A293640 n

end

end A293672.P15285043857253945373

namespace A293672

/-- `A293641(n)+A293640(n)` -/
def P15285043857253945373.Spec : Prop :=
  ∀ n, P15285043857253945373.a n = A293672 n

end A293672

/-! ## A293672.P3850456469497528042

`A293643(n)+A293638(n)`
-/

namespace A293672.P3850456469497528042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n + A293638 n

end

end A293672.P3850456469497528042

namespace A293672

/-- `A293643(n)+A293638(n)` -/
def P3850456469497528042.Spec : Prop :=
  ∀ n, P3850456469497528042.a n = A293672 n

end A293672

/-! ## A293672.P13169828631970508047

`A000045(n)-A004698(n)`
-/

namespace A293672.P13169828631970508047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A004698 n

end

end A293672.P13169828631970508047

namespace A293672

/-- `A000045(n)-A004698(n)` -/
def P13169828631970508047.Spec : Prop :=
  ∀ n, P13169828631970508047.a n = A293672 n

end A293672

/-! ## A293672.P17633196017040756961

`A212804(n+1)-floor(A212804(n+1)/5)`
-/

namespace A293672.P17633196017040756961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - ⌊(A212804 (n + 1) : ℚ) / 5⌋

end

end A293672.P17633196017040756961

namespace A293672

/-- `A212804(n+1)-floor(A212804(n+1)/5)` -/
def P17633196017040756961.Spec : Prop :=
  ∀ n, P17633196017040756961.a n = A293672 n

end A293672

/-! ## A293672.P13214570017696173368

`A293637(n)+A293641(n)+A293638(n)`
-/

namespace A293672.P13214570017696173368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293641 n + A293638 n)

end

end A293672.P13214570017696173368

namespace A293672

/-- `A293637(n)+A293641(n)+A293638(n)` -/
def P13214570017696173368.Spec : Prop :=
  ∀ n, P13214570017696173368.a n = A293672 n

end A293672

/-! ## A293672.P15632819382813281931

`A000045(n)+A293640(n)-A293644(n)`
-/

namespace A293672.P15632819382813281931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293640 n - A293644 n)

end

end A293672.P15632819382813281931

namespace A293672

/-- `A000045(n)+A293640(n)-A293644(n)` -/
def P15632819382813281931.Spec : Prop :=
  ∀ n, P15632819382813281931.a n = A293672 n

end A293672

/-! ## A293672.P14822202778485555180

`A000045(n)+A293641(n)-A293642(n)`
-/

namespace A293672.P14822202778485555180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293641 n - A293642 n)

end

end A293672.P14822202778485555180

namespace A293672

/-- `A000045(n)+A293641(n)-A293642(n)` -/
def P14822202778485555180.Spec : Prop :=
  ∀ n, P14822202778485555180.a n = A293672 n

end A293672

/-! ## A293672.P7928776644438731364

`A293639(n)+A293643(n)-A004698(n)`
-/

namespace A293672.P7928776644438731364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293639 n + (A293643 n - A004698 n)

end

end A293672.P7928776644438731364

namespace A293672

/-- `A293639(n)+A293643(n)-A004698(n)` -/
def P7928776644438731364.Spec : Prop :=
  ∀ n, P7928776644438731364.a n = A293672 n

end A293672

/-! ## A293672.P18151623768789550415

`A293640(n)+A293642(n)-A004698(n)`
-/

namespace A293672.P18151623768789550415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A004698 n)

end

end A293672.P18151623768789550415

namespace A293672

/-- `A293640(n)+A293642(n)-A004698(n)` -/
def P18151623768789550415.Spec : Prop :=
  ∀ n, P18151623768789550415.a n = A293672 n

end A293672

/-! ## A293672.P4636982942295396611

`A293641(n)+A293644(n)-A004698(n)`
-/

namespace A293672.P4636982942295396611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 n + (A293644 n - A004698 n)

end

end A293672.P4636982942295396611

namespace A293672

/-- `A293641(n)+A293644(n)-A004698(n)` -/
def P4636982942295396611.Spec : Prop :=
  ∀ n, P4636982942295396611.a n = A293672 n

end A293672

/-! ## A293672.P3929287537537524551

`A293637(n)+A293671(n)-A004698(n)`
-/

namespace A293672.P3929287537537524551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293671 n - A004698 n)

end

end A293672.P3929287537537524551

namespace A293672

/-- `A293637(n)+A293671(n)-A004698(n)` -/
def P3929287537537524551.Spec : Prop :=
  ∀ n, P3929287537537524551.a n = A293672 n

end A293672

/-! ## A293672.P3194374700985494224

`A293640(n)+A293671(n)-A293639(n)`
-/

namespace A293672.P3194374700985494224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293671 n - A293639 n)

end

end A293672.P3194374700985494224

namespace A293672

/-- `A293640(n)+A293671(n)-A293639(n)` -/
def P3194374700985494224.Spec : Prop :=
  ∀ n, P3194374700985494224.a n = A293672 n

end A293672

/-! ## A293672.P2247120135207815673

`A212804(n+1)-A293642(n)+A065220(n)+n-A293644(n)`
-/

namespace A293672.P2247120135207815673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293642 n + (A065220 n + (n : ℤ) - A293644 n)

end

end A293672.P2247120135207815673

namespace A293672

/-- `A212804(n+1)-A293642(n)+A065220(n)+n-A293644(n)` -/
def P2247120135207815673.Spec : Prop :=
  ∀ n, P2247120135207815673.a n = A293672 n

end A293672

/-! ## A293672.P6828288490584180672

`A103609(2*n)-A293642(n)+A065220(n)+n-A293644(n)`
-/

namespace A293672.P6828288490584180672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A293642 n + (A065220 n + (n : ℤ) - A293644 n)

end

end A293672.P6828288490584180672

namespace A293672

/-- `A103609(2*n)-A293642(n)+A065220(n)+n-A293644(n)` -/
def P6828288490584180672.Spec : Prop :=
  ∀ n, P6828288490584180672.a n = A293672 n

end A293672

/-! ## A293672.P5783587204607362158

`A000071(n+2)-(A004698(n)+A000071(n+1))`
-/

namespace A293672.P5783587204607362158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A004698 n + A000071 (n + 1))

end

end A293672.P5783587204607362158

namespace A293672

/-- `A000071(n+2)-(A004698(n)+A000071(n+1))` -/
def P5783587204607362158.Spec : Prop :=
  ∀ n, P5783587204607362158.a n = A293672 n

end A293672

/-! ## A293672.P12597048487280505397

`round(A055389(n)/5)+A212804(n+1)-A293642(n)`
-/

namespace A293672.P12597048487280505397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055389 n : ℚ) / 5) + (A212804 (n + 1) - A293642 n)

end

end A293672.P12597048487280505397

namespace A293672

/-- `round(A055389(n)/5)+A212804(n+1)-A293642(n)` -/
def P12597048487280505397.Spec : Prop :=
  ∀ n, P12597048487280505397.a n = A293672 n

end A293672

/-! ## A293672.P2413332041105697768

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=4, a(1)=4, a(2)=0`
-/

namespace A293672.P2413332041105697768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293672.P2413332041105697768

namespace A293672

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P2413332041105697768.Spec : Prop :=
  ∀ n, P2413332041105697768.a n = A293672 n

end A293672

/-! ## A293672.P1639813981852775946

`ceil(A022087(n)/5)`
-/

namespace A293672.P1639813981852775946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022087 n : ℚ) / 5⌉

end

end A293672.P1639813981852775946

namespace A293672

/-- `ceil(A022087(n)/5)` -/
def P1639813981852775946.Spec : Prop :=
  ∀ n, P1639813981852775946.a n = A293672 n

end A293672

/-!
# A293673: a(n) is the integer k that minimizes |k/Fibonacci(n) - 4/5|.

The programs for A293673, the canonical program `A293673.P4666619230657474854` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293673 has offset 0).

The definition of A293673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293673.P4666619230657474854

`round(4/5*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293673

/-- `round(4/5*A000045(n))` -/
def P4666619230657474854.Spec : Prop :=
  ∀ n, P4666619230657474854.a n = A293673 n

theorem P4666619230657474854.correct : P4666619230657474854.Spec := by
  intro n
  simp only [A293673]

end A293673

/-! ## A293673.P13396750210592342777

`A293643(n)+A004698(n)`
-/

namespace A293673.P13396750210592342777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n + A004698 n

end

end A293673.P13396750210592342777

namespace A293673

/-- `A293643(n)+A004698(n)` -/
def P13396750210592342777.Spec : Prop :=
  ∀ n, P13396750210592342777.a n = A293673 n

end A293673

/-! ## A293673.P13995322778153267334

`A293642(n)+A293637(n)`
-/

namespace A293673.P13995322778153267334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + A293637 n

end

end A293673.P13995322778153267334

namespace A293673

/-- `A293642(n)+A293637(n)` -/
def P13995322778153267334.Spec : Prop :=
  ∀ n, P13995322778153267334.a n = A293673 n

end A293673

/-! ## A293673.P2773040882361380499

`A000045(n)-A293638(n)`
-/

namespace A293673.P2773040882361380499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293638 n

end

end A293673.P2773040882361380499

namespace A293673

/-- `A000045(n)-A293638(n)` -/
def P2773040882361380499.Spec : Prop :=
  ∀ n, P2773040882361380499.a n = A293673 n

end A293673

/-! ## A293673.P4816568637404846082

`A004698(n)+A293641(n)+A293637(n)`
-/

namespace A293673.P4816568637404846082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 n + (A293641 n + A293637 n)

end

end A293673.P4816568637404846082

namespace A293673

/-- `A004698(n)+A293641(n)+A293637(n)` -/
def P4816568637404846082.Spec : Prop :=
  ∀ n, P4816568637404846082.a n = A293673 n

end A293673

/-! ## A293673.P9875187996843694466

`A000045(n)+A004698(n)-A293639(n)`
-/

namespace A293673.P9875187996843694466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A004698 n - A293639 n)

end

end A293673.P9875187996843694466

namespace A293673

/-- `A000045(n)+A004698(n)-A293639(n)` -/
def P9875187996843694466.Spec : Prop :=
  ∀ n, P9875187996843694466.a n = A293673 n

end A293673

/-! ## A293673.P9506385654795826908

`A000045(n)+A293637(n)-A293640(n)`
-/

namespace A293673.P9506385654795826908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293637 n - A293640 n)

end

end A293673.P9506385654795826908

namespace A293673

/-- `A000045(n)+A293637(n)-A293640(n)` -/
def P9506385654795826908.Spec : Prop :=
  ∀ n, P9506385654795826908.a n = A293673 n

end A293673

/-! ## A293673.P5005896640448820644

`A000045(n)+A293642(n)-A293671(n)`
-/

namespace A293673.P5005896640448820644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293642 n - A293671 n)

end

end A293673.P5005896640448820644

namespace A293673

/-- `A000045(n)+A293642(n)-A293671(n)` -/
def P5005896640448820644.Spec : Prop :=
  ∀ n, P5005896640448820644.a n = A293673 n

end A293673

/-! ## A293673.P12027732452995360171

`A293640(n)+A293642(n)-A293638(n)`
-/

namespace A293673.P12027732452995360171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293640 n + (A293642 n - A293638 n)

end

end A293673.P12027732452995360171

namespace A293673

/-- `A293640(n)+A293642(n)-A293638(n)` -/
def P12027732452995360171.Spec : Prop :=
  ∀ n, P12027732452995360171.a n = A293673 n

end A293673

/-! ## A293673.P15822656813978123156

`A293642(n)+A293643(n)-A293641(n)`
-/

namespace A293673.P15822656813978123156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + (A293643 n - A293641 n)

end

end A293673.P15822656813978123156

namespace A293673

/-- `A293642(n)+A293643(n)-A293641(n)` -/
def P15822656813978123156.Spec : Prop :=
  ∀ n, P15822656813978123156.a n = A293673 n

end A293673

/-! ## A293673.P5649806651081557982

`A293642(n)+A293644(n)-A293639(n)`
-/

namespace A293673.P5649806651081557982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293642 n + (A293644 n - A293639 n)

end

end A293673.P5649806651081557982

namespace A293673

/-- `A293642(n)+A293644(n)-A293639(n)` -/
def P5649806651081557982.Spec : Prop :=
  ∀ n, P5649806651081557982.a n = A293673 n

end A293673

/-! ## A293673.P11694137881640531136

`A293643(n)+A293644(n)-A293640(n)`
-/

namespace A293673.P11694137881640531136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293643 n + (A293644 n - A293640 n)

end

end A293673.P11694137881640531136

namespace A293673

/-- `A293643(n)+A293644(n)-A293640(n)` -/
def P11694137881640531136.Spec : Prop :=
  ∀ n, P11694137881640531136.a n = A293673 n

end A293673

/-! ## A293673.P13740925317019654887

`A293637(n)+A293671(n)-A293638(n)`
-/

namespace A293673.P13740925317019654887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 n + (A293671 n - A293638 n)

end

end A293673.P13740925317019654887

namespace A293673

/-- `A293637(n)+A293671(n)-A293638(n)` -/
def P13740925317019654887.Spec : Prop :=
  ∀ n, P13740925317019654887.a n = A293673 n

end A293673

/-! ## A293673.P5216023242816833012

`A000071(n+2)-(A293638(n)+A000071(n+1))`
-/

namespace A293673.P5216023242816833012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293638 n + A000071 (n + 1))

end

end A293673.P5216023242816833012

namespace A293673

/-- `A000071(n+2)-(A293638(n)+A000071(n+1))` -/
def P5216023242816833012.Spec : Prop :=
  ∀ n, P5216023242816833012.a n = A293673 n

end A293673

/-! ## A293673.P8491773119836908808

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=2, a(1)=4, a(2)=0`
-/

namespace A293673.P8491773119836908808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A293673.P8491773119836908808

namespace A293673

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P8491773119836908808.Spec : Prop :=
  ∀ n, P8491773119836908808.a n = A293673 n

end A293673

/-! ## A293673.P4245920575203104905

`round(A022087(n)/5)`
-/

namespace A293673.P4245920575203104905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022087 n : ℚ) / 5)

end

end A293673.P4245920575203104905

namespace A293673

/-- `round(A022087(n)/5)` -/
def P4245920575203104905.Spec : Prop :=
  ∀ n, P4245920575203104905.a n = A293673 n

end A293673

/-!
# A293674: a(n) is the greatest integer k such that k/Fibonacci(n) < e.

The programs for A293674, the canonical program `A293674.P17440719709334452364` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293674 has offset 0).

The definition of A293674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293674.P17440719709334452364

`floor(e*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293674

/-- `floor(e*A000045(n))` -/
def P17440719709334452364.Spec : Prop :=
  ∀ n, P17440719709334452364.a n = A293674 n

theorem P17440719709334452364.correct : P17440719709334452364.Spec := by
  intro n
  simp only [A293674]

end A293674

/-! ## A293674.P10532293608872843008

`floor(e*A212804(n+1))`
-/

namespace A293674.P10532293608872843008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A212804 (n + 1) : ℝ)⌋

end

end A293674.P10532293608872843008

namespace A293674

/-- `floor(e*A212804(n+1))` -/
def P10532293608872843008.Spec : Prop :=
  ∀ n, P10532293608872843008.a n = A293674 n

end A293674

/-! ## A293674.P11110670965986408790

`floor(e*(A001611(n)-1))`
-/

namespace A293674.P11110670965986408790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A001611 n - 1 : ℝ)⌋

end

end A293674.P11110670965986408790

namespace A293674

/-- `floor(e*(A001611(n)-1))` -/
def P11110670965986408790.Spec : Prop :=
  ∀ n, P11110670965986408790.a n = A293674 n

end A293674

/-! ## A293674.P10776947354510254761

`floor(e*(A065220(n)+n))`
-/

namespace A293674.P10776947354510254761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A065220 n + (n : ℤ) : ℝ)⌋

end

end A293674.P10776947354510254761

namespace A293674

/-- `floor(e*(A065220(n)+n))` -/
def P10776947354510254761.Spec : Prop :=
  ∀ n, P10776947354510254761.a n = A293674 n

end A293674

/-! ## A293674.P6786916159536672050

`floor(e*(A002062(n)-n))`
-/

namespace A293674.P6786916159536672050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A002062 n - (n : ℤ) : ℝ)⌋

end

end A293674.P6786916159536672050

namespace A293674

/-- `floor(e*(A002062(n)-n))` -/
def P6786916159536672050.Spec : Prop :=
  ∀ n, P6786916159536672050.a n = A293674 n

end A293674

/-! ## A293674.P16330703031254168511

`floor(e*∑{d}[n, A007436(#)])`
-/

namespace A293674.P16330703031254168511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * ((∑ d ∈ Nat.divisors (f1 n), A007436 d : ℤ) : ℝ)⌋

end

end A293674.P16330703031254168511

namespace A293674

/-- `floor(e*∑{d}[n, A007436(#)])` -/
def P16330703031254168511.Spec : Prop :=
  ∀ n, P16330703031254168511.a n = A293674 n

end A293674

/-! ## A293674.P10389879339511617371

`floor(e*Δ[A000071(n+1)])`
-/

namespace A293674.P10389879339511617371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (f1 (n + 1) - f1 n : ℝ)⌋

end

end A293674.P10389879339511617371

namespace A293674

/-- `floor(e*Δ[A000071(n+1)])` -/
def P10389879339511617371.Spec : Prop :=
  ∀ n, P10389879339511617371.a n = A293674 n

end A293674

/-! ## A293674.P1564057323933284489

`floor(e*∑[A212804(abs(1-n))])`
-/

namespace A293674.P1564057323933284489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A293674.P1564057323933284489

namespace A293674

/-- `floor(e*∑[A212804(abs(1-n))])` -/
def P1564057323933284489.Spec : Prop :=
  ∀ n, P1564057323933284489.a n = A293674 n

end A293674

/-! ## A293674.P671376674674358624

`A293675(n)+A057428(n)`
-/

namespace A293674.P671376674674358624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293675 n + A057428 n

end

end A293674.P671376674674358624

namespace A293674

/-- `A293675(n)+A057428(n)` -/
def P671376674674358624.Spec : Prop :=
  ∀ n, P671376674674358624.a n = A293674 n

theorem P671376674674358624.correct : P671376674674358624.Spec := by
  intro n
  simp only [A293674, Nat.add_sub_cancel, A293674.P671376674674358624.a, A293674.P17440719709334452364.a, A000045, A000045.P11838749114346432762.a, A057428, A057428.P2999489532230392221.a, A293675, A293675.P17608895144235824468.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293674

/-! ## A293674.P784600082522510343

`A293675(n)-A057427(n)`
-/

namespace A293674.P784600082522510343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293675 n - A057427 n

end

end A293674.P784600082522510343

namespace A293674

/-- `A293675(n)-A057427(n)` -/
def P784600082522510343.Spec : Prop :=
  ∀ n, P784600082522510343.a n = A293674 n

theorem P784600082522510343.correct : P784600082522510343.Spec := by
  intro n
  simp only [A293674, Nat.add_sub_cancel, A293674.P784600082522510343.a, A293674.P17440719709334452364.a, A000045, A000045.P11838749114346432762.a, A057427, A057427.P3058147525557661423.a, A293675, A293675.P17608895144235824468.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293674

/-! ## A293674.P14492699404055142785

`floor(e*lcm(A167808(n), A167816(n)))`
-/

namespace A293674.P14492699404055142785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (Int.lcm (A167808 n) (A167816 n) : ℝ)⌋

end

end A293674.P14492699404055142785

namespace A293674

/-- `floor(e*lcm(A167808(n), A167816(n)))` -/
def P14492699404055142785.Spec : Prop :=
  ∀ n, P14492699404055142785.a n = A293674 n

end A293674

/-! ## A293674.P12799460088423892677

`A293675(n)-A002635(and(1, a(n-1)))` with `a(0)=0`
-/

namespace A293674.P12799460088423892677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293675 n - A002635 (Int.land 1 (a (n - 1))).toNat

end

end A293674.P12799460088423892677

namespace A293674

/-- `A293675(n)-A002635(and(1, a(n-1)))` -/
def P12799460088423892677.Spec : Prop :=
  ∀ n, P12799460088423892677.a n = A293674 n

end A293674

/-! ## A293674.P1401199680425102480

`floor(e*(∑[A212804(A028310(n)-1)]-1))`
-/

namespace A293674.P1401199680425102480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℝ)⌋

end

end A293674.P1401199680425102480

namespace A293674

/-- `floor(e*(∑[A212804(A028310(n)-1)]-1))` -/
def P1401199680425102480.Spec : Prop :=
  ∀ n, P1401199680425102480.a n = A293674 n

end A293674

/-! ## A293674.P9688470439888764770

`floor(e*(A280193(comp[2*n])+A001611(n)))`
-/

namespace A293674.P9688470439888764770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A280193 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A001611 n : ℝ)⌋

end

end A293674.P9688470439888764770

namespace A293674

/-- `floor(e*(A280193(comp[2*n])+A001611(n)))` -/
def P9688470439888764770.Spec : Prop :=
  ∀ n, P9688470439888764770.a n = A293674 n

end A293674

/-! ## A293674.P7017662311453077849

`A293675(n)-A048766(A048766(n))`
-/

namespace A293674.P7017662311453077849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293675 n - A048766 (A048766 n).toNat

end

end A293674.P7017662311453077849

namespace A293674

/-- `A293675(n)-A048766(A048766(n))` -/
def P7017662311453077849.Spec : Prop :=
  ∀ n, P7017662311453077849.a n = A293674 n

end A293674

/-! ## A293674.P4879773366217292293

`(A293675(n)-1)%A000204(n+1)`
-/

namespace A293674.P4879773366217292293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293675 n - 1) (A000204 (n + 1))

end

end A293674.P4879773366217292293

namespace A293674

/-- `(A293675(n)-1)%A000204(n+1)` -/
def P4879773366217292293.Spec : Prop :=
  ∀ n, P4879773366217292293.a n = A293674 n

end A293674

/-! ## A293674.P3414586466635373319

`A293675(n)+-1%A000032(n+1)`
-/

namespace A293674.P3414586466635373319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293675 n + Int.tmod (-1) (A000032 (n + 1))

end

end A293674.P3414586466635373319

namespace A293674

/-- `A293675(n)+-1%A000032(n+1)` -/
def P3414586466635373319.Spec : Prop :=
  ∀ n, P3414586466635373319.a n = A293674 n

end A293674

/-! ## A293674.P9189678879899099244

`floor(e*(A028304(2*n)-A263986(n)))`
-/

namespace A293674.P9189678879899099244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A028304 (2 * n) - A263986 n : ℝ)⌋

end

end A293674.P9189678879899099244

namespace A293674

/-- `floor(e*(A028304(2*n)-A263986(n)))` -/
def P9189678879899099244.Spec : Prop :=
  ∀ n, P9189678879899099244.a n = A293674 n

end A293674

/-! ## A293674.P15588314689181563731

`floor(e*gcd(A001654(2*n), A001654(n)))`
-/

namespace A293674.P15588314689181563731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (Int.gcd (A001654 (2 * n)) (A001654 n) : ℝ)⌋

end

end A293674.P15588314689181563731

namespace A293674

/-- `floor(e*gcd(A001654(2*n), A001654(n)))` -/
def P15588314689181563731.Spec : Prop :=
  ∀ n, P15588314689181563731.a n = A293674 n

end A293674

/-!
# A293675: a(n) is the least integer k such that k/Fibonacci(n) > e.

The programs for A293675, the canonical program `A293675.P17608895144235824468` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293675 has offset 0).

The definition of A293675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293675.P9469588629022253007

`ceil(e*A000045(n))`
-/

namespace A293675.P9469588629022253007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A000045 n : ℝ)⌉

end

end A293675.P9469588629022253007

namespace A293675

/-- `ceil(e*A000045(n))` -/
def P9469588629022253007.Spec : Prop :=
  ∀ n, P9469588629022253007.a n = A293675 n

end A293675

/-! ## A293675.P14865654626273404861

`ceil(e*A212804(n+1))`
-/

namespace A293675.P14865654626273404861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A212804 (n + 1) : ℝ)⌉

end

end A293675.P14865654626273404861

namespace A293675

/-- `ceil(e*A212804(n+1))` -/
def P14865654626273404861.Spec : Prop :=
  ∀ n, P14865654626273404861.a n = A293675 n

end A293675

/-! ## A293675.P15929578168545774558

`ceil(e*(A001611(n)-1))`
-/

namespace A293675.P15929578168545774558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A001611 n - 1 : ℝ)⌉

end

end A293675.P15929578168545774558

namespace A293675

/-- `ceil(e*(A001611(n)-1))` -/
def P15929578168545774558.Spec : Prop :=
  ∀ n, P15929578168545774558.a n = A293675 n

end A293675

/-! ## A293675.P12353581487323308634

`ceil(e*(A065220(n)+n))`
-/

namespace A293675.P12353581487323308634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A065220 n + (n : ℤ) : ℝ)⌉

end

end A293675.P12353581487323308634

namespace A293675

/-- `ceil(e*(A065220(n)+n))` -/
def P12353581487323308634.Spec : Prop :=
  ∀ n, P12353581487323308634.a n = A293675 n

end A293675

/-! ## A293675.P648199807179493909

`ceil(e*(A002062(n)-n))`
-/

namespace A293675.P648199807179493909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A002062 n - (n : ℤ) : ℝ)⌉

end

end A293675.P648199807179493909

namespace A293675

/-- `ceil(e*(A002062(n)-n))` -/
def P648199807179493909.Spec : Prop :=
  ∀ n, P648199807179493909.a n = A293675 n

end A293675

/-! ## A293675.P1546608357404327348

`ceil(e*∑{d}[n, A007436(#)])`
-/

namespace A293675.P1546608357404327348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((∑ d ∈ Nat.divisors (f1 n), A007436 d : ℤ) : ℝ)⌉

end

end A293675.P1546608357404327348

namespace A293675

/-- `ceil(e*∑{d}[n, A007436(#)])` -/
def P1546608357404327348.Spec : Prop :=
  ∀ n, P1546608357404327348.a n = A293675 n

end A293675

/-! ## A293675.P15629743004587629253

`ceil(e*Δ[A000071(n+1)])`
-/

namespace A293675.P15629743004587629253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (f1 (n + 1) - f1 n : ℝ)⌉

end

end A293675.P15629743004587629253

namespace A293675

/-- `ceil(e*Δ[A000071(n+1)])` -/
def P15629743004587629253.Spec : Prop :=
  ∀ n, P15629743004587629253.a n = A293675 n

end A293675

/-! ## A293675.P11813330981504368270

`ceil(e*∑[A212804(abs(1-n))])`
-/

namespace A293675.P11813330981504368270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A293675.P11813330981504368270

namespace A293675

/-- `ceil(e*∑[A212804(abs(1-n))])` -/
def P11813330981504368270.Spec : Prop :=
  ∀ n, P11813330981504368270.a n = A293675 n

end A293675

/-! ## A293675.P17608895144235824468

`A293674(n)+A057427(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293675

/-- `A293674(n)+A057427(n)` -/
def P17608895144235824468.Spec : Prop :=
  ∀ n, P17608895144235824468.a n = A293675 n

theorem P17608895144235824468.correct : P17608895144235824468.Spec := by
  intro n
  simp only [A293675]

end A293675

/-! ## A293675.P1559055257115494973

`A293674(n)-A057428(n)`
-/

namespace A293675.P1559055257115494973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293674 n - A057428 n

end

end A293675.P1559055257115494973

namespace A293675

/-- `A293674(n)-A057428(n)` -/
def P1559055257115494973.Spec : Prop :=
  ∀ n, P1559055257115494973.a n = A293675 n

theorem P1559055257115494973.correct : P1559055257115494973.Spec := by
  intro n
  simp only [A293675, Nat.add_sub_cancel, A293675.P1559055257115494973.a, A293675.P17608895144235824468.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A293674, A293674.P17440719709334452364.a, A000007, A000007.P6599383543502402472.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293675

/-! ## A293675.P5792958335722481479

`ceil(e*lcm(A167808(n), A167816(n)))`
-/

namespace A293675.P5792958335722481479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (Int.lcm (A167808 n) (A167816 n) : ℝ)⌉

end

end A293675.P5792958335722481479

namespace A293675

/-- `ceil(e*lcm(A167808(n), A167816(n)))` -/
def P5792958335722481479.Spec : Prop :=
  ∀ n, P5792958335722481479.a n = A293675 n

end A293675

/-! ## A293675.P9491883811325996415

`ceil(e*(A280193(comp[2*n])+A001611(n)))`
-/

namespace A293675.P9491883811325996415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A280193 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A001611 n : ℝ)⌉

end

end A293675.P9491883811325996415

namespace A293675

/-- `ceil(e*(A280193(comp[2*n])+A001611(n)))` -/
def P9491883811325996415.Spec : Prop :=
  ∀ n, P9491883811325996415.a n = A293675 n

end A293675

/-! ## A293675.P6633640584494710925

`A293674(n)+A048766(A048766(n))`
-/

namespace A293675.P6633640584494710925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293674 n + A048766 (A048766 n).toNat

end

end A293675.P6633640584494710925

namespace A293675

/-- `A293674(n)+A048766(A048766(n))` -/
def P6633640584494710925.Spec : Prop :=
  ∀ n, P6633640584494710925.a n = A293675 n

end A293675

/-! ## A293675.P7132841287637525584

`-floor(Δ[-(e*A000045(n+1))])`
-/

namespace A293675.P7132841287637525584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(Real.exp 1 * (A000045 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊f1 (n + 1) - f1 n⌋

end

end A293675.P7132841287637525584

namespace A293675

/-- `-floor(Δ[-(e*A000045(n+1))])` -/
def P7132841287637525584.Spec : Prop :=
  ∀ n, P7132841287637525584.a n = A293675 n

end A293675

/-! ## A293675.P12741343080998897849

`(A293674(n)+1)%∑[A000032(n+1)]`
-/

namespace A293675.P12741343080998897849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293674 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293675.P12741343080998897849

namespace A293675

/-- `(A293674(n)+1)%∑[A000032(n+1)]` -/
def P12741343080998897849.Spec : Prop :=
  ∀ n, P12741343080998897849.a n = A293675 n

end A293675

/-! ## A293675.P13181198584163008785

`A293674(n)+A000035(A106856(n+1))`
-/

namespace A293675.P13181198584163008785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293674 n + A000035 (A106856 (n + 1)).toNat

end

end A293675.P13181198584163008785

namespace A293675

/-- `A293674(n)+A000035(A106856(n+1))` -/
def P13181198584163008785.Spec : Prop :=
  ∀ n, P13181198584163008785.a n = A293675 n

end A293675

/-! ## A293675.P7825667229799228339

`ceil(e*(A028304(2*n)-A263986(n)))`
-/

namespace A293675.P7825667229799228339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A028304 (2 * n) - A263986 n : ℝ)⌉

end

end A293675.P7825667229799228339

namespace A293675

/-- `ceil(e*(A028304(2*n)-A263986(n)))` -/
def P7825667229799228339.Spec : Prop :=
  ∀ n, P7825667229799228339.a n = A293675 n

end A293675

/-! ## A293675.P3372210788932228873

`ceil(e*gcd(A001654(2*n), A001654(n)))`
-/

namespace A293675.P3372210788932228873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (Int.gcd (A001654 (2 * n)) (A001654 n) : ℝ)⌉

end

end A293675.P3372210788932228873

namespace A293675

/-- `ceil(e*gcd(A001654(2*n), A001654(n)))` -/
def P3372210788932228873.Spec : Prop :=
  ∀ n, P3372210788932228873.a n = A293675 n

end A293675

/-!
# A293676: a(n) is the integer k that minimizes |e - k/Fibonacci(n)|.

The programs for A293676, the canonical program `A293676.P4327452207758404279` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293676 has offset 0).

The definition of A293676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293676.P4327452207758404279

`round(e*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293676

/-- `round(e*A000045(n))` -/
def P4327452207758404279.Spec : Prop :=
  ∀ n, P4327452207758404279.a n = A293676 n

theorem P4327452207758404279.correct : P4327452207758404279.Spec := by
  intro n
  simp only [A293676]

end A293676

/-! ## A293676.P9266765947715748482

`round(e*A212804(n+1))`
-/

namespace A293676.P9266765947715748482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A212804 (n + 1) : ℝ))

end

end A293676.P9266765947715748482

namespace A293676

/-- `round(e*A212804(n+1))` -/
def P9266765947715748482.Spec : Prop :=
  ∀ n, P9266765947715748482.a n = A293676 n

end A293676

/-! ## A293676.P9657178241308575458

`round(e*(A001611(n)-1))`
-/

namespace A293676.P9657178241308575458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A001611 n - 1 : ℝ))

end

end A293676.P9657178241308575458

namespace A293676

/-- `round(e*(A001611(n)-1))` -/
def P9657178241308575458.Spec : Prop :=
  ∀ n, P9657178241308575458.a n = A293676 n

end A293676

/-! ## A293676.P17824928301135218573

`round(e*A103609(2*n))`
-/

namespace A293676.P17824928301135218573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A103609 (2 * n) : ℝ))

end

end A293676.P17824928301135218573

namespace A293676

/-- `round(e*A103609(2*n))` -/
def P17824928301135218573.Spec : Prop :=
  ∀ n, P17824928301135218573.a n = A293676 n

end A293676

/-! ## A293676.P5246015073618420128

`round(e*(A065220(n)+n))`
-/

namespace A293676.P5246015073618420128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A065220 n + (n : ℤ) : ℝ))

end

end A293676.P5246015073618420128

namespace A293676

/-- `round(e*(A065220(n)+n))` -/
def P5246015073618420128.Spec : Prop :=
  ∀ n, P5246015073618420128.a n = A293676 n

end A293676

/-! ## A293676.P15958532728341775564

`round(e*(A002062(n)-n))`
-/

namespace A293676.P15958532728341775564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A002062 n - (n : ℤ) : ℝ))

end

end A293676.P15958532728341775564

namespace A293676

/-- `round(e*(A002062(n)-n))` -/
def P15958532728341775564.Spec : Prop :=
  ∀ n, P15958532728341775564.a n = A293676 n

end A293676

/-! ## A293676.P296026973831145012

`round(e*∑{d}[n, A007436(#)])`
-/

namespace A293676.P296026973831145012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * ((∑ d ∈ Nat.divisors (f1 n), A007436 d : ℤ) : ℝ))

end

end A293676.P296026973831145012

namespace A293676

/-- `round(e*∑{d}[n, A007436(#)])` -/
def P296026973831145012.Spec : Prop :=
  ∀ n, P296026973831145012.a n = A293676 n

end A293676

/-! ## A293676.P14600220618625880493

`round(e*Δ[A000071(n+1)])`
-/

namespace A293676.P14600220618625880493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (f1 (n + 1) - f1 n : ℝ))

end

end A293676.P14600220618625880493

namespace A293676

/-- `round(e*Δ[A000071(n+1)])` -/
def P14600220618625880493.Spec : Prop :=
  ∀ n, P14600220618625880493.a n = A293676 n

end A293676

/-! ## A293676.P4797576959517560070

`round(e*∑[A212804(abs(1-n))])`
-/

namespace A293676.P4797576959517560070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A293676.P4797576959517560070

namespace A293676

/-- `round(e*∑[A212804(abs(1-n))])` -/
def P4797576959517560070.Spec : Prop :=
  ∀ n, P4797576959517560070.a n = A293676 n

end A293676

/-! ## A293676.P17889415545305037821

`round(e*A302126(A005843(n)))`
-/

namespace A293676.P17889415545305037821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A302126 (A005843 n).toNat : ℝ))

end

end A293676.P17889415545305037821

namespace A293676

/-- `round(e*A302126(A005843(n)))` -/
def P17889415545305037821.Spec : Prop :=
  ∀ n, P17889415545305037821.a n = A293676 n

end A293676

/-! ## A293676.P7618612345827991543

`round(e*lcm(A167808(n), A167816(n)))`
-/

namespace A293676.P7618612345827991543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (Int.lcm (A167808 n) (A167816 n) : ℝ))

end

end A293676.P7618612345827991543

namespace A293676

/-- `round(e*lcm(A167808(n), A167816(n)))` -/
def P7618612345827991543.Spec : Prop :=
  ∀ n, P7618612345827991543.a n = A293676 n

end A293676

/-! ## A293676.P11712992982426461727

`round(e*(∑[A212804(A028310(n)-1)]-1))`
-/

namespace A293676.P11712992982426461727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℝ))

end

end A293676.P11712992982426461727

namespace A293676

/-- `round(e*(∑[A212804(A028310(n)-1)]-1))` -/
def P11712992982426461727.Spec : Prop :=
  ∀ n, P11712992982426461727.a n = A293676 n

end A293676

/-! ## A293676.P7288512041819565811

`round(e*(A280193(comp[2*n])+A001611(n)))`
-/

namespace A293676.P7288512041819565811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A280193 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A001611 n : ℝ))

end

end A293676.P7288512041819565811

namespace A293676

/-- `round(e*(A280193(comp[2*n])+A001611(n)))` -/
def P7288512041819565811.Spec : Prop :=
  ∀ n, P7288512041819565811.a n = A293676 n

end A293676

/-! ## A293676.P7434100444264988831

`round(e*sqrt(A007598(n)))`
-/

namespace A293676.P7434100444264988831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * Real.sqrt (A007598 n : ℝ))

end

end A293676.P7434100444264988831

namespace A293676

/-- `round(e*sqrt(A007598(n)))` -/
def P7434100444264988831.Spec : Prop :=
  ∀ n, P7434100444264988831.a n = A293676 n

end A293676

/-! ## A293676.P9658539285661828755

`round(e*(A028304(2*n)-A263986(n)))`
-/

namespace A293676.P9658539285661828755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A028304 (2 * n) - A263986 n : ℝ))

end

end A293676.P9658539285661828755

namespace A293676

/-- `round(e*(A028304(2*n)-A263986(n)))` -/
def P9658539285661828755.Spec : Prop :=
  ∀ n, P9658539285661828755.a n = A293676 n

end A293676

/-! ## A293676.P17783895405513588479

`round(e*A108038(A000217(n)))`
-/

namespace A293676.P17783895405513588479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A108038 (A000217 n).toNat : ℝ))

end

end A293676.P17783895405513588479

namespace A293676

/-- `round(e*A108038(A000217(n)))` -/
def P17783895405513588479.Spec : Prop :=
  ∀ n, P17783895405513588479.a n = A293676 n

end A293676

/-! ## A293676.P6953658686214025428

`round(e*gcd(A001654(2*n), A001654(n)))`
-/

namespace A293676.P6953658686214025428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (Int.gcd (A001654 (2 * n)) (A001654 n) : ℝ))

end

end A293676.P6953658686214025428

namespace A293676

/-- `round(e*gcd(A001654(2*n), A001654(n)))` -/
def P6953658686214025428.Spec : Prop :=
  ∀ n, P6953658686214025428.a n = A293676 n

end A293676

/-!
# A293677: a(n) is the greatest integer k such that k/Fibonacci(n) < Pi.

The programs for A293677, the canonical program `A293677.P8644198808222840955` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293677 has offset 0).

The definition of A293677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293677.P8644198808222840955

`floor(π*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293677

/-- `floor(π*A000045(n))` -/
def P8644198808222840955.Spec : Prop :=
  ∀ n, P8644198808222840955.a n = A293677 n

theorem P8644198808222840955.correct : P8644198808222840955.Spec := by
  intro n
  simp only [A293677]

end A293677

/-! ## A293677.P17128259563181905486

`floor(atan(1)*A022087(n))`
-/

namespace A293677.P17128259563181905486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (1 : ℝ) * (A022087 n : ℝ)⌋

end

end A293677.P17128259563181905486

namespace A293677

/-- `floor(atan(1)*A022087(n))` -/
def P17128259563181905486.Spec : Prop :=
  ∀ n, P17128259563181905486.a n = A293677 n

end A293677

/-! ## A293677.P9840926402432799272

`floor(π*A212804(n+1))`
-/

namespace A293677.P9840926402432799272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A212804 (n + 1) : ℝ)⌋

end

end A293677.P9840926402432799272

namespace A293677

/-- `floor(π*A212804(n+1))` -/
def P9840926402432799272.Spec : Prop :=
  ∀ n, P9840926402432799272.a n = A293677 n

end A293677

/-! ## A293677.P3342124931595043593

`floor(π*(A001611(n)-1))`
-/

namespace A293677.P3342124931595043593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A001611 n - 1 : ℝ)⌋

end

end A293677.P3342124931595043593

namespace A293677

/-- `floor(π*(A001611(n)-1))` -/
def P3342124931595043593.Spec : Prop :=
  ∀ n, P3342124931595043593.a n = A293677 n

end A293677

/-! ## A293677.P11426394413942519502

`floor(π*A103609(2*n))`
-/

namespace A293677.P11426394413942519502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A103609 (2 * n) : ℝ)⌋

end

end A293677.P11426394413942519502

namespace A293677

/-- `floor(π*A103609(2*n))` -/
def P11426394413942519502.Spec : Prop :=
  ∀ n, P11426394413942519502.a n = A293677 n

end A293677

/-! ## A293677.P8467135006801207582

`floor(π*(A002062(n)-n))`
-/

namespace A293677.P8467135006801207582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A002062 n - (n : ℤ) : ℝ)⌋

end

end A293677.P8467135006801207582

namespace A293677

/-- `floor(π*(A002062(n)-n))` -/
def P8467135006801207582.Spec : Prop :=
  ∀ n, P8467135006801207582.a n = A293677 n

end A293677

/-! ## A293677.P15166596292587950789

`floor(π*∑{d}[n, A007436(#)])`
-/

namespace A293677.P15166596292587950789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * ((∑ d ∈ Nat.divisors (f1 n), A007436 d : ℤ) : ℝ)⌋

end

end A293677.P15166596292587950789

namespace A293677

/-- `floor(π*∑{d}[n, A007436(#)])` -/
def P15166596292587950789.Spec : Prop :=
  ∀ n, P15166596292587950789.a n = A293677 n

end A293677

/-! ## A293677.P13093820294099396691

`floor(π*Δ[A000071(n+1)])`
-/

namespace A293677.P13093820294099396691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (f1 (n + 1) - f1 n : ℝ)⌋

end

end A293677.P13093820294099396691

namespace A293677

/-- `floor(π*Δ[A000071(n+1)])` -/
def P13093820294099396691.Spec : Prop :=
  ∀ n, P13093820294099396691.a n = A293677 n

end A293677

/-! ## A293677.P15042226354809531165

`floor(π*∑[A212804(abs(1-n))])`
-/

namespace A293677.P15042226354809531165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A293677.P15042226354809531165

namespace A293677

/-- `floor(π*∑[A212804(abs(1-n))])` -/
def P15042226354809531165.Spec : Prop :=
  ∀ n, P15042226354809531165.a n = A293677 n

end A293677

/-! ## A293677.P6397430560418411975

`A293678(n)+A057428(n)`
-/

namespace A293677.P6397430560418411975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293678 n + A057428 n

end

end A293677.P6397430560418411975

namespace A293677

/-- `A293678(n)+A057428(n)` -/
def P6397430560418411975.Spec : Prop :=
  ∀ n, P6397430560418411975.a n = A293677 n

theorem P6397430560418411975.correct : P6397430560418411975.Spec := by
  intro n
  simp only [A293677, Nat.add_sub_cancel, A293677.P6397430560418411975.a, A293677.P8644198808222840955.a, A000045, A000045.P11838749114346432762.a, A057428, A057428.P2999489532230392221.a, A293678, A293678.P1498172706207544919.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293677

/-! ## A293677.P877353337963708696

`A293678(n)-A057427(n)`
-/

namespace A293677.P877353337963708696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293678 n - A057427 n

end

end A293677.P877353337963708696

namespace A293677

/-- `A293678(n)-A057427(n)` -/
def P877353337963708696.Spec : Prop :=
  ∀ n, P877353337963708696.a n = A293677 n

theorem P877353337963708696.correct : P877353337963708696.Spec := by
  intro n
  simp only [A293677, Nat.add_sub_cancel, A293677.P877353337963708696.a, A293677.P8644198808222840955.a, A000045, A000045.P11838749114346432762.a, A057427, A057427.P3058147525557661423.a, A293678, A293678.P1498172706207544919.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293677

/-! ## A293677.P2933632837618997576

`floor(π*lcm(A167808(n), A167816(n)))`
-/

namespace A293677.P2933632837618997576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Int.lcm (A167808 n) (A167816 n) : ℝ)⌋

end

end A293677.P2933632837618997576

namespace A293677

/-- `floor(π*lcm(A167808(n), A167816(n)))` -/
def P2933632837618997576.Spec : Prop :=
  ∀ n, P2933632837618997576.a n = A293677 n

end A293677

/-! ## A293677.P8504354797996150699

`A293678(n)-and(1, comp[A119432(n+1)])`
-/

namespace A293677.P8504354797996150699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293678 n - (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ)

end

end A293677.P8504354797996150699

namespace A293677

/-- `A293678(n)-and(1, comp[A119432(n+1)])` -/
def P8504354797996150699.Spec : Prop :=
  ∀ n, P8504354797996150699.a n = A293677 n

end A293677

/-! ## A293677.P11687123264545327427

`floor(π*(A001612(n)-1-A118658(n)))`
-/

namespace A293677.P11687123264545327427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A001612 n - 1 - A118658 n : ℝ)⌋

end

end A293677.P11687123264545327427

namespace A293677

/-- `floor(π*(A001612(n)-1-A118658(n)))` -/
def P11687123264545327427.Spec : Prop :=
  ∀ n, P11687123264545327427.a n = A293677 n

end A293677

/-! ## A293677.P9267760502571097208

`ceil(atan(A118658(n+1))*A118658(n+1))`
-/

namespace A293677.P9267760502571097208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A118658 (n + 1) : ℝ) * (A118658 (n + 1) : ℝ)⌉

end

end A293677.P9267760502571097208

namespace A293677

/-- `ceil(atan(A118658(n+1))*A118658(n+1))` -/
def P9267760502571097208.Spec : Prop :=
  ∀ n, P9267760502571097208.a n = A293677 n

end A293677

/-! ## A293677.P783974485136032171

`floor(π*(A280193(comp[2*n])+A001611(n)))`
-/

namespace A293677.P783974485136032171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A280193 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A001611 n : ℝ)⌋

end

end A293677.P783974485136032171

namespace A293677

/-- `floor(π*(A280193(comp[2*n])+A001611(n)))` -/
def P783974485136032171.Spec : Prop :=
  ∀ n, P783974485136032171.a n = A293677 n

end A293677

/-! ## A293677.P8041722991400765137

`floor(π*(A319359(A217221(2*n)+1)+A001611(n)))`
-/

namespace A293677.P8041722991400765137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A319359 (A217221 (2 * n) + 1).toNat + A001611 n : ℝ)⌋

end

end A293677.P8041722991400765137

namespace A293677

/-- `floor(π*(A319359(A217221(2*n)+1)+A001611(n)))` -/
def P8041722991400765137.Spec : Prop :=
  ∀ n, P8041722991400765137.a n = A293677 n

end A293677

/-!
# A293678: a(n) is the least integer k such that k/Fibonacci(n) > Pi.

The programs for A293678, the canonical program `A293678.P1498172706207544919` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293678 has offset 0).

The definition of A293678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293678.P3880000341688748116

`ceil(π*A000045(n))`
-/

namespace A293678.P3880000341688748116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (A000045 n : ℝ)⌉

end

end A293678.P3880000341688748116

namespace A293678

/-- `ceil(π*A000045(n))` -/
def P3880000341688748116.Spec : Prop :=
  ∀ n, P3880000341688748116.a n = A293678 n

end A293678

/-! ## A293678.P5792234559799408637

`ceil(π*(A001611(n)-1))`
-/

namespace A293678.P5792234559799408637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (A001611 n - 1 : ℝ)⌉

end

end A293678.P5792234559799408637

namespace A293678

/-- `ceil(π*(A001611(n)-1))` -/
def P5792234559799408637.Spec : Prop :=
  ∀ n, P5792234559799408637.a n = A293678 n

end A293678

/-! ## A293678.P3728083690274264804

`ceil(π*Δ[A000071(n+1)])`
-/

namespace A293678.P3728083690274264804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (f1 (n + 1) - f1 n : ℝ)⌉

end

end A293678.P3728083690274264804

namespace A293678

/-- `ceil(π*Δ[A000071(n+1)])` -/
def P3728083690274264804.Spec : Prop :=
  ∀ n, P3728083690274264804.a n = A293678 n

end A293678

/-! ## A293678.P1498172706207544919

`A293677(n)+A057427(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A293678

/-- `A293677(n)+A057427(n)` -/
def P1498172706207544919.Spec : Prop :=
  ∀ n, P1498172706207544919.a n = A293678 n

theorem P1498172706207544919.correct : P1498172706207544919.Spec := by
  intro n
  simp only [A293678]

end A293678

/-! ## A293678.P14801905298342898495

`A293677(n)-A057428(n)`
-/

namespace A293678.P14801905298342898495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293677 n - A057428 n

end

end A293678.P14801905298342898495

namespace A293678

/-- `A293677(n)-A057428(n)` -/
def P14801905298342898495.Spec : Prop :=
  ∀ n, P14801905298342898495.a n = A293678 n

theorem P14801905298342898495.correct : P14801905298342898495.Spec := by
  intro n
  simp only [A293678, Nat.add_sub_cancel, A293678.P14801905298342898495.a, A293678.P1498172706207544919.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A293677, A293677.P8644198808222840955.a, A000007, A000007.P6599383543502402472.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293678

/-! ## A293678.P2913096734945940830

`A036453(n+1)+A293677(n)-1`
-/

namespace A293678.P2913096734945940830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A293677 n - 1)

end

end A293678.P2913096734945940830

namespace A293678

/-- `A036453(n+1)+A293677(n)-1` -/
def P2913096734945940830.Spec : Prop :=
  ∀ n, P2913096734945940830.a n = A293678 n

end A293678

/-! ## A293678.P3521679851929641215

`A293677(n)+A000040(n+1)%2`
-/

namespace A293678.P3521679851929641215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293677 n + Int.tmod (A000040 (n + 1)) 2

end

end A293678.P3521679851929641215

namespace A293678

/-- `A293677(n)+A000040(n+1)%2` -/
def P3521679851929641215.Spec : Prop :=
  ∀ n, P3521679851929641215.a n = A293678 n

end A293678

/-! ## A293678.P5190600095041560278

`A293677(n)+A001065(A020639(n+1))`
-/

namespace A293678.P5190600095041560278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293677 n + A001065 (A020639 (n + 1)).toNat

end

end A293678.P5190600095041560278

namespace A293678

/-- `A293677(n)+A001065(A020639(n+1))` -/
def P5190600095041560278.Spec : Prop :=
  ∀ n, P5190600095041560278.a n = A293678 n

end A293678

/-! ## A293678.P17966010215456725517

`A143433(A062368(n+1))+A293677(n)+1`
-/

namespace A293678.P17966010215456725517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (A062368 (n + 1)).toNat + (A293677 n + 1)

end

end A293678.P17966010215456725517

namespace A293678

/-- `A143433(A062368(n+1))+A293677(n)+1` -/
def P17966010215456725517.Spec : Prop :=
  ∀ n, P17966010215456725517.a n = A293678 n

end A293678

/-! ## A293678.P5437769918485498691

`A293677(n)+A000035(A106856(n+1))`
-/

namespace A293678.P5437769918485498691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293677 n + A000035 (A106856 (n + 1)).toNat

end

end A293678.P5437769918485498691

namespace A293678

/-- `A293677(n)+A000035(A106856(n+1))` -/
def P5437769918485498691.Spec : Prop :=
  ∀ n, P5437769918485498691.a n = A293678 n

end A293678

/-! ## A293678.P7662046474363803020

`A293677(n)+2-A239930(A005384(n+1))`
-/

namespace A293678.P7662046474363803020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293677 n + (2 - A239930 (A005384 (n + 1)).toNat)

end

end A293678.P7662046474363803020

namespace A293678

/-- `A293677(n)+2-A239930(A005384(n+1))` -/
def P7662046474363803020.Spec : Prop :=
  ∀ n, P7662046474363803020.a n = A293678 n

end A293678

/-!
# A293679: a(n) is the integer k that minimizes |k/Fibonacci(n) - Pi|.

The programs for A293679, the canonical program `A293679.P15726943823660417155` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293679 has offset 0).

The definition of A293679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293679.P15726943823660417155

`round(π*A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293679

/-- `round(π*A000045(n))` -/
def P15726943823660417155.Spec : Prop :=
  ∀ n, P15726943823660417155.a n = A293679 n

theorem P15726943823660417155.correct : P15726943823660417155.Spec := by
  intro n
  simp only [A293679]

end A293679

/-! ## A293679.P1164008286078664002

`round(abs(π*A236191(n)))`
-/

namespace A293679.P1164008286078664002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.pi * (A236191 n : ℝ)|

end

end A293679.P1164008286078664002

namespace A293679

/-- `round(abs(π*A236191(n)))` -/
def P1164008286078664002.Spec : Prop :=
  ∀ n, P1164008286078664002.a n = A293679 n

end A293679

/-! ## A293679.P12205527726658000352

`round(π*A212804(n+1))`
-/

namespace A293679.P12205527726658000352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A212804 (n + 1) : ℝ))

end

end A293679.P12205527726658000352

namespace A293679

/-- `round(π*A212804(n+1))` -/
def P12205527726658000352.Spec : Prop :=
  ∀ n, P12205527726658000352.a n = A293679 n

end A293679

/-! ## A293679.P17415903742866515451

`round(π*(A001611(n)-1))`
-/

namespace A293679.P17415903742866515451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A001611 n - 1 : ℝ))

end

end A293679.P17415903742866515451

namespace A293679

/-- `round(π*(A001611(n)-1))` -/
def P17415903742866515451.Spec : Prop :=
  ∀ n, P17415903742866515451.a n = A293679 n

end A293679

/-! ## A293679.P12514454446486342760

`round(π*(A002062(n)-n))`
-/

namespace A293679.P12514454446486342760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A002062 n - (n : ℤ) : ℝ))

end

end A293679.P12514454446486342760

namespace A293679

/-- `round(π*(A002062(n)-n))` -/
def P12514454446486342760.Spec : Prop :=
  ∀ n, P12514454446486342760.a n = A293679 n

end A293679

/-! ## A293679.P10419978629366776894

`round(π*∑{d}[n, A007436(#)])`
-/

namespace A293679.P10419978629366776894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * ((∑ d ∈ Nat.divisors (f1 n), A007436 d : ℤ) : ℝ))

end

end A293679.P10419978629366776894

namespace A293679

/-- `round(π*∑{d}[n, A007436(#)])` -/
def P10419978629366776894.Spec : Prop :=
  ∀ n, P10419978629366776894.a n = A293679 n

end A293679

/-! ## A293679.P10518732392145928817

`round(π*Δ[A000071(n+1)])`
-/

namespace A293679.P10518732392145928817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (n + 1) - f1 n : ℝ))

end

end A293679.P10518732392145928817

namespace A293679

/-- `round(π*Δ[A000071(n+1)])` -/
def P10518732392145928817.Spec : Prop :=
  ∀ n, P10518732392145928817.a n = A293679 n

end A293679

/-! ## A293679.P15928294316751870868

`round(π*∑[A212804(abs(1-n))])`
-/

namespace A293679.P15928294316751870868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A293679.P15928294316751870868

namespace A293679

/-- `round(π*∑[A212804(abs(1-n))])` -/
def P15928294316751870868.Spec : Prop :=
  ∀ n, P15928294316751870868.a n = A293679 n

end A293679

/-! ## A293679.P14461795715678456458

`round(π*A103609(A005408(n)))`
-/

namespace A293679.P14461795715678456458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A103609 (A005408 n).toNat : ℝ))

end

end A293679.P14461795715678456458

namespace A293679

/-- `round(π*A103609(A005408(n)))` -/
def P14461795715678456458.Spec : Prop :=
  ∀ n, P14461795715678456458.a n = A293679 n

end A293679

/-! ## A293679.P14891674696061997172

`round(π*A103609(A014601(n)))`
-/

namespace A293679.P14891674696061997172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A103609 (A014601 n).toNat : ℝ))

end

end A293679.P14891674696061997172

namespace A293679

/-- `round(π*A103609(A014601(n)))` -/
def P14891674696061997172.Spec : Prop :=
  ∀ n, P14891674696061997172.a n = A293679 n

end A293679

/-! ## A293679.P3568901867336015162

`round(π*A103609(A059010(n)))`
-/

namespace A293679.P3568901867336015162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A103609 (A059010 n).toNat : ℝ))

end

end A293679.P3568901867336015162

namespace A293679

/-- `round(π*A103609(A059010(n)))` -/
def P3568901867336015162.Spec : Prop :=
  ∀ n, P3568901867336015162.a n = A293679 n

end A293679

/-! ## A293679.P7766365269253392446

`round(π*A247309(A055562(n)))`
-/

namespace A293679.P7766365269253392446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A247309 (A055562 n).toNat : ℝ))

end

end A293679.P7766365269253392446

namespace A293679

/-- `round(π*A247309(A055562(n)))` -/
def P7766365269253392446.Spec : Prop :=
  ∀ n, P7766365269253392446.a n = A293679 n

end A293679

/-! ## A293679.P8331726385767574489

`round(π*A103609(A212439(n)))`
-/

namespace A293679.P8331726385767574489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A103609 (A212439 n).toNat : ℝ))

end

end A293679.P8331726385767574489

namespace A293679

/-- `round(π*A103609(A212439(n)))` -/
def P8331726385767574489.Spec : Prop :=
  ∀ n, P8331726385767574489.a n = A293679 n

end A293679

/-! ## A293679.P1348913298680777310

`round(π*lcm(A167808(n), A167816(n)))`
-/

namespace A293679.P1348913298680777310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (Int.lcm (A167808 n) (A167816 n) : ℝ))

end

end A293679.P1348913298680777310

namespace A293679

/-- `round(π*lcm(A167808(n), A167816(n)))` -/
def P1348913298680777310.Spec : Prop :=
  ∀ n, P1348913298680777310.a n = A293679 n

end A293679

/-! ## A293679.P8974769121779490454

`round(π*(A001612(n)-1-A118658(n)))`
-/

namespace A293679.P8974769121779490454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A001612 n - 1 - A118658 n : ℝ))

end

end A293679.P8974769121779490454

namespace A293679

/-- `round(π*(A001612(n)-1-A118658(n)))` -/
def P8974769121779490454.Spec : Prop :=
  ∀ n, P8974769121779490454.a n = A293679 n

end A293679

/-! ## A293679.P4133792577492622406

`round(π*(A280193(comp[2*n])+A001611(n)))`
-/

namespace A293679.P4133792577492622406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A280193 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A001611 n : ℝ))

end

end A293679.P4133792577492622406

namespace A293679

/-- `round(π*(A280193(comp[2*n])+A001611(n)))` -/
def P4133792577492622406.Spec : Prop :=
  ∀ n, P4133792577492622406.a n = A293679 n

end A293679

/-! ## A293679.P2987512368427964130

`round(π*(A319359(A217221(2*n)+1)+A001611(n)))`
-/

namespace A293679.P2987512368427964130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A319359 (A217221 (2 * n) + 1).toNat + A001611 n : ℝ))

end

end A293679.P2987512368427964130

namespace A293679

/-- `round(π*(A319359(A217221(2*n)+1)+A001611(n)))` -/
def P2987512368427964130.Spec : Prop :=
  ∀ n, P2987512368427964130.a n = A293679 n

end A293679

/-! ## A293679.P17171287478058865093

`round(π*sqrt(A007598(n)))`
-/

namespace A293679.P17171287478058865093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * Real.sqrt (A007598 n : ℝ))

end

end A293679.P17171287478058865093

namespace A293679

/-- `round(π*sqrt(A007598(n)))` -/
def P17171287478058865093.Spec : Prop :=
  ∀ n, P17171287478058865093.a n = A293679 n

end A293679

/-!
# A293680: Let P be the sequence of distinct lattice points defined by the following rules: P(1) = (0,0), P(2) = (1,0), and for any i < j < k, P(k) does not lie on the vector (P(i), P(j)), and for any n > 2, P(n) is the closest lattice point to P(n-1) such that the angle of the vectors (P(n-2), P(n-1)) and (P(n-1), P(n)), say t, satisfies 0 < t < Pi, and in case of a tie, minimize the angle t; a(n) = X-coordinate of P(n).

The programs for A293680, there is no canonical definition to state claims against.
-/

/-! ## A293680.P10938159154909305546

`A293772(n+1)%A104393(n)`
-/

namespace A293680.P10938159154909305546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293772 (n + 1)) (A104393 n)

end

end A293680.P10938159154909305546

/-! ## A293680.P9812434212605267138

`A293772(gcd(n+1, A090939(n+1)))`
-/

namespace A293680.P9812434212605267138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293772 (Int.gcd (n + 1 : ℤ) (A090939 (n + 1)))

end

end A293680.P9812434212605267138

/-! ## A293680.P5970972624012922793

`A093148((2*n)²)*A293772(n+1)`
-/

namespace A293680.P5970972624012922793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 ((2 * n) ^ 2) * A293772 (n + 1)

end

end A293680.P5970972624012922793

/-! ## A293680.P14115333086833847290

`and(A057428((2*n)²), A293772(n+1))`
-/

namespace A293680.P14115333086833847290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 ((2 * n) ^ 2)) (A293772 (n + 1))

end

end A293680.P14115333086833847290

/-! ## A293680.P5171909461169175537

`A000035((2*n+1)²)*A293772(n+1)`
-/

namespace A293680.P5171909461169175537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((2 * n + 1) ^ 2) * A293772 (n + 1)

end

end A293680.P5171909461169175537

/-!
# A293681: Let P be the sequence of distinct lattice points defined by the following rules: P(1) = (0,0), P(2) = (1,0), and for any i < j < k, P(k) does not lie on the vector (P(i), P(j)), and for any n > 2, P(n) is the closest lattice point to P(n-1) such that the angle of the vectors (P(n-2), P(n-1)) and (P(n-1), P(n)), say t, satisfies 0 < t < Pi, and in case of a tie, minimize the angle t; a(n) = Y-coordinate of P(n).

The programs for A293681, there is no canonical definition to state claims against.
-/

/-! ## A293681.P6126043387088839051

`A293773(n+1)%A104393(n)`
-/

namespace A293681.P6126043387088839051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293773 (n + 1)) (A104393 n)

end

end A293681.P6126043387088839051

/-! ## A293681.P11513656729420890904

`A293773(n+1)/A156072(∑[n])`
-/

namespace A293681.P11513656729420890904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293773 (n + 1) : ℚ) / (A156072 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A293681.P11513656729420890904

/-! ## A293681.P9642351044857803208

`A293773(gcd(n+1, A090939(n+1)))`
-/

namespace A293681.P9642351044857803208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293773 (Int.gcd (n + 1 : ℤ) (A090939 (n + 1)))

end

end A293681.P9642351044857803208

/-! ## A293681.P13589888868712551623

`or(and(1, A293752(n+1)), A293773(n+1))`
-/

namespace A293681.P13589888868712551623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 1 (A293752 (n + 1))) (A293773 (n + 1))

end

end A293681.P13589888868712551623

/-! ## A293681.P5349093564468456934

`A293773(n+1)+A151909(A026082(n+1))`
-/

namespace A293681.P5349093564468456934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293773 (n + 1) + A151909 (A026082 (n + 1)).toNat

end

end A293681.P5349093564468456934

/-!
# A293684: Numbers k such that (19*10^k + 413)/9 is prime.

The programs for A293684, there is no canonical definition to state claims against.
-/

/-! ## A293684.P11337302324941154235

`A371128(A278325(n+3))+∑[n]`
-/

namespace A293684.P11337302324941154235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371128 (A278325 (n + 3)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A293684.P11337302324941154235

/-! ## A293684.P8710254042400488497

`∑[A180198(C(n, A304326(n+1)))]`
-/

namespace A293684.P8710254042400488497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180198 (Nat.choose n (A304326 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293684.P8710254042400488497

/-! ## A293684.P14388604094400034984

`∑[A180199(C(n, A304326(n+1)))]`
-/

namespace A293684.P14388604094400034984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 (Nat.choose n (A304326 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293684.P14388604094400034984

/-! ## A293684.P227181182751965199

`A181118(A281122(n))+A000217(n)`
-/

namespace A293684.P227181182751965199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (A281122 n).toNat + A000217 n

end

end A293684.P227181182751965199

/-! ## A293684.P3826577090076087835

`A228100(A121736(n+1))+A000217(n)`
-/

namespace A293684.P3826577090076087835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (A121736 (n + 1)).toNat + A000217 n

end

end A293684.P3826577090076087835

/-!
# A293688: Partial sums of A002251.

The programs for A293688, the canonical program `A293688.P8284500563526258194` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293688 has offset 0).

The definition of A293688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293688.P346354177541346807

`∑[abs(Δ[n*floor(n/ϕ)])]`
-/

namespace A293688.P346354177541346807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293688.P346354177541346807

namespace A293688

/-- `∑[abs(Δ[n*floor(n/ϕ)])]` -/
def P346354177541346807.Spec : Prop :=
  ∀ n, P346354177541346807.a n = A293688 n

end A293688

/-! ## A293688.P10809348995784533687

`floor(floor((n+1)/ϕ)/acot(n+1))`
-/

namespace A293688.P10809348995784533687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A293688.P10809348995784533687

namespace A293688

/-- `floor(floor((n+1)/ϕ)/acot(n+1))` -/
def P10809348995784533687.Spec : Prop :=
  ∀ n, P10809348995784533687.a n = A293688 n

end A293688

/-! ## A293688.P16576160841801745474

`(n+1)*∑[char[ceil(C(n+1, n)/ϕ+n)]]`
-/

namespace A293688.P16576160841801745474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293688.P16576160841801745474

namespace A293688

/-- `(n+1)*∑[char[ceil(C(n+1, n)/ϕ+n)]]` -/
def P16576160841801745474.Spec : Prop :=
  ∀ n, (P16576160841801745474.a n : ℤ) = A293688 n

end A293688

/-! ## A293688.P7839236898898093553

`(n+1)*ceil((n+1)/ϕ-and(1, 2*n+1))`
-/

namespace A293688.P7839236898898093553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n + 1 : ℝ) / Real.goldenRatio - (Nat.land 1 (2 * n + 1) : ℝ)⌉

end

end A293688.P7839236898898093553

namespace A293688

/-- `(n+1)*ceil((n+1)/ϕ-and(1, 2*n+1))` -/
def P7839236898898093553.Spec : Prop :=
  ∀ n, P7839236898898093553.a n = A293688 n

end A293688

/-! ## A293688.P8284500563526258194

`(n+1)*A005206(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A293688

/-- `(n+1)*A005206(n)` -/
def P8284500563526258194.Spec : Prop :=
  ∀ n, P8284500563526258194.a n = A293688 n

theorem P8284500563526258194.correct : P8284500563526258194.Spec := by
  intro n
  simp only [A293688]

end A293688

/-! ## A293688.P17707045993668355589

`2*∑[A002251(n)/2]`
-/

namespace A293688.P17707045993668355589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002251 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293688.P17707045993668355589

namespace A293688

/-- `2*∑[A002251(n)/2]` -/
def P17707045993668355589.Spec : Prop :=
  ∀ n, P17707045993668355589.a n = (A293688 n : ℚ)

end A293688

/-! ## A293688.P17443308919626317023

`A026271(n+1)-∑[n]`
-/

namespace A293688.P17443308919626317023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026271 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A293688.P17443308919626317023

namespace A293688

/-- `A026271(n+1)-∑[n]` -/
def P17443308919626317023.Spec : Prop :=
  ∀ n, P17443308919626317023.a n = A293688 n

end A293688

/-! ## A293688.P8813816749388424650

`(n+1)*∑[A096270(n)]`
-/

namespace A293688.P8813816749388424650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293688.P8813816749388424650

namespace A293688

/-- `(n+1)*∑[A096270(n)]` -/
def P8813816749388424650.Spec : Prop :=
  ∀ n, P8813816749388424650.a n = A293688 n

end A293688

/-! ## A293688.P4895391261793421994

`A019445(n+1)-(n+1)`
-/

namespace A293688.P4895391261793421994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019445 (n + 1) - (n + 1 : ℤ)

end

end A293688.P4895391261793421994

namespace A293688

/-- `A019445(n+1)-(n+1)` -/
def P4895391261793421994.Spec : Prop :=
  ∀ n, P4895391261793421994.a n = A293688 n

theorem P4895391261793421994.correct : P4895391261793421994.Spec := by
  intro n
  simp only [A293688, Nat.add_sub_cancel, A293688.P4895391261793421994.a, A293688.P8284500563526258194.a, A005206, A005206.P7910201692454662432.a, A019445, A019445.P1138879738432013410.a, A019446, A019446.P15799228485202285486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293688

/-! ## A293688.P10498184954812167645

`(n+1)*A060143(n+1)`
-/

namespace A293688.P10498184954812167645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060143 (n + 1)

end

end A293688.P10498184954812167645

namespace A293688

/-- `(n+1)*A060143(n+1)` -/
def P10498184954812167645.Spec : Prop :=
  ∀ n, P10498184954812167645.a n = A293688 n

end A293688

/-! ## A293688.P807775383412640307

`∑[A019444(n+1)]-(n+1)`
-/

namespace A293688.P807775383412640307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A293688.P807775383412640307

namespace A293688

/-- `∑[A019444(n+1)]-(n+1)` -/
def P807775383412640307.Spec : Prop :=
  ∀ n, P807775383412640307.a n = A293688 n

end A293688

/-! ## A293688.P5628239497417740075

`(n+1)*(A019446(n+1)-1)`
-/

namespace A293688.P5628239497417740075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A019446 (n + 1) - 1)

end

end A293688.P5628239497417740075

namespace A293688

/-- `(n+1)*(A019446(n+1)-1)` -/
def P5628239497417740075.Spec : Prop :=
  ∀ n, P5628239497417740075.a n = A293688 n

theorem P5628239497417740075.correct : P5628239497417740075.Spec := by
  intro n
  simp only [A293688, Nat.add_sub_cancel, A293688.P5628239497417740075.a, A293688.P8284500563526258194.a, A005206, A005206.P7910201692454662432.a, A019446, A019446.P15799228485202285486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293688

/-! ## A293688.P13375066768958948348

`(n+1)*(A022342(n+1)-n)`
-/

namespace A293688.P13375066768958948348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A022342 (n + 1) - (n : ℤ))

end

end A293688.P13375066768958948348

namespace A293688

/-- `(n+1)*(A022342(n+1)-n)` -/
def P13375066768958948348.Spec : Prop :=
  ∀ n, P13375066768958948348.a n = A293688 n

end A293688

/-! ## A293688.P84441221783731441

`(n+1)*(A000201(n+1)-(n+1))`
-/

namespace A293688.P84441221783731441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000201 (n + 1) - (n + 1 : ℤ))

end

end A293688.P84441221783731441

namespace A293688

/-- `(n+1)*(A000201(n+1)-(n+1))` -/
def P84441221783731441.Spec : Prop :=
  ∀ n, P84441221783731441.a n = A293688 n

end A293688

/-! ## A293688.P1644519631776074446

`(n+1)*(A066096(n+1)-(n+1))`
-/

namespace A293688.P1644519631776074446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A066096 (n + 1) - (n + 1 : ℤ))

end

end A293688.P1644519631776074446

namespace A293688

/-- `(n+1)*(A066096(n+1)-(n+1))` -/
def P1644519631776074446.Spec : Prop :=
  ∀ n, P1644519631776074446.a n = A293688 n

end A293688

/-! ## A293688.P11053985032498450670

`(n+1)*(A004956(n+1)-(n+2))`
-/

namespace A293688.P11053985032498450670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004956 (n + 1) - (n + 2 : ℤ))

end

end A293688.P11053985032498450670

namespace A293688

/-- `(n+1)*(A004956(n+1)-(n+2))` -/
def P11053985032498450670.Spec : Prop :=
  ∀ n, P11053985032498450670.a n = A293688 n

end A293688

/-! ## A293688.P7866912355665622234

`(n+1)*(A026351(n+1)-(n+2))`
-/

namespace A293688.P7866912355665622234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A026351 (n + 1) - (n + 2 : ℤ))

end

end A293688.P7866912355665622234

namespace A293688

/-- `(n+1)*(A026351(n+1)-(n+2))` -/
def P7866912355665622234.Spec : Prop :=
  ∀ n, P7866912355665622234.a n = A293688 n

end A293688

/-! ## A293688.P10347408277060898107

`A026353(n+2)-A000096(n)`
-/

namespace A293688.P10347408277060898107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2) - A000096 n

end

end A293688.P10347408277060898107

namespace A293688

/-- `A026353(n+2)-A000096(n)` -/
def P10347408277060898107.Spec : Prop :=
  ∀ n, P10347408277060898107.a n = A293688 n

end A293688

/-! ## A293688.P362358034786512709

`A026357(n+3)-A055998(n)`
-/

namespace A293688.P362358034786512709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026357 (n + 3) - A055998 n

end

end A293688.P362358034786512709

namespace A293688

/-- `A026357(n+3)-A055998(n)` -/
def P362358034786512709.Spec : Prop :=
  ∀ n, P362358034786512709.a n = A293688 n

end A293688

/-!
# A293689: Position of the prime ant after n steps. If the value of the ant's position is prime, it steps to the right; if the value is composite, it divides by the least divisor, steps to the left, and adds the divisor.

The programs for A293689, there is no canonical definition to state claims against.
-/

/-! ## A293689.P16220812688732590191

`A059261(n)-A249122(A046951(A069251(n)))`
-/

namespace A293689.P16220812688732590191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 n - A249122 (A046951 (A069251 n).toNat).toNat

end

end A293689.P16220812688732590191

/-!
# A293690: Numbers z such that x^2 + y^6 = z^2 for positive integers x and y.

The programs for A293690, there is no canonical definition to state claims against.
-/

/-! ## A293690.P1362685200716460388

`A219251(A097809(n)+A008960(n))`
-/

namespace A293690.P1362685200716460388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219251 (A097809 n + A008960 n).toNat

end

end A293690.P1362685200716460388

/-!
# A293692: Numbers z such that x^2 + y^7 = z^2 for positive integers x and y.

The programs for A293692, there is no canonical definition to state claims against.
-/

/-! ## A293692.P10256766436984789999

`A189302(2*(∑[n]+3)+n!-1)`
-/

namespace A293692.P10256766436984789999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℕ) : ℤ) + ((Nat.factorial n : ℤ) - 1)).toNat

end

end A293692.P10256766436984789999

/-!
# A293697: a(n) is the sum of prime numbers between 2^n+1 and 2^(n+1).

The programs for A293697, there is no canonical definition to state claims against.
-/

/-! ## A293697.P16835120243347830482

`Δ[A007504(A007053(n))]`
-/

namespace A293697.P16835120243347830482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293697.P16835120243347830482

/-! ## A293697.P13129302849598112440

`Δ[A007504(A060967(2*n))]`
-/

namespace A293697.P13129302849598112440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A060967 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293697.P13129302849598112440

/-! ## A293697.P9559635400846091776

`Δ[A007504(A175148(n)+A175147(n))]`
-/

namespace A293697.P9559635400846091776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A175148 n + A175147 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293697.P9559635400846091776

/-! ## A293697.P14039773512166845264

`Δ[A036439(A007053(n)+1)]`
-/

namespace A293697.P14039773512166845264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A007053 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293697.P14039773512166845264

/-! ## A293697.P9797722766488912396

`A293696(∑[A036378(n)]-1)`
-/

namespace A293697.P9797722766488912396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293696 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A293697.P9797722766488912396

/-!
# A293698: Values of positive integer i such that floor(tan(i)) = 1.

The programs for A293698, the canonical program `A293698.P13028461660533902574` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293698 has offset 1).

The definition of A293698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293698.P8087427259177215943

`A293700(n)+a(n-1)` with `a(0)=1`
-/

namespace A293698.P8087427259177215943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293700 n + a (n - 1)

end

end A293698.P8087427259177215943

namespace A293698

/-- `A293700(n)+a(n-1)` -/
def P8087427259177215943.Spec : Prop :=
  ∀ n, P8087427259177215943.a n = A293698 (n + 1)

end A293698

/-! ## A293698.P6565967988271346903

`∑[A293700(n+1)]+1-A293700(n+1)`
-/

namespace A293698.P6565967988271346903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293700 (n + 1))

end

end A293698.P6565967988271346903

namespace A293698

/-- `∑[A293700(n+1)]+1-A293700(n+1)` -/
def P6565967988271346903.Spec : Prop :=
  ∀ n, P6565967988271346903.a n = A293698 (n + 1)

end A293698

/-! ## A293698.P18059339261066728665

`∩[A246442(n+1)-1, A258024(n+1)]`
-/

namespace A293698.P18059339261066728665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246442 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293698.P18059339261066728665

namespace A293698

/-- `∩[A246442(n+1)-1, A258024(n+1)]` -/
def P18059339261066728665.Spec : Prop :=
  ∀ n, (P18059339261066728665.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P13028461660533902574

`eq[1, floor(tan(n))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A293698

/-- `eq[1, floor(tan(n))]` -/
def P13028461660533902574.Spec : Prop :=
  ∀ n, (P13028461660533902574.a n : ℤ) = A293698 (n + 1)

theorem P13028461660533902574.correct : P13028461660533902574.Spec := by
  intro n
  simp only [A293698, Nat.add_sub_cancel]

end A293698

/-! ## A293698.P2138128928290679392

`eq[2, ceil(tan(n))]`
-/

namespace A293698.P2138128928290679392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293698.P2138128928290679392

namespace A293698

/-- `eq[2, ceil(tan(n))]` -/
def P2138128928290679392.Spec : Prop :=
  ∀ n, (P2138128928290679392.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P11393963100075227348

`lt[1, 1/(tan(n)-1)]`
-/

namespace A293698.P11393963100075227348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (Real.tan (n : ℝ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A293698.P11393963100075227348

namespace A293698

/-- `lt[1, 1/(tan(n)-1)]` -/
def P11393963100075227348.Spec : Prop :=
  ∀ n, (P11393963100075227348.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P15500070343291866418

`∩[A026314(n+1), A258024(n+1)]`
-/

namespace A293698.P15500070343291866418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293698.P15500070343291866418

namespace A293698

/-- `∩[A026314(n+1), A258024(n+1)]` -/
def P15500070343291866418.Spec : Prop :=
  ∀ n, (P15500070343291866418.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P13219316463579759574

`∩[A026314(n+1), A258203(n+1)]`
-/

namespace A293698.P13219316463579759574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293698.P13219316463579759574

namespace A293698

/-- `∩[A026314(n+1), A258203(n+1)]` -/
def P13219316463579759574.Spec : Prop :=
  ∀ n, (P13219316463579759574.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P9831365026343358744

`∩[A258024(n+1), A140758(n)-2]`
-/

namespace A293698.P9831365026343358744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293698.P9831365026343358744

namespace A293698

/-- `∩[A258024(n+1), A140758(n)-2]` -/
def P9831365026343358744.Spec : Prop :=
  ∀ n, (P9831365026343358744.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P12453083355784240814

`∩[A248521(n+1)-2, A258024(n+1)]`
-/

namespace A293698.P12453083355784240814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293698.P12453083355784240814

namespace A293698

/-- `∩[A248521(n+1)-2, A258024(n+1)]` -/
def P12453083355784240814.Spec : Prop :=
  ∀ n, (P12453083355784240814.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P4497172150041139658

`eq[1, A000503(n)]`
-/

namespace A293698.P4497172150041139658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293698.P4497172150041139658

namespace A293698

/-- `eq[1, A000503(n)]` -/
def P4497172150041139658.Spec : Prop :=
  ∀ n, (P4497172150041139658.a n : ℤ) = A293698 (n + 1)

theorem P4497172150041139658.correct : P4497172150041139658.Spec := by
  intro n
  simp only [A293698, Nat.add_sub_cancel, A293698.P4497172150041139658.f1, A293698.P4497172150041139658.f2, A293698.P4497172150041139658.a, A293698.P13028461660533902574.f1, A293698.P13028461660533902574.f2, A293698.P13028461660533902574.a, A000503, A000503.P652587286000263430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293698

/-! ## A293698.P15150319652539180579

`eq[2, A195910(n)]`
-/

namespace A293698.P15150319652539180579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293698.P15150319652539180579

namespace A293698

/-- `eq[2, A195910(n)]` -/
def P15150319652539180579.Spec : Prop :=
  ∀ n, (P15150319652539180579.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P12198268493276398946

`eq[A258020(n)!, A258021(n)]`
-/

namespace A293698.P12198268493276398946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A258020 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293698.P12198268493276398946

namespace A293698

/-- `eq[A258020(n)!, A258021(n)]` -/
def P12198268493276398946.Spec : Prop :=
  ∀ n, (P12198268493276398946.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P16513084249167035047

`filter[A026314(n+1), A258021(#)]`
-/

namespace A293698.P16513084249167035047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A258021 (f1 j).toNat = 1) n)

end

end A293698.P16513084249167035047

namespace A293698

/-- `filter[A026314(n+1), A258021(#)]` -/
def P16513084249167035047.Spec : Prop :=
  ∀ n, P16513084249167035047.a n = A293698 (n + 1)

end A293698

/-! ## A293698.P2128645647486407844

`lt[(A000503(n)-A054977(n))², 1]`
-/

namespace A293698.P2128645647486407844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000503 n - A054977 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293698.P2128645647486407844

namespace A293698

/-- `lt[(A000503(n)-A054977(n))², 1]` -/
def P2128645647486407844.Spec : Prop :=
  ∀ n, (P2128645647486407844.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P11901529286099053471

`lt[(1-A000503(n))², A057427(n)]`
-/

namespace A293698.P11901529286099053471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000503 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293698.P11901529286099053471

namespace A293698

/-- `lt[(1-A000503(n))², A057427(n)]` -/
def P11901529286099053471.Spec : Prop :=
  ∀ n, (P11901529286099053471.a n : ℤ) = A293698 (n + 1)

end A293698

/-! ## A293698.P17801324196439916054

`eq[A086867(2*(n+1)), A258021(n+1)]+1`
-/

namespace A293698.P17801324196439916054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A293698.P17801324196439916054

namespace A293698

/-- `eq[A086867(2*(n+1)), A258021(n+1)]+1` -/
def P17801324196439916054.Spec : Prop :=
  ∀ n, (P17801324196439916054.a n : ℤ) = A293698 (n + 1)

end A293698

/-!
# A293699: First differences of A293751.

The programs for A293699, there is no canonical definition to state claims against.
-/

/-! ## A293699.P12365701434487075051

`A293700(n+11)`
-/

namespace A293699.P12365701434487075051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293700 (n + 11)

end

end A293699.P12365701434487075051

/-! ## A293699.P823753819042718225

`Δ[A293751(n+1)]`
-/

namespace A293699.P823753819042718225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293699.P823753819042718225

/-! ## A293699.P6073802112392120929

`Δ[lt[(A000503(n)+2)², 1]]`
-/

namespace A293699.P6073802112392120929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000503 n + 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293699.P6073802112392120929

/-! ## A293699.P6302491880448528780

`A293751(n+2)-A293751(n+1)`
-/

namespace A293699.P6302491880448528780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293751 (n + 2) - A293751 (n + 1)

end

end A293699.P6302491880448528780

/-! ## A293699.P15902317723668863116

`A293751(A000027(n+2))%A293751(n+1)`
-/

namespace A293699.P15902317723668863116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293751 (A000027 (n + 2)).toNat) (A293751 (n + 1))

end

end A293699.P15902317723668863116

/-! ## A293699.P9504612546203774167

`A293751(A028242(2*(n+1)))%A293751(n+1)`
-/

namespace A293699.P9504612546203774167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293751 (A028242 (2 * (n + 1))).toNat) (A293751 (n + 1))

end

end A293699.P9504612546203774167

