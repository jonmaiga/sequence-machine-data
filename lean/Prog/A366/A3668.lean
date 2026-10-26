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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A366800: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366799(i) = A366799(j) for all i, j >= 0, where A366799 is the number of divisors d of n that are not of the form 4k+2, as permuted by the Doudna sequence.

The programs for A366800, there is no canonical definition to state claims against.
-/

/-! ## A366800.P18341491771144182527

`A036042(A267148(or(1, n)-1)%A121507(n+1))`
-/

namespace A366800.P18341491771144182527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (Int.tmod (A267148 (Nat.lor 1 n - 1)) (A121507 (n + 1))).toNat

end

end A366800.P18341491771144182527

/-! ## A366800.P17172660928552621849

`A036042(A267148(or(1, n)-1))%A227211(n+1)`
-/

namespace A366800.P17172660928552621849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036042 (A267148 (Nat.lor 1 n - 1)).toNat) (A227211 (n + 1))

end

end A366800.P17172660928552621849

/-!
# A366801: Arithmetic derivative without its inherited divisor applied to the Doudna sequence: a(n) = A342001(A005940(1+n)).

The programs for A366801, the canonical program `A366801.P8669775455614987768` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366801 has offset 0).

The definition of A366801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366801.P8669775455614987768

`A342001(A005940(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A366801

/-- `A342001(A005940(1+n))` -/
def P8669775455614987768.Spec : Prop :=
  ∀ n, P8669775455614987768.a n = A366801 n

theorem P8669775455614987768.correct : P8669775455614987768.Spec := by
  intro n
  simp only [A366801]

end A366801

/-! ## A366801.P3173185729404020864

`A342001(A364499(n+1)+n+1)`
-/

namespace A366801.P3173185729404020864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A364499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A366801.P3173185729404020864

namespace A366801

/-- `A342001(A364499(n+1)+n+1)` -/
def P3173185729404020864.Spec : Prop :=
  ∀ n, P3173185729404020864.a n = A366801 n

end A366801

/-! ## A366801.P16392411047173290946

`A342001(A324394(n)*A324395(n))`
-/

namespace A366801.P16392411047173290946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A324394 n * A324395 n).toNat

end

end A366801.P16392411047173290946

namespace A366801

/-- `A342001(A324394(n)*A324395(n))` -/
def P16392411047173290946.Spec : Prop :=
  ∀ n, P16392411047173290946.a n = A366801 n

end A366801

/-! ## A366801.P6916470240467155131

`A342001(A337375(n)*A337376(n))`
-/

namespace A366801.P6916470240467155131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A337375 n * A337376 n).toNat

end

end A366801.P6916470240467155131

namespace A366801

/-- `A342001(A337375(n)*A337376(n))` -/
def P6916470240467155131.Spec : Prop :=
  ∀ n, P6916470240467155131.a n = A366801 n

end A366801

/-! ## A366801.P5878943287264501850

`A342001(A340362(n+1)+A324106(n+1))`
-/

namespace A366801.P5878943287264501850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A366801.P5878943287264501850

namespace A366801

/-- `A342001(A340362(n+1)+A324106(n+1))` -/
def P5878943287264501850.Spec : Prop :=
  ∀ n, P5878943287264501850.a n = A366801 n

end A366801

/-! ## A366801.P3529672909347123366

`A342001(A324641(n+1)-A324640(n+1))`
-/

namespace A366801.P3529672909347123366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A366801.P3529672909347123366

namespace A366801

/-- `A342001(A324641(n+1)-A324640(n+1))` -/
def P3529672909347123366.Spec : Prop :=
  ∀ n, P3529672909347123366.a n = A366801 n

end A366801

/-! ## A366801.P9415713196520822098

`A342001(A364500(n+1)*A364502(n+1))`
-/

namespace A366801.P9415713196520822098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A364500 (n + 1) * A364502 (n + 1)).toNat

end

end A366801.P9415713196520822098

namespace A366801

/-- `A342001(A364500(n+1)*A364502(n+1))` -/
def P9415713196520822098.Spec : Prop :=
  ∀ n, P9415713196520822098.a n = A366801 n

end A366801

/-! ## A366801.P6275991315375713605

`A351954(A276083(n))`
-/

namespace A366801.P6275991315375713605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351954 (A276083 n).toNat

end

end A366801.P6275991315375713605

namespace A366801

/-- `A351954(A276083(n))` -/
def P6275991315375713605.Spec : Prop :=
  ∀ n, P6275991315375713605.a n = A366801 n

end A366801

/-!
# A366802: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366801(i) = A366801(j) for all i, j >= 0, where A366801 is arithmetic derivative without its inherited divisor applied to the Doudna sequence.

The programs for A366802, there is no canonical definition to state claims against.
-/

/-! ## A366802.P2207898548905634077

`or(A183152(A011845(n)), A331745(n))`
-/

namespace A366802.P2207898548905634077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183152 (A011845 n).toNat) (A331745 n)

end

end A366802.P2207898548905634077

/-! ## A366802.P7356231479136024260

`A103391(n+1)+A002962(A208891(3*n))`
-/

namespace A366802.P7356231479136024260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 1) + A002962 (A208891 (3 * n)).toNat

end

end A366802.P7356231479136024260

/-! ## A366802.P6403797682306829329

`A007895(A087940(n+1)-n)`
-/

namespace A366802.P6403797682306829329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A087940 (n + 1) - (n : ℤ)).toNat

end

end A366802.P6403797682306829329

/-! ## A366802.P16682734304025331556

`A331745(A309864(n)+A023443(n))`
-/

namespace A366802.P16682734304025331556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331745 (A309864 n + A023443 n).toNat

end

end A366802.P16682734304025331556

/-!
# A366803: Dirichlet convolution of Liouville's lambda with A342001 applied to Doudna sequence: a(n) = A347395(A005940(1+n)).

The programs for A366803, the canonical program `A366803.P14628271087135983383` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366803 has offset 0).

The definition of A366803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A347395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366803.P14628271087135983383

`A347395(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A366803

/-- `A347395(A005940(1+n))` -/
def P14628271087135983383.Spec : Prop :=
  ∀ n, P14628271087135983383.a n = A366803 n

theorem P14628271087135983383.correct : P14628271087135983383.Spec := by
  intro n
  simp only [A366803]

end A366803

/-! ## A366803.P9685621527203743085

`A347395(A324641(n+1)-A324640(n+1))`
-/

namespace A366803.P9685621527203743085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A366803.P9685621527203743085

namespace A366803

/-- `A347395(A324641(n+1)-A324640(n+1))` -/
def P9685621527203743085.Spec : Prop :=
  ∀ n, P9685621527203743085.a n = A366803 n

end A366803

/-!
# A366805: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366803(i) = A366803(j) for all i, j >= 0.

The programs for A366805, there is no canonical definition to state claims against.
-/

/-! ## A366805.P8587846919289628164

`A164996(A128901(n+1))`
-/

namespace A366805.P8587846919289628164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 (A128901 (n + 1)).toNat

end

end A366805.P8587846919289628164

/-!
# A366806: Lexicographically earliest infinite sequence such that a(i) = a(j) => A324186(i) = A324186(j) for all i, j >= 0, where A324186 is the sum of odd divisors permuted by A163511.

The programs for A366806, there is no canonical definition to state claims against.
-/

/-! ## A366806.P4215601235961376354

`A366881(gcd(n, A081125(n)))`
-/

namespace A366806.P4215601235961376354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366881 (Int.gcd (n : ℤ) (A081125 n))

end

end A366806.P4215601235961376354

/-! ## A366806.P14807399222775068045

`gcd(A087299(n), A366881(n))`
-/

namespace A366806.P14807399222775068045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087299 n) (A366881 n)

end

end A366806.P14807399222775068045

/-! ## A366806.P7424733338897836283

`A366881(n)%A250676(n+1)`
-/

namespace A366806.P7424733338897836283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366881 n) (A250676 (n + 1))

end

end A366806.P7424733338897836283

/-! ## A366806.P4018923531649551274

`A366881(n)+A010051(A000290(3*n+2))`
-/

namespace A366806.P4018923531649551274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366881 n + A010051 (A000290 (3 * n + 2)).toNat

end

end A366806.P4018923531649551274

/-! ## A366806.P8612511695552823069

`or(A010054(A366841(3*(n+3))), A366881(n))`
-/

namespace A366806.P8612511695552823069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A366841 (3 * (n + 3))).toNat) (A366881 n)

end

end A366806.P8612511695552823069

/-!
# A366807: a(n) = A020639(A120944(n))*A120944(n).

The programs for A366807, there is no canonical definition to state claims against.
-/

/-! ## A366807.P17160275432121256533

`A065642(A120944(n+1))`
-/

namespace A366807.P17160275432121256533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A120944 (n + 1)).toNat

end

end A366807.P17160275432121256533

/-! ## A366807.P2511539940093670206

`A020639(A120944(n+1))*A120944(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366807.P2511539940093670206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120944 (n + 1)).toNat * A120944 (n + 1)

end

end A366807.P2511539940093670206

/-! ## A366807.P8023619950999252890

`A065642(A177493(n+1)^(1/3))`
-/

namespace A366807.P8023619950999252890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway ((A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A366807.P8023619950999252890

/-! ## A366807.P13208492257813108780

`lcm(A120944(n+1), A394049(n+1))`
-/

namespace A366807.P13208492257813108780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A120944 (n + 1)) (A394049 (n + 1))

end

end A366807.P13208492257813108780

/-! ## A366807.P13190900628257552002

`A065642(A000469(n+2))`
-/

namespace A366807.P13190900628257552002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A000469 (n + 2)).toNat

end

end A366807.P13190900628257552002

/-! ## A366807.P10073772602940854295

`A065642(∩[A002808(n+1), A005117(n+1)])`
-/

namespace A366807.P10073772602940854295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A366807.P10073772602940854295

/-! ## A366807.P11760680876113019576

`A253288(A120944(2*n+1-n))`
-/

namespace A366807.P11760680876113019576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253288 (A120944 (2 * n + 1 - n)).toNat

end

end A366807.P11760680876113019576

/-! ## A366807.P13520164050726904899

`A177493(n+1)^(1/3)*A028233(A120944(n+1))`
-/

namespace A366807.P13520164050726904899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) * (A028233 (A120944 (n + 1)).toNat : ℝ)

end

end A366807.P13520164050726904899

/-! ## A366807.P1329605250334301750

`A177493(n+1)^(1/3)*A028233(A177493(n+1)^(1/3))`
-/

namespace A366807.P1329605250334301750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) * (A028233 (SequenceMachineLib.roundAway ((A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat : ℝ)

end

end A366807.P1329605250334301750

/-! ## A366807.P11075335200434918131

`A177493(n+1)^(1/3)*A277708(A177493(n+1)^(1/3))`
-/

namespace A366807.P11075335200434918131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) * (A277708 (SequenceMachineLib.roundAway ((A177493 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat : ℝ)

end

end A366807.P11075335200434918131

/-! ## A366807.P8191376856133288121

`filter[A285109(n+1), A359475(#)]`
-/

namespace A366807.P8191376856133288121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366807.P8191376856133288121

/-! ## A366807.P2102124800894330514

`filter[A366786(n+1), A355447(#)]`
-/

namespace A366807.P2102124800894330514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A366807.P2102124800894330514

/-! ## A366807.P4986849799147348604

`filter[A366786(n+1), A359475(#)]`
-/

namespace A366807.P4986849799147348604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366807.P4986849799147348604

/-! ## A366807.P16832836546450765670

`filter[A366786(n+3), A354108(#)]`
-/

namespace A366807.P16832836546450765670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A366807.P16832836546450765670

/-! ## A366807.P7068140595645819344

`A253288(A007947(A120944(n+1)²))`
-/

namespace A366807.P7068140595645819344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253288 (A007947 (A120944 (n + 1) ^ 2).toNat).toNat

end

end A366807.P7068140595645819344

/-! ## A366807.P488875888253399852

`filter[A366786(n+1), A049240(#)]`
-/

namespace A366807.P488875888253399852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A366807.P488875888253399852

/-! ## A366807.P14002354771142363521

`filter[A366786(n+1), A065202(#)]`
-/

namespace A366807.P14002354771142363521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A366807.P14002354771142363521

/-! ## A366807.P12011849405548684488

`filter[A366786(n+1), A389905(#)]`
-/

namespace A366807.P12011849405548684488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366807.P12011849405548684488

/-! ## A366807.P3658179334167963322

`filter[A366786(n+2), A380458(#)]`
-/

namespace A366807.P3658179334167963322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A366807.P3658179334167963322

/-! ## A366807.P15264139552735620400

`A358971(A120944(A253288(A253288(n+1))))`
-/

namespace A366807.P15264139552735620400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358971 (A120944 (A253288 (A253288 (n + 1)).toNat).toNat).toNat

end

end A366807.P15264139552735620400

/-!
# A366808: The number of divisors of prime(n)#-1 where p# is the product of all the primes from 2 to p inclusive.

The programs for A366808, there is no canonical definition to state claims against.
-/

/-! ## A366808.P3585974179485529884

`2^A054989(n+1)`
-/

namespace A366808.P3585974179485529884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054989 (n + 1) : ℤ)

end

end A366808.P3585974179485529884

/-! ## A366808.P8602982986011176409

`A000079(A126869(2*n+3)+A054989(n+1))`
-/

namespace A366808.P8602982986011176409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A126869 (2 * n + 3) + A054989 (n + 1)).toNat

end

end A366808.P8602982986011176409

/-! ## A366808.P16304351160982039703

`A077957(A020639(2*(n+2))*A054989(n+1))`
-/

namespace A366808.P16304351160982039703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A020639 (2 * (n + 2)) * A054989 (n + 1)).toNat

end

end A366808.P16304351160982039703

/-! ## A366808.P12226471875954159455

`2^(A056160(n+1)-A054988(n+1))`
-/

namespace A366808.P12226471875954159455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056160 (n + 1) - A054988 (n + 1) : ℤ)

end

end A366808.P12226471875954159455

/-! ## A366808.P3896970958045752898

`A000079(A056160(n+1)-A054988(n+1))`
-/

namespace A366808.P3896970958045752898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056160 (n + 1) - A054988 (n + 1)).toNat

end

end A366808.P3896970958045752898

/-!
# A366809: The sum of the divisors of prime(n)#-1 where p# is the product of all the primes from 2 to p inclusive.

The programs for A366809, there is no canonical definition to state claims against.
-/

/-! ## A366809.P6180656136134087357

`∑{d}[∑[A061720(n)], #]`
-/

namespace A366809.P6180656136134087357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366809.P6180656136134087357

/-! ## A366809.P5551995871634980445

`∑{d}[A057588(n+1), #]`
-/

namespace A366809.P5551995871634980445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366809.P5551995871634980445

/-! ## A366809.P2411337591318209999

`record[∑{d}[A347379(n+1), #]]`
-/

namespace A366809.P2411337591318209999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347379 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366809.P2411337591318209999

/-!
# A366810: a(n) = phi(prime(n)#-1) where phi is the Euler totient function and p# is the product of all the primes from 2 to p inclusive.

The programs for A366810, the canonical program `A366810.P13408643324010375878` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366810 has offset 1).

The definition of A366810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366810.P13408643324010375878

`A000010(A057588(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366810

/-- `A000010(A057588(n+1))` -/
def P13408643324010375878.Spec : Prop :=
  ∀ n, P13408643324010375878.a n = A366810 (n + 1)

theorem P13408643324010375878.correct : P13408643324010375878.Spec := by
  intro n
  simp only [A366810, Nat.add_sub_cancel]

end A366810

/-! ## A366810.P2219632880593755437

`∏{p}[1-A002110(n+1), #-1]`
-/

namespace A366810.P2219632880593755437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A366810.P2219632880593755437

namespace A366810

/-- `∏{p}[1-A002110(n+1), #-1]` -/
def P2219632880593755437.Spec : Prop :=
  ∀ n, P2219632880593755437.a n = A366810 (n + 1)

end A366810

/-! ## A366810.P1025888801735745033

`∏{p}[∏[A000040(n+1)]-1, #-1]`
-/

namespace A366810.P1025888801735745033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A366810.P1025888801735745033

namespace A366810

/-- `∏{p}[∏[A000040(n+1)]-1, #-1]` -/
def P1025888801735745033.Spec : Prop :=
  ∀ n, P1025888801735745033.a n = A366810 (n + 1)

end A366810

/-!
# A366811: The number of divisors of prime(n)#+1 where p# is the product of all the primes from 2 to p inclusive.

The programs for A366811, there is no canonical definition to state claims against.
-/

/-! ## A366811.P11050015901888416053

`2^A054988(A028310(n))`
-/

namespace A366811.P11050015901888416053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054988 (A028310 n).toNat : ℤ)

end

end A366811.P11050015901888416053

/-!
# A366812: The sum of the divisors of prime(n)#+1 where p# is the product of all the primes from 2 to p inclusive.

The programs for A366812, there is no canonical definition to state claims against.
-/

/-! ## A366812.P16986759880306462310

