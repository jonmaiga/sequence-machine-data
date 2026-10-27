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
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112400: a(n) = Sum_{p|n, p prime} mu(b(p,n)), where mu(k) = A008683(k) (the Moebius function) and p^b(p,n) is the highest power of the prime p dividing n.

The programs for A112400, the canonical program `A112400.P2366853602604330834` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112400 has offset 1).

The definition of A112400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112400.P179142720157607903

`∑{e}[n+1, A008683(#)]`
-/

namespace A112400.P179142720157607903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (Nat.factorization (f1 n) p)

end

end A112400.P179142720157607903

namespace A112400

/-- `∑{e}[n+1, A008683(#)]` -/
def P179142720157607903.Spec : Prop :=
  ∀ n, P179142720157607903.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P823978354643980219

`∑{e}[n+1, A069158(#)]`
-/

namespace A112400.P823978354643980219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A069158 (Nat.factorization (f1 n) p)

end

end A112400.P823978354643980219

namespace A112400

/-- `∑{e}[n+1, A069158(#)]` -/
def P823978354643980219.Spec : Prop :=
  ∀ n, P823978354643980219.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P8072581193381016174

`∑{e}[n+1, A133639(#)]`
-/

namespace A112400.P8072581193381016174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A133639 (Nat.factorization (f1 n) p)

end

end A112400.P8072581193381016174

namespace A112400

/-- `∑{e}[n+1, A133639(#)]` -/
def P8072581193381016174.Spec : Prop :=
  ∀ n, P8072581193381016174.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P13700906802475782555

`∑{e}[n+1, A197774(#)]`
-/

namespace A112400.P13700906802475782555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A197774 (Nat.factorization (f1 n) p)

end

end A112400.P13700906802475782555

namespace A112400

/-- `∑{e}[n+1, A197774(#)]` -/
def P13700906802475782555.Spec : Prop :=
  ∀ n, P13700906802475782555.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P2366853602604330834

`∑{e}[n+1, A219009(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112400

/-- `∑{e}[n+1, A219009(#)]` -/
def P2366853602604330834.Spec : Prop :=
  ∀ n, P2366853602604330834.a n = A112400 (n + 1)

theorem P2366853602604330834.correct : P2366853602604330834.Spec := by
  intro n
  simp only [A112400, Nat.add_sub_cancel]

end A112400

/-! ## A112400.P6685985881429070200

`∑{e}[n+1, A253206(#)]`
-/

namespace A112400.P6685985881429070200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A253206 (Nat.factorization (f1 n) p)

end

end A112400.P6685985881429070200

namespace A112400

/-- `∑{e}[n+1, A253206(#)]` -/
def P6685985881429070200.Spec : Prop :=
  ∀ n, P6685985881429070200.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P1038659722774437173

`∑{e}[n+1, A302050(#)]`
-/

namespace A112400.P1038659722774437173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A302050 (Nat.factorization (f1 n) p)

end

end A112400.P1038659722774437173

namespace A112400

/-- `∑{e}[n+1, A302050(#)]` -/
def P1038659722774437173.Spec : Prop :=
  ∀ n, P1038659722774437173.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P9836652910153653129

`∑{p}[n+1, A008683(val(n+1, #))]`
-/

namespace A112400.P9836652910153653129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (SequenceMachineLib.valuation (n + 1) p)

end

end A112400.P9836652910153653129

namespace A112400

/-- `∑{p}[n+1, A008683(val(n+1, #))]` -/
def P9836652910153653129.Spec : Prop :=
  ∀ n, P9836652910153653129.a n = A112400 (n + 1)

end A112400

/-! ## A112400.P8396961270917243801

`A384421(n+1)-A101436(n+1)-A101436(n+1)`
-/

namespace A112400.P8396961270917243801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384421 (n + 1) - A101436 (n + 1) - A101436 (n + 1)

end

end A112400.P8396961270917243801

namespace A112400

/-- `A384421(n+1)-A101436(n+1)-A101436(n+1)` -/
def P8396961270917243801.Spec : Prop :=
  ∀ n, P8396961270917243801.a n = A112400 (n + 1)

end A112400

/-!
# A112402: Full list of numbers of inequivalent embeddings of triangulations on the torus.

The programs for A112402, there is no canonical definition to state claims against.
-/

/-! ## A112402.P18333622227257374908

`∑[A130495(∑[A020987(n)])]`
-/

namespace A112402.P18333622227257374908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112402.P18333622227257374908

/-! ## A112402.P8835542254566256528

`∑[∏[A065459(A184616(n))]]`
-/

namespace A112402.P8835542254566256528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065459 (A184616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112402.P8835542254566256528

/-! ## A112402.P11846030530540783352

`∑[∏[A255350(A327516(n))]]`
-/

namespace A112402.P11846030530540783352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (A327516 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112402.P11846030530540783352

/-! ## A112402.P5151294057972550897

`∑[∏[A003557(A147846(n+1))]]`
-/

namespace A112402.P5151294057972550897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A147846 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112402.P5151294057972550897

/-! ## A112402.P2849312384145822286

`∑[∏[A326840(A305423(n+1))]]`
-/

namespace A112402.P2849312384145822286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (A305423 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112402.P2849312384145822286

/-!
# A112403: G.f.: (1-16*x+28*x^2+56*x^3-140*x^4+56*x^5+28*x^6-16*x^7+x^8)/(x^2-x+1)^8.

The programs for A112403, the canonical program `A112403.P15024895408612493886` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112403 has offset 0).

The definition of A112403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112403.P15024895408612493886

`A000580(n+7)*A087204(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112403

/-- `A000580(n+7)*A087204(n+1)` -/
def P15024895408612493886.Spec : Prop :=
  ∀ n, P15024895408612493886.a n = A112403 n

theorem P15024895408612493886.correct : P15024895408612493886.Spec := by
  intro n
  simp only [A112403]

end A112403

/-! ## A112403.P12075936522637975340

`A000580(n+7)*A100051(n+1)`
-/

namespace A112403.P12075936522637975340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A100051 (n + 1)

end

end A112403.P12075936522637975340

namespace A112403

/-- `A000580(n+7)*A100051(n+1)` -/
def P12075936522637975340.Spec : Prop :=
  ∀ n, P12075936522637975340.a n = A112403 n

end A112403

/-! ## A112403.P1390050407654970420

`A000580(n+7)*A057079(n+2)`
-/

namespace A112403.P1390050407654970420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A057079 (n + 2)

end

end A112403.P1390050407654970420

namespace A112403

/-- `A000580(n+7)*A057079(n+2)` -/
def P1390050407654970420.Spec : Prop :=
  ∀ n, P1390050407654970420.a n = A112403 n

end A112403

/-! ## A112403.P15276693242478946072

`∑[A000579(n+6)]*A057079(n+2)`
-/

namespace A112403.P15276693242478946072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057079 (n + 2)

end

end A112403.P15276693242478946072

namespace A112403

/-- `∑[A000579(n+6)]*A057079(n+2)` -/
def P15276693242478946072.Spec : Prop :=
  ∀ n, P15276693242478946072.a n = A112403 n

end A112403

/-! ## A112403.P971630673639804363

`∑[A299338(2*n)]*A057079(n+2)`
-/

namespace A112403.P971630673639804363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057079 (n + 2)

end

end A112403.P971630673639804363

namespace A112403

/-- `∑[A299338(2*n)]*A057079(n+2)` -/
def P971630673639804363.Spec : Prop :=
  ∀ n, P971630673639804363.a n = A112403 n

end A112403

/-! ## A112403.P14832593374665782914

`A000580(n+7)*A089810((n+1)²)`
-/

namespace A112403.P14832593374665782914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A089810 ((n + 1) ^ 2)

end

end A112403.P14832593374665782914

namespace A112403

/-- `A000580(n+7)*A089810((n+1)²)` -/
def P14832593374665782914.Spec : Prop :=
  ∀ n, P14832593374665782914.a n = A112403 n

end A112403

/-!
# A112405: Numbers k such that k^9 - 3 is prime.

The programs for A112405, there is no canonical definition to state claims against.
-/

/-! ## A112405.P18314911877850883136

`A113868(n+1)+1`
-/

namespace A112405.P18314911877850883136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113868 (n + 1) + 1

end

end A112405.P18314911877850883136

/-! ## A112405.P5715999869883459139

`A092486(A113868(n+1))`
-/

namespace A112405.P5715999869883459139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A113868 (n + 1)).toNat

end

end A112405.P5715999869883459139

/-!
# A112408: Number of connected simple graphs with n vertices, n+3 edges, and vertex degrees no more than 4.

The programs for A112408, there is no canonical definition to state claims against.
-/

/-! ## A112408.P7839468405126504894

`A059995(A150656(n)-A150423(n))`
-/

namespace A112408.P7839468405126504894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A150656 n - A150423 n).toNat

end

end A112408.P7839468405126504894

/-! ## A112408.P1997619905459991958

`A059995(A150656(n)%A150423(n))`
-/

namespace A112408.P1997619905459991958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.tmod (A150656 n) (A150423 n)).toNat

end

end A112408.P1997619905459991958

/-! ## A112408.P12200321421082884877

`A054899(A010373(n+1)-A070313(n))`
-/

namespace A112408.P12200321421082884877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A010373 (n + 1) - A070313 n).toNat

end

end A112408.P12200321421082884877

/-! ## A112408.P16868231656978014213

`A253638(A074434(n+1))+A135665(n+1)`
-/

namespace A112408.P16868231656978014213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 (A074434 (n + 1)).toNat + A135665 (n + 1)

end

end A112408.P16868231656978014213

/-!
# A112410: Number of connected simple graphs with n vertices, n+1 edges, and vertex degrees no more than 4.

The programs for A112410, there is no canonical definition to state claims against.
-/

/-! ## A112410.P425666110561178334

`∑[A221839(n+1)-A023359(n)]`
-/

namespace A112410.P425666110561178334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221839 (n + 1) - A023359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112410.P425666110561178334

/-! ## A112410.P5097301095488091009

`A211964(∑[floor(exp((n-1)/2))]-n)`
-/

namespace A112410.P5097301095488091009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A112410.P5097301095488091009

/-! ## A112410.P13309612815689928267

`A000006(A001495(n))-1`
-/

namespace A112410.P13309612815689928267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A001495 n).toNat - 1

end

end A112410.P13309612815689928267

/-! ## A112410.P7133340191033754848

`∑[A331904(∑[A000108(n)]-n)]`
-/

namespace A112410.P7133340191033754848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112410.P7133340191033754848

/-!
# A112412: Number of Dyck paths of semilength n for which the number of ascents of length 1 is equal to the number of descents of length 1.

The programs for A112412, there is no canonical definition to state claims against.
-/

/-! ## A112412.P3864480515767532497

`ceil(A239379(n)/A022558(n))`
-/

namespace A112412.P3864480515767532497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239379 n : ℚ) / (A022558 n : ℚ)⌉

end

end A112412.P3864480515767532497

/-! ## A112412.P1399221123204966989

`ceil(A239379(n)/A004040((n-1)%(n+1)))`
-/

namespace A112412.P1399221123204966989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239379 n : ℚ) / (A004040 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat : ℚ)⌉

end

end A112412.P1399221123204966989

/-! ## A112412.P18259291199615257372

`A026819(A122448(n)+A020029(n))`
-/

namespace A112412.P18259291199615257372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A122448 n + A020029 n).toNat

end

end A112412.P18259291199615257372

/-! ## A112412.P3775414639321011723

`A080405(A081696(n))+A026519(n)`
-/

namespace A112412.P3775414639321011723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (A081696 n).toNat + A026519 n

end

end A112412.P3775414639321011723

/-!
# A112413: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and starting with exactly k UD's, where U=(1,1), D=(1,-1) (0 <= k <= n).

The programs for A112413, the canonical program `A112413.P7799178321871469342` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112413 has offset 0).

The definition of A112413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112413.P7799178321871469342

`A000245(abs(1-A025581(n)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112413

/-- `A000245(abs(1-A025581(n)))` -/
def P7799178321871469342.Spec : Prop :=
  ∀ n, P7799178321871469342.a n = A112413 n

theorem P7799178321871469342.correct : P7799178321871469342.Spec := by
  intro n
  simp only [A112413]

end A112413

/-! ## A112413.P13445056830929191420

`A000245(abs(2-A004736(n+1)))`
-/

namespace A112413.P13445056830929191420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |2 - A004736 (n + 1)|.toNat

end

end A112413.P13445056830929191420

namespace A112413

/-- `A000245(abs(2-A004736(n+1)))` -/
def P13445056830929191420.Spec : Prop :=
  ∀ n, P13445056830929191420.a n = A112413 n

end A112413

/-! ## A112413.P4195261030629590207

`A050144(A000124(A025581(n)))`
-/

namespace A112413.P4195261030629590207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050144 (A000124 (A025581 n).toNat).toNat

end

end A112413.P4195261030629590207

namespace A112413

/-- `A050144(A000124(A025581(n)))` -/
def P4195261030629590207.Spec : Prop :=
  ∀ n, P4195261030629590207.a n = A112413 n

end A112413

/-! ## A112413.P7963766438035382746

`A000245(abs(A023443(A025581(n))))`
-/

namespace A112413.P7963766438035382746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |A023443 (A025581 n).toNat|.toNat

end

end A112413.P7963766438035382746

namespace A112413

/-- `A000245(abs(A023443(A025581(n))))` -/
def P7963766438035382746.Spec : Prop :=
  ∀ n, P7963766438035382746.a n = A112413 n

end A112413

/-! ## A112413.P14683361994277809156

`A000245(A154990(n+1)+A025581(n))`
-/

namespace A112413.P14683361994277809156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A154990 (n + 1) + A025581 n).toNat

end

end A112413.P14683361994277809156

namespace A112413

/-- `A000245(A154990(n+1)+A025581(n))` -/
def P14683361994277809156.Spec : Prop :=
  ∀ n, P14683361994277809156.a n = A112413 n

end A112413

/-! ## A112413.P11014207563299175259

`A118344(2*(C(comp[∑[n]]-n, 2)-(n+1))²)`
-/

namespace A112413.P11014207563299175259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2).toNat

end

end A112413.P11014207563299175259

namespace A112413

/-- `A118344(2*(C(comp[∑[n]]-n, 2)-(n+1))²)` -/
def P11014207563299175259.Spec : Prop :=
  ∀ n, P11014207563299175259.a n = A112413 n

end A112413

/-! ## A112413.P12200520786358721432

`A118344(2*A025581(n)²)`
-/

namespace A112413.P12200520786358721432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (2 * A025581 n ^ 2).toNat

end

end A112413.P12200520786358721432

namespace A112413

/-- `A118344(2*A025581(n)²)` -/
def P12200520786358721432.Spec : Prop :=
  ∀ n, P12200520786358721432.a n = A112413 n

end A112413

/-! ## A112413.P537025450116909248

`A118344(2*A095831(n+1))`
-/

namespace A112413.P537025450116909248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (2 * A095831 (n + 1)).toNat

end

end A112413.P537025450116909248

namespace A112413

/-- `A118344(2*A095831(n+1))` -/
def P537025450116909248.Spec : Prop :=
  ∀ n, P537025450116909248.a n = A112413 n

end A112413

/-! ## A112413.P10857953890718874450

`A118344(A005843(A025581(n)²))`
-/

namespace A112413.P10857953890718874450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (A005843 (A025581 n ^ 2).toNat).toNat

end

end A112413.P10857953890718874450

namespace A112413

/-- `A118344(A005843(A025581(n)²))` -/
def P10857953890718874450.Spec : Prop :=
  ∀ n, P10857953890718874450.a n = A112413 n

end A112413

/-! ## A112413.P9828362286521081778

`A276986(A128307(n+1)+1)`
-/

namespace A112413.P9828362286521081778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276986 (A128307 (n + 1) + 1).toNat

end

end A112413.P9828362286521081778

namespace A112413

/-- `A276986(A128307(n+1)+1)` -/
def P9828362286521081778.Spec : Prop :=
  ∀ n, P9828362286521081778.a n = A112413 n

end A112413

/-!
# A112414: a(n) = 3*n + 7.

The programs for A112414, the canonical program `A112414.P1084450287602083744` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112414 has offset 0).

The definition of A112414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n+7` (program `A112414.P1084450287602083744`, by `A112414.P1084450287602083744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112414.P1084450287602083744

`3*n+7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112414

/-- `3*n+7` -/
def P1084450287602083744.Spec : Prop :=
  ∀ n, (P1084450287602083744.a n : ℤ) = A112414 n

theorem P1084450287602083744.correct : P1084450287602083744.Spec := by
  intro n
  simp only [A112414]

end A112414

/-!
# A112415: a(n) = C(1+n,1) * C(2+n,1) * C(4+n,2).

The programs for A112415, the canonical program `A112415.P17226039057874977949` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112415 has offset 0).

The definition of A112415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(1+n, 1)*C(2+n, 1)*C(4+n, 2)` (program `A112415.P17226039057874977949`, by `A112415.P17226039057874977949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112415.P8111462049250322191

`(n+1)*(n+2)*C(4+n, 2)`
-/

namespace A112415.P8111462049250322191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2) * Nat.choose (4 + n) 2

end

end A112415.P8111462049250322191

namespace A112415

/-- `(n+1)*(n+2)*C(4+n, 2)` -/
def P8111462049250322191.Spec : Prop :=
  ∀ n, (P8111462049250322191.a n : ℤ) = A112415 n

theorem P8111462049250322191.correct : P8111462049250322191.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P8111462049250322191.a, A112415.P17226039057874977949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P17226039057874977949

`C(1+n, 1)*C(2+n, 1)*C(4+n, 2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112415

/-- `C(1+n, 1)*C(2+n, 1)*C(4+n, 2)` -/
def P17226039057874977949.Spec : Prop :=
  ∀ n, (P17226039057874977949.a n : ℤ) = A112415 n

theorem P17226039057874977949.correct : P17226039057874977949.Spec := by
  intro n
  simp only [A112415]

end A112415

/-! ## A112415.P10966034243311416300

`(n+1)*(n+2)*(n+3)*(n+4)/2`
-/

namespace A112415.P10966034243311416300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) : ℚ) / 2

end

end A112415.P10966034243311416300

namespace A112415

/-- `(n+1)*(n+2)*(n+3)*(n+4)/2` -/
def P10966034243311416300.Spec : Prop :=
  ∀ n, P10966034243311416300.a n = (A112415 n : ℚ)

theorem P10966034243311416300.correct : P10966034243311416300.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P10966034243311416300.a, A112415.P17226039057874977949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P15759850321346436020

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=12, a(1)=60, a(2)=180, a(3)=420, a(4)=840`
-/

namespace A112415.P15759850321346436020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 60, 180, 420, 840] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A112415.P15759850321346436020

namespace A112415

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15759850321346436020.Spec : Prop :=
  ∀ n, P15759850321346436020.a n = A112415 n

end A112415

/-! ## A112415.P13272286252209106853

`A033486(n+1)`
-/

namespace A112415.P13272286252209106853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 (n + 1)

end

end A112415.P13272286252209106853

namespace A112415

/-- `A033486(n+1)` -/
def P13272286252209106853.Spec : Prop :=
  ∀ n, P13272286252209106853.a n = A112415 n

end A112415

/-! ## A112415.P13442654023498340402

`12*A000332(n+4)`
-/

namespace A112415.P13442654023498340402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000332 (n + 4)

end

end A112415.P13442654023498340402

namespace A112415

/-- `12*A000332(n+4)` -/
def P13442654023498340402.Spec : Prop :=
  ∀ n, P13442654023498340402.a n = A112415 n

theorem P13442654023498340402.correct : P13442654023498340402.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P13442654023498340402.a, A112415.P17226039057874977949.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P9777481984774941072

`(4/n+1)*a(n-1)` with `a(0)=12`
-/

namespace A112415.P9777481984774941072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  (4 / (n : ℚ) + 1) * a (n - 1)

end

end A112415.P9777481984774941072

namespace A112415

/-- `(4/n+1)*a(n-1)` -/
def P9777481984774941072.Spec : Prop :=
  ∀ n, P9777481984774941072.a n = (A112415 n : ℚ)

end A112415

/-! ## A112415.P14441934681627185040

`floor((1-lcm(n+2, n+3))²/2)`
-/

namespace A112415.P14441934681627185040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (Nat.lcm (n + 2) (n + 3) : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A112415.P14441934681627185040

namespace A112415

/-- `floor((1-lcm(n+2, n+3))²/2)` -/
def P14441934681627185040.Spec : Prop :=
  ∀ n, P14441934681627185040.a n = A112415 n

end A112415

/-! ## A112415.P16917506784996110997

`lcm(2, ∑[n+1]/Δ[1/(n+3)])`
-/

namespace A112415.P16917506784996110997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (f2 (n + 1) - f2 n)))

end

end A112415.P16917506784996110997

namespace A112415

/-- `lcm(2, ∑[n+1]/Δ[1/(n+3)])` -/
def P16917506784996110997.Spec : Prop :=
  ∀ n, (P16917506784996110997.a n : ℤ) = A112415 n

end A112415

/-! ## A112415.P4097508412858627064

`∑[n+2]+C((n+2)²+n+1, 2)`
-/

namespace A112415.P4097508412858627064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ((n + 2) ^ 2 + (n + 1)) 2

end

end A112415.P4097508412858627064

namespace A112415

/-- `∑[n+2]+C((n+2)²+n+1, 2)` -/
def P4097508412858627064.Spec : Prop :=
  ∀ n, (P4097508412858627064.a n : ℤ) = A112415 n

end A112415

/-! ## A112415.P4265096795567303586

`Δ[A158874(n)/2]`
-/

namespace A112415.P4265096795567303586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158874 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112415.P4265096795567303586

namespace A112415

/-- `Δ[A158874(n)/2]` -/
def P4265096795567303586.Spec : Prop :=
  ∀ n, P4265096795567303586.a n = (A112415 n : ℚ)

theorem P4265096795567303586.correct : P4265096795567303586.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P4265096795567303586.f1, A112415.P4265096795567303586.a, A112415.P17226039057874977949.a, A158874, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P14281832794360810377

`sqrt(144*A288876(n))`
-/

namespace A112415.P14281832794360810377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (144 * A288876 n : ℝ)

end

end A112415.P14281832794360810377

namespace A112415

/-- `sqrt(144*A288876(n))` -/
def P14281832794360810377.Spec : Prop :=
  ∀ n, P14281832794360810377.a n = (A112415 n : ℝ)

end A112415

/-! ## A112415.P9804260903597109774

`3/2*A162668(n+1)`
-/

namespace A112415.P9804260903597109774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A162668 (n + 1) : ℚ)

end

end A112415.P9804260903597109774

namespace A112415

/-- `3/2*A162668(n+1)` -/
def P9804260903597109774.Spec : Prop :=
  ∀ n, P9804260903597109774.a n = (A112415 n : ℚ)

theorem P9804260903597109774.correct : P9804260903597109774.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P9804260903597109774.a, A112415.P17226039057874977949.a, A162668, A162668.P8323676352970519687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P6532976468868562464

`(n+2)*A005564(n+3)`
-/

namespace A112415.P6532976468868562464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005564 (n + 3)

end

end A112415.P6532976468868562464

namespace A112415

/-- `(n+2)*A005564(n+3)` -/
def P6532976468868562464.Spec : Prop :=
  ∀ n, P6532976468868562464.a n = A112415 n

end A112415

/-! ## A112415.P11962809563363820152

`Δ[A293615(n)/5]`
-/

namespace A112415.P11962809563363820152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293615 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112415.P11962809563363820152

namespace A112415

/-- `Δ[A293615(n)/5]` -/
def P11962809563363820152.Spec : Prop :=
  ∀ n, P11962809563363820152.a n = (A112415 n : ℚ)

end A112415

/-! ## A112415.P835171291266908210

`2*A033487(n+1)`
-/

namespace A112415.P835171291266908210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033487 (n + 1)

end

end A112415.P835171291266908210

namespace A112415

/-- `2*A033487(n+1)` -/
def P835171291266908210.Spec : Prop :=
  ∀ n, P835171291266908210.a n = A112415 n

theorem P835171291266908210.correct : P835171291266908210.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P835171291266908210.a, A112415.P17226039057874977949.a, A033487, A033487.P180010041112617206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P2648028285201402253

`3*A033488(n+1)`
-/

namespace A112415.P2648028285201402253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033488 (n + 1)

end

end A112415.P2648028285201402253

namespace A112415

/-- `3*A033488(n+1)` -/
def P2648028285201402253.Spec : Prop :=
  ∀ n, P2648028285201402253.a n = A112415 n

theorem P2648028285201402253.correct : P2648028285201402253.Spec := by
  intro n
  simp only [A112415, Nat.add_sub_cancel, A112415.P2648028285201402253.a, A112415.P17226039057874977949.a, A033488, A033488.P5263045204408268705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112415

/-! ## A112415.P6298131675406699641

`record[A033486(abs(1-n))]`
-/

namespace A112415.P6298131675406699641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112415.P6298131675406699641

namespace A112415

/-- `record[A033486(abs(1-n))]` -/
def P6298131675406699641.Spec : Prop :=
  ∀ n, P6298131675406699641.a n = A112415 n

end A112415

/-! ## A112415.P4039922995474618270

`∑[∑[A049598(n+1)]]`
-/

namespace A112415.P4039922995474618270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112415.P4039922995474618270

namespace A112415

/-- `∑[∑[A049598(n+1)]]` -/
def P4039922995474618270.Spec : Prop :=
  ∀ n, P4039922995474618270.a n = A112415 n

end A112415

/-! ## A112415.P10060825224386438412

`floor(A062938(n+1)/2)`
-/

namespace A112415.P10060825224386438412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062938 (n + 1) : ℚ) / 2⌋

end

end A112415.P10060825224386438412

namespace A112415

/-- `floor(A062938(n+1)/2)` -/
def P10060825224386438412.Spec : Prop :=
  ∀ n, P10060825224386438412.a n = A112415 n

end A112415

/-!
# A112416: Next-to-most-significant binary digit of the n-th prime.

The programs for A112416, the canonical program `A112416.P18301865782257136029` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112416 has offset 1).

The definition of A112416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112416.P15262899091933888661

`and(2, A098957(n+1))/2`
-/

namespace A112416.P15262899091933888661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A098957 (n + 1)) : ℚ) / 2

end

end A112416.P15262899091933888661

namespace A112416

/-- `and(2, A098957(n+1))/2` -/
def P15262899091933888661.Spec : Prop :=
  ∀ n, P15262899091933888661.a n = (A112416 (n + 1) : ℚ)

end A112416

/-! ## A112416.P6689287491781008800

`C(gcd(4, A159006(n+1)), 4)`
-/

namespace A112416.P6689287491781008800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd 4 (A159006 (n + 1))) 4

end

end A112416.P6689287491781008800

namespace A112416

/-- `C(gcd(4, A159006(n+1)), 4)` -/
def P6689287491781008800.Spec : Prop :=
  ∀ n, (P6689287491781008800.a n : ℤ) = A112416 (n + 1)

end A112416

/-! ## A112416.P6521506361500902903

`A059893(p?[xor(1, n)+1])%2`
-/

namespace A112416.P6521506361500902903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) 2

end

end A112416.P6521506361500902903

namespace A112416

/-- `A059893(p?[xor(1, n)+1])%2` -/
def P6521506361500902903.Spec : Prop :=
  ∀ n, P6521506361500902903.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P10683832938288046106

`(A145342(p?[xor(1, n)])-1)%2`
-/

namespace A112416.P10683832938288046106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145342 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1) 2

end

end A112416.P10683832938288046106

namespace A112416

/-- `(A145342(p?[xor(1, n)])-1)%2` -/
def P10683832938288046106.Spec : Prop :=
  ∀ n, P10683832938288046106.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P3542149466871321927

`and(1, A080950(p?[xor(1, n)+1]))`
-/

namespace A112416.P3542149466871321927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080950 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A112416.P3542149466871321927

namespace A112416

/-- `and(1, A080950(p?[xor(1, n)+1]))` -/
def P3542149466871321927.Spec : Prop :=
  ∀ n, P3542149466871321927.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P9476738233285963301

`and(1, A139708(p?[n-(-1)^n]))`
-/

namespace A112416.P9476738233285963301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A139708 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A112416.P9476738233285963301

namespace A112416

/-- `and(1, A139708(p?[n-(-1)^n]))` -/
def P9476738233285963301.Spec : Prop :=
  ∀ n, P9476738233285963301.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P749624748742211481

`A152111(4*p?[round(8*n/7)])%2`
-/

namespace A112416.P749624748742211481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152111 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 2

end

end A112416.P749624748742211481

namespace A112416

/-- `A152111(4*p?[round(8*n/7)])%2` -/
def P749624748742211481.Spec : Prop :=
  ∀ n, P749624748742211481.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P17853750617908037075

`(A081241(4*p?[round(8*n/7)])+1)%2`
-/

namespace A112416.P17853750617908037075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081241 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1) 2

end

end A112416.P17853750617908037075

namespace A112416

/-- `(A081241(4*p?[round(8*n/7)])+1)%2` -/
def P17853750617908037075.Spec : Prop :=
  ∀ n, P17853750617908037075.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P18301865782257136029

`floor(p?[n%3+n]/A003188(p?[n%3+n]))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112416

/-- `floor(p?[n%3+n]/A003188(p?[n%3+n]))` -/
def P18301865782257136029.Spec : Prop :=
  ∀ n, P18301865782257136029.a n = A112416 (n + 1)

theorem P18301865782257136029.correct : P18301865782257136029.Spec := by
  intro n
  simp only [A112416, Nat.add_sub_cancel]

end A112416

/-! ## A112416.P7581414943952798002

`A079944(A001749(n+1))`
-/

namespace A112416.P7581414943952798002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A001749 (n + 1)).toNat

end

end A112416.P7581414943952798002

namespace A112416

/-- `A079944(A001749(n+1))` -/
def P7581414943952798002.Spec : Prop :=
  ∀ n, P7581414943952798002.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P7239502846960282809

`A079944(A037168(n+1))`
-/

namespace A112416.P7239502846960282809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A037168 (n + 1)).toNat

end

end A112416.P7239502846960282809

namespace A112416

/-- `A079944(A037168(n+1))` -/
def P7239502846960282809.Spec : Prop :=
  ∀ n, P7239502846960282809.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P10525184334434060681

`A021913(A098957(n+1))`
-/

namespace A112416.P10525184334434060681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A098957 (n + 1)).toNat

