import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A138901: Partial sums of A094837.

The programs for A138901, there is no canonical definition to state claims against.
-/

/-! ## A138901.P8309693542499589959

`∑[A094837(n+1)]`
-/

namespace A138901.P8309693542499589959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138901.P8309693542499589959

/-! ## A138901.P17999682698404791263

`∑[record[A094837(A020986(n))]]`
-/

namespace A138901.P17999682698404791263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094837 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138901.P17999682698404791263

/-! ## A138901.P5889846984865313240

`∑[record[A094837(A022446(n))]]`
-/

namespace A138901.P5889846984865313240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094837 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138901.P5889846984865313240

/-! ## A138901.P5080250745712736577

`∑[record[A094837(A028920(n))]]`
-/

namespace A138901.P5080250745712736577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094837 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138901.P5080250745712736577

/-! ## A138901.P16737717153848912614

`∑[record[A094837(A051340(n))]]`
-/

namespace A138901.P16737717153848912614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094837 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138901.P16737717153848912614

/-!
# A138902: a(n) = d!, where d is the number of digits in n.

The programs for A138902, the canonical program `A138902.P6278283737230094535` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138902 has offset 0).

The definition of A138902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138902.P6278283737230094535

`A055642(n)!`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138902

/-- `A055642(n)!` -/
def P6278283737230094535.Spec : Prop :=
  ∀ n, (P6278283737230094535.a n : ℤ) = A138902 n

theorem P6278283737230094535.correct : P6278283737230094535.Spec := by
  intro n
  simp only [A138902]

end A138902

/-! ## A138902.P10735881489769540616

`dr(A348783(n))!`
-/

namespace A138902.P10735881489769540616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (A348783 n))

end

end A138902.P10735881489769540616

namespace A138902

/-- `dr(A348783(n))!` -/
def P10735881489769540616.Spec : Prop :=
  ∀ n, (P10735881489769540616.a n : ℤ) = A138902 n

end A138902

/-! ## A138902.P205726769705068181

`A004218(n+1)!`
-/

namespace A138902.P205726769705068181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004218 (n + 1)).toNat

end

end A138902.P205726769705068181

namespace A138902

/-- `A004218(n+1)!` -/
def P205726769705068181.Spec : Prop :=
  ∀ n, (P205726769705068181.a n : ℤ) = A138902 n

end A138902

/-! ## A138902.P15581996937786909195

`A262190(A139337(n))!`
-/

namespace A138902.P15581996937786909195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A262190 (A139337 n).toNat).toNat

end

end A138902.P15581996937786909195

namespace A138902

/-- `A262190(A139337(n))!` -/
def P15581996937786909195.Spec : Prop :=
  ∀ n, (P15581996937786909195.a n : ℤ) = A138902 n

end A138902

/-! ## A138902.P3383447050183982531

`(A055641(n)+A055640(n))!`
-/

namespace A138902.P3383447050183982531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055641 n + A055640 n).toNat

end

end A138902.P3383447050183982531

namespace A138902

/-- `(A055641(n)+A055640(n))!` -/
def P3383447050183982531.Spec : Prop :=
  ∀ n, (P3383447050183982531.a n : ℤ) = A138902 n

theorem P3383447050183982531.correct : P3383447050183982531.Spec := by
  intro n
  simp only [A138902, Nat.add_sub_cancel, A138902.P3383447050183982531.a, A138902.P6278283737230094535.a, A055640, A055640.P11694689918486202378.a, A055641, A055641.P17892567296001753674.f1, A055641.P17892567296001753674.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, A196564, A196564.P8945567313368503187.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138902

/-! ## A138902.P15377919578041975182

`A276502(or(1, n))`
-/

namespace A138902.P15377919578041975182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (Nat.lor 1 n)

end

end A138902.P15377919578041975182

namespace A138902

/-- `A276502(or(1, n))` -/
def P15377919578041975182.Spec : Prop :=
  ∀ n, P15377919578041975182.a n = A138902 n

end A138902

/-! ## A138902.P12459512548820769391

`A276502(A005408(A123108(n)))`
-/

namespace A138902.P12459512548820769391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (A005408 (A123108 n).toNat).toNat

end

end A138902.P12459512548820769391

namespace A138902

/-- `A276502(A005408(A123108(n)))` -/
def P12459512548820769391.Spec : Prop :=
  ∀ n, P12459512548820769391.a n = A138902 n

end A138902

/-!
# A138903: a(n) = (1/2^n)* Sum_{k=0..n} binomial(n,k)*(n+k)^(n-1).

The programs for A138903, there is no canonical definition to state claims against.
-/

/-! ## A138903.P8923388623911011044

`n*A311157(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A138903.P8923388623911011044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A311157 (a (n - 1)).toNat - a (n - 1)

end

end A138903.P8923388623911011044

/-!
# A138904: Number of rotational symmetries in the binary expansion of a number.

The programs for A138904, there is no canonical definition to state claims against.
-/

/-! ## A138904.P18271201658409479750

`A070939(n)/A302291(n)`
-/

namespace A138904.P18271201658409479750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (A302291 n : ℚ)

end

end A138904.P18271201658409479750

/-! ## A138904.P3311333520251286735

`ceil(A070939(n)/A341766(n))`
-/

namespace A138904.P3311333520251286735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070939 n : ℚ) / (A341766 n : ℚ)⌉

end

end A138904.P3311333520251286735

/-! ## A138904.P12162897098397476146

`∏{e}[A062383(n), #/A302291(n)]`
-/

namespace A138904.P12162897098397476146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A302291 n : ℚ)

end

end A138904.P12162897098397476146

/-! ## A138904.P18308537890578645004

`ceil(A218461(n+1)/A302291(n))`
-/

namespace A138904.P18308537890578645004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A218461 (n + 1) : ℚ) / (A302291 n : ℚ)⌉

end

end A138904.P18308537890578645004

/-! ## A138904.P9784863280047436857

`ceil(A218461(n+1)/A341766(n))`
-/

namespace A138904.P9784863280047436857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A218461 (n + 1) : ℚ) / (A341766 n : ℚ)⌉

end

end A138904.P9784863280047436857

/-! ## A138904.P3840636983383093943

`C(2, n+2)+A029837(n+1)/A302291(n)`
-/

namespace A138904.P3840636983383093943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℚ) + (A029837 (n + 1) : ℚ) / (A302291 n : ℚ)

end

end A138904.P3840636983383093943

/-! ## A138904.P17549309002569875152

`A028310(A029837(n+1)/A302291(n))`
-/

namespace A138904.P17549309002569875152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A029837 (n + 1) : ℚ) / (A302291 n : ℚ))).toNat

end

end A138904.P17549309002569875152

/-!
# A138905: a(n) is n-th prime == -1 (mod 6n).

The programs for A138905, there is no canonical definition to state claims against.
-/

/-! ## A138905.P13792799921388800381

`A138906(n+1)-A138907(n+1)`
-/

namespace A138905.P13792799921388800381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138906 (n + 1) - A138907 (n + 1)

end

end A138905.P13792799921388800381

/-! ## A138905.P6869788118685058547

`A077316(A178574(n+1))-A138907(n+1)`
-/

namespace A138905.P6869788118685058547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A178574 (n + 1)).toNat - A138907 (n + 1)

end

end A138905.P6869788118685058547

/-! ## A138905.P7901546305128452701

`A077316(∑[4*A017209(n)])-A138907(n+1)`
-/

namespace A138905.P7901546305128452701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A138907 (n + 1)

end

end A138905.P7901546305128452701

/-! ## A138905.P3006205893392784052

`A077316(2*A154516(n+1))-A138907(n+1)`
-/

namespace A138905.P3006205893392784052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (2 * A154516 (n + 1)).toNat - A138907 (n + 1)

end

end A138905.P3006205893392784052

/-!
# A138906: a(n) is n-th prime == 1 (mod 6n).

The programs for A138906, there is no canonical definition to state claims against.
-/

/-! ## A138906.P93079238988101191

`A138907(n+1)+A138905(n+1)`
-/

namespace A138906.P93079238988101191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138907 (n + 1) + A138905 (n + 1)

end

end A138906.P93079238988101191

/-! ## A138906.P6322346023806719160

`A077316(A178574(n+1))`
-/

namespace A138906.P6322346023806719160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A178574 (n + 1)).toNat

end

end A138906.P6322346023806719160

/-! ## A138906.P2843118645988651454

`A077316(∑[4*A017209(n)])`
-/

namespace A138906.P2843118645988651454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138906.P2843118645988651454

/-! ## A138906.P8198957442974588438

`A077316(2*A154516(n+1))`
-/

namespace A138906.P8198957442974588438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (2 * A154516 (n + 1)).toNat

end

end A138906.P8198957442974588438

/-! ## A138906.P3846497812746137744

`A077316(A005843(A154516(n+1)))`
-/

namespace A138906.P3846497812746137744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A005843 (A154516 (n + 1)).toNat).toNat

end

end A138906.P3846497812746137744

/-!
# A138907: a(n) = A138906(n) - A138905(n).

The programs for A138907, there is no canonical definition to state claims against.
-/

/-! ## A138907.P16951706889971684492

`A138906(n+1)-A138905(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138907.P16951706889971684492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138906 (n + 1) - A138905 (n + 1)

end

end A138907.P16951706889971684492

/-! ## A138907.P9417304319242427823

`A077316(A178574(n+1))-A138905(n+1)`
-/

namespace A138907.P9417304319242427823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A178574 (n + 1)).toNat - A138905 (n + 1)

end

end A138907.P9417304319242427823

/-! ## A138907.P13531508044114794646

`A077316(∑[4*A017209(n)])-A138905(n+1)`
-/

namespace A138907.P13531508044114794646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A138905 (n + 1)

end

end A138907.P13531508044114794646

/-! ## A138907.P17141482815109008518

`A077316(2*A154516(n+1))-A138905(n+1)`
-/

namespace A138907.P17141482815109008518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (2 * A154516 (n + 1)).toNat - A138905 (n + 1)

end

end A138907.P17141482815109008518

/-!
# A138908: a(n) = d^d, where d is the number of digits in n.

The programs for A138908, the canonical program `A138908.P3143620244841362508` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138908 has offset 0).

The definition of A138908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138908.P3143620244841362508

`A055642(n)^A055642(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138908

/-- `A055642(n)^A055642(n)` -/
def P3143620244841362508.Spec : Prop :=
  ∀ n, P3143620244841362508.a n = (A138908 n : ℚ)

end A138908

/-!
# A138909: Expansion of e.g.f.: (1+x)/(1-x*exp(x)).

The programs for A138909, there is no canonical definition to state claims against.
-/

/-! ## A138909.P12995692802600375821

`A004275(A211210(n))+n`
-/

namespace A138909.P12995692802600375821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A211210 n).toNat + (n : ℤ)

end

end A138909.P12995692802600375821

/-! ## A138909.P12987104646435539980

`A004273(A211210(n)-1)+n+1`
-/

namespace A138909.P12987104646435539980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A211210 n - 1).toNat + (n : ℤ) + 1

end

end A138909.P12987104646435539980

/-!
# A138910: Inverse binomial transform of A138909.

The programs for A138910, there is no canonical definition to state claims against.
-/

/-! ## A138910.P15309334712407373215

`A003051(A328435(n)²)`
-/

namespace A138910.P15309334712407373215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (A328435 n ^ 2).toNat

end

end A138910.P15309334712407373215

/-! ## A138910.P8609403365433449001

`A070046(A103367(n+2))`
-/

namespace A138910.P8609403365433449001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (A103367 (n + 2)).toNat

end

end A138910.P8609403365433449001

/-!
# A138911: The n-th term of n-th inverse binomial transform of this sequence is 1 for n>=0.

The programs for A138911, there is no canonical definition to state claims against.
-/

/-! ## A138911.P17403344403405738889

`A052512(n)+A000248(n)`
-/

namespace A138911.P17403344403405738889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052512 n + A000248 n

end

end A138911.P17403344403405738889

/-! ## A138911.P16772223777497818699

`A116071(∑[n])+A052512(n)`
-/

namespace A138911.P16772223777497818699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 (∑ j ∈ Finset.range (n + 1), f1 j) + A052512 n

end

end A138911.P16772223777497818699

/-! ## A138911.P3571244398840077593

`A052506(n+1)+A052506(n)`
-/

namespace A138911.P3571244398840077593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052506 (n + 1) + A052506 n

end

end A138911.P3571244398840077593

/-! ## A138911.P17369259085174356488

`A143397(∑[n]+n)+A052512(n)`
-/

namespace A138911.P17369259085174356488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143397 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A052512 n

end

end A138911.P17369259085174356488

/-! ## A138911.P4767861639062472781

`A245501(∑[n+3])+A052512(n)`
-/

namespace A138911.P4767861639062472781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (∑ j ∈ Finset.range (n + 1), f1 j) + A052512 n

end

end A138911.P4767861639062472781

/-!
# A138912: Inverse binomial transform of A138911.

The programs for A138912, there is no canonical definition to state claims against.
-/

/-! ## A138912.P7357070702355943238

`A028310(A220232(n)+A052506(n))`
-/

namespace A138912.P7357070702355943238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A220232 n + A052506 n).toNat

end

end A138912.P7357070702355943238

/-! ## A138912.P12047302410289826159

`A028310(A220233(C(n, 2)+1)+A052506(n))`
-/

namespace A138912.P12047302410289826159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A220233 (Nat.choose n 2 + 1) + A052506 n).toNat

end

end A138912.P12047302410289826159

/-! ## A138912.P4661230146654273518

`A028310(A052506(n))+n*A052506(A289207(n)+1)`
-/

namespace A138912.P4661230146654273518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052506 n).toNat + (n : ℤ) * A052506 (A289207 n + 1).toNat

end

end A138912.P4661230146654273518

/-!
# A138913: G.f. A(x) satisfies: 4*A(x) = A(A(A(x))) + 3*x + x^2 with A(0)=0.

The programs for A138913, there is no canonical definition to state claims against.
-/

/-! ## A138913.P10881208420632817014

`A039698(A014505(n))`
-/

namespace A138913.P10881208420632817014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (A014505 n).toNat

end

end A138913.P10881208420632817014

/-!
# A138918: Numbers n such that 18n-1 is prime.

The programs for A138918, the canonical program `A138918.P14615723305140985106` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138918 has offset 1).

The definition of A138918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138918.P14615723305140985106

`ceil(p?[9*n-1]/18)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138918

/-- `ceil(p?[9*n-1]/18)` -/
def P14615723305140985106.Spec : Prop :=
  ∀ n, P14615723305140985106.a n = A138918 (n + 1)

theorem P14615723305140985106.correct : P14615723305140985106.Spec := by
  intro n
  simp only [A138918, Nat.add_sub_cancel]

end A138918

/-! ## A138918.P12589793374838692480

`A246965(n+1)-1`
-/

namespace A138918.P12589793374838692480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246965 (n + 1) - 1

end

end A138918.P12589793374838692480

namespace A138918

/-- `A246965(n+1)-1` -/
def P12589793374838692480.Spec : Prop :=
  ∀ n, P12589793374838692480.a n = A138918 (n + 1)

theorem P12589793374838692480.correct : P12589793374838692480.Spec := by
  intro n
  simp only [A138918, Nat.add_sub_cancel, A138918.P12589793374838692480.a, A138918.P14615723305140985106.f1, A138918.P14615723305140985106.a, A246965, A246965.P5539066629223825607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138918

/-! ## A138918.P3978596418436882926

`A258663(n+1)/2`
-/

namespace A138918.P3978596418436882926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258663 (n + 1) : ℚ) / 2

end

end A138918.P3978596418436882926

namespace A138918

/-- `A258663(n+1)/2` -/
def P3978596418436882926.Spec : Prop :=
  ∀ n, P3978596418436882926.a n = (A138918 (n + 1) : ℚ)

theorem P3978596418436882926.correct : P3978596418436882926.Spec := by
  intro n
  simp only [A138918, Nat.add_sub_cancel, A138918.P3978596418436882926.a, A138918.P14615723305140985106.f1, A138918.P14615723305140985106.a, A258663, A258663.P13409284266199840843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138918

/-! ## A138918.P17790534522345210618

`ceil(A061242(n+1)/18)`
-/

namespace A138918.P17790534522345210618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061242 (n + 1) : ℚ) / 18⌉

end

end A138918.P17790534522345210618

namespace A138918

/-- `ceil(A061242(n+1)/18)` -/
def P17790534522345210618.Spec : Prop :=
  ∀ n, P17790534522345210618.a n = A138918 (n + 1)

theorem P17790534522345210618.correct : P17790534522345210618.Spec := by
  intro n
  simp only [A138918, Nat.add_sub_cancel, A138918.P17790534522345210618.a, A138918.P14615723305140985106.f1, A138918.P14615723305140985106.a, A061242, A061242.P14932047030331021065.f1, A061242.P14932047030331021065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138918

/-! ## A138918.P9259627143980725592

`A326139(A258663(n+1))`
-/

namespace A138918.P9259627143980725592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A258663 (n + 1)).toNat

end

end A138918.P9259627143980725592

namespace A138918

/-- `A326139(A258663(n+1))` -/
def P9259627143980725592.Spec : Prop :=
  ∀ n, P9259627143980725592.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P13156489076786211926

`A023443(A246965(n+1))`
-/

namespace A138918.P13156489076786211926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246965 (n + 1)).toNat

end

end A138918.P13156489076786211926

namespace A138918

/-- `A023443(A246965(n+1))` -/
def P13156489076786211926.Spec : Prop :=
  ∀ n, P13156489076786211926.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P11968997570381931015

`ceil(record[A020639(9*n+17)]/18)`
-/

namespace A138918.P11968997570381931015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 18⌉

end

end A138918.P11968997570381931015

namespace A138918

/-- `ceil(record[A020639(9*n+17)]/18)` -/
def P11968997570381931015.Spec : Prop :=
  ∀ n, P11968997570381931015.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P5312492339256924401

`lt[A000005(Δ[(3*n+1)²]+2), 3]+1`
-/

namespace A138918.P5312492339256924401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A138918.P5312492339256924401

namespace A138918

/-- `lt[A000005(Δ[(3*n+1)²]+2), 3]+1` -/
def P5312492339256924401.Spec : Prop :=
  ∀ n, (P5312492339256924401.a n : ℤ) = A138918 (n + 1)

end A138918

/-! ## A138918.P8065356139431570348

`eq[1, A001222(A239129(n+1))]+1`
-/

namespace A138918.P8065356139431570348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239129 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138918.P8065356139431570348

namespace A138918

/-- `eq[1, A001222(A239129(n+1))]+1` -/
def P8065356139431570348.Spec : Prop :=
  ∀ n, (P8065356139431570348.a n : ℤ) = A138918 (n + 1)

end A138918

/-! ## A138918.P2631590638685985294

`ceil(or(1, p?[A017257(n)])/18)`
-/

namespace A138918.P2631590638685985294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 18⌉

end

end A138918.P2631590638685985294

namespace A138918

/-- `ceil(or(1, p?[A017257(n)])/18)` -/
def P2631590638685985294.Spec : Prop :=
  ∀ n, P2631590638685985294.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P12667326416589333772

`A000203(p?[A017257(n)])/18`
-/

namespace A138918.P12667326416589333772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 18

end

end A138918.P12667326416589333772

namespace A138918

/-- `A000203(p?[A017257(n)])/18` -/
def P12667326416589333772.Spec : Prop :=
  ∀ n, P12667326416589333772.a n = (A138918 (n + 1) : ℚ)

end A138918

/-! ## A138918.P5762951241356432592

`A008619(A258663(n+1)-1)`
-/

namespace A138918.P5762951241356432592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A258663 (n + 1) - 1).toNat

end

end A138918.P5762951241356432592

namespace A138918

/-- `A008619(A258663(n+1)-1)` -/
def P5762951241356432592.Spec : Prop :=
  ∀ n, P5762951241356432592.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P111845439356027885

`ceil(lt[A000005(5*n+2*(A004277(n)+4)), 3]/2)`
-/

namespace A138918.P111845439356027885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((5 * n : ℤ) + 2 * (A004277 n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2⌉

end

end A138918.P111845439356027885

namespace A138918

/-- `ceil(lt[A000005(5*n+2*(A004277(n)+4)), 3]/2)` -/
def P111845439356027885.Spec : Prop :=
  ∀ n, P111845439356027885.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P13701098480547347382

`eq[1, A167020(3*(n+1))]+1`
-/

namespace A138918.P13701098480547347382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138918.P13701098480547347382

namespace A138918

/-- `eq[1, A167020(3*(n+1))]+1` -/
def P13701098480547347382.Spec : Prop :=
  ∀ n, (P13701098480547347382.a n : ℤ) = A138918 (n + 1)

end A138918

/-! ## A138918.P10154648073422796310

`ceil(p?[A265035(3*(n+1))]%A265038(3*(n+1))/18)`
-/

namespace A138918.P10154648073422796310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A265038 (3 * (n + 1))) : ℚ) / 18⌉

end

end A138918.P10154648073422796310

namespace A138918

/-- `ceil(p?[A265035(3*(n+1))]%A265038(3*(n+1))/18)` -/
def P10154648073422796310.Spec : Prop :=
  ∀ n, P10154648073422796310.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P687043586934036743

`ceil(or(1, p?[A274406(n+1)])/18)`
-/

namespace A138918.P687043586934036743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 18⌉

end

end A138918.P687043586934036743

namespace A138918

/-- `ceil(or(1, p?[A274406(n+1)])/18)` -/
def P687043586934036743.Spec : Prop :=
  ∀ n, P687043586934036743.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P17653648199693542452

`ceil(p?[A274406(n+1)]%A033171(n+1)/18)`
-/

namespace A138918.P17653648199693542452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033171 (n + 1)) : ℚ) / 18⌉

end

end A138918.P17653648199693542452

namespace A138918

/-- `ceil(p?[A274406(n+1)]%A033171(n+1)/18)` -/
def P17653648199693542452.Spec : Prop :=
  ∀ n, P17653648199693542452.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P5762785133174514108

`A226787((A061242(n+1)-1)/2)`
-/

namespace A138918.P5762785133174514108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226787 (SequenceMachineLib.roundAway ((A061242 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A138918.P5762785133174514108

namespace A138918

/-- `A226787((A061242(n+1)-1)/2)` -/
def P5762785133174514108.Spec : Prop :=
  ∀ n, P5762785133174514108.a n = A138918 (n + 1)

end A138918

/-! ## A138918.P12680338539911639606

`A008618(A061242(n+1))`
-/

namespace A138918.P12680338539911639606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A061242 (n + 1)).toNat

end

end A138918.P12680338539911639606

namespace A138918

/-- `A008618(A061242(n+1))` -/
def P12680338539911639606.Spec : Prop :=
  ∀ n, P12680338539911639606.a n = A138918 (n + 1)

end A138918

/-!
# A138921: Indices k such that A020508(k)=Phi[k](-9) is prime, where Phi is a cyclotomic polynomial.

The programs for A138921, there is no canonical definition to state claims against.
-/

/-! ## A138921.P2437900034542605638

`A344231(n+1)+A001223(A190339(n))`
-/

namespace A138921.P2437900034542605638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344231 (n + 1) + A001223 (A190339 n).toNat

end

end A138921.P2437900034542605638

/-!
# A138922: Indices k such that A020507(k)=Phi[k](-8) is prime, where Phi is a cyclotomic polynomial.

The programs for A138922, there is no canonical definition to state claims against.
-/

/-! ## A138922.P7538134838916903835

`A002264(∩[A138928(n+1), A008591(n)])`
-/

namespace A138922.P7538134838916903835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A138922.P7538134838916903835

/-!
# A138926: Indices k such that A020503(k)=Phi[k](-4) is prime, where Phi is a cyclotomic polynomial.

The programs for A138926, there is no canonical definition to state claims against.
-/

/-! ## A138926.P5864901699342266217

`lt[A086257(n), A098178(n)]`
-/

namespace A138926.P5864901699342266217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138926.P5864901699342266217

/-! ## A138926.P11229826948340649795

`eq[(A086257(n)+1)², A010121(n)]`
-/

namespace A138926.P11229826948340649795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086257 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138926.P11229826948340649795

/-! ## A138926.P14108822693248725528

`eq[A000302(A086257(n)), A010121(n)]`
-/

namespace A138926.P14108822693248725528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A086257 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138926.P14108822693248725528

/-! ## A138926.P3380549468253154963

`eq[A064130(n), A098178(n)]`
-/

namespace A138926.P3380549468253154963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138926.P3380549468253154963

/-! ## A138926.P15765200901140596082

`eq[A064130(n)², A010121(n)]`
-/

namespace A138926.P15765200901140596082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064130 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138926.P15765200901140596082

/-!
# A138928: Indices n such that A020501(n) = phi(n)(-2) is prime, where Phi is a cyclotomic polynomial.

The programs for A138928, there is no canonical definition to state claims against.
-/

/-! ## A138928.P5821182254769471961

`lt[A302635(A303197(n+1)), A284334(n+1)]`
-/

namespace A138928.P5821182254769471961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (A303197 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138928.P5821182254769471961

/-!
# A138929: Twice the prime powers A000961.

The programs for A138929, the canonical program `A138929.P2871587686834618281` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138929 has offset 1).

The definition of A138929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138929.P2871587686834618281

`2*A000961(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A138929

/-- `2*A000961(n+1)` -/
def P2871587686834618281.Spec : Prop :=
  ∀ n, P2871587686834618281.a n = A138929 (n + 1)

theorem P2871587686834618281.correct : P2871587686834618281.Spec := by
  intro n
  simp only [A138929, Nat.add_sub_cancel]

end A138929

/-! ## A138929.P5047082810389936121

`2*sqrt(A056798(n+1))`
-/

namespace A138929.P5047082810389936121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A056798 (n + 1) : ℝ)