`∑{d}[∏[eq[n, ∏{d}[n, #]]]+1, #]`
-/

namespace A366812.P16986759880306462310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366812.P16986759880306462310

/-! ## A366812.P10645789821183566669

`∏{p}[∏[eq[n, ∏{d}[n, #]]]+1, #+1]`
-/

namespace A366812.P10645789821183566669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1)

end

end A366812.P10645789821183566669

/-! ## A366812.P7427343000261726600

`∑{d}[A006862(n), #]`
-/

namespace A366812.P7427343000261726600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366812.P7427343000261726600

/-! ## A366812.P11527497620757762647

`∑{d}[A370121(∑[n]), #]`
-/

namespace A366812.P11527497620757762647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366812.P11527497620757762647

/-!
# A366813: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+2,3).

The programs for A366813, the canonical program `A366813.P12433027138147570683` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366813 has offset 1).

The definition of A366813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366813.P12433027138147570683

`∑{d}[n+1, (-1)^((n+1)/#-1)*C(#+2, 3)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366813

/-- `∑{d}[n+1, (-1)^((n+1)/#-1)*C(#+2, 3)]` -/
def P12433027138147570683.Spec : Prop :=
  ∀ n, P12433027138147570683.a n = (A366813 (n + 1) : ℝ)

end A366813

/-! ## A366813.P5785582482705387103

`∑{d}[n+1, A048272(#)*A117108((n+1)/#)]`
-/

namespace A366813.P5785582482705387103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366813.P5785582482705387103

namespace A366813

/-- `∑{d}[n+1, A048272(#)*A117108((n+1)/#)]` -/
def P5785582482705387103.Spec : Prop :=
  ∀ n, P5785582482705387103.a n = A366813 (n + 1)

end A366813

/-! ## A366813.P7054269479973179360

`∑{d}[n+1, A117212(#)*A343544((n+1)/#)]`
-/

namespace A366813.P7054269479973179360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A343544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366813.P7054269479973179360

namespace A366813

/-- `∑{d}[n+1, A117212(#)*A343544((n+1)/#)]` -/
def P7054269479973179360.Spec : Prop :=
  ∀ n, P7054269479973179360.a n = A366813 (n + 1)

end A366813

/-! ## A366813.P13812225395229694479

`∑{d}[n+1, A230074(#)*A338046((n+1)/#)]`
-/

namespace A366813.P13812225395229694479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366813.P13812225395229694479

namespace A366813

/-- `∑{d}[n+1, A230074(#)*A338046((n+1)/#)]` -/
def P13812225395229694479.Spec : Prop :=
  ∀ n, P13812225395229694479.a n = A366813 (n + 1)

end A366813

/-!
# A366814: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+3,4).

The programs for A366814, the canonical program `A366814.P11989287238309037877` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366814 has offset 1).

The definition of A366814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366814.P11989287238309037877

`∑{d}[n+1, (-1)^((n+1)/#-1)*C(#+3, 4)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366814

/-- `∑{d}[n+1, (-1)^((n+1)/#-1)*C(#+3, 4)]` -/
def P11989287238309037877.Spec : Prop :=
  ∀ n, P11989287238309037877.a n = (A366814 (n + 1) : ℝ)

end A366814

/-! ## A366814.P17299134752434386413

`∑{d}[n+1, A048272(#)*A117109((n+1)/#)]`
-/

namespace A366814.P17299134752434386413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A117109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366814.P17299134752434386413

namespace A366814

/-- `∑{d}[n+1, A048272(#)*A117109((n+1)/#)]` -/
def P17299134752434386413.Spec : Prop :=
  ∀ n, P17299134752434386413.a n = A366814 (n + 1)

end A366814

/-! ## A366814.P6493619483422513450

`∑{d}[n+1, A117212(#)*A343545((n+1)/#)]`
-/

namespace A366814.P6493619483422513450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A343545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366814.P6493619483422513450

namespace A366814

/-- `∑{d}[n+1, A117212(#)*A343545((n+1)/#)]` -/
def P6493619483422513450.Spec : Prop :=
  ∀ n, P6493619483422513450.a n = A366814 (n + 1)

end A366814

/-!
# A366815: Hyper-Wiener index in diamond nanowires obtained by connecting n unit cells in a sequence.

The programs for A366815, the canonical program `A366815.P5951574304266662067` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366815 has offset 1).

The definition of A366815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366815.P5951574304266662067

`(338*(n+1)^4+481*(n+1)^3+145*(n+1)²+416*(n+1)-36)/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366815

/-- `(338*(n+1)^4+481*(n+1)^3+145*(n+1)²+416*(n+1)-36)/3` -/
def P5951574304266662067.Spec : Prop :=
  ∀ n, P5951574304266662067.a n = (A366815 (n + 1) : ℚ)

end A366815

/-!
# A366816: Wiener index in diamond nanowires obtained by connecting n unit cells in a sequence.

The programs for A366816, the canonical program `A366816.P4406828321359444037` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366816 has offset 1).

The definition of A366816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366816.P4406828321359444037

`(338*(n+1)^3+234*(n+1)²+124*(n+1))/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366816

/-- `(338*(n+1)^3+234*(n+1)²+124*(n+1))/3` -/
def P4406828321359444037.Spec : Prop :=
  ∀ n, P4406828321359444037.a n = (A366816 (n + 1) : ℚ)

end A366816

/-!
# A366817: Detour index of n body-centered cubic grid unit cells in a row.

The programs for A366817, the canonical program `A366817.P11509516450140111808` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366817 has offset 1).

The definition of A366817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366817.P11509516450140111808

`(25*(n+1)^3+180*(n+1)²-13*(n+1))/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366817

/-- `(25*(n+1)^3+180*(n+1)²-13*(n+1))/3` -/
def P11509516450140111808.Spec : Prop :=
  ∀ n, P11509516450140111808.a n = (A366817 (n + 1) : ℚ)

end A366817

/-!
# A366818: Let p = A000043(n) be the n-th Mersenne exponent, then a(n) = ((2^p-1)^2-1)/p.

The programs for A366818, there is no canonical definition to state claims against.
-/

/-! ## A366818.P4788806054792277810

`floor(A133049(n+1)/A000043(n+1))`
-/

namespace A366818.P4788806054792277810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133049 (n + 1) : ℚ) / (A000043 (n + 1) : ℚ)⌋

end

end A366818.P4788806054792277810

/-! ## A366818.P1644082721479320933

`floor((1-A072868(n+1))²/(A153798(n+1)+2))`
-/

namespace A366818.P1644082721479320933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - A072868 (n + 1)) ^ 2 : ℚ) / (A153798 (n + 1) + 2 : ℚ)⌋

end

end A366818.P1644082721479320933

/-! ## A366818.P7466994292325137548

`A059966(A000043(n+1))*A072868(n+1)`
-/

namespace A366818.P7466994292325137548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (A000043 (n + 1)).toNat * A072868 (n + 1)

end

end A366818.P7466994292325137548

/-!
# A366819: a(n) is the sum of the divisors of n^n-1.

The programs for A366819, the canonical program `A366819.P12841717763308027196` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366819 has offset 2).

The definition of A366819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366819.P12841717763308027196

`A000203((n+2)^(n+2)-1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366819

/-- `A000203((n+2)^(n+2)-1)` -/
def P12841717763308027196.Spec : Prop :=
  ∀ n, P12841717763308027196.a n = A366819 (n + 2)

theorem P12841717763308027196.correct : P12841717763308027196.Spec := by
  intro n
  simp only [A366819, Nat.add_sub_cancel]

end A366819

/-! ## A366819.P15941675297188580506

`∑{d}[1-(n+2)^(n+2), #]`
-/

namespace A366819.P15941675297188580506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366819.P15941675297188580506

namespace A366819

/-- `∑{d}[1-(n+2)^(n+2), #]` -/
def P15941675297188580506.Spec : Prop :=
  ∀ n, (P15941675297188580506.a n : ℤ) = A366819 (n + 2)

end A366819

/-!
# A366820: a(n) is the sum of the divisors of n^n + 1.

The programs for A366820, the canonical program `A366820.P6791427226374180712` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366820 has offset 0).

The definition of A366820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366820.P6791427226374180712

`A000203(n^n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366820

/-- `A000203(n^n+1)` -/
def P6791427226374180712.Spec : Prop :=
  ∀ n, P6791427226374180712.a n = A366820 n

theorem P6791427226374180712.correct : P6791427226374180712.Spec := by
  intro n
  simp only [A366820]

end A366820

/-! ## A366820.P4097395610787845981

`∑{d}[n^n+1, #]`
-/

namespace A366820.P4097395610787845981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366820.P4097395610787845981

namespace A366820

/-- `∑{d}[n^n+1, #]` -/
def P4097395610787845981.Spec : Prop :=
  ∀ n, (P4097395610787845981.a n : ℤ) = A366820 n

end A366820

/-! ## A366820.P8866189026084694899

`∑{d}[A014566(n), #]*A247026(n)`
-/

namespace A366820.P8866189026084694899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A247026 n

end

end A366820.P8866189026084694899

namespace A366820

/-- `∑{d}[A014566(n), #]*A247026(n)` -/
def P8866189026084694899.Spec : Prop :=
  ∀ n, P8866189026084694899.a n = A366820 n

end A366820

/-! ## A366820.P18041915574187740125

`A308979(n)+∑{d}[A000312(n)+1, #]`
-/

namespace A366820.P18041915574187740125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308979 n + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A366820.P18041915574187740125

namespace A366820

/-- `A308979(n)+∑{d}[A000312(n)+1, #]` -/
def P18041915574187740125.Spec : Prop :=
  ∀ n, P18041915574187740125.a n = A366820 n

end A366820

/-!
# A366821: a(n) is phi(n^n-1) where phi is the Euler totient function.

The programs for A366821, the canonical program `A366821.P12837437574763757681` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366821 has offset 2).

The definition of A366821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366821.P12837437574763757681

`A000010((n+2)^(n+2)-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366821

/-- `A000010((n+2)^(n+2)-1)` -/
def P12837437574763757681.Spec : Prop :=
  ∀ n, P12837437574763757681.a n = A366821 (n + 2)

theorem P12837437574763757681.correct : P12837437574763757681.Spec := by
  intro n
  simp only [A366821, Nat.add_sub_cancel]

end A366821

/-! ## A366821.P16613460772377574091

`(n+2)*A319183(n+2)`
-/

namespace A366821.P16613460772377574091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A319183 (n + 2)

end

end A366821.P16613460772377574091

namespace A366821

/-- `(n+2)*A319183(n+2)` -/
def P16613460772377574091.Spec : Prop :=
  ∀ n, P16613460772377574091.a n = A366821 (n + 2)

end A366821

/-!
# A366822: a(n) is phi(n^n + 1) where phi is the Euler totient function.

The programs for A366822, the canonical program `A366822.P9287568416294420465` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366822 has offset 0).

The definition of A366822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366822.P9287568416294420465

`A000010(n^n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366822

/-- `A000010(n^n+1)` -/
def P9287568416294420465.Spec : Prop :=
  ∀ n, P9287568416294420465.a n = A366822 n

theorem P9287568416294420465.correct : P9287568416294420465.Spec := by
  intro n
  simp only [A366822]

end A366822

/-! ## A366822.P6736951449832390326

`A300718(n^n+1)`
-/

namespace A366822.P6736951449832390326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300718 (n ^ n + 1)

end

end A366822.P6736951449832390326

namespace A366822

/-- `A300718(n^n+1)` -/
def P6736951449832390326.Spec : Prop :=
  ∀ n, P6736951449832390326.a n = A366822 n

end A366822

/-!
# A366825: Numbers of the form p^2 * m, squarefree m > 1, prime p < lpf(m), where lpf(m) = A020639(m).

The programs for A366825, the canonical program `A366825.P6870675763972796668` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366825 has offset 1).

The definition of A366825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366825.P11220592900404372314

`∪[A364999(n+1), A366460(n+1)]`
-/

namespace A366825.P11220592900404372314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366825.P11220592900404372314

namespace A366825

/-- `∪[A364999(n+1), A366460(n+1)]` -/
def P11220592900404372314.Spec : Prop :=
  ∀ n, (P11220592900404372314.a n : ℤ) = A366825 (n + 1)

end A366825

/-! ## A366825.P4330837246291996183

`filter[A397710(n+1), A049240(#)]`
-/

namespace A366825.P4330837246291996183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A366825.P4330837246291996183

namespace A366825

/-- `filter[A397710(n+1), A049240(#)]` -/
def P4330837246291996183.Spec : Prop :=
  ∀ n, P4330837246291996183.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P1411293016923904965

`filter[A397710(n+1), A065202(#)]`
-/

namespace A366825.P1411293016923904965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A366825.P1411293016923904965

namespace A366825

/-- `filter[A397710(n+1), A065202(#)]` -/
def P1411293016923904965.Spec : Prop :=
  ∀ n, P1411293016923904965.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P14080832896315256744

`filter[A397710(n+1), A355447(#)]`
-/

namespace A366825.P14080832896315256744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A366825.P14080832896315256744

namespace A366825

/-- `filter[A397710(n+1), A355447(#)]` -/
def P14080832896315256744.Spec : Prop :=
  ∀ n, P14080832896315256744.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P12450292754766444220

`filter[A397710(n+1), A359475(#)]`
-/

namespace A366825.P12450292754766444220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366825.P12450292754766444220

namespace A366825

/-- `filter[A397710(n+1), A359475(#)]` -/
def P12450292754766444220.Spec : Prop :=
  ∀ n, P12450292754766444220.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P17475284497493095506

`filter[A397710(n+1), A380458(#)]`
-/

namespace A366825.P17475284497493095506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A366825.P17475284497493095506

namespace A366825

/-- `filter[A397710(n+1), A380458(#)]` -/
def P17475284497493095506.Spec : Prop :=
  ∀ n, P17475284497493095506.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P5159205586469347161

`filter[A397710(n+1), A389905(#)]`
-/

namespace A366825.P5159205586469347161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A366825.P5159205586469347161

namespace A366825

/-- `filter[A397710(n+1), A389905(#)]` -/
def P5159205586469347161.Spec : Prop :=
  ∀ n, P5159205586469347161.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P8078069086362674636

`filter[A397710(n+2), A354108(#)]`
-/

namespace A366825.P8078069086362674636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A366825.P8078069086362674636

namespace A366825

/-- `filter[A397710(n+2), A354108(#)]` -/
def P8078069086362674636.Spec : Prop :=
  ∀ n, P8078069086362674636.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P10318618484772392143

`filter[A398264(n+1), A359475(#)]`
-/

namespace A366825.P10318618484772392143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366825.P10318618484772392143

namespace A366825

/-- `filter[A398264(n+1), A359475(#)]` -/
def P10318618484772392143.Spec : Prop :=
  ∀ n, P10318618484772392143.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P6870675763972796668

`filter[A072357(n+1), A319710(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366825

/-- `filter[A072357(n+1), A319710(#)]` -/
def P6870675763972796668.Spec : Prop :=
  ∀ n, P6870675763972796668.a n = A366825 (n + 1)

theorem P6870675763972796668.correct : P6870675763972796668.Spec := by
  intro n
  simp only [A366825, Nat.add_sub_cancel]

end A366825

/-! ## A366825.P13182384398355676985

`filter[A360767(n+1), A212793(#)]`
-/

namespace A366825.P13182384398355676985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A366825.P13182384398355676985

namespace A366825

/-- `filter[A360767(n+1), A212793(#)]` -/
def P13182384398355676985.Spec : Prop :=
  ∀ n, P13182384398355676985.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P11885538076089500900

`filter[A360767(n+1), A359429(#)]`
-/

namespace A366825.P11885538076089500900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A366825.P11885538076089500900

namespace A366825

/-- `filter[A360767(n+1), A359429(#)]` -/
def P11885538076089500900.Spec : Prop :=
  ∀ n, P11885538076089500900.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P2598655822786523463

`filter[A360767(n+1), A359471(#)]`
-/

namespace A366825.P2598655822786523463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A366825.P2598655822786523463

namespace A366825

/-- `filter[A360767(n+1), A359471(#)]` -/
def P2598655822786523463.Spec : Prop :=
  ∀ n, P2598655822786523463.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P17975831429945191744

`filter[A360767(n+1), A359474(#)]`
-/

namespace A366825.P17975831429945191744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A366825.P17975831429945191744

namespace A366825

/-- `filter[A360767(n+1), A359474(#)]` -/
def P17975831429945191744.Spec : Prop :=
  ∀ n, P17975831429945191744.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P14481654255078142043

`filter[A360767(n+1), A359475(#)]`
-/

namespace A366825.P14481654255078142043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366825.P14481654255078142043

namespace A366825

/-- `filter[A360767(n+1), A359475(#)]` -/
def P14481654255078142043.Spec : Prop :=
  ∀ n, P14481654255078142043.a n = A366825 (n + 1)

end A366825

/-! ## A366825.P13026721403851066888

`∩[A060687(n+1), A360767(n+1)]`
-/

namespace A366825.P13026721403851066888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366825.P13026721403851066888

namespace A366825

/-- `∩[A060687(n+1), A360767(n+1)]` -/
def P13026721403851066888.Spec : Prop :=
  ∀ n, (P13026721403851066888.a n : ℤ) = A366825 (n + 1)

end A366825

/-! ## A366825.P9571915199082699681

`∩[A067259(n+1), A360767(n+1)]`
-/

namespace A366825.P9571915199082699681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366825.P9571915199082699681

namespace A366825

/-- `∩[A067259(n+1), A360767(n+1)]` -/
def P9571915199082699681.Spec : Prop :=
  ∀ n, (P9571915199082699681.a n : ℤ) = A366825 (n + 1)

end A366825

/-! ## A366825.P3484864319139621983

`∩[A072357(n+1), A360767(n+1)]`
-/

namespace A366825.P3484864319139621983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366825.P3484864319139621983

namespace A366825

/-- `∩[A072357(n+1), A360767(n+1)]` -/
def P3484864319139621983.Spec : Prop :=
  ∀ n, (P3484864319139621983.a n : ℤ) = A366825 (n + 1)

end A366825

/-! ## A366825.P13697908901951324084

`∩[A325241(n+1), A360767(n+1)]`
-/

namespace A366825.P13697908901951324084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366825.P13697908901951324084

namespace A366825

/-- `∩[A325241(n+1), A360767(n+1)]` -/
def P13697908901951324084.Spec : Prop :=
  ∀ n, (P13697908901951324084.a n : ℤ) = A366825 (n + 1)

end A366825

/-! ## A366825.P4643936036431550174

`filter[A365869(n+1), A359475(#)]`
-/

namespace A366825.P4643936036431550174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A366825.P4643936036431550174

namespace A366825

/-- `filter[A365869(n+1), A359475(#)]` -/
def P4643936036431550174.Spec : Prop :=
  ∀ n, P4643936036431550174.a n = A366825 (n + 1)

end A366825

/-!
# A366826: Composite numbers whose proper substrings (of their decimal expansions) are all primes.

The programs for A366826, there is no canonical definition to state claims against.
-/

/-! ## A366826.P751711115197083724

`filter[A213308(n+1), A066247(#)]`
-/

namespace A366826.P751711115197083724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A366826.P751711115197083724

/-! ## A366826.P2484214384332578078

`filter[A213308(n+2), A005171(#)]`
-/

namespace A366826.P2484214384332578078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213308 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A366826.P2484214384332578078

/-! ## A366826.P4403037441579970509

`∩[A002808(n+1), A213308(n+1)]`
-/

namespace A366826.P4403037441579970509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366826.P4403037441579970509

/-! ## A366826.P12886100135293237682

`∩[A063806(n+1), A213308(n+1)]`
-/

namespace A366826.P12886100135293237682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366826.P12886100135293237682

/-! ## A366826.P14946150593900655115

`∩[A063989(n+1), A213308(n+1)]`
-/

namespace A366826.P14946150593900655115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366826.P14946150593900655115

/-!
# A366827: -a(n)/7! is the coefficient of x^7 in the Taylor expansion of the k-th iteration of sin(x).

The programs for A366827, the canonical program `A366827.P11535047482967532716` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366827 has offset 0).

The definition of A366827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366827.P1758618130206863570

`(175*n²-336*n+164)*n/3`
-/

namespace A366827.P1758618130206863570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((175 * n ^ 2 : ℤ) - (336 * n : ℤ) + 164) * (n : ℤ) : ℚ) / 3

end

end A366827.P1758618130206863570

namespace A366827

/-- `(175*n²-336*n+164)*n/3` -/
def P1758618130206863570.Spec : Prop :=
  ∀ n, P1758618130206863570.a n = (A366827 n : ℚ)

theorem P1758618130206863570.correct : P1758618130206863570.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A366827, Nat.add_sub_cancel, A366827.P1758618130206863570.a, A366827.P11535047482967532716.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A366827, Nat.add_sub_cancel, A366827.P1758618130206863570.a, A366827.P11535047482967532716.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A366827

/-! ## A366827.P11535047482967532716

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=128, a(3)=731`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366827

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11535047482967532716.Spec : Prop :=
  ∀ n, P11535047482967532716.a n = A366827 n

theorem P11535047482967532716.correct : P11535047482967532716.Spec := by
  intro n
  simp only [A366827]

end A366827

/-! ## A366827.P2670972633606385926

`A366834(A167614(n+2))`
-/

namespace A366827.P2670972633606385926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366834 (A167614 (n + 2)).toNat

end

end A366827.P2670972633606385926

namespace A366827

/-- `A366834(A167614(n+2))` -/
def P2670972633606385926.Spec : Prop :=
  ∀ n, P2670972633606385926.a n = A366827 n

end A366827

/-! ## A366827.P7528096592216322803

`A366834(A000124(n+3)+2)`
-/

namespace A366827.P7528096592216322803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366834 (A000124 (n + 3) + 2).toNat

end

end A366827.P7528096592216322803

namespace A366827

/-- `A366834(A000124(n+3)+2)` -/
def P7528096592216322803.Spec : Prop :=
  ∀ n, P7528096592216322803.a n = A366827 n

end A366827

/-! ## A366827.P1743329895991053789

`A366834(A000217(n+3)+3)`
-/

namespace A366827.P1743329895991053789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366834 (A000217 (n + 3) + 3).toNat

end

end A366827.P1743329895991053789

namespace A366827

/-- `A366834(A000217(n+3)+3)` -/
def P1743329895991053789.Spec : Prop :=
  ∀ n, P1743329895991053789.a n = A366827 n

end A366827

/-!
# A366833: Number of times n appears in A362965 (number of primes <= the n-th prime power).

The programs for A366833, the canonical program `A366833.P13396481099192282929` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366833 has offset 1).

The definition of A366833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366833.P1513917615299851359

`A080101(n+1)+1`
-/

namespace A366833.P1513917615299851359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080101 (n + 1) + 1

end

end A366833.P1513917615299851359

namespace A366833

/-- `A080101(n+1)+1` -/
def P1513917615299851359.Spec : Prop :=
  ∀ n, P1513917615299851359.a n = A366833 (n + 1)

theorem P1513917615299851359.correct : P1513917615299851359.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P1513917615299851359.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, A080101, A080101.P17293988866175764959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P8269098809947593043

`A001223(n+1)-A368748(n+1)`
-/

namespace A366833.P8269098809947593043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A368748 (n + 1)

end

end A366833.P8269098809947593043

namespace A366833

/-- `A001223(n+1)-A368748(n+1)` -/
def P8269098809947593043.Spec : Prop :=
  ∀ n, P8269098809947593043.a n = A366833 (n + 1)

theorem P8269098809947593043.correct : P8269098809947593043.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P8269098809947593043.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A001223, A001223.P5034056745985311719.a, A024620, A024620.P8536977387799856667.a, A368748, A368748.P2060391924120103936.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065515, A065515.P15129427044826637405.a, A080101, A080101.P17293988866175764959.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P6555319029897240619

`A046933(n+1)+1-A368748(n+1)`
-/

namespace A366833.P6555319029897240619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + (1 - A368748 (n + 1))

end

end A366833.P6555319029897240619

namespace A366833

/-- `A046933(n+1)+1-A368748(n+1)` -/
def P6555319029897240619.Spec : Prop :=
  ∀ n, P6555319029897240619.a n = A366833 (n + 1)

theorem P6555319029897240619.correct : P6555319029897240619.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P6555319029897240619.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, A046933, A046933.P9479947770746769512.a, A368748, A368748.P2060391924120103936.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A065515, A065515.P15129427044826637405.a, A080101, A080101.P17293988866175764959.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P11902553519659440839

`A001223(n+1)-(A373643(n+1)+A061398(n+1))`
-/

namespace A366833.P11902553519659440839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A373643 (n + 1) + A061398 (n + 1))

end

end A366833.P11902553519659440839

namespace A366833

/-- `A001223(n+1)-(A373643(n+1)+A061398(n+1))` -/
def P11902553519659440839.Spec : Prop :=
  ∀ n, P11902553519659440839.a n = A366833 (n + 1)

theorem P11902553519659440839.correct : P11902553519659440839.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P11902553519659440839.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A001223, A001223.P5034056745985311719.a, A024620, A024620.P8536977387799856667.a, A061398, A061398.P14693318756630178419.a, A373643, A373643.P3675062936320699717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A065515, A065515.P15129427044826637405.a, A080101, A080101.P17293988866175764959.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P13396481099192282929

`Δ[A024620(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366833

/-- `Δ[A024620(n+1)]` -/
def P13396481099192282929.Spec : Prop :=
  ∀ n, P13396481099192282929.a n = A366833 (n + 1)

theorem P13396481099192282929.correct : P13396481099192282929.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel]

end A366833

/-! ## A366833.P13514992675199261007

`Δ[A027883(n+1)]`
-/

namespace A366833.P13514992675199261007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P13514992675199261007

namespace A366833

/-- `Δ[A027883(n+1)]` -/
def P13514992675199261007.Spec : Prop :=
  ∀ n, P13514992675199261007.a n = A366833 (n + 1)

theorem P13514992675199261007.correct : P13514992675199261007.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P13514992675199261007.f1, A366833.P13514992675199261007.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, A027883, A027883.P3043507636580154283.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P9322638244877975125

`A024620(n+2)-A024620(n+1)`
-/

namespace A366833.P9322638244877975125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 2) - A024620 (n + 1)

end

end A366833.P9322638244877975125

namespace A366833

/-- `A024620(n+2)-A024620(n+1)` -/
def P9322638244877975125.Spec : Prop :=
  ∀ n, P9322638244877975125.a n = A366833 (n + 1)

theorem P9322638244877975125.correct : P9322638244877975125.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P9322638244877975125.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, SequenceMachineLib.memo_apply]