end

end A112416.P10525184334434060681

namespace A112416

/-- `A021913(A098957(n+1))` -/
def P10525184334434060681.Spec : Prop :=
  ∀ n, P10525184334434060681.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P2711411301258107507

`A079944(A040976(n+1))`
-/

namespace A112416.P2711411301258107507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A040976 (n + 1)).toNat

end

end A112416.P2711411301258107507

namespace A112416

/-- `A079944(A040976(n+1))` -/
def P2711411301258107507.Spec : Prop :=
  ∀ n, P2711411301258107507.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P13468685861813200597

`A079944(A084421(n+1))`
-/

namespace A112416.P13468685861813200597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A084421 (n + 1)).toNat

end

end A112416.P13468685861813200597

namespace A112416

/-- `A079944(A084421(n+1))` -/
def P13468685861813200597.Spec : Prop :=
  ∀ n, P13468685861813200597.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P7429241412498778654

`A014577(A159006(n+1))`
-/

namespace A112416.P7429241412498778654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A159006 (n + 1)).toNat

end

end A112416.P7429241412498778654

namespace A112416

/-- `A014577(A159006(n+1))` -/
def P7429241412498778654.Spec : Prop :=
  ∀ n, P7429241412498778654.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P11255408383122205362

`A080584(A132227(n+1))`
-/

namespace A112416.P11255408383122205362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 (A132227 (n + 1)).toNat

end

end A112416.P11255408383122205362

namespace A112416

/-- `A080584(A132227(n+1))` -/
def P11255408383122205362.Spec : Prop :=
  ∀ n, P11255408383122205362.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P10668216981428452023

`A080584(A330410(n+1))`
-/

namespace A112416.P10668216981428452023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 (A330410 (n + 1)).toNat

end

end A112416.P10668216981428452023

namespace A112416

/-- `A080584(A330410(n+1))` -/
def P10668216981428452023.Spec : Prop :=
  ∀ n, P10668216981428452023.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P3480274672515752417

`A079944(A076274(n+2))`
-/

namespace A112416.P3480274672515752417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A076274 (n + 2)).toNat

end

end A112416.P3480274672515752417

namespace A112416

/-- `A079944(A076274(n+2))` -/
def P3480274672515752417.Spec : Prop :=
  ∀ n, P3480274672515752417.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P11950617546553532101

`A191232(A328659(n)+2)`
-/

namespace A112416.P11950617546553532101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191232 (A328659 n + 2).toNat

end

end A112416.P11950617546553532101

namespace A112416

/-- `A191232(A328659(n)+2)` -/
def P11950617546553532101.Spec : Prop :=
  ∀ n, P11950617546553532101.a n = A112416 (n + 1)

end A112416

/-! ## A112416.P17908952332036873447

`A079944(A000040(n+1)-2)`
-/

namespace A112416.P17908952332036873447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A000040 (n + 1) - 2).toNat

end

end A112416.P17908952332036873447

namespace A112416

/-- `A079944(A000040(n+1)-2)` -/
def P17908952332036873447.Spec : Prop :=
  ∀ n, P17908952332036873447.a n = A112416 (n + 1)

end A112416

/-!
# A112418: Primes which have a prime number of partitions into five distinct primes.

The programs for A112418, there is no canonical definition to state claims against.
-/

/-! ## A112418.P4741512501745483923

`A268913(A056599(n))`
-/

namespace A112418.P4741512501745483923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268913 (A056599 n).toNat

end

end A112418.P4741512501745483923

/-! ## A112418.P6530676319796104380

`p?[A020914(eq[2, A024942(n)])]`
-/

namespace A112418.P6530676319796104380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112418.P6530676319796104380

/-!
# A112419: Prime Friedman numbers.

The programs for A112419, there is no canonical definition to state claims against.
-/

/-! ## A112419.P5234362798032052508

`p?[A036057(n+1)]`
-/

namespace A112419.P5234362798032052508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112419.P5234362798032052508

/-! ## A112419.P835669911424712120

`record[p?[A036057(A324347(n))]]`
-/

namespace A112419.P835669911424712120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036057 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112419.P835669911424712120

/-! ## A112419.P11584691160860178437

`record[p?[A036057(A328399(n))]]`
-/

namespace A112419.P11584691160860178437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036057 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112419.P11584691160860178437

/-! ## A112419.P10484189213374318080

`record[A020639(A036057(n+5))]`
-/

namespace A112419.P10484189213374318080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036057 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112419.P10484189213374318080

/-! ## A112419.P12107417610319055867

`p?[A000034(n)*A036057(A328399(n))]`
-/

namespace A112419.P12107417610319055867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A036057 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112419.P12107417610319055867

/-!
# A112421: Number of 6 element subsets of {1,2,3,...,n} for which the sum-set has 12 elements.

The programs for A112421, the canonical program `A112421.P4497010926741414567` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112421 has offset 7).

The definition of A112421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112421.P4497010926741414567

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8, a(4)=10, a(5)=12, a(6)=16, a(7)=20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112421

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P4497010926741414567.Spec : Prop :=
  ∀ n, P4497010926741414567.a n = A112421 (n + 7)

theorem P4497010926741414567.correct : P4497010926741414567.Spec := by
  intro n
  simp only [A112421, Nat.add_sub_cancel]

end A112421

/-! ## A112421.P14180507938015546277

`2*A008724(n+4)`
-/

namespace A112421.P14180507938015546277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008724 (n + 4)

end

end A112421.P14180507938015546277

namespace A112421

/-- `2*A008724(n+4)` -/
def P14180507938015546277.Spec : Prop :=
  ∀ n, P14180507938015546277.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P6166163369477958705

`∑[∑[2*char[6*n]]]`
-/

namespace A112421.P6166163369477958705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112421.P6166163369477958705

namespace A112421

/-- `∑[∑[2*char[6*n]]]` -/
def P6166163369477958705.Spec : Prop :=
  ∀ n, (P6166163369477958705.a n : ℤ) = A112421 (n + 7)

end A112421

/-! ## A112421.P2675405125869174002

`lcm(2, ∑[2*(floor(n/6)+1)])`
-/

namespace A112421.P2675405125869174002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(n : ℚ) / 6⌋ + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112421.P2675405125869174002

namespace A112421

/-- `lcm(2, ∑[2*(floor(n/6)+1)])` -/
def P2675405125869174002.Spec : Prop :=
  ∀ n, (P2675405125869174002.a n : ℤ) = A112421 (n + 7)

end A112421

/-! ## A112421.P533339805209447026

`∑[or(1, floor(n/3))]+1+n`
-/

namespace A112421.P533339805209447026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A112421.P533339805209447026

namespace A112421

/-- `∑[or(1, floor(n/3))]+1+n` -/
def P533339805209447026.Spec : Prop :=
  ∀ n, P533339805209447026.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P13741155114950797787

`∑[or(1, floor(n/3))]-xor(n, -1)`
-/

namespace A112421.P13741155114950797787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A112421.P13741155114950797787

namespace A112421

/-- `∑[or(1, floor(n/3))]-xor(n, -1)` -/
def P13741155114950797787.Spec : Prop :=
  ∀ n, P13741155114950797787.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P3264083434621156067

`2*∑[A097992(n)]`
-/

namespace A112421.P3264083434621156067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112421.P3264083434621156067

namespace A112421

/-- `2*∑[A097992(n)]` -/
def P3264083434621156067.Spec : Prop :=
  ∀ n, P3264083434621156067.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P12626706346845773180

`A008813(n)+1+n`
-/

namespace A112421.P12626706346845773180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008813 n + 1 + (n : ℤ)

end

end A112421.P12626706346845773180

namespace A112421

/-- `A008813(n)+1+n` -/
def P12626706346845773180.Spec : Prop :=
  ∀ n, P12626706346845773180.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P10006998479177474925

`2*(A275673(n+2)-1)`
-/

namespace A112421.P10006998479177474925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275673 (n + 2) - 1)

end

end A112421.P10006998479177474925

namespace A112421

/-- `2*(A275673(n+2)-1)` -/
def P10006998479177474925.Spec : Prop :=
  ∀ n, P10006998479177474925.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P17743396045842194995

`2*(A174709(n)+n+1)`
-/

namespace A112421.P17743396045842194995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A174709 n + (n + 1 : ℤ))

end

end A112421.P17743396045842194995

namespace A112421

/-- `2*(A174709(n)+n+1)` -/
def P17743396045842194995.Spec : Prop :=
  ∀ n, P17743396045842194995.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P17773643979938287325

`A005408(n)-(n-A008813(n))`
-/

namespace A112421.P17773643979938287325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A008813 n)

end

end A112421.P17773643979938287325

namespace A112421

/-- `A005408(n)-(n-A008813(n))` -/
def P17773643979938287325.Spec : Prop :=
  ∀ n, P17773643979938287325.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P7066260978291210825

`A002378(n+1)-A033438(n+1)-A033438(n+1)`
-/

namespace A112421.P7066260978291210825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - A033438 (n + 1) - A033438 (n + 1)

end

end A112421.P7066260978291210825

namespace A112421

/-- `A002378(n+1)-A033438(n+1)-A033438(n+1)` -/
def P7066260978291210825.Spec : Prop :=
  ∀ n, P7066260978291210825.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P376721918870278811

`Δ[2*A175724(n+3)]`
-/

namespace A112421.P376721918870278811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175724 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112421.P376721918870278811

namespace A112421

/-- `Δ[2*A175724(n+3)]` -/
def P376721918870278811.Spec : Prop :=
  ∀ n, P376721918870278811.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P18365095058777828766

`2*A174709(n+6)`
-/

namespace A112421.P18365095058777828766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174709 (n + 6)

end

end A112421.P18365095058777828766

namespace A112421

/-- `2*A174709(n+6)` -/
def P18365095058777828766.Spec : Prop :=
  ∀ n, P18365095058777828766.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P4165092924330694911

`record[2*A008735(n)]`
-/

namespace A112421.P4165092924330694911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112421.P4165092924330694911

namespace A112421

/-- `record[2*A008735(n)]` -/
def P4165092924330694911.Spec : Prop :=
  ∀ n, P4165092924330694911.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P16211055815908938323

`2*A008735(2*n)`
-/

namespace A112421.P16211055815908938323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008735 (2 * n)

end

end A112421.P16211055815908938323

namespace A112421

/-- `2*A008735(2*n)` -/
def P16211055815908938323.Spec : Prop :=
  ∀ n, P16211055815908938323.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P7256298558152220687

`A008730(Δ[n²])`
-/

namespace A112421.P7256298558152220687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112421.P7256298558152220687

namespace A112421

/-- `A008730(Δ[n²])` -/
def P7256298558152220687.Spec : Prop :=
  ∀ n, P7256298558152220687.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P8463744104618257425

`record[A008820(n)+1]+n`
-/

namespace A112421.P8463744104618257425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A112421.P8463744104618257425

namespace A112421

/-- `record[A008820(n)+1]+n` -/
def P8463744104618257425.Spec : Prop :=
  ∀ n, P8463744104618257425.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P10265203420287177971

`A008820(2*n)+1+n`
-/

namespace A112421.P10265203420287177971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 (2 * n) + 1 + (n : ℤ)

end

end A112421.P10265203420287177971

namespace A112421

/-- `A008820(2*n)+1+n` -/
def P10265203420287177971.Spec : Prop :=
  ∀ n, P10265203420287177971.a n = A112421 (n + 7)

end A112421

/-! ## A112421.P17392312204016862758

`A221912(2*n+1)+A005843(n+1)`
-/

namespace A112421.P17392312204016862758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221912 (2 * n + 1) + A005843 (n + 1)

end

end A112421.P17392312204016862758

namespace A112421

/-- `A221912(2*n+1)+A005843(n+1)` -/
def P17392312204016862758.Spec : Prop :=
  ∀ n, P17392312204016862758.a n = A112421 (n + 7)

end A112421

/-!
# A112422: Number of 6-element subsets of {1,2,3,...,n} for which the sum-set has 13 elements.

The programs for A112422, there is no canonical definition to state claims against.
-/

/-! ## A112422.P1626198278513895138

`∑[∑[A309339(A309373(3*n+5))]]`
-/

namespace A112422.P1626198278513895138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309339 (A309373 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112422.P1626198278513895138

/-!
# A112423: Number of 6-element subsets of {1,2,3,...,n} which have a sum-set with 14 elements.

The programs for A112423, there is no canonical definition to state claims against.
-/

/-! ## A112423.P6784639312880886278

`6*(A037825(A149141(n))+A016777(n))`
-/

namespace A112423.P6784639312880886278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A037825 (A149141 n).toNat + A016777 n)

end

end A112423.P6784639312880886278

/-! ## A112423.P9860969457997017582

`A156828(3*n+2)-A008836(A296418(n+1))`
-/

namespace A112423.P9860969457997017582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156828 (3 * n + 2) - A008836 (A296418 (n + 1)).toNat

end

end A112423.P9860969457997017582

/-! ## A112423.P8376340509521388020

`A171095(A316650(n+1))*A171829(3*n+2)`
-/

namespace A112423.P8376340509521388020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171095 (A316650 (n + 1)).toNat * A171829 (3 * n + 2)

end

end A112423.P8376340509521388020

/-! ## A112423.P1412011232743834774

`A008588(A171829(3*n+2)^A046534(n+1))`
-/

namespace A112423.P1412011232743834774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (SequenceMachineLib.roundAway ((A171829 (3 * n + 2) : ℚ) ^ (A046534 (n + 1) : ℤ))).toNat

end

end A112423.P1412011232743834774

/-!
# A112424: Number of connected simple graphs with n vertices, n+4 edges, and vertex degrees no more than 4.

The programs for A112424, there is no canonical definition to state claims against.
-/

/-! ## A112424.P9323465318325709556

`∑[∑[A064458(A002467(n))]]`
-/

namespace A112424.P9323465318325709556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A002467 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112424.P9323465318325709556

/-! ## A112424.P13092678784859777875

`round(A096310(n)/A096312(2*(n+1)))`
-/

namespace A112424.P13092678784859777875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A096310 n : ℚ) / (A096312 (2 * (n + 1)) : ℚ))

end

end A112424.P13092678784859777875

/-! ## A112424.P4794188349219048987

`xor(A001522(n), A034887(A117643(n)))`
-/

namespace A112424.P4794188349219048987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001522 n) (A034887 (A117643 n).toNat)

end

end A112424.P4794188349219048987

/-!
# A112425: Number of connected simple graphs with n vertices, n+5 edges, and vertex degrees no more than 4.

The programs for A112425, there is no canonical definition to state claims against.
-/

/-! ## A112425.P12732153122378852958

`A008612(A228422(n)+A062495(n))`
-/

namespace A112425.P12732153122378852958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A228422 n + A062495 n).toNat

end

end A112425.P12732153122378852958

/-! ## A112425.P8622484798865396001

`A105513(A000105(n)*A063019(n))`
-/

namespace A112425.P8622484798865396001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105513 (A000105 n * A063019 n).toNat

end

end A112425.P8622484798865396001

/-! ## A112425.P341368725835196336

`A003471(n)%A025453(A052961(n))`
-/

namespace A112425.P341368725835196336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003471 n) (A025453 (A052961 n).toNat)

end

end A112425.P341368725835196336

/-! ## A112425.P2635691053280683501

`A056246(A005347(n))%A243049(n+1)`
-/

namespace A112425.P2635691053280683501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056246 (A005347 n).toNat) (A243049 (n + 1))

end

end A112425.P2635691053280683501

/-!
# A112426: Number of connected simple graphs with n vertices, n+6 edges, and vertex degrees no more than 4.

The programs for A112426, there is no canonical definition to state claims against.
-/

/-! ## A112426.P13675003329119410455

`round(A062578(n+1)/521)`
-/

namespace A112426.P13675003329119410455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062578 (n + 1) : ℚ) / 521)

end

end A112426.P13675003329119410455

/-! ## A112426.P1525796864772538904

`A241512(A090345(n))`
-/

namespace A112426.P1525796864772538904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 (A090345 n).toNat

end

end A112426.P1525796864772538904

/-! ## A112426.P1020553990129334094

`A241036(A356846(n))`
-/

namespace A112426.P1020553990129334094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 (A356846 n).toNat

end

end A112426.P1020553990129334094

/-! ## A112426.P15917549643519581909

`A241036(A047775(n+1))`
-/

namespace A112426.P15917549643519581909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241036 (A047775 (n + 1)).toNat

end

end A112426.P15917549643519581909

/-!
# A112428: Carmichael numbers equal to the product of 5 primes.

The programs for A112428, there is no canonical definition to state claims against.
-/

/-! ## A112428.P5521067193375981441

`A002997(eq[5, A135717(n+1)]+1)`
-/

namespace A112428.P5521067193375981441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112428.P5521067193375981441

/-! ## A112428.P11769774975290448424

`∩[A002997(n+1), A112443(n+1)]`
-/

namespace A112428.P11769774975290448424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112428.P11769774975290448424

/-! ## A112428.P17691634118875679731

`∩[A112443(n+1), A141711(n+1)]`
-/

namespace A112428.P17691634118875679731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112428.P17691634118875679731

/-! ## A112428.P16027120174192783693

`∩[A112443(n+1), A355039(n+1)]`
-/

namespace A112428.P16027120174192783693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112428.P16027120174192783693

/-! ## A112428.P2985204511898552833

`∩[A081703(n+1)*A141710(n+1), A112443(n+1)]`
-/

namespace A112428.P2985204511898552833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112428.P2985204511898552833

/-!
# A112429: Carmichael numbers equal to the product of 6 primes.

The programs for A112429, there is no canonical definition to state claims against.
-/

/-! ## A112429.P8807510470898480100

`∩[A112444(n+1), A002997(A224983(n+1))]`
-/

namespace A112429.P8807510470898480100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (A224983 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112429.P8807510470898480100

/-!
# A112433: Next term is the sum of the last 10 digits in the sequence, beginning with a(10) = 2.

The programs for A112433, there is no canonical definition to state claims against.
-/

/-! ## A112433.P401813086436189106

`A062028(A112395(n+1))^A014963(A301065(n))`
-/

namespace A112433.P401813086436189106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062028 (A112395 (n + 1)).toNat : ℚ) ^ (A014963 (A301065 n).toNat : ℤ)

end

end A112433.P401813086436189106

/-!
# A112438: Next term is the sum of the last 10 digits in the sequence, beginning with a(10) = 7.

The programs for A112438, there is no canonical definition to state claims against.
-/

/-! ## A112438.P16579164553697602145

`A112437(n+1)+A112395(A161953(n+1))`
-/

namespace A112438.P16579164553697602145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112437 (n + 1) + A112395 (A161953 (n + 1)).toNat

end

end A112438.P16579164553697602145

/-! ## A112438.P17692766330598078543

`A112436(n+1)+A112433(A161953(n+1))`
-/

namespace A112438.P17692766330598078543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112436 (n + 1) + A112433 (A161953 (n + 1)).toNat

end

end A112438.P17692766330598078543

/-! ## A112438.P2938742402727063262

`A112437(n+1)+A112395(A187829(n+1))`
-/

namespace A112438.P2938742402727063262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112437 (n + 1) + A112395 (A187829 (n + 1)).toNat

end

end A112438.P2938742402727063262

/-! ## A112438.P8454661831660206798

`A112436(n+1)+A112433(A187829(n+1))`
-/

namespace A112438.P8454661831660206798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112436 (n + 1) + A112433 (A187829 (n + 1)).toNat

end

end A112438.P8454661831660206798

/-!
# A112440: Next term is the sum of the last 10 digits in the sequence, beginning with a(10) = 9.

The programs for A112440, there is no canonical definition to state claims against.
-/

/-! ## A112440.P5806264318371708096

`Δ[A108782(A020753(n+1))]*A280913(n)`
-/

namespace A112440.P5806264318371708096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A020753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A280913 n

end

end A112440.P5806264318371708096

/-! ## A112440.P13801565503477434292

`A066568(lt[A309589(n), 9])`
-/

namespace A112440.P13801565503477434292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A112440.P13801565503477434292

/-! ## A112440.P3427386944323258177

`∑[dr(A056965(A036653(n)))]`
-/

namespace A112440.P3427386944323258177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A056965 (A036653 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112440.P3427386944323258177

/-! ## A112440.P14592402518091047883

`record[A334387(n+1)]-A004185(n+1)`
-/

namespace A112440.P14592402518091047883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004185 (n + 1)

end

end A112440.P14592402518091047883

/-! ## A112440.P8960380232259862558

`A066568(A080131(n+1)+A002113(n+1))`
-/

namespace A112440.P8960380232259862558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A080131 (n + 1) + A002113 (n + 1)).toNat