end

end A138929.P5047082810389936121

namespace A138929

/-- `2*sqrt(A056798(n+1))` -/
def P5047082810389936121.Spec : Prop :=
  ∀ n, P5047082810389936121.a n = (A138929 (n + 1) : ℝ)

end A138929

/-! ## A138929.P4629051197952804400

`∑[A237709(n+1)]+1`
-/

namespace A138929.P4629051197952804400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A138929.P4629051197952804400

namespace A138929

/-- `∑[A237709(n+1)]+1` -/
def P4629051197952804400.Spec : Prop :=
  ∀ n, P4629051197952804400.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P16794800844816441707

`2*(A181062(n+1)+1)`
-/

namespace A138929.P16794800844816441707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181062 (n + 1) + 1)

end

end A138929.P16794800844816441707

namespace A138929

/-- `2*(A181062(n+1)+1)` -/
def P16794800844816441707.Spec : Prop :=
  ∀ n, P16794800844816441707.a n = A138929 (n + 1)

theorem P16794800844816441707.correct : P16794800844816441707.Spec := by
  intro n
  simp only [A138929, Nat.add_sub_cancel, A138929.P16794800844816441707.a, A138929.P2871587686834618281.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138929

/-! ## A138929.P3557838807230882935

`a(n-1)+2*A057820(n)` with `a(0)=2`
-/

namespace A138929.P3557838807230882935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A057820 n

end

end A138929.P3557838807230882935

namespace A138929

/-- `a(n-1)+2*A057820(n)` -/
def P3557838807230882935.Spec : Prop :=
  ∀ n, P3557838807230882935.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P4244668504049728442

`∪[A020707(n), A278568(n+1)]`
-/

namespace A138929.P4244668504049728442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138929.P4244668504049728442

namespace A138929

/-- `∪[A020707(n), A278568(n+1)]` -/
def P4244668504049728442.Spec : Prop :=
  ∀ n, (P4244668504049728442.a n : ℤ) = A138929 (n + 1)

end A138929

/-! ## A138929.P2354941470732303151

`A309269(n+1)-A057820(n+1)`
-/

namespace A138929.P2354941470732303151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - A057820 (n + 1)

end

end A138929.P2354941470732303151

namespace A138929

/-- `A309269(n+1)-A057820(n+1)` -/
def P2354941470732303151.Spec : Prop :=
  ∀ n, P2354941470732303151.a n = A138929 (n + 1)

theorem P2354941470732303151.correct : P2354941470732303151.Spec := by
  intro n
  simp only [A138929, Nat.add_sub_cancel, A138929.P2354941470732303151.a, A138929.P2871587686834618281.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A057820, A057820.P915405789854175386.a, A309269, A309269.P6439327140874271105.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138929

/-! ## A138929.P14439711687962599789

`∪[A278568(n+1), A354255(n+1)]`
-/

namespace A138929.P14439711687962599789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138929.P14439711687962599789

namespace A138929

/-- `∪[A278568(n+1), A354255(n+1)]` -/
def P14439711687962599789.Spec : Prop :=
  ∀ n, (P14439711687962599789.a n : ℤ) = A138929 (n + 1)

end A138929

/-! ## A138929.P7151731662092581713

`A000961(n+1)+A000961(n+1)+A000007(n+1)`
-/

namespace A138929.P7151731662092581713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (A000961 (n + 1) + A000007 (n + 1))

end

end A138929.P7151731662092581713

namespace A138929

/-- `A000961(n+1)+A000961(n+1)+A000007(n+1)` -/
def P7151731662092581713.Spec : Prop :=
  ∀ n, P7151731662092581713.a n = A138929 (n + 1)

theorem P7151731662092581713.correct : P7151731662092581713.Spec := by
  intro n
  simp only [A138929, Nat.add_sub_cancel, A138929.P7151731662092581713.a, A138929.P2871587686834618281.a, A000007, A000007.P6599383543502402472.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138929

/-! ## A138929.P298600253314732711

`A000961(n+1)+A000961(n+2)-A057820(n+1)`
-/

namespace A138929.P298600253314732711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + (A000961 (n + 2) - A057820 (n + 1))

end

end A138929.P298600253314732711

namespace A138929

/-- `A000961(n+1)+A000961(n+2)-A057820(n+1)` -/
def P298600253314732711.Spec : Prop :=
  ∀ n, P298600253314732711.a n = A138929 (n + 1)

theorem P298600253314732711.correct : P298600253314732711.Spec := by
  intro n
  simp only [A138929, Nat.add_sub_cancel, A138929.P298600253314732711.a, A138929.P2871587686834618281.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A057820, A057820.P915405789854175386.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138929

/-! ## A138929.P13833049412263232866

`A000961(n+2)+A000961(n+2)-A237709(n+2)`
-/

namespace A138929.P13833049412263232866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) + (A000961 (n + 2) - A237709 (n + 2))

end

end A138929.P13833049412263232866

namespace A138929

/-- `A000961(n+2)+A000961(n+2)-A237709(n+2)` -/
def P13833049412263232866.Spec : Prop :=
  ∀ n, P13833049412263232866.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P12135425680223664474

`record[n/a(A001221(n))]` with `a(0)=2`
-/

namespace A138929.P12135425680223664474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P12135425680223664474

namespace A138929

/-- `record[n/a(A001221(n))]` -/
def P12135425680223664474.Spec : Prop :=
  ∀ n, P12135425680223664474.a n = (A138929 (n + 1) : ℚ)

end A138929

/-! ## A138929.P6717028253025971441

`2*record[A020639(n+1)^A001222(n+1)]`
-/

namespace A138929.P6717028253025971441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P6717028253025971441

namespace A138929

/-- `2*record[A020639(n+1)^A001222(n+1)]` -/
def P6717028253025971441.Spec : Prop :=
  ∀ n, P6717028253025971441.a n = (A138929 (n + 1) : ℚ)

end A138929

/-! ## A138929.P4560891043989850425

`2*record[(n+1)/A006530(n+1)*A020639(n+1)]`
-/

namespace A138929.P4560891043989850425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P4560891043989850425

namespace A138929

/-- `2*record[(n+1)/A006530(n+1)*A020639(n+1)]` -/
def P4560891043989850425.Spec : Prop :=
  ∀ n, P4560891043989850425.a n = (A138929 (n + 1) : ℚ)

end A138929

/-! ## A138929.P8346641294051547103

`record[2*A034699(n+1)]`
-/

namespace A138929.P8346641294051547103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P8346641294051547103

namespace A138929

/-- `record[2*A034699(n+1)]` -/
def P8346641294051547103.Spec : Prop :=
  ∀ n, P8346641294051547103.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P1220090301759788685

`record[2*A330691(n+1)]`
-/

namespace A138929.P1220090301759788685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P1220090301759788685

namespace A138929

/-- `record[2*A330691(n+1)]` -/
def P1220090301759788685.Spec : Prop :=
  ∀ n, P1220090301759788685.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P18138802144756503766

`record[2*A330741(n+1)]`
-/

namespace A138929.P18138802144756503766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P18138802144756503766

namespace A138929

/-- `record[2*A330741(n+1)]` -/
def P18138802144756503766.Spec : Prop :=
  ∀ n, P18138802144756503766.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P15508267723582731527

`2*(lt[A001221(n+1), 2]+1)`
-/

namespace A138929.P15508267723582731527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A138929.P15508267723582731527

namespace A138929

/-- `2*(lt[A001221(n+1), 2]+1)` -/
def P15508267723582731527.Spec : Prop :=
  ∀ n, (P15508267723582731527.a n : ℤ) = A138929 (n + 1)

end A138929

/-! ## A138929.P16442293915019299817

`filter[A321193(n+1), A354924(#)]`
-/

namespace A138929.P16442293915019299817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A138929.P16442293915019299817

namespace A138929

/-- `filter[A321193(n+1), A354924(#)]` -/
def P16442293915019299817.Spec : Prop :=
  ∀ n, P16442293915019299817.a n = A138929 (n + 1)

end A138929

/-! ## A138929.P13542424331872176521

`record[2*A324388(n+1)]`
-/

namespace A138929.P13542424331872176521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138929.P13542424331872176521

namespace A138929

/-- `record[2*A324388(n+1)]` -/
def P13542424331872176521.Spec : Prop :=
  ∀ n, P13542424331872176521.a n = A138929 (n + 1)

end A138929

/-!
# A138933: Indices k such that A019321(k)=Phi[k](3) is prime, where Phi is a cyclotomic polynomial.

The programs for A138933, there is no canonical definition to state claims against.
-/

/-! ## A138933.P7255100001214527744

`eq[1, A085028(n+1)]+1`
-/

namespace A138933.P7255100001214527744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138933.P7255100001214527744

/-! ## A138933.P10385007292223346606

`record[(n+2)/A085028(n+2)]`
-/

namespace A138933.P10385007292223346606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A085028 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138933.P10385007292223346606

/-! ## A138933.P3773992375026446550

`eq[1, A085028(A000038(n)+n)]`
-/

namespace A138933.P3773992375026446550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085028 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138933.P3773992375026446550

/-! ## A138933.P16269148935556955675

`eq[A054977(n), A085028(A028310(n))]`
-/

namespace A138933.P16269148935556955675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085028 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138933.P16269148935556955675

/-! ## A138933.P11008452817601815014

`eq[A057427(n), A085028(A028310(n))]`
-/

namespace A138933.P11008452817601815014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085028 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138933.P11008452817601815014

/-!
# A138934: Indices k such that A019322(k) = Phi[k](4) is prime, where Phi is a cyclotomic polynomial.

The programs for A138934, there is no canonical definition to state claims against.
-/

/-! ## A138934.P10924813547348537444

`record[A254048(A072226(n+1)-1)]`
-/

namespace A138934.P10924813547348537444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A072226 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138934.P10924813547348537444

/-! ## A138934.P6382418671106941102

`record[A254048(A138928(n+1)-1)]`
-/

namespace A138934.P6382418671106941102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A138928 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138934.P6382418671106941102

/-! ## A138934.P5060828939692236589

`record[A186421(A302042(A072226(n+1)))]`
-/

namespace A138934.P5060828939692236589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A302042 (A072226 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138934.P5060828939692236589

/-! ## A138934.P3635769497902942420

`record[A348717(A004525(A138928(n+1)))]`
-/

namespace A138934.P3635769497902942420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A004525 (A138928 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138934.P3635769497902942420

/-! ## A138934.P9342802398012161601

`eq[A059841(n), A085021(A257088(n))]`
-/

namespace A138934.P9342802398012161601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138934.P9342802398012161601

/-!
# A138935: Indices k such that A019323(k)=Phi[k](5) is prime, where Phi is a cyclotomic polynomial.

The programs for A138935, there is no canonical definition to state claims against.
-/

/-! ## A138935.P1581225074281903104

`eq[1, A085030(n+1)]+1`
-/

namespace A138935.P1581225074281903104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138935.P1581225074281903104

/-! ## A138935.P17481472454490747127

`eq[1, A085030(A028310(n))]`
-/

namespace A138935.P17481472454490747127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138935.P17481472454490747127

/-! ## A138935.P11511089506437118853

`A020725(eq[1, A085030(n+1)])`
-/

namespace A138935.P11511089506437118853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138935.P11511089506437118853

/-! ## A138935.P10023613827074802965

`A153152(eq[1, A085030(n+1)])`
-/

namespace A138935.P10023613827074802965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138935.P10023613827074802965

/-! ## A138935.P9151182673565830303

`eq[1, A085030(A233583(n+1))]`
-/

namespace A138935.P9151182673565830303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138935.P9151182673565830303

/-!
# A138936: Indices n such that A019324(k)=Phi[k](6) is prime, where Phi is a cyclotomic polynomial.

The programs for A138936, there is no canonical definition to state claims against.
-/

/-! ## A138936.P7737183567377452152

`eq[1, A085031(n+1)]+1`
-/

namespace A138936.P7737183567377452152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138936.P7737183567377452152

/-! ## A138936.P15791358723585328992

`record[A000027(n+1)/A085031(n+1)]`
-/

namespace A138936.P15791358723585328992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A085031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138936.P15791358723585328992

/-! ## A138936.P14684987845505411205

`record[A028310(n+1)/A085031(n+1)]`
-/

namespace A138936.P14684987845505411205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A085031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138936.P14684987845505411205

/-! ## A138936.P15218275023378464321

`record[A008619(2*n)/A085031(n+1)]`
-/

namespace A138936.P15218275023378464321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A085031 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138936.P15218275023378464321

/-!
# A138937: Indices k such that A019325(k)=Phi[k](7) is prime, where Phi is a cyclotomic polynomial.

The programs for A138937, there is no canonical definition to state claims against.
-/

/-! ## A138937.P15525034236668143233

`eq[1, A085032(n+1)]+1`
-/

namespace A138937.P15525034236668143233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138937.P15525034236668143233

/-! ## A138937.P2272625536450670488

`eq[1, A085032(A028310(n))]`
-/

namespace A138937.P2272625536450670488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085032 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138937.P2272625536450670488

/-! ## A138937.P324074925568831595

`A020725(eq[1, A085032(n+1)])`
-/

namespace A138937.P324074925568831595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138937.P324074925568831595

/-! ## A138937.P4680982643518474268

`A065475(eq[1, A085032(n+1)])`
-/

namespace A138937.P4680982643518474268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138937.P4680982643518474268

/-! ## A138937.P17080183066869360624

`A153152(eq[1, A085032(n+1)])`
-/

namespace A138937.P17080183066869360624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138937.P17080183066869360624

/-!
# A138938: Indices k such that A019326(k)=Phi[k](8) is prime, where Phi is a cyclotomic polynomial.

The programs for A138938, there is no canonical definition to state claims against.
-/

/-! ## A138938.P17521656721112615411

`eq[1, A085033(n+1)]+1`
-/

namespace A138938.P17521656721112615411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138938.P17521656721112615411

/-! ## A138938.P13825636903225899101

`lt[A085033(n+1), A020639(2*(n+2))]+1`
-/

namespace A138938.P13825636903225899101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A138938.P13825636903225899101

/-! ## A138938.P17893348056910298386

`eq[A054977(n), A085033(A028310(n))]`
-/

namespace A138938.P17893348056910298386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138938.P17893348056910298386

/-! ## A138938.P119508510525018921

`eq[A057427(n), A085033(A028310(n))]`
-/

namespace A138938.P119508510525018921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138938.P119508510525018921

/-! ## A138938.P15068696384496892925

`lt[A085033(n+1), A000005(A085033(n+1)+1)]+1`
-/

namespace A138938.P15068696384496892925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A085033 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A138938.P15068696384496892925

/-!
# A138939: Indices k such that A019327(k)=Phi[k](9) is prime, where Phi is a cyclotomic polynomial.

The programs for A138939, there is no canonical definition to state claims against.
-/

/-! ## A138939.P5226335425329633655

`eq[1, A085034(n+1)]+1`
-/

namespace A138939.P5226335425329633655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138939.P5226335425329633655

/-! ## A138939.P5703316717377573479

`eq[1, A085034(A028310(n))]`
-/

namespace A138939.P5703316717377573479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085034 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138939.P5703316717377573479

/-! ## A138939.P13223941967920572769

`A020725(eq[1, A085034(n+1)])`
-/

namespace A138939.P13223941967920572769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138939.P13223941967920572769

/-! ## A138939.P15495178254482639879

`A133265(eq[1, A085034(n+1)])`
-/

namespace A138939.P15495178254482639879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138939.P15495178254482639879

/-! ## A138939.P2338061352405867359

`A153152(eq[1, A085034(n+1)])`
-/

namespace A138939.P2338061352405867359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138939.P2338061352405867359

/-!
# A138940: Indices n such that A019328(n) = Phi(n,10) is prime, where Phi is a cyclotomic polynomial.

The programs for A138940, there is no canonical definition to state claims against.
-/

/-! ## A138940.P14927133967936143195

`A007498(lt[A097357(n+1), A075158(n)])`
-/

namespace A138940.P14927133967936143195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138940.P14927133967936143195

/-! ## A138940.P821265612444487158

`eq[1, A085035(n+1)]+1`
-/

namespace A138940.P821265612444487158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138940.P821265612444487158

/-! ## A138940.P18212217798095316759

`record[root(n+2, A085035(n+2))]`
-/

namespace A138940.P18212217798095316759
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A085035 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138940.P18212217798095316759

/-! ## A138940.P14182857231807589041

`eq[1, A085035(A028310(n))]`
-/

namespace A138940.P14182857231807589041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138940.P14182857231807589041

/-! ## A138940.P9454887902755227109

`A020725(eq[1, A085035(n+1)])`
-/

namespace A138940.P9454887902755227109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138940.P9454887902755227109

/-!
# A138945: Positive integers not in A132018.

The programs for A138945, there is no canonical definition to state claims against.
-/

/-! ## A138945.P16843944723004298887

`comp[A132018(n+1)-1]+1`
-/

namespace A138945.P16843944723004298887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138945.P16843944723004298887

/-! ## A138945.P46845139732027316

`comp[A137620(n+1)+A130716(n)-1]+1`
-/

namespace A138945.P46845139732027316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + A130716 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138945.P46845139732027316

/-! ## A138945.P9373002094470622956

`comp[A137620(n+1)+char[A115143(n)]-1]+1`
-/

namespace A138945.P9373002094470622956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138945.P9373002094470622956

/-! ## A138945.P11359493301808394442

`comp[A137620(A323161(n+2)-1)+(-C(2, n))^n]`
-/

namespace A138945.P11359493301808394442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A323161 (n + 2) - 1).toNat + (-(Nat.choose 2 n : ℤ)) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138945.P11359493301808394442

/-! ## A138945.P16142456286737748230

`comp[A137620(A305801(n+1))+(-C(2, n))^n]`
-/

namespace A138945.P16142456286737748230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A305801 (n + 1)).toNat + (-(Nat.choose 2 n : ℤ)) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A138945.P16142456286737748230

/-!
# A138946: Positive integers not in A073071.

The programs for A138946, there is no canonical definition to state claims against.
-/

/-! ## A138946.P14928998355397455637

`A093001(3*(n+1))%A024892(A006728(n))`
-/

namespace A138946.P14928998355397455637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093001 (3 * (n + 1))) (A024892 (A006728 n).toNat)

end

end A138946.P14928998355397455637

/-! ## A138946.P8928549589681604417

`A288998(3*n+4)%A375403(A376653(n+1))`
-/

namespace A138946.P8928549589681604417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288998 (3 * n + 4)) (A375403 (A376653 (n + 1)).toNat)

end

end A138946.P8928549589681604417

/-! ## A138946.P7324087809479334363

`∩[A346131(n+1), A314707(n)]`
-/

namespace A138946.P7324087809479334363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138946.P7324087809479334363

/-! ## A138946.P753191057325211681

`∩[A081835(n+1), A346131(n+1)]`
-/

namespace A138946.P753191057325211681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138946.P753191057325211681

/-!
# A138947: Square array T[i+1,j] = prime(T[i,j]), T[1,j] = j-th nonprime = A018252(j); read by upward antidiagonals.

The programs for A138947, there is no canonical definition to state claims against.
-/

/-! ## A138947.P2323056132011972589

`A114537(∑[char[∑[n]]]²-n)`
-/

namespace A138947.P2323056132011972589
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A138947.P2323056132011972589

/-! ## A138947.P16482221594723545397

`and(-1, A114537(A038722(n+1)))`
-/

namespace A138947.P16482221594723545397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114537 (A038722 (n + 1)).toNat)

end

end A138947.P16482221594723545397

/-! ## A138947.P10390142759611097225

`or(char[4], A114537(A061579(n)+1))`
-/

namespace A138947.P10390142759611097225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114537 (A061579 n + 1).toNat)

end

end A138947.P10390142759611097225

/-! ## A138947.P5517289617292564716

`A114537(A038722(n+1))+A025444(n)`
-/

namespace A138947.P5517289617292564716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A038722 (n + 1)).toNat + A025444 n

end

end A138947.P5517289617292564716

/-! ## A138947.P5451670026328560209

`gcd(A000038(n), A114537(A038722(n+1)))`
-/

namespace A138947.P5451670026328560209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114537 (A038722 (n + 1)).toNat)

end

end A138947.P5451670026328560209

/-!
# A138948: Triangle T[i,j] = exponent of prime A000040(j) in factorization of composite A002808(i).

The programs for A138948, the canonical program `A138948.P4888699677792137686` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138948 has offset 1).

The definition of A138948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138948.P8775724060336610562

`val(A129131(A131507(n)), A037126(n+1))`
-/

namespace A138948.P8775724060336610562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A129131 (A131507 n).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P8775724060336610562

namespace A138948

/-- `val(A129131(A131507(n)), A037126(n+1))` -/
def P8775724060336610562.Spec : Prop :=
  ∀ n, (P8775724060336610562.a n : ℤ) = A138948 (n + 1)

end A138948

/-! ## A138948.P4888699677792137686