end A366833

/-! ## A366833.P2862724352146125252

`A027883(n+2)-A027883(n+1)`
-/

namespace A366833.P2862724352146125252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (n + 2) - A027883 (n + 1)

end

end A366833.P2862724352146125252

namespace A366833

/-- `A027883(n+2)-A027883(n+1)` -/
def P2862724352146125252.Spec : Prop :=
  ∀ n, P2862724352146125252.a n = A366833 (n + 1)

theorem P2862724352146125252.correct : P2862724352146125252.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P2862724352146125252.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, A027883, A027883.P3043507636580154283.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P9825146292570986064

`A000040(n+2)-(A368748(n+1)+A000040(n+1))`
-/

namespace A366833.P9825146292570986064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A368748 (n + 1) + A000040 (n + 1))

end

end A366833.P9825146292570986064

namespace A366833

/-- `A000040(n+2)-(A368748(n+1)+A000040(n+1))` -/
def P9825146292570986064.Spec : Prop :=
  ∀ n, P9825146292570986064.a n = A366833 (n + 1)

theorem P9825146292570986064.correct : P9825146292570986064.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P9825146292570986064.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A024620, A024620.P8536977387799856667.a, A368748, A368748.P2060391924120103936.a, A001223, A001223.P5034056745985311719.a, A065515, A065515.P15129427044826637405.a, A080101, A080101.P17293988866175764959.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P16853852373502304127

`A001223(n+1)+A378615(n+1)-A378615(n+2)`
-/

namespace A366833.P16853852373502304127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A378615 (n + 1) - A378615 (n + 2))

end

end A366833.P16853852373502304127

namespace A366833

/-- `A001223(n+1)+A378615(n+1)-A378615(n+2)` -/
def P16853852373502304127.Spec : Prop :=
  ∀ n, P16853852373502304127.a n = A366833 (n + 1)

theorem P16853852373502304127.correct : P16853852373502304127.Spec := by
  intro n
  simp only [A366833, Nat.add_sub_cancel, A366833.P16853852373502304127.a, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A001223, A001223.P5034056745985311719.a, A024620, A024620.P8536977387799856667.a, A378615, A378615.P14217085017096801148.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A027883, A027883.P3043507636580154283.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366833

/-! ## A366833.P9011656057120285178

`Δ[A025528(A006093(n+1))]`
-/

namespace A366833.P9011656057120285178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P9011656057120285178

namespace A366833

/-- `Δ[A025528(A006093(n+1))]` -/
def P9011656057120285178.Spec : Prop :=
  ∀ n, P9011656057120285178.a n = A366833 (n + 1)

end A366833

/-! ## A366833.P12546418301229539957

`Δ[A069637(A000040(n+1))]+1`
-/

namespace A366833.P12546418301229539957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A366833.P12546418301229539957

namespace A366833

/-- `Δ[A069637(A000040(n+1))]+1` -/
def P12546418301229539957.Spec : Prop :=
  ∀ n, P12546418301229539957.a n = A366833 (n + 1)

end A366833

/-! ## A366833.P4315153671388826631

`Δ[A095874(p?[A000961(n+1)])]`
-/

namespace A366833.P4315153671388826631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P4315153671388826631

namespace A366833

/-- `Δ[A095874(p?[A000961(n+1)])]` -/
def P4315153671388826631.Spec : Prop :=
  ∀ n, P4315153671388826631.a n = A366833 (n + 1)

end A366833

/-! ## A366833.P10307242623754329093

`Δ[A095874(p?[A095874(n+1)])]`
-/

namespace A366833.P10307242623754329093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P10307242623754329093

namespace A366833

/-- `Δ[A095874(p?[A095874(n+1)])]` -/
def P10307242623754329093.Spec : Prop :=
  ∀ n, P10307242623754329093.a n = A366833 (n + 1)

end A366833

/-!
# A366834: Square array read by descending antidiagonals: (-1)^n*T(n,k)/n! is the coefficient of x^(2*n+1) in the Taylor expansion of the k-th iteration of sin(x).

The programs for A366834, there is no canonical definition to state claims against.
-/

/-! ## A366834.P8342745395864711223

`A007094(A287698(n)^A327482(3*n+2))`
-/

namespace A366834.P8342745395864711223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A287698 n : ℚ) ^ (A327482 (3 * n + 2) : ℤ))).toNat

end

end A366834.P8342745395864711223

/-! ## A366834.P2209154712310773670

`A102705(A287698(n))`
-/

namespace A366834.P2209154712310773670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A287698 n).toNat

end

end A366834.P2209154712310773670

/-! ## A366834.P13647510287256499673

`A023786(A246106(n)+1)`
-/

namespace A366834.P13647510287256499673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023786 (A246106 n + 1).toNat

end

end A366834.P13647510287256499673

/-! ## A366834.P11047744257668193190

`A344661(A183135(n)+1)`
-/

namespace A366834.P11047744257668193190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344661 (A183135 n + 1).toNat

end

end A366834.P11047744257668193190

/-! ## A366834.P11295821488694205159

`A244003(n)*A255828(A157150(n))`
-/

namespace A366834.P11295821488694205159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244003 n * A255828 (A157150 n).toNat

end

end A366834.P11295821488694205159

/-!
# A366835: In the pair (A246655(n), A246655(n+1)), how many primes are there?

The programs for A366835, the canonical program `A366835.P15320007476920768749` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366835 has offset 1).

The definition of A366835 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A246655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366835.P15320007476920768749