end

end A112440.P8960380232259862558

/-!
# A112441: Pseudoprimes (base-2) equal to product of 4 primes not necessarily distinct.

The programs for A112441, there is no canonical definition to state claims against.
-/

/-! ## A112441.P5176350987712750320

`filter[A080747(n+1), A356163(#)]`
-/

namespace A112441.P5176350987712750320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A112441.P5176350987712750320

/-! ## A112441.P4549082624111579497

`filter[A080747(n+1), A358680(#)]`
-/

namespace A112441.P4549082624111579497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A112441.P4549082624111579497

/-! ## A112441.P18141620842917473022

`filter[A080747(n+1), A359156(#)]`
-/

namespace A112441.P18141620842917473022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A112441.P18141620842917473022

/-! ## A112441.P2896150268174883668

`filter[A080747(n+1), A359160(#)]`
-/

namespace A112441.P2896150268174883668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359160 (f1 j).toNat = 1) n)

end

end A112441.P2896150268174883668

/-! ## A112441.P1881715360163507371

`filter[A080747(n+1), A359370(#)]`
-/

namespace A112441.P1881715360163507371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A112441.P1881715360163507371

/-!
# A112447: a(2*n) = A001045(n+2); a(2*n+1) = A001045(n+1).

The programs for A112447, the canonical program `A112447.P11597627799343145478` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112447 has offset 0).

The definition of A112447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112447.P11597627799343145478

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112447

/-- `a(n-2)+2*a(n-4)` -/
def P11597627799343145478.Spec : Prop :=
  ∀ n, (P11597627799343145478.a n : ℤ) = A112447 n

theorem P11597627799343145478.correct : P11597627799343145478.Spec := by
  intro n
  simp only [A112447]

end A112447

/-! ## A112447.P3922743457522419806

`ogf((1+x+2x^2)/(1-x^2-2x^4))`
-/

namespace A112447.P3922743457522419806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 0, -1, 0, -2] n

end

end A112447.P3922743457522419806

namespace A112447

/-- `ogf((1+x+2x^2)/(1-x^2-2x^4))` -/
def P3922743457522419806.Spec : Prop :=
  ∀ n, P3922743457522419806.a n = A112447 n

end A112447

/-! ## A112447.P1599641494600649092

`2*a(n-2)-(-1)^∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A112447.P1599641494600649092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112447.P1599641494600649092

namespace A112447

/-- `2*a(n-2)-(-1)^∑[n]` -/
def P1599641494600649092.Spec : Prop :=
  ∀ n, P1599641494600649092.a n = A112447 n

end A112447

/-! ## A112447.P18418486314209987891

`a(n-2)+a(n-2)-(-1)^∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A112447.P18418486314209987891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112447.P18418486314209987891

namespace A112447

/-- `a(n-2)+a(n-2)-(-1)^∑[n]` -/
def P18418486314209987891.Spec : Prop :=
  ∀ n, P18418486314209987891.a n = A112447 n

end A112447

/-! ## A112447.P14948232563373624603

`a(n-2)-((-1)^∑[n]-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A112447.P14948232563373624603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 2))

end

end A112447.P14948232563373624603

namespace A112447

/-- `a(n-2)-((-1)^∑[n]-a(n-2))` -/
def P14948232563373624603.Spec : Prop :=
  ∀ n, P14948232563373624603.a n = A112447 n

end A112447

/-! ## A112447.P18446029461071549416

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A112447.P18446029461071549416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 1] fun n a =>
  a (n - 4) + a (n - 2) + a (n - 4)

end

end A112447.P18446029461071549416

namespace A112447

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P18446029461071549416.Spec : Prop :=
  ∀ n, (P18446029461071549416.a n : ℤ) = A112447 n

end A112447

/-! ## A112447.P8250115705052668860

`abs(Δ[A112387(n+1)])`
-/

namespace A112447.P8250115705052668860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A112447.P8250115705052668860

namespace A112447

/-- `abs(Δ[A112387(n+1)])` -/
def P8250115705052668860.Spec : Prop :=
  ∀ n, P8250115705052668860.a n = A112447 n

end A112447

/-! ## A112447.P2510128694807339527

`A135530(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112447.P2510128694807339527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135530 n - a (n - 2)

end

end A112447.P2510128694807339527

namespace A112447

/-- `A135530(n)-a(n-2)` -/
def P2510128694807339527.Spec : Prop :=
  ∀ n, P2510128694807339527.a n = A112447 n

end A112447

/-! ## A112447.P8390151199299185864

`or(1, A000975(round(xor(1, n)/2)))`
-/

namespace A112447.P8390151199299185864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000975 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat)

end

end A112447.P8390151199299185864

namespace A112447

/-- `or(1, A000975(round(xor(1, n)/2)))` -/
def P8390151199299185864.Spec : Prop :=
  ∀ n, P8390151199299185864.a n = A112447 n

end A112447

/-! ## A112447.P10555015770511732973

`A001045(A028242(n)+1)`
-/

namespace A112447.P10555015770511732973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A028242 n + 1).toNat

end

end A112447.P10555015770511732973

namespace A112447

/-- `A001045(A028242(n)+1)` -/
def P10555015770511732973.Spec : Prop :=
  ∀ n, P10555015770511732973.a n = A112447 n

end A112447

/-! ## A112447.P11811694515362747780

`A001045(A030451(n+1))`
-/

namespace A112447.P11811694515362747780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A030451 (n + 1)).toNat

end

end A112447.P11811694515362747780

namespace A112447

/-- `A001045(A030451(n+1))` -/
def P11811694515362747780.Spec : Prop :=
  ∀ n, P11811694515362747780.a n = A112447 n

end A112447

/-! ## A112447.P8673717654616581740

`A167167(A028242(n)+1)`
-/

namespace A112447.P8673717654616581740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (A028242 n + 1).toNat

end

end A112447.P8673717654616581740

namespace A112447

/-- `A167167(A028242(n)+1)` -/
def P8673717654616581740.Spec : Prop :=
  ∀ n, P8673717654616581740.a n = A112447 n

end A112447

/-! ## A112447.P4739250121453886051

`A135318(A168232(n+1))`
-/

namespace A112447.P4739250121453886051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A168232 (n + 1)).toNat

end

end A112447.P4739250121453886051

namespace A112447

/-- `A135318(A168232(n+1))` -/
def P4739250121453886051.Spec : Prop :=
  ∀ n, P4739250121453886051.a n = A112447 n

end A112447

/-! ## A112447.P4136067117025141152

`A001045(∑[A280193(n)]+1)`
-/

namespace A112447.P4136067117025141152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A112447.P4136067117025141152

namespace A112447

/-- `A001045(∑[A280193(n)]+1)` -/
def P4136067117025141152.Spec : Prop :=
  ∀ n, P4136067117025141152.a n = A112447 n

end A112447

/-! ## A112447.P15326319947942955775

`A167167(∑[A280193(n)]+1)`
-/

namespace A112447.P15326319947942955775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A112447.P15326319947942955775

namespace A112447

/-- `A167167(∑[A280193(n)]+1)` -/
def P15326319947942955775.Spec : Prop :=
  ∀ n, P15326319947942955775.a n = A112447 n

end A112447

/-! ## A112447.P6335843735193623564

`A001045(A110657(2*(n+1)))`
-/

namespace A112447.P6335843735193623564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A110657 (2 * (n + 1))).toNat

end

end A112447.P6335843735193623564

namespace A112447

/-- `A001045(A110657(2*(n+1)))` -/
def P6335843735193623564.Spec : Prop :=
  ∀ n, P6335843735193623564.a n = A112447 n

end A112447

/-! ## A112447.P2162760895542943744

`A001045(A110659(2*n)+1)`
-/

namespace A112447.P2162760895542943744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A110659 (2 * n) + 1).toNat

end

end A112447.P2162760895542943744

namespace A112447

/-- `A001045(A110659(2*n)+1)` -/
def P2162760895542943744.Spec : Prop :=
  ∀ n, P2162760895542943744.a n = A112447 n

end A112447

/-! ## A112447.P217596523186791169

`A001045(2-(A030451(n)-n))`
-/

namespace A112447.P217596523186791169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 - (A030451 n - (n : ℤ))).toNat

end

end A112447.P217596523186791169

namespace A112447

/-- `A001045(2-(A030451(n)-n))` -/
def P217596523186791169.Spec : Prop :=
  ∀ n, P217596523186791169.a n = A112447 n

end A112447

/-! ## A112447.P5785092314013200754

`A001045((A040005(n)+n)/2)`
-/

namespace A112447.P5785092314013200754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.roundAway ((A040005 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A112447.P5785092314013200754

namespace A112447

/-- `A001045((A040005(n)+n)/2)` -/
def P5785092314013200754.Spec : Prop :=
  ∀ n, P5785092314013200754.a n = A112447 n

end A112447

/-!
# A112448: a(n) = (-1)^binomial(n+2,2) if 2*n+1 is prime, otherwise 0.

The programs for A112448, the canonical program `A112448.P748155157720145924` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112448 has offset 0).

The definition of A112448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112448.P14686051055852963482

`-((1-and(2, n))*char[floor(p?[2*n+1]/2)])`
-/

namespace A112448.P14686051055852963482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - (Nat.land 2 n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A112448.P14686051055852963482

namespace A112448

/-- `-((1-and(2, n))*char[floor(p?[2*n+1]/2)])` -/
def P14686051055852963482.Spec : Prop :=
  ∀ n, P14686051055852963482.a n = A112448 n

end A112448

/-! ## A112448.P1602141827154571564

`(-∑{p}[2*n+1, floor(#/(n+1))])^∑[n+1]`
-/

namespace A112448.P1602141827154571564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋)) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A112448.P1602141827154571564

namespace A112448

/-- `(-∑{p}[2*n+1, floor(#/(n+1))])^∑[n+1]` -/
def P1602141827154571564.Spec : Prop :=
  ∀ n, P1602141827154571564.a n = A112448 n

end A112448

/-! ## A112448.P748155157720145924

`-((1-and(2, n))*∑{p}[2*n+1, floor(#/(n+1))])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112448

/-- `-((1-and(2, n))*∑{p}[2*n+1, floor(#/(n+1))])` -/
def P748155157720145924.Spec : Prop :=
  ∀ n, P748155157720145924.a n = A112448 n

theorem P748155157720145924.correct : P748155157720145924.Spec := by
  intro n
  simp only [A112448]

end A112448

/-! ## A112448.P10793834690483297193

`-(-∑{p}[2*n+1, floor(#/(n+1))])^ceil(abs((1-n)/2))`
-/

namespace A112448.P10793834690483297193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((-(∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋) : ℤ) : ℚ) ^ (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ : ℤ))

end

end A112448.P10793834690483297193

namespace A112448

/-- `-(-∑{p}[2*n+1, floor(#/(n+1))])^ceil(abs((1-n)/2))` -/
def P10793834690483297193.Spec : Prop :=
  ∀ n, P10793834690483297193.a n = (A112448 n : ℚ)

end A112448

/-! ## A112448.P4581578037318068304

`-((1-and(2, n))*A101264(n))`
-/

namespace A112448.P4581578037318068304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - (Nat.land 2 n : ℤ)) * A101264 n)

end

end A112448.P4581578037318068304

namespace A112448

/-- `-((1-and(2, n))*A101264(n))` -/
def P4581578037318068304.Spec : Prop :=
  ∀ n, P4581578037318068304.a n = A112448 n

end A112448

/-! ## A112448.P12238307302819672507

`(and(2, n)-1)*char[A005097(n+1)]`
-/

namespace A112448.P12238307302819672507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 n : ℤ) - 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A112448.P12238307302819672507

namespace A112448

/-- `(and(2, n)-1)*char[A005097(n+1)]` -/
def P12238307302819672507.Spec : Prop :=
  ∀ n, P12238307302819672507.a n = A112448 n

end A112448

/-! ## A112448.P17713058597453584974

`(and(2, n)-1)*A010051(2*n+1)`
-/

namespace A112448.P17713058597453584974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 n : ℤ) - 1) * A010051 (2 * n + 1)

end

end A112448.P17713058597453584974

namespace A112448

/-- `(and(2, n)-1)*A010051(2*n+1)` -/
def P17713058597453584974.Spec : Prop :=
  ∀ n, P17713058597453584974.a n = A112448 n

end A112448

/-! ## A112448.P10120027405026835125

`(1-or(2, n)+n)*A010051(Δ[n²])`
-/

namespace A112448.P10120027405026835125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lor 2 n : ℤ) + (n : ℤ)) * A010051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112448.P10120027405026835125

namespace A112448

/-- `(1-or(2, n)+n)*A010051(Δ[n²])` -/
def P10120027405026835125.Spec : Prop :=
  ∀ n, P10120027405026835125.a n = A112448 n

end A112448

/-! ## A112448.P13773024846050445658

`(A005171(2*n+1)-1)^∑[n+1]`
-/

namespace A112448.P13773024846050445658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005171 (2 * n + 1) - 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112448.P13773024846050445658

namespace A112448

/-- `(A005171(2*n+1)-1)^∑[n+1]` -/
def P13773024846050445658.Spec : Prop :=
  ∀ n, P13773024846050445658.a n = A112448 n

end A112448

/-! ## A112448.P5881289196472692756

`(-1)^∑[n+1]*A010051(n+1+n)`
-/

namespace A112448.P5881289196472692756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A010051 (n + 1 + n)

end

end A112448.P5881289196472692756

namespace A112448

/-- `(-1)^∑[n+1]*A010051(n+1+n)` -/
def P5881289196472692756.Spec : Prop :=
  ∀ n, P5881289196472692756.a n = A112448 n

end A112448

/-! ## A112448.P4617266590356071196

`(-1)^∑[n+1]*char[floor(A000040(n+2)/2)]`
-/

namespace A112448.P4617266590356071196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A112448.P4617266590356071196

namespace A112448

/-- `(-1)^∑[n+1]*char[floor(A000040(n+2)/2)]` -/
def P4617266590356071196.Spec : Prop :=
  ∀ n, P4617266590356071196.a n = A112448 n

end A112448

/-! ## A112448.P3098953297431095850

`A008683(-or(n, -3))*A101264(n)`
-/

namespace A112448.P3098953297431095850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.lor (n : ℤ) (-3)).toNat * A101264 n

end

end A112448.P3098953297431095850

namespace A112448

/-- `A008683(-or(n, -3))*A101264(n)` -/
def P3098953297431095850.Spec : Prop :=
  ∀ n, P3098953297431095850.a n = A112448 n

end A112448

/-! ## A112448.P6040519103526539980

`A097807(∑[A056594(n)])*A101264(n)`
-/

namespace A112448.P6040519103526539980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A101264 n

end

end A112448.P6040519103526539980

namespace A112448

/-- `A097807(∑[A056594(n)])*A101264(n)` -/
def P6040519103526539980.Spec : Prop :=
  ∀ n, P6040519103526539980.a n = A112448 n

end A112448

/-! ## A112448.P11955486585822734990

`A056594(A109613(n)+A101264(n))`
-/

namespace A112448.P11955486585822734990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A109613 n + A101264 n).toNat

end

end A112448.P11955486585822734990

namespace A112448

/-- `A056594(A109613(n)+A101264(n))` -/
def P11955486585822734990.Spec : Prop :=
  ∀ n, P11955486585822734990.a n = A112448 n

end A112448

/-! ## A112448.P10808599838622852443

`(-A061007(2*n+1))^∑[n+1]`
-/

namespace A112448.P10808599838622852443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A061007 (2 * n + 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112448.P10808599838622852443

namespace A112448

/-- `(-A061007(2*n+1))^∑[n+1]` -/
def P10808599838622852443.Spec : Prop :=
  ∀ n, P10808599838622852443.a n = A112448 n

end A112448

/-! ## A112448.P8222179215928962676

`-A188510(A061397(Δ[n²]))`
-/

namespace A112448.P8222179215928962676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188510 (A061397 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A112448.P8222179215928962676

namespace A112448

/-- `-A188510(A061397(Δ[n²]))` -/
def P8222179215928962676.Spec : Prop :=
  ∀ n, P8222179215928962676.a n = A112448 n

end A112448

/-! ## A112448.P3537078041778566997

`A118828(A118136(2*n)+1)`
-/

namespace A112448.P3537078041778566997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (A118136 (2 * n) + 1).toNat

end

end A112448.P3537078041778566997

namespace A112448

/-- `A118828(A118136(2*n)+1)` -/
def P3537078041778566997.Spec : Prop :=
  ∀ n, P3537078041778566997.a n = A112448 n

end A112448

/-! ## A112448.P3602008414488996740

`A118828(∑{d}[A118136(2*n), #])`
-/

namespace A112448.P3602008414488996740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118136 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118828 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A112448.P3602008414488996740

namespace A112448

/-- `A118828(∑{d}[A118136(2*n), #])` -/
def P3602008414488996740.Spec : Prop :=
  ∀ n, P3602008414488996740.a n = A112448 n

end A112448

/-! ## A112448.P12648322076953899911

`A188510(2*n)-A188510(A118136(2*n))`
-/

namespace A112448.P12648322076953899911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) - A188510 (A118136 (2 * n)).toNat

end

end A112448.P12648322076953899911

namespace A112448

/-- `A188510(2*n)-A188510(A118136(2*n))` -/
def P12648322076953899911.Spec : Prop :=
  ∀ n, P12648322076953899911.a n = A112448 n

end A112448

/-! ## A112448.P1131186227848841229

`A188510(2*n)-A188510(A061397(2*n+1))`
-/

namespace A112448.P1131186227848841229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) - A188510 (A061397 (2 * n + 1)).toNat

end

end A112448.P1131186227848841229

namespace A112448

/-- `A188510(2*n)-A188510(A061397(2*n+1))` -/
def P1131186227848841229.Spec : Prop :=
  ∀ n, P1131186227848841229.a n = A112448 n

end A112448

/-!
# A112449: a(n+2) = (a(n+1)^3 + a(n+1))/a(n) with a(0)=1, a(1)=1.

The programs for A112449, there is no canonical definition to state claims against.
-/

/-! ## A112449.P8074250752865535587

`(a(n-1)+a(n-1)^3)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112449.P8074250752865535587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) + a (n - 1) ^ 3) / a (n - 2)

end

end A112449.P8074250752865535587

/-! ## A112449.P9028857002442656393

`(a(n-1)²+1)*a(n-1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112449.P9028857002442656393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 2 + 1) * (a (n - 1) / a (n - 2))

end

end A112449.P9028857002442656393

/-! ## A112449.P17599418328953894804

`(a(n-1)*a(n-1)+1)*a(n-1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A112449.P17599418328953894804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) * a (n - 1) + 1) * (a (n - 1) / a (n - 2))

end

end A112449.P17599418328953894804

/-! ## A112449.P18131457380641183554

`A208209(n+1)*A208209(n)`
-/

namespace A112449.P18131457380641183554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208209 (n + 1) * A208209 n

end

end A112449.P18131457380641183554

/-!
# A112450: Strong pseudoprimes (base-2) equal to product of 3 primes not necessarily distinct.

The programs for A112450, there is no canonical definition to state claims against.
-/

/-! ## A112450.P2553109244260663045

`∩[A020258(n+1), A215672(n+1)]`
-/

namespace A112450.P2553109244260663045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112450.P2553109244260663045

/-! ## A112450.P6820039689348982700

`A000027(∩[A001262(n+1), A080747(n+1)])`
-/

namespace A112450.P6820039689348982700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A112450.P6820039689348982700

/-! ## A112450.P2385068104710304998

`A000027(∩[A020234(n+1), A080747(n+1)])`
-/

namespace A112450.P2385068104710304998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A112450.P2385068104710304998

/-!
# A112451: Strong pseudoprimes (base-2) equal to product of 4 primes not necessarily distinct.

The programs for A112451, there is no canonical definition to state claims against.
-/

/-! ## A112451.P1450009920621694184

`∩[A001262(n+1), A112441(n+1)]`
-/

namespace A112451.P1450009920621694184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112451.P1450009920621694184

/-!
# A112454: Lexicographically maximal solution of any 9 X 9 sudoku, read by rows.

The programs for A112454, there is no canonical definition to state claims against.
-/

/-! ## A112454.P13675334171074311040

`10-A114288(n+1)`
-/

namespace A112454.P13675334171074311040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A114288 (n + 1)

end

end A112454.P13675334171074311040

/-! ## A112454.P9623227046254058389

`A010879(A017377(n)*A114288(n+1))`
-/

namespace A112454.P9623227046254058389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A017377 n * A114288 (n + 1)).toNat

end

end A112454.P9623227046254058389

/-!
# A112455: a(n) = -a(n-2) - a(n-3).

The programs for A112455, the canonical program `A112455.P13980770748025432243` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112455 has offset 0).

The definition of A112455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-2)-a(n-3)` (program `A112455.P13980770748025432243`, by `A112455.P13980770748025432243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112455.P13980770748025432243

`-a(n-2)-a(n-3)` with `a(0)=-3, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112455

/-- `-a(n-2)-a(n-3)` -/
def P13980770748025432243.Spec : Prop :=
  ∀ n, P13980770748025432243.a n = A112455 n

theorem P13980770748025432243.correct : P13980770748025432243.Spec := by
  intro n
  simp only [A112455]

end A112455

/-! ## A112455.P14707666918519446822

`ogf((-3-x^2)/(1+x^2+x^3))`
-/

namespace A112455.P14707666918519446822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 0, -1] [1, 0, 1, 1] n

end

end A112455.P14707666918519446822

namespace A112455

/-- `ogf((-3-x^2)/(1+x^2+x^3))` -/
def P14707666918519446822.Spec : Prop :=
  ∀ n, P14707666918519446822.a n = A112455 n

end A112455

/-! ## A112455.P12215803912797351830

`a(n-1)+a(n-4)-a(n-2)` with `a(0)=-3, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A112455.P12215803912797351830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3, 0, 2, 3] fun n a =>
  a (n - 1) + (a (n - 4) - a (n - 2))

end

end A112455.P12215803912797351830

namespace A112455

/-- `a(n-1)+a(n-4)-a(n-2)` -/
def P12215803912797351830.Spec : Prop :=
  ∀ n, P12215803912797351830.a n = A112455 n

end A112455

/-! ## A112455.P10554524131693346191

`Δ[A078032(n)]-A077962(n)`
-/

namespace A112455.P10554524131693346191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077962 n

end

end A112455.P10554524131693346191

namespace A112455

/-- `Δ[A078032(n)]-A077962(n)` -/
def P10554524131693346191.Spec : Prop :=
  ∀ n, P10554524131693346191.a n = A112455 n

end A112455

/-! ## A112455.P16018639428722076440

`Δ[A078032(n)]-A033999(n)*A077961(n)`
-/

namespace A112455.P16018639428722076440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033999 n * A077961 n

end

end A112455.P16018639428722076440

namespace A112455

/-- `Δ[A078032(n)]-A033999(n)*A077961(n)` -/
def P16018639428722076440.Spec : Prop :=
  ∀ n, P16018639428722076440.a n = A112455 n

end A112455

/-! ## A112455.P1893553720391978838

`A078032(n+1)-(A078032(n)+A077962(n))`
-/

namespace A112455.P1893553720391978838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 (n + 1) - (A078032 n + A077962 n)

end

end A112455.P1893553720391978838

namespace A112455

/-- `A078032(n+1)-(A078032(n)+A077962(n))` -/
def P1893553720391978838.Spec : Prop :=
  ∀ n, P1893553720391978838.a n = A112455 n

end A112455

/-! ## A112455.P7028847399948866413

`Δ[A078032(n)]-A077961(n)*A087960(2*n)`
-/

namespace A112455.P7028847399948866413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077961 n * A087960 (2 * n)

end

end A112455.P7028847399948866413

namespace A112455

/-- `Δ[A078032(n)]-A077961(n)*A087960(2*n)` -/
def P7028847399948866413.Spec : Prop :=
  ∀ n, P7028847399948866413.a n = A112455 n

end A112455

/-!
# A112456: Least triangular number divisible by n-th prime.

The programs for A112456, the canonical program `A112456.P13854223494093207296` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112456 has offset 1).

The definition of A112456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112456.P13854223494093207296

`C(A039915(n+1)+1, 2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112456

/-- `C(A039915(n+1)+1, 2)` -/
def P13854223494093207296.Spec : Prop :=
  ∀ n, (P13854223494093207296.a n : ℤ) = A112456 (n + 1)

theorem P13854223494093207296.correct : P13854223494093207296.Spec := by
  intro n
  simp only [A112456, Nat.add_sub_cancel]

end A112456

/-! ## A112456.P8184050050453570749

`C(xor(1, A000040(n+1))+1, 2)`
-/

namespace A112456.P8184050050453570749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.xor 1 (A000040 (n + 1)) + 1).toNat 2

end

end A112456.P8184050050453570749

namespace A112456

/-- `C(xor(1, A000040(n+1))+1, 2)` -/
def P8184050050453570749.Spec : Prop :=
  ∀ n, (P8184050050453570749.a n : ℤ) = A112456 (n + 1)

end A112456

/-! ## A112456.P252347004483477741

`A117762(n+1)/A055670(n+1)`
-/

namespace A112456.P252347004483477741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117762 (n + 1) : ℚ) / (A055670 (n + 1) : ℚ)

end

end A112456.P252347004483477741

namespace A112456

/-- `A117762(n+1)/A055670(n+1)` -/
def P252347004483477741.Spec : Prop :=
  ∀ n, P252347004483477741.a n = (A112456 (n + 1) : ℚ)

end A112456