`val(A002808(A002024(n+1)), A037126(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138948

/-- `val(A002808(A002024(n+1)), A037126(n+1))` -/
def P4888699677792137686.Spec : Prop :=
  ∀ n, (P4888699677792137686.a n : ℤ) = A138948 (n + 1)

theorem P4888699677792137686.correct : P4888699677792137686.Spec := by
  intro n
  simp only [A138948, Nat.add_sub_cancel]

end A138948

/-! ## A138948.P16293155756442846251

`val(A026239(A005145(n+1)), A037126(n+1))`
-/

namespace A138948.P16293155756442846251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A026239 (A005145 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P16293155756442846251

namespace A138948

/-- `val(A026239(A005145(n+1)), A037126(n+1))` -/
def P16293155756442846251.Spec : Prop :=
  ∀ n, (P16293155756442846251.a n : ℤ) = A138948 (n + 1)

end A138948

/-! ## A138948.P5151102098387437008

`val(A111653(n+1), A000040(A002260(n+1)))`
-/

namespace A138948.P5151102098387437008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A111653 (n + 1)).toNat (A000040 (A002260 (n + 1)).toNat).toNat

end

end A138948.P5151102098387437008

namespace A138948

/-- `val(A111653(n+1), A000040(A002260(n+1)))` -/
def P5151102098387437008.Spec : Prop :=
  ∀ n, (P5151102098387437008.a n : ℤ) = A138948 (n + 1)

end A138948

/-! ## A138948.P7901667362429668170

`val(A067747(A111650(n+1)), A037126(n+1))`
-/

namespace A138948.P7901667362429668170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067747 (A111650 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P7901667362429668170

namespace A138948

/-- `val(A067747(A111650(n+1)), A037126(n+1))` -/
def P7901667362429668170.Spec : Prop :=
  ∀ n, (P7901667362429668170.a n : ℤ) = A138948 (n + 1)

end A138948

/-! ## A138948.P5292226021262590123

`val(A018252(A003057(n+2)), A037126(n+1))`
-/

namespace A138948.P5292226021262590123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018252 (A003057 (n + 2)).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P5292226021262590123

namespace A138948

/-- `val(A018252(A003057(n+2)), A037126(n+1))` -/
def P5292226021262590123.Spec : Prop :=
  ∀ n, (P5292226021262590123.a n : ℤ) = A138948 (n + 1)

end A138948

/-!
# A138949: Expansion of (3 * phi(q^3)^2 - phi(q)^2) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A138949, there is no canonical definition to state claims against.
-/

/-! ## A138949.P18043031676901641022

`A033999(n)*A138951(n)`
-/

namespace A138949.P18043031676901641022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138951 n

end

end A138949.P18043031676901641022

/-! ## A138949.P2536193925677812628

`A138951(2*n)`
-/

namespace A138949.P2536193925677812628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138951 (2 * n)

end

end A138949.P2536193925677812628

/-! ## A138949.P6934722760479649226

`or(A000122(n), A138951(n+n))`
-/

namespace A138949.P6934722760479649226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A138951 (n + n))

end

end A138949.P6934722760479649226

/-! ## A138949.P1215485113356269016

`2*A138745(2*n)-A004018(n)`
-/

namespace A138949.P1215485113356269016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138745 (2 * n) - A004018 n

end

end A138949.P1215485113356269016

/-! ## A138949.P2716628818368682281

`2*A256269(3*n)-A122857(n)`
-/

namespace A138949.P2716628818368682281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256269 (3 * n) - A122857 n

end

end A138949.P2716628818368682281

/-! ## A138949.P11338493977309571780

`2*A004018(3*n)-A132003(2*n)`
-/

namespace A138949.P11338493977309571780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004018 (3 * n) - A132003 (2 * n)

end

end A138949.P11338493977309571780

/-! ## A138949.P1098552206529882832

`A138951(n)/A034947(A008458(n)+1)`
-/

namespace A138949.P1098552206529882832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138951 n : ℚ) / (A034947 (A008458 n + 1).toNat : ℚ)

end

end A138949.P1098552206529882832

/-! ## A138949.P6162937060413342837

`A138951(n)/A034947(n²+5)`
-/

namespace A138949.P6162937060413342837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138951 n : ℚ) / (A034947 (n ^ 2 + 5) : ℚ)

end

end A138949.P6162937060413342837

/-!
# A138950: Expansion of (2 - 3 * phi(q^3)^2 + phi(q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A138950, the canonical program `A138950.P17312000599504240579` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138950 has offset 1).

The definition of A138950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138950.P11926387472657018033

`A116604(A025480(n))`
-/

namespace A138950.P11926387472657018033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A025480 n).toNat

end

end A138950.P11926387472657018033

namespace A138950

/-- `A116604(A025480(n))` -/
def P11926387472657018033.Spec : Prop :=
  ∀ n, P11926387472657018033.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P15530345647179798068

`A138952(A000265(n+1))`
-/

namespace A138950.P15530345647179798068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 (A000265 (n + 1)).toNat

end

end A138950.P15530345647179798068

namespace A138950

/-- `A138952(A000265(n+1))` -/
def P15530345647179798068.Spec : Prop :=
  ∀ n, P15530345647179798068.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P9656201624638516939

`A138952(A153733(n)+1)`
-/

namespace A138950.P9656201624638516939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 (A153733 n + 1).toNat

end

end A138950.P9656201624638516939

namespace A138950

/-- `A138952(A153733(n)+1)` -/
def P9656201624638516939.Spec : Prop :=
  ∀ n, P9656201624638516939.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P8195621184137083826

`A033999(n)*A138952(n+1)`
-/

namespace A138950.P8195621184137083826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138952 (n + 1)

end

end A138950.P8195621184137083826

namespace A138950

/-- `A033999(n)*A138952(n+1)` -/
def P8195621184137083826.Spec : Prop :=
  ∀ n, P8195621184137083826.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P60186470464146227

`A105673(n+1)-A163746(n+1)`
-/

namespace A138950.P60186470464146227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A163746 (n + 1)

end

end A138950.P60186470464146227

namespace A138950

/-- `A105673(n+1)-A163746(n+1)` -/
def P60186470464146227.Spec : Prop :=
  ∀ n, P60186470464146227.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P4068513624335622976

`A034947(n+1)*A163746(n+1)`
-/

namespace A138950.P4068513624335622976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A163746 (n + 1)

end

end A138950.P4068513624335622976

namespace A138950

/-- `A034947(n+1)*A163746(n+1)` -/
def P4068513624335622976.Spec : Prop :=
  ∀ n, P4068513624335622976.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P18326670450478644263

`A099545(n+1)*A113446(n+1)`
-/

namespace A138950.P18326670450478644263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (n + 1) * A113446 (n + 1)

end

end A138950.P18326670450478644263

namespace A138950

/-- `A099545(n+1)*A113446(n+1)` -/
def P18326670450478644263.Spec : Prop :=
  ∀ n, P18326670450478644263.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P10713475416598693757

`A113446(n+1)*A363340(n+1)`
-/

namespace A138950.P10713475416598693757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) * A363340 (n + 1)

end

end A138950.P10713475416598693757

namespace A138950

/-- `A113446(n+1)*A363340(n+1)` -/
def P10713475416598693757.Spec : Prop :=
  ∀ n, P10713475416598693757.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P806033500580628656

`(2-A034947(n+1))*A113446(n+1)`
-/

namespace A138950.P806033500580628656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A034947 (n + 1)) * A113446 (n + 1)

end

end A138950.P806033500580628656

namespace A138950

/-- `(2-A034947(n+1))*A113446(n+1)` -/
def P806033500580628656.Spec : Prop :=
  ∀ n, P806033500580628656.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P2859152160156555441

`2*A113446(n+1)-A035154(n+1)`
-/

namespace A138950.P2859152160156555441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113446 (n + 1) - A035154 (n + 1)

end

end A138950.P2859152160156555441

namespace A138950

/-- `2*A113446(n+1)-A035154(n+1)` -/
def P2859152160156555441.Spec : Prop :=
  ∀ n, P2859152160156555441.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P14362675682409481489

`∑{d}[n+1, A048298(#)*A138952((n+1)/#)]`
-/

namespace A138950.P14362675682409481489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A138952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138950.P14362675682409481489

namespace A138950

/-- `∑{d}[n+1, A048298(#)*A138952((n+1)/#)]` -/
def P14362675682409481489.Spec : Prop :=
  ∀ n, P14362675682409481489.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P17312000599504240579

`∑{d}[n+1, A056594(#-1)*A061347((n+1)/#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138950

/-- `∑{d}[n+1, A056594(#-1)*A061347((n+1)/#)]` -/
def P17312000599504240579.Spec : Prop :=
  ∀ n, P17312000599504240579.a n = A138950 (n + 1)

theorem P17312000599504240579.correct : P17312000599504240579.Spec := by
  intro n
  simp only [A138950, Nat.add_sub_cancel]

end A138950

/-! ## A138950.P6705859459971829721

`∑{d}[n+1, A034947(#)*A117188((n+1)/#-1)]`
-/

namespace A138950.P6705859459971829721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A117188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A138950.P6705859459971829721

namespace A138950

/-- `∑{d}[n+1, A034947(#)*A117188((n+1)/#-1)]` -/
def P6705859459971829721.Spec : Prop :=
  ∀ n, P6705859459971829721.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P3323500941485442739

`∑{d}[n+1, A099894(#-1)*A138952((n+1)/#)]`
-/

namespace A138950.P3323500941485442739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A138952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138950.P3323500941485442739

namespace A138950

/-- `∑{d}[n+1, A099894(#-1)*A138952((n+1)/#)]` -/
def P3323500941485442739.Spec : Prop :=
  ∀ n, P3323500941485442739.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P17156378159320130

`A138949(n+1)/(1-6/2)`
-/

namespace A138950.P17156378159320130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138949 (n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A138950.P17156378159320130

namespace A138950

/-- `A138949(n+1)/(1-6/2)` -/
def P17156378159320130.Spec : Prop :=
  ∀ n, P17156378159320130.a n = (A138950 (n + 1) : ℚ)

end A138950

/-! ## A138950.P2832018772788657550

`A002654(n+1)+A002654(n+1)-A125061(n+1)`
-/

namespace A138950.P2832018772788657550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) + (A002654 (n + 1) - A125061 (n + 1))

end

end A138950.P2832018772788657550

namespace A138950

/-- `A002654(n+1)+A002654(n+1)-A125061(n+1)` -/
def P2832018772788657550.Spec : Prop :=
  ∀ n, P2832018772788657550.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P7095840154805812299

`A004018(n+1)-(A122857(n+1)+A035154(n+1))`
-/

namespace A138950.P7095840154805812299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n + 1) - (A122857 (n + 1) + A035154 (n + 1))

end

end A138950.P7095840154805812299

namespace A138950

/-- `A004018(n+1)-(A122857(n+1)+A035154(n+1))` -/
def P7095840154805812299.Spec : Prop :=
  ∀ n, P7095840154805812299.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P15514780720898026815

`A138952(2*(n+1))-A138949(n+1)`
-/

namespace A138950.P15514780720898026815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 (2 * (n + 1)) - A138949 (n + 1)

end

end A138950.P15514780720898026815

namespace A138950

/-- `A138952(2*(n+1))-A138949(n+1)` -/
def P15514780720898026815.Spec : Prop :=
  ∀ n, P15514780720898026815.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P4365115923719637397

`(A034947(n+1)-2)*A121450(2*(n+1))`
-/

namespace A138950.P4365115923719637397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034947 (n + 1) - 2) * A121450 (2 * (n + 1))

end

end A138950.P4365115923719637397

namespace A138950

/-- `(A034947(n+1)-2)*A121450(2*(n+1))` -/
def P4365115923719637397.Spec : Prop :=
  ∀ n, P4365115923719637397.a n = A138950 (n + 1)

end A138950

/-! ## A138950.P7798361145917052926

`(A099545(n+1)-2)*A138746(2*(n+1))`
-/

namespace A138950.P7798361145917052926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099545 (n + 1) - 2) * A138746 (2 * (n + 1))

end

end A138950.P7798361145917052926

namespace A138950

/-- `(A099545(n+1)-2)*A138746(2*(n+1))` -/
def P7798361145917052926.Spec : Prop :=
  ∀ n, P7798361145917052926.a n = A138950 (n + 1)

end A138950

/-!
# A138951: Expansion of eta(q^2)^7 * eta(q^3)^2 * eta(q^12) / (eta(q)^2 * eta(q^4)^3 * eta(q^6)^3) in powers of q.

The programs for A138951, there is no canonical definition to state claims against.
-/

/-! ## A138951.P7433297281089293892

`(-1)^n*A138949(n)`
-/

namespace A138951.P7433297281089293892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138949 n

end

end A138951.P7433297281089293892

/-! ## A138951.P11700033575274876558

`A138949(n)/A033999(n)`
-/

namespace A138951.P11700033575274876558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138949 n : ℚ) / (A033999 n : ℚ)

end

end A138951.P11700033575274876558

/-! ## A138951.P6457127619342876256

`(2*A004018(3*n)-A132003(2*n))*A033999(n)`
-/

namespace A138951.P6457127619342876256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A004018 (3 * n) - A132003 (2 * n)) * A033999 n

end

end A138951.P6457127619342876256

/-! ## A138951.P11281550086981491420

`A138949(n)/A105794(A000217(n))`
-/

namespace A138951.P11281550086981491420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138949 n : ℚ) / (A105794 (A000217 n).toNat : ℚ)

end

end A138951.P11281550086981491420

/-!
# A138952: Expansion of (eta(q^2)^7 * eta(q^3)^2 * eta(q^12) / (eta(q)^2 * eta(q^4)^3 * eta(q^6)^3) - 1) / 2 in powers of q.

The programs for A138952, the canonical program `A138952.P8845093039142531308` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138952 has offset 1).

The definition of A138952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138952.P8845093039142531308

`(-1)^n*A138950(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138952

/-- `(-1)^n*A138950(n+1)` -/
def P8845093039142531308.Spec : Prop :=
  ∀ n, P8845093039142531308.a n = A138952 (n + 1)

theorem P8845093039142531308.correct : P8845093039142531308.Spec := by
  intro n
  simp only [A138952, Nat.add_sub_cancel]

end A138952

/-! ## A138952.P15270981033752111467

`A138951(n+1)/2`
-/

namespace A138952.P15270981033752111467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138951 (n + 1) : ℚ) / 2

end

end A138952.P15270981033752111467

namespace A138952

/-- `A138951(n+1)/2` -/
def P15270981033752111467.Spec : Prop :=
  ∀ n, P15270981033752111467.a n = (A138952 (n + 1) : ℚ)

end A138952

/-! ## A138952.P17219248803017338809

`A138950(n+1)/A033999(n)`
-/

namespace A138952.P17219248803017338809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A138952.P17219248803017338809

namespace A138952

/-- `A138950(n+1)/A033999(n)` -/
def P17219248803017338809.Spec : Prop :=
  ∀ n, P17219248803017338809.a n = (A138952 (n + 1) : ℚ)

end A138952

/-! ## A138952.P9196620376657527286

`A034947(n+1)*A138746(n+1)`
-/

namespace A138952.P9196620376657527286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A138746 (n + 1)

end

end A138952.P9196620376657527286

namespace A138952

/-- `A034947(n+1)*A138746(n+1)` -/
def P9196620376657527286.Spec : Prop :=
  ∀ n, P9196620376657527286.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P11789581334891431312

`A099545(n+1)*A121450(n+1)`
-/

namespace A138952.P11789581334891431312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (n + 1) * A121450 (n + 1)

end

end A138952.P11789581334891431312

namespace A138952

/-- `A099545(n+1)*A121450(n+1)` -/
def P11789581334891431312.Spec : Prop :=
  ∀ n, P11789581334891431312.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P9269929614251992829

`A121450(n+1)*A363340(n+1)`
-/

namespace A138952.P9269929614251992829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (n + 1) * A363340 (n + 1)

end

end A138952.P9269929614251992829

namespace A138952

/-- `A121450(n+1)*A363340(n+1)` -/
def P9269929614251992829.Spec : Prop :=
  ∀ n, P9269929614251992829.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P1419072803335001675

`(2-A034947(n+1))*A121450(n+1)`
-/

namespace A138952.P1419072803335001675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A034947 (n + 1)) * A121450 (n + 1)

end

end A138952.P1419072803335001675

namespace A138952

/-- `(2-A034947(n+1))*A121450(n+1)` -/
def P1419072803335001675.Spec : Prop :=
  ∀ n, P1419072803335001675.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P2392121748981637502

`(2-A099545(n+1))*A138746(n+1)`
-/

namespace A138952.P2392121748981637502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099545 (n + 1)) * A138746 (n + 1)

end

end A138952.P2392121748981637502

namespace A138952

/-- `(2-A099545(n+1))*A138746(n+1)` -/
def P2392121748981637502.Spec : Prop :=
  ∀ n, P2392121748981637502.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P4914365272025782233

`2*A121450(n+1)-A132004(n+1)`
-/

namespace A138952.P4914365272025782233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121450 (n + 1) - A132004 (n + 1)

end

end A138952.P4914365272025782233

namespace A138952

/-- `2*A121450(n+1)-A132004(n+1)` -/
def P4914365272025782233.Spec : Prop :=
  ∀ n, P4914365272025782233.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P17193135917982540494

`(2-A363340(n+1))*A138746(n+1)`
-/

namespace A138952.P17193135917982540494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A363340 (n + 1)) * A138746 (n + 1)

end

end A138952.P17193135917982540494

namespace A138952

/-- `(2-A363340(n+1))*A138746(n+1)` -/
def P17193135917982540494.Spec : Prop :=
  ∀ n, P17193135917982540494.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P4972602313860041295

`A033999(n+1)/2*A138949(n+1)`
-/

namespace A138952.P4972602313860041295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A138949 (n + 1) : ℚ)

end

end A138952.P4972602313860041295

namespace A138952

/-- `A033999(n+1)/2*A138949(n+1)` -/
def P4972602313860041295.Spec : Prop :=
  ∀ n, P4972602313860041295.a n = (A138952 (n + 1) : ℚ)

end A138952

/-! ## A138952.P4098076877759290987

`A034947(2*n+1)*A034947(n+1)*A163746(n+1)`
-/

namespace A138952.P4098076877759290987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A034947 (n + 1) * A163746 (n + 1)

end

end A138952.P4098076877759290987

namespace A138952

/-- `A034947(2*n+1)*A034947(n+1)*A163746(n+1)` -/
def P4098076877759290987.Spec : Prop :=
  ∀ n, P4098076877759290987.a n = A138952 (n + 1)

end A138952

/-! ## A138952.P355945853170224215

`A138950(n+1)*A320098(n)/A320968(n)`
-/

namespace A138952.P355945853170224215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) * A320098 n : ℚ) / (A320968 n : ℚ)

end

end A138952.P355945853170224215

namespace A138952

/-- `A138950(n+1)*A320098(n)/A320968(n)` -/
def P355945853170224215.Spec : Prop :=
  ∀ n, P355945853170224215.a n = (A138952 (n + 1) : ℚ)

end A138952

/-! ## A138952.P12579384621094876152

`A138950(n+1)/A004409(n)*A319553(n)`
-/

namespace A138952.P12579384621094876152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) : ℚ) / (A004409 n : ℚ) * (A319553 n : ℚ)

end

end A138952.P12579384621094876152

namespace A138952

/-- `A138950(n+1)/A004409(n)*A319553(n)` -/
def P12579384621094876152.Spec : Prop :=
  ∀ n, P12579384621094876152.a n = (A138952 (n + 1) : ℚ)

end A138952

/-! ## A138952.P11770172649311229935

`A138950(n+1)/A004413(n)*A319554(n)`
-/

namespace A138952.P11770172649311229935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) : ℚ) / (A004413 n : ℚ) * (A319554 n : ℚ)

end

end A138952.P11770172649311229935

namespace A138952

/-- `A138950(n+1)/A004413(n)*A319554(n)` -/
def P11770172649311229935.Spec : Prop :=
  ∀ n, P11770172649311229935.a n = (A138952 (n + 1) : ℚ)

end A138952

/-!
# A138953: Sum of numbers from all substrings of n.

The programs for A138953, there is no canonical definition to state claims against.
-/

/-! ## A138953.P14114508743963949616

`A225580(A028310(n))-A028310(n)`
-/

namespace A138953.P14114508743963949616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225580 (A028310 n).toNat - A028310 n

end

end A138953.P14114508743963949616

/-! ## A138953.P9305913730334858123

`A225580(A000007(n)+n)-(A000007(n)+n)`
-/

namespace A138953.P9305913730334858123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225580 (A000007 n + (n : ℤ)).toNat - (A000007 n + (n : ℤ))

end

end A138953.P9305913730334858123

/-! ## A138953.P8920524745352078325

`A225580(A028310(n))%(A028310(n)%A017128(n))`
-/

namespace A138953.P8920524745352078325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (A028310 n).toNat) (Int.tmod (A028310 n) (A017128 n))

end

end A138953.P8920524745352078325

/-! ## A138953.P9986510108575593261

`A225580(A123108(2*n))-A123108(2*n)`
-/

namespace A138953.P9986510108575593261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225580 (A123108 (2 * n)).toNat - A123108 (2 * n)

end

end A138953.P9986510108575593261

/-! ## A138953.P16163864902313709375

`A225580(A233583(n+1))%A065033(2*n)`
-/

namespace A138953.P16163864902313709375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (A233583 (n + 1)).toNat) (A065033 (2 * n))

end

end A138953.P16163864902313709375

/-! ## A138953.P11418237514994446564

`A225580(A233583(n+1))%A008619(A004273(n))`
-/

namespace A138953.P11418237514994446564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (A233583 (n + 1)).toNat) (A008619 (A004273 n).toNat)

end

end A138953.P11418237514994446564

/-! ## A138953.P11311841812962338271

`(A071980(n)-n)%A252910(A005378(n))`
-/

namespace A138953.P11311841812962338271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071980 n - (n : ℤ)) (A252910 (A005378 n).toNat)

end

end A138953.P11311841812962338271

/-! ## A138953.P2372962493244343551

`(A071980(n)+A001489(n))%A000290(A339463(n+1))`
-/

namespace A138953.P2372962493244343551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071980 n + A001489 n) (A000290 (A339463 (n + 1)).toNat)

end

end A138953.P2372962493244343551

/-! ## A138953.P7657985993947727906

`A008966(A063734(n+1))+A071980(n)-n`
-/

namespace A138953.P7657985993947727906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A063734 (n + 1)).toNat + (A071980 n - (n : ℤ))

end

end A138953.P7657985993947727906

/-! ## A138953.P5563158333595258584

`A257297(n+1)-(A171765(n+1)-A053392(n))`
-/

namespace A138953.P5563158333595258584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (n + 1) - (A171765 (n + 1) - A053392 n)

end

end A138953.P5563158333595258584

/-! ## A138953.P1065897603358747370

`A307629(n)+A053392(A196222(n))`
-/

namespace A138953.P1065897603358747370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 n + A053392 (A196222 n).toNat

end

end A138953.P1065897603358747370

/-! ## A138953.P15815619898434101418

`A093882(n)-A053392(A196222(n))`
-/

namespace A138953.P15815619898434101418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 n - A053392 (A196222 n).toNat

end

end A138953.P15815619898434101418

/-! ## A138953.P15348777209335611256

`A347470(A033619(n+1))+A062329(n)`
-/

namespace A138953.P15348777209335611256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A033619 (n + 1)).toNat + A062329 n

end

end A138953.P15348777209335611256

/-! ## A138953.P14144346096018024069

`A093882(A118759(n))%23`
-/

namespace A138953.P14144346096018024069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093882 (A118759 n).toNat) 23

end

end A138953.P14144346096018024069

/-!
# A138954: Number of complement symmetries in the rotations of the binary expansion of a number.

The programs for A138954, there is no canonical definition to state claims against.
-/

/-! ## A138954.P13973961425045483572

`val(A256563(n+1), A182150(A109974(n)))`
-/

namespace A138954.P13973961425045483572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256563 (n + 1)).toNat (A182150 (A109974 n).toNat).toNat

end

end A138954.P13973961425045483572

/-! ## A138954.P11066649023776524776

`val(A342069(n+2), A081761(A007918(n)))`
-/

namespace A138954.P11066649023776524776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A342069 (n + 2)).toNat (A081761 (A007918 n).toNat).toNat

end

end A138954.P11066649023776524776

/-! ## A138954.P15493588981188851121

`val(A342069(n+2), A007918(A007918(n)+1))`
-/

namespace A138954.P15493588981188851121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A342069 (n + 2)).toNat (A007918 (A007918 n + 1).toNat).toNat

end

end A138954.P15493588981188851121

/-! ## A138954.P14042954128564615750

`val(A334269(n+2), A259155(A197199(n+1)))`
-/

namespace A138954.P14042954128564615750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334269 (n + 2)).toNat (A259155 (A197199 (n + 1)).toNat).toNat

end

end A138954.P14042954128564615750

/-! ## A138954.P10046198217684787450

`A269247(A073760(n+1)*A172184(n+2))`
-/

namespace A138954.P10046198217684787450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A073760 (n + 1) * A172184 (n + 2)).toNat

end

end A138954.P10046198217684787450

/-!
# A138955: a(n) = 8^n mod 3^n.

The programs for A138955, the canonical program `A138955.P11239612413015739592` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138955 has offset 0).

The definition of A138955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n)%(3^n)` (program `A138955.P11239612413015739592`, by `A138955.P11239612413015739592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138955.P11239612413015739592

`(8^n)%(3^n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138955

/-- `(8^n)%(3^n)` -/
def P11239612413015739592.Spec : Prop :=
  ∀ n, (P11239612413015739592.a n : ℤ) = A138955 n

theorem P11239612413015739592.correct : P11239612413015739592.Spec := by
  intro n
  simp only [A138955]

end A138955

/-! ## A138955.P3781912090710137487

`A013730(n)%A008776(n)/2`
-/

namespace A138955.P3781912090710137487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A013730 n) (A008776 n) : ℚ) / 2

end

end A138955.P3781912090710137487

namespace A138955

/-- `A013730(n)%A008776(n)/2` -/
def P3781912090710137487.Spec : Prop :=
  ∀ n, P3781912090710137487.a n = (A138955 n : ℚ)

end A138955

/-! ## A138955.P7633291921797274510

`-(-A001018(n)%A000244(n))`
-/

namespace A138955.P7633291921797274510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A001018 n) (A000244 n)

end

end A138955.P7633291921797274510

namespace A138955

/-- `-(-A001018(n)%A000244(n))` -/
def P7633291921797274510.Spec : Prop :=
  ∀ n, P7633291921797274510.a n = A138955 n