`A010051(A246655(n+2))+A010051(A246655(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A366835

/-- `A010051(A246655(n+2))+A010051(A246655(n+1))` -/
def P15320007476920768749.Spec : Prop :=
  ∀ n, P15320007476920768749.a n = A366835 (n + 1)

theorem P15320007476920768749.correct : P15320007476920768749.Spec := by
  intro n
  simp only [A366835, Nat.add_sub_cancel]

end A366835

/-! ## A366835.P6254386400566994233

`A000720(A000961(n+3))-A000720(A000961(n+1))`
-/

namespace A366835.P6254386400566994233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000961 (n + 3)).toNat - A000720 (A000961 (n + 1)).toNat

end

end A366835.P6254386400566994233

namespace A366835

/-- `A000720(A000961(n+3))-A000720(A000961(n+1))` -/
def P6254386400566994233.Spec : Prop :=
  ∀ n, P6254386400566994233.a n = A366835 (n + 1)

end A366835

/-! ## A366835.P2748658717400521706

`abs(Δ[A353454(A246655(n+1))])`
-/

namespace A366835.P2748658717400521706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353454 (A246655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A366835.P2748658717400521706

namespace A366835

/-- `abs(Δ[A353454(A246655(n+1))])` -/
def P2748658717400521706.Spec : Prop :=
  ∀ n, P2748658717400521706.a n = A366835 (n + 1)

end A366835

/-! ## A366835.P323841373489994075

`A056169(A121315(n+2))`
-/

namespace A366835.P323841373489994075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A121315 (n + 2)).toNat

end

end A366835.P323841373489994075

namespace A366835

/-- `A056169(A121315(n+2))` -/
def P323841373489994075.Spec : Prop :=
  ∀ n, P323841373489994075.a n = A366835 (n + 1)

end A366835

/-! ## A366835.P14825251737566253224

`A286852(A246655(n+1)*A246655(n+2))`
-/

namespace A366835.P14825251737566253224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A246655 (n + 1) * A246655 (n + 2)).toNat

end

end A366835.P14825251737566253224

namespace A366835

/-- `A286852(A246655(n+1)*A246655(n+2))` -/
def P14825251737566253224.Spec : Prop :=
  ∀ n, P14825251737566253224.a n = A366835 (n + 1)

end A366835

/-!
# A366836: a(1) = 1 and a(n) = prime(a(n-1)+n) mod (a(n-1)+n).

The programs for A366836, the canonical program `A366836.P9857269580957326092` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366836 has offset 1).

The definition of A366836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1)+n+1)%(a(n-1)+n+1)` (program `A366836.P9857269580957326092`, by `A366836.P9857269580957326092.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366836.P9857269580957326092

`A000040(a(n-1)+n+1)%(a(n-1)+n+1)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366836

/-- `A000040(a(n-1)+n+1)%(a(n-1)+n+1)` -/
def P9857269580957326092.Spec : Prop :=
  ∀ n, P9857269580957326092.a n = A366836 (n + 1)

theorem P9857269580957326092.correct : P9857269580957326092.Spec := by
  intro n
  simp only [A366836, Nat.add_sub_cancel]

end A366836

/-! ## A366836.P8103445931706541494

`A004648(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A366836.P8103445931706541494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004648 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A366836.P8103445931706541494

namespace A366836

/-- `A004648(a(n-1)+n+1)` -/
def P8103445931706541494.Spec : Prop :=
  ∀ n, P8103445931706541494.a n = A366836 (n + 1)

end A366836

/-!
# A366839: Sum of even prime factors of 2n, counted with multiplicity.

The programs for A366839, the canonical program `A366839.P8593895561095689137` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366839 has offset 1).

The definition of A366839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366839.P17407006935978140262

`2*val(n+1, 2)+2`
-/

namespace A366839.P17407006935978140262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.valuation (n + 1) 2 + 2

end

end A366839.P17407006935978140262

namespace A366839

/-- `2*val(n+1, 2)+2` -/
def P17407006935978140262.Spec : Prop :=
  ∀ n, (P17407006935978140262.a n : ℤ) = A366839 (n + 1)

end A366839

/-! ## A366839.P8593895561095689137

`2*A001511(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366839

/-- `2*A001511(n+1)` -/
def P8593895561095689137.Spec : Prop :=
  ∀ n, P8593895561095689137.a n = A366839 (n + 1)

theorem P8593895561095689137.correct : P8593895561095689137.Spec := by
  intro n
  simp only [A366839, Nat.add_sub_cancel]

end A366839

/-! ## A366839.P1312144554262341601

`A100006(n+1)-A366840(2*(n+1))`
-/

namespace A366839.P1312144554262341601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - A366840 (2 * (n + 1))

end

end A366839.P1312144554262341601

namespace A366839

/-- `A100006(n+1)-A366840(2*(n+1))` -/
def P1312144554262341601.Spec : Prop :=
  ∀ n, P1312144554262341601.a n = A366839 (n + 1)

end A366839

/-! ## A366839.P17501614109026808123

`val((n+1)², 2)+2`
-/

namespace A366839.P17501614109026808123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2

end

end A366839.P17501614109026808123

namespace A366839

/-- `val((n+1)², 2)+2` -/
def P17501614109026808123.Spec : Prop :=
  ∀ n, (P17501614109026808123.a n : ℤ) = A366839 (n + 1)

end A366839

/-! ## A366839.P16462615584193995190

`log2(xor(n, -(n+2))²)`
-/

namespace A366839.P16462615584193995190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 : ℝ)

end

end A366839.P16462615584193995190

namespace A366839

/-- `log2(xor(n, -(n+2))²)` -/
def P16462615584193995190.Spec : Prop :=
  ∀ n, P16462615584193995190.a n = (A366839 (n + 1) : ℝ)

end A366839

/-! ## A366839.P9538011718744625945

`val((n+2+n)^4, 4)`
-/

namespace A366839.P9538011718744625945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2 + n) ^ 4) 4

end

end A366839.P9538011718744625945

namespace A366839

/-- `val((n+2+n)^4, 4)` -/
def P9538011718744625945.Spec : Prop :=
  ∀ n, (P9538011718744625945.a n : ℤ) = A366839 (n + 1)

end A366839

/-! ## A366839.P8877699917879075358

`log2((xor(n, n+1)+1)²)`
-/

namespace A366839.P8877699917879075358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.xor n (n + 1) + 1) ^ 2 : ℝ)

end

end A366839.P8877699917879075358

namespace A366839

/-- `log2((xor(n, n+1)+1)²)` -/
def P8877699917879075358.Spec : Prop :=
  ∀ n, P8877699917879075358.a n = (A366839 (n + 1) : ℝ)

end A366839

/-! ## A366839.P816680467814786308

`2*log2(xor(n, n+1)+1)`
-/

namespace A366839.P816680467814786308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A366839.P816680467814786308

namespace A366839

/-- `2*log2(xor(n, n+1)+1)` -/
def P816680467814786308.Spec : Prop :=
  ∀ n, P816680467814786308.a n = (A366839 (n + 1) : ℝ)

end A366839

/-! ## A366839.P4393958353597571706

`2*∑{e}[xor(n, -(n+2)), #]`
-/

namespace A366839.P4393958353597571706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A366839.P4393958353597571706

namespace A366839

/-- `2*∑{e}[xor(n, -(n+2)), #]` -/
def P4393958353597571706.Spec : Prop :=
  ∀ n, (P4393958353597571706.a n : ℤ) = A366839 (n + 1)

end A366839

/-! ## A366839.P4734532929515331185

`Δ[a(floor(n/2))+2*n]` with `a(0)=0`
-/

namespace A366839.P4734532929515331185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A366839.P4734532929515331185

namespace A366839

/-- `Δ[a(floor(n/2))+2*n]` -/
def P4734532929515331185.Spec : Prop :=
  ∀ n, P4734532929515331185.a n = A366839 (n + 1)

end A366839

/-! ## A366839.P11034077302476114718

`n%2*a(floor(n/2))+2` with `a(0)=2`
-/

namespace A366839.P11034077302476114718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 2

end

end A366839.P11034077302476114718

namespace A366839

/-- `n%2*a(floor(n/2))+2` -/
def P11034077302476114718.Spec : Prop :=
  ∀ n, (P11034077302476114718.a n : ℤ) = A366839 (n + 1)

end A366839

/-! ## A366839.P6527544957326028996

`gcd(a(floor(n/2))+2, 2%a(n-1))` with `a(0)=2`
-/

namespace A366839.P6527544957326028996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd (a ⌊(n : ℚ) / 2⌋.toNat + 2) (2 % a (n - 1))

end

end A366839.P6527544957326028996

namespace A366839

/-- `gcd(a(floor(n/2))+2, 2%a(n-1))` -/
def P6527544957326028996.Spec : Prop :=
  ∀ n, (P6527544957326028996.a n : ℤ) = A366839 (n + 1)

end A366839

/-! ## A366839.P17186516656748146841

`floor(2/a(n-1))*a(floor(n/2))+2` with `a(0)=2`
-/

namespace A366839.P17186516656748146841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊2 / (a (n - 1) : ℚ)⌋ * a ⌊(n : ℚ) / 2⌋.toNat + 2

end

end A366839.P17186516656748146841

namespace A366839

/-- `floor(2/a(n-1))*a(floor(n/2))+2` -/
def P17186516656748146841.Spec : Prop :=
  ∀ n, P17186516656748146841.a n = A366839 (n + 1)

end A366839

/-! ## A366839.P4799042227049832705

`log2(A059152(n))`
-/

namespace A366839.P4799042227049832705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059152 n : ℝ)

end

end A366839.P4799042227049832705

namespace A366839

/-- `log2(A059152(n))` -/
def P4799042227049832705.Spec : Prop :=
  ∀ n, P4799042227049832705.a n = (A366839 (n + 1) : ℝ)

end A366839

/-! ## A366839.P1141065117889505578

`Δ[A178207(n)]`
-/

namespace A366839.P1141065117889505578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366839.P1141065117889505578

namespace A366839

/-- `Δ[A178207(n)]` -/
def P1141065117889505578.Spec : Prop :=
  ∀ n, P1141065117889505578.a n = A366839 (n + 1)

end A366839

/-! ## A366839.P9492863779137508718

`Δ[2*A005187(n)]`
-/

namespace A366839.P9492863779137508718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366839.P9492863779137508718

namespace A366839

/-- `Δ[2*A005187(n)]` -/
def P9492863779137508718.Spec : Prop :=
  ∀ n, P9492863779137508718.a n = A366839 (n + 1)

end A366839

/-! ## A366839.P899220429156317859

`A037227(n+1)+1`
-/

namespace A366839.P899220429156317859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1) + 1

end

end A366839.P899220429156317859

namespace A366839

/-- `A037227(n+1)+1` -/
def P899220429156317859.Spec : Prop :=
  ∀ n, P899220429156317859.a n = A366839 (n + 1)

theorem P899220429156317859.correct : P899220429156317859.Spec := by
  intro n
  simp only [A366839, Nat.add_sub_cancel, A366839.P899220429156317859.a, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A037227, A037227.P1481052513991100259.a, A006519, A006519.P10435570611646570274.a, A007814, A007814.P13537437864234730737.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366839

/-! ## A366839.P7092922547146283279

`2*(A085058(n)-1)`
-/

namespace A366839.P7092922547146283279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085058 n - 1)

end

end A366839.P7092922547146283279

namespace A366839

/-- `2*(A085058(n)-1)` -/
def P7092922547146283279.Spec : Prop :=
  ∀ n, P7092922547146283279.a n = A366839 (n + 1)

theorem P7092922547146283279.correct : P7092922547146283279.Spec := by
  intro n
  simp only [A366839, Nat.add_sub_cancel, A366839.P7092922547146283279.a, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A085058, A085058.P14130226451424256143.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366839

/-! ## A366839.P13049635259476486464

`(A059132(n)+2)/3`
-/

namespace A366839.P13049635259476486464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059132 n + 2 : ℚ) / 3

end

end A366839.P13049635259476486464

namespace A366839

/-- `(A059132(n)+2)/3` -/
def P13049635259476486464.Spec : Prop :=
  ∀ n, P13049635259476486464.a n = (A366839 (n + 1) : ℚ)

theorem P13049635259476486464.correct : P13049635259476486464.Spec := by
  intro n
  simp only [A366839, Nat.add_sub_cancel, A366839.P13049635259476486464.a, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A059132, A059132.P10830951508121782954.a, A006519, A006519.P10435570611646570274.a, A007814, A007814.P13537437864234730737.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366839

/-! ## A366839.P3683999003964782565

`log2(A171977(n+1)²)`
-/

namespace A366839.P3683999003964782565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A171977 (n + 1) ^ 2 : ℝ)

end

end A366839.P3683999003964782565

namespace A366839

/-- `log2(A171977(n+1)²)` -/
def P3683999003964782565.Spec : Prop :=
  ∀ n, P3683999003964782565.a n = (A366839 (n + 1) : ℝ)

end A366839

/-!
# A366840: Sum of odd prime factors of n, counted with multiplicity.

The programs for A366840, the canonical program `A366840.P17137846369514752914` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366840 has offset 1).

The definition of A366840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100006, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366840.P17137846369514752914