/-! ## A112456.P4410487830408279508

`A138460(n+1)%A138425(n+1)`
-/

namespace A112456.P4410487830408279508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138460 (n + 1)) (A138425 (n + 1))

end

end A112456.P4410487830408279508

namespace A112456

/-- `A138460(n+1)%A138425(n+1)` -/
def P4410487830408279508.Spec : Prop :=
  ∀ n, P4410487830408279508.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P18121054730085314873

`C(A000040(n+1)+A000038(n), 2)`
-/

namespace A112456.P18121054730085314873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) + A000038 n).toNat 2

end

end A112456.P18121054730085314873

namespace A112456

/-- `C(A000040(n+1)+A000038(n), 2)` -/
def P18121054730085314873.Spec : Prop :=
  ∀ n, (P18121054730085314873.a n : ℤ) = A112456 (n + 1)

end A112456

/-! ## A112456.P747149973977866581

`C(A000040(n+1), A000032(C(2, a(n-1))))` with `a(0)=6`
-/

namespace A112456.P747149973977866581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.choose (A000040 (n + 1)).toNat (A000032 (Nat.choose 2 (a (n - 1)))).toNat

end

end A112456.P747149973977866581

namespace A112456

/-- `C(A000040(n+1), A000032(C(2, a(n-1))))` -/
def P747149973977866581.Spec : Prop :=
  ∀ n, (P747149973977866581.a n : ℤ) = A112456 (n + 1)

end A112456

/-! ## A112456.P7066504685805413209

`A000217(A039915(n+1))`
-/

namespace A112456.P7066504685805413209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A039915 (n + 1)).toNat

end

end A112456.P7066504685805413209

namespace A112456

/-- `A000217(A039915(n+1))` -/
def P7066504685805413209.Spec : Prop :=
  ∀ n, P7066504685805413209.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P7150367559235879581

`A000217(xor(1, A000040(n+1)))`
-/

namespace A112456.P7150367559235879581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor 1 (A000040 (n + 1))).toNat

end

end A112456.P7150367559235879581

namespace A112456

/-- `A000217(xor(1, A000040(n+1)))` -/
def P7150367559235879581.Spec : Prop :=
  ∀ n, P7150367559235879581.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P14853102962036816669

`A000217(xor(1, record[A006530(n+2)]))`
-/

namespace A112456.P14853102962036816669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A112456.P14853102962036816669

namespace A112456

/-- `A000217(xor(1, record[A006530(n+2)]))` -/
def P14853102962036816669.Spec : Prop :=
  ∀ n, P14853102962036816669.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P5424456497257114366

`A000217(xor(1, record[A020639(n+2)]))`
-/

namespace A112456.P5424456497257114366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A112456.P5424456497257114366

namespace A112456

/-- `A000217(xor(1, record[A020639(n+2)]))` -/
def P5424456497257114366.Spec : Prop :=
  ∀ n, P5424456497257114366.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P15544504892173745161

`A000217(xor(1, A008864(n+1)-1))`
-/

namespace A112456.P15544504892173745161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor 1 (A008864 (n + 1) - 1)).toNat

end

end A112456.P15544504892173745161

namespace A112456

/-- `A000217(xor(1, A008864(n+1)-1))` -/
def P15544504892173745161.Spec : Prop :=
  ∀ n, P15544504892173745161.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P7380924897437993851

`A000217(abs(A040976(n+1)-1)+2)`
-/

namespace A112456.P7380924897437993851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (|A040976 (n + 1) - 1| + 2).toNat

end

end A112456.P7380924897437993851

namespace A112456

/-- `A000217(abs(A040976(n+1)-1)+2)` -/
def P7380924897437993851.Spec : Prop :=
  ∀ n, P7380924897437993851.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P8404702570097642511

`A000217(xor(1, record[A000010(n+1)+1]))`
-/

namespace A112456.P8404702570097642511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A112456.P8404702570097642511

namespace A112456

/-- `A000217(xor(1, record[A000010(n+1)+1]))` -/
def P8404702570097642511.Spec : Prop :=
  ∀ n, P8404702570097642511.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P16890952858112880844

`A000217(xor(1, eq[2, A000005(n+1)]+1))`
-/

namespace A112456.P16890952858112880844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A112456.P16890952858112880844

namespace A112456

/-- `A000217(xor(1, eq[2, A000005(n+1)]+1))` -/
def P16890952858112880844.Spec : Prop :=
  ∀ n, P16890952858112880844.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P16447223285481624626

`A000217(xor(1, eq[n+2, A000203(n+1)]+1))`
-/

namespace A112456.P16447223285481624626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A112456.P16447223285481624626

namespace A112456

/-- `A000217(xor(1, eq[n+2, A000203(n+1)]+1))` -/
def P16447223285481624626.Spec : Prop :=
  ∀ n, P16447223285481624626.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P7468189889380482657

`C(A000040(n+1)*A014963(4*n+2), 2)`
-/

namespace A112456.P7468189889380482657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) * A014963 (4 * n + 2)).toNat 2

end

end A112456.P7468189889380482657

namespace A112456

/-- `C(A000040(n+1)*A014963(4*n+2), 2)` -/
def P7468189889380482657.Spec : Prop :=
  ∀ n, (P7468189889380482657.a n : ℤ) = A112456 (n + 1)

end A112456

/-! ## A112456.P14426333287326664487

`A000217(A011772(A008578(n+2)))`
-/

namespace A112456.P14426333287326664487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A011772 (A008578 (n + 2)).toNat).toNat

end

end A112456.P14426333287326664487

namespace A112456

/-- `A000217(A011772(A008578(n+2)))` -/
def P14426333287326664487.Spec : Prop :=
  ∀ n, P14426333287326664487.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P4109137446285898279

`A066561(A000040(n+1))`
-/

namespace A112456.P4109137446285898279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066561 (A000040 (n + 1)).toNat

end

end A112456.P4109137446285898279

namespace A112456

/-- `A066561(A000040(n+1))` -/
def P4109137446285898279.Spec : Prop :=
  ∀ n, P4109137446285898279.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P4753944676268723395

`A066561(A008578(n+2))`
-/

namespace A112456.P4753944676268723395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066561 (A008578 (n + 2)).toNat

end

end A112456.P4753944676268723395

namespace A112456

/-- `A066561(A008578(n+2))` -/
def P4753944676268723395.Spec : Prop :=
  ∀ n, P4753944676268723395.a n = A112456 (n + 1)

end A112456

/-! ## A112456.P12180174829898021571

`A066561(A182986(n+2))`
-/

namespace A112456.P12180174829898021571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066561 (A182986 (n + 2)).toNat

end

end A112456.P12180174829898021571

namespace A112456

/-- `A066561(A182986(n+2))` -/
def P12180174829898021571.Spec : Prop :=
  ∀ n, P12180174829898021571.a n = A112456 (n + 1)

end A112456

/-!
# A112458: Let b(n) = A112455(n). Then b(n)/n is an integer iff n is prime (at least for the first few values, as for the Perrin sequence). This sequence is the values of b(p)/p, where p is the n th prime.

The programs for A112458, there is no canonical definition to state claims against.
-/

/-! ## A112458.P10895661166725645820

`A112455(A000040(n+1))/Δ[A007504(n)]`
-/

namespace A112458.P10895661166725645820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112455 (A000040 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A112458.P10895661166725645820

/-! ## A112458.P15233643865482004569

`A112455(A000040(n+1))/p?[A001057(n)]`
-/

namespace A112458.P15233643865482004569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112455 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A112458.P15233643865482004569

/-! ## A112458.P4553755125922991925

`A112455(A000040(n+1))/p?[A014681(n)]`
-/

namespace A112458.P4553755125922991925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112455 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A112458.P4553755125922991925

/-! ## A112458.P9148690394621418286

`A112455(A006093(n+1)+1)/Δ[A007504(n)]`
-/

namespace A112458.P9148690394621418286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112455 (A006093 (n + 1) + 1).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A112458.P9148690394621418286

/-! ## A112458.P14414569248794134048

`A112455(A008864(n+1)-1)/Δ[A007504(n)]`
-/

namespace A112458.P14414569248794134048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112455 (A008864 (n + 1) - 1).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A112458.P14414569248794134048

/-!
# A112459: Absolute value of coefficient of term [x^(n-3)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 3. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

The programs for A112459, the canonical program `A112459.P2924927750340692199` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112459 has offset 3).

The definition of A112459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112459.P2924927750340692199

`∑[(n+3)*C(n+4, 4)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112459

/-- `∑[(n+3)*C(n+4, 4)]` -/
def P2924927750340692199.Spec : Prop :=
  ∀ n, (P2924927750340692199.a n : ℤ) = A112459 (n + 3)

theorem P2924927750340692199.correct : P2924927750340692199.Spec := by
  intro n
  simp only [A112459, Nat.add_sub_cancel]

end A112459

/-! ## A112459.P8022894363802913345

`∑[∑[∑[∑[∑[5*n+3]]]]]`
-/

namespace A112459.P8022894363802913345
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112459.P8022894363802913345

namespace A112459

/-- `∑[∑[∑[∑[∑[5*n+3]]]]]` -/
def P8022894363802913345.Spec : Prop :=
  ∀ n, (P8022894363802913345.a n : ℤ) = A112459 (n + 3)

end A112459

/-! ## A112459.P11706511234148585851

`floor(∑[∑[∑[∑[∑[a(n-1)+5]]]]])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A112459.P11706511234148585851
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f5 =>
  f5 (n - 1) + 5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112459.P11706511234148585851

namespace A112459

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+5]]]]])` -/
def P11706511234148585851.Spec : Prop :=
  ∀ n, (P11706511234148585851.a n : ℤ) = A112459 (n + 3)

end A112459

/-! ## A112459.P1266592478637021443

`∑[∑[∑[∑[∑[a(n-1)+10]]]]]/2` with `a(0)=6`
-/

namespace A112459.P1266592478637021443
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f5 =>
  f5 (n - 1) + 10

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A112459.P1266592478637021443

namespace A112459

/-- `∑[∑[∑[∑[∑[a(n-1)+10]]]]]/2` -/
def P1266592478637021443.Spec : Prop :=
  ∀ n, P1266592478637021443.a n = (A112459 (n + 3) : ℚ)

end A112459

/-! ## A112459.P14220684587007499688

`a(n-1)+(n+3)*C(n+4, 4)` with `a(0)=3`
-/

namespace A112459.P14220684587007499688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n + 3) * Nat.choose (n + 4) 4

end

end A112459.P14220684587007499688

namespace A112459

/-- `a(n-1)+(n+3)*C(n+4, 4)` -/
def P14220684587007499688.Spec : Prop :=
  ∀ n, (P14220684587007499688.a n : ℤ) = A112459 (n + 3)

end A112459

/-! ## A112459.P17451686177136454371

`∑[∑[∑[∑[a(n-1)+5]]]]+a(n-1)` with `a(0)=3`
-/

namespace A112459.P17451686177136454371
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A112459.P17451686177136454371

namespace A112459

/-- `∑[∑[∑[∑[a(n-1)+5]]]]+a(n-1)` -/
def P17451686177136454371.Spec : Prop :=
  ∀ n, (P17451686177136454371.a n : ℤ) = A112459 (n + 3)

end A112459

/-! ## A112459.P976292883974240939

`or(∑[A006411(n+1)], char[1])`
-/

namespace A112459.P976292883974240939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A112459.P976292883974240939

namespace A112459

/-- `or(∑[A006411(n+1)], char[1])` -/
def P976292883974240939.Spec : Prop :=
  ∀ n, P976292883974240939.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P5925401045118013574

`A095670(n)-A055797(n)`
-/

namespace A112459.P5925401045118013574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095670 n - A055797 n

end

end A112459.P5925401045118013574

namespace A112459

/-- `A095670(n)-A055797(n)` -/
def P5925401045118013574.Spec : Prop :=
  ∀ n, P5925401045118013574.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P6218085937643432256

`A051947(n)+A005584(n+1)`
-/

namespace A112459.P6218085937643432256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051947 n + A005584 (n + 1)

end

end A112459.P6218085937643432256

namespace A112459

/-- `A051947(n)+A005584(n+1)` -/
def P6218085937643432256.Spec : Prop :=
  ∀ n, P6218085937643432256.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P13459453586718563199

`A253946(n+5)-A095662(n)`
-/

namespace A112459.P13459453586718563199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253946 (n + 5) - A095662 n

end

end A112459.P13459453586718563199

namespace A112459

/-- `A253946(n+5)-A095662(n)` -/
def P13459453586718563199.Spec : Prop :=
  ∀ n, P13459453586718563199.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P11546479334074956877

`A027765(n+4)-A005584(n+1)`
-/

namespace A112459.P11546479334074956877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A005584 (n + 1)

end

end A112459.P11546479334074956877

namespace A112459

/-- `A027765(n+4)-A005584(n+1)` -/
def P11546479334074956877.Spec : Prop :=
  ∀ n, P11546479334074956877.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P10163152533071372486

`∑[A006411(n+1)]%A001919(n+3)`
-/

namespace A112459.P10163152533071372486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001919 (n + 3))

end

end A112459.P10163152533071372486

namespace A112459

/-- `∑[A006411(n+1)]%A001919(n+3)` -/
def P10163152533071372486.Spec : Prop :=
  ∀ n, P10163152533071372486.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P17751205161108865059

`A006542(n+5)-A005585(n+2)`
-/

namespace A112459.P17751205161108865059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 5) - A005585 (n + 2)

end

end A112459.P17751205161108865059

namespace A112459

/-- `A006542(n+5)-A005585(n+2)` -/
def P17751205161108865059.Spec : Prop :=
  ∀ n, P17751205161108865059.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P9798515877297931400

`A006542(n+5)+A040977(n)-A040977(n+1)`
-/

namespace A112459.P9798515877297931400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 5) + (A040977 n - A040977 (n + 1))

end

end A112459.P9798515877297931400

namespace A112459

/-- `A006542(n+5)+A040977(n)-A040977(n+1)` -/
def P9798515877297931400.Spec : Prop :=
  ∀ n, P9798515877297931400.a n = A112459 (n + 3)

end A112459

/-! ## A112459.P3240592592864473322

`(A299337(2*n+1)+A060099(2*n+1))/2`
-/

namespace A112459.P3240592592864473322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299337 (2 * n + 1) + A060099 (2 * n + 1) : ℚ) / 2

end

end A112459.P3240592592864473322

namespace A112459

/-- `(A299337(2*n+1)+A060099(2*n+1))/2` -/
def P3240592592864473322.Spec : Prop :=
  ∀ n, P3240592592864473322.a n = (A112459 (n + 3) : ℚ)

end A112459

/-!
# A112460: Absolute value of coefficient of term [x^(n-4)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 4. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

The programs for A112460, the canonical program `A112460.P1692856419661534276` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112460 has offset 4).

The definition of A112460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112460.P1692856419661534276

`∑[(n+4)*C(n+6, 6)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112460

/-- `∑[(n+4)*C(n+6, 6)]` -/
def P1692856419661534276.Spec : Prop :=
  ∀ n, (P1692856419661534276.a n : ℤ) = A112460 (n + 4)

theorem P1692856419661534276.correct : P1692856419661534276.Spec := by
  intro n
  simp only [A112460, Nat.add_sub_cancel]

end A112460

/-! ## A112460.P8604706961789720210

`∑[(n+4)*∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A112460.P8604706961789720210
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112460.P8604706961789720210

namespace A112460

/-- `∑[(n+4)*∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P8604706961789720210.Spec : Prop :=
  ∀ n, (P8604706961789720210.a n : ℤ) = A112460 (n + 4)

end A112460

/-! ## A112460.P15492339344130827734

`A095664(n)+A054487(n)`
-/

namespace A112460.P15492339344130827734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n + A054487 n

end

end A112460.P15492339344130827734

namespace A112460

/-- `A095664(n)+A054487(n)` -/
def P15492339344130827734.Spec : Prop :=
  ∀ n, P15492339344130827734.a n = A112460 (n + 4)

end A112460

/-! ## A112460.P10726506829032249276

`A027767(n+6)-A095664(n)`
-/

namespace A112460.P10726506829032249276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027767 (n + 6) - A095664 n

end

end A112460.P10726506829032249276

namespace A112460

/-- `A027767(n+6)-A095664(n)` -/
def P10726506829032249276.Spec : Prop :=
  ∀ n, P10726506829032249276.a n = A112460 (n + 4)

end A112460

/-! ## A112460.P14240972396608612267

`∑[A027803(n+3)-A107395(n)]/5`
-/

namespace A112460.P14240972396608612267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027803 (n + 3) - A107395 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A112460.P14240972396608612267

namespace A112460

/-- `∑[A027803(n+3)-A107395(n)]/5` -/
def P14240972396608612267.Spec : Prop :=
  ∀ n, P14240972396608612267.a n = (A112460 (n + 4) : ℚ)

end A112460

/-! ## A112460.P5228751053035633153

`∑[A027780(n+5)-A105249(n)]/5`
-/

namespace A112460.P5228751053035633153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027780 (n + 5) - A105249 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A112460.P5228751053035633153

namespace A112460

/-- `∑[A027780(n+5)-A105249(n)]/5` -/
def P5228751053035633153.Spec : Prop :=
  ∀ n, P5228751053035633153.a n = (A112460 (n + 4) : ℚ)

end A112460

/-!
# A112461: Absolute value of coefficient of term [x^(n-5)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 5. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

The programs for A112461, the canonical program `A112461.P11124848281320804814` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112461 has offset 5).

The definition of A112461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112461.P11124848281320804814

`∑[(n+5)*A000581(n+8)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112461

/-- `∑[(n+5)*A000581(n+8)]` -/
def P11124848281320804814.Spec : Prop :=
  ∀ n, P11124848281320804814.a n = A112461 (n + 5)

theorem P11124848281320804814.correct : P11124848281320804814.Spec := by
  intro n
  simp only [A112461, Nat.add_sub_cancel]

end A112461

/-! ## A112461.P15959075733530145194

`∑[(n+5)*∑[A000580(n+7)]]`
-/

namespace A112461.P15959075733530145194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112461.P15959075733530145194

namespace A112461

/-- `∑[(n+5)*∑[A000580(n+7)]]` -/
def P15959075733530145194.Spec : Prop :=
  ∀ n, P15959075733530145194.a n = A112461 (n + 5)

end A112461

/-! ## A112461.P5170583907464250948

`∑[A056122(n)+∑[A095671(n)]]`
-/

namespace A112461.P5170583907464250948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056122 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112461.P5170583907464250948

namespace A112461

/-- `∑[A056122(n)+∑[A095671(n)]]` -/
def P5170583907464250948.Spec : Prop :=
  ∀ n, P5170583907464250948.a n = A112461 (n + 5)

end A112461

/-! ## A112461.P11660199677772454100

`∑[A000581(n+8)*A020710(n)]`
-/

namespace A112461.P11660199677772454100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112461.P11660199677772454100

namespace A112461

/-- `∑[A000581(n+8)*A020710(n)]` -/
def P11660199677772454100.Spec : Prop :=
  ∀ n, P11660199677772454100.a n = A112461 (n + 5)

end A112461

/-! ## A112461.P2512414181560876287

`A254142(n)+4*A000582(n+9)`
-/

namespace A112461.P2512414181560876287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 n + 4 * A000582 (n + 9)

end

end A112461.P2512414181560876287

namespace A112461

/-- `A254142(n)+4*A000582(n+9)` -/
def P2512414181560876287.Spec : Prop :=
  ∀ n, P2512414181560876287.a n = A112461 (n + 5)

end A112461

/-! ## A112461.P8392863906048222598

`∑[(n+1)/2*A053347(n+1)]`
-/

namespace A112461.P8392863906048222598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A053347 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112461.P8392863906048222598

namespace A112461

/-- `∑[(n+1)/2*A053347(n+1)]` -/
def P8392863906048222598.Spec : Prop :=
  ∀ n, P8392863906048222598.a n = (A112461 (n + 5) : ℚ)

end A112461

/-! ## A112461.P11607704392099543549

`A254142(n+1)-A055844(n+1)`
-/

namespace A112461.P11607704392099543549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254142 (n + 1) - A055844 (n + 1)

end

end A112461.P11607704392099543549

namespace A112461

/-- `A254142(n+1)-A055844(n+1)` -/
def P11607704392099543549.Spec : Prop :=
  ∀ n, P11607704392099543549.a n = A112461 (n + 5)

end A112461

/-!
# A112462: Absolute value of coefficient of term [x^(n-6)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 6. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

The programs for A112462, the canonical program `A112462.P4439102457800209681` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112462 has offset 6).

The definition of A112462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112462.P4439102457800209681

`∑[(n+6)*C(n+10, 10)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112462

/-- `∑[(n+6)*C(n+10, 10)]` -/
def P4439102457800209681.Spec : Prop :=
  ∀ n, (P4439102457800209681.a n : ℤ) = A112462 (n + 6)

theorem P4439102457800209681.correct : P4439102457800209681.Spec := by
  intro n
  simp only [A112462, Nat.add_sub_cancel]

end A112462

/-! ## A112462.P4137930748181260095

`∑[A027815(n+5)/42]`
-/

namespace A112462.P4137930748181260095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027815 (n + 5) : ℚ) / 42

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112462.P4137930748181260095

namespace A112462

/-- `∑[A027815(n+5)/42]` -/
def P4137930748181260095.Spec : Prop :=
  ∀ n, P4137930748181260095.a n = (A112462 (n + 6) : ℚ)

end A112462

/-! ## A112462.P8718284790157015006

`∑[(n+6)*A001287(n)]`
-/

namespace A112462.P8718284790157015006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112462.P8718284790157015006

namespace A112462

/-- `∑[(n+6)*A001287(n)]` -/
def P8718284790157015006.Spec : Prop :=
  ∀ n, P8718284790157015006.a n = A112462 (n + 6)

theorem P8718284790157015006.correct : P8718284790157015006.Spec := by
  intro n
  simp only [A112462, Nat.add_sub_cancel, A112462.P8718284790157015006.f1, A112462.P8718284790157015006.a, A112462.P4439102457800209681.f1, A112462.P4439102457800209681.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112462

/-! ## A112462.P15518627232385694051

`∑[(n+6)*∑[A000582(n+9)]]`
-/

namespace A112462.P15518627232385694051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112462.P15518627232385694051

namespace A112462

/-- `∑[(n+6)*∑[A000582(n+9)]]` -/
def P15518627232385694051.Spec : Prop :=
  ∀ n, P15518627232385694051.a n = A112462 (n + 6)

end A112462

/-! ## A112462.P3670405828575749985

`∑[(n+6)*∑[∑[A000581(n+8)]]]`
-/

namespace A112462.P3670405828575749985
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112462.P3670405828575749985

namespace A112462

/-- `∑[(n+6)*∑[∑[A000581(n+8)]]]` -/
def P3670405828575749985.Spec : Prop :=
  ∀ n, P3670405828575749985.a n = A112462 (n + 6)

end A112462

/-! ## A112462.P16668515655950164625

`∑[A001287(n)*A020715(n)]`
-/

namespace A112462.P16668515655950164625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112462.P16668515655950164625

namespace A112462

/-- `∑[A001287(n)*A020715(n)]` -/
def P16668515655950164625.Spec : Prop :=
  ∀ n, P16668515655950164625.a n = A112462 (n + 6)

end A112462

/-! ## A112462.P16821814178889350015

`∑[∑[A112461(n+5)+A054334(n)]]`
-/

namespace A112462.P16821814178889350015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112461 (n + 5) + A054334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112462.P16821814178889350015

namespace A112462

/-- `∑[∑[A112461(n+5)+A054334(n)]]` -/
def P16821814178889350015.Spec : Prop :=
  ∀ n, P16821814178889350015.a n = A112462 (n + 6)

end A112462

/-! ## A112462.P13475400036604075818

`A001288(n)*A020719(n)-A010965(n)`
-/

namespace A112462.P13475400036604075818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11) * A020719 n - A010965 (n + 12)

end

end A112462.P13475400036604075818

namespace A112462

/-- `A001288(n)*A020719(n)-A010965(n)` -/
def P13475400036604075818.Spec : Prop :=
  ∀ n, P13475400036604075818.a n = A112462 (n + 6)

end A112462

/-!
# A112463: Absolute value of coefficient of term [x^(n-7)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 7. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

The programs for A112463, the canonical program `A112463.P15560922130889057073` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112463 has offset 7).

The definition of A112463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112463.P15560922130889057073