end A138955

/-! ## A138955.P15543348465541314899

`abs(A001018(n)%Δ[A003462(n)])`
-/

namespace A138955.P15543348465541314899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A001018 n) (f1 (n + 1) - f1 n)|

end

end A138955.P15543348465541314899

namespace A138955

/-- `abs(A001018(n)%Δ[A003462(n)])` -/
def P15543348465541314899.Spec : Prop :=
  ∀ n, P15543348465541314899.a n = A138955 n

end A138955

/-! ## A138955.P17287676204489756986

`abs(A074624(n)%Δ[A007051(n)])`
-/

namespace A138955.P17287676204489756986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A074624 n) (f1 (n + 1) - f1 n)|

end

end A138955.P17287676204489756986

namespace A138955

/-- `abs(A074624(n)%Δ[A007051(n)])` -/
def P17287676204489756986.Spec : Prop :=
  ∀ n, P17287676204489756986.a n = A138955 n

end A138955

/-!
# A138957: Concatenation of the reversed digits of numbers from 1 to n.

The programs for A138957, there is no canonical definition to state claims against.
-/

/-! ## A138957.P4097209992276844346

`A057137(A083136(n+1))`
-/

namespace A138957.P4097209992276844346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 (A083136 (n + 1)).toNat

end

end A138957.P4097209992276844346

/-! ## A138957.P14774324707211591394

`A057137(A117057(n+1))`
-/

namespace A138957.P14774324707211591394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 (A117057 (n + 1)).toNat

end

end A138957.P14774324707211591394

/-! ## A138957.P2801471527827783288

`A057137(A239090(n+1))`
-/

namespace A138957.P2801471527827783288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 (A239090 (n + 1)).toNat

end

end A138957.P2801471527827783288

/-! ## A138957.P8861240556065367629

`A057137(A277856(n+1))`
-/

namespace A138957.P8861240556065367629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 (A277856 (n + 1)).toNat

end

end A138957.P8861240556065367629

/-! ## A138957.P9087807753272542259

`A057137(A029731(n+2))`
-/

namespace A138957.P9087807753272542259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 (A029731 (n + 2)).toNat

end

end A138957.P9087807753272542259

/-!
# A138959: a(n) = 8^n mod 5^n.

The programs for A138959, the canonical program `A138959.P6261407510468884015` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138959 has offset 0).

The definition of A138959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n)%(5^n)` (program `A138959.P6261407510468884015`, by `A138959.P6261407510468884015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138959.P6261407510468884015

`(8^n)%(5^n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138959

/-- `(8^n)%(5^n)` -/
def P6261407510468884015.Spec : Prop :=
  ∀ n, (P6261407510468884015.a n : ℤ) = A138959 n

theorem P6261407510468884015.correct : P6261407510468884015.Spec := by
  intro n
  simp only [A138959]

end A138959

/-! ## A138959.P4703752577564882132

`-(-A001018(n)%A000351(n))`
-/

namespace A138959.P4703752577564882132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A001018 n) (A000351 n)

end

end A138959.P4703752577564882132

namespace A138959

/-- `-(-A001018(n)%A000351(n))` -/
def P4703752577564882132.Spec : Prop :=
  ∀ n, P4703752577564882132.a n = A138959 n

end A138959

/-! ## A138959.P17539401430377720104

`abs(Δ[A023001(n)]%A000351(n))`
-/

namespace A138959.P17539401430377720104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000351 n)|

end

end A138959.P17539401430377720104

namespace A138959

/-- `abs(Δ[A023001(n)]%A000351(n))` -/
def P17539401430377720104.Spec : Prop :=
  ∀ n, P17539401430377720104.a n = A138959 n

end A138959

/-! ## A138959.P17246644561089422426

`abs(A001018(n)%Δ[A047850(n)])`
-/

namespace A138959.P17246644561089422426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A001018 n) (f1 (n + 1) - f1 n)|

end

end A138959.P17246644561089422426

namespace A138959

/-- `abs(A001018(n)%Δ[A047850(n)])` -/
def P17246644561089422426.Spec : Prop :=
  ∀ n, P17246644561089422426.a n = A138959 n

end A138959

/-! ## A138959.P7908036820705643808

`or(A074617(n)%A000351(n), char[1])`
-/

namespace A138959.P7908036820705643808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A074617 n) (A000351 n)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A138959.P7908036820705643808

namespace A138959

/-- `or(A074617(n)%A000351(n), char[1])` -/
def P7908036820705643808.Spec : Prop :=
  ∀ n, P7908036820705643808.a n = A138959 n

end A138959

/-!
# A138960: a(n) = smallest prime divisor of A138957(n).

The programs for A138960, there is no canonical definition to state claims against.
-/

/-! ## A138960.P12129553485867124238

`A020639(A138957(n+1)/A138961(n+1))`
-/

namespace A138960.P12129553485867124238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A138957 (n + 1) : ℚ) / (A138961 (n + 1) : ℚ))).toNat

end

end A138960.P12129553485867124238

/-! ## A138960.P6263543064668822162

`A020639(floor(A007908(n+1)/A138961(n+1)))`
-/

namespace A138960.P6263543064668822162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A007908 (n + 1) : ℚ) / (A138961 (n + 1) : ℚ)⌋.toNat

end

end A138960.P6263543064668822162

/-!
# A138961: a(n) = largest prime divisor of A138957(n).

The programs for A138961, there is no canonical definition to state claims against.
-/

/-! ## A138961.P2402231845007909578

`A073844(A117057(n+1))`
-/

namespace A138961.P2402231845007909578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A117057 (n + 1)).toNat

end

end A138961.P2402231845007909578

/-! ## A138961.P6664451761006522865

`A073844(A277856(n+1))`
-/

namespace A138961.P6664451761006522865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A277856 (n + 1)).toNat

end

end A138961.P6664451761006522865

/-! ## A138961.P2332202314767930211

`A073844(A029731(n+2))`
-/

namespace A138961.P2332202314767930211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A029731 (n + 2)).toNat

end

end A138961.P2332202314767930211

/-! ## A138961.P17377310245729593294

`A073844(A029967(n+2))`
-/

namespace A138961.P17377310245729593294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A029967 (n + 2)).toNat

end

end A138961.P17377310245729593294

/-! ## A138961.P11459432745732505492

`A073844(A029968(n+2))`
-/

namespace A138961.P11459432745732505492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A029968 (n + 2)).toNat

end

end A138961.P11459432745732505492

/-!
# A138962: a(1) = 1, a(n) = the smallest prime divisor of A138793(n).

The programs for A138962, there is no canonical definition to state claims against.
-/

/-! ## A138962.P5727310497347499927

`A020639(A138793(n+1)/A138963(n+1))`
-/

namespace A138962.P5727310497347499927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A138793 (n + 1) : ℚ) / (A138963 (n + 1) : ℚ))).toNat

end

end A138962.P5727310497347499927

/-!
# A138964: a(n) = 8^n mod 6^n.

The programs for A138964, the canonical program `A138964.P1764809474443144729` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138964 has offset 0).

The definition of A138964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n)%(6^n)` (program `A138964.P1764809474443144729`, by `A138964.P1764809474443144729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138964.P1764809474443144729

`(8^n)%(6^n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138964

/-- `(8^n)%(6^n)` -/
def P1764809474443144729.Spec : Prop :=
  ∀ n, (P1764809474443144729.a n : ℤ) = A138964 n

theorem P1764809474443144729.correct : P1764809474443144729.Spec := by
  intro n
  simp only [A138964]

end A138964

/-! ## A138964.P8096705428518444891

`2^n*A064629(n)`
-/

namespace A138964.P8096705428518444891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064629 n

end

end A138964.P8096705428518444891

namespace A138964

/-- `2^n*A064629(n)` -/
def P8096705428518444891.Spec : Prop :=
  ∀ n, P8096705428518444891.a n = A138964 n

end A138964

/-! ## A138964.P3031979493361342605

`A064629(n)*A155559(n)`
-/

namespace A138964.P3031979493361342605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064629 n * A155559 n

end

end A138964.P3031979493361342605

namespace A138964

/-- `A064629(n)*A155559(n)` -/
def P3031979493361342605.Spec : Prop :=
  ∀ n, P3031979493361342605.a n = A138964 n

end A138964

/-! ## A138964.P11550096874893123639

`A064629(n)*A171449(n)`
-/

namespace A138964.P11550096874893123639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064629 n * A171449 n

end

end A138964.P11550096874893123639

namespace A138964

/-- `A064629(n)*A171449(n)` -/
def P11550096874893123639.Spec : Prop :=
  ∀ n, P11550096874893123639.a n = A138964 n

end A138964

/-! ## A138964.P16649515737531139179

`A064629(n)*A171559(n)`
-/

namespace A138964.P16649515737531139179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064629 n * A171559 n

end

end A138964.P16649515737531139179

namespace A138964

/-- `A064629(n)*A171559(n)` -/
def P16649515737531139179.Spec : Prop :=
  ∀ n, P16649515737531139179.a n = A138964 n

end A138964

/-!
# A138966: a(n) = n + (smallest composite > n).

The programs for A138966, the canonical program `A138966.P5913427070522576114` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138966 has offset 1).

The definition of A138966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138966.P5913427070522576114

`n+1+A113646(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A138966

/-- `n+1+A113646(n+2)` -/
def P5913427070522576114.Spec : Prop :=
  ∀ n, P5913427070522576114.a n = A138966 (n + 1)

theorem P5913427070522576114.correct : P5913427070522576114.Spec := by
  intro n
  simp only [A138966, Nat.add_sub_cancel]

end A138966

/-! ## A138966.P13376166213830834881

`comp[2*(n+1)]+A010051(n+2)+4`
-/

namespace A138966.P13376166213830834881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A010051 (n + 2) + 4)

end

end A138966.P13376166213830834881

namespace A138966

/-- `comp[2*(n+1)]+A010051(n+2)+4` -/
def P13376166213830834881.Spec : Prop :=
  ∀ n, P13376166213830834881.a n = A138966 (n + 1)

end A138966

/-! ## A138966.P15180066219808987175

`A079696(∑[∏{p}[n+1, C(#%n, #)]])+n`
-/

namespace A138966.P15180066219808987175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A138966.P15180066219808987175

namespace A138966

/-- `A079696(∑[∏{p}[n+1, C(#%n, #)]])+n` -/
def P15180066219808987175.Spec : Prop :=
  ∀ n, P15180066219808987175.a n = A138966 (n + 1)

end A138966

/-! ## A138966.P4083419943604403089

`record[C(2, A000005(n+1))²+2*n+1]`
-/

namespace A138966.P4083419943604403089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 1)).toNat ^ 2 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138966.P4083419943604403089

namespace A138966

/-- `record[C(2, A000005(n+1))²+2*n+1]` -/
def P4083419943604403089.Spec : Prop :=
  ∀ n, (P4083419943604403089.a n : ℤ) = A138966 (n + 1)

end A138966

/-! ## A138966.P12694341885814466106

`floor(2*n+3+A006530(n+2)/(n+1))`
-/

namespace A138966.P12694341885814466106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 3 : ℚ) + (A006530 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A138966.P12694341885814466106

namespace A138966

/-- `floor(2*n+3+A006530(n+2)/(n+1))` -/
def P12694341885814466106.Spec : Prop :=
  ∀ n, P12694341885814466106.a n = A138966 (n + 1)

end A138966

/-! ## A138966.P5918616856986730521

`floor(2*n+3+A014963(n+2)/(n+1))`
-/

namespace A138966.P5918616856986730521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 3 : ℚ) + (A014963 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A138966.P5918616856986730521

namespace A138966

/-- `floor(2*n+3+A014963(n+2)/(n+1))` -/
def P5918616856986730521.Spec : Prop :=
  ∀ n, P5918616856986730521.a n = A138966 (n + 1)

end A138966

/-! ## A138966.P14986947555843650905

`ceil((A020639(n+2)+1)/(n+1))+2*(n+1)`
-/

namespace A138966.P14986947555843650905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 2) + 1 : ℚ) / (n + 1 : ℚ)⌉ + (2 * (n + 1) : ℤ)

end

end A138966.P14986947555843650905

namespace A138966

/-- `ceil((A020639(n+2)+1)/(n+1))+2*(n+1)` -/
def P14986947555843650905.Spec : Prop :=
  ∀ n, P14986947555843650905.a n = A138966 (n + 1)

end A138966

/-! ## A138966.P865591898323657116

`floor(1/A001222(n+2))+2*n+3+C(2, n+2)`
-/

namespace A138966.P865591898323657116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n + 2) : ℚ)⌋ + (2 * n + 3 + Nat.choose 2 (n + 2) : ℤ)

end

end A138966.P865591898323657116

namespace A138966

/-- `floor(1/A001222(n+2))+2*n+3+C(2, n+2)` -/
def P865591898323657116.Spec : Prop :=
  ∀ n, P865591898323657116.a n = A138966 (n + 1)

end A138966

/-! ## A138966.P2611999153098593039

`2*(n+1)+C(2, C(2, n²))+C(2, A000005(n+2))`
-/

namespace A138966.P2611999153098593039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + (Nat.choose 2 (Nat.choose 2 (n ^ 2)) + Nat.choose 2 (A000005 (n + 2)).toNat)

end

end A138966.P2611999153098593039

namespace A138966

/-- `2*(n+1)+C(2, C(2, n²))+C(2, A000005(n+2))` -/
def P2611999153098593039.Spec : Prop :=
  ∀ n, (P2611999153098593039.a n : ℤ) = A138966 (n + 1)

end A138966

/-! ## A138966.P15209524786616098470

`A079696(A062298(n+1))+n`
-/

namespace A138966.P15209524786616098470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A062298 (n + 1)).toNat + (n : ℤ)

end

end A138966.P15209524786616098470

namespace A138966

/-- `A079696(A062298(n+1))+n` -/
def P15209524786616098470.Spec : Prop :=
  ∀ n, P15209524786616098470.a n = A138966 (n + 1)

end A138966

/-!
# A138967: Infinite Fibonacci word on the alphabet {1,2,3,4}.

The programs for A138967, the canonical program `A138967.P1165295429631890852` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138967 has offset 1).

The definition of A138967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138967.P4584886700326236670

`A048679(n)%4+1`
-/

namespace A138967.P4584886700326236670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048679 n) 4 + 1

end

end A138967.P4584886700326236670

namespace A138967

/-- `A048679(n)%4+1` -/
def P4584886700326236670.Spec : Prop :=
  ∀ n, P4584886700326236670.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P14487292168509431129

`and(3, A232723(n+1))+1`
-/

namespace A138967.P14487292168509431129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A232723 (n + 1)) + 1

end

end A138967.P14487292168509431129

namespace A138967

/-- `and(3, A232723(n+1))+1` -/
def P14487292168509431129.Spec : Prop :=
  ∀ n, P14487292168509431129.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P5967927812180421614

`gcd(12, A060112(n+1)+1)`
-/

namespace A138967.P5967927812180421614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A060112 (n + 1) + 1)

end

end A138967.P5967927812180421614

namespace A138967

/-- `gcd(12, A060112(n+1)+1)` -/
def P5967927812180421614.Spec : Prop :=
  ∀ n, (P5967927812180421614.a n : ℤ) = A138967 (n + 1)

end A138967

/-! ## A138967.P10504457298445828381

`log2((2^A035612(n+1))%24)`
-/

namespace A138967.P10504457298445828381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A035612 (n + 1) : ℤ))) 24 : ℝ)

end

end A138967.P10504457298445828381

namespace A138967

/-- `log2((2^A035612(n+1))%24)` -/
def P10504457298445828381.Spec : Prop :=
  ∀ n, P10504457298445828381.a n = (A138967 (n + 1) : ℝ)

end A138967

/-! ## A138967.P1165295429631890852

`A343180(record[xor(n, 2*n)/3])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138967

/-- `A343180(record[xor(n, 2*n)/3])` -/
def P1165295429631890852.Spec : Prop :=
  ∀ n, P1165295429631890852.a n = A138967 (n + 1)

theorem P1165295429631890852.correct : P1165295429631890852.Spec := by
  intro n
  simp only [A138967, Nat.add_sub_cancel]

end A138967

/-! ## A138967.P18432559597953610692

`A003324(eq[n, and(n, 3*n)]+1)`
-/

namespace A138967.P18432559597953610692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A138967.P18432559597953610692

namespace A138967

/-- `A003324(eq[n, and(n, 3*n)]+1)` -/
def P18432559597953610692.Spec : Prop :=
  ∀ n, P18432559597953610692.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P232053263756159938

`A010883(A048679(n))`
-/

namespace A138967.P232053263756159938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A048679 n).toNat

end

end A138967.P232053263756159938

namespace A138967

/-- `A010883(A048679(n))` -/
def P232053263756159938.Spec : Prop :=
  ∀ n, P232053263756159938.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P7316344568120371611

`A078372(A085358(n))`
-/

namespace A138967.P7316344568120371611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078372 (A085358 n).toNat

end

end A138967.P7316344568120371611

namespace A138967

/-- `A078372(A085358(n))` -/
def P7316344568120371611.Spec : Prop :=
  ∀ n, P7316344568120371611.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P5085398542194460228

`A110549(A227351(n))`
-/

namespace A138967.P5085398542194460228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110549 (A227351 n).toNat

end

end A138967.P5085398542194460228

namespace A138967

/-- `A110549(A227351(n))` -/
def P5085398542194460228.Spec : Prop :=
  ∀ n, P5085398542194460228.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P5284931420954841846

`A343180(A003714(n))`
-/

namespace A138967.P5284931420954841846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (A003714 n).toNat

end

end A138967.P5284931420954841846

namespace A138967

/-- `A343180(A003714(n))` -/
def P5284931420954841846.Spec : Prop :=
  ∀ n, P5284931420954841846.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P8345997455454510606

`A003324(A003714(n)+1)`
-/

namespace A138967.P8345997455454510606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A003714 n + 1).toNat

end

end A138967.P8345997455454510606

namespace A138967

/-- `A003324(A003714(n)+1)` -/
def P8345997455454510606.Spec : Prop :=
  ∀ n, P8345997455454510606.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P5414410334965762193

`A158478(A035614(n))+1`
-/

namespace A138967.P5414410334965762193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A035614 n).toNat + 1

end

end A138967.P5414410334965762193

namespace A138967

/-- `A158478(A035614(n))+1` -/
def P5414410334965762193.Spec : Prop :=
  ∀ n, P5414410334965762193.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P8534533940539247483

`A336126(A003714(n)+1)`
-/

namespace A138967.P8534533940539247483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336126 (A003714 n + 1).toNat

end

end A138967.P8534533940539247483

namespace A138967

/-- `A336126(A003714(n)+1)` -/
def P8534533940539247483.Spec : Prop :=
  ∀ n, P8534533940539247483.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P2676134512008682451

`A003324(record[A065621(n+1)])`
-/

namespace A138967.P2676134512008682451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138967.P2676134512008682451

namespace A138967

/-- `A003324(record[A065621(n+1)])` -/
def P2676134512008682451.Spec : Prop :=
  ∀ n, P2676134512008682451.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P2608250361309881055

`A018140(and(3, A232723(n+1)))`
-/

namespace A138967.P2608250361309881055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018140 (Int.land 3 (A232723 (n + 1))).toNat

end

end A138967.P2608250361309881055

namespace A138967

/-- `A018140(and(3, A232723(n+1)))` -/
def P2608250361309881055.Spec : Prop :=
  ∀ n, P2608250361309881055.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P9558605961272717983

`A003324(record[A003188(2*n+1)])`
-/

namespace A138967.P9558605961272717983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138967.P9558605961272717983

namespace A138967

/-- `A003324(record[A003188(2*n+1)])` -/
def P9558605961272717983.Spec : Prop :=
  ∀ n, P9558605961272717983.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P4392123981301697018

`A003842(n)+and(2, Δ[A003714(n)])`
-/

namespace A138967.P4392123981301697018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n + Int.land 2 (f1 (n + 1) - f1 n)

end

end A138967.P4392123981301697018

namespace A138967

/-- `A003842(n)+and(2, Δ[A003714(n)])` -/
def P4392123981301697018.Spec : Prop :=
  ∀ n, P4392123981301697018.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P11189625820177503274

`A003842(n)+2*A003849(n+2)`
-/

namespace A138967.P11189625820177503274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n + 2 * A003849 (n + 2)

end

end A138967.P11189625820177503274

namespace A138967

/-- `A003842(n)+2*A003849(n+2)` -/
def P11189625820177503274.Spec : Prop :=
  ∀ n, P11189625820177503274.a n = A138967 (n + 1)

end A138967

/-! ## A138967.P10598958594942725220

`gcd(A159917(n+1), A276867(n+1))`
-/

namespace A138967.P10598958594942725220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159917 (n + 1)) (A276867 (n + 1))

end

end A138967.P10598958594942725220

namespace A138967

/-- `gcd(A159917(n+1), A276867(n+1))` -/
def P10598958594942725220.Spec : Prop :=
  ∀ n, (P10598958594942725220.a n : ℤ) = A138967 (n + 1)

end A138967

/-! ## A138967.P5761694980214093645

`gcd(A000005(11-a(n-1)), A290258(n+2))` with `a(0)=1`
-/

namespace A138967.P5761694980214093645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A000005 (11 - a (n - 1))) (A290258 (n + 2))

end

end A138967.P5761694980214093645

namespace A138967

/-- `gcd(A000005(11-a(n-1)), A290258(n+2))` -/
def P5761694980214093645.Spec : Prop :=
  ∀ n, (P5761694980214093645.a n : ℤ) = A138967 (n + 1)

end A138967

/-!
# A138968: Positions of the primes congruent to 1 mod 3 when all primes except 3 are listed in order.

The programs for A138968, the canonical program `A138968.P7786393262471553770` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138968 has offset 1).

The definition of A138968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138968.P657700254436088032

`A138972(n+1)+1`
-/

namespace A138968.P657700254436088032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138972 (n + 1) + 1

end

end A138968.P657700254436088032

namespace A138968

/-- `A138972(n+1)+1` -/
def P657700254436088032.Spec : Prop :=
  ∀ n, P657700254436088032.a n = A138968 (n + 1)

theorem P657700254436088032.correct : P657700254436088032.Spec := by
  intro n
  simp only [A138968, Nat.add_sub_cancel, A138968.P657700254436088032.a, A138968.P7786393262471553770.a, A091178, A091178.P17670734462985012813.f1, A091178.P17670734462985012813.f2, A091178.P17670734462985012813.a, A138972, A138972.P14593272602870209204.a, A160592, A160592.P15698679299650213589.a, A160594, A160594.P8669518195614110326.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A068228, A068228.P2780938449886948151.f1, A068228.P2780938449886948151.a, A068229, A068229.P4621681780880692968.f1, A068229.P4621681780880692968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138968

/-! ## A138968.P7786393262471553770

`A091178(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138968

/-- `A091178(n+1)-1` -/
def P7786393262471553770.Spec : Prop :=
  ∀ n, P7786393262471553770.a n = A138968 (n + 1)

theorem P7786393262471553770.correct : P7786393262471553770.Spec := by
  intro n
  simp only [A138968, Nat.add_sub_cancel]

end A138968

/-! ## A138968.P8090964257788955130

`A171820(n+2)-1`
-/

namespace A138968.P8090964257788955130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 2) - 1

end

end A138968.P8090964257788955130

namespace A138968

/-- `A171820(n+2)-1` -/
def P8090964257788955130.Spec : Prop :=
  ∀ n, P8090964257788955130.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P10474957651103321606

`A020725(A138972(n+1))`
-/

namespace A138968.P10474957651103321606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A138972 (n + 1)).toNat

end

end A138968.P10474957651103321606

namespace A138968

/-- `A020725(A138972(n+1))` -/
def P10474957651103321606.Spec : Prop :=
  ∀ n, P10474957651103321606.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P7081774203977319507

`eq[0, A132194(n+1)]`
-/

namespace A138968.P7081774203977319507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P7081774203977319507

namespace A138968