`A100006(n+1)-A366839(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366840

/-- `A100006(n+1)-A366839(n+1)` -/
def P17137846369514752914.Spec : Prop :=
  ∀ n, P17137846369514752914.a n = A366840 (n + 1)

theorem P17137846369514752914.correct : P17137846369514752914.Spec := by
  intro n
  simp only [A366840, Nat.add_sub_cancel]

end A366840

/-! ## A366840.P10506985691158668522

`A001414((n+1)/2^val(n+1, 2))`
-/

namespace A366840.P10506985691158668522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A366840.P10506985691158668522

namespace A366840

/-- `A001414((n+1)/2^val(n+1, 2))` -/
def P10506985691158668522.Spec : Prop :=
  ∀ n, P10506985691158668522.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P13800225411809237163

`A001414((n+1)/and(n+1, -(n+1)))`
-/

namespace A366840.P13800225411809237163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A366840.P13800225411809237163

namespace A366840

/-- `A001414((n+1)/and(n+1, -(n+1)))` -/
def P13800225411809237163.Spec : Prop :=
  ∀ n, P13800225411809237163.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P1625198936207427122

`(n+1)/2^val(n+1, 2)-A075255((n+1)/2^val(n+1, 2))`
-/

namespace A366840.P1625198936207427122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (A075255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A366840.P1625198936207427122

namespace A366840

/-- `(n+1)/2^val(n+1, 2)-A075255((n+1)/2^val(n+1, 2))` -/
def P1625198936207427122.Spec : Prop :=
  ∀ n, P1625198936207427122.a n = (A366840 (n + 1) : ℚ)

end A366840

/-! ## A366840.P15725668409920739557

`A075254((n+1)/2^val(n+1, 2))-(n+1)/2^val(n+1, 2)`
-/

namespace A366840.P15725668409920739557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) - (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A366840.P15725668409920739557

namespace A366840

/-- `A075254((n+1)/2^val(n+1, 2))-(n+1)/2^val(n+1, 2)` -/
def P15725668409920739557.Spec : Prop :=
  ∀ n, P15725668409920739557.a n = (A366840 (n + 1) : ℚ)

end A366840

/-! ## A366840.P16570389517716501878

`A001414(A000265(n+1))`
-/

namespace A366840.P16570389517716501878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000265 (n + 1)).toNat

end

end A366840.P16570389517716501878

namespace A366840

/-- `A001414(A000265(n+1))` -/
def P16570389517716501878.Spec : Prop :=
  ∀ n, P16570389517716501878.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P5961878543215633213

`A100005(A003602(n+1))`
-/

namespace A366840.P5961878543215633213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100005 (A003602 (n + 1)).toNat

end

end A366840.P5961878543215633213

namespace A366840

/-- `A100005(A003602(n+1))` -/
def P5961878543215633213.Spec : Prop :=
  ∀ n, P5961878543215633213.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P4767625772617133185

`A001414(A153733(n)+1)`
-/

namespace A366840.P4767625772617133185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A153733 n + 1).toNat

end

end A366840.P4767625772617133185

namespace A366840

/-- `A001414(A153733(n)+1)` -/
def P4767625772617133185.Spec : Prop :=
  ∀ n, P4767625772617133185.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P14137215999067480170

`A036288(n+1)-A037227(n+1)`
-/

namespace A366840.P14137215999067480170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A037227 (n + 1)

end

end A366840.P14137215999067480170

namespace A366840

/-- `A036288(n+1)-A037227(n+1)` -/
def P14137215999067480170.Spec : Prop :=
  ∀ n, P14137215999067480170.a n = A366840 (n + 1)

theorem P14137215999067480170.correct : P14137215999067480170.Spec := by
  intro n
  simp only [A366840, Nat.add_sub_cancel, A366840.P14137215999067480170.a, A366840.P17137846369514752914.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A037227, A037227.P1481052513991100259.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A366839, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366840

/-! ## A366840.P8565175831944965582

`A001414(n+1)+2-A366839(n+1)`
-/

namespace A366840.P8565175831944965582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (2 - A366839 (n + 1))

end

end A366840.P8565175831944965582

namespace A366840

/-- `A001414(n+1)+2-A366839(n+1)` -/
def P8565175831944965582.Spec : Prop :=
  ∀ n, P8565175831944965582.a n = A366840 (n + 1)

theorem P8565175831944965582.correct : P8565175831944965582.Spec := by
  intro n
  simp only [A366840, Nat.add_sub_cancel, A366840.P8565175831944965582.a, A366840.P17137846369514752914.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A366839, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366840

/-! ## A366840.P16455856958005022724

`A001414(n+1)-2*A007814(n+1)`
-/

namespace A366840.P16455856958005022724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - 2 * A007814 (n + 1)

end

end A366840.P16455856958005022724

namespace A366840

/-- `A001414(n+1)-2*A007814(n+1)` -/
def P16455856958005022724.Spec : Prop :=
  ∀ n, P16455856958005022724.a n = A366840 (n + 1)

theorem P16455856958005022724.correct : P16455856958005022724.Spec := by
  intro n
  simp only [A366840, Nat.add_sub_cancel, A366840.P16455856958005022724.a, A366840.P17137846369514752914.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A007814, A007814.P13537437864234730737.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A366839, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366840

/-! ## A366840.P6004604516395926510

`A001414(A139391(2*(n+1)))`
-/

namespace A366840.P6004604516395926510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A139391 (2 * (n + 1))).toNat

end

end A366840.P6004604516395926510

namespace A366840

/-- `A001414(A139391(2*(n+1)))` -/
def P6004604516395926510.Spec : Prop :=
  ∀ n, P6004604516395926510.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P1160585765560195308

`A001414(2*(n+1))-A001414(A028233(2*(n+1)))`
-/

namespace A366840.P1160585765560195308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * (n + 1)) - A001414 (A028233 (2 * (n + 1))).toNat

end

end A366840.P1160585765560195308

namespace A366840

/-- `A001414(2*(n+1))-A001414(A028233(2*(n+1)))` -/
def P1160585765560195308.Spec : Prop :=
  ∀ n, P1160585765560195308.a n = A366840 (n + 1)

end A366840

/-! ## A366840.P2832607980901309273

`A001414(A319861(A000217(n+1)+n))`
-/

namespace A366840.P2832607980901309273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A319861 (A000217 (n + 1) + (n : ℤ)).toNat).toNat

end

end A366840.P2832607980901309273

namespace A366840

/-- `A001414(A319861(A000217(n+1)+n))` -/
def P2832607980901309273.Spec : Prop :=
  ∀ n, P2832607980901309273.a n = A366840 (n + 1)

end A366840

/-!
# A366842: Number of integer partitions of n whose odd parts have a common divisor > 1.

The programs for A366842, there is no canonical definition to state claims against.
-/

/-! ## A366842.P7109596184831673596

`A086543(n)-A366850(n)`
-/

namespace A366842.P7109596184831673596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - A366850 n

end

end A366842.P7109596184831673596

/-!
# A366843: Number of integer partitions of n into odd, relatively prime parts.

The programs for A366843, there is no canonical definition to state claims against.
-/

/-! ## A366843.P3409549599398470494

`A000009(n)-A366852(n)`
-/

namespace A366843.P3409549599398470494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A366852 n

end

end A366843.P3409549599398470494

/-! ## A366843.P7777409296851156297

`ceil(A087135(n)/2)-A366852(n)`
-/

namespace A366843.P7777409296851156297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉ - A366852 n

end

end A366843.P7777409296851156297

/-! ## A366843.P14580938342551538256

`A052839(n)-(A366852(n)+A057427(n))`
-/

namespace A366843.P14580938342551538256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A366852 n + A057427 n)

end

end A366843.P14580938342551538256

/-!
# A366844: Number of strict integer partitions of n into odd relatively prime parts.

The programs for A366844, there is no canonical definition to state claims against.
-/

/-! ## A366844.P11117328191713108697

`A196563(A300234(n+1)+A037952(n+1))`
-/

namespace A366844.P11117328191713108697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A300234 (n + 1) + A037952 (n + 1)).toNat

end

end A366844.P11117328191713108697

/-! ## A366844.P6431638985423839319

`A037800(A161951(n+1)+A000203(2*n+5))`
-/

namespace A366844.P6431638985423839319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A161951 (n + 1) + A000203 (2 * n + 5)).toNat

end

end A366844.P6431638985423839319

/-! ## A366844.P7890331008446049390

`A390420(2*n+1)%3`
-/

namespace A366844.P7890331008446049390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390420 (2 * n + 1)) 3

end

end A366844.P7890331008446049390

/-! ## A366844.P10644878304532176683

`1-A100047(A220084(n))`
-/

namespace A366844.P10644878304532176683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100047 (A220084 n).toNat

end

end A366844.P10644878304532176683

/-! ## A366844.P947421936302467848

`A037824(8*A326080(n+2))`
-/

namespace A366844.P947421936302467848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (8 * A326080 (n + 2)).toNat

end

end A366844.P947421936302467848

/-!
# A366845: Number of integer partitions of n that contain at least one even part and whose halved even parts are relatively prime.

The programs for A366845, there is no canonical definition to state claims against.
-/

/-! ## A366845.P1727256838559086534

`A001055(A000079(n))-A265254(n)`
-/

namespace A366845.P1727256838559086534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A265254 n

end

end A366845.P1727256838559086534

/-! ## A366845.P11976860039667892438

`A024936(2*A345192(n))`
-/

namespace A366845.P11976860039667892438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (2 * A345192 n).toNat

end

end A366845.P11976860039667892438

/-! ## A366845.P2275287845640473230

`A056973(A105755(n+1))+∑[A085811(n+1)]`
-/

namespace A366845.P2275287845640473230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (A105755 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366845.P2275287845640473230

/-! ## A366845.P15344470753082890262

`ceil(A182377(n+2)/3)`
-/

namespace A366845.P15344470753082890262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182377 (n + 2) : ℚ) / 3⌉

end

end A366845.P15344470753082890262

/-! ## A366845.P533978405129642979

`A121902(A088662(n))`
-/

namespace A366845.P533978405129642979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A088662 n).toNat

end

end A366845.P533978405129642979

/-!
# A366846: Numbers whose odd prime indices are relatively prime.

The programs for A366846, there is no canonical definition to state claims against.
-/

/-! ## A366846.P15037243416881712343

`∪[2*n, A001836(n+1)]+2`
-/

namespace A366846.P15037243416881712343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A366846.P15037243416881712343

/-! ## A366846.P17428280860241568516

`∩[A047237(n+1), A289509(n+1)]`
-/

namespace A366846.P17428280860241568516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366846.P17428280860241568516

/-! ## A366846.P1108753423634959528

`comp[A259825(n)+A078701(2*(n+2))]`
-/

namespace A366846.P1108753423634959528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 n + A078701 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366846.P1108753423634959528

/-! ## A366846.P13498003158545265873

`∪[A134099(3*n+4), Δ[A002378(n)]]`
-/

namespace A366846.P13498003158545265873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134099 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366846.P13498003158545265873

/-! ## A366846.P14326416945212728984

`∪[A179887(3*(n+1)), A005843(n+1)]`
-/

namespace A366846.P14326416945212728984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179887 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366846.P14326416945212728984

/-! ## A366846.P7159204060677272638

`∪[A373662(n+4)+A087678(2*n+1), 2*(n+1)]`
-/

namespace A366846.P7159204060677272638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 4) + A087678 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A366846.P7159204060677272638

/-! ## A366846.P13091091319743924213

`lt[A070431(3*n), A052409(A237270(n+1))]`
-/

namespace A366846.P13091091319743924213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070431 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A237270 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366846.P13091091319743924213

/-! ## A366846.P1293269805921281504

`lt[A000252(2*n+1), A000252(A327460(n+1))]`
-/

namespace A366846.P1293269805921281504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (A327460 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366846.P1293269805921281504

/-!
# A366847: Numbers whose halved even prime indices are nonempty and relatively prime.

The programs for A366847, there is no canonical definition to state claims against.
-/

/-! ## A366847.P9862664219342205616

`∪[3*(n+1), ∑[(n+3)^3]]`
-/

namespace A366847.P9862664219342205616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A366847.P9862664219342205616

/-! ## A366847.P14336473468204540153

`∩[A230215(n+1), A055264(n)]`
-/

namespace A366847.P14336473468204540153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366847.P14336473468204540153

/-! ## A366847.P5631492079136348458

`∩[A176409(n+1), A230215(n+1)]`
-/

namespace A366847.P5631492079136348458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366847.P5631492079136348458

/-! ## A366847.P1349731539722106597

`∩[A230215(n+1), A344208(n+1)]`
-/

namespace A366847.P1349731539722106597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366847.P1349731539722106597

/-! ## A366847.P13873044442953525757

`∩[A230215(n+1), A382875(n+1)]`
-/

namespace A366847.P13873044442953525757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366847.P13873044442953525757

/-! ## A366847.P2289125717862991110

`lt[A059268(n)*A087555(n+6), n²]`
-/

namespace A366847.P2289125717862991110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A087555 (n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366847.P2289125717862991110

/-! ## A366847.P208074722685402913

`lt[A163659(n+1), A237835(n+1)]+1`
-/

namespace A366847.P208074722685402913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A366847.P208074722685402913

/-! ## A366847.P5623342355635570646

`lt[A059853(2*n+3), A060632(n)+1]`
-/

namespace A366847.P5623342355635570646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059853 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366847.P5623342355635570646

/-! ## A366847.P3757208106200188457

`lt[C(A059853(2*n+3), 2), A074679(n)]`
-/

namespace A366847.P3757208106200188457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059853 (2 * n + 3)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366847.P3757208106200188457

/-! ## A366847.P15706727996676486146

`eq[A316555(3*(n+1)), A316555(n+1)]+1`
-/

namespace A366847.P15706727996676486146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A366847.P15706727996676486146

/-!
# A366848: Odd numbers whose odd prime indices are relatively prime.

The programs for A366848, there is no canonical definition to state claims against.
-/

/-! ## A366848.P11417597948981799760

`∩[A302590(n+1), A334146(n+1)]`
-/

namespace A366848.P11417597948981799760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366848.P11417597948981799760

/-!
# A366849: Odd numbers whose halved even prime indices are relatively prime.

The programs for A366849, there is no canonical definition to state claims against.
-/

/-! ## A366849.P10272307536875685654

`filter[A340933(n+1), A380536(#)]`
-/

namespace A366849.P10272307536875685654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A366849.P10272307536875685654

/-! ## A366849.P14597471423311791152

`∩[A113502(n+1), A340933(n+1)]`
-/

namespace A366849.P14597471423311791152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366849.P14597471423311791152

/-! ## A366849.P13112231454009279617

`∩[A340933(n+1), A380537(n+1)]`
-/

namespace A366849.P13112231454009279617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366849.P13112231454009279617

/-! ## A366849.P8405535971716217776

`∩[2*n+1, A366847(n+1)]`
-/

namespace A366849.P8405535971716217776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366849.P8405535971716217776

/-! ## A366849.P12150085235112372160

`record[A000265(A366847(n+1))]`
-/

namespace A366849.P12150085235112372160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A366847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366849.P12150085235112372160

/-!
# A366850: Number of integer partitions of n whose odd parts are relatively prime.

The programs for A366850, there is no canonical definition to state claims against.
-/

/-! ## A366850.P3097097045745620720

`A086543(n)-A366842(n)`
-/

namespace A366850.P3097097045745620720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - A366842 n

end

end A366850.P3097097045745620720

/-! ## A366850.P18434467474418433686

`A121902(A026635(n+1))`
-/

namespace A366850.P18434467474418433686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A026635 (n + 1)).toNat

end

end A366850.P18434467474418433686

/-! ## A366850.P797399284143703604

`A056556(A109190(n+1))`
-/

namespace A366850.P797399284143703604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A109190 (n + 1)).toNat

end

end A366850.P797399284143703604

/-! ## A366850.P18322168125996599036

`A121902(A074839(n+1))`
-/

namespace A366850.P18322168125996599036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A074839 (n + 1)).toNat

end

end A366850.P18322168125996599036

/-! ## A366850.P8396742827885001639

`A000196(A395145(n)-1)`
-/

namespace A366850.P8396742827885001639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A395145 n - 1).toNat

end

end A366850.P8396742827885001639

/-!
# A366851: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n such that the sum of primes indexed by all parts greater than one is k.

The programs for A366851, there is no canonical definition to state claims against.
-/

/-! ## A366851.P3161892923796436945

`A074304(n+1)%A074293(A074294(n+2))`
-/

namespace A366851.P3161892923796436945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074304 (n + 1)) (A074293 (A074294 (n + 2)).toNat)

end

end A366851.P3161892923796436945

/-! ## A366851.P8433344264813567074

`A187074(A141002(n))`
-/

namespace A366851.P8433344264813567074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (A141002 n).toNat

end

end A366851.P8433344264813567074

/-! ## A366851.P14174224020458191597

`A068428(A082190(n+1))`
-/

namespace A366851.P14174224020458191597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068428 (A082190 (n + 1)).toNat

end

end A366851.P14174224020458191597

/-! ## A366851.P8581245897930980436

`A133872(A056805(n+3)-A008483(n))`
-/

namespace A366851.P8581245897930980436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A056805 (n + 3) - A008483 n).toNat

end

end A366851.P8581245897930980436

/-! ## A366851.P366690421732622845

`A214210(A264520(n+1)+A092246(2*(n+1)))`
-/

namespace A366851.P366690421732622845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214210 (A264520 (n + 1) + A092246 (2 * (n + 1))).toNat

end

end A366851.P366690421732622845

/-!
# A366852: Number of integer partitions of n into odd parts with a common divisor > 1.

The programs for A366852, there is no canonical definition to state claims against.
-/

/-! ## A366852.P7501030442905311981

`A000009(n)-A366843(n)`
-/

namespace A366852.P7501030442905311981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A366843 n

end

end A366852.P7501030442905311981

/-! ## A366852.P4982455382737499523

`A316996(n)+A317239(n)-A366843(n)`
-/

namespace A366852.P4982455382737499523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A366843 n)

end

end A366852.P4982455382737499523

/-! ## A366852.P13622997457091531121

`A328615(((2-A171565(n))²-A171565(n))²)`
-/

namespace A366852.P13622997457091531121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (((2 - A171565 n) ^ 2 - A171565 n) ^ 2).toNat

end

end A366852.P13622997457091531121

/-! ## A366852.P17706301217780095235

`A363795(A002487(n)^A003056(n))`
-/