`∑[(n+7)*C(n+12, 12)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112463

/-- `∑[(n+7)*C(n+12, 12)]` -/
def P15560922130889057073.Spec : Prop :=
  ∀ n, (P15560922130889057073.a n : ℤ) = A112463 (n + 7)

theorem P15560922130889057073.correct : P15560922130889057073.Spec := by
  intro n
  simp only [A112463, Nat.add_sub_cancel]

end A112463

/-! ## A112463.P15012178055027309640

`∑[(n+7)*A010965(n)]`
-/

namespace A112463.P15012178055027309640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A010965 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112463.P15012178055027309640

namespace A112463

/-- `∑[(n+7)*A010965(n)]` -/
def P15012178055027309640.Spec : Prop :=
  ∀ n, P15012178055027309640.a n = A112463 (n + 7)

theorem P15012178055027309640.correct : P15012178055027309640.Spec := by
  intro n
  simp only [A112463, Nat.add_sub_cancel, A112463.P15012178055027309640.f1, A112463.P15012178055027309640.a, A112463.P15560922130889057073.f1, A112463.P15560922130889057073.a, A010965, A010965.P16782985268859376296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112463

/-! ## A112463.P630950511588179178

`∑[(n+7)*∑[A001288(n)]]`
-/

namespace A112463.P630950511588179178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112463.P630950511588179178

namespace A112463

/-- `∑[(n+7)*∑[A001288(n)]]` -/
def P630950511588179178.Spec : Prop :=
  ∀ n, P630950511588179178.a n = A112463 (n + 7)

end A112463

/-! ## A112463.P7192141968833812723

`∑[A010965(n)*A020719(n)]`
-/

namespace A112463.P7192141968833812723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) * A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112463.P7192141968833812723

namespace A112463

/-- `∑[A010965(n)*A020719(n)]` -/
def P7192141968833812723.Spec : Prop :=
  ∀ n, P7192141968833812723.a n = A112463 (n + 7)

end A112463

/-! ## A112463.P10415871497240155324

`∑[∑[A001288(n)]*A020719(n)]`
-/

namespace A112463.P10415871497240155324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112463.P10415871497240155324

namespace A112463

/-- `∑[∑[A001288(n)]*A020719(n)]` -/
def P10415871497240155324.Spec : Prop :=
  ∀ n, P10415871497240155324.a n = A112463 (n + 7)

end A112463

/-!
# A112464: Absolute value of coefficient of term [x^(n-8)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 8. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

The programs for A112464, the canonical program `A112464.P5635973965075633800` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112464 has offset 8).

The definition of A112464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112464.P5635973965075633800

`∑[(n+8)*A010967(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112464

/-- `∑[(n+8)*A010967(n)]` -/
def P5635973965075633800.Spec : Prop :=
  ∀ n, P5635973965075633800.a n = A112464 (n + 8)

theorem P5635973965075633800.correct : P5635973965075633800.Spec := by
  intro n
  simp only [A112464, Nat.add_sub_cancel]

end A112464

/-! ## A112464.P1263491940603895271

`∑[(n+8)*∑[A010966(n)]]`
-/

namespace A112464.P1263491940603895271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010966 (n + 13)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112464.P1263491940603895271

namespace A112464

/-- `∑[(n+8)*∑[A010966(n)]]` -/
def P1263491940603895271.Spec : Prop :=
  ∀ n, P1263491940603895271.a n = A112464 (n + 8)

end A112464

/-! ## A112464.P16620844892174522837

`∑[(n+8)*∑[∑[A010965(n)]]]`
-/

namespace A112464.P16620844892174522837
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112464.P16620844892174522837

namespace A112464

/-- `∑[(n+8)*∑[∑[A010965(n)]]]` -/
def P16620844892174522837.Spec : Prop :=
  ∀ n, P16620844892174522837.a n = A112464 (n + 8)

end A112464

/-! ## A112464.P1693998542499417598

`∑[A010967(n)*A020722(n)]`
-/

namespace A112464.P1693998542499417598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) * A020722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112464.P1693998542499417598

namespace A112464

/-- `∑[A010967(n)*A020722(n)]` -/
def P1693998542499417598.Spec : Prop :=
  ∀ n, P1693998542499417598.a n = A112464 (n + 8)

end A112464

/-! ## A112464.P2780977284941825225

`∑[A010967(n)*A020705(A020705(n))]`
-/

namespace A112464.P2780977284941825225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010967 (n + 14) * A020705 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112464.P2780977284941825225

namespace A112464

/-- `∑[A010967(n)*A020705(A020705(n))]` -/
def P2780977284941825225.Spec : Prop :=
  ∀ n, P2780977284941825225.a n = A112464 (n + 8)

end A112464

/-!
# A112465: Riordan array (1/(1+x), x/(1-x)).

The programs for A112465, the canonical program `A112465.P12348501173416136081` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112465 has offset 0).

The definition of A112465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112465.P12348501173416136081

`T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112465

/-- `T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)` -/
def P12348501173416136081.Spec : Prop :=
  ∀ n, P12348501173416136081.a n = A112465 n

theorem P12348501173416136081.correct : P12348501173416136081.Spec := by
  intro n
  simp only [A112465]

end A112465

/-! ## A112465.P4508789664293824832

`A097807(n)*A112468(n)`
-/

namespace A112465.P4508789664293824832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A112468 n

end

end A112465.P4508789664293824832

namespace A112465

/-- `A097807(n)*A112468(n)` -/
def P4508789664293824832.Spec : Prop :=
  ∀ n, P4508789664293824832.a n = A112465 n

end A112465

/-! ## A112465.P7688293891610927645

`2*A059260(n)-A007318(n)`
-/

namespace A112465.P7688293891610927645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059260 n - A007318 n

end

end A112465.P7688293891610927645

namespace A112465

/-- `2*A059260(n)-A007318(n)` -/
def P7688293891610927645.Spec : Prop :=
  ∀ n, P7688293891610927645.a n = A112465 n

end A112465

/-! ## A112465.P17545366806382839398

`2*A091598(n)-A091597(n)`
-/

namespace A112465.P17545366806382839398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091598 n - A091597 n

end

end A112465.P17545366806382839398

namespace A112465

/-- `2*A091598(n)-A091597(n)` -/
def P17545366806382839398.Spec : Prop :=
  ∀ n, P17545366806382839398.a n = A112465 n

end A112465

/-! ## A112465.P3209750485145946480

`2*A129690(n+1)-A110813(n)`
-/

namespace A112465.P3209750485145946480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129690 (n + 1) - A110813 n

end

end A112465.P3209750485145946480

namespace A112465

/-- `2*A129690(n+1)-A110813(n)` -/
def P3209750485145946480.Spec : Prop :=
  ∀ n, P3209750485145946480.a n = A112465 n

end A112465

/-! ## A112465.P11003358019360641602

`A108561(A061579(n))`
-/

namespace A112465.P11003358019360641602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A061579 n).toNat

end

end A112465.P11003358019360641602

namespace A112465

/-- `A108561(A061579(n))` -/
def P11003358019360641602.Spec : Prop :=
  ∀ n, P11003358019360641602.a n = A112465 n

end A112465

/-! ## A112465.P11271643105502116876

`A108561(A114327(n)+n)`
-/

namespace A112465.P11271643105502116876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A114327 n + (n : ℤ)).toNat

end

end A112465.P11271643105502116876

namespace A112465

/-- `A108561(A114327(n)+n)` -/
def P11271643105502116876.Spec : Prop :=
  ∀ n, P11271643105502116876.a n = A112465 n

end A112465

/-! ## A112465.P13306280471455395362

`A108561(A038722(n+1)-1)`
-/

namespace A112465.P13306280471455395362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A038722 (n + 1) - 1).toNat

end

end A112465.P13306280471455395362

namespace A112465

/-- `A108561(A038722(n+1)-1)` -/
def P13306280471455395362.Spec : Prop :=
  ∀ n, P13306280471455395362.a n = A112465 n

end A112465

/-! ## A112465.P14117510679973850975

`A108561(A038722(n+2))`
-/

namespace A112465.P14117510679973850975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A038722 (n + 2)).toNat

end

end A112465.P14117510679973850975

namespace A112465

/-- `A108561(A038722(n+2))` -/
def P14117510679973850975.Spec : Prop :=
  ∀ n, P14117510679973850975.a n = A112465 n

end A112465

/-! ## A112465.P3196423432560220189

`2*A091598(n)-A091598(A014132(n+1))`
-/

namespace A112465.P3196423432560220189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091598 n - A091598 (A014132 (n + 1)).toNat

end

end A112465.P3196423432560220189

namespace A112465

/-- `2*A091598(n)-A091598(A014132(n+1))` -/
def P3196423432560220189.Spec : Prop :=
  ∀ n, P3196423432560220189.a n = A112465 n

end A112465

/-! ## A112465.P10876587452622273471

`A091597(n)-A005843(A055248(n)-A091597(n))`
-/

namespace A112465.P10876587452622273471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091597 n - A005843 (A055248 n - A091597 n).toNat

end

end A112465.P10876587452622273471

namespace A112465

/-- `A091597(n)-A005843(A055248(n)-A091597(n))` -/
def P10876587452622273471.Spec : Prop :=
  ∀ n, P10876587452622273471.a n = A112465 n

end A112465

/-!
# A112466: Riordan array ((1+2*x)/(1+x), x/(1+x)).

The programs for A112466, the canonical program `A112466.P11485420403845195451` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112466 has offset 0).

The definition of A112466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112466.P11485420403845195451

`T(n-1,k-1)-T(n-1,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112466

/-- `T(n-1,k-1)-T(n-1,k)` -/
def P11485420403845195451.Spec : Prop :=
  ∀ n, P11485420403845195451.a n = A112466 n

theorem P11485420403845195451.correct : P11485420403845195451.Spec := by
  intro n
  simp only [A112466]

end A112466

/-! ## A112466.P9213310774612496109

`A097807(n)*A112467(n)`
-/

namespace A112466.P9213310774612496109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A112467 n

end

end A112466.P9213310774612496109

namespace A112466

/-- `A097807(n)*A112467(n)` -/
def P9213310774612496109.Spec : Prop :=
  ∀ n, P9213310774612496109.a n = A112466 n

end A112466

/-! ## A112466.P15118472899945273582

`A130595(n)+2*(1-∑[A130595(n)])`
-/

namespace A112466.P15118472899945273582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + 2 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112466.P15118472899945273582

namespace A112466

/-- `A130595(n)+2*(1-∑[A130595(n)])` -/
def P15118472899945273582.Spec : Prop :=
  ∀ n, P15118472899945273582.a n = A112466 n

end A112466

/-! ## A112466.P1199050620105374117

`A033999(A025581(n))*A112467(n)`
-/

namespace A112466.P1199050620105374117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A112467 n

end

end A112466.P1199050620105374117

namespace A112466

/-- `A033999(A025581(n))*A112467(n)` -/
def P1199050620105374117.Spec : Prop :=
  ∀ n, P1199050620105374117.a n = A112466 n

end A112466

/-! ## A112466.P4185149514486205666

`A033999(A051162(n))*A112467(n)`
-/

namespace A112466.P4185149514486205666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A112467 n

end

end A112466.P4185149514486205666

namespace A112466

/-- `A033999(A051162(n))*A112467(n)` -/
def P4185149514486205666.Spec : Prop :=
  ∀ n, P4185149514486205666.a n = A112466 n

end A112466

/-! ## A112466.P1070518038432677898

`(A097805(n)-A097805(n+1))*A097807(n)`
-/

namespace A112466.P1070518038432677898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 n - A097805 (n + 1)) * A097807 n

end

end A112466.P1070518038432677898

namespace A112466

/-- `(A097805(n)-A097805(n+1))*A097807(n)` -/
def P1070518038432677898.Spec : Prop :=
  ∀ n, P1070518038432677898.a n = A112466 n

end A112466

/-! ## A112466.P7551518823877530050

`(A004736(n+1)-xor(1, A004736(n+1)))*A112467(n)`
-/

namespace A112466.P7551518823877530050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - Int.xor 1 (A004736 (n + 1))) * A112467 n

end

end A112466.P7551518823877530050

namespace A112466

/-- `(A004736(n+1)-xor(1, A004736(n+1)))*A112467(n)` -/
def P7551518823877530050.Spec : Prop :=
  ∀ n, P7551518823877530050.a n = A112466 n

end A112466

/-! ## A112466.P2761339093622382201

`A225372(n+2)-Δ[A144431(n+1)]`
-/

namespace A112466.P2761339093622382201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225372 (n + 2) - (f1 (n + 1) - f1 n)

end

end A112466.P2761339093622382201

namespace A112466

/-- `A225372(n+2)-Δ[A144431(n+1)]` -/
def P2761339093622382201.Spec : Prop :=
  ∀ n, P2761339093622382201.a n = A112466 n

end A112466

/-! ## A112466.P5249203476121365347

`A112467(n)*A164677(A172292(n+1))`
-/

namespace A112466.P5249203476121365347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n * A164677 (A172292 (n + 1)).toNat

end

end A112466.P5249203476121365347

namespace A112466

/-- `A112467(n)*A164677(A172292(n+1))` -/
def P5249203476121365347.Spec : Prop :=
  ∀ n, P5249203476121365347.a n = A112466 n

end A112466

/-! ## A112466.P2007780346560695527

`A144431(n+1)+A225372(n+2)-A144431(n+2)`
-/

namespace A112466.P2007780346560695527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144431 (n + 1) + (A225372 (n + 2) - A144431 (n + 2))

end

end A112466.P2007780346560695527

namespace A112466

/-- `A144431(n+1)+A225372(n+2)-A144431(n+2)` -/
def P2007780346560695527.Spec : Prop :=
  ∀ n, P2007780346560695527.a n = A112466 n

end A112466

/-!
# A112467: Riordan array ((1-2x)/(1-x), x/(1-x)).

The programs for A112467, the canonical program `A112467.P6507525753280754379` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112467 has offset 0).

The definition of A112467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112467.P6507525753280754379

`T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112467

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P6507525753280754379.Spec : Prop :=
  ∀ n, P6507525753280754379.a n = A112467 n

theorem P6507525753280754379.correct : P6507525753280754379.Spec := by
  intro n
  simp only [A112467]

end A112467

/-! ## A112467.P7324981599467201497

`Δ[-A097805(n)]`
-/

namespace A112467.P7324981599467201497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112467.P7324981599467201497

namespace A112467

/-- `Δ[-A097805(n)]` -/
def P7324981599467201497.Spec : Prop :=
  ∀ n, P7324981599467201497.a n = A112467 n

end A112467

/-! ## A112467.P9602796586608500929

`floor(acot(n)-A037012(n))`
-/

namespace A112467.P9602796586608500929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A037012 n : ℝ)⌋

end

end A112467.P9602796586608500929

namespace A112467

/-- `floor(acot(n)-A037012(n))` -/
def P9602796586608500929.Spec : Prop :=
  ∀ n, P9602796586608500929.a n = A112467 n

end A112467

/-! ## A112467.P7662611314001957551

`A008482(abs(1-n)+1)`
-/

namespace A112467.P7662611314001957551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (|1 - (n : ℤ)| + 1).toNat

end

end A112467.P7662611314001957551

namespace A112467

/-- `A008482(abs(1-n)+1)` -/
def P7662611314001957551.Spec : Prop :=
  ∀ n, P7662611314001957551.a n = A112467 n

end A112467

/-! ## A112467.P789168489593086999

`-Δ[A007318(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A112467.P789168489593086999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007318 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A112467.P789168489593086999

namespace A112467

/-- `-Δ[A007318(n-1)-a(n-1)]` -/
def P789168489593086999.Spec : Prop :=
  ∀ n, P789168489593086999.a n = A112467 n

end A112467

/-! ## A112467.P244879810322844829

`A008482(n)+A000007(n)`
-/

namespace A112467.P244879810322844829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n + A000007 n

end

end A112467.P244879810322844829

namespace A112467

/-- `A008482(n)+A000007(n)` -/
def P244879810322844829.Spec : Prop :=
  ∀ n, P244879810322844829.a n = A112467 n

end A112467

/-! ## A112467.P11884794775350065740

`A000007(n)-A037012(n)`
-/

namespace A112467.P11884794775350065740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A037012 n

end

end A112467.P11884794775350065740

namespace A112467

/-- `A000007(n)-A037012(n)` -/
def P11884794775350065740.Spec : Prop :=
  ∀ n, P11884794775350065740.a n = A112467 n

end A112467

/-! ## A112467.P14227404043503553379

`A029635(n)-A029653(n)`
-/

namespace A112467.P14227404043503553379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A029653 n

end

end A112467.P14227404043503553379

namespace A112467

/-- `A029635(n)-A029653(n)` -/
def P14227404043503553379.Spec : Prop :=
  ∀ n, P14227404043503553379.a n = A112467 n

end A112467

/-! ## A112467.P13912299001665975784

`A000038(n)-A080232(n)`
-/

namespace A112467.P13912299001665975784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A080232 n

end

end A112467.P13912299001665975784

namespace A112467

/-- `A000038(n)-A080232(n)` -/
def P13912299001665975784.Spec : Prop :=
  ∀ n, P13912299001665975784.a n = A112467 n

end A112467

/-! ## A112467.P6057132195615189361

`A028326(n)-A093560(n)`
-/

namespace A112467.P6057132195615189361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A093560 n

end

end A112467.P6057132195615189361

namespace A112467

/-- `A028326(n)-A093560(n)` -/
def P6057132195615189361.Spec : Prop :=
  ∀ n, P6057132195615189361.a n = A112467 n

end A112467

/-! ## A112467.P13773648967349813678

`A095660(n)-A028326(n)`
-/

namespace A112467.P13773648967349813678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n - A028326 n

end

end A112467.P13773648967349813678

namespace A112467

/-- `A095660(n)-A028326(n)` -/
def P13773648967349813678.Spec : Prop :=
  ∀ n, P13773648967349813678.a n = A112467 n

end A112467

/-! ## A112467.P12797548990416277686

`A008482(n)+A057428(n)+1`
-/

namespace A112467.P12797548990416277686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n + (A057428 n + 1)

end

end A112467.P12797548990416277686

namespace A112467

/-- `A008482(n)+A057428(n)+1` -/
def P12797548990416277686.Spec : Prop :=
  ∀ n, P12797548990416277686.a n = A112467 n

end A112467

/-! ## A112467.P14684111693083576798

`A057428(n)+1-A037012(n)`
-/

namespace A112467.P14684111693083576798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (1 - A037012 n)

end

end A112467.P14684111693083576798

namespace A112467

/-- `A057428(n)+1-A037012(n)` -/
def P14684111693083576798.Spec : Prop :=
  ∀ n, P14684111693083576798.a n = A112467 n

end A112467

/-! ## A112467.P8044553349300437613

`A097805(n)-A097805(n+1)`
-/

namespace A112467.P8044553349300437613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A097805 (n + 1)

end

end A112467.P8044553349300437613

namespace A112467

/-- `A097805(n)-A097805(n+1)` -/
def P8044553349300437613.Spec : Prop :=
  ∀ n, P8044553349300437613.a n = A112467 n

end A112467

/-! ## A112467.P13258980407539478853

`A080232(n)+2*A008482(n)`
-/

namespace A112467.P13258980407539478853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 n + 2 * A008482 n

end

end A112467.P13258980407539478853

namespace A112467

/-- `A080232(n)+2*A008482(n)` -/
def P13258980407539478853.Spec : Prop :=
  ∀ n, P13258980407539478853.a n = A112467 n

end A112467

/-! ## A112467.P9685693967123691911

`2*A000007(n)-A080232(n)`
-/

namespace A112467.P9685693967123691911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A080232 n

end

end A112467.P9685693967123691911

namespace A112467

/-- `2*A000007(n)-A080232(n)` -/
def P9685693967123691911.Spec : Prop :=
  ∀ n, P9685693967123691911.a n = A112467 n

end A112467

/-! ## A112467.P13899333996584696827

`2*A007318(n)-A093560(n)`
-/

namespace A112467.P13899333996584696827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A093560 n

end

end A112467.P13899333996584696827

namespace A112467

/-- `2*A007318(n)-A093560(n)` -/
def P13899333996584696827.Spec : Prop :=
  ∀ n, P13899333996584696827.a n = A112467 n

end A112467

/-! ## A112467.P14084909496284246835

`A095660(n)-2*A007318(n)`
-/

namespace A112467.P14084909496284246835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n - 2 * A007318 n

end

end A112467.P14084909496284246835

namespace A112467

/-- `A095660(n)-2*A007318(n)` -/
def P14084909496284246835.Spec : Prop :=
  ∀ n, P14084909496284246835.a n = A112467 n

end A112467

/-!
# A112468: Riordan array (1/(1-x), x/(1+x)).

The programs for A112468, the canonical program `A112468.P17915003898881920404` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112468 has offset 0).

The definition of A112468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112468.P17726436170201131054

`A220074(A056943(n))`
-/

namespace A112468.P17726436170201131054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A056943 n).toNat

end

end A112468.P17726436170201131054

namespace A112468

/-- `A220074(A056943(n))` -/
def P17726436170201131054.Spec : Prop :=
  ∀ n, P17726436170201131054.a n = A112468 n

end A112468

/-! ## A112468.P17915003898881920404

`A097807(n)*A112465(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112468

/-- `A097807(n)*A112465(n)` -/
def P17915003898881920404.Spec : Prop :=
  ∀ n, P17915003898881920404.a n = A112468 n

theorem P17915003898881920404.correct : P17915003898881920404.Spec := by
  intro n
  simp only [A112468]

end A112468

/-! ## A112468.P8727230667384760867

`2*A239473(n)-A130595(n)`
-/

namespace A112468.P8727230667384760867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239473 n - A130595 n

end

end A112468.P8727230667384760867

namespace A112468

/-- `2*A239473(n)-A130595(n)` -/
def P8727230667384760867.Spec : Prop :=
  ∀ n, P8727230667384760867.a n = A112468 n

end A112468

/-! ## A112468.P626468208321154286

`A220074(n²%(A002024(n+1)+n))`
-/

namespace A112468.P626468208321154286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (Int.tmod (n ^ 2 : ℤ) (A002024 (n + 1) + (n : ℤ))).toNat

end

end A112468.P626468208321154286

namespace A112468

/-- `A220074(n²%(A002024(n+1)+n))` -/
def P626468208321154286.Spec : Prop :=
  ∀ n, P626468208321154286.a n = A112468 n

end A112468

/-! ## A112468.P302205186959366505

`A220074(A061579(n)-A003056(n))`
-/

namespace A112468.P302205186959366505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A061579 n - A003056 n).toNat

end

end A112468.P302205186959366505

namespace A112468

/-- `A220074(A061579(n)-A003056(n))` -/
def P302205186959366505.Spec : Prop :=
  ∀ n, P302205186959366505.a n = A112468 n

end A112468

/-! ## A112468.P7946556525377084494

`A033999(A025581(n))*A112465(n)`
-/

namespace A112468.P7946556525377084494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A112465 n

end

end A112468.P7946556525377084494

namespace A112468

/-- `A033999(A025581(n))*A112465(n)` -/
def P7946556525377084494.Spec : Prop :=
  ∀ n, P7946556525377084494.a n = A112468 n

end A112468

/-! ## A112468.P13809106717800294836

`A239473(A005843(n)%A007401(n+1))`
-/

namespace A112468.P13809106717800294836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (Int.tmod (A005843 n) (A007401 (n + 1))).toNat

end

end A112468.P13809106717800294836

namespace A112468

/-- `A239473(A005843(n)%A007401(n+1))` -/
def P13809106717800294836.Spec : Prop :=
  ∀ n, P13809106717800294836.a n = A112468 n

end A112468

/-! ## A112468.P1081807113844106509

`A220074(A038722(n+1)-A002024(n+1))`
-/

namespace A112468.P1081807113844106509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A038722 (n + 1) - A002024 (n + 1)).toNat

end

end A112468.P1081807113844106509

namespace A112468

/-- `A220074(A038722(n+1)-A002024(n+1))` -/
def P1081807113844106509.Spec : Prop :=
  ∀ n, P1081807113844106509.a n = A112468 n

end A112468

/-! ## A112468.P6348765652081134108

`A279006(A061579(n))`
-/

namespace A112468.P6348765652081134108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 (A061579 n).toNat

end

end A112468.P6348765652081134108

namespace A112468

/-- `A279006(A061579(n))` -/
def P6348765652081134108.Spec : Prop :=
  ∀ n, P6348765652081134108.a n = A112468 n

end A112468

/-! ## A112468.P353403973038004286

`A279006(A038722(n+1)-1)`
-/

namespace A112468.P353403973038004286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 (A038722 (n + 1) - 1).toNat

end

end A112468.P353403973038004286

namespace A112468

/-- `A279006(A038722(n+1)-1)` -/
def P353403973038004286.Spec : Prop :=
  ∀ n, P353403973038004286.a n = A112468 n

end A112468

/-! ## A112468.P706473475382959012

`A279006(A038722(n+2))`
-/

namespace A112468.P706473475382959012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 (A038722 (n + 2)).toNat

end

end A112468.P706473475382959012

namespace A112468

/-- `A279006(A038722(n+2))` -/
def P706473475382959012.Spec : Prop :=
  ∀ n, P706473475382959012.a n = A112468 n

end A112468

/-! ## A112468.P741605945907144139

`A113310(comp[∑[n]])`
-/

namespace A112468.P741605945907144139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112468.P741605945907144139

namespace A112468

/-- `A113310(comp[∑[n]])` -/
def P741605945907144139.Spec : Prop :=
  ∀ n, P741605945907144139.a n = A112468 n

end A112468

/-! ## A112468.P1978326860120345421

`A008836(A130321(n))*A112465(n)`
-/

namespace A112468.P1978326860120345421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A112465 n

end

end A112468.P1978326860120345421

namespace A112468

/-- `A008836(A130321(n))*A112465(n)` -/
def P1978326860120345421.Spec : Prop :=
  ∀ n, P1978326860120345421.a n = A112468 n

end A112468

/-!
# A112469: Partial sums of (-1)^n*Fibonacci(n-1).

The programs for A112469, the canonical program `A112469.P390399600049466155` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112469 has offset 0).

The definition of A112469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112469.P390399600049466155

`2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112469

/-- `2*a(n-2)-a(n-3)` -/
def P390399600049466155.Spec : Prop :=
  ∀ n, P390399600049466155.a n = A112469 n

theorem P390399600049466155.correct : P390399600049466155.Spec := by
  intro n
  simp only [A112469]

end A112469

/-! ## A112469.P11325894291568715138

`ogf((1+x)/(1-2x^2+x^3))`
-/