/-- `eq[0, A132194(n+1)]` -/
def P7081774203977319507.Spec : Prop :=
  ∀ n, (P7081774203977319507.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P4854379104741071412

`eq[1, A039701(n+1)]`
-/

namespace A138968.P4854379104741071412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P4854379104741071412

namespace A138968

/-- `eq[1, A039701(n+1)]` -/
def P4854379104741071412.Spec : Prop :=
  ∀ n, (P4854379104741071412.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P1036757845340094702

`eq[1, A039704(n+1)]`
-/

namespace A138968.P1036757845340094702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P1036757845340094702

namespace A138968

/-- `eq[1, A039704(n+1)]` -/
def P1036757845340094702.Spec : Prop :=
  ∀ n, (P1036757845340094702.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P16313893279669577997

`eq[1, A073637(n+1)]`
-/

namespace A138968.P16313893279669577997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P16313893279669577997

namespace A138968

/-- `eq[1, A073637(n+1)]` -/
def P16313893279669577997.Spec : Prop :=
  ∀ n, (P16313893279669577997.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P5497563807042384078

`eq[1, A099618(n+1)]`
-/

namespace A138968.P5497563807042384078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P5497563807042384078

namespace A138968

/-- `eq[1, A099618(n+1)]` -/
def P5497563807042384078.Spec : Prop :=
  ∀ n, (P5497563807042384078.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P15017927805821294956

`eq[1, A134323(n+1)]`
-/

namespace A138968.P15017927805821294956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P15017927805821294956

namespace A138968

/-- `eq[1, A134323(n+1)]` -/
def P15017927805821294956.Spec : Prop :=
  ∀ n, (P15017927805821294956.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P203216544646513202

`eq[2, A396681(n+1)]`
-/

namespace A138968.P203216544646513202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P203216544646513202

namespace A138968

/-- `eq[2, A396681(n+1)]` -/
def P203216544646513202.Spec : Prop :=
  ∀ n, (P203216544646513202.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P17959163955676756755

`eq[3, A023505(n+1)]`
-/

namespace A138968.P17959163955676756755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P17959163955676756755

namespace A138968

/-- `eq[3, A023505(n+1)]` -/
def P17959163955676756755.Spec : Prop :=
  ∀ n, (P17959163955676756755.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P15293514697367162959

`eq[3, A023592(n+1)]`
-/

namespace A138968.P15293514697367162959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138968.P15293514697367162959

namespace A138968

/-- `eq[3, A023592(n+1)]` -/
def P15293514697367162959.Spec : Prop :=
  ∀ n, (P15293514697367162959.a n : ℤ) = A138968 (n + 1)

end A138968

/-! ## A138968.P2822278812259698693

`A023443(A091178(n+1))`
-/

namespace A138968.P2822278812259698693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A091178 (n + 1)).toNat

end

end A138968.P2822278812259698693

namespace A138968

/-- `A023443(A091178(n+1))` -/
def P2822278812259698693.Spec : Prop :=
  ∀ n, P2822278812259698693.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P4936543730819180284

`A023443(A171820(n+2))`
-/

namespace A138968.P4936543730819180284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A171820 (n + 2)).toNat

end

end A138968.P4936543730819180284

namespace A138968

/-- `A023443(A171820(n+2))` -/
def P4936543730819180284.Spec : Prop :=
  ∀ n, P4936543730819180284.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P15854062872766824161

`A100637(A034936(n+1))`
-/

namespace A138968.P15854062872766824161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A034936 (n + 1)).toNat

end

end A138968.P15854062872766824161

namespace A138968

/-- `A100637(A034936(n+1))` -/
def P15854062872766824161.Spec : Prop :=
  ∀ n, P15854062872766824161.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P14941751142916849305

`A099801(A173177(n+1))`
-/

namespace A138968.P14941751142916849305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A173177 (n + 1)).toNat

end

end A138968.P14941751142916849305

namespace A138968

/-- `A099801(A173177(n+1))` -/
def P14941751142916849305.Spec : Prop :=
  ∀ n, P14941751142916849305.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P15120521529677557783

`A000720(A002476(n+1)-1)`
-/

namespace A138968.P15120521529677557783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002476 (n + 1) - 1).toNat

end

end A138968.P15120521529677557783

namespace A138968

/-- `A000720(A002476(n+1)-1)` -/
def P15120521529677557783.Spec : Prop :=
  ∀ n, P15120521529677557783.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P9881309491931172144

`A172103(A024899(n+1))+n+2`
-/

namespace A138968.P9881309491931172144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (A024899 (n + 1)).toNat + (n + 2 : ℤ)

end

end A138968.P9881309491931172144

namespace A138968

/-- `A172103(A024899(n+1))+n+2` -/
def P9881309491931172144.Spec : Prop :=
  ∀ n, P9881309491931172144.a n = A138968 (n + 1)

end A138968

/-! ## A138968.P1498258178388274922

`A003976(A177965(n+2))`
-/

namespace A138968.P1498258178388274922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003976 (A177965 (n + 2)).toNat

end

end A138968.P1498258178388274922

namespace A138968

/-- `A003976(A177965(n+2))` -/
def P1498258178388274922.Spec : Prop :=
  ∀ n, P1498258178388274922.a n = A138968 (n + 1)

end A138968

/-!
# A138969: Positions of the primes congruent to 2 mod 3 when all primes except 3 are listed in order.

The programs for A138969, the canonical program `A138969.P667284554888184623` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138969 has offset 1).

The definition of A138969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138969.P13930512214161056341

`comp[A138972(n+1)]+1`
-/

namespace A138969.P13930512214161056341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138969.P13930512214161056341

namespace A138969

/-- `comp[A138972(n+1)]+1` -/
def P13930512214161056341.Spec : Prop :=
  ∀ n, (P13930512214161056341.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P667284554888184623

`A091177(n+1)+A057428(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138969

/-- `A091177(n+1)+A057428(n)` -/
def P667284554888184623.Spec : Prop :=
  ∀ n, P667284554888184623.a n = A138969 (n + 1)

theorem P667284554888184623.correct : P667284554888184623.Spec := by
  intro n
  simp only [A138969, Nat.add_sub_cancel]

end A138969

/-! ## A138969.P13192796845275673294

`A091177(n+1)-A057427(n)`
-/

namespace A138969.P13192796845275673294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) - A057427 n

end

end A138969.P13192796845275673294

namespace A138969

/-- `A091177(n+1)-A057427(n)` -/
def P13192796845275673294.Spec : Prop :=
  ∀ n, P13192796845275673294.a n = A138969 (n + 1)

theorem P13192796845275673294.correct : P13192796845275673294.Spec := by
  intro n
  simp only [A138969, Nat.add_sub_cancel, A138969.P13192796845275673294.a, A138969.P667284554888184623.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A091177, A091177.P17069457608177262001.f1, A091177.P17069457608177262001.f2, A091177.P17069457608177262001.a, A000007, A000007.P6599383543502402472.a, A039701, A039701.P15201722471215268317.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138969

/-! ## A138969.P15768442644871415719

`A091177(n+1)-A070750(n+1)*A070750(n+1)`
-/

namespace A138969.P15768442644871415719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) - A070750 (n + 1) * A070750 (n + 1)

end

end A138969.P15768442644871415719

namespace A138969

/-- `A091177(n+1)-A070750(n+1)*A070750(n+1)` -/
def P15768442644871415719.Spec : Prop :=
  ∀ n, P15768442644871415719.a n = A138969 (n + 1)

end A138969

/-! ## A138969.P18128322432562605801

`A133677(n+2)-1`
-/

namespace A138969.P18128322432562605801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 2) - 1

end

end A138969.P18128322432562605801

namespace A138969

/-- `A133677(n+2)-1` -/
def P18128322432562605801.Spec : Prop :=
  ∀ n, P18128322432562605801.a n = A138969 (n + 1)

end A138969

/-! ## A138969.P13321714634962525873

`∑[abs(Δ[A133677(n+1)])]`
-/

namespace A138969.P13321714634962525873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138969.P13321714634962525873

namespace A138969

/-- `∑[abs(Δ[A133677(n+1)])]` -/
def P13321714634962525873.Spec : Prop :=
  ∀ n, P13321714634962525873.a n = A138969 (n + 1)

end A138969

/-! ## A138969.P16518857504450244395

`A091177(n+1)-A134323(n+2)*A134323(n+2)`
-/

namespace A138969.P16518857504450244395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) - A134323 (n + 2) * A134323 (n + 2)

end

end A138969.P16518857504450244395

namespace A138969

/-- `A091177(n+1)-A134323(n+2)*A134323(n+2)` -/
def P16518857504450244395.Spec : Prop :=
  ∀ n, P16518857504450244395.a n = A138969 (n + 1)

end A138969

/-! ## A138969.P5297185237437309687

`eq[1, A359262(n+1)]`
-/

namespace A138969.P5297185237437309687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138969.P5297185237437309687

namespace A138969

/-- `eq[1, A359262(n+1)]` -/
def P5297185237437309687.Spec : Prop :=
  ∀ n, (P5297185237437309687.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P13857873665015661491

`lt[2, A039704(n+1)]`
-/

namespace A138969.P13857873665015661491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138969.P13857873665015661491

namespace A138969

/-- `lt[2, A039704(n+1)]` -/
def P13857873665015661491.Spec : Prop :=
  ∀ n, (P13857873665015661491.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P9910232182805416191

`lt[gcd(2, A180217(n+1)), 2]`
-/

namespace A138969.P9910232182805416191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A180217 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138969.P9910232182805416191

namespace A138969

/-- `lt[gcd(2, A180217(n+1)), 2]` -/
def P9910232182805416191.Spec : Prop :=
  ∀ n, (P9910232182805416191.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P1193255557627381001

`lt[1, A006093(n+1)%6]`
-/

namespace A138969.P1193255557627381001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138969.P1193255557627381001

namespace A138969

/-- `lt[1, A006093(n+1)%6]` -/
def P1193255557627381001.Spec : Prop :=
  ∀ n, (P1193255557627381001.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P15580164963475153049

`lt[n*A134323(n+1), n]`
-/

namespace A138969.P15580164963475153049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134323 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A138969.P15580164963475153049

namespace A138969

/-- `lt[n*A134323(n+1), n]` -/
def P15580164963475153049.Spec : Prop :=
  ∀ n, (P15580164963475153049.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P17616203223556601960

`eq[A000007(n), A099584(n+1)]`
-/

namespace A138969.P17616203223556601960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P17616203223556601960

namespace A138969

/-- `eq[A000007(n), A099584(n+1)]` -/
def P17616203223556601960.Spec : Prop :=
  ∀ n, (P17616203223556601960.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P6669099356823240619

`eq[A000007(n), A099618(n+1)]`
-/

namespace A138969.P6669099356823240619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P6669099356823240619

namespace A138969

/-- `eq[A000007(n), A099618(n+1)]` -/
def P6669099356823240619.Spec : Prop :=
  ∀ n, (P6669099356823240619.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P5632031870719074082

`eq[A000038(n), A099584(n+1)]`
-/

namespace A138969.P5632031870719074082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P5632031870719074082

namespace A138969

/-- `eq[A000038(n), A099584(n+1)]` -/
def P5632031870719074082.Spec : Prop :=
  ∀ n, (P5632031870719074082.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P15653685297692832976

`eq[A000038(n), A099618(n+1)]`
-/

namespace A138969.P15653685297692832976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P15653685297692832976

namespace A138969

/-- `eq[A000038(n), A099618(n+1)]` -/
def P15653685297692832976.Spec : Prop :=
  ∀ n, (P15653685297692832976.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P11879579030207569812

`eq[A054977(n), A068503(n+1)]`
-/

namespace A138969.P11879579030207569812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P11879579030207569812

namespace A138969

/-- `eq[A054977(n), A068503(n+1)]` -/
def P11879579030207569812.Spec : Prop :=
  ∀ n, (P11879579030207569812.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P11924372961750359079

`eq[A057427(n), A068503(n+1)]`
-/

namespace A138969.P11924372961750359079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P11924372961750359079

namespace A138969

/-- `eq[A057427(n), A068503(n+1)]` -/
def P11924372961750359079.Spec : Prop :=
  ∀ n, (P11924372961750359079.a n : ℤ) = A138969 (n + 1)

end A138969

/-! ## A138969.P5865072960041883996

`eq[A054977(n), A132194(n+1)]`
-/

namespace A138969.P5865072960041883996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138969.P5865072960041883996

namespace A138969

/-- `eq[A054977(n), A132194(n+1)]` -/
def P5865072960041883996.Spec : Prop :=
  ∀ n, (P5865072960041883996.a n : ℤ) = A138969 (n + 1)

end A138969

/-!
# A138970: Positions of the primes congruent to 1 mod 4 when all primes except 2 are listed in order.

The programs for A138970, the canonical program `A138970.P17118227698826319537` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138970 has offset 1).

The definition of A138970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138970.P17118227698826319537

`A080147(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138970

/-- `A080147(n+1)-1` -/
def P17118227698826319537.Spec : Prop :=
  ∀ n, P17118227698826319537.a n = A138970 (n + 1)

theorem P17118227698826319537.correct : P17118227698826319537.Spec := by
  intro n
  simp only [A138970, Nat.add_sub_cancel]

end A138970

/-! ## A138970.P9142150131957471201

`A332807(2*n+3)-1`
-/

namespace A138970.P9142150131957471201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * n + 3) - 1

end

end A138970.P9142150131957471201

namespace A138970

/-- `A332807(2*n+3)-1` -/
def P9142150131957471201.Spec : Prop :=
  ∀ n, P9142150131957471201.a n = A138970 (n + 1)

end A138970

/-! ## A138970.P12945909373023311750

`A267100(A080148(n+1))-1`
-/

namespace A138970.P12945909373023311750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267100 (A080148 (n + 1)).toNat - 1

end

end A138970.P12945909373023311750

namespace A138970

/-- `A267100(A080148(n+1))-1` -/
def P12945909373023311750.Spec : Prop :=
  ∀ n, P12945909373023311750.a n = A138970 (n + 1)

end A138970

/-! ## A138970.P2507842766008716998

`eq[0, A100672(n+1)]`
-/

namespace A138970.P2507842766008716998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P2507842766008716998

namespace A138970

/-- `eq[0, A100672(n+1)]` -/
def P2507842766008716998.Spec : Prop :=
  ∀ n, (P2507842766008716998.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P1708041990368598341

`eq[0, A282038(n+1)]`
-/

namespace A138970.P1708041990368598341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P1708041990368598341

namespace A138970

/-- `eq[0, A282038(n+1)]` -/
def P1708041990368598341.Spec : Prop :=
  ∀ n, (P1708041990368598341.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P9298276523102409344

`eq[1, A023512(n+1)]`
-/

namespace A138970.P9298276523102409344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P9298276523102409344

namespace A138970

/-- `eq[1, A023512(n+1)]` -/
def P9298276523102409344.Spec : Prop :=
  ∀ n, (P9298276523102409344.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P771973930292391624

`eq[1, A039702(n+1)]`
-/

namespace A138970.P771973930292391624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P771973930292391624

namespace A138970

/-- `eq[1, A039702(n+1)]` -/
def P771973930292391624.Spec : Prop :=
  ∀ n, (P771973930292391624.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P12607408017237405158

`eq[1, A070750(n+1)]`
-/

namespace A138970.P12607408017237405158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P12607408017237405158

namespace A138970

/-- `eq[1, A070750(n+1)]` -/
def P12607408017237405158.Spec : Prop :=
  ∀ n, (P12607408017237405158.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P7603863698860676080

`lt[1, A023506(n+1)]`
-/

namespace A138970.P7603863698860676080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138970.P7603863698860676080

namespace A138970

/-- `lt[1, A023506(n+1)]` -/
def P7603863698860676080.Spec : Prop :=
  ∀ n, (P7603863698860676080.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P8580064488123426494

`eq[2, A068504(n+1)]`
-/

namespace A138970.P8580064488123426494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P8580064488123426494

namespace A138970

/-- `eq[2, A068504(n+1)]` -/
def P8580064488123426494.Spec : Prop :=
  ∀ n, (P8580064488123426494.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P16050064135151001297

`lt[1, A088978(n+1)]`
-/

namespace A138970.P16050064135151001297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138970.P16050064135151001297

namespace A138970

/-- `lt[1, A088978(n+1)]` -/
def P16050064135151001297.Spec : Prop :=
  ∀ n, (P16050064135151001297.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P3258854980859027480

`eq[2, A227471(n+1)]`
-/

namespace A138970.P3258854980859027480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P3258854980859027480

namespace A138970

/-- `eq[2, A227471(n+1)]` -/
def P3258854980859027480.Spec : Prop :=
  ∀ n, (P3258854980859027480.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P7662579671797339474

`lt[2, A058384(n+1)]`
-/

namespace A138970.P7662579671797339474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138970.P7662579671797339474

namespace A138970

/-- `lt[2, A058384(n+1)]` -/
def P7662579671797339474.Spec : Prop :=
  ∀ n, (P7662579671797339474.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P4584141615595835693

`lt[1, A278720(n+1)²]`
-/

namespace A138970.P4584141615595835693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138970.P4584141615595835693

namespace A138970

/-- `lt[1, A278720(n+1)²]` -/
def P4584141615595835693.Spec : Prop :=
  ∀ n, (P4584141615595835693.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P9707082801637590283

`eq[1, A077008(n+2)]+1`
-/

namespace A138970.P9707082801637590283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077008 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138970.P9707082801637590283

namespace A138970

/-- `eq[1, A077008(n+2)]+1` -/
def P9707082801637590283.Spec : Prop :=
  ∀ n, (P9707082801637590283.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P17494245714095310795

`eq[1, A000040(n+1)%4]`
-/

namespace A138970.P17494245714095310795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138970.P17494245714095310795

namespace A138970

/-- `eq[1, A000040(n+1)%4]` -/
def P17494245714095310795.Spec : Prop :=
  ∀ n, (P17494245714095310795.a n : ℤ) = A138970 (n + 1)

end A138970

/-! ## A138970.P2055746422285998962

`lt[1, val(A006093(n+1), 2)]`
-/

namespace A138970.P2055746422285998962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138970.P2055746422285998962

namespace A138970

/-- `lt[1, val(A006093(n+1), 2)]` -/
def P2055746422285998962.Spec : Prop :=
  ∀ n, (P2055746422285998962.a n : ℤ) = A138970 (n + 1)

end A138970

/-!
# A138971: Positions of the primes congruent to 3 mod 4 when all primes except 2 are listed in order.

The programs for A138971, the canonical program `A138971.P14613520405082129352` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138971 has offset 1).

The definition of A138971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138971.P14613520405082129352

`A080148(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A138971

/-- `A080148(n+1)-1` -/
def P14613520405082129352.Spec : Prop :=
  ∀ n, P14613520405082129352.a n = A138971 (n + 1)

theorem P14613520405082129352.correct : P14613520405082129352.Spec := by
  intro n
  simp only [A138971, Nat.add_sub_cancel]

end A138971

/-! ## A138971.P658900589206083864

`A332807(2*(n+1))-1`
-/

namespace A138971.P658900589206083864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * (n + 1)) - 1

end

end A138971.P658900589206083864

namespace A138971

/-- `A332807(2*(n+1))-1` -/
def P658900589206083864.Spec : Prop :=
  ∀ n, P658900589206083864.a n = A138971 (n + 1)

end A138971

/-! ## A138971.P10428183633585796668

`2*(n+1)-A267135(n+1)`
-/

namespace A138971.P10428183633585796668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A267135 (n + 1)

end

end A138971.P10428183633585796668

namespace A138971

/-- `2*(n+1)-A267135(n+1)` -/
def P10428183633585796668.Spec : Prop :=
  ∀ n, P10428183633585796668.a n = A138971 (n + 1)

theorem P10428183633585796668.correct : P10428183633585796668.Spec := by
  intro n
  simp only [A138971, Nat.add_sub_cancel, A138971.P10428183633585796668.a, A138971.P14613520405082129352.a, A080148, A080148.P13293786807354433186.a, A267135, A267135.P1163518685697158345.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A049084, A049084.P10934933317972537770.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A138971

/-! ## A138971.P1889738706218171091

`eq[0, A080089(n+1)]`
-/

namespace A138971.P1889738706218171091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P1889738706218171091

namespace A138971

/-- `eq[0, A080089(n+1)]` -/
def P1889738706218171091.Spec : Prop :=
  ∀ n, (P1889738706218171091.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P16072737028703586512

`eq[0, A098033(n+1)]`
-/

namespace A138971.P16072737028703586512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P16072737028703586512

namespace A138971

/-- `eq[0, A098033(n+1)]` -/
def P16072737028703586512.Spec : Prop :=
  ∀ n, (P16072737028703586512.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P2860818024921679576

`eq[0, A249132(n+1)]`
-/

namespace A138971.P2860818024921679576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P2860818024921679576

namespace A138971

/-- `eq[0, A249132(n+1)]` -/
def P2860818024921679576.Spec : Prop :=
  ∀ n, (P2860818024921679576.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P15603596353550378938

`eq[1, A023506(n+1)]`
-/

namespace A138971.P15603596353550378938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P15603596353550378938

namespace A138971

/-- `eq[1, A023506(n+1)]` -/
def P15603596353550378938.Spec : Prop :=
  ∀ n, (P15603596353550378938.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P8387941954860380216

`eq[1, A023579(n+1)]`
-/

namespace A138971.P8387941954860380216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P8387941954860380216

namespace A138971

/-- `eq[1, A023579(n+1)]` -/
def P8387941954860380216.Spec : Prop :=
  ∀ n, (P8387941954860380216.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P10805940664645895331

`eq[1, A087963(n+1)]`
-/

namespace A138971.P10805940664645895331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P10805940664645895331

namespace A138971

/-- `eq[1, A087963(n+1)]` -/
def P10805940664645895331.Spec : Prop :=
  ∀ n, (P10805940664645895331.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P5121849994298351852

`eq[1, A088978(n+1)]`
-/

namespace A138971.P5121849994298351852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P5121849994298351852

namespace A138971

/-- `eq[1, A088978(n+1)]` -/
def P5121849994298351852.Spec : Prop :=
  ∀ n, (P5121849994298351852.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P16862279134102626879

`lt[1, A023512(n+1)]`
-/

namespace A138971.P16862279134102626879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138971.P16862279134102626879

namespace A138971

/-- `lt[1, A023512(n+1)]` -/
def P16862279134102626879.Spec : Prop :=
  ∀ n, (P16862279134102626879.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P16240545301647440957

`eq[2, A058384(n+1)]`
-/

namespace A138971.P16240545301647440957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P16240545301647440957

namespace A138971

/-- `eq[2, A058384(n+1)]` -/
def P16240545301647440957.Spec : Prop :=
  ∀ n, (P16240545301647440957.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P13193094231003279810

`lt[2, A039702(n+1)]`
-/

namespace A138971.P13193094231003279810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138971.P13193094231003279810

namespace A138971

/-- `lt[2, A039702(n+1)]` -/
def P13193094231003279810.Spec : Prop :=
  ∀ n, (P13193094231003279810.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P12048927200181840591

`lt[2, A068504(n+1)]`
-/

namespace A138971.P12048927200181840591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138971.P12048927200181840591

namespace A138971

/-- `lt[2, A068504(n+1)]` -/
def P12048927200181840591.Spec : Prop :=
  ∀ n, (P12048927200181840591.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P10661713865357384948

`eq[1, A070750(n+1)+2]`
-/

namespace A138971.P10661713865357384948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P10661713865357384948

namespace A138971

/-- `eq[1, A070750(n+1)+2]` -/
def P10661713865357384948.Spec : Prop :=
  ∀ n, (P10661713865357384948.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P15998133664932310791

`lt[1, A282038(n+1)+1]`
-/

namespace A138971.P15998133664932310791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138971.P15998133664932310791

namespace A138971

/-- `lt[1, A282038(n+1)+1]` -/
def P15998133664932310791.Spec : Prop :=
  ∀ n, (P15998133664932310791.a n : ℤ) = A138971 (n + 1)

end A138971

/-! ## A138971.P10301850907137219817

`eq[2, and(2, A006005(n+1))]`
-/

namespace A138971.P10301850907137219817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A006005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138971.P10301850907137219817

namespace A138971

/-- `eq[2, and(2, A006005(n+1))]` -/
def P10301850907137219817.Spec : Prop :=
  ∀ n, (P10301850907137219817.a n : ℤ) = A138971 (n + 1)

end A138971

/-!
# A138972: Positions of the primes congruent to 1 mod 6 when all primes except 2 and 3 are listed in order.

The programs for A138972, the canonical program `A138972.P14593272602870209204` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138972 has offset 1).

The definition of A138972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138972.P14593272602870209204

`A138968(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138972

/-- `A138968(n+1)-1` -/
def P14593272602870209204.Spec : Prop :=
  ∀ n, P14593272602870209204.a n = A138972 (n + 1)

theorem P14593272602870209204.correct : P14593272602870209204.Spec := by
  intro n
  simp only [A138972, Nat.add_sub_cancel]

end A138972

/-! ## A138972.P6843885550877640971

`A091178(n+1)-2`
-/

namespace A138972.P6843885550877640971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1) - 2

end

end A138972.P6843885550877640971

namespace A138972

/-- `A091178(n+1)-2` -/
def P6843885550877640971.Spec : Prop :=
  ∀ n, P6843885550877640971.a n = A138972 (n + 1)

theorem P6843885550877640971.correct : P6843885550877640971.Spec := by
  intro n
  simp only [A138972, Nat.add_sub_cancel, A138972.P6843885550877640971.a, A138972.P14593272602870209204.a, A091178, A091178.P17670734462985012813.f1, A091178.P17670734462985012813.f2, A091178.P17670734462985012813.a, A138968, A138968.P7786393262471553770.a, A160592, A160592.P15698679299650213589.a, A160594, A160594.P8669518195614110326.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A068228, A068228.P2780938449886948151.f1, A068228.P2780938449886948151.a, A068229, A068229.P4621681780880692968.f1, A068229.P4621681780880692968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138972

/-! ## A138972.P15920828513150353809

`A171820(n+2)-2`
-/

namespace A138972.P15920828513150353809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 2) - 2

end

end A138972.P15920828513150353809

namespace A138972

/-- `A171820(n+2)-2` -/
def P15920828513150353809.Spec : Prop :=
  ∀ n, P15920828513150353809.a n = A138972 (n + 1)

end A138972

/-! ## A138972.P11223992316120148218

`eq[1, p?[2*n+1]%3]`
-/

namespace A138972.P11223992316120148218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138972.P11223992316120148218

namespace A138972

/-- `eq[1, p?[2*n+1]%3]` -/
def P11223992316120148218.Spec : Prop :=
  ∀ n, (P11223992316120148218.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P5738178645849504218

`lt[0, tan(dr(p?[2*n+1]))]`
-/

namespace A138972.P5738178645849504218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.digitalRoot (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A138972.P5738178645849504218

namespace A138972

/-- `lt[0, tan(dr(p?[2*n+1]))]` -/
def P5738178645849504218.Spec : Prop :=
  ∀ n, (P5738178645849504218.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P15146307538325511036

`lt[0, cot(dr(p?[2*n+1]))]`
-/

namespace A138972.P15146307538325511036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (SequenceMachineLib.digitalRoot (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A138972.P15146307538325511036

namespace A138972

/-- `lt[0, cot(dr(p?[2*n+1]))]` -/
def P15146307538325511036.Spec : Prop :=
  ∀ n, (P15146307538325511036.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P5107405910951339030

`eq[0, A132194(n+2)]`
-/

namespace A138972.P5107405910951339030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132194 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P5107405910951339030

namespace A138972

/-- `eq[0, A132194(n+2)]` -/
def P5107405910951339030.Spec : Prop :=
  ∀ n, (P5107405910951339030.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P1475976518855343957

`eq[1, A039701(n+2)]`
-/

namespace A138972.P1475976518855343957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P1475976518855343957

namespace A138972

/-- `eq[1, A039701(n+2)]` -/
def P1475976518855343957.Spec : Prop :=
  ∀ n, (P1475976518855343957.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P3225361161778027716

`eq[1, A039704(n+2)]`
-/

namespace A138972.P3225361161778027716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039704 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P3225361161778027716

namespace A138972

/-- `eq[1, A039704(n+2)]` -/
def P3225361161778027716.Spec : Prop :=
  ∀ n, (P3225361161778027716.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P7057186495211642973

`eq[1, A073637(n+2)]`
-/

namespace A138972.P7057186495211642973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073637 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P7057186495211642973

namespace A138972

/-- `eq[1, A073637(n+2)]` -/
def P7057186495211642973.Spec : Prop :=
  ∀ n, (P7057186495211642973.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P17937256102584926432

`eq[1, A099618(n+2)]`
-/

namespace A138972.P17937256102584926432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099618 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P17937256102584926432

namespace A138972

/-- `eq[1, A099618(n+2)]` -/
def P17937256102584926432.Spec : Prop :=
  ∀ n, (P17937256102584926432.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P4842481870403785325

`eq[1, A134323(n+2)]`
-/

namespace A138972.P4842481870403785325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P4842481870403785325

namespace A138972

/-- `eq[1, A134323(n+2)]` -/
def P4842481870403785325.Spec : Prop :=
  ∀ n, (P4842481870403785325.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P15712127126694316946

`lt[1, A068503(n+2)]`
-/

namespace A138972.P15712127126694316946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068503 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138972.P15712127126694316946

namespace A138972

/-- `lt[1, A068503(n+2)]` -/
def P15712127126694316946.Spec : Prop :=
  ∀ n, (P15712127126694316946.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P5836709453553578120

`eq[2, A396681(n+2)]`
-/

namespace A138972.P5836709453553578120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396681 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P5836709453553578120

namespace A138972

/-- `eq[2, A396681(n+2)]` -/
def P5836709453553578120.Spec : Prop :=
  ∀ n, (P5836709453553578120.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P4620592205137499230

`eq[3, A023505(n+2)]`
-/

namespace A138972.P4620592205137499230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023505 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P4620592205137499230

namespace A138972

/-- `eq[3, A023505(n+2)]` -/
def P4620592205137499230.Spec : Prop :=
  ∀ n, (P4620592205137499230.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P1119909579849901649

`eq[3, A023592(n+2)]`
-/

namespace A138972.P1119909579849901649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138972.P1119909579849901649

namespace A138972

/-- `eq[3, A023592(n+2)]` -/
def P1119909579849901649.Spec : Prop :=
  ∀ n, (P1119909579849901649.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P14098990213328909854

`lt[1, A272198(n+2)²]`
-/

namespace A138972.P14098990213328909854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138972.P14098990213328909854

namespace A138972

/-- `lt[1, A272198(n+2)²]` -/
def P14098990213328909854.Spec : Prop :=
  ∀ n, (P14098990213328909854.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P13244297668057626473

`lt[1, A272203(n+2)²]`
-/

namespace A138972.P13244297668057626473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138972.P13244297668057626473

namespace A138972

/-- `lt[1, A272203(n+2)²]` -/
def P13244297668057626473.Spec : Prop :=
  ∀ n, (P13244297668057626473.a n : ℤ) = A138972 (n + 1)

end A138972

/-! ## A138972.P6546611671808420601

`A023444(A091178(n+1))`
-/

namespace A138972.P6546611671808420601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A091178 (n + 1)).toNat

end

end A138972.P6546611671808420601

namespace A138972

/-- `A023444(A091178(n+1))` -/
def P6546611671808420601.Spec : Prop :=
  ∀ n, P6546611671808420601.a n = A138972 (n + 1)

end A138972

/-! ## A138972.P15687523445282728283

`A023443(A138968(n+1))`
-/

namespace A138972.P15687523445282728283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A138968 (n + 1)).toNat

end

end A138972.P15687523445282728283

namespace A138972

/-- `A023443(A138968(n+1))` -/
def P15687523445282728283.Spec : Prop :=
  ∀ n, P15687523445282728283.a n = A138972 (n + 1)

end A138972

/-!
# A138973: a(n) = 8^n mod 7^n.

The programs for A138973, the canonical program `A138973.P12844915494034201965` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138973 has offset 0).

The definition of A138973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n)%(7^n)` (program `A138973.P12844915494034201965`, by `A138973.P12844915494034201965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138973.P12844915494034201965

`(8^n)%(7^n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138973

/-- `(8^n)%(7^n)` -/
def P12844915494034201965.Spec : Prop :=
  ∀ n, (P12844915494034201965.a n : ℤ) = A138973 n

theorem P12844915494034201965.correct : P12844915494034201965.Spec := by
  intro n
  simp only [A138973]

end A138973

/-! ## A138973.P915866599574857679

`abs(-A074622(n)%A000420(n))`
-/

namespace A138973.P915866599574857679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-A074622 n) (A000420 n)|

end

end A138973.P915866599574857679

namespace A138973

/-- `abs(-A074622(n)%A000420(n))` -/
def P915866599574857679.Spec : Prop :=
  ∀ n, P915866599574857679.a n = A138973 n

end A138973

/-! ## A138973.P569458378267001066

`-(-A001018(n)%A000420(n))`
-/

namespace A138973.P569458378267001066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A001018 n) (A000420 n)

end

end A138973.P569458378267001066

namespace A138973

/-- `-(-A001018(n)%A000420(n))` -/
def P569458378267001066.Spec : Prop :=
  ∀ n, P569458378267001066.a n = A138973 n

end A138973

/-! ## A138973.P8341702203024458433

`abs(Δ[A047853(n)]%A000420(n))`
-/

namespace A138973.P8341702203024458433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000420 n)|

end

end A138973.P8341702203024458433

namespace A138973

/-- `abs(Δ[A047853(n)]%A000420(n))` -/
def P8341702203024458433.Spec : Prop :=
  ∀ n, P8341702203024458433.a n = A138973 n

end A138973

/-! ## A138973.P11128140949616036405

`abs((A001019(n)-A074624(n))%A000420(n))`
-/

namespace A138973.P11128140949616036405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A001019 n - A074624 n) (A000420 n)|

end

end A138973.P11128140949616036405

namespace A138973

/-- `abs((A001019(n)-A074624(n))%A000420(n))` -/
def P11128140949616036405.Spec : Prop :=
  ∀ n, P11128140949616036405.a n = A138973 n

end A138973

/-! ## A138973.P15556726433886170249

`abs((A074623(n)-A074624(n))%A000420(n))`
-/

namespace A138973.P15556726433886170249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A074623 n - A074624 n) (A000420 n)|

end

end A138973.P15556726433886170249

namespace A138973

/-- `abs((A074623(n)-A074624(n))%A000420(n))` -/
def P15556726433886170249.Spec : Prop :=
  ∀ n, P15556726433886170249.a n = A138973 n

end A138973

/-!
# A138974: Primes consisting of only 3's and at most one 4 in base 10.

The programs for A138974, there is no canonical definition to state claims against.
-/

/-! ## A138974.P5130467351259869754

`∩[A199340(n+1), A032834(A099627(n))]`
-/

namespace A138974.P5130467351259869754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (A099627 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138974.P5130467351259869754

/-! ## A138974.P9815725035272624242

`p?[A032834(A099627(n))]`
-/

namespace A138974.P9815725035272624242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (A099627 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138974.P9815725035272624242

/-! ## A138974.P2720848205350470154

`p?[A032834(A209492(n))]`
-/

namespace A138974.P2720848205350470154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (A209492 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138974.P2720848205350470154

/-! ## A138974.P13507229337887352077

`p?[A032834(∑[A232089(n)])]`
-/

namespace A138974.P13507229337887352077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138974.P13507229337887352077

/-! ## A138974.P4196934870334100005

`p?[A032834(record[A126441(n)])]`
-/

namespace A138974.P4196934870334100005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138974.P4196934870334100005

/-!
# A138975: Primes made up of only 3's and a 4 and at most two 2's.

The programs for A138975, there is no canonical definition to state claims against.
-/

/-! ## A138975.P9876961074891334369

`filter[A199342(n+2), A285431(#)]`
-/

namespace A138975.P9876961074891334369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285431 (f1 j).toNat = 1) n)

end

end A138975.P9876961074891334369

/-! ## A138975.P16206199228464092956

`filter[A199342(n+2), A144599(#)]`
-/

namespace A138975.P16206199228464092956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144599 (f1 j).toNat = 1) n)

end

end A138975.P16206199228464092956

/-!
# A138976: The discriminant of the characteristic polynomial of the O+ and O- submatrix for spin 3 of the nuclear electric quadrupole Hamiltonian is a perfect square for these values.

The programs for A138976, the canonical program `A138976.P18288275394208342510` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138976 has offset 0).

The definition of A138976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138976.P18288275394208342510

`3-A136331(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138976

/-- `3-A136331(n+1)` -/
def P18288275394208342510.Spec : Prop :=
  ∀ n, P18288275394208342510.a n = A138976 n

theorem P18288275394208342510.correct : P18288275394208342510.Spec := by
  intro n
  simp only [A138976]

end A138976

/-! ## A138976.P1019796074119987392

`-(3*A233450(n+1))`
-/

namespace A138976.P1019796074119987392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 * A233450 (n + 1))

end

end A138976.P1019796074119987392

namespace A138976

/-- `-(3*A233450(n+1))` -/
def P1019796074119987392.Spec : Prop :=
  ∀ n, P1019796074119987392.a n = A138976 n

end A138976

/-! ## A138976.P2235556864618136759

`3*(1-∑[A080872(n)])`
-/

namespace A138976.P2235556864618136759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138976.P2235556864618136759

namespace A138976

/-- `3*(1-∑[A080872(n)])` -/
def P2235556864618136759.Spec : Prop :=
  ∀ n, P2235556864618136759.a n = A138976 n

end A138976

/-! ## A138976.P15937016268325540043

`3*(1-A129444(n+2))`
-/

namespace A138976.P15937016268325540043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - A129444 (n + 2))

end

end A138976.P15937016268325540043

namespace A138976

/-- `3*(1-A129444(n+2))` -/
def P15937016268325540043.Spec : Prop :=
  ∀ n, P15937016268325540043.a n = A138976 n

end A138976

/-! ## A138976.P6927881898657231025

`A000007(n+1)-3*A233450(n+1)`
-/

namespace A138976.P6927881898657231025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - 3 * A233450 (n + 1)

end

end A138976.P6927881898657231025

namespace A138976

/-- `A000007(n+1)-3*A233450(n+1)` -/
def P6927881898657231025.Spec : Prop :=
  ∀ n, P6927881898657231025.a n = A138976 n

end A138976

/-! ## A138976.P8006662281250242381

`A000035(4*n)-3*A233450(n+1)`
-/

namespace A138976.P8006662281250242381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) - 3 * A233450 (n + 1)

end

end A138976.P8006662281250242381

namespace A138976

/-- `A000035(4*n)-3*A233450(n+1)` -/
def P8006662281250242381.Spec : Prop :=
  ∀ n, P8006662281250242381.a n = A138976 n

end A138976

/-! ## A138976.P6241989796076348479

`A004248(∑[n+1])-3*A233450(n+1)`
-/

namespace A138976.P6241989796076348479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (∑ j ∈ Finset.range (n + 1), f1 j) - 3 * A233450 (n + 1)

end

end A138976.P6241989796076348479

namespace A138976

/-- `A004248(∑[n+1])-3*A233450(n+1)` -/
def P6241989796076348479.Spec : Prop :=
  ∀ n, P6241989796076348479.a n = A138976 n

end A138976

/-!
# A138977: Number of 2 X n matrices containing a 1 in the top left entry, all entries are integer values and adjacent entries differ by at most 1.

The programs for A138977, the canonical program `A138977.P3108630323779314571` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138977 has offset 1).

The definition of A138977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138977.P2645896985597420320

`ogf((3-2x)/(1-7x+4x^2))`
-/

namespace A138977.P2645896985597420320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -7, 4] n

end

end A138977.P2645896985597420320

namespace A138977

/-- `ogf((3-2x)/(1-7x+4x^2))` -/
def P2645896985597420320.Spec : Prop :=
  ∀ n, P2645896985597420320.a n = A138977 (n + 1)

end A138977

/-! ## A138977.P3108630323779314571

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=19`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138977

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P3108630323779314571.Spec : Prop :=
  ∀ n, P3108630323779314571.a n = A138977 (n + 1)

theorem P3108630323779314571.correct : P3108630323779314571.Spec := by
  intro n
  simp only [A138977, Nat.add_sub_cancel]

end A138977

/-! ## A138977.P1212578893084891546

`Δ[A190973(n+1)/2]`
-/

namespace A138977.P1212578893084891546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190973 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138977.P1212578893084891546

namespace A138977

/-- `Δ[A190973(n+1)/2]` -/
def P1212578893084891546.Spec : Prop :=
  ∀ n, P1212578893084891546.a n = (A138977 (n + 1) : ℚ)

end A138977

/-! ## A138977.P1333647306626518742

`A223557(n+2)/9`
-/

namespace A138977.P1333647306626518742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223557 (n + 2) : ℚ) / 9

end

end A138977.P1333647306626518742

namespace A138977

/-- `A223557(n+2)/9` -/
def P1333647306626518742.Spec : Prop :=
  ∀ n, P1333647306626518742.a n = (A138977 (n + 1) : ℚ)

end A138977

/-! ## A138977.P6582199100604840283

`A223557(n+2)%Δ[A190973(n+1)]`
-/

namespace A138977.P6582199100604840283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223557 (n + 2)) (f1 (n + 1) - f1 n)

end

end A138977.P6582199100604840283

namespace A138977

/-- `A223557(n+2)%Δ[A190973(n+1)]` -/
def P6582199100604840283.Spec : Prop :=
  ∀ n, P6582199100604840283.a n = A138977 (n + 1)

end A138977

/-!
# A138978: Number of 3 X n matrices containing a 1 in the top left entry, all entries are integer values and adjacent entries differ by at most 1.

The programs for A138978, there is no canonical definition to state claims against.
-/

/-! ## A138978.P5668552620938311336

`A222169(∑[n+2]+4)`
-/

namespace A138978.P5668552620938311336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A138978.P5668552620938311336

/-! ## A138978.P13556808506085392389

`or(1, A222169(A167614(n+1)))`
-/

namespace A138978.P13556808506085392389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A222169 (A167614 (n + 1)).toNat)

end

end A138978.P13556808506085392389

/-! ## A138978.P2327284894227140297

`A336355(n+1)+A222169(A167614(n+1))`
-/

namespace A138978.P2327284894227140297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1) + A222169 (A167614 (n + 1)).toNat

end

end A138978.P2327284894227140297

/-! ## A138978.P4377285764107859439

`A133707(n+1)*A222169(A167614(n+1))`
-/

namespace A138978.P4377285764107859439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A222169 (A167614 (n + 1)).toNat

end

end A138978.P4377285764107859439

/-! ## A138978.P4309738796947468273

`A222169(A167614(n+1))%A138979(n+1)`
-/

namespace A138978.P4309738796947468273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222169 (A167614 (n + 1)).toNat) (A138979 (n + 1))

end

end A138978.P4309738796947468273

/-!
# A138979: Number of 4 X n matrices containing a 1 in the top left entry, all entries are integer values and adjacent entries differ by at most 1.

The programs for A138979, there is no canonical definition to state claims against.
-/

/-! ## A138979.P1128423992107190198

`A222169(A374004(n+1))`
-/

namespace A138979.P1128423992107190198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A374004 (n + 1)).toNat

end

end A138979.P1128423992107190198

/-! ## A138979.P8866654339122502042

`A222169(A141214(n)+7)`
-/

namespace A138979.P8866654339122502042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A141214 n + 7).toNat

end

end A138979.P8866654339122502042

/-! ## A138979.P12002743001838376407

`A222169(A052905(n)+9)`
-/

namespace A138979.P12002743001838376407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A052905 n + 9).toNat

end

end A138979.P12002743001838376407

/-! ## A138979.P8319353681316015331

`A222169(A055999(n)+10)`
-/

namespace A138979.P8319353681316015331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A055999 n + 10).toNat

end

end A138979.P8319353681316015331

/-! ## A138979.P16331444733076880804

`A222169(A167614(n+2)+1)`
-/

namespace A138979.P16331444733076880804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A167614 (n + 2) + 1).toNat

end

end A138979.P16331444733076880804

/-!
# A138980: a(0)=1; for n>=1, a(n) = smallest prime > a(n-1) such that (sum{k=0 to n} a(k)) is composite.

The programs for A138980, there is no canonical definition to state claims against.
-/

/-! ## A138980.P17726856792135562250

`eq[A005171(A038425(n)), A078898(n)]`
-/

namespace A138980.P17726856792135562250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A038425 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138980.P17726856792135562250

/-! ## A138980.P18061503960609092421

`eq[A005171(A038425(n)), A107286(n)]`
-/

namespace A138980.P18061503960609092421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A038425 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A138980.P18061503960609092421

/-! ## A138980.P1064328895363997187

`A240349(A056220(2*n+1))+A049561(n+1)`
-/

namespace A138980.P1064328895363997187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240349 (A056220 (2 * n + 1)).toNat + A049561 (n + 1)

end

end A138980.P1064328895363997187

/-! ## A138980.P9203322053512796209

`A008578(lt[A054973(2*n+3), A281013(3*n+4)])`
-/

namespace A138980.P9203322053512796209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281013 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138980.P9203322053512796209

/-! ## A138980.P11707625350624661301

`A049561(n+1)-A034188((3*n)²)`
-/

namespace A138980.P11707625350624661301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1) - A034188 ((3 * n) ^ 2)

end

end A138980.P11707625350624661301

/-!
# A138981: a(n) = Sum_{k=0..n} A138980(k).

The programs for A138981, there is no canonical definition to state claims against.
-/

/-! ## A138981.P16212864755245349151

`∑[A138980(n)]`
-/

namespace A138981.P16212864755245349151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138981.P16212864755245349151

/-! ## A138981.P18293855304211559123

`A138980(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A138981.P18293855304211559123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138980 n + a (A023443 n).toNat

end

end A138981.P18293855304211559123

/-! ## A138981.P15634457962026846868

`A138980(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A138981.P15634457962026846868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138980 (A028310 n).toNat + a (n - 1)

end

end A138981.P15634457962026846868

/-! ## A138981.P10326742795933630882

`a(n-1)+lcm(A033999(n), A138980(n))` with `a(0)=1`
-/

namespace A138981.P10326742795933630882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A033999 n) (A138980 n)

end

end A138981.P10326742795933630882

/-! ## A138981.P7098415463828964213

`a(n-1)+A138980(n)%(A022144(n)-n)` with `a(0)=1`
-/

namespace A138981.P7098415463828964213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A138980 n) (A022144 n - (n : ℤ))

end

end A138981.P7098415463828964213

/-!
# A138982: Primes not in A138980.

The programs for A138982, there is no canonical definition to state claims against.
-/

/-! ## A138982.P15588983068909068886

`A020482(A030459(n+1)^A355777(n))`
-/

namespace A138982.P15588983068909068886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (SequenceMachineLib.roundAway ((A030459 (n + 1) : ℚ) ^ (A355777 n : ℤ))).toNat

end

end A138982.P15588983068909068886

/-!
# A138983: a(n) = (n+1)-th term of the (n+1)-th inverse binomial transform of this sequence for n>=0.

The programs for A138983, there is no canonical definition to state claims against.
-/

/-! ## A138983.P17582531125358341024

`A271212(n)-A085856(A209668(n))`
-/

namespace A138983.P17582531125358341024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271212 n - A085856 (A209668 n).toNat

end

end A138983.P17582531125358341024

/-! ## A138983.P10239157129861959351

`A005206(A327359(3*n+1)+A000165(n))`
-/

namespace A138983.P10239157129861959351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A327359 (3 * n + 1) + A000165 n).toNat

end

end A138983.P10239157129861959351

/-!
# A138984: a(n) = Frobenius number for 4 successive numbers = F(n+1, n+2, n+3, n+4).

The programs for A138984, the canonical program `A138984.P1039901907424211918` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138984 has offset 1).

The definition of A138984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138984.P1039901907424211918

`n+1+(n+2)*floor(n/3)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138984

/-- `n+1+(n+2)*floor(n/3)` -/
def P1039901907424211918.Spec : Prop :=
  ∀ n, P1039901907424211918.a n = A138984 (n + 1)

theorem P1039901907424211918.correct : P1039901907424211918.Spec := by
  intro n
  simp only [A138984, Nat.add_sub_cancel]

end A138984

/-! ## A138984.P6574768432869372308

`∑[A138995(abs(1-n)+1)]`
-/

namespace A138984.P6574768432869372308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138995 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138984.P6574768432869372308

namespace A138984

/-- `∑[A138995(abs(1-n)+1)]` -/
def P6574768432869372308.Spec : Prop :=
  ∀ n, P6574768432869372308.a n = A138984 (n + 1)

end A138984

/-! ## A138984.P1469733269795100491

`abs(A242669(n)+∑[gcd(3, n)]-2)`
-/

namespace A138984.P1469733269795100491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242669 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)|

end

end A138984.P1469733269795100491

namespace A138984

/-- `abs(A242669(n)+∑[gcd(3, n)]-2)` -/
def P1469733269795100491.Spec : Prop :=
  ∀ n, P1469733269795100491.a n = A138984 (n + 1)

end A138984

/-! ## A138984.P7927518313602419467

`abs((n+2)*(A002264(n)+1)-1)`
-/

namespace A138984.P7927518313602419467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (A002264 n + 1) - 1|

end

end A138984.P7927518313602419467

namespace A138984

/-- `abs((n+2)*(A002264(n)+1)-1)` -/
def P7927518313602419467.Spec : Prop :=
  ∀ n, P7927518313602419467.a n = A138984 (n + 1)

end A138984

/-! ## A138984.P3571363469919858922

`∪[A080663(n+1), A135370(n+1)]`
-/

namespace A138984.P3571363469919858922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138984.P3571363469919858922

namespace A138984

/-- `∪[A080663(n+1), A135370(n+1)]` -/
def P3571363469919858922.Spec : Prop :=
  ∀ n, (P3571363469919858922.a n : ℤ) = A138984 (n + 1)

end A138984

/-! ## A138984.P3833141327845749792

`abs(1-A229593(n+3))`
-/

namespace A138984.P3833141327845749792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A229593 (n + 3)|

end

end A138984.P3833141327845749792

namespace A138984

/-- `abs(1-A229593(n+3))` -/
def P3833141327845749792.Spec : Prop :=
  ∀ n, P3833141327845749792.a n = A138984 (n + 1)

end A138984

/-! ## A138984.P657398045105049353

`(A229593(n+3)-1)*a(A006519(A005408(n))-1)` with `a(0)=1`
-/

namespace A138984.P657398045105049353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A229593 (n + 3) - 1) * a (A006519 (A005408 n).toNat - 1).toNat

end

end A138984.P657398045105049353

namespace A138984

/-- `(A229593(n+3)-1)*a(A006519(A005408(n))-1)` -/
def P657398045105049353.Spec : Prop :=
  ∀ n, P657398045105049353.a n = A138984 (n + 1)

end A138984

/-! ## A138984.P15378183287213910469

`A023443((n+2)*(floor(n/3)+1))`
-/

namespace A138984.P15378183287213910469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 2 : ℤ) * (⌊(n : ℚ) / 3⌋ + 1)).toNat

end

end A138984.P15378183287213910469

namespace A138984

/-- `A023443((n+2)*(floor(n/3)+1))` -/
def P15378183287213910469.Spec : Prop :=
  ∀ n, P15378183287213910469.a n = A138984 (n + 1)

end A138984

/-!
# A138985: a(n) = Frobenius number for 5 successive numbers = F(n+1, n+2, n+3, n+4, n+5).

The programs for A138985, the canonical program `A138985.P14879326153276375172` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138985 has offset 1).

The definition of A138985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138985.P14879326153276375172

`(floor(n/4)+1)*(n+2)-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138985

/-- `(floor(n/4)+1)*(n+2)-1` -/
def P14879326153276375172.Spec : Prop :=
  ∀ n, P14879326153276375172.a n = A138985 (n + 1)

theorem P14879326153276375172.correct : P14879326153276375172.Spec := by
  intro n
  simp only [A138985, Nat.add_sub_cancel]

end A138985

/-! ## A138985.P3014100442033918504

`abs(1-(n+2)*A008621(n))`
-/

namespace A138985.P3014100442033918504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n + 2 : ℤ) * A008621 n|

end

end A138985.P3014100442033918504

namespace A138985

/-- `abs(1-(n+2)*A008621(n))` -/
def P3014100442033918504.Spec : Prop :=
  ∀ n, P3014100442033918504.a n = A138985 (n + 1)

end A138985

/-! ## A138985.P3968274027021920659

`∑[A138996(floor(1/(n+1)+n))]`
-/

namespace A138985.P3968274027021920659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138996 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138985.P3968274027021920659

namespace A138985

/-- `∑[A138996(floor(1/(n+1)+n))]` -/
def P3968274027021920659.Spec : Prop :=
  ∀ n, P3968274027021920659.a n = A138985 (n + 1)

end A138985

/-! ## A138985.P17952883961013332822

`A000027((n+2)*A008621(n)-1)`
-/

namespace A138985.P17952883961013332822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 2 : ℤ) * A008621 n - 1).toNat

end

end A138985.P17952883961013332822

namespace A138985

/-- `A000027((n+2)*A008621(n)-1)` -/
def P17952883961013332822.Spec : Prop :=
  ∀ n, P17952883961013332822.a n = A138985 (n + 1)

end A138985

/-! ## A138985.P8164012803251527076

`∑[A138996(A233583(n+1))+A000007(n+1)]`
-/

namespace A138985.P8164012803251527076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138996 (A233583 (n + 1)).toNat + A000007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138985.P8164012803251527076

namespace A138985

/-- `∑[A138996(A233583(n+1))+A000007(n+1)]` -/
def P8164012803251527076.Spec : Prop :=
  ∀ n, P8164012803251527076.a n = A138985 (n + 1)

end A138985

/-! ## A138985.P17268390995906066027

`A028310((n+2)*A008621(n)-1)`
-/

namespace A138985.P17268390995906066027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 2 : ℤ) * A008621 n - 1).toNat

end

end A138985.P17268390995906066027

namespace A138985

/-- `A028310((n+2)*A008621(n)-1)` -/
def P17268390995906066027.Spec : Prop :=
  ∀ n, P17268390995906066027.a n = A138985 (n + 1)

end A138985

/-! ## A138985.P14689482600519886123

`A004275((n+2)*A008621(n))/2`
-/

namespace A138985.P14689482600519886123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 ((n + 2 : ℤ) * A008621 n).toNat : ℚ) / 2

end

end A138985.P14689482600519886123

namespace A138985

/-- `A004275((n+2)*A008621(n))/2` -/
def P14689482600519886123.Spec : Prop :=
  ∀ n, P14689482600519886123.a n = (A138985 (n + 1) : ℚ)

end A138985

/-! ## A138985.P18239277561647164449

`A023443((n+2)*(floor(n/4)+1))`
-/

namespace A138985.P18239277561647164449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 2 : ℤ) * (⌊(n : ℚ) / 4⌋ + 1)).toNat

end

end A138985.P18239277561647164449

namespace A138985

/-- `A023443((n+2)*(floor(n/4)+1))` -/
def P18239277561647164449.Spec : Prop :=
  ∀ n, P18239277561647164449.a n = A138985 (n + 1)

end A138985

/-! ## A138985.P10884354569896953486

`floor(ratio[A001048(n+1)]*A008621(n))`
-/

namespace A138985.P10884354569896953486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A008621 n : ℚ)⌋

end

end A138985.P10884354569896953486

namespace A138985

/-- `floor(ratio[A001048(n+1)]*A008621(n))` -/
def P10884354569896953486.Spec : Prop :=
  ∀ n, P10884354569896953486.a n = A138985 (n + 1)

end A138985

/-!
# A138986: a(n) = Frobenius number for 6 successive numbers = F(n+1, n+2, n+3, n+4, n+5, n+6).

The programs for A138986, the canonical program `A138986.P13306790151263290430` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138986 has offset 1).