namespace A366852.P17706301217780095235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (SequenceMachineLib.roundAway ((A002487 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A366852.P17706301217780095235

/-! ## A366852.P12641748298463673899

`A081581(n+4)%A323014(A000051(n))`
-/

namespace A366852.P12641748298463673899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081581 (n + 4)) (A323014 (A000051 n).toNat)

end

end A366852.P12641748298463673899

/-!
# A366854: Powers k^m such that k is neither squarefree nor prime powers, and m > 1.

The programs for A366854, there is no canonical definition to state claims against.
-/

/-! ## A366854.P9458978689371189551

`∩[A131605(n+1), A322448(n+1)]`
-/

namespace A366854.P9458978689371189551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366854.P9458978689371189551

/-! ## A366854.P2539819130755485842

`∩[A322448(n+1), A391416(n+1)]`
-/

namespace A366854.P2539819130755485842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366854.P2539819130755485842

/-! ## A366854.P6063610433144406587

`∩[A119850(n+1), A391416(n+1)]`
-/

namespace A366854.P6063610433144406587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366854.P6063610433144406587

/-!
# A366855: Least number such that the concatenation of the exponents in the prime factorization is n.

The programs for A366855, there is no canonical definition to state claims against.
-/

/-! ## A366855.P10305079142101351939

`A054842(n)*A087522(A322308(2*n+3))`
-/

namespace A366855.P10305079142101351939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n * A087522 (A322308 (2 * n + 3)).toNat

end

end A366855.P10305079142101351939

/-!
# A366860: a(0) = 0; a(n) = n - a(floor(a(n-1)/3)).

The programs for A366860, the canonical program `A366860.P14551351889877722196` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366860 has offset 0).

The definition of A366860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(floor(a(n-1)/3))` (program `A366860.P14551351889877722196`, by `A366860.P14551351889877722196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366860.P14551351889877722196

`n-a(floor(a(n-1)/3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366860

/-- `n-a(floor(a(n-1)/3))` -/
def P14551351889877722196.Spec : Prop :=
  ∀ n, P14551351889877722196.a n = A366860 n

theorem P14551351889877722196.correct : P14551351889877722196.Spec := by
  intro n
  simp only [A366860]

end A366860

/-! ## A366860.P16501208087482731044

`n-a((a(n-1)-a(n-1)%3)/3)` with `a(0)=0`
-/

namespace A366860.P16501208087482731044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (SequenceMachineLib.roundAway ((a (n - 1) - Int.tmod (a (n - 1)) 3 : ℚ) / 3)).toNat

end

end A366860.P16501208087482731044

namespace A366860

/-- `n-a((a(n-1)-a(n-1)%3)/3)` -/
def P16501208087482731044.Spec : Prop :=
  ∀ n, P16501208087482731044.a n = A366860 n

end A366860

/-! ## A366860.P10844171968984431040

`∑[char[A045749(n+1)]]`
-/

namespace A366860.P10844171968984431040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366860.P10844171968984431040

namespace A366860

/-- `∑[char[A045749(n+1)]]` -/
def P10844171968984431040.Spec : Prop :=
  ∀ n, (P10844171968984431040.a n : ℤ) = A366860 n

end A366860

/-! ## A366860.P5485911761468545463

`∑[char[A187570(n+1)]]`
-/

namespace A366860.P5485911761468545463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366860.P5485911761468545463

namespace A366860

/-- `∑[char[A187570(n+1)]]` -/
def P5485911761468545463.Spec : Prop :=
  ∀ n, (P5485911761468545463.a n : ℤ) = A366860 n

end A366860

/-! ## A366860.P18141415135868392116

`∑[char[A045749(n)]]-1`
-/

namespace A366860.P18141415135868392116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A366860.P18141415135868392116

namespace A366860

/-- `∑[char[A045749(n)]]-1` -/
def P18141415135868392116.Spec : Prop :=
  ∀ n, P18141415135868392116.a n = A366860 n

end A366860

/-! ## A366860.P1132042172719473086

`A284366(n+1)-(n+1)`
-/

namespace A366860.P1132042172719473086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284366 (n + 1) - (n + 1 : ℤ)

end

end A366860.P1132042172719473086

namespace A366860

/-- `A284366(n+1)-(n+1)` -/
def P1132042172719473086.Spec : Prop :=
  ∀ n, P1132042172719473086.a n = A366860 n

theorem P1132042172719473086.correct : P1132042172719473086.Spec := by
  intro n
  simp only [A366860, Nat.add_sub_cancel, A366860.P1132042172719473086.a, A366860.P14551351889877722196.a, A284366, A284366.P2946871292571761873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366860

/-! ## A366860.P3521012293648453280

`A284366(n+1)%A000027(n+1)`
-/

namespace A366860.P3521012293648453280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284366 (n + 1)) (A000027 (n + 1))

end

end A366860.P3521012293648453280

namespace A366860

/-- `A284366(n+1)%A000027(n+1)` -/
def P3521012293648453280.Spec : Prop :=
  ∀ n, P3521012293648453280.a n = A366860 n

end A366860

/-! ## A366860.P5020156251476539611

`A199969(A284366(n+1))-n`
-/

namespace A366860.P5020156251476539611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A284366 (n + 1)).toNat - (n : ℤ)

end

end A366860.P5020156251476539611

namespace A366860

/-- `A199969(A284366(n+1))-n` -/
def P5020156251476539611.Spec : Prop :=
  ∀ n, P5020156251476539611.a n = A366860 n

end A366860

/-! ## A366860.P1050385108436480655

`A045749(A016777(n))-A016777(n)`
-/

namespace A366860.P1050385108436480655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (A016777 n).toNat - A016777 n

end

end A366860.P1050385108436480655

namespace A366860

/-- `A045749(A016777(n))-A016777(n)` -/
def P1050385108436480655.Spec : Prop :=
  ∀ n, P1050385108436480655.a n = A366860 n

end A366860

/-!
# A366861: Largest elements of triples (a, b, c) with a > b > c = 1 such that ab+c, ac+b and bc+a are perfect squares.

The programs for A366861, there is no canonical definition to state claims against.
-/

/-! ## A366861.P12889846719747003449

`filter[A366865(n+1), A368281(#)]`
-/

namespace A366861.P12889846719747003449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368281 (f1 j).toNat = 1) n)

end

end A366861.P12889846719747003449

/-! ## A366861.P2813884727756452443

`∩[A366865(n+1), A376598(n+1)]`
-/

namespace A366861.P2813884727756452443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366861.P2813884727756452443

/-! ## A366861.P2937227774032128545

`A366865(n+1)+A288707(A211066(n+1))`
-/

namespace A366861.P2937227774032128545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366865 (n + 1) + A288707 (A211066 (n + 1)).toNat

end

end A366861.P2937227774032128545

/-! ## A366861.P8838743911787077756

`A366865(A043317(n+1))`
-/

namespace A366861.P8838743911787077756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366865 (A043317 (n + 1)).toNat

end

end A366861.P8838743911787077756

/-! ## A366861.P9108305724319238940

`A366865(A044914(n+1))`
-/

namespace A366861.P9108305724319238940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366865 (A044914 (n + 1)).toNat

end

end A366861.P9108305724319238940

/-!
# A366865: Largest elements of triples (a, b, c) with a > b > c > 0 such that ab+c, ac+b and bc+a are perfect squares.

The programs for A366865, there is no canonical definition to state claims against.
-/

/-! ## A366865.P7508093419720012329

`A366861(n+1)-A288707(A211066(n+1))`
-/

namespace A366865.P7508093419720012329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366861 (n + 1) - A288707 (A211066 (n + 1)).toNat

end

end A366865.P7508093419720012329

/-!
# A366866: Number of binary relations R on [n] such that the transitive closure of R contains the identity relation.

The programs for A366866, there is no canonical definition to state claims against.
-/

/-! ## A366866.P16957447504329779816

`A370203(∑[n]+n)`
-/

namespace A366866.P16957447504329779816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370203 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A366866.P16957447504329779816

/-! ## A366866.P10758524222692199459

`A339768(n)*A370203(A000096(n))`
-/

namespace A366866.P10758524222692199459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339768 n * A370203 (A000096 n).toNat

end

end A366866.P10758524222692199459

/-! ## A366866.P1211486955671901147

`A347811(n)*A370203(A000096(n))`
-/

namespace A366866.P1211486955671901147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 n * A370203 (A000096 n).toNat

end

end A366866.P1211486955671901147

/-!
# A366867: Products of sexy prime triples: sphenic numbers with prime factorization (p - 6)*p*(p + 6).

The programs for A366867, there is no canonical definition to state claims against.
-/

/-! ## A366867.P5822316199620083352

`(A006489(n+1)-6)*A006489(n+1)*(A006489(n+1)+6)`
-/

namespace A366867.P5822316199620083352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006489 (n + 1) - 6) * A006489 (n + 1) * (A006489 (n + 1) + 6)

end

end A366867.P5822316199620083352

/-! ## A366867.P1915785306609401657

`A023241(n+1)*(A023241(n+1)+6)*(A023241(n+1)+12)`
-/

namespace A366867.P1915785306609401657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1) * (A023241 (n + 1) + 6) * (A023241 (n + 1) + 12)

end

end A366867.P1915785306609401657

/-!
# A366868: a(n) = A366470(A366864(n)-1).

The programs for A366868, there is no canonical definition to state claims against.
-/

/-! ## A366868.P12760744552030485557

`A366470(A366864(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366868.P12760744552030485557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366470 (A366864 (n + 1) - 1).toNat

end

end A366868.P12760744552030485557

/-!
# A366869: a(n) = A366470(A366864(n)).

The programs for A366869, there is no canonical definition to state claims against.
-/

/-! ## A366869.P16676000790945447049

`A366470(A366864(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366869.P16676000790945447049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366470 (A366864 (n + 1)).toNat

end

end A366869.P16676000790945447049

/-! ## A366869.P14433624464190060112

`record[A366470(n+2)]`
-/

namespace A366869.P14433624464190060112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366470 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366869.P14433624464190060112

/-!
# A366870: a(0) = 0; a(n) = n - a(floor(a(n-1)/4)).

The programs for A366870, the canonical program `A366870.P15158058064889261255` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366870 has offset 0).

The definition of A366870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(floor(a(n-1)/4))` (program `A366870.P15158058064889261255`, by `A366870.P15158058064889261255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366870.P15158058064889261255

`n-a(floor(a(n-1)/4))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366870

/-- `n-a(floor(a(n-1)/4))` -/
def P15158058064889261255.Spec : Prop :=
  ∀ n, P15158058064889261255.a n = A366870 n

theorem P15158058064889261255.correct : P15158058064889261255.Spec := by
  intro n
  simp only [A366870]

end A366870

/-! ## A366870.P8339440194804707052

`n-a((a(n-1)-a(n-1)%4)/4)` with `a(0)=0`
-/

namespace A366870.P8339440194804707052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (SequenceMachineLib.roundAway ((a (n - 1) - Int.tmod (a (n - 1)) 4 : ℚ) / 4)).toNat

end

end A366870.P8339440194804707052

namespace A366870

/-- `n-a((a(n-1)-a(n-1)%4)/4)` -/
def P8339440194804707052.Spec : Prop :=
  ∀ n, P8339440194804707052.a n = A366870 n

end A366870

/-! ## A366870.P18082193195026261508

`n-a(A110655(a(n-1)+1)-1)` with `a(0)=0`
-/

namespace A366870.P18082193195026261508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (A110655 (a (n - 1) + 1).toNat - 1).toNat

end

end A366870.P18082193195026261508

namespace A366870

/-- `n-a(A110655(a(n-1)+1)-1)` -/
def P18082193195026261508.Spec : Prop :=
  ∀ n, P18082193195026261508.a n = A366870 n

end A366870

/-! ## A366870.P18411583538719241535

`A002266(A189917(n+2))`
-/

namespace A366870.P18411583538719241535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A189917 (n + 2)).toNat

end

end A366870.P18411583538719241535

namespace A366870

/-- `A002266(A189917(n+2))` -/
def P18411583538719241535.Spec : Prop :=
  ∀ n, P18411583538719241535.a n = A366870 n

end A366870

/-!
# A366871: a(0) = 0; a(n) = n - a(floor(a(n-1)/5)).

The programs for A366871, the canonical program `A366871.P14155778541332928878` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366871 has offset 0).

The definition of A366871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(floor(a(n-1)/5))` (program `A366871.P14155778541332928878`, by `A366871.P14155778541332928878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366871.P14155778541332928878

`n-a(floor(a(n-1)/5))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366871

/-- `n-a(floor(a(n-1)/5))` -/
def P14155778541332928878.Spec : Prop :=
  ∀ n, P14155778541332928878.a n = A366871 n

theorem P14155778541332928878.correct : P14155778541332928878.Spec := by
  intro n
  simp only [A366871]

end A366871

/-! ## A366871.P17636699214687118776

`∑[char[A347179(n+1)]]`
-/

namespace A366871.P17636699214687118776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347179 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366871.P17636699214687118776

namespace A366871

/-- `∑[char[A347179(n+1)]]` -/
def P17636699214687118776.Spec : Prop :=
  ∀ n, (P17636699214687118776.a n : ℤ) = A366871 n

end A366871

/-! ## A366871.P245342938875255862

`∑[A130428(2*(n+1))%2]`
-/

namespace A366871.P245342938875255862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130428 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366871.P245342938875255862

namespace A366871

/-- `∑[A130428(2*(n+1))%2]` -/
def P245342938875255862.Spec : Prop :=
  ∀ n, P245342938875255862.a n = A366871 n

end A366871

/-! ## A366871.P6997217470812972412

`∑[(ceil(5*n/6)-floor(5*n/6))^A269297(n+1)]`
-/

namespace A366871.P6997217470812972412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈5 * ((n : ℚ) / 6)⌉ - ⌊5 * ((n : ℚ) / 6)⌋ : ℚ) ^ (A269297 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366871.P6997217470812972412

namespace A366871

/-- `∑[(ceil(5*n/6)-floor(5*n/6))^A269297(n+1)]` -/
def P6997217470812972412.Spec : Prop :=
  ∀ n, P6997217470812972412.a n = (A366871 n : ℚ)

end A366871

/-!
# A366872: Number of closed chains of identical regular polygons with connecting inner vertices lying n vertices apart.

The programs for A366872, the canonical program `A366872.P9213635915992081364` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366872 has offset 0).

The definition of A366872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366872.P9213635915992081364

`A000005(8+4*n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A366872

/-- `A000005(8+4*n)` -/
def P9213635915992081364.Spec : Prop :=
  ∀ n, P9213635915992081364.a n = A366872 n

theorem P9213635915992081364.correct : P9213635915992081364.Spec := by
  intro n
  simp only [A366872]

end A366872

/-! ## A366872.P8724709175393754023

`∏{e}[4*(n+2), #+1]`
-/

namespace A366872.P8724709175393754023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A366872.P8724709175393754023

namespace A366872

/-- `∏{e}[4*(n+2), #+1]` -/
def P8724709175393754023.Spec : Prop :=
  ∀ n, (P8724709175393754023.a n : ℤ) = A366872 n

end A366872

/-! ## A366872.P7972109024352450989

`∑{d}[n+2, 3^(#%2)]`
-/

namespace A366872.P7972109024352450989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 ^ (d % 2)

end

end A366872.P7972109024352450989

namespace A366872

/-- `∑{d}[n+2, 3^(#%2)]` -/
def P7972109024352450989.Spec : Prop :=
  ∀ n, (P7972109024352450989.a n : ℤ) = A366872 n

end A366872

/-! ## A366872.P10644067019406445690

`∑{d}[n+2, 3^and(1, #)]`
-/

namespace A366872.P10644067019406445690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 ^ Nat.land 1 d

end

end A366872.P10644067019406445690

namespace A366872

/-- `∑{d}[n+2, 3^and(1, #)]` -/
def P10644067019406445690.Spec : Prop :=
  ∀ n, (P10644067019406445690.a n : ℤ) = A366872 n

end A366872

/-! ## A366872.P15897899329033476380

`∑{d}[n+2, 2-(-1)^#]`
-/

namespace A366872.P15897899329033476380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (-1) ^ d)

end

end A366872.P15897899329033476380

namespace A366872

/-- `∑{d}[n+2, 2-(-1)^#]` -/
def P15897899329033476380.Spec : Prop :=
  ∀ n, P15897899329033476380.a n = A366872 n

end A366872

/-! ## A366872.P14533276310956136497

`A302707(n+1)+2`
-/

namespace A366872.P14533276310956136497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 (n + 1) + 2

end

end A366872.P14533276310956136497

namespace A366872

/-- `A302707(n+1)+2` -/
def P14533276310956136497.Spec : Prop :=
  ∀ n, P14533276310956136497.a n = A366872 n

end A366872

/-! ## A366872.P9174301903016107871

`A099777(2*(n+2))`
-/

namespace A366872.P9174301903016107871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (2 * (n + 2))

end

end A366872.P9174301903016107871

namespace A366872

/-- `A099777(2*(n+2))` -/
def P9174301903016107871.Spec : Prop :=
  ∀ n, P9174301903016107871.a n = A366872 n

end A366872

/-! ## A366872.P12775558010082048469

`A009056(A302707(n+1))`
-/

namespace A366872.P12775558010082048469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A302707 (n + 1)).toNat

end

end A366872.P12775558010082048469

namespace A366872

/-- `A009056(A302707(n+1))` -/
def P12775558010082048469.Spec : Prop :=
  ∀ n, P12775558010082048469.a n = A366872 n

end A366872

/-! ## A366872.P7163997899701276070

`A054844(n+2)+A000005(n+2)`
-/

namespace A366872.P7163997899701276070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 2) + A000005 (n + 2)

end

end A366872.P7163997899701276070

namespace A366872

/-- `A054844(n+2)+A000005(n+2)` -/
def P7163997899701276070.Spec : Prop :=
  ∀ n, P7163997899701276070.a n = A366872 n

end A366872

/-! ## A366872.P10174594617344099568

`A099777(n+2)+A099777(n+2)-A000005(n+2)`
-/

namespace A366872.P10174594617344099568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 2) + (A099777 (n + 2) - A000005 (n + 2))

end

end A366872.P10174594617344099568

namespace A366872

/-- `A099777(n+2)+A099777(n+2)-A000005(n+2)` -/
def P10174594617344099568.Spec : Prop :=
  ∀ n, P10174594617344099568.a n = A366872 n

end A366872

/-! ## A366872.P4368086544405801097

`A372784(n+2)`
-/

namespace A366872.P4368086544405801097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (n + 2)

end

end A366872.P4368086544405801097

namespace A366872

/-- `A372784(n+2)` -/
def P4368086544405801097.Spec : Prop :=
  ∀ n, P4368086544405801097.a n = A366872 n

theorem P4368086544405801097.correct : P4368086544405801097.Spec := by
  intro n
  simp only [A366872, Nat.add_sub_cancel, A366872.P4368086544405801097.a, A366872.P9213635915992081364.a, A000005, A000005.P16091521709108585461.a, A372784, A372784.P17501289729252677399.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366872

/-! ## A366872.P10201852409150152549

`A099777(n+2)+A001227(n+2)`
-/

namespace A366872.P10201852409150152549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 2) + A001227 (n + 2)

end

end A366872.P10201852409150152549

namespace A366872

/-- `A099777(n+2)+A001227(n+2)` -/
def P10201852409150152549.Spec : Prop :=
  ∀ n, P10201852409150152549.a n = A366872 n

end A366872

/-! ## A366872.P4228122759034947022

`A062011(n+2)+A048272(n+2)`
-/

namespace A366872.P4228122759034947022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 2) + A048272 (n + 2)

end

end A366872.P4228122759034947022

namespace A366872

/-- `A062011(n+2)+A048272(n+2)` -/
def P4228122759034947022.Spec : Prop :=
  ∀ n, P4228122759034947022.a n = A366872 n

end A366872

/-! ## A366872.P9210791678837848

`A378216(n+2)+A111150(n+2)`
-/

namespace A366872.P9210791678837848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 2) + A111150 (n + 2)

end

end A366872.P9210791678837848

namespace A366872

/-- `A378216(n+2)+A111150(n+2)` -/
def P9210791678837848.Spec : Prop :=
  ∀ n, P9210791678837848.a n = A366872 n

end A366872

/-! ## A366872.P14606361215636864628

`A372788(n+2)-A001227(n+2)`
-/

namespace A366872.P14606361215636864628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372788 (n + 2) - A001227 (n + 2)

end

end A366872.P14606361215636864628

namespace A366872

/-- `A372788(n+2)-A001227(n+2)` -/
def P14606361215636864628.Spec : Prop :=
  ∀ n, P14606361215636864628.a n = A366872 n

end A366872

/-! ## A366872.P3473306768048823965

`A001227(n+2)*A090739(n+2)`
-/

namespace A366872.P3473306768048823965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 2) * A090739 (n + 2)

end

end A366872.P3473306768048823965

namespace A366872

/-- `A001227(n+2)*A090739(n+2)` -/
def P3473306768048823965.Spec : Prop :=
  ∀ n, P3473306768048823965.a n = A366872 n

end A366872

/-! ## A366872.P14998889920889209318

`A001227(n+2)+A001227(n+2)+A000005(n+2)`
-/