namespace A112469.P11325894291568715138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -2, 1] n

end

end A112469.P11325894291568715138

namespace A112469

/-- `ogf((1+x)/(1-2x^2+x^3))` -/
def P11325894291568715138.Spec : Prop :=
  ∀ n, P11325894291568715138.a n = A112469 n

end A112469

/-! ## A112469.P16072601730174819125

`∑[a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A112469.P16072601730174819125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P16072601730174819125

namespace A112469

/-- `∑[a(n-2)-a(n-1)]` -/
def P16072601730174819125.Spec : Prop :=
  ∀ n, P16072601730174819125.a n = A112469 n

end A112469

/-! ## A112469.P11344198859524078402

`a(n-2)+2-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A112469.P11344198859524078402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (2 - a (n - 1))

end

end A112469.P11344198859524078402

namespace A112469

/-- `a(n-2)+2-a(n-1)` -/
def P11344198859524078402.Spec : Prop :=
  ∀ n, P11344198859524078402.a n = A112469 n

end A112469

/-! ## A112469.P5637794861362388730

`2-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A112469.P5637794861362388730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (a (n - 1) - a (n - 2))

end

end A112469.P5637794861362388730

namespace A112469

/-- `2-(a(n-1)-a(n-2))` -/
def P5637794861362388730.Spec : Prop :=
  ∀ n, P5637794861362388730.a n = A112469 n

end A112469

/-! ## A112469.P4777198204774372521

`∑[A119282(n)+1]`
-/

namespace A112469.P4777198204774372521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P4777198204774372521

namespace A112469

/-- `∑[A119282(n)+1]` -/
def P4777198204774372521.Spec : Prop :=
  ∀ n, P4777198204774372521.a n = A112469 n

end A112469

/-! ## A112469.P10050679586271924419

`2-Δ[A113312(n)]`
-/

namespace A112469.P10050679586271924419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A112469.P10050679586271924419

namespace A112469

/-- `2-Δ[A113312(n)]` -/
def P10050679586271924419.Spec : Prop :=
  ∀ n, P10050679586271924419.a n = A112469 n

end A112469

/-! ## A112469.P16276076856457438380

`∑[A051792(Δ[n²])]`
-/

namespace A112469.P16276076856457438380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P16276076856457438380

namespace A112469

/-- `∑[A051792(Δ[n²])]` -/
def P16276076856457438380.Spec : Prop :=
  ∀ n, P16276076856457438380.a n = A112469 n

end A112469

/-! ## A112469.P13027131710289304495

`A113312(n+2)-2`
-/

namespace A112469.P13027131710289304495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 (n + 2) - 2

end

end A112469.P13027131710289304495

namespace A112469

/-- `A113312(n+2)-2` -/
def P13027131710289304495.Spec : Prop :=
  ∀ n, P13027131710289304495.a n = A112469 n

end A112469

/-! ## A112469.P9858649792512294438

`∑[∑[A355020(n)]-n]`
-/

namespace A112469.P9858649792512294438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P9858649792512294438

namespace A112469

/-- `∑[∑[A355020(n)]-n]` -/
def P9858649792512294438.Spec : Prop :=
  ∀ n, P9858649792512294438.a n = A112469 n

end A112469

/-! ## A112469.P2433959305064264202

`2-A051792(2*(n+1))`
-/

namespace A112469.P2433959305064264202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A051792 (2 * (n + 1))

end

end A112469.P2433959305064264202

namespace A112469

/-- `2-A051792(2*(n+1))` -/
def P2433959305064264202.Spec : Prop :=
  ∀ n, P2433959305064264202.a n = A112469 n

end A112469

/-! ## A112469.P7145916710074257051

`A355020(n)-A119282(n)`
-/

namespace A112469.P7145916710074257051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n - A119282 n

end

end A112469.P7145916710074257051

namespace A112469

/-- `A355020(n)-A119282(n)` -/
def P7145916710074257051.Spec : Prop :=
  ∀ n, P7145916710074257051.a n = A112469 n

end A112469

/-! ## A112469.P12283490265846014888

`A033999(n)*A078024(n)`
-/

namespace A112469.P12283490265846014888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078024 n

end

end A112469.P12283490265846014888

namespace A112469

/-- `A033999(n)*A078024(n)` -/
def P12283490265846014888.Spec : Prop :=
  ∀ n, P12283490265846014888.a n = A112469 n

end A112469

/-! ## A112469.P3099229465978154449

`∑[A094967(n)-A094966(n)]`
-/

namespace A112469.P3099229465978154449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 n - A094966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P3099229465978154449

namespace A112469

/-- `∑[A094967(n)-A094966(n)]` -/
def P3099229465978154449.Spec : Prop :=
  ∀ n, P3099229465978154449.a n = A112469 n

end A112469

/-! ## A112469.P14988456931766321406

`∑[A033999(n)*A212804(n)]`
-/

namespace A112469.P14988456931766321406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P14988456931766321406

namespace A112469

/-- `∑[A033999(n)*A212804(n)]` -/
def P14988456931766321406.Spec : Prop :=
  ∀ n, P14988456931766321406.a n = A112469 n

end A112469

/-! ## A112469.P12697892373534576636

`A078024(n)/A033999(n+2)`
-/

namespace A112469.P12697892373534576636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078024 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A112469.P12697892373534576636

namespace A112469

/-- `A078024(n)/A033999(n+2)` -/
def P12697892373534576636.Spec : Prop :=
  ∀ n, P12697892373534576636.a n = (A112469 n : ℚ)

end A112469

/-! ## A112469.P204684878517937568

`2-A033999(n)*A152163(n)`
-/

namespace A112469.P204684878517937568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n * A152163 n

end

end A112469.P204684878517937568

namespace A112469

/-- `2-A033999(n)*A152163(n)` -/
def P204684878517937568.Spec : Prop :=
  ∀ n, P204684878517937568.a n = A112469 n

end A112469

/-! ## A112469.P1023065082417246304

`∑[A212804(n)/A033999(n+2)]`
-/

namespace A112469.P1023065082417246304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 n : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112469.P1023065082417246304

namespace A112469

/-- `∑[A212804(n)/A033999(n+2)]` -/
def P1023065082417246304.Spec : Prop :=
  ∀ n, P1023065082417246304.a n = (A112469 n : ℚ)

end A112469

/-!
# A112470: Number of partitions of n which represent losing Chomp positions.

The programs for A112470, there is no canonical definition to state claims against.
-/

/-! ## A112470.P6055318121511267487

`A000041(n)-A112471(n)`
-/

namespace A112470.P6055318121511267487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A112471 n

end

end A112470.P6055318121511267487

/-! ## A112470.P15920276138626669271

`A213598(n)-A112471(n)`
-/

namespace A112470.P15920276138626669271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A112471 n

end

end A112470.P15920276138626669271

/-! ## A112470.P6863342976272014890

`sqrt(A001255(n))-A112471(n)`
-/

namespace A112470.P6863342976272014890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A112471 n : ℝ)

end

end A112470.P6863342976272014890

/-! ## A112470.P3734907915149985233

`∑[A002865(n)]-A112471(n)`
-/

namespace A112470.P3734907915149985233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A112471 n

end

end A112470.P3734907915149985233

/-! ## A112470.P18283185819282126232

`A054225(∑[n])-A112471(n)`
-/

namespace A112470.P18283185819282126232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A112471 n

end

end A112470.P18283185819282126232

/-!
# A112471: Number of partitions of n which represent first player winning Chomp positions.

The programs for A112471, there is no canonical definition to state claims against.
-/

/-! ## A112471.P12258076297636305112

`A000041(n)-A112470(n)`
-/

namespace A112471.P12258076297636305112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A112470 n

end

end A112471.P12258076297636305112

/-! ## A112471.P5646815962765275094

`A213598(n)-A112470(n)`
-/

namespace A112471.P5646815962765275094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A112470 n

end

end A112471.P5646815962765275094

/-! ## A112471.P8251799592348161301

`sqrt(A001255(n))-A112470(n)`
-/

namespace A112471.P8251799592348161301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A112470 n : ℝ)

end

end A112471.P8251799592348161301

/-! ## A112471.P12511601180743170356

`∑[A002865(n)]-A112470(n)`
-/

namespace A112471.P12511601180743170356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A112470 n

end

end A112471.P12511601180743170356

/-! ## A112471.P6447170407192616834

`A054225(∑[n])-A112470(n)`
-/

namespace A112471.P6447170407192616834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A112470 n

end

end A112471.P6447170407192616834

/-!
# A112472: Number of partitions of n which represent first player winning Chomp positions with unique winning moves.

The programs for A112472, there is no canonical definition to state claims against.
-/

/-! ## A112472.P15919150809058520025

`A112471(n+1)-A112473(n+1)`
-/

namespace A112472.P15919150809058520025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112471 (n + 1) - A112473 (n + 1)

end

end A112472.P15919150809058520025

/-! ## A112472.P13294040506844913277

`A000041(n+1)-(A112473(n+1)+A112470(n+1))`
-/

namespace A112472.P13294040506844913277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A112473 (n + 1) + A112470 (n + 1))

end

end A112472.P13294040506844913277

/-!
# A112473: Number of partitions of n which represent first player winning Chomp positions with multiple winning moves.

The programs for A112473, there is no canonical definition to state claims against.
-/

/-! ## A112473.P4783958340462243101

`A112471(n+1)-A112472(n+1)`
-/

namespace A112473.P4783958340462243101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112471 (n + 1) - A112472 (n + 1)

end

end A112473.P4783958340462243101

/-! ## A112473.P7895550148173682216

`A000041(n+1)-(A112472(n+1)+A112470(n+1))`
-/

namespace A112473.P7895550148173682216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A112472 (n + 1) + A112470 (n + 1))

end

end A112473.P7895550148173682216

/-!
# A112474: Squares that are the sum of three distinct positive cubes.

The programs for A112474, there is no canonical definition to state claims against.
-/

/-! ## A112474.P13664096326621890194

`A165454(n+1)²`
-/

namespace A112474.P13664096326621890194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1) ^ 2

end

end A112474.P13664096326621890194

/-! ## A112474.P5572523974659001050

`record[A165454(A291766(n))²]`
-/

namespace A112474.P5572523974659001050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (A291766 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112474.P5572523974659001050

/-! ## A112474.P17569706704237689755

`A165454(n+1)^A000005(A007918(n))`
-/

namespace A112474.P17569706704237689755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165454 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A112474.P17569706704237689755

/-! ## A112474.P10008763725399901687

`record[A165454(A291766(n))]*A165454(n+1)`
-/

namespace A112474.P10008763725399901687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A165454 (n + 1)

end

end A112474.P10008763725399901687

/-! ## A112474.P13276935066729522247

`record[A165454(A133310(n))²]`
-/

namespace A112474.P13276935066729522247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112474.P13276935066729522247

/-! ## A112474.P6929293884834741022

`record[A165454(A133310(n))]*A165454(n+1)`
-/

namespace A112474.P6929293884834741022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A165454 (n + 1)

end

end A112474.P6929293884834741022

/-! ## A112474.P4975898221130022324

`A165454(A008619(2*n))*A165454(n+1)`
-/

namespace A112474.P4975898221130022324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (A008619 (2 * n)).toNat * A165454 (n + 1)

end

end A112474.P4975898221130022324

/-! ## A112474.P7944051523668925743

`A000290(A165454(n+2)-Δ[A165454(n+1)])`
-/

namespace A112474.P7944051523668925743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A165454 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A112474.P7944051523668925743

/-! ## A112474.P10643187826595838726

`A000290(2*A165454(n+1)-A165454(n+1))`
-/

namespace A112474.P10643187826595838726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A165454 (n + 1) - A165454 (n + 1)).toNat

end

end A112474.P10643187826595838726

/-! ## A112474.P15822798741620572958

`A165454(n+1)^A160700(A161442(n+1))`
-/

namespace A112474.P15822798741620572958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165454 (n + 1) : ℚ) ^ (A160700 (A161442 (n + 1)).toNat : ℤ)

end

end A112474.P15822798741620572958

/-!
# A112475: Riordan array (1/(1+x),x(1+x)/(1-x)).

The programs for A112475, the canonical program `A112475.P12220316828217770936` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112475 has offset 0).

The definition of A112475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112475.P15090769450028268390

`2*A101603(n)-A008288(n)`
-/

namespace A112475.P15090769450028268390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101603 n - A008288 n

end

end A112475.P15090769450028268390

namespace A112475

/-- `2*A101603(n)-A008288(n)` -/
def P15090769450028268390.Spec : Prop :=
  ∀ n, P15090769450028268390.a n = A112475 n

end A112475

/-! ## A112475.P12220316828217770936

`A035607(n)+A197870(n)-A008288(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112475

/-- `A035607(n)+A197870(n)-A008288(n)` -/
def P12220316828217770936.Spec : Prop :=
  ∀ n, P12220316828217770936.a n = A112475 n

theorem P12220316828217770936.correct : P12220316828217770936.Spec := by
  intro n
  simp only [A112475]

end A112475

/-! ## A112475.P11268777179851155763

`A008288(n)+A197870(n)-A266213(n)`
-/

namespace A112475.P11268777179851155763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A197870 n - A266213 n)

end

end A112475.P11268777179851155763

namespace A112475

/-- `A008288(n)+A197870(n)-A266213(n)` -/
def P11268777179851155763.Spec : Prop :=
  ∀ n, P11268777179851155763.a n = A112475 n

end A112475

/-! ## A112475.P6919462111885104907

`A014473(n)+A101164(n)+1-(A266213(n)-A197870(n))`
-/

namespace A112475.P6919462111885104907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A101164 n + 1) - (A266213 n - A197870 n)

end

end A112475.P6919462111885104907

namespace A112475

/-- `A014473(n)+A101164(n)+1-(A266213(n)-A197870(n))` -/
def P6919462111885104907.Spec : Prop :=
  ∀ n, P6919462111885104907.a n = A112475 n

end A112475

/-! ## A112475.P6165250667297809236

`2*A101603(n)-A140750(A001614(n+1))`
-/

namespace A112475.P6165250667297809236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101603 n - A140750 (A001614 (n + 1)).toNat

end

end A112475.P6165250667297809236

namespace A112475

/-- `2*A101603(n)-A140750(A001614(n+1))` -/
def P6165250667297809236.Spec : Prop :=
  ∀ n, P6165250667297809236.a n = A112475 n

end A112475

/-! ## A112475.P4298198525094015955

`A140750(A001614(n+1))-(A266213(n)-A197870(n))`
-/

namespace A112475.P4298198525094015955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A001614 (n + 1)).toNat - (A266213 n - A197870 n)

end

end A112475.P4298198525094015955

namespace A112475

/-- `A140750(A001614(n+1))-(A266213(n)-A197870(n))` -/
def P4298198525094015955.Spec : Prop :=
  ∀ n, P4298198525094015955.a n = A112475 n

end A112475

/-! ## A112475.P11483957088059197268

`A140750(A195437(n)+1)-(A266213(n)-A197870(n))`
-/

namespace A112475.P11483957088059197268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A195437 n + 1).toNat - (A266213 n - A197870 n)

end

end A112475.P11483957088059197268

namespace A112475

/-- `A140750(A195437(n)+1)-(A266213(n)-A197870(n))` -/
def P11483957088059197268.Spec : Prop :=
  ∀ n, P11483957088059197268.a n = A112475 n

end A112475

/-! ## A112475.P6013104898098134720

`A008288(n)-A005843(A008288(n)-A101603(n))`
-/

namespace A112475.P6013104898098134720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A005843 (A008288 n - A101603 n).toNat

end

end A112475.P6013104898098134720

namespace A112475

/-- `A008288(n)-A005843(A008288(n)-A101603(n))` -/
def P6013104898098134720.Spec : Prop :=
  ∀ n, P6013104898098134720.a n = A112475 n

end A112475

/-! ## A112475.P35418535543435166

`A005843(A101603(n))-A008288(n)`
-/

namespace A112475.P35418535543435166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A101603 n).toNat - A008288 n

end

end A112475.P35418535543435166

namespace A112475

/-- `A005843(A101603(n))-A008288(n)` -/
def P35418535543435166.Spec : Prop :=
  ∀ n, P35418535543435166.a n = A112475 n

end A112475

/-! ## A112475.P5044910561262839038

`A005843(A101603(n))-A140750(A001614(n+1))`
-/

namespace A112475.P5044910561262839038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A101603 n).toNat - A140750 (A001614 (n + 1)).toNat

end

end A112475.P5044910561262839038

namespace A112475

/-- `A005843(A101603(n))-A140750(A001614(n+1))` -/
def P5044910561262839038.Spec : Prop :=
  ∀ n, P5044910561262839038.a n = A112475 n

end A112475

/-!
# A112476: Diagonal sums of Riordan array (1/(1+x),x(1+x)/(1-x)).

The programs for A112476, the canonical program `A112476.P604809942526993508` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112476 has offset 0).

The definition of A112476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112476.P604809942526993508

`2*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112476

/-- `2*a(n-2)+2*a(n-3)+a(n-4)` -/
def P604809942526993508.Spec : Prop :=
  ∀ n, P604809942526993508.a n = A112476 n

theorem P604809942526993508.correct : P604809942526993508.Spec := by
  intro n
  simp only [A112476]

end A112476

/-! ## A112476.P18101684123394783355

`ogf((-1+x)/(-1+2x^2+2x^3+x^4))`
-/

namespace A112476.P18101684123394783355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 0, -2, -2, -1] n

end

end A112476.P18101684123394783355

namespace A112476

/-- `ogf((-1+x)/(-1+2x^2+2x^3+x^4))` -/
def P18101684123394783355.Spec : Prop :=
  ∀ n, P18101684123394783355.a n = A112476 n

end A112476

/-! ## A112476.P16065662050536395634

`A000073(n)+(-1)^n`
-/

namespace A112476.P16065662050536395634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (-1) ^ n

end

end A112476.P16065662050536395634

namespace A112476

/-- `A000073(n)+(-1)^n` -/
def P16065662050536395634.Spec : Prop :=
  ∀ n, P16065662050536395634.a n = A112476 n

end A112476

/-! ## A112476.P16240893707936355444

`A033999(n)+A000073(n)`
-/

namespace A112476.P16240893707936355444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000073 n

end

end A112476.P16240893707936355444

namespace A112476

/-- `A033999(n)+A000073(n)` -/
def P16240893707936355444.Spec : Prop :=
  ∀ n, P16240893707936355444.a n = A112476 n

end A112476

/-! ## A112476.P11507048649703944501

`A056594(2*n)+A000073(n)`
-/

namespace A112476.P11507048649703944501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) + A000073 n

end

end A112476.P11507048649703944501

namespace A112476

/-- `A056594(2*n)+A000073(n)` -/
def P11507048649703944501.Spec : Prop :=
  ∀ n, P11507048649703944501.a n = A112476 n

end A112476

/-! ## A112476.P16403218996523431373

`A057077(2*n)+A000073(n)`
-/

namespace A112476.P16403218996523431373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) + A000073 n

end

end A112476.P16403218996523431373

namespace A112476

/-- `A057077(2*n)+A000073(n)` -/
def P16403218996523431373.Spec : Prop :=
  ∀ n, P16403218996523431373.a n = A112476 n

end A112476

/-! ## A112476.P10223504458963988360

`A112299(2*n+1)+A000073(n)`
-/

namespace A112476.P10223504458963988360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (2 * n + 1) + A000073 n

end

end A112476.P10223504458963988360

namespace A112476

/-- `A112299(2*n+1)+A000073(n)` -/
def P10223504458963988360.Spec : Prop :=
  ∀ n, P10223504458963988360.a n = A112476 n

end A112476

/-! ## A112476.P12160086974085036029

`A117569(2*n+1)+A000073(n)`
-/

namespace A112476.P12160086974085036029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) + A000073 n

end

end A112476.P12160086974085036029

namespace A112476

/-- `A117569(2*n+1)+A000073(n)` -/
def P12160086974085036029.Spec : Prop :=
  ∀ n, P12160086974085036029.a n = A112476 n

end A112476

/-! ## A112476.P16963137494984323712

`A054354(A054353(n+1))+A000073(n)`
-/

namespace A112476.P16963137494984323712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat + A000073 n

end

end A112476.P16963137494984323712

namespace A112476

/-- `A054354(A054353(n+1))+A000073(n)` -/
def P16963137494984323712.Spec : Prop :=
  ∀ n, P16963137494984323712.a n = A112476 n

end A112476

/-! ## A112476.P6927075301852028962

`A000035(n+1)+A000073(n)-A000035(n)`
-/

namespace A112476.P6927075301852028962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A000073 n - A000035 n)

end

end A112476.P6927075301852028962

namespace A112476

/-- `A000035(n+1)+A000073(n)-A000035(n)` -/
def P6927075301852028962.Spec : Prop :=
  ∀ n, P6927075301852028962.a n = A112476 n

end A112476

/-! ## A112476.P16277046382438457119

`A001590(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A112476.P16277046382438457119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001590 (n + 1) - a (n - 1)

end

end A112476.P16277046382438457119

namespace A112476

/-- `A001590(n+1)-a(n-1)` -/
def P16277046382438457119.Spec : Prop :=
  ∀ n, P16277046382438457119.a n = A112476 n

end A112476

/-! ## A112476.P5261050655440746479

`Δ[A000213(n)/2]+(-1)^n`
-/

namespace A112476.P5261050655440746479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((-1) ^ n : ℚ)

end

end A112476.P5261050655440746479

namespace A112476

/-- `Δ[A000213(n)/2]+(-1)^n` -/
def P5261050655440746479.Spec : Prop :=
  ∀ n, P5261050655440746479.a n = (A112476 n : ℚ)

end A112476

/-! ## A112476.P5625855382624597541

`abs(A078042(n)+1)-A214727(n)`
-/

namespace A112476.P5625855382624597541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 n + 1| - A214727 n

end

end A112476.P5625855382624597541

namespace A112476

/-- `abs(A078042(n)+1)-A214727(n)` -/
def P5625855382624597541.Spec : Prop :=
  ∀ n, P5625855382624597541.a n = A112476 n

end A112476

/-!
# A112478: Expansion of (1 + x + sqrt(1 + 6*x + x^2))/2.

The programs for A112478, the canonical program `A112478.P3456292499635885197` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112478 has offset 0).

The definition of A112478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112478.P8950290168745898857

`ceil(A109771(n)/2)`
-/

namespace A112478.P8950290168745898857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109771 n : ℚ) / 2⌉

end

end A112478.P8950290168745898857

namespace A112478

/-- `ceil(A109771(n)/2)` -/
def P8950290168745898857.Spec : Prop :=
  ∀ n, P8950290168745898857.a n = A112478 n

end A112478

/-! ## A112478.P3456292499635885197

`(-1)^n*A085403(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112478

/-- `(-1)^n*A085403(n)` -/
def P3456292499635885197.Spec : Prop :=
  ∀ n, P3456292499635885197.a n = A112478 n

theorem P3456292499635885197.correct : P3456292499635885197.Spec := by
  intro n
  simp only [A112478]

end A112478

/-! ## A112478.P1293886295258914187

`A085403(n)/A033999(n)`
-/

namespace A112478.P1293886295258914187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085403 n : ℚ) / (A033999 n : ℚ)

end

end A112478.P1293886295258914187

namespace A112478

/-- `A085403(n)/A033999(n)` -/
def P1293886295258914187.Spec : Prop :=
  ∀ n, P1293886295258914187.a n = (A112478 n : ℚ)

end A112478

/-! ## A112478.P15481445505458199554

`A033322(n+1)-A103137(n)`
-/

namespace A112478.P15481445505458199554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) - A103137 n

end

end A112478.P15481445505458199554

namespace A112478

/-- `A033322(n+1)-A103137(n)` -/
def P15481445505458199554.Spec : Prop :=
  ∀ n, P15481445505458199554.a n = A112478 n

end A112478

/-! ## A112478.P8912266738834307059

`A085403(n)/A103137(n)*A155069(n)`
-/

namespace A112478.P8912266738834307059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085403 n : ℚ) / (A103137 n : ℚ) * (A155069 n : ℚ)

end

end A112478.P8912266738834307059

namespace A112478

/-- `A085403(n)/A103137(n)*A155069(n)` -/
def P8912266738834307059.Spec : Prop :=
  ∀ n, P8912266738834307059.a n = (A112478 n : ℚ)

end A112478

/-! ## A112478.P3747378121381757634

`A085403(n)*A086456(n+1)/A103137(n+1)`
-/

namespace A112478.P3747378121381757634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085403 n * A086456 (n + 1) : ℚ) / (A103137 (n + 1) : ℚ)

end

end A112478.P3747378121381757634

namespace A112478

/-- `A085403(n)*A086456(n+1)/A103137(n+1)` -/
def P3747378121381757634.Spec : Prop :=
  ∀ n, P3747378121381757634.a n = (A112478 n : ℚ)

end A112478

/-!
# A112479: a(n) = 1 + sum{p=primes<n, p does not divide n} a(p).

The programs for A112479, the canonical program `A112479.P11671366610514428700` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112479 has offset 1).

The definition of A112479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112479.P3346887992440568172

`A048656(n+1)-A087207(n+1)`
-/

namespace A112479.P3346887992440568172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) - A087207 (n + 1)

end

end A112479.P3346887992440568172

namespace A112479

/-- `A048656(n+1)-A087207(n+1)` -/
def P3346887992440568172.Spec : Prop :=
  ∀ n, P3346887992440568172.a n = A112479 (n + 1)

end A112479

/-! ## A112479.P6388368359295580937

`A000079(A000720(n+1))-A087207(n+1)`
-/

namespace A112479.P6388368359295580937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000720 (n + 1)).toNat - A087207 (n + 1)

end

end A112479.P6388368359295580937

namespace A112479

/-- `A000079(A000720(n+1))-A087207(n+1)` -/
def P6388368359295580937.Spec : Prop :=
  ∀ n, P6388368359295580937.a n = A112479 (n + 1)

end A112479

/-! ## A112479.P3220670524027766146

`A011782(A036234(n+1))-A087207(n+1)`
-/

namespace A112479.P3220670524027766146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A036234 (n + 1)).toNat - A087207 (n + 1)

end

end A112479.P3220670524027766146

namespace A112479

/-- `A011782(A036234(n+1))-A087207(n+1)` -/
def P3220670524027766146.Spec : Prop :=
  ∀ n, P3220670524027766146.a n = A112479 (n + 1)

end A112479

/-! ## A112479.P11671366610514428700

`A000079(∑[A010051(n+1)])-A087207(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112479

/-- `A000079(∑[A010051(n+1)])-A087207(n+1)` -/
def P11671366610514428700.Spec : Prop :=
  ∀ n, P11671366610514428700.a n = A112479 (n + 1)

theorem P11671366610514428700.correct : P11671366610514428700.Spec := by
  intro n
  simp only [A112479, Nat.add_sub_cancel]

end A112479

/-! ## A112479.P5537988435978177224

`A000079(A000720(n+1))-A048675(∏{p}[n+1, #])`
-/

namespace A112479.P5537988435978177224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000720 (n + 1)).toNat - A048675 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A112479.P5537988435978177224