The definition of A138986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138986.P13306790151263290430

`n+1+(n+2)*floor(n/5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138986

/-- `n+1+(n+2)*floor(n/5)` -/
def P13306790151263290430.Spec : Prop :=
  ∀ n, P13306790151263290430.a n = A138986 (n + 1)

theorem P13306790151263290430.correct : P13306790151263290430.Spec := by
  intro n
  simp only [A138986, Nat.add_sub_cancel]

end A138986

/-! ## A138986.P14086543105152457739

`((n+2)*A130497(n)+n)/2`
-/

namespace A138986.P14086543105152457739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A130497 n + (n : ℤ) : ℚ) / 2

end

end A138986.P14086543105152457739

namespace A138986

/-- `((n+2)*A130497(n)+n)/2` -/
def P14086543105152457739.Spec : Prop :=
  ∀ n, P14086543105152457739.a n = (A138986 (n + 1) : ℚ)

theorem P14086543105152457739.correct : P14086543105152457739.Spec := by
  intro n
  simp only [A138986, Nat.add_sub_cancel, A138986.P14086543105152457739.a, A138986.P13306790151263290430.a, A130497, A130497.P10916058717388302017.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138986

/-! ## A138986.P8104151595934593560

`∑[A138997(A028310(n))]`
-/

namespace A138986.P8104151595934593560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P8104151595934593560

namespace A138986

/-- `∑[A138997(A028310(n))]` -/
def P8104151595934593560.Spec : Prop :=
  ∀ n, P8104151595934593560.a n = A138986 (n + 1)

end A138986

/-! ## A138986.P16160244314220378813

`∑[A138997(gcd(n, A008458(n)))]`
-/

namespace A138986.P16160244314220378813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P16160244314220378813

namespace A138986

/-- `∑[A138997(gcd(n, A008458(n)))]` -/
def P16160244314220378813.Spec : Prop :=
  ∀ n, P16160244314220378813.a n = A138986 (n + 1)

end A138986

/-! ## A138986.P13289561928311592321

`∑[A138997(A065033(2*n))]`
-/

namespace A138986.P13289561928311592321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P13289561928311592321

namespace A138986

/-- `∑[A138997(A065033(2*n))]` -/
def P13289561928311592321.Spec : Prop :=
  ∀ n, P13289561928311592321.a n = A138986 (n + 1)

end A138986

/-! ## A138986.P7890631427247144708

`∑[A138997(A233583(n+1))]`
-/

namespace A138986.P7890631427247144708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P7890631427247144708

namespace A138986

/-- `∑[A138997(A233583(n+1))]` -/
def P7890631427247144708.Spec : Prop :=
  ∀ n, P7890631427247144708.a n = A138986 (n + 1)

end A138986

/-! ## A138986.P7870866091299051842

`A023443((n+2)*∑[char[5*n]])`
-/

namespace A138986.P7870866091299051842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A138986.P7870866091299051842

namespace A138986

/-- `A023443((n+2)*∑[char[5*n]])` -/
def P7870866091299051842.Spec : Prop :=
  ∀ n, P7870866091299051842.a n = A138986 (n + 1)

end A138986

/-! ## A138986.P12037476650837470053

`∑[A138997(A007318(A000124(n)))]`
-/

namespace A138986.P12037476650837470053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P12037476650837470053

namespace A138986

/-- `∑[A138997(A007318(A000124(n)))]` -/
def P12037476650837470053.Spec : Prop :=
  ∀ n, P12037476650837470053.a n = A138986 (n + 1)

end A138986

/-! ## A138986.P6484405101844087964

`∑[A138997(A134478(∑[n]))]`
-/

namespace A138986.P6484405101844087964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138986.P6484405101844087964

namespace A138986

/-- `∑[A138997(A134478(∑[n]))]` -/
def P6484405101844087964.Spec : Prop :=
  ∀ n, P6484405101844087964.a n = A138986 (n + 1)

end A138986

/-!
# A138987: a(n) = Frobenius number for 7 successive numbers = F(n+1, n+2, n+3, n+4, n+5, n+6, n+7).

The programs for A138987, the canonical program `A138987.P17766040215330347440` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138987 has offset 1).

The definition of A138987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138987.P17766040215330347440

`n+1+(n+2)*floor(n/6)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138987