namespace A366872.P14998889920889209318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 2) + (A001227 (n + 2) + A000005 (n + 2))

end

end A366872.P14998889920889209318

namespace A366872

/-- `A001227(n+2)+A001227(n+2)+A000005(n+2)` -/
def P14998889920889209318.Spec : Prop :=
  ∀ n, P14998889920889209318.a n = A366872 n

end A366872

/-! ## A366872.P17244368701460228480

`A000005(n+2)+A048272(n+2)+A000005(n+2)`
-/

namespace A366872.P17244368701460228480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + (A048272 (n + 2) + A000005 (n + 2))

end

end A366872.P17244368701460228480

namespace A366872

/-- `A000005(n+2)+A048272(n+2)+A000005(n+2)` -/
def P17244368701460228480.Spec : Prop :=
  ∀ n, P17244368701460228480.a n = A366872 n

end A366872

/-! ## A366872.P9203517005647787098

`A340273(4*(n+2))`
-/

namespace A366872.P9203517005647787098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (4 * (n + 2))

end

end A366872.P9203517005647787098

namespace A366872

/-- `A340273(4*(n+2))` -/
def P9203517005647787098.Spec : Prop :=
  ∀ n, P9203517005647787098.a n = A366872 n

end A366872

/-! ## A366872.P8904348499613961388

`A320111(8*(n+2))`
-/

namespace A366872.P8904348499613961388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (8 * (n + 2))

end

end A366872.P8904348499613961388

namespace A366872

/-- `A320111(8*(n+2))` -/
def P8904348499613961388.Spec : Prop :=
  ∀ n, P8904348499613961388.a n = A366872 n

end A366872

/-!
# A366873: a(n) = A113415(A163511(n)), where A113415(n) is the average of number of and sum of odd divisors of n.

The programs for A366873, the canonical program `A366873.P10214570237099345026` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366873 has offset 0).

The definition of A366873 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113415, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366873.P9228494262753650348

`1/2*(A324186(n)+A366797(n))`
-/

namespace A366873.P9228494262753650348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A324186 n + A366797 n : ℚ)

end

end A366873.P9228494262753650348

namespace A366873

/-- `1/2*(A324186(n)+A366797(n))` -/
def P9228494262753650348.Spec : Prop :=
  ∀ n, P9228494262753650348.a n = (A366873 n : ℚ)

end A366873

/-! ## A366873.P10214570237099345026

`A113415(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A366873

/-- `A113415(A163511(n))` -/
def P10214570237099345026.Spec : Prop :=
  ∀ n, P10214570237099345026.a n = A366873 n

theorem P10214570237099345026.correct : P10214570237099345026.Spec := by
  intro n
  simp only [A366873]

end A366873

/-! ## A366873.P3293706886755846986

`A353417(2*A163511(n))`
-/

namespace A366873.P3293706886755846986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353417 (2 * A163511 n).toNat

end

end A366873.P3293706886755846986

namespace A366873

/-- `A353417(2*A163511(n))` -/
def P3293706886755846986.Spec : Prop :=
  ∀ n, P3293706886755846986.a n = A366873 n

end A366873

/-! ## A366873.P10179778325958636925

`A349916(4*A163511(n))`
-/

namespace A366873.P10179778325958636925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (4 * A163511 n).toNat

end

end A366873.P10179778325958636925

namespace A366873

/-- `A349916(4*A163511(n))` -/
def P10179778325958636925.Spec : Prop :=
  ∀ n, P10179778325958636925.a n = A366873 n

end A366873

/-!
# A366875: a(n) = A349915(A163511(n)), where A349915 is the Dirichlet inverse of the arithmetic mean between the number and sum of the odd divisors of n.

The programs for A366875, there is no canonical definition to state claims against.
-/

/-! ## A366875.P14574304923708691742

`A349915(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366875.P14574304923708691742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (A163511 n).toNat

end

end A366875.P14574304923708691742

/-! ## A366875.P1291029197688479604

`A349915(A364258(n)+n)`
-/

namespace A366875.P1291029197688479604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (A364258 n + (n : ℤ)).toNat

end

end A366875.P1291029197688479604

/-! ## A366875.P5780177563997085286

`A349915(A364255(n)*A364492(n))`
-/

namespace A366875.P5780177563997085286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (A364255 n * A364492 n).toNat

end

end A366875.P5780177563997085286

/-!
# A366877: Lexicographically earliest infinite sequence such that a(i) = a(j) => A337377(i) = A337377(j) for all i, j >= 0, where A337377 is the primorial deflation (denominator) of Doudna sequence.

The programs for A366877, there is no canonical definition to state claims against.
-/

/-! ## A366877.P5657280254017727873

`xor(A077609(n+1), A354451(A056993(n)))`
-/

namespace A366877.P5657280254017727873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077609 (n + 1)) (A354451 (A056993 n).toNat)

end

end A366877.P5657280254017727873

/-! ## A366877.P14815588525235458942

`xor(A354451(A056993(n)), A379027(n+1))`
-/

namespace A366877.P14815588525235458942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A354451 (A056993 n).toNat) (A379027 (n + 1))

end

end A366877.P14815588525235458942

/-! ## A366877.P16519461677916112485

`A363943(A165032(n)+A005843(3*n+1))`
-/

namespace A366877.P16519461677916112485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (A165032 n + A005843 (3 * n + 1)).toNat

end

end A366877.P16519461677916112485

/-! ## A366877.P18137301063646678517

`gcd(A000217(A199883(n+4)), A336159(n+1))`
-/

namespace A366877.P18137301063646678517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A199883 (n + 4)).toNat) (A336159 (n + 1))

end

end A366877.P18137301063646678517

/-! ## A366877.P6483385833776029790

`floor(A026233(n+1)/A001221(A037231(n+1)+n))`
-/

namespace A366877.P6483385833776029790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026233 (n + 1) : ℚ) / (A001221 (A037231 (n + 1) + (n : ℤ)).toNat : ℚ)⌋

end

end A366877.P6483385833776029790

/-!
# A366879: a(n) = A326938(A163511(n)), where A326938 is the Dirichlet inverse of the sum of divisors d of n such that n/d is odd.

The programs for A366879, the canonical program `A366879.P12887930198289739423` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366879 has offset 0).

The definition of A366879 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A326938, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366879.P12887930198289739423

`A326938(A163511(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A366879

/-- `A326938(A163511(n))` -/
def P12887930198289739423.Spec : Prop :=
  ∀ n, P12887930198289739423.a n = A366879 n

theorem P12887930198289739423.correct : P12887930198289739423.Spec := by
  intro n
  simp only [A366879]

end A366879

/-! ## A366879.P14209576933549668218

`A326938(A364258(n)+n)`
-/

namespace A366879.P14209576933549668218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (A364258 n + (n : ℤ)).toNat

end

end A366879.P14209576933549668218

namespace A366879

/-- `A326938(A364258(n)+n)` -/
def P14209576933549668218.Spec : Prop :=
  ∀ n, P14209576933549668218.a n = A366879 n

theorem P14209576933549668218.correct : P14209576933549668218.Spec := by
  intro n
  simp only [A366879, Nat.add_sub_cancel, A366879.P14209576933549668218.a, A366879.P12887930198289739423.a, A163511, A163511.P5635496813650871695.a, A326938, A326938.P12021867718184340090.a, A364258, A364258.P6786196179042320049.a, A000034, A000034.P10773112074177680709.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A327278, A327278.P10196785768449648792.f1, A327278.P10196785768449648792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A055615, A055615.P8993130195977213181.a, A067856, A067856.P11218736261645060229.f1, A067856.P11218736261645060229.a, A145341, A145341.P17834554394848515737.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P18254306604665478110.a, A030101, A030101.P16184294017372777612.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366879

/-! ## A366879.P13327669294998561309

`A326938(A364255(n)*A364492(n))`
-/

namespace A366879.P13327669294998561309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (A364255 n * A364492 n).toNat

end

end A366879.P13327669294998561309

namespace A366879

/-- `A326938(A364255(n)*A364492(n))` -/
def P13327669294998561309.Spec : Prop :=
  ∀ n, P13327669294998561309.a n = A366879 n

end A366879

/-!
# A366882: Squarefree numbers that are not primorials.

The programs for A366882, the canonical program `A366882.P5906932285816798416` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366882 has offset 1).

The definition of A366882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366882.P6286503165584850565

`filter[A005117(n+3), A351077(#)]`
-/

namespace A366882.P6286503165584850565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A366882.P6286503165584850565

namespace A366882

/-- `filter[A005117(n+3), A351077(#)]` -/
def P6286503165584850565.Spec : Prop :=
  ∀ n, P6286503165584850565.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P6909920071892855806

`filter[A144338(n+1), A351077(#)]`
-/

namespace A366882.P6909920071892855806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A366882.P6909920071892855806

namespace A366882

/-- `filter[A144338(n+1), A351077(#)]` -/
def P6909920071892855806.Spec : Prop :=
  ∀ n, P6909920071892855806.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P8244265587083253195

`filter[A387097(n+1), A008966(#)]`
-/

namespace A366882.P8244265587083253195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A366882.P8244265587083253195

namespace A366882

/-- `filter[A387097(n+1), A008966(#)]` -/
def P8244265587083253195.Spec : Prop :=
  ∀ n, P8244265587083253195.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P9502735901903400141

`filter[A387097(n+1), A323154(#)]`
-/

namespace A366882.P9502735901903400141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A366882.P9502735901903400141

namespace A366882

/-- `filter[A387097(n+1), A323154(#)]` -/
def P9502735901903400141.Spec : Prop :=
  ∀ n, P9502735901903400141.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P11717797103789327215

`filter[A351076(n+2), A008966(#)]`
-/

namespace A366882.P11717797103789327215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A366882.P11717797103789327215

namespace A366882

/-- `filter[A351076(n+2), A008966(#)]` -/
def P11717797103789327215.Spec : Prop :=
  ∀ n, P11717797103789327215.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P11357307643031593952

`∩[A351076(n+1), A144338(n+1)]`
-/

namespace A366882.P11357307643031593952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366882.P11357307643031593952

namespace A366882

/-- `∩[A351076(n+1), A144338(n+1)]` -/
def P11357307643031593952.Spec : Prop :=
  ∀ n, (P11357307643031593952.a n : ℤ) = A366882 (n + 1)

end A366882

/-! ## A366882.P12002680787578166152

`filter[A352487(n+1), A008966(#)]`
-/

namespace A366882.P12002680787578166152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A366882.P12002680787578166152

namespace A366882

/-- `filter[A352487(n+1), A008966(#)]` -/
def P12002680787578166152.Spec : Prop :=
  ∀ n, P12002680787578166152.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P3433680533997692369

`∩[A005117(n+1), A352487(n+1)]`
-/

namespace A366882.P3433680533997692369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366882.P3433680533997692369

namespace A366882

/-- `∩[A005117(n+1), A352487(n+1)]` -/
def P3433680533997692369.Spec : Prop :=
  ∀ n, (P3433680533997692369.a n : ℤ) = A366882 (n + 1)

end A366882

/-! ## A366882.P9920009913987111221

`filter[A080259(n+1), A008966(#)]`
-/

namespace A366882.P9920009913987111221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A366882.P9920009913987111221

namespace A366882

/-- `filter[A080259(n+1), A008966(#)]` -/
def P9920009913987111221.Spec : Prop :=
  ∀ n, P9920009913987111221.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P5906932285816798416

`∩[A005117(n+1), A080259(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A366882

/-- `∩[A005117(n+1), A080259(n+1)]` -/
def P5906932285816798416.Spec : Prop :=
  ∀ n, (P5906932285816798416.a n : ℤ) = A366882 (n + 1)

theorem P5906932285816798416.correct : P5906932285816798416.Spec := by
  intro n
  simp only [A366882, Nat.add_sub_cancel]

end A366882

/-! ## A366882.P7607812040754927044

`∩[A080259(n+1), A144338(n+1)]`
-/

namespace A366882.P7607812040754927044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366882.P7607812040754927044

namespace A366882

/-- `∩[A080259(n+1), A144338(n+1)]` -/
def P7607812040754927044.Spec : Prop :=
  ∀ n, (P7607812040754927044.a n : ℤ) = A366882 (n + 1)

end A366882

/-! ## A366882.P1757980481327178747

`filter[A369361(n+1), A008966(#)]`
-/

namespace A366882.P1757980481327178747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A366882.P1757980481327178747

namespace A366882

/-- `filter[A369361(n+1), A008966(#)]` -/
def P1757980481327178747.Spec : Prop :=
  ∀ n, P1757980481327178747.a n = A366882 (n + 1)

end A366882

/-! ## A366882.P7324758105526515555

`∩[A005117(n+1), A369361(n+1)]`
-/

namespace A366882.P7324758105526515555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366882.P7324758105526515555

namespace A366882

/-- `∩[A005117(n+1), A369361(n+1)]` -/
def P7324758105526515555.Spec : Prop :=
  ∀ n, (P7324758105526515555.a n : ℤ) = A366882 (n + 1)

end A366882

/-! ## A366882.P709102674398771018

`eq[A255326(n), A369010(n)]`
-/

namespace A366882.P709102674398771018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366882.P709102674398771018

namespace A366882

/-- `eq[A255326(n), A369010(n)]` -/
def P709102674398771018.Spec : Prop :=
  ∀ n, (P709102674398771018.a n : ℤ) = A366882 (n + 1)

end A366882

/-! ## A366882.P17832679285460029524

`eq[A285718(n+1), A369010(n)]`
-/

namespace A366882.P17832679285460029524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366882.P17832679285460029524

namespace A366882

/-- `eq[A285718(n+1), A369010(n)]` -/
def P17832679285460029524.Spec : Prop :=
  ∀ n, (P17832679285460029524.a n : ℤ) = A366882 (n + 1)

end A366882

/-! ## A366882.P6747185438629346535

`filter[A075378(2*(n+1)), A351077(#)]`
-/

namespace A366882.P6747185438629346535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A366882.P6747185438629346535

namespace A366882

/-- `filter[A075378(2*(n+1)), A351077(#)]` -/
def P6747185438629346535.Spec : Prop :=
  ∀ n, P6747185438629346535.a n = A366882 (n + 1)

end A366882

/-!
# A366884: Number of branching factorizations of the least integer of each prime signature (A025487).

The programs for A366884, there is no canonical definition to state claims against.
-/

/-! ## A366884.P3070400367380074072

`A277120(A025487(n+1))`
-/

namespace A366884.P3070400367380074072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277120 (A025487 (n + 1)).toNat

end

end A366884.P3070400367380074072

/-! ## A366884.P6585351119665898793

`A366377(A181815(n+1))`
-/

namespace A366884.P6585351119665898793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366377 (A181815 (n + 1)).toNat

end

end A366884.P6585351119665898793

/-! ## A366884.P5506890777853546746

`A277120(record[A046523(n+1)])`
-/

namespace A366884.P5506890777853546746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366884.P5506890777853546746

/-! ## A366884.P2382788783662072275

`A277120(A233819(n+1))`
-/

namespace A366884.P2382788783662072275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277120 (A233819 (n + 1)).toNat

end

end A366884.P2382788783662072275

/-!
# A366885: Dedekind psi function applied to the odd part of n, permuted by A163511: a(n) = A347385(A163511(n)).

The programs for A366885, the canonical program `A366885.P6460870065527769006` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366885 has offset 0).

The definition of A366885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A347385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366885.P6460870065527769006

`A347385(A163511(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366885

/-- `A347385(A163511(n))` -/
def P6460870065527769006.Spec : Prop :=
  ∀ n, P6460870065527769006.a n = A366885 n

theorem P6460870065527769006.correct : P6460870065527769006.Spec := by
  intro n
  simp only [A366885]

end A366885

/-! ## A366885.P295784555570412527

`A347385(A364258(n)+n)`
-/

namespace A366885.P295784555570412527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347385 (A364258 n + (n : ℤ)).toNat

end

end A366885.P295784555570412527

namespace A366885

/-- `A347385(A364258(n)+n)` -/
def P295784555570412527.Spec : Prop :=
  ∀ n, P295784555570412527.a n = A366885 n

end A366885

/-! ## A366885.P11277677187684177192

`A336651(A163511(n))*A366887(n)`
-/

namespace A366885.P11277677187684177192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336651 (A163511 n).toNat * A366887 n

end

end A366885.P11277677187684177192

namespace A366885

/-- `A336651(A163511(n))*A366887(n)` -/
def P11277677187684177192.Spec : Prop :=
  ∀ n, P11277677187684177192.a n = A366885 n

end A366885

/-!
# A366887: Sum of the odd squarefree divisors permuted by A163511.

The programs for A366887, the canonical program `A366887.P16462098823577047798` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366887 has offset 0).

The definition of A366887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366887.P16462098823577047798

`A206787(A163511(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A366887

/-- `A206787(A163511(n))` -/
def P16462098823577047798.Spec : Prop :=
  ∀ n, P16462098823577047798.a n = A366887 n

theorem P16462098823577047798.correct : P16462098823577047798.Spec := by
  intro n
  simp only [A366887]

end A366887

/-! ## A366887.P15679753838901022501

`A000593(∏{p}[A163511(n), #])`
-/

namespace A366887.P15679753838901022501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A366887.P15679753838901022501

namespace A366887

/-- `A000593(∏{p}[A163511(n), #])` -/
def P15679753838901022501.Spec : Prop :=
  ∀ n, P15679753838901022501.a n = A366887 n

end A366887

/-! ## A366887.P16837983478080045741

`A192066(∏{p}[A163511(n), #])`
-/

namespace A366887.P16837983478080045741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A366887.P16837983478080045741

namespace A366887

/-- `A192066(∏{p}[A163511(n), #])` -/
def P16837983478080045741.Spec : Prop :=
  ∀ n, P16837983478080045741.a n = A366887 n

end A366887

/-! ## A366887.P5259270811687136496

`A300894(∏{p}[A163511(n), #])`
-/

namespace A366887.P5259270811687136496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300894 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A366887.P5259270811687136496

namespace A366887

/-- `A300894(∏{p}[A163511(n), #])` -/
def P5259270811687136496.Spec : Prop :=
  ∀ n, P5259270811687136496.a n = A366887 n

end A366887

/-! ## A366887.P10532263120442334756

`∏{p}[A243353(A180200(n)), A000593(#)]`
-/

namespace A366887.P10532263120442334756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A180200 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 p

end

end A366887.P10532263120442334756

namespace A366887

/-- `∏{p}[A243353(A180200(n)), A000593(#)]` -/
def P10532263120442334756.Spec : Prop :=
  ∀ n, P10532263120442334756.a n = A366887 n

end A366887

/-! ## A366887.P7597921204619465056

`∏{p}[A366275(A057889(n)), A000593(#)]`
-/

namespace A366887.P7597921204619465056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 p

end

end A366887.P7597921204619465056

namespace A366887

/-- `∏{p}[A366275(A057889(n)), A000593(#)]` -/
def P7597921204619465056.Spec : Prop :=
  ∀ n, P7597921204619465056.a n = A366887 n

end A366887

/-! ## A366887.P9928901495527899772

`∏{p}[A302026(A269385(n)), A000593(#)]`
-/

namespace A366887.P9928901495527899772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269385 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 p

end

end A366887.P9928901495527899772

namespace A366887

/-- `∏{p}[A302026(A269385(n)), A000593(#)]` -/
def P9928901495527899772.Spec : Prop :=
  ∀ n, P9928901495527899772.a n = A366887 n

end A366887

/-! ## A366887.P4727531985850894283

`∏{p}[A366263(A234026(n)), A000593(#)]`
-/

namespace A366887.P4727531985850894283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000593 p

end

end A366887.P4727531985850894283

namespace A366887

/-- `∏{p}[A366263(A234026(n)), A000593(#)]` -/
def P4727531985850894283.Spec : Prop :=
  ∀ n, P4727531985850894283.a n = A366887 n

end A366887

/-! ## A366887.P3790749486459518096

`∏{p}[A366275(A057889(n)), A192066(#)]`
-/

namespace A366887.P3790749486459518096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A192066 p

end

end A366887.P3790749486459518096

namespace A366887

/-- `∏{p}[A366275(A057889(n)), A192066(#)]` -/
def P3790749486459518096.Spec : Prop :=
  ∀ n, P3790749486459518096.a n = A366887 n

end A366887

/-! ## A366887.P239148895358091887

`∏{p}[A366275(A057889(n)), A206787(#)]`
-/

namespace A366887.P239148895358091887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A206787 p

end

end A366887.P239148895358091887

namespace A366887

/-- `∏{p}[A366275(A057889(n)), A206787(#)]` -/
def P239148895358091887.Spec : Prop :=
  ∀ n, P239148895358091887.a n = A366887 n

end A366887

/-! ## A366887.P4241144296735582935

`∏{p}[A366275(A057889(n)), A300894(#)]`
-/

namespace A366887.P4241144296735582935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A300894 p

end

end A366887.P4241144296735582935

namespace A366887

/-- `∏{p}[A366275(A057889(n)), A300894(#)]` -/
def P4241144296735582935.Spec : Prop :=
  ∀ n, P4241144296735582935.a n = A366887 n

end A366887

/-! ## A366887.P1665855663504333796

`∏{p}[A366263(A234026(n)), A192066(#)]`
-/

namespace A366887.P1665855663504333796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A192066 p

end

end A366887.P1665855663504333796

namespace A366887

/-- `∏{p}[A366263(A234026(n)), A192066(#)]` -/
def P1665855663504333796.Spec : Prop :=
  ∀ n, P1665855663504333796.a n = A366887 n

end A366887

/-! ## A366887.P13131144069587356691

`∏{p}[A366263(A234026(n)), A206787(#)]`
-/

namespace A366887.P13131144069587356691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A206787 p

end

end A366887.P13131144069587356691

namespace A366887

/-- `∏{p}[A366263(A234026(n)), A206787(#)]` -/
def P13131144069587356691.Spec : Prop :=
  ∀ n, P13131144069587356691.a n = A366887 n

end A366887

/-! ## A366887.P4914153095547398361

`∏{p}[A366263(A234026(n)), A300894(#)]`
-/

namespace A366887.P4914153095547398361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234026 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A300894 p

end

end A366887.P4914153095547398361

namespace A366887

/-- `∏{p}[A366263(A234026(n)), A300894(#)]` -/
def P4914153095547398361.Spec : Prop :=
  ∀ n, P4914153095547398361.a n = A366887 n

end A366887

/-! ## A366887.P17303067686223521174

`A000593(A204455(A163511(2*n)))`
-/

namespace A366887.P17303067686223521174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A204455 (A163511 (2 * n)).toNat).toNat

end

end A366887.P17303067686223521174

namespace A366887

/-- `A000593(A204455(A163511(2*n)))` -/
def P17303067686223521174.Spec : Prop :=
  ∀ n, P17303067686223521174.a n = A366887 n

end A366887

/-! ## A366887.P13505139385105276996

`A336649(A204455(A163511(n))²)`
-/

namespace A366887.P13505139385105276996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336649 (A204455 (A163511 n).toNat ^ 2).toNat

end

end A366887.P13505139385105276996

namespace A366887

/-- `A336649(A204455(A163511(n))²)` -/
def P13505139385105276996.Spec : Prop :=
  ∀ n, P13505139385105276996.a n = A366887 n

end A366887

/-!
# A366888: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366887(i) = A366887(j) for all i, j >= 0.

The programs for A366888, there is no canonical definition to state claims against.
-/

/-! ## A366888.P5515281865166199433

`A323436(A005940(n+1))%A360558(2*n+3)`
-/

namespace A366888.P5515281865166199433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323436 (A005940 (n + 1)).toNat) (A360558 (2 * n + 3))

end

end A366888.P5515281865166199433

/-! ## A366888.P16446588945676499918

`A001221(A133179(2*n+1)+A133179(n))`
-/

namespace A366888.P16446588945676499918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A133179 (2 * n + 1) + A133179 n).toNat

end

end A366888.P16446588945676499918

/-! ## A366888.P6798362734656759981

`A010051(A324714(3*n+5))+A000120(n)`
-/

namespace A366888.P6798362734656759981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A324714 (3 * n + 5)).toNat + A000120 n

end

end A366888.P6798362734656759981

/-! ## A366888.P15152655911651168921

`A323436(A005940(n+1))%A087310(n+5)`
-/

namespace A366888.P15152655911651168921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323436 (A005940 (n + 1)).toNat) (A087310 (n + 5))