namespace A112479

/-- `A000079(A000720(n+1))-A048675(∏{p}[n+1, #])` -/
def P5537988435978177224.Spec : Prop :=
  ∀ n, P5537988435978177224.a n = A112479 (n + 1)

end A112479

/-!
# A112482: Expansion of the solution of a functional equation.

The programs for A112482, there is no canonical definition to state claims against.
-/

/-! ## A112482.P5589233091915641787

`A185284(A065231(n))+A006196(n+1)`
-/

namespace A112482.P5589233091915641787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A065231 n).toNat + A006196 (n + 1)

end

end A112482.P5589233091915641787

/-! ## A112482.P8816343032647600036

`A185284(A065231(n))+A089796(n+1)`
-/

namespace A112482.P8816343032647600036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A065231 n).toNat + A089796 (n + 1)

end

end A112482.P8816343032647600036

/-! ## A112482.P8234379259019651134

`A328712(A322283(n))+A006196(n+1)`
-/

namespace A112482.P8234379259019651134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A322283 n).toNat + A006196 (n + 1)

end

end A112482.P8234379259019651134

/-! ## A112482.P3303841448969335545

`A328712(A322283(n))+A089796(n+1)`
-/

namespace A112482.P3303841448969335545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A322283 n).toNat + A089796 (n + 1)

end

end A112482.P3303841448969335545

/-! ## A112482.P2546429337526268944

`A340998(A110652(n+1))+A089796(n+1)`
-/

namespace A112482.P2546429337526268944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A110652 (n + 1)).toNat + 140) + A089796 (n + 1)

end

end A112482.P2546429337526268944

/-!
# A112483: Expansion of the solution of a functional equation.

The programs for A112483, there is no canonical definition to state claims against.
-/

/-! ## A112483.P10668832717043141697

`A110656(3*A218552(n))`
-/

namespace A112483.P10668832717043141697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A218552 n).toNat

end

end A112483.P10668832717043141697

/-! ## A112483.P4620073168342227813

`A046100(A000598(n)^(∑{digits}[n, 10^#]%9))`
-/

namespace A112483.P4620073168342227813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A000598 n ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9)).toNat

end

end A112483.P4620073168342227813

/-! ## A112483.P16551066254510684562

`A023193(A063687(n)+A025566(n))`
-/

namespace A112483.P16551066254510684562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A063687 n + A025566 n).toNat

end

end A112483.P16551066254510684562

/-! ## A112483.P976544452746588470

`A046100(A000598(n)^A055642(n))`
-/

namespace A112483.P976544452746588470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (SequenceMachineLib.roundAway ((A000598 n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A112483.P976544452746588470

/-! ## A112483.P9041293283765318090

`A046100(A000598(n)^A214949(n+1))`
-/

namespace A112483.P9041293283765318090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (SequenceMachineLib.roundAway ((A000598 n : ℚ) ^ (A214949 (n + 1) : ℤ))).toNat

end

end A112483.P9041293283765318090

/-!
# A112484: Array where n-th row contains the primes < n and coprime to n.

The programs for A112484, the canonical program `A112484.P6804898479430279805` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112484 has offset 3).

The definition of A112484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112484.P6804898479430279805

`p?[A020652(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112484

/-- `p?[A020652(n+1)]` -/
def P6804898479430279805.Spec : Prop :=
  ∀ n, P6804898479430279805.a n = A112484 (n + 3)

theorem P6804898479430279805.correct : P6804898479430279805.Spec := by
  intro n
  simp only [A112484, Nat.add_sub_cancel]

end A112484

/-! ## A112484.P4461317110223076433

`p?[A038566(n+1)]`
-/

namespace A112484.P4461317110223076433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P4461317110223076433

namespace A112484

/-- `p?[A038566(n+1)]` -/
def P4461317110223076433.Spec : Prop :=
  ∀ n, P4461317110223076433.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P15542307628334665890

`p?[A038569(2*n)]`
-/

namespace A112484.P15542307628334665890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P15542307628334665890

namespace A112484

/-- `p?[A038569(2*n)]` -/
def P15542307628334665890.Spec : Prop :=
  ∀ n, P15542307628334665890.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P15310860762119323240

`p?[A038568(2*n+1)]`
-/

namespace A112484.P15310860762119323240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P15310860762119323240

namespace A112484

/-- `p?[A038568(2*n+1)]` -/
def P15310860762119323240.Spec : Prop :=
  ∀ n, P15310860762119323240.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P18085328897094777025

`filter[A020652(n+1), A010051(#)]`
-/

namespace A112484.P18085328897094777025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112484.P18085328897094777025

namespace A112484

/-- `filter[A020652(n+1), A010051(#)]` -/
def P18085328897094777025.Spec : Prop :=
  ∀ n, P18085328897094777025.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P16545964856290028581

`filter[A038566(n+1), A010051(#)]`
-/

namespace A112484.P16545964856290028581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112484.P16545964856290028581

namespace A112484

/-- `filter[A038566(n+1), A010051(#)]` -/
def P16545964856290028581.Spec : Prop :=
  ∀ n, P16545964856290028581.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P3771411962597625766

`filter[A038569(2*n), A010051(#)]`
-/

namespace A112484.P3771411962597625766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112484.P3771411962597625766

namespace A112484

/-- `filter[A038569(2*n), A010051(#)]` -/
def P3771411962597625766.Spec : Prop :=
  ∀ n, P3771411962597625766.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P339201928028902695

`p?[A038567(n)-A020653(n+1)]`
-/

namespace A112484.P339201928028902695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 n - A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P339201928028902695

namespace A112484

/-- `p?[A038567(n)-A020653(n+1)]` -/
def P339201928028902695.Spec : Prop :=
  ∀ n, P339201928028902695.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P2649345721504595406

`p?[A173540(n+1)]`
-/

namespace A112484.P2649345721504595406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P2649345721504595406

namespace A112484

/-- `p?[A173540(n+1)]` -/
def P2649345721504595406.Spec : Prop :=
  ∀ n, P2649345721504595406.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P5225733941212753745

`p?[A002260(A169581(n+1))]`
-/

namespace A112484.P5225733941212753745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A169581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P5225733941212753745

namespace A112484

/-- `p?[A002260(A169581(n+1))]` -/
def P5225733941212753745.Spec : Prop :=
  ∀ n, P5225733941212753745.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P16240729107750179382

`filter[A173540(n+3), A010051(#)]`
-/

namespace A112484.P16240729107750179382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173540 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112484.P16240729107750179382

namespace A112484

/-- `filter[A173540(n+3), A010051(#)]` -/
def P16240729107750179382.Spec : Prop :=
  ∀ n, P16240729107750179382.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P5130371090613346033

`filter[A173540(n+3), A080339(#)]`
-/

namespace A112484.P5130371090613346033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173540 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A112484.P5130371090613346033

namespace A112484

/-- `filter[A173540(n+3), A080339(#)]` -/
def P5130371090613346033.Spec : Prop :=
  ∀ n, P5130371090613346033.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P1597212881673837308

`p?[A002260(n+1)-A127093(n+1)]`
-/

namespace A112484.P1597212881673837308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P1597212881673837308

namespace A112484

/-- `p?[A002260(n+1)-A127093(n+1)]` -/
def P1597212881673837308.Spec : Prop :=
  ∀ n, P1597212881673837308.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P8258854826617735234

`p?[A002260(n+1)-A286239(n+1)]`
-/

namespace A112484.P8258854826617735234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A286239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P8258854826617735234

namespace A112484

/-- `p?[A002260(n+1)-A286239(n+1)]` -/
def P8258854826617735234.Spec : Prop :=
  ∀ n, P8258854826617735234.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P3753987866205077966

`p?[A127368(n+1)]`
-/

namespace A112484.P3753987866205077966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P3753987866205077966

namespace A112484

/-- `p?[A127368(n+1)]` -/
def P3753987866205077966.Spec : Prop :=
  ∀ n, P3753987866205077966.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P11523421743487068617

`p?[A143655(n+1)]`
-/

namespace A112484.P11523421743487068617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P11523421743487068617

namespace A112484

/-- `p?[A143655(n+1)]` -/
def P11523421743487068617.Spec : Prop :=
  ∀ n, P11523421743487068617.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P7340592002987226091

`p?[A173541(n+1)]`
-/

namespace A112484.P7340592002987226091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P7340592002987226091

namespace A112484

/-- `p?[A173541(n+1)]` -/
def P7340592002987226091.Spec : Prop :=
  ∀ n, P7340592002987226091.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P17545704974610283940

`p?[abs(A143728(n+1))]`
-/

namespace A112484.P17545704974610283940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143728 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P17545704974610283940

namespace A112484

/-- `p?[abs(A143728(n+1))]` -/
def P17545704974610283940.Spec : Prop :=
  ∀ n, P17545704974610283940.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P1867712783873258031

`p?[-A143728(n+2)]`
-/

namespace A112484.P1867712783873258031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P1867712783873258031

namespace A112484

/-- `p?[-A143728(n+2)]` -/
def P1867712783873258031.Spec : Prop :=
  ∀ n, P1867712783873258031.a n = A112484 (n + 3)

end A112484

/-! ## A112484.P14576790511618391585

`filter[A143655(n+1), A014306(#)]`
-/

namespace A112484.P14576790511618391585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A112484.P14576790511618391585

namespace A112484

/-- `filter[A143655(n+1), A014306(#)]` -/
def P14576790511618391585.Spec : Prop :=
  ∀ n, P14576790511618391585.a n = A112484 (n + 3)

end A112484

/-!
# A112485: Fifth diagonal of second-order Eulerian triangle A008517. Fifth column (m=4) of triangle A112007.

The programs for A112485, the canonical program `A112485.P3061397793116521121` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112485 has offset 0).

The definition of A112485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112485.P3061397793116521121

`(n+9)*a(n-1)+(n+1)*A112008(n)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112485

/-- `(n+9)*a(n-1)+(n+1)*A112008(n)` -/
def P3061397793116521121.Spec : Prop :=
  ∀ n, P3061397793116521121.a n = A112485 n

theorem P3061397793116521121.correct : P3061397793116521121.Spec := by
  intro n
  simp only [A112485]

end A112485

/-! ## A112485.P3733252752034472615

`A008517(Δ[A264443(n)])`
-/

namespace A112485.P3733252752034472615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (f1 (n + 1) - f1 n).toNat

end

end A112485.P3733252752034472615

namespace A112485

/-- `A008517(Δ[A264443(n)])` -/
def P3733252752034472615.Spec : Prop :=
  ∀ n, P3733252752034472615.a n = A112485 n

end A112485

/-! ## A112485.P12089698005487572619

`A008517(A046691(n+3))`
-/

namespace A112485.P12089698005487572619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A046691 (n + 3)).toNat

end

end A112485.P12089698005487572619

namespace A112485

/-- `A008517(A046691(n+3))` -/
def P12089698005487572619.Spec : Prop :=
  ∀ n, P12089698005487572619.a n = A112485 n

end A112485

/-! ## A112485.P17340539454991254203

`A163936(A167499(n+4))`
-/

namespace A112485.P17340539454991254203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (A167499 (n + 4)).toNat

end

end A112485.P17340539454991254203

namespace A112485

/-- `A163936(A167499(n+4))` -/
def P17340539454991254203.Spec : Prop :=
  ∀ n, P17340539454991254203.a n = A112485 n

end A112485

/-! ## A112485.P10929193017449810266

`A008517(A056115(n)+11)`
-/

namespace A112485.P10929193017449810266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A056115 n + 11).toNat

end

end A112485.P10929193017449810266

namespace A112485

/-- `A008517(A056115(n)+11)` -/
def P10929193017449810266.Spec : Prop :=
  ∀ n, P10929193017449810266.a n = A112485 n

end A112485

/-!
# A112486: Coefficient triangle for polynomials used for e.g.f.s for unsigned Stirling1 diagonals.

The programs for A112486, the canonical program `A112486.P13283292477151862406` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112486 has offset 0).

The definition of A112486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112486.P13283292477151862406

`(row(n)+col(n))*T(n-1,k)+(row(n)+col(n)-1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112486

/-- `(row(n)+col(n))*T(n-1,k)+(row(n)+col(n)-1)*T(n-1,k-1)` -/
def P13283292477151862406.Spec : Prop :=
  ∀ n, P13283292477151862406.a n = A112486 n

theorem P13283292477151862406.correct : P13283292477151862406.Spec := by
  intro n
  simp only [A112486]

end A112486

/-! ## A112486.P224677005229065941

`A269940(n+1)+A269940(n)`
-/

namespace A112486.P224677005229065941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (n + 1) + A269940 n

end

end A112486.P224677005229065941

namespace A112486

/-- `A269940(n+1)+A269940(n)` -/
def P224677005229065941.Spec : Prop :=
  ∀ n, P224677005229065941.a n = A112486 n

end A112486

/-! ## A112486.P8762822242954473928

`abs(A111999(A038722(n+1))/A094727(n+1))`
-/

namespace A112486.P8762822242954473928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A111999 (A038722 (n + 1)).toNat : ℚ) / (A094727 (n + 1) : ℚ)|

end

end A112486.P8762822242954473928

namespace A112486

/-- `abs(A111999(A038722(n+1))/A094727(n+1))` -/
def P8762822242954473928.Spec : Prop :=
  ∀ n, P8762822242954473928.a n = (A112486 n : ℚ)

end A112486

/-! ## A112486.P3784905550122414070

`abs(A111999(A061579(n)+1))/A094727(n+1)`
-/

namespace A112486.P3784905550122414070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A111999 (A061579 n + 1).toNat| : ℚ) / (A094727 (n + 1) : ℚ)

end

end A112486.P3784905550122414070

namespace A112486

/-- `abs(A111999(A061579(n)+1))/A094727(n+1)` -/
def P3784905550122414070.Spec : Prop :=
  ∀ n, P3784905550122414070.a n = (A112486 n : ℚ)

end A112486

/-! ## A112486.P12556957030432104078

`A008306(A056537(n+1)+1)/A094727(n+1)`
-/

namespace A112486.P12556957030432104078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008306 (A056537 (n + 1) + 1).toNat : ℚ) / (A094727 (n + 1) : ℚ)

end

end A112486.P12556957030432104078

namespace A112486

/-- `A008306(A056537(n+1)+1)/A094727(n+1)` -/
def P12556957030432104078.Spec : Prop :=
  ∀ n, P12556957030432104078.a n = (A112486 n : ℚ)

end A112486

/-!
# A112487: a(n) = Sum_{k=0..n} E2(n, k)*2^k, where E2(n, k) are the second-order Eulerian numbers A340556.

The programs for A112487, there is no canonical definition to state claims against.
-/

/-! ## A112487.P1622961292863373517

`A032034(n+1)-A000007(n)`
-/

namespace A112487.P1622961292863373517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032034 (n + 1) - A000007 n

end

end A112487.P1622961292863373517

/-! ## A112487.P9113506832231265082

`A032034(n+1)/A054977(n)`
-/

namespace A112487.P9113506832231265082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032034 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A112487.P9113506832231265082

/-! ## A112487.P13043492751756969412

`A032034(n+1)^abs(A134824(n))`
-/

namespace A112487.P13043492751756969412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032034 (n + 1) : ℚ) ^ (|A134824 n| : ℤ)

end

end A112487.P13043492751756969412

/-! ## A112487.P6984942967078428842

`A032034(n+1)-A008683(A016754(n))`
-/

namespace A112487.P6984942967078428842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032034 (n + 1) - A008683 (A016754 n).toNat

end

end A112487.P6984942967078428842

/-! ## A112487.P5389461068889483656

`A020639(A005893(n))*A032188(n+1)`
-/

namespace A112487.P5389461068889483656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat * A032188 (n + 1)

end

end A112487.P5389461068889483656

/-! ## A112487.P9137570088079706042

`A020639(A005897(n))*A032188(n+1)`
-/

namespace A112487.P9137570088079706042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005897 n).toNat * A032188 (n + 1)

end

end A112487.P9137570088079706042

/-! ## A112487.P11268032193027543469

`A020639(A005899(n))*A032188(n+1)`
-/

namespace A112487.P11268032193027543469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005899 n).toNat * A032188 (n + 1)

end

end A112487.P11268032193027543469

/-! ## A112487.P17950999549514106867

`A020639(A005901(n))*A032188(n+1)`
-/

namespace A112487.P17950999549514106867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005901 n).toNat * A032188 (n + 1)

end

end A112487.P17950999549514106867

/-! ## A112487.P16489360477718136255

`A020639(A007899(n))*A032188(n+1)`
-/

namespace A112487.P16489360477718136255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007899 n).toNat * A032188 (n + 1)

end

end A112487.P16489360477718136255

/-! ## A112487.P15368026052282659003

`A032034(n+1)+A008683(2*A016754(n))`
-/

namespace A112487.P15368026052282659003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032034 (n + 1) + A008683 (2 * A016754 n).toNat

end

end A112487.P15368026052282659003

/-!
# A112488: Third column of triangle A112486 used for e.g.f.s of |Stirling1| = |A008275| diagonals.

The programs for A112488, the canonical program `A112488.P12195218145674663644` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112488 has offset 2).

The definition of A112488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112488.P12195218145674663644

`(n+4)*a(n-1)+(n+3)*A001705(n+1)` with `a(0)=3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112488

/-- `(n+4)*a(n-1)+(n+3)*A001705(n+1)` -/
def P12195218145674663644.Spec : Prop :=
  ∀ n, P12195218145674663644.a n = A112488 (n + 2)

theorem P12195218145674663644.correct : P12195218145674663644.Spec := by
  intro n
  simp only [A112488, Nat.add_sub_cancel]

end A112488

/-! ## A112488.P7613610130763672542

`A000483(n+6)/(n+5)`
-/

namespace A112488.P7613610130763672542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000483 (n + 6) : ℚ) / (n + 5 : ℚ)

end

end A112488.P7613610130763672542

namespace A112488

/-- `A000483(n+6)/(n+5)` -/
def P7613610130763672542.Spec : Prop :=
  ∀ n, P7613610130763672542.a n = (A112488 (n + 2) : ℚ)

end A112488

/-! ## A112488.P14899716704343765421

`A269940(A167614(n+1))+(n+3)!*∑[1/(n+2)]`
-/

namespace A112488.P14899716704343765421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269940 (A167614 (n + 1)).toNat : ℚ) + (Nat.factorial (n + 3) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112488.P14899716704343765421

namespace A112488

/-- `A269940(A167614(n+1))+(n+3)!*∑[1/(n+2)]` -/
def P14899716704343765421.Spec : Prop :=
  ∀ n, P14899716704343765421.a n = (A112488 (n + 2) : ℚ)

end A112488

/-! ## A112488.P5157371077208480675

`A112486(∑[n+2]+3)`
-/

namespace A112488.P5157371077208480675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A112488.P5157371077208480675

namespace A112488

/-- `A112486(∑[n+2]+3)` -/
def P5157371077208480675.Spec : Prop :=
  ∀ n, P5157371077208480675.a n = A112488 (n + 2)

end A112488

/-!
# A112489: Fourth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

The programs for A112489, the canonical program `A112489.P5073704333748817868` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112489 has offset 3).

The definition of A112489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112489.P5073704333748817868

`(n+6)*a(n-1)+(n+5)*A112488(n+2)` with `a(0)=15`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112489

/-- `(n+6)*a(n-1)+(n+5)*A112488(n+2)` -/
def P5073704333748817868.Spec : Prop :=
  ∀ n, P5073704333748817868.a n = A112489 (n + 3)

theorem P5073704333748817868.correct : P5073704333748817868.Spec := by
  intro n
  simp only [A112489, Nat.add_sub_cancel]

end A112489

/-! ## A112489.P11335833934188175054

`A112486(A167614(n+2))`
-/

namespace A112489.P11335833934188175054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A167614 (n + 2)).toNat

end

end A112489.P11335833934188175054

namespace A112489

/-- `A112486(A167614(n+2))` -/
def P11335833934188175054.Spec : Prop :=
  ∀ n, P11335833934188175054.a n = A112489 (n + 3)

end A112489

/-! ## A112489.P6540897135775012474

`A112486(A141214(n)+6)`
-/

namespace A112489.P6540897135775012474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A141214 n + 6).toNat

end

end A112489.P6540897135775012474

namespace A112489

/-- `A112486(A141214(n)+6)` -/
def P6540897135775012474.Spec : Prop :=
  ∀ n, P6540897135775012474.a n = A112489 (n + 3)

end A112489

/-! ## A112489.P1950296111126817520

`A112486(A052905(n)+8)`
-/

namespace A112489.P1950296111126817520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A052905 n + 8).toNat

end

end A112489.P1950296111126817520

namespace A112489

/-- `A112486(A052905(n)+8)` -/
def P1950296111126817520.Spec : Prop :=
  ∀ n, P1950296111126817520.a n = A112489 (n + 3)

end A112489

/-! ## A112489.P10378519379506407368

`A112486(A055999(n)+9)`
-/

namespace A112489.P10378519379506407368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A055999 n + 9).toNat

end

end A112489.P10378519379506407368

namespace A112489

/-- `A112486(A055999(n)+9)` -/
def P10378519379506407368.Spec : Prop :=
  ∀ n, P10378519379506407368.a n = A112489 (n + 3)

end A112489

/-!
# A112490: Fifth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

The programs for A112490, the canonical program `A112490.P9190031474120083192` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112490 has offset 4).

The definition of A112490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112490.P9190031474120083192

`(n+8)*a(n-1)+(n+7)*A112489(n+3)` with `a(0)=105`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A112490

/-- `(n+8)*a(n-1)+(n+7)*A112489(n+3)` -/
def P9190031474120083192.Spec : Prop :=
  ∀ n, P9190031474120083192.a n = A112490 (n + 4)

theorem P9190031474120083192.correct : P9190031474120083192.Spec := by
  intro n
  simp only [A112490, Nat.add_sub_cancel]

end A112490

/-! ## A112490.P7156882874990791242

`A112486(A155212(n)+12)`
-/

namespace A112490.P7156882874990791242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A155212 n + 12).toNat

end

end A112490.P7156882874990791242

namespace A112490

/-- `A112486(A155212(n)+12)` -/
def P7156882874990791242.Spec : Prop :=
  ∀ n, P7156882874990791242.a n = A112490 (n + 4)

end A112490

/-! ## A112490.P10713018648611512897

`A112486(eq[4, A002262(n)])`
-/

namespace A112490.P10713018648611512897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112490.P10713018648611512897

namespace A112490

/-- `A112486(eq[4, A002262(n)])` -/
def P10713018648611512897.Spec : Prop :=
  ∀ n, P10713018648611512897.a n = A112490 (n + 4)

end A112490

/-! ## A112490.P5478285374278611002

`A112486(eq[16, A059268(n)])`
-/

namespace A112490.P5478285374278611002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112490.P5478285374278611002

namespace A112490

/-- `A112486(eq[16, A059268(n)])` -/
def P5478285374278611002.Spec : Prop :=
  ∀ n, P5478285374278611002.a n = A112490 (n + 4)

end A112490

/-! ## A112490.P6315350949891517300

`A112486(A166136(n+3)-2)`
-/

namespace A112490.P6315350949891517300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A166136 (n + 3) - 2).toNat

end

end A112490.P6315350949891517300

namespace A112490

/-- `A112486(A166136(n+3)-2)` -/
def P6315350949891517300.Spec : Prop :=
  ∀ n, P6315350949891517300.a n = A112490 (n + 4)

end A112490

/-!
# A112491: Sixth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

The programs for A112491, the canonical program `A112491.P10615726357068052905` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112491 has offset 5).

The definition of A112491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112491.P10615726357068052905

`(n+10)*a(n-1)+(n+9)*A112490(n+4)` with `a(0)=945`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112491

/-- `(n+10)*a(n-1)+(n+9)*A112490(n+4)` -/
def P10615726357068052905.Spec : Prop :=
  ∀ n, P10615726357068052905.a n = A112491 (n + 5)

theorem P10615726357068052905.correct : P10615726357068052905.Spec := by
  intro n
  simp only [A112491, Nat.add_sub_cancel]

end A112491

/-! ## A112491.P3330975960007590800

`A112486(A056115(n)+20)`
-/

namespace A112491.P3330975960007590800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A056115 n + 20).toNat

end

end A112491.P3330975960007590800

namespace A112491

/-- `A112486(A056115(n)+20)` -/
def P3330975960007590800.Spec : Prop :=
  ∀ n, P3330975960007590800.a n = A112491 (n + 5)

end A112491

/-! ## A112491.P17510369870125832029

`A112486(eq[5, A002262(n)])`
-/

namespace A112491.P17510369870125832029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112491.P17510369870125832029

namespace A112491

/-- `A112486(eq[5, A002262(n)])` -/
def P17510369870125832029.Spec : Prop :=
  ∀ n, P17510369870125832029.a n = A112491 (n + 5)

end A112491

/-! ## A112491.P3720860943565288174

`A112486(Δ[A264443(n)]+9)`
-/

namespace A112491.P3720860943565288174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (f1 (n + 1) - f1 n + 9).toNat

end

end A112491.P3720860943565288174

namespace A112491

/-- `A112486(Δ[A264443(n)]+9)` -/
def P3720860943565288174.Spec : Prop :=
  ∀ n, P3720860943565288174.a n = A112491 (n + 5)

end A112491

/-! ## A112491.P7887725244790714843

`A112486(A166136(n+4)-1)`
-/

namespace A112491.P7887725244790714843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112486 (A166136 (n + 4) - 1).toNat

end

end A112491.P7887725244790714843

namespace A112491

/-- `A112486(A166136(n+4)-1)` -/
def P7887725244790714843.Spec : Prop :=
  ∀ n, P7887725244790714843.a n = A112491 (n + 5)

end A112491

/-!
# A112492: Triangle from inverse scaled Pochhammer symbols.

The programs for A112492, the canonical program `A112492.P4044551849061559672` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112492 has offset 0).

The definition of A112492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112492.P4044551849061559672

`(col(n)+1)^(row(n)-col(n))*T(n-1,k-1)+col(n)!*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112492