/-- `n+1+(n+2)*floor(n/6)` -/
def P17766040215330347440.Spec : Prop :=
  ∀ n, P17766040215330347440.a n = A138987 (n + 1)

theorem P17766040215330347440.correct : P17766040215330347440.Spec := by
  intro n
  simp only [A138987, Nat.add_sub_cancel]

end A138987

/-! ## A138987.P6072931468696131807

`∑[A151898(A028310(n))]`
-/

namespace A138987.P6072931468696131807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138987.P6072931468696131807

namespace A138987

/-- `∑[A151898(A028310(n))]` -/
def P6072931468696131807.Spec : Prop :=
  ∀ n, P6072931468696131807.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P18329076362289574983

`∑[A151898(A000007(n)+n)]`
-/

namespace A138987.P18329076362289574983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138987.P18329076362289574983

namespace A138987

/-- `∑[A151898(A000007(n)+n)]` -/
def P18329076362289574983.Spec : Prop :=
  ∀ n, P18329076362289574983.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P7565504892373414703

`∑[A151898(A036987(n)+n)]`
-/

namespace A138987.P7565504892373414703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138987.P7565504892373414703

namespace A138987

/-- `∑[A151898(A036987(n)+n)]` -/
def P7565504892373414703.Spec : Prop :=
  ∀ n, P7565504892373414703.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P3360157460241710077

`∑[A151898(A065033(2*n))]`
-/

namespace A138987.P3360157460241710077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138987.P3360157460241710077

namespace A138987

/-- `∑[A151898(A065033(2*n))]` -/
def P3360157460241710077.Spec : Prop :=
  ∀ n, P3360157460241710077.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P18377651903350455923

`∑[A151898(A123108(2*n))]`
-/

namespace A138987.P18377651903350455923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138987.P18377651903350455923

namespace A138987

/-- `∑[A151898(A123108(2*n))]` -/
def P18377651903350455923.Spec : Prop :=
  ∀ n, P18377651903350455923.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P6443310753400307834

`∑[A151898(A233583(n+1))]`
-/

namespace A138987.P6443310753400307834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138987.P6443310753400307834

namespace A138987

/-- `∑[A151898(A233583(n+1))]` -/
def P6443310753400307834.Spec : Prop :=
  ∀ n, P6443310753400307834.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P5867910630606196352

`abs((val(A007283(n), 64)+1)*(n+2)-1)`
-/

namespace A138987.P5867910630606196352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.valuation (A007283 n).toNat 64 + 1) * (n + 2) : ℤ) - 1|

end

end A138987.P5867910630606196352

namespace A138987

/-- `abs((val(A007283(n), 64)+1)*(n+2)-1)` -/
def P5867910630606196352.Spec : Prop :=
  ∀ n, P5867910630606196352.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P9332262023994272135

`abs(1-(val(A020714(n), 64)+1)*(n+2))`
-/

namespace A138987.P9332262023994272135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((SequenceMachineLib.valuation (A020714 n).toNat 64 + 1) * (n + 2) : ℤ)|

end

end A138987.P9332262023994272135

namespace A138987

/-- `abs(1-(val(A020714(n), 64)+1)*(n+2))` -/
def P9332262023994272135.Spec : Prop :=
  ∀ n, P9332262023994272135.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P1376029557156698405

`A023443((n+2)*∑[val(gcd(6, n), 6)])`
-/

namespace A138987.P1376029557156698405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd 6 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A138987.P1376029557156698405

namespace A138987

/-- `A023443((n+2)*∑[val(gcd(6, n), 6)])` -/
def P1376029557156698405.Spec : Prop :=
  ∀ n, P1376029557156698405.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P8301840415996041524

`A023443((n+2)*A097992(n))`
-/

namespace A138987.P8301840415996041524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 2 : ℤ) * A097992 n).toNat

end

end A138987.P8301840415996041524

namespace A138987

/-- `A023443((n+2)*A097992(n))` -/
def P8301840415996041524.Spec : Prop :=
  ∀ n, P8301840415996041524.a n = A138987 (n + 1)

end A138987

/-! ## A138987.P13156428045602836379

`A223544(A047304(n+1)+A000124(n))`
-/

namespace A138987.P13156428045602836379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (A047304 (n + 1) + A000124 n).toNat

end

end A138987.P13156428045602836379

namespace A138987

/-- `A223544(A047304(n+1)+A000124(n))` -/
def P13156428045602836379.Spec : Prop :=
  ∀ n, P13156428045602836379.a n = A138987 (n + 1)

end A138987

/-!
# A138988: a(n) is the Frobenius number for 8 successive numbers n+1, n+2, ..., n+8.

The programs for A138988, the canonical program `A138988.P3477283103971470026` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138988 has offset 1).

The definition of A138988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138988.P3477283103971470026