end

end A366888.P15152655911651168921

/-! ## A366888.P13063516831551311926

`A323436(A374717(n+1))`
-/

namespace A366888.P13063516831551311926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A374717 (n + 1)).toNat

end

end A366888.P13063516831551311926

/-!
# A366889: Dirichlet inverse of the highest power of two that divides the sum of divisors of n.

The programs for A366889, there is no canonical definition to state claims against.
-/

/-! ## A366889.P2916273487810522228

`A368694(A243071(n+1))`
-/

namespace A366889.P2916273487810522228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368694 (A243071 (n + 1)).toNat

end

end A366889.P2916273487810522228

/-!
# A366892: a(n) = A336652(A163511(n)).

The programs for A366892, the canonical program `A366892.P16519678978380655638` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366892 has offset 0).

The definition of A366892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366892.P16519678978380655638

`A336652(A163511(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366892

/-- `A336652(A163511(n))` -/
def P16519678978380655638.Spec : Prop :=
  ∀ n, P16519678978380655638.a n = A366892 n

theorem P16519678978380655638.correct : P16519678978380655638.Spec := by
  intro n
  simp only [A366892]

end A366892

/-! ## A366892.P2294685401969059284

`A336652(A364258(n)+n)`
-/

namespace A366892.P2294685401969059284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (A364258 n + (n : ℤ)).toNat

end

end A366892.P2294685401969059284

namespace A366892

/-- `A336652(A364258(n)+n)` -/
def P2294685401969059284.Spec : Prop :=
  ∀ n, P2294685401969059284.a n = A366892 n

end A366892

/-! ## A366892.P11613189571533417976

`A057723(A000265(A163511(2*n)))`
-/

namespace A366892.P11613189571533417976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A000265 (A163511 (2 * n)).toNat).toNat

end

end A366892.P11613189571533417976

namespace A366892

/-- `A057723(A000265(A163511(2*n)))` -/
def P11613189571533417976.Spec : Prop :=
  ∀ n, P11613189571533417976.a n = A366892 n

end A366892

/-! ## A366892.P9867444107299074703

`A324186(n)-A341612(A018020(n))`
-/

namespace A366892.P9867444107299074703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 n - A341612 (A018020 n).toNat

end

end A366892.P9867444107299074703

namespace A366892

/-- `A324186(n)-A341612(A018020(n))` -/
def P9867444107299074703.Spec : Prop :=
  ∀ n, P9867444107299074703.a n = A366892 n

end A366892

/-!
# A366893: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366892(i) = A366892(j) for all i, j >= 0.

The programs for A366893, the canonical program `A366893.P9479425675284615300` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366893 has offset 0).

The definition of A366893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366893.P5026864923186140268

`A003602(n^A178334(n))`
-/

namespace A366893.P5026864923186140268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A366893.P5026864923186140268

namespace A366893

/-- `A003602(n^A178334(n))` -/
def P5026864923186140268.Spec : Prop :=
  ∀ n, P5026864923186140268.a n = A366893 n

end A366893

/-! ## A366893.P828674209664638282

`A103391(n+1)-A057979(A320232(n))`
-/

namespace A366893.P828674209664638282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 1) - A057979 (A320232 n).toNat

end

end A366893.P828674209664638282

namespace A366893

/-- `A103391(n+1)-A057979(A320232(n))` -/
def P828674209664638282.Spec : Prop :=
  ∀ n, P828674209664638282.a n = A366893 n

end A366893

/-! ## A366893.P3364666417626391908

`A025480(abs(1-n))+A003557(A005385(n+1))`
-/

namespace A366893.P3364666417626391908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 |1 - (n : ℤ)|.toNat + A003557 (A005385 (n + 1)).toNat

end

end A366893.P3364666417626391908

namespace A366893

/-- `A025480(abs(1-n))+A003557(A005385(n+1))` -/
def P3364666417626391908.Spec : Prop :=
  ∀ n, P3364666417626391908.a n = A366893 n

end A366893

/-! ## A366893.P16112943516486296314

`A054977(A005385(n+5))+A025480(abs(1-n))`
-/

namespace A366893.P16112943516486296314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A005385 (n + 5)).toNat + A025480 |1 - (n : ℤ)|.toNat

end

end A366893.P16112943516486296314

namespace A366893

/-- `A054977(A005385(n+5))+A025480(abs(1-n))` -/
def P16112943516486296314.Spec : Prop :=
  ∀ n, P16112943516486296314.a n = A366893 n

end A366893

/-! ## A366893.P4192807158861118558

`A058933(A207790(n+1))%A165493(2*(n+1))`
-/

namespace A366893.P4192807158861118558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (A207790 (n + 1)).toNat) (A165493 (2 * (n + 1)))

end

end A366893.P4192807158861118558

namespace A366893

/-- `A058933(A207790(n+1))%A165493(2*(n+1))` -/
def P4192807158861118558.Spec : Prop :=
  ∀ n, P4192807158861118558.a n = A366893 n

end A366893

/-! ## A366893.P321161573354421698

`A003602(A028310(n)*A112085(n+1))`
-/

namespace A366893.P321161573354421698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A028310 n * A112085 (n + 1)).toNat

end

end A366893.P321161573354421698

namespace A366893

/-- `A003602(A028310(n)*A112085(n+1))` -/
def P321161573354421698.Spec : Prop :=
  ∀ n, P321161573354421698.a n = A366893 n

end A366893

/-! ## A366893.P9479425675284615300

`A003602(A000007(n²)+n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A366893

/-- `A003602(A000007(n²)+n)` -/
def P9479425675284615300.Spec : Prop :=
  ∀ n, P9479425675284615300.a n = A366893 n

theorem P9479425675284615300.correct : P9479425675284615300.Spec := by
  intro n
  simp only [A366893]

end A366893

/-! ## A366893.P14800894537651825958

`A003602(n+1-A057427(n²))`
-/

namespace A366893.P14800894537651825958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ((n + 1 : ℤ) - A057427 (n ^ 2)).toNat

end

end A366893.P14800894537651825958

namespace A366893

/-- `A003602(n+1-A057427(n²))` -/
def P14800894537651825958.Spec : Prop :=
  ∀ n, P14800894537651825958.a n = A366893 n

theorem P14800894537651825958.correct : P14800894537651825958.Spec := by
  intro n
  simp only [A366893, Nat.add_sub_cancel, A366893.P14800894537651825958.a, A366893.P9479425675284615300.a, A000007, A000007.P6599383543502402472.a, A003602, A003602.P7612175048291952394.a, A057427, A057427.P3058147525557661423.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366893

/-! ## A366893.P17911441683406663330

`A103391(n+1)-A057427(A000290(n))`
-/

namespace A366893.P17911441683406663330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 1) - A057427 (A000290 n).toNat

end

end A366893.P17911441683406663330

namespace A366893

/-- `A103391(n+1)-A057427(A000290(n))` -/
def P17911441683406663330.Spec : Prop :=
  ∀ n, P17911441683406663330.a n = A366893 n

end A366893

/-!
# A366894: a(n) = A336699(A163511(n)).

The programs for A366894, the canonical program `A366894.P17590388083815126484` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366894 has offset 0).

The definition of A366894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336699, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366894.P17590388083815126484

`A336699(A163511(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366894

/-- `A336699(A163511(n))` -/
def P17590388083815126484.Spec : Prop :=
  ∀ n, P17590388083815126484.a n = A366894 n

theorem P17590388083815126484.correct : P17590388083815126484.Spec := by
  intro n
  simp only [A366894]

end A366894

/-! ## A366894.P6348492341043676538

`A351565(A324186(n))`
-/

namespace A366894.P6348492341043676538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A324186 n).toNat

end

end A366894.P6348492341043676538

namespace A366894

/-- `A351565(A324186(n))` -/
def P6348492341043676538.Spec : Prop :=
  ∀ n, P6348492341043676538.a n = A366894 n

end A366894

/-! ## A366894.P14879584807438330693

`A351565(A000593(A163511(2*n)))`
-/

namespace A366894.P14879584807438330693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A000593 (A163511 (2 * n)).toNat).toNat

end

end A366894.P14879584807438330693

namespace A366894

/-- `A351565(A000593(A163511(2*n)))` -/
def P14879584807438330693.Spec : Prop :=
  ∀ n, P14879584807438330693.a n = A366894 n

end A366894

/-!
# A366898: Number of divisors of n*2^n - 1, the Woodall (or Riesel) numbers.

The programs for A366898, there is no canonical definition to state claims against.
-/

/-! ## A366898.P17767175179480472726

`∏{e}[A003261(n+1), #+1]`
-/

namespace A366898.P17767175179480472726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366898.P17767175179480472726

/-! ## A366898.P1903611021951553155

`∏{e}[2-A002064(n+1), #+1]`
-/

namespace A366898.P1903611021951553155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A002064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366898.P1903611021951553155

/-! ## A366898.P7269145233560527884

`∏{e}[A014480(n)+A000225(n), #+1]`
-/

namespace A366898.P7269145233560527884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n + A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366898.P7269145233560527884

/-! ## A366898.P6112183588282881291

`∏{e}[Δ[(n-1)*A126646(n)], A020725(#)]`
-/

namespace A366898.P6112183588282881291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A126646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020725 (Nat.factorization (f1 n).natAbs p)

end

end A366898.P6112183588282881291

/-!
# A366899: Number of prime factors of n*2^n - 1, counted with multiplicity.

The programs for A366899, there is no canonical definition to state claims against.
-/

/-! ## A366899.P1782513238448311958

`∑{e}[(n+1)*2^(n+1)-1, #]`
-/

namespace A366899.P1782513238448311958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ (n + 1) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366899.P1782513238448311958