/-- `(col(n)+1)^(row(n)-col(n))*T(n-1,k-1)+col(n)!*T(n-1,k)` -/
def P4044551849061559672.Spec : Prop :=
  ∀ n, P4044551849061559672.a n = (A112492 n : ℚ)

end A112492

/-! ## A112492.P11544960438569549535

`A008969(A056943(n)+1)`
-/

namespace A112492.P11544960438569549535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A056943 n + 1).toNat

end

end A112492.P11544960438569549535

namespace A112492

/-- `A008969(A056943(n)+1)` -/
def P11544960438569549535.Spec : Prop :=
  ∀ n, P11544960438569549535.a n = A112492 n

end A112492

/-! ## A112492.P132011619879363453

`A008969(A056942(n)+1-n)`
-/

namespace A112492.P132011619879363453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A056942 n + (1 - (n : ℤ))).toNat

end

end A112492.P132011619879363453

namespace A112492

/-- `A008969(A056942(n)+1-n)` -/
def P132011619879363453.Spec : Prop :=
  ∀ n, P132011619879363453.a n = A112492 n

end A112492

/-! ## A112492.P13696167839491487041

`A008969(1-(n-A056942(n)))`
-/

namespace A112492.P13696167839491487041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (1 - ((n : ℤ) - A056942 n)).toNat

end

end A112492.P13696167839491487041

namespace A112492

/-- `A008969(1-(n-A056942(n)))` -/
def P13696167839491487041.Spec : Prop :=
  ∀ n, P13696167839491487041.a n = A112492 n

end A112492

/-! ## A112492.P2978234795440644996

`A008969(A038722(n+1)-A003056(n))`
-/

namespace A112492.P2978234795440644996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A038722 (n + 1) - A003056 n).toNat

end

end A112492.P2978234795440644996

namespace A112492

/-- `A008969(A038722(n+1)-A003056(n))` -/
def P2978234795440644996.Spec : Prop :=
  ∀ n, P2978234795440644996.a n = A112492 n

end A112492

/-! ## A112492.P12864414405763339027

`A008969(A127739(n+1)-A051162(n))`
-/

namespace A112492.P12864414405763339027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A127739 (n + 1) - A051162 n).toNat

end

end A112492.P12864414405763339027

namespace A112492

/-- `A008969(A127739(n+1)-A051162(n))` -/
def P12864414405763339027.Spec : Prop :=
  ∀ n, P12864414405763339027.a n = A112492 n

end A112492

/-!
# A112493: Triangle read by rows, T(n, k) = Sum_{j=0..n} C(n-j, n-k)*E2(n, j), where E2 are the second-order Eulerian numbers A201637, for n >= 0 and 0 <= k <= n.

The programs for A112493, the canonical program `A112493.P13393537143063409669` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112493 has offset 0).

The definition of A112493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112493.P13393537143063409669

`A269939(n+1)+A269939(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112493

/-- `A269939(n+1)+A269939(n)` -/
def P13393537143063409669.Spec : Prop :=
  ∀ n, P13393537143063409669.a n = A112493 n

theorem P13393537143063409669.correct : P13393537143063409669.Spec := by
  intro n
  simp only [A112493]

end A112493

/-! ## A112493.P9285482364735265441

`A124324(A056537(n+1)-1)`
-/

namespace A112493.P9285482364735265441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (A056537 (n + 1) - 1).toNat

end

end A112493.P9285482364735265441

namespace A112493

/-- `A124324(A056537(n+1)-1)` -/
def P9285482364735265441.Spec : Prop :=
  ∀ n, P9285482364735265441.a n = A112493 n

end A112493

/-! ## A112493.P16670544437293510406

`A124324(A057428(n)+A056537(n+1))`
-/

namespace A112493.P16670544437293510406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (A057428 n + A056537 (n + 1)).toNat

end

end A112493.P16670544437293510406

namespace A112493

/-- `A124324(A057428(n)+A056537(n+1))` -/
def P16670544437293510406.Spec : Prop :=
  ∀ n, P16670544437293510406.a n = A112493 n

end A112493

/-! ## A112493.P4046356882102270138

`A124324(A134824(n)+A056537(n+1))`
-/

namespace A112493.P4046356882102270138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (A134824 n + A056537 (n + 1)).toNat

end

end A112493.P4046356882102270138

namespace A112493

/-- `A124324(A134824(n)+A056537(n+1))` -/
def P4046356882102270138.Spec : Prop :=
  ∀ n, P4046356882102270138.a n = A112493 n

end A112493

/-! ## A112493.P14288279192588568533

`A124324(A194061(n+1))`
-/

namespace A112493.P14288279192588568533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (A194061 (n + 1)).toNat

end

end A112493.P14288279192588568533

namespace A112493

/-- `A124324(A194061(n+1))` -/
def P14288279192588568533.Spec : Prop :=
  ∀ n, P14288279192588568533.a n = A112493 n

end A112493

/-!
# A112494: Sixth diagonal of the Stirling2 triangle A048993 and sixth column of triangle A008278.

The programs for A112494, the canonical program `A112494.P17689983258366522921` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112494 has offset 6).

The definition of A112494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112494.P17689983258366522921

`∑[(n+1)*∑[A259455(n+1)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112494

/-- `∑[(n+1)*∑[A259455(n+1)]]` -/
def P17689983258366522921.Spec : Prop :=
  ∀ n, P17689983258366522921.a n = A112494 (n + 6)

theorem P17689983258366522921.correct : P17689983258366522921.Spec := by
  intro n
  simp only [A112494, Nat.add_sub_cancel]

end A112494

/-! ## A112494.P10020458984355743587

`∑[(n+1)*A001298(n+1)]`
-/

namespace A112494.P10020458984355743587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112494.P10020458984355743587

namespace A112494

/-- `∑[(n+1)*A001298(n+1)]` -/
def P10020458984355743587.Spec : Prop :=
  ∀ n, P10020458984355743587.a n = A112494 (n + 6)

end A112494

/-! ## A112494.P18074751634714103250

`Δ[A144969(n+6)]/(n+1)`
-/

namespace A112494.P18074751634714103250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144969 (n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A112494.P18074751634714103250

namespace A112494

/-- `Δ[A144969(n+6)]/(n+1)` -/
def P18074751634714103250.Spec : Prop :=
  ∀ n, P18074751634714103250.a n = (A112494 (n + 6) : ℚ)

end A112494

/-! ## A112494.P6108003613435681172

`∑[(n+1)*∑[(n+1)*A001297(n+1)]]`
-/

namespace A112494.P6108003613435681172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112494.P6108003613435681172

namespace A112494

/-- `∑[(n+1)*∑[(n+1)*A001297(n+1)]]` -/
def P6108003613435681172.Spec : Prop :=
  ∀ n, P6108003613435681172.a n = A112494 (n + 6)

end A112494

/-! ## A112494.P2305426040056023846

`A211565(n+1)-A211564(n+2)`
-/

namespace A112494.P2305426040056023846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211565 (n + 1) - A211564 (n + 2)

end

end A112494.P2305426040056023846

namespace A112494

/-- `A211565(n+1)-A211564(n+2)` -/
def P2305426040056023846.Spec : Prop :=
  ∀ n, P2305426040056023846.a n = A112494 (n + 6)

end A112494

/-! ## A112494.P14703819604876396843

`(A144969(n+7)-A144969(n+6))/(n+1)`
-/

namespace A112494.P14703819604876396843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144969 (n + 7) - A144969 (n + 6) : ℚ) / (n + 1 : ℚ)

end

end A112494.P14703819604876396843

namespace A112494

/-- `(A144969(n+7)-A144969(n+6))/(n+1)` -/
def P14703819604876396843.Spec : Prop :=
  ∀ n, P14703819604876396843.a n = (A112494 (n + 6) : ℚ)

end A112494

/-! ## A112494.P16276600497696765589

`record[A048993(A052905(n)-1)]`
-/

namespace A112494.P16276600497696765589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112494.P16276600497696765589

namespace A112494

/-- `record[A048993(A052905(n)-1)]` -/
def P16276600497696765589.Spec : Prop :=
  ∀ n, P16276600497696765589.a n = A112494 (n + 6)

end A112494

/-! ## A112494.P655927452080851718

`A008277(A302537(n+2)-2*n)`
-/

namespace A112494.P655927452080851718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A302537 (n + 2) - (2 * n : ℤ)).toNat

end

end A112494.P655927452080851718

namespace A112494

/-- `A008277(A302537(n+2)-2*n)` -/
def P655927452080851718.Spec : Prop :=
  ∀ n, P655927452080851718.a n = A112494 (n + 6)

end A112494

/-! ## A112494.P17373949051179490194

`A037963(n+1)/A000142(n+1)`
-/

namespace A112494.P17373949051179490194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037963 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A112494.P17373949051179490194

namespace A112494

/-- `A037963(n+1)/A000142(n+1)` -/
def P17373949051179490194.Spec : Prop :=
  ∀ n, P17373949051179490194.a n = (A112494 (n + 6) : ℚ)

end A112494

/-! ## A112494.P14957749098148502186

`A001296(n+1)/A037960(n+1)*A037963(n+1)`
-/

namespace A112494.P14957749098148502186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001296 (n + 1) : ℚ) / (A037960 (n + 1) : ℚ) * (A037963 (n + 1) : ℚ)

end

end A112494.P14957749098148502186

namespace A112494

/-- `A001296(n+1)/A037960(n+1)*A037963(n+1)` -/
def P14957749098148502186.Spec : Prop :=
  ∀ n, P14957749098148502186.a n = (A112494 (n + 6) : ℚ)

end A112494

/-!
# A112495: Third column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

The programs for A112495, the canonical program `A112495.P7859627621178874014` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112495 has offset 0).

The definition of A112495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112495.P7859627621178874014

`3*a(n-1)+(n+3)*(2^(n+2)-(n+3))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112495

/-- `3*a(n-1)+(n+3)*(2^(n+2)-(n+3))` -/
def P7859627621178874014.Spec : Prop :=
  ∀ n, P7859627621178874014.a n = A112495 n

theorem P7859627621178874014.correct : P7859627621178874014.Spec := by
  intro n
  simp only [A112495]

end A112495

/-! ## A112495.P11354377750124009710

`3^(n+4)/2-(n+6)*2^(n+3)+n²/2+9*n/2+21/2`
-/

namespace A112495.P11354377750124009710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 4) : ℚ) / 2 - ((n + 6) * 2 ^ (n + 3) : ℚ) + (n ^ 2 : ℚ) / 2 + (9 * n : ℚ) / 2 + (21 : ℚ) / 2

end

end A112495.P11354377750124009710

namespace A112495

/-- `3^(n+4)/2-(n+6)*2^(n+3)+n²/2+9*n/2+21/2` -/
def P11354377750124009710.Spec : Prop :=
  ∀ n, P11354377750124009710.a n = (A112495 n : ℚ)

theorem P11354377750124009710.correct : P11354377750124009710.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A112495, Nat.add_sub_cancel, A112495.P11354377750124009710.a, A112495.P7859627621178874014.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A112495, Nat.add_sub_cancel, A112495.P11354377750124009710.a, A112495.P7859627621178874014.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A112495

/-! ## A112495.P17690435294968116894

`∑[A309000(n+3)]`
-/

namespace A112495.P17690435294968116894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309000 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112495.P17690435294968116894

namespace A112495

/-- `∑[A309000(n+3)]` -/
def P17690435294968116894.Spec : Prop :=
  ∀ n, P17690435294968116894.a n = A112495 n

end A112495

/-! ## A112495.P16203906583425939414

`∑[A066810(n+3)-A000295(n+3)]`
-/

namespace A112495.P16203906583425939414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066810 (n + 3) - A000295 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112495.P16203906583425939414

namespace A112495

/-- `∑[A066810(n+3)-A000295(n+3)]` -/
def P16203906583425939414.Spec : Prop :=
  ∀ n, P16203906583425939414.a n = A112495 n

end A112495

/-! ## A112495.P1191278485508351403

`∑[A028243(n+4)-A058877(n+3)]`
-/

namespace A112495.P1191278485508351403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 4) - A058877 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112495.P1191278485508351403

namespace A112495

/-- `∑[A028243(n+4)-A058877(n+3)]` -/
def P1191278485508351403.Spec : Prop :=
  ∀ n, P1191278485508351403.a n = A112495 n

end A112495

/-! ## A112495.P5546206016706944304

`A124324(eq[2, A055087(n)])`
-/

namespace A112495.P5546206016706944304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112495.P5546206016706944304

namespace A112495

/-- `A124324(eq[2, A055087(n)])` -/
def P5546206016706944304.Spec : Prop :=
  ∀ n, P5546206016706944304.a n = A112495 n

end A112495

/-!
# A112496: Fourth column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

The programs for A112496, the canonical program `A112496.P6425279445534494343` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112496 has offset 0).

The definition of A112496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112496.P6425279445534494343

`4*a(n-1)+(n+5)*A112495(n)` with `a(0)=15`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112496

/-- `4*a(n-1)+(n+5)*A112495(n)` -/
def P6425279445534494343.Spec : Prop :=
  ∀ n, P6425279445534494343.a n = A112496 n

theorem P6425279445534494343.correct : P6425279445534494343.Spec := by
  intro n
  simp only [A112496]

end A112496

/-! ## A112496.P17142357122975132373

`A124324(eq[3, n%floor(sqrt(n+1))])`
-/

namespace A112496.P17142357122975132373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A112496.P17142357122975132373

namespace A112496

/-- `A124324(eq[3, n%floor(sqrt(n+1))])` -/
def P17142357122975132373.Spec : Prop :=
  ∀ n, P17142357122975132373.a n = A112496 n

end A112496

/-! ## A112496.P1221433337303223911

`A124324(eq[3, A055087(n)])`
-/

namespace A112496.P1221433337303223911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112496.P1221433337303223911

namespace A112496

/-- `A124324(eq[3, A055087(n)])` -/
def P1221433337303223911.Spec : Prop :=
  ∀ n, P1221433337303223911.a n = A112496 n

end A112496

/-! ## A112496.P5758360913563358780

`A112493(A167614(n+2))`
-/

namespace A112496.P5758360913563358780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A167614 (n + 2)).toNat

end

end A112496.P5758360913563358780

namespace A112496

/-- `A112493(A167614(n+2))` -/
def P5758360913563358780.Spec : Prop :=
  ∀ n, P5758360913563358780.a n = A112496 n

end A112496

/-! ## A112496.P17407596109352175664

`A112493(A000217(n+3)+3)`
-/

namespace A112496.P17407596109352175664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A000217 (n + 3) + 3).toNat

end

end A112496.P17407596109352175664

namespace A112496

/-- `A112493(A000217(n+3)+3)` -/
def P17407596109352175664.Spec : Prop :=
  ∀ n, P17407596109352175664.a n = A112496 n

end A112496

/-!
# A112497: Fifth column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

The programs for A112497, the canonical program `A112497.P5345261462036478010` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112497 has offset 0).

The definition of A112497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112497.P5345261462036478010

`5*a(n-1)+(n+7)*A112496(n)` with `a(0)=105`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112497

/-- `5*a(n-1)+(n+7)*A112496(n)` -/
def P5345261462036478010.Spec : Prop :=
  ∀ n, P5345261462036478010.a n = A112497 n

theorem P5345261462036478010.correct : P5345261462036478010.Spec := by
  intro n
  simp only [A112497]

end A112497

/-! ## A112497.P3433624100741853230

`A124324(eq[4, n%floor(sqrt(n+1))])`
-/

namespace A112497.P3433624100741853230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A112497.P3433624100741853230

namespace A112497

/-- `A124324(eq[4, n%floor(sqrt(n+1))])` -/
def P3433624100741853230.Spec : Prop :=
  ∀ n, P3433624100741853230.a n = A112497 n

end A112497

/-! ## A112497.P141754531916010207

`A124324(eq[4, A055087(n)])`
-/

namespace A112497.P141754531916010207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112497.P141754531916010207

namespace A112497

/-- `A124324(eq[4, A055087(n)])` -/
def P141754531916010207.Spec : Prop :=
  ∀ n, P141754531916010207.a n = A112497 n

end A112497

/-!
# A112498: Third column of second-order Eulerian triangle A008517 divided by 2.

The programs for A112498, the canonical program `A112498.P12366548606719874813` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112498 has offset 3).

The definition of A112498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112498.P12366548606719874813

`3*a(n-1)+(2*(n+3)-3)*(2^(n+2)-(n+3))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112498

/-- `3*a(n-1)+(2*(n+3)-3)*(2^(n+2)-(n+3))` -/
def P12366548606719874813.Spec : Prop :=
  ∀ n, P12366548606719874813.a n = A112498 (n + 3)

theorem P12366548606719874813.correct : P12366548606719874813.Spec := by
  intro n
  simp only [A112498, Nat.add_sub_cancel]

end A112498

/-! ## A112498.P11211935958558009

`A004301(n+3)/2`
-/

namespace A112498.P11211935958558009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004301 (n + 3) : ℚ) / 2

end

end A112498.P11211935958558009

namespace A112498

/-- `A004301(n+3)/2` -/
def P11211935958558009.Spec : Prop :=
  ∀ n, P11211935958558009.a n = (A112498 (n + 3) : ℚ)

end A112498

/-! ## A112498.P5478417839947930055

`A055357(n+4)+A000460(n+3)`
-/

namespace A112498.P5478417839947930055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055357 (n + 4) + A000460 (n + 3)

end

end A112498.P5478417839947930055

namespace A112498

/-- `A055357(n+4)+A000460(n+3)` -/
def P5478417839947930055.Spec : Prop :=
  ∀ n, P5478417839947930055.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P16645228487818689288

`A249999(n)+2*A000460(n+3)`
-/

namespace A112498.P16645228487818689288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249999 n + 2 * A000460 (n + 3)

end

end A112498.P16645228487818689288

namespace A112498

/-- `A249999(n)+2*A000460(n+3)` -/
def P16645228487818689288.Spec : Prop :=
  ∀ n, P16645228487818689288.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P8704050044865046357

`2*A055357(n+4)-A249999(n)`
-/

namespace A112498.P8704050044865046357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055357 (n + 4) - A249999 n

end

end A112498.P8704050044865046357

namespace A112498

/-- `2*A055357(n+4)-A249999(n)` -/
def P8704050044865046357.Spec : Prop :=
  ∀ n, P8704050044865046357.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P15482769814470822168

`3*A055357(n+4)-A112495(n)`
-/

namespace A112498.P15482769814470822168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055357 (n + 4) - A112495 n

end

end A112498.P15482769814470822168

namespace A112498

/-- `3*A055357(n+4)-A112495(n)` -/
def P15482769814470822168.Spec : Prop :=
  ∀ n, P15482769814470822168.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P13006466142293192235

`A000460(n+3)+A112495(n)-A249999(n)`
-/

namespace A112498.P13006466142293192235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000460 (n + 3) + (A112495 n - A249999 n)

end

end A112498.P13006466142293192235

namespace A112498

/-- `A000460(n+3)+A112495(n)-A249999(n)` -/
def P13006466142293192235.Spec : Prop :=
  ∀ n, P13006466142293192235.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P1192256873066176687

`A055357(n+4)+A008292(A167614(n+1))`
-/

namespace A112498.P1192256873066176687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055357 (n + 4) + A008292 (A167614 (n + 1)).toNat

end

end A112498.P1192256873066176687

namespace A112498

/-- `A055357(n+4)+A008292(A167614(n+1))` -/
def P1192256873066176687.Spec : Prop :=
  ∀ n, P1192256873066176687.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P2380515769629258925

`A055356(∑[n+3]+6)+A000460(n+3)`
-/

namespace A112498.P2380515769629258925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (∑ j ∈ Finset.range (n + 1), f1 j + 6) + A000460 (n + 3)

end

end A112498.P2380515769629258925

namespace A112498

/-- `A055356(∑[n+3]+6)+A000460(n+3)` -/
def P2380515769629258925.Spec : Prop :=
  ∀ n, P2380515769629258925.a n = A112498 (n + 3)

end A112498

/-! ## A112498.P8531852589589275293

`A008517(A167614(n+1))/2`
-/

namespace A112498.P8531852589589275293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008517 (A167614 (n + 1)).toNat : ℚ) / 2

end

end A112498.P8531852589589275293

namespace A112498

/-- `A008517(A167614(n+1))/2` -/
def P8531852589589275293.Spec : Prop :=
  ∀ n, P8531852589589275293.a n = (A112498 (n + 3) : ℚ)

end A112498

/-!
# A112499: Fourth column of second-order Eulerian triangle A008517 divided by 4.

The programs for A112499, the canonical program `A112499.P17572420341526104129` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112499 has offset 4).

The definition of A112499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112499.P17572420341526104129

`4*a(n-1)+(n+2)*A112498(n+3)` with `a(0)=6`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A112499

/-- `4*a(n-1)+(n+2)*A112498(n+3)` -/
def P17572420341526104129.Spec : Prop :=
  ∀ n, P17572420341526104129.a n = A112499 (n + 4)

theorem P17572420341526104129.correct : P17572420341526104129.Spec := by
  intro n
  simp only [A112499, Nat.add_sub_cancel]

end A112499

/-! ## A112499.P468231818205023262

`A006260(n+4)/4`
-/

namespace A112499.P468231818205023262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006260 (n + 4) : ℚ) / 4

end

end A112499.P468231818205023262

namespace A112499

/-- `A006260(n+4)/4` -/
def P468231818205023262.Spec : Prop :=
  ∀ n, P468231818205023262.a n = (A112499 (n + 4) : ℚ)

end A112499

/-! ## A112499.P7242001797336561885

`A201637(A167614(n+3))/4`
-/

namespace A112499.P7242001797336561885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201637 (A167614 (n + 3)).toNat : ℚ) / 4

end

end A112499.P7242001797336561885

namespace A112499

/-- `A201637(A167614(n+3))/4` -/
def P7242001797336561885.Spec : Prop :=
  ∀ n, P7242001797336561885.a n = (A112499 (n + 4) : ℚ)

end A112499

/-! ## A112499.P2860987770177662731

`A008517(A167614(n+2)+1)/4`
-/

namespace A112499.P2860987770177662731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008517 (A167614 (n + 2) + 1).toNat : ℚ) / 4

end

end A112499.P2860987770177662731

namespace A112499

/-- `A008517(A167614(n+2)+1)/4` -/
def P2860987770177662731.Spec : Prop :=
  ∀ n, P2860987770177662731.a n = (A112499 (n + 4) : ℚ)

end A112499

/-! ## A112499.P14166864018169088825

`A112007(A046691(n+2))/4`
-/

namespace A112499.P14166864018169088825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112007 (A046691 (n + 2)).toNat : ℚ) / 4

end

end A112499.P14166864018169088825

namespace A112499

/-- `A112007(A046691(n+2))/4` -/
def P14166864018169088825.Spec : Prop :=
  ∀ n, P14166864018169088825.a n = (A112499 (n + 4) : ℚ)

end A112499

/-! ## A112499.P17555947389229967049

`A288874(Δ[A023545(n+1)])/4`
-/

namespace A112499.P17555947389229967049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288874 (f1 (n + 1) - f1 n).toNat : ℚ) / 4

end

end A112499.P17555947389229967049

namespace A112499

/-- `A288874(Δ[A023545(n+1)])/4` -/
def P17555947389229967049.Spec : Prop :=
  ∀ n, P17555947389229967049.a n = (A112499 (n + 4) : ℚ)

end A112499