`(n+2)*∑[char[7*n]]-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138988

/-- `(n+2)*∑[char[7*n]]-1` -/
def P3477283103971470026.Spec : Prop :=
  ∀ n, P3477283103971470026.a n = A138988 (n + 1)

theorem P3477283103971470026.correct : P3477283103971470026.Spec := by
  intro n
  simp only [A138988, Nat.add_sub_cancel]

end A138988

/-! ## A138988.P11569673230319559364

`∑[A138999(A028310(n))]`
-/

namespace A138988.P11569673230319559364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P11569673230319559364

namespace A138988

/-- `∑[A138999(A028310(n))]` -/
def P11569673230319559364.Spec : Prop :=
  ∀ n, P11569673230319559364.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P8651129723356094376

`∑[A138999(A000007(n)+n)]`
-/

namespace A138988.P8651129723356094376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P8651129723356094376

namespace A138988

/-- `∑[A138999(A000007(n)+n)]` -/
def P8651129723356094376.Spec : Prop :=
  ∀ n, P8651129723356094376.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P9875217447856558987

`∑[A138999(gcd(n, A008458(n)))]`
-/

namespace A138988.P9875217447856558987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P9875217447856558987

namespace A138988

/-- `∑[A138999(gcd(n, A008458(n)))]` -/
def P9875217447856558987.Spec : Prop :=
  ∀ n, P9875217447856558987.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P464020523922610410

`∑[A138999(xor(n, A000007(n)))]`
-/

namespace A138988.P464020523922610410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P464020523922610410

namespace A138988

/-- `∑[A138999(xor(n, A000007(n)))]` -/
def P464020523922610410.Spec : Prop :=
  ∀ n, P464020523922610410.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P1476366585688031213

`A023443((n+2)*ceil((n+1)/7))`
-/

namespace A138988.P1476366585688031213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 2 : ℤ) * ⌈(n + 1 : ℚ) / 7⌉).toNat

end

end A138988.P1476366585688031213

namespace A138988

/-- `A023443((n+2)*ceil((n+1)/7))` -/
def P1476366585688031213.Spec : Prop :=
  ∀ n, P1476366585688031213.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P15981689848194039543

`∑[A138999(A007318(A000124(n)))]`
-/

namespace A138988.P15981689848194039543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P15981689848194039543

namespace A138988

/-- `∑[A138999(A007318(A000124(n)))]` -/
def P15981689848194039543.Spec : Prop :=
  ∀ n, P15981689848194039543.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P6618408994078553729

`∑[A138999(A134478(∑[n]))]`
-/

namespace A138988.P6618408994078553729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P6618408994078553729

namespace A138988

/-- `∑[A138999(A134478(∑[n]))]` -/
def P6618408994078553729.Spec : Prop :=
  ∀ n, P6618408994078553729.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P5233497847958428328

`∑[A138999(A137734(n²))]`
-/

namespace A138988.P5233497847958428328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P5233497847958428328

namespace A138988

/-- `∑[A138999(A137734(n²))]` -/
def P5233497847958428328.Spec : Prop :=
  ∀ n, P5233497847958428328.a n = A138988 (n + 1)

end A138988

/-! ## A138988.P15800860511692341709

`∑[A138999(A000196(n²+1))]`
-/

namespace A138988.P15800860511692341709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A000196 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138988.P15800860511692341709

namespace A138988

/-- `∑[A138999(A000196(n²+1))]` -/
def P15800860511692341709.Spec : Prop :=
  ∀ n, P15800860511692341709.a n = A138988 (n + 1)

end A138988

/-!
# A138989: a(n) = Frobenius number for 3 successive primes = F[p(n), p(n+1), p(n+2)].

The programs for A138989, there is no canonical definition to state claims against.
-/

/-! ## A138989.P12367716651688135128

`∑[record[A111742(A046063(n+1))]]`
-/

namespace A138989.P12367716651688135128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111742 (A046063 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138989.P12367716651688135128

/-! ## A138989.P8344586943773057059

`A005811(A000670(n))+3*n²`
-/

namespace A138989.P8344586943773057059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A000670 n).toNat + (3 * n ^ 2 : ℤ)

end

end A138989.P8344586943773057059

/-! ## A138989.P11245107043393846491

`A053735(A088009(n))+3*n²`
-/

namespace A138989.P11245107043393846491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A088009 n).toNat + (3 * n ^ 2 : ℤ)

end

end A138989.P11245107043393846491

/-!
# A138993: a(n) = Frobenius number for 7 successive primes = F[p(n), p(n+1), p(n+2), p(n+3), p(n+4), p(n+5), p(n+6)].

The programs for A138993, there is no canonical definition to state claims against.
-/

/-! ## A138993.P16641613777232904947

`A138994(n+1)-A173452(A000040(n+1))`
-/

namespace A138993.P16641613777232904947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138994 (n + 1) - A173452 (A000040 (n + 1)).toNat

end

end A138993.P16641613777232904947

/-! ## A138993.P6264173558311483609

`A173066(A083960(n+3))+A138994(n+1)`
-/

namespace A138993.P6264173558311483609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173066 (A083960 (n + 3)).toNat + A138994 (n + 1)

end

end A138993.P6264173558311483609

/-!
# A138994: a(n) = Frobenius number for 8 successive primes = F[p(n), p(n+1), p(n+2), p(n+3), p(n+4), p(n+5), p(n+6), p(n+7)].

The programs for A138994, there is no canonical definition to state claims against.
-/

/-! ## A138994.P24703516342951795

`A138993(n+1)+A005928(A006128(2*n+3))`
-/

namespace A138994.P24703516342951795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138993 (n + 1) + A005928 (A006128 (2 * n + 3)).toNat

end

end A138994.P24703516342951795

/-! ## A138994.P5721902309707204557

`A173452(A000040(n+1))+A138993(n+1)`
-/

namespace A138994.P5721902309707204557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173452 (A000040 (n + 1)).toNat + A138993 (n + 1)

end

end A138994.P5721902309707204557

/-!
# A138995: First differences of Frobenius numbers for 4 successive numbers A138984.

The programs for A138995, the canonical program `A138995.P10979620525028866322` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138995 has offset 1).

The definition of A138995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138995.P10979620525028866322

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=2, a(4)=2, a(5)=10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138995

/-- `2*a(n-3)-a(n-6)` -/
def P10979620525028866322.Spec : Prop :=
  ∀ n, P10979620525028866322.a n = A138995 (n + 1)

theorem P10979620525028866322.correct : P10979620525028866322.Spec := by
  intro n
  simp only [A138995, Nat.add_sub_cancel]

end A138995

/-! ## A138995.P9578096790771920270

`A138984(n+2)-A138984(n+1)`
-/

namespace A138995.P9578096790771920270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138984 (n + 2) - A138984 (n + 1)

end

end A138995.P9578096790771920270

namespace A138995

/-- `A138984(n+2)-A138984(n+1)` -/
def P9578096790771920270.Spec : Prop :=
  ∀ n, P9578096790771920270.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P3787281285269301381

`Δ[(n+2)*(floor(n/3)+1)]`
-/

namespace A138995.P3787281285269301381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (⌊(n : ℚ) / 3⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138995.P3787281285269301381

namespace A138995

/-- `Δ[(n+2)*(floor(n/3)+1)]` -/
def P3787281285269301381.Spec : Prop :=
  ∀ n, P3787281285269301381.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P6309872255479367588

`A064680(floor(2*n/3)+2)`
-/

namespace A138995.P6309872255479367588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (⌊2 * ((n : ℚ) / 3)⌋ + 2).toNat

end

end A138995.P6309872255479367588

namespace A138995

/-- `A064680(floor(2*n/3)+2)` -/
def P6309872255479367588.Spec : Prop :=
  ∀ n, P6309872255479367588.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P13658443374367194158

`-Δ[-A138984(n+1)]`
-/

namespace A138995.P13658443374367194158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A138995.P13658443374367194158

namespace A138995

/-- `-Δ[-A138984(n+1)]` -/
def P13658443374367194158.Spec : Prop :=
  ∀ n, P13658443374367194158.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P11020991276000142429

`A092092(n+2)+A089598(n+1)`
-/

namespace A138995.P11020991276000142429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 2) + A089598 (n + 1)

end

end A138995.P11020991276000142429

namespace A138995

/-- `A092092(n+2)+A089598(n+1)` -/
def P11020991276000142429.Spec : Prop :=
  ∀ n, P11020991276000142429.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P17052738333467926791

`A128615(n+1)+2*A089598(n+1)`
-/

namespace A138995.P17052738333467926791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 (n + 1) + 2 * A089598 (n + 1)

end

end A138995.P17052738333467926791

namespace A138995

/-- `A128615(n+1)+2*A089598(n+1)` -/
def P17052738333467926791.Spec : Prop :=
  ∀ n, P17052738333467926791.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P13391733735738273845

`2*A092092(n+2)-A128615(n+1)`
-/

namespace A138995.P13391733735738273845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092092 (n + 2) - A128615 (n + 1)

end

end A138995.P13391733735738273845

namespace A138995

/-- `2*A092092(n+2)-A128615(n+1)` -/
def P13391733735738273845.Spec : Prop :=
  ∀ n, P13391733735738273845.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P1265925342357563192

`A089598(A064429(n+1))+A089598(n+1)`
-/

namespace A138995.P1265925342357563192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A064429 (n + 1)).toNat + A089598 (n + 1)

end

end A138995.P1265925342357563192

namespace A138995

/-- `A089598(A064429(n+1))+A089598(n+1)` -/
def P1265925342357563192.Spec : Prop :=
  ∀ n, P1265925342357563192.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P12525964116748205459

`A092092(A080782(n+2))+A092092(n+2)`
-/

namespace A138995.P12525964116748205459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A080782 (n + 2)).toNat + A092092 (n + 2)

end

end A138995.P12525964116748205459

namespace A138995

/-- `A092092(A080782(n+2))+A092092(n+2)` -/
def P12525964116748205459.Spec : Prop :=
  ∀ n, P12525964116748205459.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P3678205130643379678

`A089598(n+1)+xor(A087508(n+1), A089598(n+1))`
-/

namespace A138995.P3678205130643379678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (n + 1) + Int.xor (A087508 (n + 1)) (A089598 (n + 1))

end

end A138995.P3678205130643379678

namespace A138995

/-- `A089598(n+1)+xor(A087508(n+1), A089598(n+1))` -/
def P3678205130643379678.Spec : Prop :=
  ∀ n, P3678205130643379678.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P14716306497695059116

`A092092(n+2)+xor(A087508(n+1), A092092(n+2))`
-/

namespace A138995.P14716306497695059116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 2) + Int.xor (A087508 (n + 1)) (A092092 (n + 2))

end

end A138995.P14716306497695059116

namespace A138995

/-- `A092092(n+2)+xor(A087508(n+1), A092092(n+2))` -/
def P14716306497695059116.Spec : Prop :=
  ∀ n, P14716306497695059116.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P12197784353114571165

`A057079(n+2)*A076118(n+2)`
-/

namespace A138995.P12197784353114571165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A076118 (n + 2)

end

end A138995.P12197784353114571165

namespace A138995

/-- `A057079(n+2)*A076118(n+2)` -/
def P12197784353114571165.Spec : Prop :=
  ∀ n, P12197784353114571165.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P14454259333270530604

`A229593(n+4)-A229593(n+3)`
-/

namespace A138995.P14454259333270530604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 4) - A229593 (n + 3)

end

end A138995.P14454259333270530604

namespace A138995

/-- `A229593(n+4)-A229593(n+3)` -/
def P14454259333270530604.Spec : Prop :=
  ∀ n, P14454259333270530604.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P2904492217184676075

`A188134(A273308(n+2))`
-/

namespace A138995.P2904492217184676075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A273308 (n + 2)).toNat

end

end A138995.P2904492217184676075

namespace A138995

/-- `A188134(A273308(n+2))` -/
def P2904492217184676075.Spec : Prop :=
  ∀ n, P2904492217184676075.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P14260627134671499859

`A065173(A273308(n+2)+1)`
-/

namespace A138995.P14260627134671499859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065173 (A273308 (n + 2) + 1).toNat

end

end A138995.P14260627134671499859

namespace A138995

/-- `A065173(A273308(n+2)+1)` -/
def P14260627134671499859.Spec : Prop :=
  ∀ n, P14260627134671499859.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P14534812081697535643

`A372865(2*n+3)+1`
-/

namespace A138995.P14534812081697535643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372865 (2 * n + 3) + 1

end

end A138995.P14534812081697535643

namespace A138995

/-- `A372865(2*n+3)+1` -/
def P14534812081697535643.Spec : Prop :=
  ∀ n, P14534812081697535643.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P15591397567680509232

`A283443(3*A123919(2*(n+2)))`
-/

namespace A138995.P15591397567680509232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (3 * A123919 (2 * (n + 2))).toNat

end

end A138995.P15591397567680509232

namespace A138995

/-- `A283443(3*A123919(2*(n+2)))` -/
def P15591397567680509232.Spec : Prop :=
  ∀ n, P15591397567680509232.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P5217393876468318672

`A004526(Δ[A138987(2*(n+1))]+1)`
-/

namespace A138995.P5217393876468318672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n + 1).toNat

end

end A138995.P5217393876468318672

namespace A138995

/-- `A004526(Δ[A138987(2*(n+1))]+1)` -/
def P5217393876468318672.Spec : Prop :=
  ∀ n, P5217393876468318672.a n = A138995 (n + 1)

end A138995

/-! ## A138995.P324830856014584363

`abs(Δ[(val(2^n, 8)+1)*(n+2)])`
-/

namespace A138995.P324830856014584363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 ^ n) 8 + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A138995.P324830856014584363

namespace A138995

/-- `abs(Δ[(val(2^n, 8)+1)*(n+2)])` -/
def P324830856014584363.Spec : Prop :=
  ∀ n, P324830856014584363.a n = A138995 (n + 1)

end A138995

/-!
# A138996: First differences of Frobenius numbers for 5 successive numbers A138985.

The programs for A138996, the canonical program `A138996.P17035841742712235195` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138996 has offset 1).

The definition of A138996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138996.P17035841742712235195

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=2, a(5)=2, a(6)=2, a(7)=12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138996

/-- `2*a(n-4)-a(n-8)` -/
def P17035841742712235195.Spec : Prop :=
  ∀ n, P17035841742712235195.a n = A138996 (n + 1)

theorem P17035841742712235195.correct : P17035841742712235195.Spec := by
  intro n
  simp only [A138996, Nat.add_sub_cancel]

end A138996

/-! ## A138996.P15708319307358853515

`A138985(n+2)-A138985(n+1)`
-/

namespace A138996.P15708319307358853515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138985 (n + 2) - A138985 (n + 1)

end

end A138996.P15708319307358853515

namespace A138996

/-- `A138985(n+2)-A138985(n+1)` -/
def P15708319307358853515.Spec : Prop :=
  ∀ n, P15708319307358853515.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P10210366654293751914

`Δ[(n+2)*(floor(n/4)+1)]`
-/

namespace A138996.P10210366654293751914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (⌊(n : ℚ) / 4⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138996.P10210366654293751914

namespace A138996

/-- `Δ[(n+2)*(floor(n/4)+1)]` -/
def P10210366654293751914.Spec : Prop :=
  ∀ n, P10210366654293751914.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P17919353441146209488

`A008621(n)+(n+3)*A011765(n+1)`
-/

namespace A138996.P17919353441146209488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + (n + 3 : ℤ) * A011765 (n + 1)

end

end A138996.P17919353441146209488

namespace A138996

/-- `A008621(n)+(n+3)*A011765(n+1)` -/
def P17919353441146209488.Spec : Prop :=
  ∀ n, P17919353441146209488.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P16571317696591738253

`abs(Δ[A138985(n+1)])`
-/

namespace A138996.P16571317696591738253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138996.P16571317696591738253

namespace A138996

/-- `abs(Δ[A138985(n+1)])` -/
def P16571317696591738253.Spec : Prop :=
  ∀ n, P16571317696591738253.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P9466741890883925531

`abs(Δ[(n+2)*A008621(n)])`
-/

namespace A138996.P9466741890883925531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138996.P9466741890883925531

namespace A138996

/-- `abs(Δ[(n+2)*A008621(n)])` -/
def P9466741890883925531.Spec : Prop :=
  ∀ n, P9466741890883925531.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P12449333781539366169

`Δ[(n+2)*A002265(n)]+1`
-/

namespace A138996.P12449333781539366169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A138996.P12449333781539366169

namespace A138996

/-- `Δ[(n+2)*A002265(n)]+1` -/
def P12449333781539366169.Spec : Prop :=
  ∀ n, P12449333781539366169.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P670596074269586855

`Δ[A138985(n+1)]%A016885(n)`
-/

namespace A138996.P670596074269586855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016885 n)

end

end A138996.P670596074269586855

namespace A138996

/-- `Δ[A138985(n+1)]%A016885(n)` -/
def P670596074269586855.Spec : Prop :=
  ∀ n, P670596074269586855.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P18437016411110323857

`lcm(Δ[A138985(n+1)], A033999(n))`
-/

namespace A138996.P18437016411110323857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A138996.P18437016411110323857

namespace A138996

/-- `lcm(Δ[A138985(n+1)], A033999(n))` -/
def P18437016411110323857.Spec : Prop :=
  ∀ n, (P18437016411110323857.a n : ℤ) = A138996 (n + 1)

end A138996

/-! ## A138996.P10284483565701193365

`A028310(Δ[(n+2)*A008621(n)])`
-/

namespace A138996.P10284483565701193365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A138996.P10284483565701193365

namespace A138996

/-- `A028310(Δ[(n+2)*A008621(n)])` -/
def P10284483565701193365.Spec : Prop :=
  ∀ n, P10284483565701193365.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P4444312809389847955

`A008621(n)+Δ[A047231(A008621(n)²)]`
-/

namespace A138996.P4444312809389847955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (A008621 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + (f1 (n + 1) - f1 n)

end

end A138996.P4444312809389847955

namespace A138996

/-- `A008621(n)+Δ[A047231(A008621(n)²)]` -/
def P4444312809389847955.Spec : Prop :=
  ∀ n, P4444312809389847955.a n = A138996 (n + 1)

end A138996

/-! ## A138996.P16315363079975735858

`A008621(n)+Δ[A047259(A008621(n)²)]`
-/

namespace A138996.P16315363079975735858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (A008621 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + (f1 (n + 1) - f1 n)

end

end A138996.P16315363079975735858

namespace A138996

/-- `A008621(n)+Δ[A047259(A008621(n)²)]` -/
def P16315363079975735858.Spec : Prop :=
  ∀ n, P16315363079975735858.a n = A138996 (n + 1)

end A138996

/-!
# A138997: First differences of Frobenius numbers for 6 successive numbers A138986.

The programs for A138997, the canonical program `A138997.P16214330282243441707` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138997 has offset 1).

The definition of A138997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138997.P16214330282243441707

`2*a(n-5)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=8, a(5)=2, a(6)=2, a(7)=2, a(8)=2, a(9)=14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138997

/-- `2*a(n-5)-a(n-10)` -/
def P16214330282243441707.Spec : Prop :=
  ∀ n, P16214330282243441707.a n = A138997 (n + 1)

theorem P16214330282243441707.correct : P16214330282243441707.Spec := by
  intro n
  simp only [A138997, Nat.add_sub_cancel]

end A138997

/-! ## A138997.P12632700381553686197

`A138986(n+2)-A138986(n+1)`
-/

namespace A138997.P12632700381553686197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138986 (n + 2) - A138986 (n + 1)

end

end A138997.P12632700381553686197

namespace A138997

/-- `A138986(n+2)-A138986(n+1)` -/
def P12632700381553686197.Spec : Prop :=
  ∀ n, P12632700381553686197.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P551501636311716995

`Δ[(n+2)*floor(n/5)]+1`
-/

namespace A138997.P551501636311716995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A138997.P551501636311716995

namespace A138997

/-- `Δ[(n+2)*floor(n/5)]+1` -/
def P551501636311716995.Spec : Prop :=
  ∀ n, P551501636311716995.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P762794551735017681

`Δ[A138986(n+1)]`
-/

namespace A138997.P762794551735017681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138997.P762794551735017681

namespace A138997

/-- `Δ[A138986(n+1)]` -/
def P762794551735017681.Spec : Prop :=
  ∀ n, P762794551735017681.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P16498242457858174002

`A001281(A002266(n+1)+A002266(n)+2)`
-/

namespace A138997.P16498242457858174002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002266 (n + 1) + (A002266 n + 2)).toNat

end

end A138997.P16498242457858174002

namespace A138997

/-- `A001281(A002266(n+1)+A002266(n)+2)` -/
def P16498242457858174002.Spec : Prop :=
  ∀ n, P16498242457858174002.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P18365391261622977772

`Δ[A008616(2*n)*(n+2)]`
-/

namespace A138997.P18365391261622977772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n) * (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138997.P18365391261622977772

namespace A138997

/-- `Δ[A008616(2*n)*(n+2)]` -/
def P18365391261622977772.Spec : Prop :=
  ∀ n, P18365391261622977772.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P14908197164577468875

`A001281(A072154(n+1)-(2*n+1))`
-/

namespace A138997.P14908197164577468875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A072154 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A138997.P14908197164577468875

namespace A138997

/-- `A001281(A072154(n+1)-(2*n+1))` -/
def P14908197164577468875.Spec : Prop :=
  ∀ n, P14908197164577468875.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P17704147529285890468

`A001057(Δ[(n+2)*A130497(n)])`
-/

namespace A138997.P17704147529285890468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A130497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n).toNat

end

end A138997.P17704147529285890468

namespace A138997

/-- `A001057(Δ[(n+2)*A130497(n)])` -/
def P17704147529285890468.Spec : Prop :=
  ∀ n, P17704147529285890468.a n = A138997 (n + 1)

end A138997

/-! ## A138997.P16355674888091768239

`A003602(Δ[(n+2)*A130497(n)])`
-/

namespace A138997.P16355674888091768239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A130497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n).toNat

end

end A138997.P16355674888091768239

namespace A138997

/-- `A003602(Δ[(n+2)*A130497(n)])` -/
def P16355674888091768239.Spec : Prop :=
  ∀ n, P16355674888091768239.a n = A138997 (n + 1)

end A138997

/-!
# A138998: 9^n mod 2^n.

The programs for A138998, the canonical program `A138998.P6481066188428205423` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138998 has offset 0).

The definition of A138998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%(2^n)` (program `A138998.P6481066188428205423`, by `A138998.P6481066188428205423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138998.P6481066188428205423

`(9^n)%(2^n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138998

/-- `(9^n)%(2^n)` -/
def P6481066188428205423.Spec : Prop :=
  ∀ n, (P6481066188428205423.a n : ℤ) = A138998 n

theorem P6481066188428205423.correct : P6481066188428205423.Spec := by
  intro n
  simp only [A138998]

end A138998

/-! ## A138998.P16257276625411084478

`and(A002380(n)², A000225(n))`
-/

namespace A138998.P16257276625411084478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002380 n ^ 2) (A000225 n)

end

end A138998.P16257276625411084478

namespace A138998

/-- `and(A002380(n)², A000225(n))` -/
def P16257276625411084478.Spec : Prop :=
  ∀ n, P16257276625411084478.a n = A138998 n

end A138998

/-! ## A138998.P16715115184313657562

`and(A000079(n)-1, A002380(n)²)`
-/

namespace A138998.P16715115184313657562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n - 1) (A002380 n ^ 2)

end

end A138998.P16715115184313657562

namespace A138998

/-- `and(A000079(n)-1, A002380(n)²)` -/
def P16715115184313657562.Spec : Prop :=
  ∀ n, P16715115184313657562.a n = A138998 n

end A138998

/-! ## A138998.P2306020048061621473

`and(A000225(n), A139729(n))`
-/

namespace A138998.P2306020048061621473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A139729 n)

end

end A138998.P2306020048061621473

namespace A138998

/-- `and(A000225(n), A139729(n))` -/
def P2306020048061621473.Spec : Prop :=
  ∀ n, P2306020048061621473.a n = A138998 n

end A138998

/-! ## A138998.P12580023376540582589

`and(A036563(n), A139729(n))`
-/

namespace A138998.P12580023376540582589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036563 n) (A139729 n)

end

end A138998.P12580023376540582589

namespace A138998

/-- `and(A036563(n), A139729(n))` -/
def P12580023376540582589.Spec : Prop :=
  ∀ n, P12580023376540582589.a n = A138998 n

end A138998

/-! ## A138998.P12337794647793863773

`and(A099393(n), A139729(n))`
-/

namespace A138998.P12337794647793863773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099393 n) (A139729 n)

end

end A138998.P12337794647793863773

namespace A138998

/-- `and(A099393(n), A139729(n))` -/
def P12337794647793863773.Spec : Prop :=
  ∀ n, P12337794647793863773.a n = A138998 n

end A138998

/-! ## A138998.P891929719960720224

`and(A139729(n), A166956(n))`
-/

namespace A138998.P891929719960720224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139729 n) (A166956 n)

end

end A138998.P891929719960720224

namespace A138998

/-- `and(A139729(n), A166956(n))` -/
def P891929719960720224.Spec : Prop :=
  ∀ n, P891929719960720224.a n = A138998 n

end A138998

/-! ## A138998.P9335843817750639610

`and(A139729(n), A168616(n))`
-/

namespace A138998.P9335843817750639610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139729 n) (A168616 n)

end

end A138998.P9335843817750639610

namespace A138998

/-- `and(A139729(n), A168616(n))` -/
def P9335843817750639610.Spec : Prop :=
  ∀ n, P9335843817750639610.a n = A138998 n

end A138998

/-! ## A138998.P2751005628312949018

`and(A139729(n), A255047(n))`
-/

namespace A138998.P2751005628312949018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139729 n) (A255047 n)

end

end A138998.P2751005628312949018

namespace A138998

/-- `and(A139729(n), A255047(n))` -/
def P2751005628312949018.Spec : Prop :=
  ∀ n, P2751005628312949018.a n = A138998 n

end A138998

/-! ## A138998.P4880434486119719227

`and(A000225(n), A002380(2*n))`
-/

namespace A138998.P4880434486119719227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A002380 (2 * n))

end

end A138998.P4880434486119719227

namespace A138998

/-- `and(A000225(n), A002380(2*n))` -/
def P4880434486119719227.Spec : Prop :=
  ∀ n, P4880434486119719227.a n = A138998 n

end A138998

/-! ## A138998.P218836139441761742

`and(A000079(n)-1, A002380(n+n))`
-/

namespace A138998.P218836139441761742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n - 1) (A002380 (n + n))

end

end A138998.P218836139441761742

namespace A138998

/-- `and(A000079(n)-1, A002380(n+n))` -/
def P218836139441761742.Spec : Prop :=
  ∀ n, P218836139441761742.a n = A138998 n

end A138998

/-! ## A138998.P16423920177357334971

`and(A092431(n+1), A139729(n))`
-/

namespace A138998.P16423920177357334971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092431 (n + 1)) (A139729 n)

end

end A138998.P16423920177357334971

namespace A138998

/-- `and(A092431(n+1), A139729(n))` -/
def P16423920177357334971.Spec : Prop :=
  ∀ n, P16423920177357334971.a n = A138998 n

end A138998

/-! ## A138998.P17689241382458083593

`and(A056577(n)², A000225(n))`
-/

namespace A138998.P17689241382458083593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 n ^ 2) (A000225 n)

end

end A138998.P17689241382458083593

namespace A138998

/-- `and(A056577(n)², A000225(n))` -/
def P17689241382458083593.Spec : Prop :=
  ∀ n, P17689241382458083593.a n = A138998 n

end A138998

/-! ## A138998.P7187437319797034702

`and(A056577(n)², A168616(n))`
-/

namespace A138998.P7187437319797034702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 n ^ 2) (A168616 n)

end

end A138998.P7187437319797034702

namespace A138998

/-- `and(A056577(n)², A168616(n))` -/
def P7187437319797034702.Spec : Prop :=
  ∀ n, P7187437319797034702.a n = A138998 n

end A138998

/-! ## A138998.P2161797560298300545

`and(A056577(n)², A255047(n))`
-/

namespace A138998.P2161797560298300545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 n ^ 2) (A255047 n)

end

end A138998.P2161797560298300545

namespace A138998

/-- `and(A056577(n)², A255047(n))` -/
def P2161797560298300545.Spec : Prop :=
  ∀ n, P2161797560298300545.a n = A138998 n

end A138998

/-! ## A138998.P8197249861429230023

`and(A000225(n), A056577(2*n))`
-/

namespace A138998.P8197249861429230023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056577 (2 * n))

end

end A138998.P8197249861429230023

namespace A138998

/-- `and(A000225(n), A056577(2*n))` -/
def P8197249861429230023.Spec : Prop :=
  ∀ n, P8197249861429230023.a n = A138998 n

end A138998

/-! ## A138998.P3391603858416040575

`and(A056577(2*n), A255047(n))`
-/

namespace A138998.P3391603858416040575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 (2 * n)) (A255047 n)

end

end A138998.P3391603858416040575

namespace A138998

/-- `and(A056577(2*n), A255047(n))` -/
def P3391603858416040575.Spec : Prop :=
  ∀ n, P3391603858416040575.a n = A138998 n

end A138998

/-!
# A138999: First differences of Frobenius numbers for 8 successive numbers A138988.

The programs for A138999, the canonical program `A138999.P3567067932637558928` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138999 has offset 1).

The definition of A138999 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138988, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138999.P3567067932637558928

`A138988(n+2)-A138988(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138999

/-- `A138988(n+2)-A138988(n+1)` -/
def P3567067932637558928.Spec : Prop :=
  ∀ n, P3567067932637558928.a n = A138999 (n + 1)

theorem P3567067932637558928.correct : P3567067932637558928.Spec := by
  intro n
  simp only [A138999, Nat.add_sub_cancel]

end A138999

/-! ## A138999.P1381772986928454622

`Δ[(n+2)*ceil((n+1)/7)]`
-/

namespace A138999.P1381772986928454622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(n + 1 : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138999.P1381772986928454622

namespace A138999

/-- `Δ[(n+2)*ceil((n+1)/7)]` -/
def P1381772986928454622.Spec : Prop :=
  ∀ n, P1381772986928454622.a n = A138999 (n + 1)

end A138999

/-! ## A138999.P10346052385918657109

`abs(Δ[A138988(n+1)])`
-/

namespace A138999.P10346052385918657109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138999.P10346052385918657109

namespace A138999

/-- `abs(Δ[A138988(n+1)])` -/
def P10346052385918657109.Spec : Prop :=
  ∀ n, P10346052385918657109.a n = A138999 (n + 1)

end A138999

/-! ## A138999.P12661654845816413276

`A000027(Δ[A138988(n+1)])`
-/

namespace A138999.P12661654845816413276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A138999.P12661654845816413276

namespace A138999

/-- `A000027(Δ[A138988(n+1)])` -/
def P12661654845816413276.Spec : Prop :=
  ∀ n, P12661654845816413276.a n = A138999 (n + 1)

end A138999

/-! ## A138999.P12057667552557063495

`Δ[A138988(n+1)]%A004767(n)`
-/

namespace A138999.P12057667552557063495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004767 n)

end

end A138999.P12057667552557063495

namespace A138999

/-- `Δ[A138988(n+1)]%A004767(n)` -/
def P12057667552557063495.Spec : Prop :=
  ∀ n, P12057667552557063495.a n = A138999 (n + 1)

end A138999

/-! ## A138999.P10086500621907092850

`or(Δ[A138988(n+1)], A000007(n))`
-/

namespace A138999.P10086500621907092850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A000007 n)

end

end A138999.P10086500621907092850

namespace A138999

/-- `or(Δ[A138988(n+1)], A000007(n))` -/
def P10086500621907092850.Spec : Prop :=
  ∀ n, P10086500621907092850.a n = A138999 (n + 1)

end A138999

/-! ## A138999.P11929939984400582365

`A000007(n+1)+Δ[A138988(n+1)]`
-/

namespace A138999.P11929939984400582365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A138999.P11929939984400582365

namespace A138999

/-- `A000007(n+1)+Δ[A138988(n+1)]` -/
def P11929939984400582365.Spec : Prop :=
  ∀ n, P11929939984400582365.a n = A138999 (n + 1)

theorem P11929939984400582365.correct : P11929939984400582365.Spec := by
  intro n
  simp only [A138999, Nat.add_sub_cancel, A138999.P11929939984400582365.f1, A138999.P11929939984400582365.a, A138999.P3567067932637558928.a, A000007, A000007.P6599383543502402472.a, A138988, A138988.P3477283103971470026.f2, A138988.P3477283103971470026.f1, A138988.P3477283103971470026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138999

/-! ## A138999.P12578546841436254872

`A007318(∑[n])*Δ[A138988(n+1)]`
-/

namespace A138999.P12578546841436254872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A138999.P12578546841436254872

namespace A138999

/-- `A007318(∑[n])*Δ[A138988(n+1)]` -/
def P12578546841436254872.Spec : Prop :=
  ∀ n, P12578546841436254872.a n = A138999 (n + 1)

end A138999

