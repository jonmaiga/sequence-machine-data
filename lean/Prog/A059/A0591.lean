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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A059100: a(n) = n^2 + 2.

The programs for A059100, the canonical program `A059100.P4969484960020007252` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059100 has offset 0).

The definition of A059100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2` (program `A059100.P4969484960020007252`, by `A059100.P4969484960020007252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059100.P4969484960020007252

`n²+2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059100

/-- `n²+2` -/
def P4969484960020007252.Spec : Prop :=
  ∀ n, (P4969484960020007252.a n : ℤ) = A059100 n

theorem P4969484960020007252.correct : P4969484960020007252.Spec := by
  intro n
  simp only [A059100]

end A059100

/-!
# A059103: Number of simple, connected, unit-distance graphs on n points realizable in the plane with straight edges all of the same length; lines are permitted to cross.

The programs for A059103, there is no canonical definition to state claims against.
-/

/-! ## A059103.P9208375364748602503

`A120450(A006013(n)+2)`
-/

namespace A059103.P9208375364748602503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120450 (A006013 n + 2).toNat

end

end A059103.P9208375364748602503

/-! ## A059103.P851839828872787206

`∑{d}[A163203(n), A003056(#)]`
-/

namespace A059103.P851839828872787206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003056 d

end

end A059103.P851839828872787206

/-!
# A059104: Number of Bieberbach groups in dimension n: torsion-free crystallographic groups.

The programs for A059104, there is no canonical definition to state claims against.
-/

/-! ## A059104.P104143745250807730

`A101513(A235701(∑[n]))`
-/

namespace A059104.P104143745250807730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (A235701 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A059104.P104143745250807730

/-!
# A059105: Number of n-dimensional torsion-free crystallographic groups with trivial center.

The programs for A059105, there is no canonical definition to state claims against.
-/

/-! ## A059105.P3518611305255681799

`A070889(ceil(2^(n-1)))-A110877(n)`
-/

namespace A059105.P3518611305255681799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A110877 n

end

end A059105.P3518611305255681799

/-!
# A059106: Number of solutions to Nickerson variant of Langford (or Langford-Skolem) problem.

The programs for A059106, there is no canonical definition to state claims against.
-/

/-! ## A059106.P10728588887115262758

`ceil(A004075(n+1)/2)`
-/

namespace A059106.P10728588887115262758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004075 (n + 1) : ℚ) / 2⌉

end

end A059106.P10728588887115262758

/-! ## A059106.P1661179283451404980

`(A004075(n+1)+A000007(n))/2`
-/

namespace A059106.P1661179283451404980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004075 (n + 1) + A000007 n : ℚ) / 2

end

end A059106.P1661179283451404980

/-! ## A059106.P11896833656051821296

`A004075(n+1)/A020639(A004277(n))`
-/

namespace A059106.P11896833656051821296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004075 (n + 1) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A059106.P11896833656051821296

/-! ## A059106.P16668782489446800637

`A004075(n+1)/A020639(A001223(n+1))`
-/

namespace A059106.P16668782489446800637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004075 (n + 1) : ℚ) / (A020639 (A001223 (n + 1)).toNat : ℚ)

end

end A059106.P16668782489446800637

/-! ## A059106.P3725174486423944717

`round(A004075(n+1)/A001222(2*A000040(n+2)))`
-/

namespace A059106.P3725174486423944717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004075 (n + 1) : ℚ) / (A001222 (2 * A000040 (n + 2)).toNat : ℚ))

end

end A059106.P3725174486423944717

/-!
# A059108: Number of solutions to variant of triples version of Langford (or Langford-Skolem) problem.

The programs for A059108, there is no canonical definition to state claims against.
-/

/-! ## A059108.P10643481648381391301

`ceil(A285527(n)/2)`
-/

namespace A059108.P10643481648381391301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285527 n : ℚ) / 2⌉

end

end A059108.P10643481648381391301

/-! ## A059108.P8138114777880713763

`round(A285527(round(sqrt(n²+1)))/2)`
-/

namespace A059108.P8138114777880713763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285527 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2)

end

end A059108.P8138114777880713763

/-! ## A059108.P11589072885031516630

`A285527(n)/A043529(n)`
-/

namespace A059108.P11589072885031516630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285527 n : ℚ) / (A043529 n : ℚ)

end

end A059108.P11589072885031516630

/-! ## A059108.P4087017566114443927

`A285527(n)/A043558(n)`
-/

namespace A059108.P4087017566114443927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285527 n : ℚ) / (A043558 n : ℚ)

end

end A059108.P4087017566114443927

/-! ## A059108.P6961817986401959852

`A285527(n)/A043559(n)`
-/

namespace A059108.P6961817986401959852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285527 n : ℚ) / (A043559 n : ℚ)

end

end A059108.P6961817986401959852

/-!
# A059109: Numbers m such that m*phi(m)-1 is prime, where phi is the Euler function (A000010).

The programs for A059109, there is no canonical definition to state claims against.
-/

/-! ## A059109.P5640531778074402188

`lt[0, A101264(A109607(n))]`
-/

namespace A059109.P5640531778074402188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059109.P5640531778074402188

/-! ## A059109.P258012562616782594

`eq[A000007(n)+1, A101264(A109607(n))]`
-/

namespace A059109.P258012562616782594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059109.P258012562616782594

/-! ## A059109.P5712255524673136022

`eq[1, A101264(A109607(n))+A000038(n)]`
-/

namespace A059109.P5712255524673136022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat + A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059109.P5712255524673136022

/-! ## A059109.P7603436842890292672

`eq[A139251(n)%2+1, A101264(A109607(n))]`
-/

namespace A059109.P7603436842890292672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139251 n) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059109.P7603436842890292672

/-! ## A059109.P3372872818129597888

`eq[A023693(n+1)%2+1, A101264(A109607(n))]`
-/

namespace A059109.P3372872818129597888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023693 (n + 1)) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059109.P3372872818129597888

/-! ## A059109.P9016638332959347214

`eq[A318465(n+1)%2+1, A101264(A109607(n))]`
-/

namespace A059109.P9016638332959347214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318465 (n + 1)) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059109.P9016638332959347214

/-! ## A059109.P7774619017576636185

`eq[(2*A356624(n))%2+1, A101264(A109607(n))]`
-/

namespace A059109.P7774619017576636185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A356624 n) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A109607 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059109.P7774619017576636185

/-! ## A059109.P12579438626301412454

`record[A056926(A078893(n+2))]`
-/

namespace A059109.P12579438626301412454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A078893 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059109.P12579438626301412454

/-! ## A059109.P9883189406597698967

`A327172(A046078(n+1)+1)`
-/

namespace A059109.P9883189406597698967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (A046078 (n + 1) + 1).toNat

end

end A059109.P9883189406597698967

/-! ## A059109.P6362421932457861275

`A327172(p?[A046151(n+1)]+1)`
-/

namespace A059109.P6362421932457861275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A059109.P6362421932457861275

/-!
# A059110: Triangle T = A007318*A271703; T(n,m)= Sum_{i=0..n} L'(n,i)*binomial(i,m), m=0..n.

The programs for A059110, there is no canonical definition to state claims against.
-/

/-! ## A059110.P9862263807323396160

`A007318(n)*A293985(A061579(n))`
-/

namespace A059110.P9862263807323396160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A293985 (A061579 n).toNat

end

end A059110.P9862263807323396160

/-! ## A059110.P17268709133883764722

`A059114(n)/A233543(n)`
-/

namespace A059110.P17268709133883764722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A233543 n : ℚ)

end

end A059110.P17268709133883764722

/-! ## A059110.P8272207452332182167

`A059114(n)/A002262(n)!`
-/

namespace A059110.P8272207452332182167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A059110.P8272207452332182167

/-! ## A059110.P11265173108286737407

`A059114(n)/A144328(n+1)!`
-/

namespace A059110.P11265173108286737407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A059110.P11265173108286737407

/-! ## A059110.P12118289611263438794

`A059114(n)/A021009(A112367(n))`
-/

namespace A059110.P12118289611263438794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A021009 (A112367 n).toNat : ℚ)

end

end A059110.P12118289611263438794

/-! ## A059110.P4063033402712811548

`A059114(n)/A104150(A002260(n+1))`
-/

namespace A059110.P4063033402712811548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A104150 (A002260 (n + 1)).toNat : ℚ)

end

end A059110.P4063033402712811548

/-! ## A059110.P1504074041605764955

`A059114(n)/A081123(A158405(n+1))`
-/

namespace A059110.P1504074041605764955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A081123 (A158405 (n + 1)).toNat : ℚ)

end

end A059110.P1504074041605764955

/-! ## A059110.P18024803530607240296

`A008459(n)/A144084(n)*A059114(n)`
-/

namespace A059110.P18024803530607240296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℚ) / (A144084 n : ℚ) * (A059114 n : ℚ)

end

end A059110.P18024803530607240296

/-! ## A059110.P11795882998122667865

`A059114(n)/A326659(n)*A271705(n)`
-/

namespace A059110.P11795882998122667865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A326659 n : ℚ) * (A271705 n : ℚ)

end

end A059110.P11795882998122667865

/-! ## A059110.P4736761667998944140

`A059114(n)/A130675(A059268(n))`
-/

namespace A059110.P4736761667998944140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 n : ℚ) / (A130675 (A059268 n).toNat : ℚ)

end

end A059110.P4736761667998944140

/-!
# A059111: a(n) = floor(prime(n) - n*log(n)).

The programs for A059111, the canonical program `A059111.P17113221363624731460` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059111 has offset 1).

The definition of A059111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059111.P10689130045917835171

`floor(A000040(n+1)-(n+1)*log(n+1))`
-/

namespace A059111.P10689130045917835171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) - (n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A059111.P10689130045917835171

namespace A059111

/-- `floor(A000040(n+1)-(n+1)*log(n+1))` -/
def P10689130045917835171.Spec : Prop :=
  ∀ n, P10689130045917835171.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P7694152654947167016

`A006093(n+1)+1-ceil((n+1)*log(n+1))`
-/

namespace A059111.P7694152654947167016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1 - ⌈(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌉

end

end A059111.P7694152654947167016

namespace A059111

/-- `A006093(n+1)+1-ceil((n+1)*log(n+1))` -/
def P7694152654947167016.Spec : Prop :=
  ∀ n, P7694152654947167016.a n = A059111 (n + 1)

theorem P7694152654947167016.correct : P7694152654947167016.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P7694152654947167016.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A050502, A050502.P8059689843118801007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P5506762742601763881

`A064658(n+1)+A057428(n)`
-/

namespace A059111.P5506762742601763881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064658 (n + 1) + A057428 n

end

end A059111.P5506762742601763881

namespace A059111

/-- `A064658(n+1)+A057428(n)` -/
def P5506762742601763881.Spec : Prop :=
  ∀ n, P5506762742601763881.a n = A059111 (n + 1)

theorem P5506762742601763881.correct : P5506762742601763881.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P5506762742601763881.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A057428, A057428.P2999489532230392221.a, A064658, A064658.P3874137061394963063.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P9379938239977514296

`A064658(n+1)-A057427(n)`
-/

namespace A059111.P9379938239977514296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064658 (n + 1) - A057427 n

end

end A059111.P9379938239977514296

namespace A059111

/-- `A064658(n+1)-A057427(n)` -/
def P9379938239977514296.Spec : Prop :=
  ∀ n, P9379938239977514296.a n = A059111 (n + 1)

theorem P9379938239977514296.correct : P9379938239977514296.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P9379938239977514296.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A057427, A057427.P3058147525557661423.a, A064658, A064658.P3874137061394963063.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P11078231152807898805

`Δ[A007504(n)]-A050502(n+1)`
-/

namespace A059111.P11078231152807898805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A050502 (n + 1)

end

end A059111.P11078231152807898805

namespace A059111

/-- `Δ[A007504(n)]-A050502(n+1)` -/
def P11078231152807898805.Spec : Prop :=
  ∀ n, P11078231152807898805.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P17113221363624731460

`A000040(n+1)-A050502(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059111

/-- `A000040(n+1)-A050502(n+1)` -/
def P17113221363624731460.Spec : Prop :=
  ∀ n, P17113221363624731460.a n = A059111 (n + 1)

theorem P17113221363624731460.correct : P17113221363624731460.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel]

end A059111

/-! ## A059111.P12623681653431018446

`A250622(n+1)-A250623(n+1)`
-/

namespace A059111.P12623681653431018446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) - A250623 (n + 1)

end

end A059111.P12623681653431018446

namespace A059111

/-- `A250622(n+1)-A250623(n+1)` -/
def P12623681653431018446.Spec : Prop :=
  ∀ n, P12623681653431018446.a n = A059111 (n + 1)

theorem P12623681653431018446.correct : P12623681653431018446.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P12623681653431018446.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A250622, A250622.P6101694569032814672.a, A250623, A250623.P3707548778749929836.a, A250621, A250621.P17073922274883011414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P7765165358099689907

`A064658(n+1)-and(1, A000040(n+1))`
-/

namespace A059111.P7765165358099689907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064658 (n + 1) - Int.land 1 (A000040 (n + 1))

end

end A059111.P7765165358099689907

namespace A059111

/-- `A064658(n+1)-and(1, A000040(n+1))` -/
def P7765165358099689907.Spec : Prop :=
  ∀ n, P7765165358099689907.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P16229328748786763363

`A000040(A000027(n+1))-ceil((n+1)*log(n+1))`
-/

namespace A059111.P16229328748786763363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000027 (n + 1)).toNat - ⌈(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌉

end

end A059111.P16229328748786763363

namespace A059111

/-- `A000040(A000027(n+1))-ceil((n+1)*log(n+1))` -/
def P16229328748786763363.Spec : Prop :=
  ∀ n, P16229328748786763363.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P6536097045067019062

`A000040(n+1)+A057428(n)-A050504(n+1)`
-/

namespace A059111.P6536097045067019062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A057428 n - A050504 (n + 1))

end

end A059111.P6536097045067019062

namespace A059111

/-- `A000040(n+1)+A057428(n)-A050504(n+1)` -/
def P6536097045067019062.Spec : Prop :=
  ∀ n, P6536097045067019062.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P9430916326386479284

`A050503(n+1)+A064659(n+1)-A050502(n+1)`
-/

namespace A059111.P9430916326386479284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050503 (n + 1) + (A064659 (n + 1) - A050502 (n + 1))

end

end A059111.P9430916326386479284

namespace A059111

/-- `A050503(n+1)+A064659(n+1)-A050502(n+1)` -/
def P9430916326386479284.Spec : Prop :=
  ∀ n, P9430916326386479284.a n = A059111 (n + 1)

theorem P9430916326386479284.correct : P9430916326386479284.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P9430916326386479284.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A050503, A050503.P17265030542435346836.a, A064659, A064659.P6472487142109502257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P10451442877902861250

`A050504(n+1)+A064658(n+1)-A050502(n+1)`
-/

namespace A059111.P10451442877902861250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + (A064658 (n + 1) - A050502 (n + 1))

end

end A059111.P10451442877902861250

namespace A059111

/-- `A050504(n+1)+A064658(n+1)-A050502(n+1)` -/
def P10451442877902861250.Spec : Prop :=
  ∀ n, P10451442877902861250.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P9490446606182766737

`A250621(n+1)-(A250623(n+1)+A000040(n+1))`
-/

namespace A059111.P9490446606182766737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A250623 (n + 1) + A000040 (n + 1))

end

end A059111.P9490446606182766737

namespace A059111

/-- `A250621(n+1)-(A250623(n+1)+A000040(n+1))` -/
def P9490446606182766737.Spec : Prop :=
  ∀ n, P9490446606182766737.a n = A059111 (n + 1)

theorem P9490446606182766737.correct : P9490446606182766737.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P9490446606182766737.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A250621, A250621.P17073922274883011414.a, A250623, A250623.P3707548778749929836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P12023360923267952338

`A250621(n+1)-(A250622(n+1)+A050502(n+1))`
-/

namespace A059111.P12023360923267952338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A250622 (n + 1) + A050502 (n + 1))

end

end A059111.P12023360923267952338

namespace A059111

/-- `A250621(n+1)-(A250622(n+1)+A050502(n+1))` -/
def P12023360923267952338.Spec : Prop :=
  ∀ n, P12023360923267952338.a n = A059111 (n + 1)

theorem P12023360923267952338.correct : P12023360923267952338.Spec := by
  intro n
  simp only [A059111, Nat.add_sub_cancel, A059111.P12023360923267952338.a, A059111.P17113221363624731460.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A250621, A250621.P17073922274883011414.a, A250622, A250622.P6101694569032814672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059111

/-! ## A059111.P3605194011040277067

`A000040(n+1)-(A305079(A020639(n+1))+A050504(n+1))`
-/

namespace A059111.P3605194011040277067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A305079 (A020639 (n + 1)).toNat + A050504 (n + 1))

end

end A059111.P3605194011040277067

namespace A059111

/-- `A000040(n+1)-(A305079(A020639(n+1))+A050504(n+1))` -/
def P3605194011040277067.Spec : Prop :=
  ∀ n, P3605194011040277067.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P3420629272819614626

`floor(A008578(n+2)-(n+1)*log(n+1))`
-/

namespace A059111.P3420629272819614626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 2) : ℝ) - (n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A059111.P3420629272819614626

namespace A059111

/-- `floor(A008578(n+2)-(n+1)*log(n+1))` -/
def P3420629272819614626.Spec : Prop :=
  ∀ n, P3420629272819614626.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P7683035092497948609

`A008578(n+2)-A050502(n+1)`
-/

namespace A059111.P7683035092497948609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A050502 (n + 1)

end

end A059111.P7683035092497948609

namespace A059111

/-- `A008578(n+2)-A050502(n+1)` -/
def P7683035092497948609.Spec : Prop :=
  ∀ n, P7683035092497948609.a n = A059111 (n + 1)

end A059111

/-! ## A059111.P14961163912735344003

`A089723(A077546(n+2)+1)+A064658(n+1)-2`
-/

namespace A059111.P14961163912735344003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A077546 (n + 2) + 1).toNat + (A064658 (n + 1) - 2)

end

end A059111.P14961163912735344003

namespace A059111

/-- `A089723(A077546(n+2)+1)+A064658(n+1)-2` -/
def P14961163912735344003.Spec : Prop :=
  ∀ n, P14961163912735344003.a n = A059111 (n + 1)

end A059111

/-!
# A059112: a(n) = floor(prime(n) - n*log(n) - n*log(log(n)) + n).

The programs for A059112, there is no canonical definition to state claims against.
-/

/-! ## A059112.P10822956867567486534

`A096830(n+1)+A044944(A161596(n+1))`
-/

namespace A059112.P10822956867567486534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096830 (n + 1) + A044944 (A161596 (n + 1)).toNat

end

end A059112.P10822956867567486534

/-! ## A059112.P16427201416236280602

`A353861(A106600(n+1)*A353861(3*(n+1)))`
-/

namespace A059112.P16427201416236280602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (A106600 (n + 1) * A353861 (3 * (n + 1))).toNat

end

end A059112.P16427201416236280602

/-!
# A059114: Triangle T(n,m)= Sum_{i=0..n} L'(n,i)*Product_{j=1..m} (i-j+1), read by rows.

The programs for A059114, there is no canonical definition to state claims against.
-/

/-! ## A059114.P10548426976194104846

`A059110(n)*A233543(n)`
-/

namespace A059114.P10548426976194104846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 n * A233543 n

end

end A059114.P10548426976194104846

/-! ## A059114.P1662602176824899484

`A002262(n)!*A059110(n)`
-/

namespace A059114.P1662602176824899484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A059110 n

end

end A059114.P1662602176824899484

/-! ## A059114.P11461376562735244483

`A144328(n+1)!*A059110(n)`
-/

namespace A059114.P11461376562735244483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A059110 n

end

end A059114.P11461376562735244483

/-! ## A059114.P4382732167141482089

`A021009(A112367(n))*A059110(n)`
-/

namespace A059114.P4382732167141482089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A059110 n

end

end A059114.P4382732167141482089

/-! ## A059114.P2988657678322226258

`A059110(n)*A119502(A061579(n))`
-/

namespace A059114.P2988657678322226258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 n * A119502 (A061579 n).toNat

end

end A059114.P2988657678322226258

/-! ## A059114.P18125192253890589051

`A008279(n)*A293985(A061579(n))`
-/

namespace A059114.P18125192253890589051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A293985 (A061579 n).toNat

end

end A059114.P18125192253890589051

/-! ## A059114.P3885981949942761035

`A059110(n)*A081123(A158405(n+1))`
-/

namespace A059114.P3885981949942761035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 n * A081123 (A158405 (n + 1)).toNat

end

end A059114.P3885981949942761035

/-! ## A059114.P18277083352593110898

`A059110(n)/A008459(n)*A144084(n)`
-/

namespace A059114.P18277083352593110898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 n : ℚ) / (A008459 n : ℚ) * (A144084 n : ℚ)

end

end A059114.P18277083352593110898

/-! ## A059114.P12126026299629561250

`A059110(n)/A271705(n)*A326659(n)`
-/

namespace A059114.P12126026299629561250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 n : ℚ) / (A271705 n : ℚ) * (A326659 n : ℚ)

end

end A059114.P12126026299629561250

/-! ## A059114.P14105753116226440919

`A059110(n)*A112624(A059268(n))`
-/

namespace A059114.P14105753116226440919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 n * A112624 (A059268 n).toNat

end

end A059114.P14105753116226440919

/-!
# A059115: Expansion of e.g.f.: ((1-x)/(1-2*x))*exp(x/(1-x)).

The programs for A059115, there is no canonical definition to state claims against.
-/

/-! ## A059115.P5881150638354918230

`A288268(n)+n*2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A059115.P5881150638354918230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A288268 n + (n : ℤ) * (2 * a (n - 1))

end

end A059115.P5881150638354918230

/-! ## A059115.P17313447450452841256

`(A331689(n)+A000262(n))/2`
-/

namespace A059115.P17313447450452841256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331689 n + A000262 n : ℚ) / 2

end

end A059115.P17313447450452841256

/-!
# A059116: The sequence lambda(4,n), where lambda is defined in A055203. Number of ways of placing n identifiable positive intervals with a total of exactly four starting and/or finishing points.

The programs for A059116, the canonical program `A059116.P7136130109968121285` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059116 has offset 0).

The definition of A059116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059116.P7136130109968121285

`10*a(n-1)-27*a(n-2)+18*a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=114`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059116

/-- `10*a(n-1)-27*a(n-2)+18*a(n-3)` -/
def P7136130109968121285.Spec : Prop :=
  ∀ n, P7136130109968121285.a n = A059116 n

theorem P7136130109968121285.correct : P7136130109968121285.Spec := by
  intro n
  simp only [A059116]

end A059116

/-! ## A059116.P14032578176106348137

`A059517(n)-3*xor(1, ceil(3^(n-1)))`
-/

namespace A059116.P14032578176106348137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059517 n - 3 * Int.xor 1 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A059116.P14032578176106348137

namespace A059116

/-- `A059517(n)-3*xor(1, ceil(3^(n-1)))` -/
def P14032578176106348137.Spec : Prop :=
  ∀ n, P14032578176106348137.a n = A059116 n

end A059116

/-! ## A059116.P15906309434002608175

`A059517(n)-A058809(n)`
-/

namespace A059116.P15906309434002608175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059517 n - A058809 n

end

end A059116.P15906309434002608175

namespace A059116

/-- `A059517(n)-A058809(n)` -/
def P15906309434002608175.Spec : Prop :=
  ∀ n, P15906309434002608175.a n = A059116 n

end A059116

/-! ## A059116.P10403225156862089895

`A059517(n)-3*(A133494(n)-1)`
-/

namespace A059116.P10403225156862089895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059517 n - 3 * (A133494 n - 1)

end

end A059116.P10403225156862089895

namespace A059116

/-- `A059517(n)-3*(A133494(n)-1)` -/
def P10403225156862089895.Spec : Prop :=
  ∀ n, P10403225156862089895.a n = A059116 n

end A059116

/-! ## A059116.P12638199452988167476

`A059517(n)-lcm(3-3^n, A001221(n+1))`
-/

namespace A059116.P12638199452988167476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059517 n - (Int.lcm (3 - (3 ^ n : ℤ)) (A001221 (n + 1)) : ℤ)

end

end A059116.P12638199452988167476

namespace A059116

/-- `A059517(n)-lcm(3-3^n, A001221(n+1))` -/
def P12638199452988167476.Spec : Prop :=
  ∀ n, P12638199452988167476.a n = A059116 n

end A059116

/-! ## A059116.P8555004353159205639

`(A155612(n)+A155611(n))%A155605(n)-(3^n-3)%(3^n)`
-/

namespace A059116.P8555004353159205639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155612 n + A155611 n) (A155605 n) - Int.tmod ((3 ^ n : ℤ) - 3) (3 ^ n : ℤ)

end

end A059116.P8555004353159205639

namespace A059116

/-- `(A155612(n)+A155611(n))%A155605(n)-(3^n-3)%(3^n)` -/
def P8555004353159205639.Spec : Prop :=
  ∀ n, P8555004353159205639.a n = A059116 n

end A059116

/-! ## A059116.P13745546135998768461

`(A155612(n)+A155611(n))%A155605(n)-A058809(n)`
-/

namespace A059116.P13745546135998768461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155612 n + A155611 n) (A155605 n) - A058809 n

end

end A059116.P13745546135998768461

namespace A059116

/-- `(A155612(n)+A155611(n))%A155605(n)-A058809(n)` -/
def P13745546135998768461.Spec : Prop :=
  ∀ n, P13745546135998768461.a n = A059116 n

end A059116

/-! ## A059116.P10682093321610364553

`(A155614(n)+A155611(n))%A155607(n)-A058809(n)`
-/

namespace A059116.P10682093321610364553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155614 n + A155611 n) (A155607 n) - A058809 n

end

end A059116.P10682093321610364553

namespace A059116

/-- `(A155614(n)+A155611(n))%A155607(n)-A058809(n)` -/
def P10682093321610364553.Spec : Prop :=
  ∀ n, P10682093321610364553.a n = A059116 n

end A059116

/-! ## A059116.P13899578223524887096

`(A155615(n)+A155611(n))%A155608(n)-A058809(n)`
-/

namespace A059116.P13899578223524887096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155615 n + A155611 n) (A155608 n) - A058809 n

end

end A059116.P13899578223524887096

namespace A059116

/-- `(A155615(n)+A155611(n))%A155608(n)-A058809(n)` -/
def P13899578223524887096.Spec : Prop :=
  ∀ n, P13899578223524887096.a n = A059116 n

end A059116

/-!
# A059123: Number of homeomorphically irreducible rooted trees (also known as series-reduced rooted trees, or rooted trees without nodes of degree 2) with n >= 1 nodes.

The programs for A059123, there is no canonical definition to state claims against.
-/

/-! ## A059123.P8386675346163365419

`A001679(n)-A000007(n)`
-/

namespace A059123.P8386675346163365419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001679 n - A000007 n

end

end A059123.P8386675346163365419

/-! ## A059123.P8115767394000552062

`A001679(n)*A057427(n)`
-/

namespace A059123.P8115767394000552062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001679 n * A057427 n

end

end A059123.P8115767394000552062

/-! ## A059123.P4344515756114929695

`and(A001679(n), A057428(n))`
-/

namespace A059123.P4344515756114929695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001679 n) (A057428 n)

end

end A059123.P4344515756114929695

/-! ## A059123.P11714984897162128335

`and(A001679(n), A134824(n))`
-/

namespace A059123.P11714984897162128335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001679 n) (A134824 n)

end

end A059123.P11714984897162128335

/-! ## A059123.P935363824381431261

`A001679(n)-A063524(n+1)`
-/

namespace A059123.P935363824381431261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001679 n - A063524 (n + 1)

end

end A059123.P935363824381431261

/-! ## A059123.P12442105662755132414

`and(1, A000225(n))*A001679(n)`
-/

namespace A059123.P12442105662755132414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000225 n) * A001679 n

end

end A059123.P12442105662755132414

/-! ## A059123.P10467493804173663631

`and(1, A078485(n))*A001679(n)`
-/

namespace A059123.P10467493804173663631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A078485 n) * A001679 n

end

end A059123.P10467493804173663631

/-! ## A059123.P2311722835292552266

`and(1, A086224(n))*A001679(n)`
-/

namespace A059123.P2311722835292552266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A086224 n) * A001679 n

end

end A059123.P2311722835292552266

/-! ## A059123.P14802421588347503156

`and(1, A086225(n))*A001679(n)`
-/

namespace A059123.P14802421588347503156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A086225 n) * A001679 n

end

end A059123.P14802421588347503156

/-! ## A059123.P11910807554065967087

`and(1, A127582(n))*A001679(n)`
-/

namespace A059123.P11910807554065967087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127582 n) * A001679 n

end

end A059123.P11910807554065967087

/-! ## A059123.P3484918198397067237

`and(1, A140252(n))*A001679(n)`
-/

namespace A059123.P3484918198397067237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A140252 n) * A001679 n

end

end A059123.P3484918198397067237

/-! ## A059123.P18007111405760556726

`and(1, A140683(n))*A001679(n)`
-/

namespace A059123.P18007111405760556726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A140683 n) * A001679 n

end

end A059123.P18007111405760556726

/-! ## A059123.P9087935481349658477

`and(1, A153893(n))*A001679(n)`
-/

namespace A059123.P9087935481349658477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A153893 n) * A001679 n

end

end A059123.P9087935481349658477

/-! ## A059123.P2647710495124885494

`and(1, A153894(n))*A001679(n)`
-/

namespace A059123.P2647710495124885494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A153894 n) * A001679 n

end

end A059123.P2647710495124885494

/-! ## A059123.P3609180130707267371

`and(1, A171389(n))*A001679(n)`
-/

namespace A059123.P3609180130707267371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A171389 n) * A001679 n

end

end A059123.P3609180130707267371

/-! ## A059123.P10808142947752963470

`and(1, A196305(n))*A001679(n)`
-/

namespace A059123.P10808142947752963470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A196305 n) * A001679 n

end

end A059123.P10808142947752963470

/-! ## A059123.P2654133748001530044

`and(1, A198274(n))*A001679(n)`
-/

namespace A059123.P2654133748001530044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A198274 n) * A001679 n

end

end A059123.P2654133748001530044

/-! ## A059123.P16617498292587717562

`and(1, A088041(n+1))*A001679(n)`
-/

namespace A059123.P16617498292587717562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088041 (n + 1)) * A001679 n

end

end A059123.P16617498292587717562

/-! ## A059123.P477136058773578663

`and(1, A118883(n+1))*A001679(n)`
-/

namespace A059123.P477136058773578663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A118883 (n + 1)) * A001679 n

end

end A059123.P477136058773578663

/-! ## A059123.P10865719160537887557

`A001679(n)-round(2/A035132(n+1))`
-/

namespace A059123.P10865719160537887557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001679 n - SequenceMachineLib.roundAway (2 / (A035132 (n + 1) : ℚ))

end

end A059123.P10865719160537887557

/-!
# A059125: A self-generated dragon-like folding sequence.

The programs for A059125, the canonical program `A059125.P6289864031527853917` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059125 has offset 0).

The definition of A059125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059125.P6289864031527853917

`and(A000265((n+1)²), A014709(xor(55, n)+55))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A059125

/-- `and(A000265((n+1)²), A014709(xor(55, n)+55))` -/
def P6289864031527853917.Spec : Prop :=
  ∀ n, P6289864031527853917.a n = A059125 n

theorem P6289864031527853917.correct : P6289864031527853917.Spec := by
  intro n
  simp only [A059125]

end A059125

/-! ## A059125.P11115594382668218201

`A038189(A287620(n+1)+A038189(n²))`
-/

namespace A059125.P11115594382668218201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A287620 (n + 1) + A038189 (n ^ 2)).toNat

end

end A059125.P11115594382668218201

namespace A059125

/-- `A038189(A287620(n+1)+A038189(n²))` -/
def P11115594382668218201.Spec : Prop :=
  ∀ n, P11115594382668218201.a n = A059125 n

end A059125

/-! ## A059125.P763510735130558436

`A038189(xor(A000217(2*n+3), A016945(3*n)))`
-/

namespace A059125.P763510735130558436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (Int.xor (A000217 (2 * n + 3)) (A016945 (3 * n))).toNat

end

end A059125.P763510735130558436

namespace A059125

/-- `A038189(xor(A000217(2*n+3), A016945(3*n)))` -/
def P763510735130558436.Spec : Prop :=
  ∀ n, P763510735130558436.a n = A059125 n

end A059125

/-! ## A059125.P15884347744322659493

`A060838(Δ[A065621(n+1)]²)`
-/

namespace A059125.P15884347744322659493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A059125.P15884347744322659493

namespace A059125

/-- `A060838(Δ[A065621(n+1)]²)` -/
def P15884347744322659493.Spec : Prop :=
  ∀ n, P15884347744322659493.a n = A059125 n

end A059125

/-! ## A059125.P9480862307478309226

`xor(A010051(A037291(n+1)), A014707(n))`
-/

namespace A059125.P9480862307478309226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A037291 (n + 1)).toNat) (A014707 n)

end

end A059125.P9480862307478309226

namespace A059125

/-- `xor(A010051(A037291(n+1)), A014707(n))` -/
def P9480862307478309226.Spec : Prop :=
  ∀ n, P9480862307478309226.a n = A059125 n

end A059125

/-! ## A059125.P8483301236449691913

`A073089(A051724(3*(n+1))+A001248(n+2))`
-/

namespace A059125.P8483301236449691913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A051724 (3 * (n + 1)) + A001248 (n + 2)).toNat

end

end A059125.P8483301236449691913

namespace A059125

/-- `A073089(A051724(3*(n+1))+A001248(n+2))` -/
def P8483301236449691913.Spec : Prop :=
  ∀ n, P8483301236449691913.a n = A059125 n

end A059125

/-!
# A059126: A hierarchical sequence (W2{2} according to the description in the attached file - see link).

The programs for A059126, the canonical program `A059126.P15563603059737863123` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059126 has offset 0).

The definition of A059126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059126.P13547695847678631640

`val(A059156(n), 4)`
-/

namespace A059126.P13547695847678631640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059156 n).toNat 4

end

end A059126.P13547695847678631640

namespace A059126

/-- `val(A059156(n), 4)` -/
def P13547695847678631640.Spec : Prop :=
  ∀ n, (P13547695847678631640.a n : ℤ) = A059126 n

end A059126

/-! ## A059126.P11025116468584934718

`log2(A059146(n))+1`
-/

namespace A059126.P11025116468584934718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059146 n : ℝ) + 1

end

end A059126.P11025116468584934718

namespace A059126

/-- `log2(A059146(n))+1` -/
def P11025116468584934718.Spec : Prop :=
  ∀ n, P11025116468584934718.a n = (A059126 n : ℝ)

end A059126

/-! ## A059126.P17250132521515900758

`A008612(A059136(n))`
-/

namespace A059126.P17250132521515900758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A059136 n).toNat

end

end A059126.P17250132521515900758

namespace A059126

/-- `A008612(A059136(n))` -/
def P17250132521515900758.Spec : Prop :=
  ∀ n, P17250132521515900758.a n = A059126 n

end A059126

/-! ## A059126.P12049141971345755943

`A336126(A226122(n))`
-/

namespace A059126.P12049141971345755943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336126 (A226122 n).toNat

end

end A059126.P12049141971345755943

namespace A059126

/-- `A336126(A226122(n))` -/
def P12049141971345755943.Spec : Prop :=
  ∀ n, P12049141971345755943.a n = A059126 n

end A059126

/-! ## A059126.P15213749601367690943

`A060789(A059136(n)+2)`
-/

namespace A059126.P15213749601367690943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A059136 n + 2).toNat

end

end A059126.P15213749601367690943

namespace A059126

/-- `A060789(A059136(n)+2)` -/
def P15213749601367690943.Spec : Prop :=
  ∀ n, P15213749601367690943.a n = A059126 n

end A059126

/-! ## A059126.P7091075419188560486

`2*A059129(n)-A131534(n)`
-/

namespace A059126.P7091075419188560486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059129 n - A131534 n

end

end A059126.P7091075419188560486

namespace A059126

/-- `2*A059129(n)-A131534(n)` -/
def P7091075419188560486.Spec : Prop :=
  ∀ n, P7091075419188560486.a n = A059126 n

end A059126

/-! ## A059126.P10283701922818093213

`A059129(n)+A007814(A008620(n))`
-/

namespace A059126.P10283701922818093213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 n + A007814 (A008620 n).toNat

end

end A059126.P10283701922818093213

namespace A059126

/-- `A059129(n)+A007814(A008620(n))` -/
def P10283701922818093213.Spec : Prop :=
  ∀ n, P10283701922818093213.a n = A059126 n

end A059126

/-! ## A059126.P11985828322849924047

`A059129(n)+A050605(A004396(n))`
-/

namespace A059126.P11985828322849924047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 n + A050605 (A004396 n).toNat

end

end A059126.P11985828322849924047

namespace A059126

/-- `A059129(n)+A050605(A004396(n))` -/
def P11985828322849924047.Spec : Prop :=
  ∀ n, P11985828322849924047.a n = A059126 n

end A059126

/-! ## A059126.P5341330573696371900

`A059129(n)+A007814(A002264(n)+1)`
-/

namespace A059126.P5341330573696371900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 n + A007814 (A002264 n + 1).toNat

end

end A059126.P5341330573696371900

namespace A059126

/-- `A059129(n)+A007814(A002264(n)+1)` -/
def P5341330573696371900.Spec : Prop :=
  ∀ n, P5341330573696371900.a n = A059126 n

end A059126

/-! ## A059126.P2019741491324652958

`A059129(n)+A050605(A130823(n+1))`
-/

namespace A059126.P2019741491324652958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 n + A050605 (A130823 (n + 1)).toNat

end

end A059126.P2019741491324652958

namespace A059126

/-- `A059129(n)+A050605(A130823(n+1))` -/
def P2019741491324652958.Spec : Prop :=
  ∀ n, P2019741491324652958.a n = A059126 n

end A059126

/-! ## A059126.P2225509645378494247

`A336126(A130823(n+1)*A131534(n))`
-/

namespace A059126.P2225509645378494247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336126 (A130823 (n + 1) * A131534 n).toNat

end

end A059126.P2225509645378494247

namespace A059126

/-- `A336126(A130823(n+1)*A131534(n))` -/
def P2225509645378494247.Spec : Prop :=
  ∀ n, P2225509645378494247.a n = A059126 n

end A059126

/-! ## A059126.P14787131871417077954

`A059129(n)+A050605(2*A002264(n))`
-/

namespace A059126.P14787131871417077954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 n + A050605 (2 * A002264 n).toNat

end

end A059126.P14787131871417077954

namespace A059126

/-- `A059129(n)+A050605(2*A002264(n))` -/
def P14787131871417077954.Spec : Prop :=
  ∀ n, P14787131871417077954.a n = A059126 n

end A059126

/-! ## A059126.P15563603059737863123

`A131534(n)+2*A007814(A008620(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059126

/-- `A131534(n)+2*A007814(A008620(n))` -/
def P15563603059737863123.Spec : Prop :=
  ∀ n, P15563603059737863123.a n = A059126 n

theorem P15563603059737863123.correct : P15563603059737863123.Spec := by
  intro n
  simp only [A059126]

end A059126

/-! ## A059126.P8295187255937474758

`A336126(lcm(A130823(n+1), A131534(n)))`
-/

namespace A059126.P8295187255937474758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336126 (Int.lcm (A130823 (n + 1)) (A131534 n))

end

end A059126.P8295187255937474758

namespace A059126

/-- `A336126(lcm(A130823(n+1), A131534(n)))` -/
def P8295187255937474758.Spec : Prop :=
  ∀ n, P8295187255937474758.a n = A059126 n

end A059126

/-! ## A059126.P18195583910192843876

`A050605(A130823(n+1))+A000005(A059149(n))`
-/

namespace A059126.P18195583910192843876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A130823 (n + 1)).toNat + A000005 (A059149 n).toNat

end

end A059126.P18195583910192843876

namespace A059126

/-- `A050605(A130823(n+1))+A000005(A059149(n))` -/
def P18195583910192843876.Spec : Prop :=
  ∀ n, P18195583910192843876.a n = A059126 n

end A059126

/-! ## A059126.P11806871432213345709

`A050605(A226122(n))+A001511(A008620(n))`
-/

namespace A059126.P11806871432213345709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A226122 n).toNat + A001511 (A008620 n).toNat

end

end A059126.P11806871432213345709

namespace A059126

/-- `A050605(A226122(n))+A001511(A008620(n))` -/
def P11806871432213345709.Spec : Prop :=
  ∀ n, P11806871432213345709.a n = A059126 n

end A059126

/-! ## A059126.P11409696653792445146

`A136480(A332057(n+1))+A007814(A008620(n))`
-/

namespace A059126.P11409696653792445146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A332057 (n + 1)).toNat + A007814 (A008620 n).toNat

end

end A059126.P11409696653792445146

namespace A059126

/-- `A136480(A332057(n+1))+A007814(A008620(n))` -/
def P11409696653792445146.Spec : Prop :=
  ∀ n, P11409696653792445146.a n = A059126 n

end A059126

/-! ## A059126.P9178417754869415513

`A136480(A332057(n+1))+A050605(A004396(n))`
-/

namespace A059126.P9178417754869415513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A332057 (n + 1)).toNat + A050605 (A004396 n).toNat

end

end A059126.P9178417754869415513

namespace A059126

/-- `A136480(A332057(n+1))+A050605(A004396(n))` -/
def P9178417754869415513.Spec : Prop :=
  ∀ n, P9178417754869415513.a n = A059126 n

end A059126

/-! ## A059126.P5606903201971074475

`A136480(A130823(n+1))+A050605(A226122(n))`
-/

namespace A059126.P5606903201971074475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A130823 (n + 1)).toNat + A050605 (A226122 n).toNat

end

end A059126.P5606903201971074475

namespace A059126

/-- `A136480(A130823(n+1))+A050605(A226122(n))` -/
def P5606903201971074475.Spec : Prop :=
  ∀ n, P5606903201971074475.a n = A059126 n

end A059126

/-! ## A059126.P7012656493403211754

`A136480(A332057(n+1))+A050605(A130823(n+1))`
-/

namespace A059126.P7012656493403211754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A332057 (n + 1)).toNat + A050605 (A130823 (n + 1)).toNat

end

end A059126.P7012656493403211754

namespace A059126

/-- `A136480(A332057(n+1))+A050605(A130823(n+1))` -/
def P7012656493403211754.Spec : Prop :=
  ∀ n, P7012656493403211754.a n = A059126 n

end A059126

/-!
# A059127: A hierarchical sequence (W2{3} - see A059126).

The programs for A059127, there is no canonical definition to state claims against.
-/

/-! ## A059127.P6936830156317237823

`log2(A059147(n))+1`
-/

namespace A059127.P6936830156317237823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059147 n : ℝ) + 1

end

end A059127.P6936830156317237823

/-! ## A059127.P2354054309934031391

`A000005(A059147(n))`
-/

namespace A059127.P2354054309934031391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059147 n).toNat

end

end A059127.P2354054309934031391

/-! ## A059127.P4687157557084807153

`∑{d}[A059147(n), A000265(#)]`
-/

namespace A059127.P4687157557084807153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A059127.P4687157557084807153

/-! ## A059127.P8874212564638135178

`A001222(A059147(n))+A000035(2*n+3)`
-/

namespace A059127.P8874212564638135178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059147 n).toNat + A000035 (2 * n + 3)

end

end A059127.P8874212564638135178

/-! ## A059127.P523445574841626073

`A001222(2*A059147(n))`
-/

namespace A059127.P523445574841626073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A059147 n).toNat

end

end A059127.P523445574841626073

/-! ## A059127.P9193691450686651898

`A005361(2*A059147(n))`
-/

namespace A059127.P9193691450686651898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (2 * A059147 n).toNat

end

end A059127.P9193691450686651898

/-! ## A059127.P47553495917096686

`A195017(2*A059147(n))`
-/

namespace A059127.P47553495917096686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (2 * A059147 n).toNat

end

end A059127.P47553495917096686

/-! ## A059127.P5500227556742024054

`A001222(lcm(3, A059147(n)))`
-/

namespace A059127.P5500227556742024054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A059147 n))

end

end A059127.P5500227556742024054

/-! ## A059127.P8056601649077168288

`A001222(∑{d}[A059147(n), #]+1)`
-/

namespace A059127.P8056601649077168288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1)

end

end A059127.P8056601649077168288

/-! ## A059127.P935803964394882929

`∑{d}[A059147(n), A000120(#)]`
-/

namespace A059127.P935803964394882929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000120 d

end

end A059127.P935803964394882929

/-! ## A059127.P6937296041320442496

`∑{d}[A059147(n), A000161(#)]`
-/

namespace A059127.P6937296041320442496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000161 d

end

end A059127.P6937296041320442496

/-! ## A059127.P9148693664704714174

`A000120(A059147(n)-1)+1`
-/

namespace A059127.P9148693664704714174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059147 n - 1).toNat + 1

end

end A059127.P9148693664704714174

/-! ## A059127.P2725448994069746862

`A007814(2*A059147(n))`
-/

namespace A059127.P2725448994069746862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A059147 n).toNat

end

end A059127.P2725448994069746862

/-! ## A059127.P1406529295018704694

`A000120(2*A059147(n)-1)`
-/

namespace A059127.P1406529295018704694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A059147 n - 1).toNat

end

end A059127.P1406529295018704694

/-! ## A059127.P1690340720522752427

`A000120(A059147(n)-(1-A059147(n)))`
-/

namespace A059127.P1690340720522752427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059147 n - (1 - A059147 n)).toNat

end

end A059127.P1690340720522752427

/-! ## A059127.P10588837861790484630

`A000360(3*A059147(n))`
-/

namespace A059127.P10588837861790484630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (3 * A059147 n).toNat

end

end A059127.P10588837861790484630

/-!
# A059128: A hierarchical sequence (W3{2,2} - see A059126).

The programs for A059128, there is no canonical definition to state claims against.
-/

/-! ## A059128.P11142498776686010795

`log2(A059148(n))+1`
-/

namespace A059128.P11142498776686010795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059148 n : ℝ) + 1

end

end A059128.P11142498776686010795

/-! ## A059128.P11732704340749092238

`A000027(log2(2*A059148(n)))`
-/

namespace A059128.P11732704340749092238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059148 n : ℝ))).toNat

end

end A059128.P11732704340749092238

/-! ## A059128.P10821504207449552700

`A028310(log2(2*A059148(n)))`
-/

namespace A059128.P10821504207449552700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059148 n : ℝ))).toNat

end

end A059128.P10821504207449552700

/-! ## A059128.P3515281816167007590

`1/log2(2*A059148(n))^(A000007(n)-1)`
-/

namespace A059128.P3515281816167007590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.logb 2 (2 * A059148 n : ℝ) ^ (A000007 n - 1 : ℤ)

end

end A059128.P3515281816167007590

/-! ## A059128.P579851289640134797

`log2(2*A059148(n))-(A228540(n)-1)%2`
-/

namespace A059128.P579851289640134797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (2 * A059148 n : ℝ) - (Int.tmod (A228540 n - 1) 2 : ℝ)

end

end A059128.P579851289640134797

/-! ## A059128.P12893415207478758140

`∑{e}[2*A059148(n)*A033999(n), #]`
-/

namespace A059128.P12893415207478758140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059148 n * A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A059128.P12893415207478758140

/-! ## A059128.P5786965827556740934

`A000005(A059148(n))`
-/

namespace A059128.P5786965827556740934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059148 n).toNat

end

end A059128.P5786965827556740934

/-! ## A059128.P1276994035768824859

`∑{d}[A059148(n), A000265(#)]`
-/

namespace A059128.P1276994035768824859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A059128.P1276994035768824859

/-! ## A059128.P3265780743621583062

`∑{d}[A059148(n), A001221(#)]+1`
-/

namespace A059128.P3265780743621583062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d + 1

end

end A059128.P3265780743621583062

/-! ## A059128.P10281133549108176467

`A001222(2*A059148(n))`
-/

namespace A059128.P10281133549108176467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A059148 n).toNat

end

end A059128.P10281133549108176467

/-! ## A059128.P18022589883388043600

`A001222(lcm(3, A059148(n)))`
-/

namespace A059128.P18022589883388043600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A059148 n))

end

end A059128.P18022589883388043600

/-! ## A059128.P6779704330785309019

`∑{d}[A059148(n), A001221(2*#)]`
-/

namespace A059128.P6779704330785309019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (2 * d)

end

end A059128.P6779704330785309019

/-!
# A059129: A hierarchical sequence (W2{2}* - see A059126).

The programs for A059129, the canonical program `A059129.P3613843884237192219` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059129 has offset 0).

The definition of A059129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059129.P7776385137343806235

`C(2, n%3)+val(∑[char[3*n]], 2)`
-/

namespace A059129.P7776385137343806235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A059129.P7776385137343806235

namespace A059129

/-- `C(2, n%3)+val(∑[char[3*n]], 2)` -/
def P7776385137343806235.Spec : Prop :=
  ∀ n, (P7776385137343806235.a n : ℤ) = A059129 n

end A059129

/-! ## A059129.P3264614150526303668

`round(A059143(n)/3)`
-/

namespace A059129.P3264614150526303668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059143 n : ℚ) / 3)

end

end A059129.P3264614150526303668

namespace A059129

/-- `round(A059143(n)/3)` -/
def P3264614150526303668.Spec : Prop :=
  ∀ n, P3264614150526303668.a n = A059129 n

end A059129

/-! ## A059129.P3222316095984829897

`ceil(cosh(log(A059126(n))))`
-/

namespace A059129.P3222316095984829897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A059126 n : ℝ))⌉

end

end A059129.P3222316095984829897

namespace A059129

/-- `ceil(cosh(log(A059126(n))))` -/
def P3222316095984829897.Spec : Prop :=
  ∀ n, P3222316095984829897.a n = A059129 n

end A059129

/-! ## A059129.P3613843884237192219

`val(abs(A099254(n)), 2)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059129

/-- `val(abs(A099254(n)), 2)+1` -/
def P3613843884237192219.Spec : Prop :=
  ∀ n, (P3613843884237192219.a n : ℤ) = A059129 n

theorem P3613843884237192219.correct : P3613843884237192219.Spec := by
  intro n
  simp only [A059129]

end A059129

/-! ## A059129.P13331239719949191470

`A089309(or(2, comp[or(3, n)]))`
-/

namespace A059129.P13331239719949191470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A059129.P13331239719949191470

namespace A059129

/-- `A089309(or(2, comp[or(3, n)]))` -/
def P13331239719949191470.Spec : Prop :=
  ∀ n, P13331239719949191470.a n = A059129 n

end A059129

/-! ## A059129.P12398946278902283723

`A000005(A059149(n))`
-/

namespace A059129.P12398946278902283723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059149 n).toNat

end

end A059129.P12398946278902283723

namespace A059129

/-- `A000005(A059149(n))` -/
def P12398946278902283723.Spec : Prop :=
  ∀ n, P12398946278902283723.a n = A059129 n

end A059129

/-! ## A059129.P13656444836344640004

`A002264(A059143(n))`
-/

namespace A059129.P13656444836344640004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A059143 n).toNat

end

end A059129.P13656444836344640004

namespace A059129

/-- `A002264(A059143(n))` -/
def P13656444836344640004.Spec : Prop :=
  ∀ n, P13656444836344640004.a n = A059129 n

end A059129

/-! ## A059129.P6382211109104626952

`A008619(A059126(n))`
-/

namespace A059129.P6382211109104626952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059126 n).toNat

end

end A059129.P6382211109104626952

namespace A059129

/-- `A008619(A059126(n))` -/
def P6382211109104626952.Spec : Prop :=
  ∀ n, P6382211109104626952.a n = A059129 n

end A059129

/-! ## A059129.P1204946471674828371

`A001511(abs(A099254(n)))`
-/

namespace A059129.P1204946471674828371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 |A099254 n|.toNat

end

end A059129.P1204946471674828371

namespace A059129

/-- `A001511(abs(A099254(n)))` -/
def P1204946471674828371.Spec : Prop :=
  ∀ n, P1204946471674828371.a n = A059129 n

end A059129

/-! ## A059129.P11065852588612169154

`A001222(A059163(n))-1`
-/

namespace A059129.P11065852588612169154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059163 n).toNat - 1

end

end A059129.P11065852588612169154

namespace A059129

/-- `A001222(A059163(n))-1` -/
def P11065852588612169154.Spec : Prop :=
  ∀ n, P11065852588612169154.a n = A059129 n

end A059129

/-! ## A059129.P6332037906230600391

`A004526(A059126(n)+2)`
-/

namespace A059129.P6332037906230600391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059126 n + 2).toNat

end

end A059129.P6332037906230600391

namespace A059129

/-- `A004526(A059126(n)+2)` -/
def P6332037906230600391.Spec : Prop :=
  ∀ n, P6332037906230600391.a n = A059129 n

end A059129

/-! ## A059129.P13445641063374509706

`A008621(2*A059126(n))`
-/

namespace A059129.P13445641063374509706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A059126 n).toNat

end

end A059129.P13445641063374509706

namespace A059129

/-- `A008621(2*A059126(n))` -/
def P13445641063374509706.Spec : Prop :=
  ∀ n, P13445641063374509706.a n = A059129 n

end A059129

/-! ## A059129.P13624416320904768856

`A001222(A059163(n)/2)`
-/

namespace A059129.P13624416320904768856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A059163 n : ℚ) / 2)).toNat

end

end A059129.P13624416320904768856

namespace A059129

/-- `A001222(A059163(n)/2)` -/
def P13624416320904768856.Spec : Prop :=
  ∀ n, P13624416320904768856.a n = A059129 n

end A059129

/-! ## A059129.P12543439625647561862

`A008612(3*A059126(n))`
-/

namespace A059129.P12543439625647561862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (3 * A059126 n).toNat

end

end A059129.P12543439625647561862

namespace A059129

/-- `A008612(3*A059126(n))` -/
def P12543439625647561862.Spec : Prop :=
  ∀ n, P12543439625647561862.a n = A059129 n

end A059129

/-! ## A059129.P6152980680576459341

`A026806(3*A059126(n))`
-/

namespace A059129.P6152980680576459341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (3 * A059126 n).toNat

end

end A059129.P6152980680576459341

namespace A059129

/-- `A026806(3*A059126(n))` -/
def P6152980680576459341.Spec : Prop :=
  ∀ n, P6152980680576459341.a n = A059129 n

end A059129

/-! ## A059129.P7077342567383379930

`A007306(A059149(n)+1)-1`
-/

namespace A059129.P7077342567383379930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A059149 n + 1).toNat - 1

end

end A059129.P7077342567383379930

namespace A059129

/-- `A007306(A059149(n)+1)-1` -/
def P7077342567383379930.Spec : Prop :=
  ∀ n, P7077342567383379930.a n = A059129 n

end A059129

/-! ## A059129.P12926183303930397471

`A007306(2*A059149(n))-1`
-/

namespace A059129.P12926183303930397471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (2 * A059149 n).toNat - 1

end

end A059129.P12926183303930397471

namespace A059129

/-- `A007306(2*A059149(n))-1` -/
def P12926183303930397471.Spec : Prop :=
  ∀ n, P12926183303930397471.a n = A059129 n

end A059129

/-! ## A059129.P14575503758893008947

`A008612(A059136(n)/2+1)`
-/

namespace A059129.P14575503758893008947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.roundAway ((A059136 n : ℚ) / 2 + 1)).toNat

end

end A059129.P14575503758893008947

namespace A059129

/-- `A008612(A059136(n)/2+1)` -/
def P14575503758893008947.Spec : Prop :=
  ∀ n, P14575503758893008947.a n = A059129 n

end A059129

/-! ## A059129.P6724841404343023772

`A000005(2^val(2^A059126(n), 4))`
-/

namespace A059129.P6724841404343023772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059126 n : ℤ))).toNat 4)

end

end A059129.P6724841404343023772

namespace A059129

/-- `A000005(2^val(2^A059126(n), 4))` -/
def P6724841404343023772.Spec : Prop :=
  ∀ n, P6724841404343023772.a n = A059129 n

end A059129

/-! ## A059129.P11284051025583070798

`A001222(A000010(A059163(n)))`
-/

namespace A059129.P11284051025583070798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (A059163 n).toNat).toNat

end

end A059129.P11284051025583070798

namespace A059129

/-- `A001222(A000010(A059163(n)))` -/
def P11284051025583070798.Spec : Prop :=
  ∀ n, P11284051025583070798.a n = A059129 n

end A059129

/-!
# A059130: A hierarchical sequence (W2{3}* - see A059126).

The programs for A059130, there is no canonical definition to state claims against.
-/

/-! ## A059130.P5443400521246864657

`A000005(A059150(n))`
-/

namespace A059130.P5443400521246864657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059150 n).toNat

end

end A059130.P5443400521246864657

/-! ## A059130.P17674749015495096007

`A194960(A059127(n))`
-/

namespace A059130.P17674749015495096007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A059127 n).toNat

end

end A059130.P17674749015495096007

/-! ## A059130.P6147894175599129668

`A008611(A059127(n)+3)`
-/

namespace A059130.P6147894175599129668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A059127 n + 3).toNat

end

end A059130.P6147894175599129668

/-! ## A059130.P9719911306096370394

`A001222(2*A059150(n))`
-/

namespace A059130.P9719911306096370394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A059150 n).toNat

end

end A059130.P9719911306096370394

/-! ## A059130.P5461358528165507209

`A001222(lcm(3, A059150(n)))`
-/

namespace A059130.P5461358528165507209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A059150 n))

end

end A059130.P5461358528165507209

/-! ## A059130.P11277498425782724386

`A008611(3*A008611(A059127(n)))`
-/

namespace A059130.P11277498425782724386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A008611 (A059127 n).toNat).toNat

end

end A059130.P11277498425782724386

/-! ## A059130.P2855260566977776428

`A038548(A059150(n)+2*A059150(n))`
-/

namespace A059130.P2855260566977776428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A059150 n + 2 * A059150 n).toNat

end

end A059130.P2855260566977776428

/-! ## A059130.P4132610398058855333

`A001817(A059150(n)²)`
-/

namespace A059130.P4132610398058855333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A059150 n ^ 2).toNat

end

end A059130.P4132610398058855333

/-! ## A059130.P2586643363368448337

`A003574(A059150(n)²)`
-/

namespace A059130.P2586643363368448337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (A059150 n ^ 2).toNat

end

end A059130.P2586643363368448337

/-! ## A059130.P1139465468533039206

`A038548(A059150(n)²)`
-/

namespace A059130.P1139465468533039206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A059150 n ^ 2).toNat

end

end A059130.P1139465468533039206

/-! ## A059130.P7793406215575872795

`A046951(A059150(n)²)`
-/

namespace A059130.P7793406215575872795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A059150 n ^ 2).toNat

end

end A059130.P7793406215575872795

/-! ## A059130.P8668255527103140989

`A106289(gcd(A000079(n), A059150(n)))`
-/

namespace A059130.P8668255527103140989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (Int.gcd (A000079 n) (A059150 n))

end

end A059130.P8668255527103140989

/-! ## A059130.P8128359449886677216

`A001817(2*A059150(n)*A059150(n))`
-/

namespace A059130.P8128359449886677216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (2 * A059150 n * A059150 n).toNat

end

end A059130.P8128359449886677216

/-! ## A059130.P9867449905593919380

`A038548(2*A059150(n)*A059150(n))`
-/

namespace A059130.P9867449905593919380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (2 * A059150 n * A059150 n).toNat

end

end A059130.P9867449905593919380

/-! ## A059130.P7713013784863693729

`A046951(2*A059150(n)*A059150(n))`
-/

namespace A059130.P7713013784863693729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (2 * A059150 n * A059150 n).toNat

end

end A059130.P7713013784863693729

/-! ## A059130.P3240043103334183727

`A106289(A059150(n))%A028895(n+2)`
-/

namespace A059130.P3240043103334183727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106289 (A059150 n).toNat) (A028895 (n + 2))

end

end A059130.P3240043103334183727

/-! ## A059130.P229825319219958649

`A106289(A059150(n)%lt[2, A002262(n)])`
-/

namespace A059130.P229825319219958649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (Int.tmod (A059150 n) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)).toNat

end

end A059130.P229825319219958649

/-!
# A059131: A hierarchical sequence (W3{2,2}* - see A059126).

The programs for A059131, the canonical program `A059131.P15079196428124471253` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059131 has offset 0).

The definition of A059131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059131.P13834385582989004112

`log2(A059151(n))+1`
-/

namespace A059131.P13834385582989004112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059151 n : ℝ) + 1

end

end A059131.P13834385582989004112

namespace A059131

/-- `log2(A059151(n))+1` -/
def P13834385582989004112.Spec : Prop :=
  ∀ n, P13834385582989004112.a n = (A059131 n : ℝ)

end A059131

/-! ## A059131.P1759762066593045436

`A000005(A059151(n))`
-/

namespace A059131.P1759762066593045436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059151 n).toNat

end

end A059131.P1759762066593045436

namespace A059131

/-- `A000005(A059151(n))` -/
def P1759762066593045436.Spec : Prop :=
  ∀ n, P1759762066593045436.a n = A059131 n

end A059131

/-! ## A059131.P16703350625787607050

`A005496(log2(A059151(n)))`
-/

namespace A059131.P16703350625787607050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (SequenceMachineLib.roundAway (Real.logb 2 (A059151 n : ℝ))).toNat

end

end A059131.P16703350625787607050

namespace A059131

/-- `A005496(log2(A059151(n)))` -/
def P16703350625787607050.Spec : Prop :=
  ∀ n, P16703350625787607050.a n = A059131 n

end A059131

/-! ## A059131.P4632382030905772496

`A005555(log2(A059151(n)))`
-/

namespace A059131.P4632382030905772496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.roundAway (Real.logb 2 (A059151 n : ℝ))).toNat

end

end A059131.P4632382030905772496

namespace A059131

/-- `A005555(log2(A059151(n)))` -/
def P4632382030905772496.Spec : Prop :=
  ∀ n, P4632382030905772496.a n = A059131 n

end A059131

/-! ## A059131.P17278170832322514924

`A020651(A059151(n)+1)`
-/

namespace A059131.P17278170832322514924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A059151 n + 1).toNat

end

end A059131.P17278170832322514924

namespace A059131

/-- `A020651(A059151(n)+1)` -/
def P17278170832322514924.Spec : Prop :=
  ∀ n, P17278170832322514924.a n = A059131 n

end A059131

/-! ## A059131.P15091994114091627291

`A029837(A059151(n)+1)`
-/

namespace A059131.P15091994114091627291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A059151 n + 1).toNat

end

end A059131.P15091994114091627291

namespace A059131

/-- `A029837(A059151(n)+1)` -/
def P15091994114091627291.Spec : Prop :=
  ∀ n, P15091994114091627291.a n = A059131 n

end A059131

/-! ## A059131.P7687043536782102078

`A001222(2*A059151(n))`
-/

namespace A059131.P7687043536782102078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A059151 n).toNat

end

end A059131.P7687043536782102078

namespace A059131

/-- `A001222(2*A059151(n))` -/
def P7687043536782102078.Spec : Prop :=
  ∀ n, P7687043536782102078.a n = A059131 n

end A059131

/-! ## A059131.P11286224612678328530

`A029837(2*A059151(n))`
-/

namespace A059131.P11286224612678328530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 * A059151 n).toNat

end

end A059131.P11286224612678328530

namespace A059131

/-- `A029837(2*A059151(n))` -/
def P11286224612678328530.Spec : Prop :=
  ∀ n, P11286224612678328530.a n = A059131 n

end A059131

/-! ## A059131.P11555171649915612947

`A001222(lcm(3, A059151(n)))`
-/

namespace A059131.P11555171649915612947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A059151 n))

end

end A059131.P11555171649915612947

namespace A059131

/-- `A001222(lcm(3, A059151(n)))` -/
def P11555171649915612947.Spec : Prop :=
  ∀ n, P11555171649915612947.a n = A059131 n

end A059131

/-! ## A059131.P3312981925924312909

`A000120(∑{d}[A059151(n), #])`
-/

namespace A059131.P3312981925924312909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A059131.P3312981925924312909

namespace A059131

/-- `A000120(∑{d}[A059151(n), #])` -/
def P3312981925924312909.Spec : Prop :=
  ∀ n, P3312981925924312909.a n = A059131 n

end A059131

/-! ## A059131.P8674304570271391640

`A000120(A059151(n)-1)+1`
-/

namespace A059131.P8674304570271391640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059151 n - 1).toNat + 1

end

end A059131.P8674304570271391640

namespace A059131

/-- `A000120(A059151(n)-1)+1` -/
def P8674304570271391640.Spec : Prop :=
  ∀ n, P8674304570271391640.a n = A059131 n

end A059131

/-! ## A059131.P14864133085466759065

`A000120(2*A059151(n)-1)`
-/

namespace A059131.P14864133085466759065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A059151 n - 1).toNat

end

end A059131.P14864133085466759065

namespace A059131

/-- `A000120(2*A059151(n)-1)` -/
def P14864133085466759065.Spec : Prop :=
  ∀ n, P14864133085466759065.a n = A059131 n

end A059131

/-! ## A059131.P15565651654943104135

`A001222(∑{d}[A059151(n), #]+1)`
-/

namespace A059131.P15565651654943104135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1)

end

end A059131.P15565651654943104135

namespace A059131

/-- `A001222(∑{d}[A059151(n), #]+1)` -/
def P15565651654943104135.Spec : Prop :=
  ∀ n, P15565651654943104135.a n = A059131 n

end A059131

/-! ## A059131.P10464991004269207916

`∑{d}[2*A059151(n), A001221(#)]`
-/

namespace A059131.P10464991004269207916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A059131.P10464991004269207916

namespace A059131

/-- `∑{d}[2*A059151(n), A001221(#)]` -/
def P10464991004269207916.Spec : Prop :=
  ∀ n, P10464991004269207916.a n = A059131 n

end A059131

/-! ## A059131.P15079196428124471253

`A059129(A002264(n))+(n%3)%2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059131

/-- `A059129(A002264(n))+(n%3)%2` -/
def P15079196428124471253.Spec : Prop :=
  ∀ n, P15079196428124471253.a n = A059131 n

theorem P15079196428124471253.correct : P15079196428124471253.Spec := by
  intro n
  simp only [A059131]

end A059131

/-! ## A059131.P13945543512261497246

`A059129(floor(n/3))+log2(A131534(n))`
-/

namespace A059131.P13945543512261497246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059129 ⌊(n : ℚ) / 3⌋.toNat : ℝ) + Real.logb 2 (A131534 n : ℝ)

end

end A059131.P13945543512261497246

namespace A059131

/-- `A059129(floor(n/3))+log2(A131534(n))` -/
def P13945543512261497246.Spec : Prop :=
  ∀ n, P13945543512261497246.a n = (A059131 n : ℝ)

end A059131

/-! ## A059131.P3109572662603340123

`A001222(A000203(A059151(n))+1)`
-/

namespace A059131.P3109572662603340123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (A059151 n).toNat + 1).toNat

end

end A059131.P3109572662603340123

namespace A059131

/-- `A001222(A000203(A059151(n))+1)` -/
def P3109572662603340123.Spec : Prop :=
  ∀ n, P3109572662603340123.a n = A059131 n

end A059131

/-! ## A059131.P4504565244237942257

`A001222(A008458(A059151(n))/2)`
-/

namespace A059131.P4504565244237942257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A008458 (A059151 n).toNat : ℚ) / 2)).toNat

end

end A059131.P4504565244237942257

namespace A059131

/-- `A001222(A008458(A059151(n))/2)` -/
def P4504565244237942257.Spec : Prop :=
  ∀ n, P4504565244237942257.a n = A059131 n

end A059131

/-! ## A059131.P8081955446533466645

`∑{d}[A059151(n), A000045(A014963(#))]`
-/

namespace A059131.P8081955446533466645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (A014963 d).toNat

end

end A059131.P8081955446533466645

namespace A059131

/-- `∑{d}[A059151(n), A000045(A014963(#))]` -/
def P8081955446533466645.Spec : Prop :=
  ∀ n, P8081955446533466645.a n = A059131 n

end A059131

/-! ## A059131.P5257027205194450733

`∑{d}[A059151(n), A000045(A020639(#))]`
-/

namespace A059131.P5257027205194450733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (A020639 d).toNat

end

end A059131.P5257027205194450733

namespace A059131

/-- `∑{d}[A059151(n), A000045(A020639(#))]` -/
def P5257027205194450733.Spec : Prop :=
  ∀ n, P5257027205194450733.a n = A059131 n

end A059131

/-!
# A059132: A hierarchical sequence (W2{2}c - see A059126).

The programs for A059132, the canonical program `A059132.P10830951508121782954` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059132 has offset 0).

The definition of A059132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059132.P10830951508121782954

`4+6*A007814(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059132

/-- `4+6*A007814(n+1)` -/
def P10830951508121782954.Spec : Prop :=
  ∀ n, P10830951508121782954.a n = A059132 n

theorem P10830951508121782954.correct : P10830951508121782954.Spec := by
  intro n
  simp only [A059132]

end A059132

/-! ## A059132.P1248558335445638558

`A059126(3*n)+A059126(3*n+1)+A059126(3*n)`
-/

namespace A059132.P1248558335445638558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (3 * n) + A059126 (3 * n + 1) + A059126 (3 * n)

end

end A059132.P1248558335445638558

namespace A059132

/-- `A059126(3*n)+A059126(3*n+1)+A059126(3*n)` -/
def P1248558335445638558.Spec : Prop :=
  ∀ n, P1248558335445638558.a n = A059132 n

end A059132

/-! ## A059132.P8542346363288284179

`6*val(n+1, 2)+4`
-/

namespace A059132.P8542346363288284179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.valuation (n + 1) 2 + 4

end

end A059132.P8542346363288284179

namespace A059132

/-- `6*val(n+1, 2)+4` -/
def P8542346363288284179.Spec : Prop :=
  ∀ n, (P8542346363288284179.a n : ℤ) = A059132 n

end A059132

/-! ## A059132.P6060171507205743929

`val((n+1)^6, 2)+4`
-/

namespace A059132.P6060171507205743929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 6) 2 + 4

end

end A059132.P6060171507205743929

namespace A059132

/-- `val((n+1)^6, 2)+4` -/
def P6060171507205743929.Spec : Prop :=
  ∀ n, (P6060171507205743929.a n : ℤ) = A059132 n

end A059132

/-! ## A059132.P14963063005905436604

`val(Δ[(n²+n)²]², 2)`
-/

namespace A059132.P14963063005905436604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat 2

end

end A059132.P14963063005905436604

namespace A059132

/-- `val(Δ[(n²+n)²]², 2)` -/
def P14963063005905436604.Spec : Prop :=
  ∀ n, (P14963063005905436604.a n : ℤ) = A059132 n

end A059132

/-! ## A059132.P6416861977381869069

`6*∑{e}[xor(n, n+1)+1, #]-2`
-/

namespace A059132.P6416861977381869069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℤ) - 2

end

end A059132.P6416861977381869069

namespace A059132

/-- `6*∑{e}[xor(n, n+1)+1, #]-2` -/
def P6416861977381869069.Spec : Prop :=
  ∀ n, P6416861977381869069.a n = A059132 n

end A059132

/-! ## A059132.P7395810780587974678

`10-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=4`
-/

namespace A059132.P7395810780587974678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  10 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A059132.P7395810780587974678

namespace A059132

/-- `10-(a(n-1)-a(floor((n-1)/2)))` -/
def P7395810780587974678.Spec : Prop :=
  ∀ n, P7395810780587974678.a n = A059132 n

end A059132

/-! ## A059132.P4444137246584063809

`2*(A059139(n)-2)`
-/

namespace A059132.P4444137246584063809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059139 n - 2)

end

end A059132.P4444137246584063809

namespace A059132

/-- `2*(A059139(n)-2)` -/
def P4444137246584063809.Spec : Prop :=
  ∀ n, P4444137246584063809.a n = A059132 n

theorem P4444137246584063809.correct : P4444137246584063809.Spec := by
  intro n
  simp only [A059132, Nat.add_sub_cancel, A059132.P4444137246584063809.a, A059132.P10830951508121782954.a, A007814, A007814.P13537437864234730737.a, A059139, A059139.P8007015464797935688.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059132

/-! ## A059132.P8246818478539533034

`A016957(val(n+1, 2))`
-/

namespace A059132.P8246818478539533034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (SequenceMachineLib.valuation (n + 1) 2)

end

end A059132.P8246818478539533034

namespace A059132

/-- `A016957(val(n+1, 2))` -/
def P8246818478539533034.Spec : Prop :=
  ∀ n, P8246818478539533034.a n = A059132 n

end A059132

/-! ## A059132.P11486093063999714969

`3*A037227(n+1)+1`
-/

namespace A059132.P11486093063999714969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037227 (n + 1) + 1

end

end A059132.P11486093063999714969

namespace A059132

/-- `3*A037227(n+1)+1` -/
def P11486093063999714969.Spec : Prop :=
  ∀ n, P11486093063999714969.a n = A059132 n

theorem P11486093063999714969.correct : P11486093063999714969.Spec := by
  intro n
  simp only [A059132, Nat.add_sub_cancel, A059132.P11486093063999714969.a, A059132.P10830951508121782954.a, A007814, A007814.P13537437864234730737.a, A037227, A037227.P1481052513991100259.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059132

/-! ## A059132.P4945371590990469900

`3*A366839(n+1)-2`
-/

namespace A059132.P4945371590990469900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A366839 (n + 1) - 2

end

end A059132.P4945371590990469900

namespace A059132

/-- `3*A366839(n+1)-2` -/
def P4945371590990469900.Spec : Prop :=
  ∀ n, P4945371590990469900.a n = A059132 n

theorem P4945371590990469900.correct : P4945371590990469900.Spec := by
  intro n
  simp only [A059132, Nat.add_sub_cancel, A059132.P4945371590990469900.a, A059132.P10830951508121782954.a, A007814, A007814.P13537437864234730737.a, A366839, A366839.P8593895561095689137.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059132

/-! ## A059132.P2320703032062090784

`6*A001511(n+1)-2`
-/

namespace A059132.P2320703032062090784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001511 (n + 1) - 2

end

end A059132.P2320703032062090784

namespace A059132

/-- `6*A001511(n+1)-2` -/
def P2320703032062090784.Spec : Prop :=
  ∀ n, P2320703032062090784.a n = A059132 n

theorem P2320703032062090784.correct : P2320703032062090784.Spec := by
  intro n
  simp only [A059132, Nat.add_sub_cancel, A059132.P2320703032062090784.a, A059132.P10830951508121782954.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059132

/-! ## A059132.P11092822394484314650

`A016945(val(n+1, 2))+1`
-/

namespace A059132.P11092822394484314650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (SequenceMachineLib.valuation (n + 1) 2) + 1

end

end A059132.P11092822394484314650

namespace A059132

/-- `A016945(val(n+1, 2))+1` -/
def P11092822394484314650.Spec : Prop :=
  ∀ n, P11092822394484314650.a n = A059132 n

end A059132

/-! ## A059132.P11442288579288787135

`A016969(val(n+1, 2))-1`
-/

namespace A059132.P11442288579288787135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (SequenceMachineLib.valuation (n + 1) 2) - 1

end

end A059132.P11442288579288787135

namespace A059132

/-- `A016969(val(n+1, 2))-1` -/
def P11442288579288787135.Spec : Prop :=
  ∀ n, P11442288579288787135.a n = A059132 n

end A059132

/-! ## A059132.P9474035701733338940

`A004271(A059139(n))`
-/

namespace A059132.P9474035701733338940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A059139 n).toNat

end

end A059132.P9474035701733338940

namespace A059132

/-- `A004271(A059139(n))` -/
def P9474035701733338940.Spec : Prop :=
  ∀ n, P9474035701733338940.a n = A059132 n

end A059132

/-! ## A059132.P1757691970298788882

`A008612(A059137(n))`
-/

namespace A059132.P1757691970298788882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A059137 n).toNat

end

end A059132.P1757691970298788882

namespace A059132

/-- `A008612(A059137(n))` -/
def P1757691970298788882.Spec : Prop :=
  ∀ n, P1757691970298788882.a n = A059132 n

end A059132

/-! ## A059132.P14374142471221932143

`A016957(A007814(n+1))`
-/

namespace A059132.P14374142471221932143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A007814 (n + 1)).toNat

end

end A059132.P14374142471221932143

namespace A059132

/-- `A016957(A007814(n+1))` -/
def P14374142471221932143.Spec : Prop :=
  ∀ n, P14374142471221932143.a n = A059132 n

end A059132

/-! ## A059132.P11094601191227352030

`A006370(A037227(n+1))`
-/

namespace A059132.P11094601191227352030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A037227 (n + 1)).toNat

end

end A059132.P11094601191227352030

namespace A059132

/-- `A006370(A037227(n+1))` -/
def P11094601191227352030.Spec : Prop :=
  ∀ n, P11094601191227352030.a n = A059132 n

end A059132

/-! ## A059132.P1607230757777860136

`A046549(A123726(n+1))`
-/

namespace A059132.P1607230757777860136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046549 (A123726 (n + 1)).toNat

end

end A059132.P1607230757777860136

namespace A059132

/-- `A046549(A123726(n+1))` -/
def P1607230757777860136.Spec : Prop :=
  ∀ n, P1607230757777860136.a n = A059132 n

end A059132

/-! ## A059132.P5693031759160593357

`A189895(A115364(n+1))`
-/

namespace A059132.P5693031759160593357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189895 (A115364 (n + 1)).toNat

end

end A059132.P5693031759160593357

namespace A059132

/-- `A189895(A115364(n+1))` -/
def P5693031759160593357.Spec : Prop :=
  ∀ n, P5693031759160593357.a n = A059132 n

end A059132

/-!
# A059133: A hierarchical sequence (S(W2{2}c) - see A059126).

The programs for A059133, the canonical program `A059133.P2812660293215290748` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059133 has offset 0).

The definition of A059133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059133.P2812660293215290748

`2*A213387(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059133

/-- `2*A213387(n+2)` -/
def P2812660293215290748.Spec : Prop :=
  ∀ n, P2812660293215290748.a n = A059133 n

theorem P2812660293215290748.correct : P2812660293215290748.Spec := by
  intro n
  simp only [A059133]

end A059133

/-! ## A059133.P15687469649657120478

`∑[10*2^n-6]`
-/

namespace A059133.P15687469649657120478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * 2 ^ n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059133.P15687469649657120478

namespace A059133

/-- `∑[10*2^n-6]` -/
def P15687469649657120478.Spec : Prop :=
  ∀ n, P15687469649657120478.a n = A059133 n

end A059133

/-! ## A059133.P6469056916118670052

`ogf((4+2x)/(1-4x+5x^2-2x^3))`
-/

namespace A059133.P6469056916118670052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2] [1, -4, 5, -2] n

end

end A059133.P6469056916118670052

namespace A059133

/-- `ogf((4+2x)/(1-4x+5x^2-2x^3))` -/
def P6469056916118670052.Spec : Prop :=
  ∀ n, P6469056916118670052.a n = A059133 n

end A059133

/-! ## A059133.P14646569047351851968

`abs(∑[2*a(n-1)+6])` with `a(0)=4`
-/

namespace A059133.P14646569047351851968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059133.P14646569047351851968

namespace A059133

/-- `abs(∑[2*a(n-1)+6])` -/
def P14646569047351851968.Spec : Prop :=
  ∀ n, (P14646569047351851968.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P1329580195407247423

`floor(∑[2*(a(n-1)+3)])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A059133.P1329580195407247423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059133.P1329580195407247423

namespace A059133

/-- `floor(∑[2*(a(n-1)+3)])` -/
def P1329580195407247423.Spec : Prop :=
  ∀ n, (P1329580195407247423.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P14488180240814441674

`ceil(∑[2*(a(n-1)+3)])` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A059133.P14488180240814441674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059133.P14488180240814441674

namespace A059133

/-- `ceil(∑[2*(a(n-1)+3)])` -/
def P14488180240814441674.Spec : Prop :=
  ∀ n, (P14488180240814441674.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P8100717200283639487

`floor(∑[∑[2*a(n-1)]])` with `a(0)=4, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A059133.P8100717200283639487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 10] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059133.P8100717200283639487

namespace A059133

/-- `floor(∑[∑[2*a(n-1)]])` -/
def P8100717200283639487.Spec : Prop :=
  ∀ n, (P8100717200283639487.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P14831997574871145676

`2*∑[2*a(n-1)+3]` with `a(0)=2`
-/

namespace A059133.P14831997574871145676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059133.P14831997574871145676

namespace A059133

/-- `2*∑[2*a(n-1)+3]` -/
def P14831997574871145676.Spec : Prop :=
  ∀ n, (P14831997574871145676.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P8837877472859276016

`2*∑[∑[2*a(n-1)]]` with `a(0)=2, a(1)=5`
-/

namespace A059133.P8837877472859276016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059133.P8837877472859276016

namespace A059133

/-- `2*∑[∑[2*a(n-1)]]` -/
def P8837877472859276016.Spec : Prop :=
  ∀ n, (P8837877472859276016.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P12913654427546196016

`2*(3*n+a(n-1)+2)` with `a(0)=4`
-/

namespace A059133.P12913654427546196016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * (3 * n + (a (n - 1) + 2))

end

end A059133.P12913654427546196016

namespace A059133

/-- `2*(3*n+a(n-1)+2)` -/
def P12913654427546196016.Spec : Prop :=
  ∀ n, (P12913654427546196016.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P11036118743945691704

`floor(∑[a(n-1)+a(n-1)+6])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A059133.P11036118743945691704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059133.P11036118743945691704

namespace A059133

/-- `floor(∑[a(n-1)+a(n-1)+6])` -/
def P11036118743945691704.Spec : Prop :=
  ∀ n, (P11036118743945691704.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P8806983660948958092

`∑[a(n-1)+a(n-1)+7]+n+1` with `a(0)=3`
-/

namespace A059133.P8806983660948958092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A059133.P8806983660948958092

namespace A059133

/-- `∑[a(n-1)+a(n-1)+7]+n+1` -/
def P8806983660948958092.Spec : Prop :=
  ∀ n, (P8806983660948958092.a n : ℤ) = A059133 n

end A059133

/-! ## A059133.P6467421914291617191

`2*(A169831(n)+1)`
-/

namespace A059133.P6467421914291617191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A169831 n + 1)

end

end A059133.P6467421914291617191

namespace A059133

/-- `2*(A169831(n)+1)` -/
def P6467421914291617191.Spec : Prop :=
  ∀ n, P6467421914291617191.a n = A059133 n

theorem P6467421914291617191.correct : P6467421914291617191.Spec := by
  intro n
  simp only [A059133, Nat.add_sub_cancel, A059133.P6467421914291617191.a, A059133.P2812660293215290748.a, A169831, A169831.P10133078793643380953.a, A213387, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059133

/-! ## A059133.P17030324909003542807

`A247904(n+1)-(n+2)`
-/

namespace A059133.P17030324909003542807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247904 (n + 1) - (n + 2 : ℤ)

end

end A059133.P17030324909003542807

namespace A059133

/-- `A247904(n+1)-(n+2)` -/
def P17030324909003542807.Spec : Prop :=
  ∀ n, P17030324909003542807.a n = A059133 n

theorem P17030324909003542807.correct : P17030324909003542807.Spec := by
  intro n
  simp only [A059133, Nat.add_sub_cancel, A059133.P17030324909003542807.a, A059133.P2812660293215290748.a, A213387, A213387.P11360179553682219369.a, A247904, A247904.P15407429314126461153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059133

/-! ## A059133.P6814310304123140670

`2*(A131064(n+1)+n)`
-/

namespace A059133.P6814310304123140670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131064 (n + 1) + (n : ℤ))

end

end A059133.P6814310304123140670

namespace A059133

/-- `2*(A131064(n+1)+n)` -/
def P6814310304123140670.Spec : Prop :=
  ∀ n, P6814310304123140670.a n = A059133 n

theorem P6814310304123140670.correct : P6814310304123140670.Spec := by
  intro n
  simp only [A059133, Nat.add_sub_cancel, A059133.P6814310304123140670.a, A059133.P2812660293215290748.a, A131064, A131064.P1020797284623814673.a, A213387, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059133

/-! ## A059133.P3501987944094492230

`2*(∑[A134062(n)]-n)+2`
-/

namespace A059133.P3501987944094492230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) + 2

end

end A059133.P3501987944094492230

namespace A059133

/-- `2*(∑[A134062(n)]-n)+2` -/
def P3501987944094492230.Spec : Prop :=
  ∀ n, P3501987944094492230.a n = A059133 n

end A059133

/-! ## A059133.P17555462734870828577

`2*(A289131(2*n+1)-2)`
-/

namespace A059133.P17555462734870828577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289131 (2 * n + 1) - 2)

end

end A059133.P17555462734870828577

namespace A059133

/-- `2*(A289131(2*n+1)-2)` -/
def P17555462734870828577.Spec : Prop :=
  ∀ n, P17555462734870828577.a n = A059133 n

end A059133

/-! ## A059133.P5991977903563982076

`2*(A126284(n+1)+n+1)`
-/

namespace A059133.P5991977903563982076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A126284 (n + 1) + (n + 1 : ℤ))

end

end A059133.P5991977903563982076

namespace A059133

/-- `2*(A126284(n+1)+n+1)` -/
def P5991977903563982076.Spec : Prop :=
  ∀ n, P5991977903563982076.a n = A059133 n

theorem P5991977903563982076.correct : P5991977903563982076.Spec := by
  intro n
  simp only [A059133, Nat.add_sub_cancel, A059133.P5991977903563982076.a, A059133.P2812660293215290748.a, A126284, A126284.P7116744339461656326.a, A213387, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059133

/-! ## A059133.P48595542591701682

`5*A125128(n+1)-(n+1)`
-/

namespace A059133.P48595542591701682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A125128 (n + 1) - (n + 1 : ℤ)

end

end A059133.P48595542591701682

namespace A059133

/-- `5*A125128(n+1)-(n+1)` -/
def P48595542591701682.Spec : Prop :=
  ∀ n, P48595542591701682.a n = A059133 n

theorem P48595542591701682.correct : P48595542591701682.Spec := by
  intro n
  simp only [A059133, Nat.add_sub_cancel, A059133.P48595542591701682.a, A059133.P2812660293215290748.a, A125128, A125128.P15302475142462672969.a, A213387, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059133

/-! ## A059133.P12934183697463455101

`A109363(n+2)+A109363(n)`
-/

namespace A059133.P12934183697463455101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109363 (n + 2) + A109363 n

end

end A059133.P12934183697463455101

namespace A059133

/-- `A109363(n+2)+A109363(n)` -/
def P12934183697463455101.Spec : Prop :=
  ∀ n, P12934183697463455101.a n = A059133 n

theorem P12934183697463455101.correct : P12934183697463455101.Spec := by
  intro n
  simp only [A059133, Nat.add_sub_cancel, A059133.P12934183697463455101.a, A059133.P2812660293215290748.a, A109363, A109363.P398444148463414969.a, A213387, A213387.P11360179553682219369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059133

/-!
# A059134: A hierarchical sequence (W2{3}c - see A059126).

The programs for A059134, the canonical program `A059134.P7492857375227380560` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059134 has offset 0).

The definition of A059134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059134.P7492857375227380560

`21*val(n+1, 2)+11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059134

/-- `21*val(n+1, 2)+11` -/
def P7492857375227380560.Spec : Prop :=
  ∀ n, (P7492857375227380560.a n : ℤ) = A059134 n

theorem P7492857375227380560.correct : P7492857375227380560.Spec := by
  intro n
  simp only [A059134]

end A059134

/-! ## A059134.P16265275254475831174

`7/2*A059132(n)-3`
-/

namespace A059134.P16265275254475831174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 2 * (A059132 n : ℚ) - 3

end

end A059134.P16265275254475831174

namespace A059134

/-- `7/2*A059132(n)-3` -/
def P16265275254475831174.Spec : Prop :=
  ∀ n, P16265275254475831174.a n = (A059134 n : ℚ)

end A059134

/-! ## A059134.P11205382955502086736

`A139607(val(n+1, 2))+4`
-/

namespace A059134.P11205382955502086736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (SequenceMachineLib.valuation (n + 1) 2) + 4

end

end A059134.P11205382955502086736

namespace A059134

/-- `A139607(val(n+1, 2))+4` -/
def P11205382955502086736.Spec : Prop :=
  ∀ n, P11205382955502086736.a n = A059134 n

theorem P11205382955502086736.correct : P11205382955502086736.Spec := by
  intro n
  simp only [A059134, Nat.add_sub_cancel, A059134.P11205382955502086736.a, A059134.P7492857375227380560.a, A139607, A139607.P13295499326777898792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059134

/-! ## A059134.P6787637385338642910

`A215146(val(n+1, 2))+10`
-/

namespace A059134.P6787637385338642910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (SequenceMachineLib.valuation (n + 1) 2) + 10

end

end A059134.P6787637385338642910

namespace A059134

/-- `A215146(val(n+1, 2))+10` -/
def P6787637385338642910.Spec : Prop :=
  ∀ n, P6787637385338642910.a n = A059134 n

theorem P6787637385338642910.correct : P6787637385338642910.Spec := by
  intro n
  simp only [A059134, Nat.add_sub_cancel, A059134.P6787637385338642910.a, A059134.P7492857375227380560.a, A215146, A215146.P15413588575788200673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059134

/-! ## A059134.P3491813265478827584

`21*A001511(n+1)-10`
-/

namespace A059134.P3491813265478827584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A001511 (n + 1) - 10

end

end A059134.P3491813265478827584

namespace A059134

/-- `21*A001511(n+1)-10` -/
def P3491813265478827584.Spec : Prop :=
  ∀ n, P3491813265478827584.a n = A059134 n

end A059134

/-! ## A059134.P13235454413828226654

`21*A007814(n+1)+11`
-/

namespace A059134.P13235454413828226654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A007814 (n + 1) + 11

end

end A059134.P13235454413828226654

namespace A059134

/-- `21*A007814(n+1)+11` -/
def P13235454413828226654.Spec : Prop :=
  ∀ n, P13235454413828226654.a n = A059134 n

end A059134

/-! ## A059134.P5799715204338032733

`ceil(21*A037227(n+1)/2)`
-/

namespace A059134.P5799715204338032733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(21 * A037227 (n + 1) : ℚ) / 2⌉

end

end A059134.P5799715204338032733

namespace A059134

/-- `ceil(21*A037227(n+1)/2)` -/
def P5799715204338032733.Spec : Prop :=
  ∀ n, P5799715204338032733.a n = A059134 n

end A059134

/-! ## A059134.P18438360345957828379

`A047341(A059132(n))`
-/

namespace A059134.P18438360345957828379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (A059132 n).toNat

end

end A059134.P18438360345957828379

namespace A059134

/-- `A047341(A059132(n))` -/
def P18438360345957828379.Spec : Prop :=
  ∀ n, P18438360345957828379.a n = A059134 n

end A059134

/-! ## A059134.P9697603419743509888

`A098294(A059137(n)+1)-1`
-/

namespace A059134.P9697603419743509888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A059137 n + 1).toNat - 1

end

end A059134.P9697603419743509888

namespace A059134

/-- `A098294(A059137(n)+1)-1` -/
def P9697603419743509888.Spec : Prop :=
  ∀ n, P9697603419743509888.a n = A059134 n

end A059134

/-! ## A059134.P11698217981768302880

`A264646(A001511((n+1)²))`
-/

namespace A059134.P11698217981768302880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264646 (A001511 ((n + 1) ^ 2)).toNat

end

end A059134.P11698217981768302880

namespace A059134

/-- `A264646(A001511((n+1)²))` -/
def P11698217981768302880.Spec : Prop :=
  ∀ n, P11698217981768302880.a n = A059134 n

end A059134

/-! ## A059134.P5130366252415546058

`A264646(A349393(A006519((n+1)²)))`
-/

namespace A059134.P5130366252415546058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264646 (A349393 (A006519 ((n + 1) ^ 2)).toNat).toNat

end

end A059134.P5130366252415546058

namespace A059134

/-- `A264646(A349393(A006519((n+1)²)))` -/
def P5130366252415546058.Spec : Prop :=
  ∀ n, P5130366252415546058.a n = A059134 n

end A059134

/-!
# A059135: A hierarchical sequence (S(W2{3}c) - see A059126).

The programs for A059135, there is no canonical definition to state claims against.
-/

/-! ## A059135.P15180683495532689789

`∑[2^(n+5)-21]`
-/

namespace A059135.P15180683495532689789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 5) : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059135.P15180683495532689789

/-! ## A059135.P5643696848167049271

`ogf((11+10x)/(1-4x+5x^2-2x^3))`
-/

namespace A059135.P5643696848167049271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 10] [1, -4, 5, -2] n

end

end A059135.P5643696848167049271

/-! ## A059135.P9782880662055618372

`∑[2*a(n-1)]-21*(n+1)` with `a(0)=32`
-/

namespace A059135.P9782880662055618372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (21 * (n + 1) : ℤ)

end

end A059135.P9782880662055618372

/-! ## A059135.P9394074820854952745

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=11, a(1)=54, a(2)=161`
-/

namespace A059135.P9394074820854952745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 54, 161] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A059135.P9394074820854952745

/-! ## A059135.P17157256804062934895

`-∑[4-A166118(n+1)]`
-/

namespace A059135.P17157256804062934895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A166118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059135.P17157256804062934895

/-!
# A059136: A hierarchical sequence (W3{2,2}c - see A059126).

The programs for A059136, the canonical program `A059136.P16739539969006037217` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059136 has offset 0).

The definition of A059136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059136.P8844806725383016848

`A059128(3*n)+A059128(3*n+1)+A059128(3*n)`
-/

namespace A059136.P8844806725383016848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059128 (3 * n) + A059128 (3 * n + 1) + A059128 (3 * n)

end

end A059136.P8844806725383016848

namespace A059136

/-- `A059128(3*n)+A059128(3*n+1)+A059128(3*n)` -/
def P8844806725383016848.Spec : Prop :=
  ∀ n, P8844806725383016848.a n = A059136 n

end A059136

/-! ## A059136.P16739539969006037217

`6*A059126(n)-2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059136

/-- `6*A059126(n)-2` -/
def P16739539969006037217.Spec : Prop :=
  ∀ n, P16739539969006037217.a n = A059136 n

theorem P16739539969006037217.correct : P16739539969006037217.Spec := by
  intro n
  simp only [A059136]

end A059136

/-! ## A059136.P16554850632802437155

`A046549(A059126(n)²)`
-/

namespace A059136.P16554850632802437155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046549 (A059126 n ^ 2).toNat

end

end A059136.P16554850632802437155

namespace A059136

/-- `A046549(A059126(n)²)` -/
def P16554850632802437155.Spec : Prop :=
  ∀ n, P16554850632802437155.a n = A059136 n

end A059136

/-! ## A059136.P9624301543155671802

`A016957(log2(A059146(n)))`
-/

namespace A059136.P9624301543155671802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (SequenceMachineLib.roundAway (Real.logb 2 (A059146 n : ℝ))).toNat

end

end A059136.P9624301543155671802

namespace A059136

/-- `A016957(log2(A059146(n)))` -/
def P9624301543155671802.Spec : Prop :=
  ∀ n, P9624301543155671802.a n = A059136 n

end A059136

/-! ## A059136.P13781717827565488400

`A016957(A059126(n)-1)`
-/

namespace A059136.P13781717827565488400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A059126 n - 1).toNat

end

end A059136.P13781717827565488400

namespace A059136

/-- `A016957(A059126(n)-1)` -/
def P13781717827565488400.Spec : Prop :=
  ∀ n, P13781717827565488400.a n = A059136 n

end A059136

/-! ## A059136.P1194196820933128138

`A047230(2*A059126(n))`
-/

namespace A059136.P1194196820933128138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (2 * A059126 n).toNat

end

end A059136.P1194196820933128138

namespace A059136

/-- `A047230(2*A059126(n))` -/
def P1194196820933128138.Spec : Prop :=
  ∀ n, P1194196820933128138.a n = A059136 n

end A059136

/-! ## A059136.P8398080816947098089

`A047233(2*A059126(n))`
-/

namespace A059136.P8398080816947098089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (2 * A059126 n).toNat

end

end A059136.P8398080816947098089

namespace A059136

/-- `A047233(2*A059126(n))` -/
def P8398080816947098089.Spec : Prop :=
  ∀ n, P8398080816947098089.a n = A059136 n

end A059136

/-! ## A059136.P44410801592352594

`A047235(2*A059126(n))`
-/

namespace A059136.P44410801592352594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (2 * A059126 n).toNat

end

end A059136.P44410801592352594

namespace A059136

/-- `A047235(2*A059126(n))` -/
def P44410801592352594.Spec : Prop :=
  ∀ n, P44410801592352594.a n = A059136 n

end A059136

/-! ## A059136.P14392516350678589332

`A004275(3*A059126(n))`
-/

namespace A059136.P14392516350678589332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (3 * A059126 n).toNat

end

end A059136.P14392516350678589332

namespace A059136

/-- `A004275(3*A059126(n))` -/
def P14392516350678589332.Spec : Prop :=
  ∀ n, P14392516350678589332.a n = A059136 n

end A059136

/-! ## A059136.P12588175492113941129

`A059132(A059146(n)-1)`
-/

namespace A059136.P12588175492113941129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059132 (A059146 n - 1).toNat

end

end A059136.P12588175492113941129

namespace A059136

/-- `A059132(A059146(n)-1)` -/
def P12588175492113941129.Spec : Prop :=
  ∀ n, P12588175492113941129.a n = A059136 n

end A059136

/-!
# A059137: A hierarchical sequence (W3{2,2}cc - see A059126).

The programs for A059137, the canonical program `A059137.P16002026558254797629` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059137 has offset 0).

The definition of A059137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059137.P16002026558254797629

`18*A037227(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059137

/-- `18*A037227(n+1)` -/
def P16002026558254797629.Spec : Prop :=
  ∀ n, P16002026558254797629.a n = A059137 n

theorem P16002026558254797629.correct : P16002026558254797629.Spec := by
  intro n
  simp only [A059137]

end A059137

/-! ## A059137.P14673186199904056860

`A059136(3*n)+A059136(3*n+1)+A059136(3*n)`
-/

namespace A059137.P14673186199904056860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059136 (3 * n) + A059136 (3 * n + 1) + A059136 (3 * n)

end

end A059137.P14673186199904056860

namespace A059137

/-- `A059136(3*n)+A059136(3*n+1)+A059136(3*n)` -/
def P14673186199904056860.Spec : Prop :=
  ∀ n, P14673186199904056860.a n = A059137 n

end A059137

/-! ## A059137.P3471518926150142278

`36*val(n+1, 2)+18`
-/

namespace A059137.P3471518926150142278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * SequenceMachineLib.valuation (n + 1) 2 + 18

end

end A059137.P3471518926150142278

namespace A059137

/-- `36*val(n+1, 2)+18` -/
def P3471518926150142278.Spec : Prop :=
  ∀ n, (P3471518926150142278.a n : ℤ) = A059137 n

end A059137

/-! ## A059137.P11188893237579065867

`18*∑{d}[n+1, gcd(2, #)]/∑{d}[n+1, #%2]`
-/

namespace A059137.P11188893237579065867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  18 * (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℚ))

end

end A059137.P11188893237579065867

namespace A059137

/-- `18*∑{d}[n+1, gcd(2, #)]/∑{d}[n+1, #%2]` -/
def P11188893237579065867.Spec : Prop :=
  ∀ n, P11188893237579065867.a n = (A059137 n : ℚ)

end A059137

/-! ## A059137.P7597973952938762738

`6*(A059132(n)-1)`
-/

namespace A059137.P7597973952938762738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A059132 n - 1)

end

end A059137.P7597973952938762738

namespace A059137

/-- `6*(A059132(n)-1)` -/
def P7597973952938762738.Spec : Prop :=
  ∀ n, P7597973952938762738.a n = A059137 n

theorem P7597973952938762738.correct : P7597973952938762738.Spec := by
  intro n
  simp only [A059137, Nat.add_sub_cancel, A059137.P7597973952938762738.a, A059137.P16002026558254797629.a, A037227, A037227.P1481052513991100259.a, A059132, A059132.P10830951508121782954.a, A007814, A007814.P13537437864234730737.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059137

/-! ## A059137.P6364414019540710463

`6*A016945(val(n+1, 2))`
-/

namespace A059137.P6364414019540710463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A016945 (SequenceMachineLib.valuation (n + 1) 2)

end

end A059137.P6364414019540710463

namespace A059137

/-- `6*A016945(val(n+1, 2))` -/
def P6364414019540710463.Spec : Prop :=
  ∀ n, P6364414019540710463.a n = A059137 n

end A059137

/-! ## A059137.P6157218154014946492

`9*A016825(val(n+1, 2))`
-/

namespace A059137.P6157218154014946492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016825 (SequenceMachineLib.valuation (n + 1) 2)

end

end A059137.P6157218154014946492

namespace A059137

/-- `9*A016825(val(n+1, 2))` -/
def P6157218154014946492.Spec : Prop :=
  ∀ n, P6157218154014946492.a n = A059137 n

end A059137

/-! ## A059137.P7673355146999184384

`18*A005408(val(n+1, 2))`
-/

namespace A059137.P7673355146999184384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A005408 (SequenceMachineLib.valuation (n + 1) 2)

end

end A059137.P7673355146999184384

namespace A059137

/-- `18*A005408(val(n+1, 2))` -/
def P7673355146999184384.Spec : Prop :=
  ∀ n, P7673355146999184384.a n = A059137 n

end A059137

/-! ## A059137.P5806503004364704089

`A315582(A059132(n))`
-/

namespace A059137.P5806503004364704089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315582 (A059132 n).toNat

end

end A059137.P5806503004364704089

namespace A059137

/-- `A315582(A059132(n))` -/
def P5806503004364704089.Spec : Prop :=
  ∀ n, P5806503004364704089.a n = A059137 n

end A059137

/-! ## A059137.P9976284266845494400

`A059134(n)+A059134(n)-A059132(n)`
-/

namespace A059137.P9976284266845494400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059134 n + (A059134 n - A059132 n)

end

end A059137.P9976284266845494400

namespace A059137

/-- `A059134(n)+A059134(n)-A059132(n)` -/
def P9976284266845494400.Spec : Prop :=
  ∀ n, P9976284266845494400.a n = A059137 n

end A059137

/-! ## A059137.P13680264526848220394

`18*A059126(3*n)`
-/

namespace A059137.P13680264526848220394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A059126 (3 * n)

end

end A059137.P13680264526848220394

namespace A059137

/-- `18*A059126(3*n)` -/
def P13680264526848220394.Spec : Prop :=
  ∀ n, P13680264526848220394.a n = A059137 n

end A059137

/-! ## A059137.P18039337581642286774

`18*A001511((n+1)²)`
-/

namespace A059137.P18039337581642286774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A001511 ((n + 1) ^ 2)

end

end A059137.P18039337581642286774

namespace A059137

/-- `18*A001511((n+1)²)` -/
def P18039337581642286774.Spec : Prop :=
  ∀ n, P18039337581642286774.a n = A059137 n

end A059137

/-! ## A059137.P9234780354906622307

`18*A000005(A006519((n+1)²))`
-/

namespace A059137.P9234780354906622307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A000005 (A006519 ((n + 1) ^ 2)).toNat

end

end A059137.P9234780354906622307

namespace A059137

/-- `18*A000005(A006519((n+1)²))` -/
def P9234780354906622307.Spec : Prop :=
  ∀ n, P9234780354906622307.a n = A059137 n

end A059137

/-!
# A059138: A hierarchical sequence (S(W3{2,2}cc) - see A059126).

The programs for A059138, there is no canonical definition to state claims against.
-/

/-! ## A059138.P12450155482366751648

`6*∑[9*2^n-6]`
-/

namespace A059138.P12450155482366751648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * 2 ^ n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059138.P12450155482366751648

/-! ## A059138.P6807431019688794605

`∑[2*(a(n-1)+18)]` with `a(0)=18`
-/

namespace A059138.P6807431019688794605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  2 * (f1 (n - 1) + 18)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059138.P6807431019688794605

/-! ## A059138.P6129584265371618899

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=18, a(1)=90, a(2)=270`
-/

namespace A059138.P6129584265371618899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 90, 270] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A059138.P6129584265371618899

/-! ## A059138.P9804869042034455447

`∑[6*A089143(n)]`
-/

namespace A059138.P9804869042034455447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A089143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059138.P9804869042034455447

/-! ## A059138.P14415236631329738904

`A008600(A142964(n))`
-/

namespace A059138.P14415236631329738904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (A142964 n).toNat

end

end A059138.P14415236631329738904

/-!
# A059139: A hierarchical sequence (W2{2}*c - see A059126).

The programs for A059139, the canonical program `A059139.P8007015464797935688` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059139 has offset 0).

The definition of A059139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059139.P8007015464797935688

`4+3*A007814(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059139

/-- `4+3*A007814(n+1)` -/
def P8007015464797935688.Spec : Prop :=
  ∀ n, P8007015464797935688.a n = A059139 n

theorem P8007015464797935688.correct : P8007015464797935688.Spec := by
  intro n
  simp only [A059139]

end A059139

/-! ## A059139.P10075701839563100696

`3*val(n+1, 2)+4`
-/

namespace A059139.P10075701839563100696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (n + 1) 2 + 4

end

end A059139.P10075701839563100696

namespace A059139

/-- `3*val(n+1, 2)+4` -/
def P10075701839563100696.Spec : Prop :=
  ∀ n, (P10075701839563100696.a n : ℤ) = A059139 n

end A059139

/-! ## A059139.P17361490844760568539

`val((n+1)^3, 2)+4`
-/

namespace A059139.P17361490844760568539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 3) 2 + 4

end

end A059139.P17361490844760568539

namespace A059139

/-- `val((n+1)^3, 2)+4` -/
def P17361490844760568539.Spec : Prop :=
  ∀ n, (P17361490844760568539.a n : ℤ) = A059139 n

end A059139

/-! ## A059139.P13076223665984518318

`211%(69-val(n+1, 2))`
-/

namespace A059139.P13076223665984518318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 211 (69 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

end

end A059139.P13076223665984518318

namespace A059139

/-- `211%(69-val(n+1, 2))` -/
def P13076223665984518318.Spec : Prop :=
  ∀ n, P13076223665984518318.a n = A059139 n

end A059139

/-! ## A059139.P1120667793150936617

`ceil(3/acot(val(n+1, 2)+1))`
-/

namespace A059139.P1120667793150936617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℝ)⌉

end

end A059139.P1120667793150936617

namespace A059139

/-- `ceil(3/acot(val(n+1, 2)+1))` -/
def P1120667793150936617.Spec : Prop :=
  ∀ n, P1120667793150936617.a n = A059139 n

end A059139

/-! ## A059139.P7712563307181589697

`3*log2(xor(n, n+1)+1)+1`
-/

namespace A059139.P7712563307181589697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) + 1

end

end A059139.P7712563307181589697

namespace A059139

/-- `3*log2(xor(n, n+1)+1)+1` -/
def P7712563307181589697.Spec : Prop :=
  ∀ n, P7712563307181589697.a n = (A059139 n : ℝ)

end A059139

/-! ## A059139.P4510292200200163537

`3*log2(and(n+1, -(n+1)))+4`
-/

namespace A059139.P4510292200200163537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 4

end

end A059139.P4510292200200163537

namespace A059139

/-- `3*log2(and(n+1, -(n+1)))+4` -/
def P4510292200200163537.Spec : Prop :=
  ∀ n, P4510292200200163537.a n = (A059139 n : ℝ)

end A059139

/-! ## A059139.P12750430247693968756

`ceil(log2(A059154(n)))`
-/

namespace A059139.P12750430247693968756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A059154 n : ℝ)⌉

end

end A059139.P12750430247693968756

namespace A059139

/-- `ceil(log2(A059154(n)))` -/
def P12750430247693968756.Spec : Prop :=
  ∀ n, P12750430247693968756.a n = A059139 n

end A059139

/-! ## A059139.P15125246126651202215

`A059132(n)/2+2`
-/

namespace A059139.P15125246126651202215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059132 n : ℚ) / 2 + 2

end

end A059139.P15125246126651202215

namespace A059139

/-- `A059132(n)/2+2` -/
def P15125246126651202215.Spec : Prop :=
  ∀ n, P15125246126651202215.a n = (A059139 n : ℚ)

theorem P15125246126651202215.correct : P15125246126651202215.Spec := by
  intro n
  simp only [A059139, Nat.add_sub_cancel, A059139.P15125246126651202215.a, A059139.P8007015464797935688.a, A007814, A007814.P13537437864234730737.a, A059132, A059132.P10830951508121782954.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059139

/-! ## A059139.P12123416617959626817

`A059144(n)/3-1`
-/

namespace A059139.P12123416617959626817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059144 n : ℚ) / 3 - 1

end

end A059139.P12123416617959626817

namespace A059139

/-- `A059144(n)/3-1` -/
def P12123416617959626817.Spec : Prop :=
  ∀ n, P12123416617959626817.a n = (A059139 n : ℚ)

end A059139

/-! ## A059139.P5222141660473321340

`3*A085058(n)-2`
-/

namespace A059139.P5222141660473321340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085058 n - 2

end

end A059139.P5222141660473321340

namespace A059139

/-- `3*A085058(n)-2` -/
def P5222141660473321340.Spec : Prop :=
  ∀ n, P5222141660473321340.a n = A059139 n

theorem P5222141660473321340.correct : P5222141660473321340.Spec := by
  intro n
  simp only [A059139, Nat.add_sub_cancel, A059139.P5222141660473321340.a, A059139.P8007015464797935688.a, A007814, A007814.P13537437864234730737.a, A085058, A085058.P14130226451424256143.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059139

/-! ## A059139.P8214234819480159540

`val(Δ[A046092(n)²], 2)`
-/

namespace A059139.P8214234819480159540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A059139.P8214234819480159540

namespace A059139

/-- `val(Δ[A046092(n)²], 2)` -/
def P8214234819480159540.Spec : Prop :=
  ∀ n, (P8214234819480159540.a n : ℤ) = A059139 n

end A059139

/-! ## A059139.P7292983836563937593

`3*A001511(n+1)+1`
-/

namespace A059139.P7292983836563937593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001511 (n + 1) + 1

end

end A059139.P7292983836563937593

namespace A059139

/-- `3*A001511(n+1)+1` -/
def P7292983836563937593.Spec : Prop :=
  ∀ n, P7292983836563937593.a n = A059139 n

theorem P7292983836563937593.correct : P7292983836563937593.Spec := by
  intro n
  simp only [A059139, Nat.add_sub_cancel, A059139.P7292983836563937593.a, A059139.P8007015464797935688.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059139

/-! ## A059139.P17072604604594014426

`3*A090739(n+1)-5`
-/

namespace A059139.P17072604604594014426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090739 (n + 1) - 5

end

end A059139.P17072604604594014426

namespace A059139

/-- `3*A090739(n+1)-5` -/
def P17072604604594014426.Spec : Prop :=
  ∀ n, P17072604604594014426.a n = A059139 n

theorem P17072604604594014426.correct : P17072604604594014426.Spec := by
  intro n
  simp only [A059139, Nat.add_sub_cancel, A059139.P17072604604594014426.a, A059139.P8007015464797935688.a, A007814, A007814.P13537437864234730737.a, A090739, A090739.P11795774143711516918.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059139

/-! ## A059139.P4029096468519900707

`3*A001222(xor(n, n+1)+1)+1`
-/

namespace A059139.P4029096468519900707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001222 (Nat.xor n (n + 1) + 1) + 1

end

end A059139.P4029096468519900707

namespace A059139

/-- `3*A001222(xor(n, n+1)+1)+1` -/
def P4029096468519900707.Spec : Prop :=
  ∀ n, P4029096468519900707.a n = A059139 n

end A059139

/-! ## A059139.P3244104412057378056

`ceil(3/acot(A000005(or(n, n+1)-n)))`
-/

namespace A059139.P3244104412057378056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (A000005 (Nat.lor n (n + 1) - n) : ℝ)⌉

end

end A059139.P3244104412057378056

namespace A059139

/-- `ceil(3/acot(A000005(or(n, n+1)-n)))` -/
def P3244104412057378056.Spec : Prop :=
  ∀ n, P3244104412057378056.a n = A059139 n

end A059139

/-! ## A059139.P16911482431365066933

`A057357(A059141(n))`
-/

namespace A059139.P16911482431365066933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A059141 n).toNat

end

end A059139.P16911482431365066933

namespace A059139

/-- `A057357(A059141(n))` -/
def P16911482431365066933.Spec : Prop :=
  ∀ n, P16911482431365066933.a n = A059139 n

end A059139

/-! ## A059139.P16794242984053087769

`A084964(A059132(n))`
-/

namespace A059139.P16794242984053087769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A059132 n).toNat

end

end A059139.P16794242984053087769

namespace A059139

/-- `A084964(A059132(n))` -/
def P16794242984053087769.Spec : Prop :=
  ∀ n, P16794242984053087769.a n = A059139 n

end A059139

/-! ## A059139.P16040988691068464743

`A016777(A001511(n+1))`
-/

namespace A059139.P16040988691068464743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A001511 (n + 1)).toNat

end

end A059139.P16040988691068464743

namespace A059139

/-- `A016777(A001511(n+1))` -/
def P16040988691068464743.Spec : Prop :=
  ∀ n, P16040988691068464743.a n = A059139 n

end A059139

/-! ## A059139.P14313423827322014326

`A016777(A007814(n+1)+1)`
-/

namespace A059139.P14313423827322014326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A007814 (n + 1) + 1).toNat

end

end A059139.P14313423827322014326

namespace A059139

/-- `A016777(A007814(n+1)+1)` -/
def P14313423827322014326.Spec : Prop :=
  ∀ n, P14313423827322014326.a n = A059139 n

end A059139

/-!
# A059140: A hierarchical sequence (S(W2{2}*c) - see A059126).

The programs for A059140, there is no canonical definition to state claims against.
-/

/-! ## A059140.P18063552425875864309

`∑[7*2^n-3]`
-/

namespace A059140.P18063552425875864309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059140.P18063552425875864309

/-! ## A059140.P13302170874877998010

`ogf((4-x)/(1-4x+5x^2-2x^3))`
-/

namespace A059140.P13302170874877998010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1] [1, -4, 5, -2] n

end

end A059140.P13302170874877998010

/-! ## A059140.P10966540550561649803

`abs(∑[2*a(n-1)+3])` with `a(0)=4`
-/

namespace A059140.P10966540550561649803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059140.P10966540550561649803

/-! ## A059140.P11356063495031600415

`floor(∑[2*a(n-1)+3])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A059140.P11356063495031600415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059140.P11356063495031600415

/-! ## A059140.P4024985232261801197

`floor(∑[∑[2*a(n-1)]])` with `a(0)=4, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A059140.P4024985232261801197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059140.P4024985232261801197

/-!
# A059141: A hierarchical sequence (W2{3}*c - see A059126).

The programs for A059141, the canonical program `A059141.P11433520373228516255` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059141 has offset 0).

The definition of A059141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059141.P11433520373228516255

`7*val(n+1, 2)+11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059141

/-- `7*val(n+1, 2)+11` -/
def P11433520373228516255.Spec : Prop :=
  ∀ n, (P11433520373228516255.a n : ℤ) = A059141 n

theorem P11433520373228516255.correct : P11433520373228516255.Spec := by
  intro n
  simp only [A059141]

end A059141

/-! ## A059141.P7573927251022712769

`val((n+1)^7, 2)+11`
-/

namespace A059141.P7573927251022712769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 7) 2 + 11

end

end A059141.P7573927251022712769

namespace A059141

/-- `val((n+1)^7, 2)+11` -/
def P7573927251022712769.Spec : Prop :=
  ∀ n, (P7573927251022712769.a n : ℤ) = A059141 n

end A059141

/-! ## A059141.P299060153083926229

`7*floor(log2(xor(n, n+1)))+11`
-/

namespace A059141.P299060153083926229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.log 2 (Nat.xor n (n + 1)) + 11

end

end A059141.P299060153083926229

namespace A059141

/-- `7*floor(log2(xor(n, n+1)))+11` -/
def P299060153083926229.Spec : Prop :=
  ∀ n, (P299060153083926229.a n : ℤ) = A059141 n

end A059141

/-! ## A059141.P246749816919270268

`4-Δ[a(floor(n/2))-7*n]` with `a(0)=1`
-/

namespace A059141.P246749816919270268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A059141.P246749816919270268

namespace A059141

/-- `4-Δ[a(floor(n/2))-7*n]` -/
def P246749816919270268.Spec : Prop :=
  ∀ n, P246749816919270268.a n = A059141 n

end A059141

/-! ## A059141.P10240623477364346098

`A016993(val(n+1, 2))+10`
-/

namespace A059141.P10240623477364346098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (SequenceMachineLib.valuation (n + 1) 2) + 10

end

end A059141.P10240623477364346098

namespace A059141

/-- `A016993(val(n+1, 2))+10` -/
def P10240623477364346098.Spec : Prop :=
  ∀ n, P10240623477364346098.a n = A059141 n

theorem P10240623477364346098.correct : P10240623477364346098.Spec := by
  intro n
  simp only [A059141, Nat.add_sub_cancel, A059141.P10240623477364346098.a, A059141.P11433520373228516255.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059141

/-! ## A059141.P2528234538090351598

`7*A000005(xor(n, n+1)+1)-3`
-/

namespace A059141.P2528234538090351598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000005 (Nat.xor n (n + 1) + 1) - 3

end

end A059141.P2528234538090351598

namespace A059141

/-- `7*A000005(xor(n, n+1)+1)-3` -/
def P2528234538090351598.Spec : Prop :=
  ∀ n, P2528234538090351598.a n = A059141 n

end A059141

/-! ## A059141.P9923343179089232343

`7*A001222(xor(n, n+1)+1)+4`
-/

namespace A059141.P9923343179089232343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001222 (Nat.xor n (n + 1) + 1) + 4

end

end A059141.P9923343179089232343

namespace A059141

/-- `7*A001222(xor(n, n+1)+1)+4` -/
def P9923343179089232343.Spec : Prop :=
  ∀ n, P9923343179089232343.a n = A059141 n

end A059141

/-! ## A059141.P4051700716842610695

`7*A000005(or(n, n+1)-n)+4`
-/

namespace A059141.P4051700716842610695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000005 (Nat.lor n (n + 1) - n) + 4

end

end A059141.P4051700716842610695

namespace A059141

/-- `7*A000005(or(n, n+1)-n)+4` -/
def P4051700716842610695.Spec : Prop :=
  ∀ n, P4051700716842610695.a n = A059141 n

end A059141

/-! ## A059141.P8305887035536264593

`7*A000005(and(n+1, -(n+1)))+4`
-/

namespace A059141.P8305887035536264593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat + 4

end

end A059141.P8305887035536264593

namespace A059141

/-- `7*A000005(and(n+1, -(n+1)))+4` -/
def P8305887035536264593.Spec : Prop :=
  ∀ n, P8305887035536264593.a n = A059141 n

end A059141

/-! ## A059141.P16340893577216229285

`A047311(A059139(n))`
-/

namespace A059141.P16340893577216229285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047311 (A059139 n).toNat

end

end A059141.P16340893577216229285

namespace A059141

/-- `A047311(A059139(n))` -/
def P16340893577216229285.Spec : Prop :=
  ∀ n, P16340893577216229285.a n = A059141 n

end A059141

/-! ## A059141.P14624890511036576927

`A017029(A001511(n+1))`
-/

namespace A059141.P14624890511036576927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (A001511 (n + 1)).toNat

end

end A059141.P14624890511036576927

namespace A059141

/-- `A017029(A001511(n+1))` -/
def P14624890511036576927.Spec : Prop :=
  ∀ n, P14624890511036576927.a n = A059141 n

end A059141

/-! ## A059141.P16827833676532751004

`A168212(A366839(n+1))`
-/

namespace A059141.P16827833676532751004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168212 (A366839 (n + 1)).toNat

end

end A059141.P16827833676532751004

namespace A059141

/-- `A168212(A366839(n+1))` -/
def P16827833676532751004.Spec : Prop :=
  ∀ n, P16827833676532751004.a n = A059141 n

end A059141

/-! ## A059141.P903697498889137903

`A017053(A007814(n+1)+1)-2`
-/

namespace A059141.P903697498889137903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A007814 (n + 1) + 1).toNat - 2

end

end A059141.P903697498889137903

namespace A059141

/-- `A017053(A007814(n+1)+1)-2` -/
def P903697498889137903.Spec : Prop :=
  ∀ n, P903697498889137903.a n = A059141 n

end A059141

/-! ## A059141.P14702435205201910670

`A059139(n)+3+(A007814(n+1)+1)*4`
-/

namespace A059141.P14702435205201910670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059139 n + 3 + (A007814 (n + 1) + 1) * 4

end

end A059141.P14702435205201910670

namespace A059141

/-- `A059139(n)+3+(A007814(n+1)+1)*4` -/
def P14702435205201910670.Spec : Prop :=
  ∀ n, P14702435205201910670.a n = A059141 n

end A059141

/-! ## A059141.P14898560037534823105

`A007814(n+1)+A059144(n)-A059139(n)`
-/

namespace A059141.P14898560037534823105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A059144 n - A059139 n)

end

end A059141.P14898560037534823105

namespace A059141

/-- `A007814(n+1)+A059144(n)-A059139(n)` -/
def P14898560037534823105.Spec : Prop :=
  ∀ n, P14898560037534823105.a n = A059141 n

end A059141

/-! ## A059141.P15029234945287916217

`A059132(2*n+1)+A007814(2*(n+1))`
-/

namespace A059141.P15029234945287916217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059132 (2 * n + 1) + A007814 (2 * (n + 1))

end

end A059141.P15029234945287916217

namespace A059141

/-- `A059132(2*n+1)+A007814(2*(n+1))` -/
def P15029234945287916217.Spec : Prop :=
  ∀ n, P15029234945287916217.a n = A059141 n

end A059141

/-! ## A059141.P6849999468094686756

`A017113(A067029(2*(n+1)))-A067029(2*(n+1))`
-/

namespace A059141.P6849999468094686756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A067029 (2 * (n + 1))).toNat - A067029 (2 * (n + 1))

end

end A059141.P6849999468094686756

namespace A059141

/-- `A017113(A067029(2*(n+1)))-A067029(2*(n+1))` -/
def P6849999468094686756.Spec : Prop :=
  ∀ n, P6849999468094686756.a n = A059141 n

end A059141

/-! ## A059141.P18273590449190152021

`A017113(A136480(2*(n+1)))-A136480(2*(n+1))`
-/

namespace A059141.P18273590449190152021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A136480 (2 * (n + 1))).toNat - A136480 (2 * (n + 1))

end

end A059141.P18273590449190152021

namespace A059141

/-- `A017113(A136480(2*(n+1)))-A136480(2*(n+1))` -/
def P18273590449190152021.Spec : Prop :=
  ∀ n, P18273590449190152021.a n = A059141 n

end A059141

/-! ## A059141.P6945709727881906418

`A331164(A037239(n+1))`
-/

namespace A059141.P6945709727881906418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331164 (A037239 (n + 1)).toNat

end

end A059141.P6945709727881906418

namespace A059141

/-- `A331164(A037239(n+1))` -/
def P6945709727881906418.Spec : Prop :=
  ∀ n, P6945709727881906418.a n = A059141 n

end A059141

/-! ## A059141.P2485145350145328716

`A093700(A059144(n))`
-/

namespace A059141.P2485145350145328716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093700 (A059144 n).toNat

end

end A059141.P2485145350145328716

namespace A059141

/-- `A093700(A059144(n))` -/
def P2485145350145328716.Spec : Prop :=
  ∀ n, P2485145350145328716.a n = A059141 n

end A059141

/-!
# A059142: A hierarchical sequence (S(W2{3}*) - see A059126).

The programs for A059142, there is no canonical definition to state claims against.
-/

/-! ## A059142.P15504694424263748510

`∑[18*2^n-7]`
-/

namespace A059142.P15504694424263748510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * 2 ^ n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059142.P15504694424263748510

/-! ## A059142.P7963201699080137219

`ogf((11-4x)/(1-4x+5x^2-2x^3))`
-/

namespace A059142.P7963201699080137219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -4] [1, -4, 5, -2] n

end

end A059142.P7963201699080137219

/-! ## A059142.P15188050577459448974

`floor(∑[2*a(n-1)+7])` with `a(0)=11`

`floor` is left out, it is the identity on integers.
-/

namespace A059142.P15188050577459448974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  2 * f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059142.P15188050577459448974

/-! ## A059142.P6705097460361687908

`ceil(∑[2*a(n-1)+7])` with `a(0)=11`

`ceil` is left out, it is the identity on integers.
-/

namespace A059142.P6705097460361687908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  2 * f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059142.P6705097460361687908

/-! ## A059142.P17120863071226146656

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=11, a(1)=40, a(2)=105`
-/

namespace A059142.P17120863071226146656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 40, 105] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A059142.P17120863071226146656

/-!
# A059143: A hierarchical sequence (W3{2,2}*c - see A059126).

The programs for A059143, the canonical program `A059143.P3220239693564370248` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059143 has offset 0).

The definition of A059143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059131, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059143.P3220239693564370248

`A059131(3*n)+A059131(3*n+1)+A059131(3*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059143

/-- `A059131(3*n)+A059131(3*n+1)+A059131(3*n)` -/
def P3220239693564370248.Spec : Prop :=
  ∀ n, P3220239693564370248.a n = A059143 n

theorem P3220239693564370248.correct : P3220239693564370248.Spec := by
  intro n
  simp only [A059143]

end A059143

/-! ## A059143.P6280238688705334892

`3*(C(2, n%3)+val(∑[char[3*n]], 2))+1`
-/

namespace A059143.P6280238688705334892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.choose 2 (n % 3) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2) + 1

end

end A059143.P6280238688705334892

namespace A059143

/-- `3*(C(2, n%3)+val(∑[char[3*n]], 2))+1` -/
def P6280238688705334892.Spec : Prop :=
  ∀ n, (P6280238688705334892.a n : ℤ) = A059143 n

end A059143

/-! ## A059143.P4912102960397744980

`3*A059129(n)+1`
-/

namespace A059143.P4912102960397744980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059129 n + 1

end

end A059143.P4912102960397744980

namespace A059143

/-- `3*A059129(n)+1` -/
def P4912102960397744980.Spec : Prop :=
  ∀ n, P4912102960397744980.a n = A059143 n

end A059143

/-! ## A059143.P3691914875636128341

`∑{d}[A059163(n), 3%#]`
-/

namespace A059143.P3691914875636128341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059163 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 3 % d

end

end A059143.P3691914875636128341

namespace A059143

/-- `∑{d}[A059163(n), 3%#]` -/
def P3691914875636128341.Spec : Prop :=
  ∀ n, (P3691914875636128341.a n : ℤ) = A059143 n

end A059143

/-! ## A059143.P15225988742404922417

`3*floor(A059126(n)/2)+4`
-/

namespace A059143.P15225988742404922417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A059126 n : ℚ) / 2⌋ + 4

end

end A059143.P15225988742404922417

namespace A059143

/-- `3*floor(A059126(n)/2)+4` -/
def P15225988742404922417.Spec : Prop :=
  ∀ n, P15225988742404922417.a n = A059143 n

end A059143

/-! ## A059143.P12368625932006121513

`3*(val(abs(A099254(n)), 2)+1)+1`
-/

namespace A059143.P12368625932006121513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.valuation |A099254 n|.toNat 2 + 1) + 1

end

end A059143.P12368625932006121513

namespace A059143

/-- `3*(val(abs(A099254(n)), 2)+1)+1` -/
def P12368625932006121513.Spec : Prop :=
  ∀ n, (P12368625932006121513.a n : ℤ) = A059143 n

end A059143

/-! ## A059143.P10034727548557536358

`A016777(A059129(n))`
-/

namespace A059143.P10034727548557536358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A059129 n).toNat

end

end A059143.P10034727548557536358

namespace A059143

/-- `A016777(A059129(n))` -/
def P10034727548557536358.Spec : Prop :=
  ∀ n, P10034727548557536358.a n = A059143 n

end A059143

/-! ## A059143.P12916777406368454247

`A059139(A059149(n)-1)`
-/

namespace A059143.P12916777406368454247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059139 (A059149 n - 1).toNat

end

end A059143.P12916777406368454247

namespace A059143

/-- `A059139(A059149(n)-1)` -/
def P12916777406368454247.Spec : Prop :=
  ∀ n, P12916777406368454247.a n = A059143 n

end A059143

/-! ## A059143.P1705828591034259192

`A004219(2*A059149(n))+1`
-/

namespace A059143.P1705828591034259192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (2 * A059149 n).toNat + 1

end

end A059143.P1705828591034259192

namespace A059143

/-- `A004219(2*A059149(n))+1` -/
def P1705828591034259192.Spec : Prop :=
  ∀ n, P1705828591034259192.a n = A059143 n

end A059143

/-! ## A059143.P2556301170010734506

`A016777(A000005(A059149(n)))`
-/

namespace A059143.P2556301170010734506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000005 (A059149 n).toNat).toNat

end

end A059143.P2556301170010734506

namespace A059143

/-- `A016777(A000005(A059149(n)))` -/
def P2556301170010734506.Spec : Prop :=
  ∀ n, P2556301170010734506.a n = A059143 n

end A059143

/-! ## A059143.P9110001245940812476

`A360911(A059163(n))`
-/

namespace A059143.P9110001245940812476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360911 (A059163 n).toNat

end

end A059143.P9110001245940812476

namespace A059143

/-- `A360911(A059163(n))` -/
def P9110001245940812476.Spec : Prop :=
  ∀ n, P9110001245940812476.a n = A059143 n

end A059143

/-! ## A059143.P4595661412511096641

`A004219(3*A059149(n))`
-/

namespace A059143.P4595661412511096641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (3 * A059149 n).toNat

end

end A059143.P4595661412511096641

namespace A059143

/-- `A004219(3*A059149(n))` -/
def P4595661412511096641.Spec : Prop :=
  ∀ n, P4595661412511096641.a n = A059143 n

end A059143

/-! ## A059143.P6941083133196986826

`A007306(5*A059149(n))`
-/

namespace A059143.P6941083133196986826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (5 * A059149 n).toNat

end

end A059143.P6941083133196986826

namespace A059143

/-- `A007306(5*A059149(n))` -/
def P6941083133196986826.Spec : Prop :=
  ∀ n, P6941083133196986826.a n = A059143 n

end A059143

/-!
# A059144: A hierarchical sequence (W3{2,2}*cc - see A059126).

The programs for A059144, the canonical program `A059144.P1467077077877523239` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059144 has offset 0).

The definition of A059144 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059143, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059144.P1467077077877523239

`A059143(3*n)+A059143(3*n+1)+A059143(3*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059144

/-- `A059143(3*n)+A059143(3*n+1)+A059143(3*n)` -/
def P1467077077877523239.Spec : Prop :=
  ∀ n, P1467077077877523239.a n = A059144 n

theorem P1467077077877523239.correct : P1467077077877523239.Spec := by
  intro n
  simp only [A059144]

end A059144

/-! ## A059144.P14435339483612447036

`9*val(n+1, 2)+15`
-/

namespace A059144.P14435339483612447036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.valuation (n + 1) 2 + 15

end

end A059144.P14435339483612447036

namespace A059144

/-- `9*val(n+1, 2)+15` -/
def P14435339483612447036.Spec : Prop :=
  ∀ n, (P14435339483612447036.a n : ℤ) = A059144 n

end A059144

/-! ## A059144.P10100882784423966072

`lcm(3, val((n+1)^3, 2)+5)`
-/

namespace A059144.P10100882784423966072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (SequenceMachineLib.valuation ((n + 1) ^ 3) 2 + 5)

end

end A059144.P10100882784423966072

namespace A059144

/-- `lcm(3, val((n+1)^3, 2)+5)` -/
def P10100882784423966072.Spec : Prop :=
  ∀ n, (P10100882784423966072.a n : ℤ) = A059144 n

end A059144

/-! ## A059144.P14758435988013047061

`val(n+1, 2)/(1/3)²+15`
-/

namespace A059144.P14758435988013047061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) / ((1 : ℚ) / 3) ^ 2 + 15

end

end A059144.P14758435988013047061

namespace A059144

/-- `val(n+1, 2)/(1/3)²+15` -/
def P14758435988013047061.Spec : Prop :=
  ∀ n, P14758435988013047061.a n = (A059144 n : ℚ)

end A059144

/-! ## A059144.P11066074522425885859

`3*(3*∑{e}[or(n+1, -(n+1)), #]+5)`
-/

namespace A059144.P11066074522425885859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (3 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + 5)

end

end A059144.P11066074522425885859

namespace A059144

/-- `3*(3*∑{e}[or(n+1, -(n+1)), #]+5)` -/
def P11066074522425885859.Spec : Prop :=
  ∀ n, (P11066074522425885859.a n : ℤ) = A059144 n

end A059144

/-! ## A059144.P6247464505748238959

`3*(A059139(n)+1)`
-/

namespace A059144.P6247464505748238959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A059139 n + 1)

end

end A059144.P6247464505748238959

namespace A059144

/-- `3*(A059139(n)+1)` -/
def P6247464505748238959.Spec : Prop :=
  ∀ n, P6247464505748238959.a n = A059144 n

end A059144

/-! ## A059144.P16283740883971754837

`9*A085058(n)-3`
-/

namespace A059144.P16283740883971754837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A085058 n - 3

end

end A059144.P16283740883971754837

namespace A059144

/-- `9*A085058(n)-3` -/
def P16283740883971754837.Spec : Prop :=
  ∀ n, P16283740883971754837.a n = A059144 n

end A059144

/-! ## A059144.P12720466968364706187

`Δ[9*A005187(n)]+6`
-/

namespace A059144.P12720466968364706187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 6

end

end A059144.P12720466968364706187

namespace A059144

/-- `Δ[9*A005187(n)]+6` -/
def P12720466968364706187.Spec : Prop :=
  ∀ n, P12720466968364706187.a n = A059144 n

end A059144

/-! ## A059144.P6289690835829777832

`24-Δ[9*A000120(n)]`
-/

namespace A059144.P6289690835829777832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 - (f1 (n + 1) - f1 n)

end

end A059144.P6289690835829777832

namespace A059144

/-- `24-Δ[9*A000120(n)]` -/
def P6289690835829777832.Spec : Prop :=
  ∀ n, P6289690835829777832.a n = A059144 n

end A059144

/-! ## A059144.P16731333842841000452

`3*(A059132(n)/2+3)`
-/

namespace A059144.P16731333842841000452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A059132 n : ℚ) / 2 + 3)

end

end A059144.P16731333842841000452

namespace A059144

/-- `3*(A059132(n)/2+3)` -/
def P16731333842841000452.Spec : Prop :=
  ∀ n, P16731333842841000452.a n = (A059144 n : ℚ)

end A059144

/-! ## A059144.P776320962168715063

`A017233(A001511(n+1))`
-/

namespace A059144.P776320962168715063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A001511 (n + 1)).toNat

end

end A059144.P776320962168715063

namespace A059144

/-- `A017233(A001511(n+1))` -/
def P776320962168715063.Spec : Prop :=
  ∀ n, P776320962168715063.a n = A059144 n

end A059144

/-! ## A059144.P1705443638835376139

`A179805(A090739(n+1))`
-/

namespace A059144.P1705443638835376139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A090739 (n + 1)).toNat

end

end A059144.P1705443638835376139

namespace A059144

/-- `A179805(A090739(n+1))` -/
def P1705443638835376139.Spec : Prop :=
  ∀ n, P1705443638835376139.a n = A059144 n

end A059144

/-! ## A059144.P3409603472764211820

`A269416(A366839(n+1))`
-/

namespace A059144.P3409603472764211820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269416 (A366839 (n + 1)).toNat

end

end A059144.P3409603472764211820

namespace A059144

/-- `A269416(A366839(n+1))` -/
def P3409603472764211820.Spec : Prop :=
  ∀ n, P3409603472764211820.a n = A059144 n

end A059144

/-! ## A059144.P7839284699338510173

`A017245(A007814(n+1)+1)-1`
-/

namespace A059144.P7839284699338510173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A007814 (n + 1) + 1).toNat - 1

end

end A059144.P7839284699338510173

namespace A059144

/-- `A017245(A007814(n+1)+1)-1` -/
def P7839284699338510173.Spec : Prop :=
  ∀ n, P7839284699338510173.a n = A059144 n

end A059144

/-! ## A059144.P1146243316656668642

`A059139(n)+A059141(n)-A007814(n+1)`
-/

namespace A059144.P1146243316656668642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059139 n + (A059141 n - A007814 (n + 1))

end

end A059144.P1146243316656668642

namespace A059144

/-- `A059139(n)+A059141(n)-A007814(n+1)` -/
def P1146243316656668642.Spec : Prop :=
  ∀ n, P1146243316656668642.a n = A059144 n

end A059144

/-! ## A059144.P15381755204798163020

`A059132(2*n+1)+A004526(A059132(2*n+1))`
-/

namespace A059144.P15381755204798163020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059132 (2 * n + 1) + A004526 (A059132 (2 * n + 1)).toNat

end

end A059144.P15381755204798163020

namespace A059144

/-- `A059132(2*n+1)+A004526(A059132(2*n+1))` -/
def P15381755204798163020.Spec : Prop :=
  ∀ n, P15381755204798163020.a n = A059144 n

end A059144

/-!
# A059145: A hierarchical sequence (S(W3{2,2}*cc) - see A059126).

The programs for A059145, there is no canonical definition to state claims against.
-/

/-! ## A059145.P18366212478752400919

`∑[24*2^n-9]`
-/

namespace A059145.P18366212478752400919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * 2 ^ n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059145.P18366212478752400919

/-! ## A059145.P14271679371457711780

`ogf((15-6x)/(1-4x+5x^2-2x^3))`
-/

namespace A059145.P14271679371457711780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -6] [1, -4, 5, -2] n

end

end A059145.P14271679371457711780

/-! ## A059145.P5483317114152829134

`3*∑[2*a(n-1)+3]` with `a(0)=5`
-/

namespace A059145.P5483317114152829134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059145.P5483317114152829134

/-! ## A059145.P16356743126526658803

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=15, a(1)=54, a(2)=141`
-/

namespace A059145.P16356743126526658803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 54, 141] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A059145.P16356743126526658803

/-! ## A059145.P14843901480582437474

`3*A109363(n+2)`
-/

namespace A059145.P14843901480582437474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109363 (n + 2)

end

end A059145.P14843901480582437474

/-!
# A059146: A hierarchical sequence (W'2{2} - see A059126).

The programs for A059146, the canonical program `A059146.P9090514571194067663` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059146 has offset 0).

The definition of A059146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059146.P5408339688426619535

`sqrt(A059156(n))/2`
-/

namespace A059146.P5408339688426619535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059156 n : ℝ) / 2

end

end A059146.P5408339688426619535

namespace A059146

/-- `sqrt(A059156(n))/2` -/
def P5408339688426619535.Spec : Prop :=
  ∀ n, P5408339688426619535.a n = (A059146 n : ℝ)

end A059146

/-! ## A059146.P15909139668327656435

`2^(A059126(n)-1)`
-/

namespace A059146.P15909139668327656435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059126 n - 1 : ℤ)

end

end A059146.P15909139668327656435

namespace A059146

/-- `2^(A059126(n)-1)` -/
def P15909139668327656435.Spec : Prop :=
  ∀ n, P15909139668327656435.a n = (A059146 n : ℚ)

end A059146

/-! ## A059146.P5673247153830580788

`A059149(n)²/C(2, n%3)`
-/

namespace A059146.P5673247153830580788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059149 n ^ 2 : ℚ) / (Nat.choose 2 (n % 3) : ℚ)

end

end A059146.P5673247153830580788

namespace A059146

/-- `A059149(n)²/C(2, n%3)` -/
def P5673247153830580788.Spec : Prop :=
  ∀ n, P5673247153830580788.a n = (A059146 n : ℚ)

end A059146

/-! ## A059146.P9090514571194067663

`A011782(A059126(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059146

/-- `A011782(A059126(n))` -/
def P9090514571194067663.Spec : Prop :=
  ∀ n, P9090514571194067663.a n = A059146 n

theorem P9090514571194067663.correct : P9090514571194067663.Spec := by
  intro n
  simp only [A059146]

end A059146

/-! ## A059146.P10314811484105478431

`A166444(A059126(n)+1)`
-/

namespace A059146.P10314811484105478431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A059126 n + 1).toNat

end

end A059146.P10314811484105478431

namespace A059146

/-- `A166444(A059126(n)+1)` -/
def P10314811484105478431.Spec : Prop :=
  ∀ n, P10314811484105478431.a n = A059146 n

end A059146

/-! ## A059146.P5872514970344138348

`A000079(A059126(n)-1)`
-/

namespace A059146.P5872514970344138348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059126 n - 1).toNat

end

end A059146.P5872514970344138348

namespace A059146

/-- `A000079(A059126(n)-1)` -/
def P5872514970344138348.Spec : Prop :=
  ∀ n, P5872514970344138348.a n = A059146 n

end A059146

/-! ## A059146.P10552732650061527176

`A059149(n)²/A131534(n)`
-/

namespace A059146.P10552732650061527176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059149 n ^ 2 : ℚ) / (A131534 n : ℚ)

end

end A059146.P10552732650061527176

namespace A059146

/-- `A059149(n)²/A131534(n)` -/
def P10552732650061527176.Spec : Prop :=
  ∀ n, P10552732650061527176.a n = (A059146 n : ℚ)

end A059146

/-! ## A059146.P5122221264935339687

`A016116(2*(A059126(n)-1))`
-/

namespace A059146.P5122221264935339687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (A059126 n - 1)).toNat

end

end A059146.P5122221264935339687

namespace A059146

/-- `A016116(2*(A059126(n)-1))` -/
def P5122221264935339687.Spec : Prop :=
  ∀ n, P5122221264935339687.a n = A059146 n

end A059146

/-! ## A059146.P9243496879028923246

`A016116(2*A059126(n))/2`
-/

namespace A059146.P9243496879028923246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * A059126 n).toNat : ℚ) / 2

end

end A059146.P9243496879028923246

namespace A059146

/-- `A016116(2*A059126(n))/2` -/
def P9243496879028923246.Spec : Prop :=
  ∀ n, P9243496879028923246.a n = (A059146 n : ℚ)

end A059146

/-! ## A059146.P4647293906400981753

`A016116(A059126(n)+A059126(n)-1)`
-/

namespace A059146.P4647293906400981753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A059126 n + (A059126 n - 1)).toNat

end

end A059146.P4647293906400981753

namespace A059146

/-- `A016116(A059126(n)+A059126(n)-1)` -/
def P4647293906400981753.Spec : Prop :=
  ∀ n, P4647293906400981753.a n = A059146 n

end A059146

/-! ## A059146.P14224433245673560141

`A016116(A059126(n)-(1-A059126(n)))`
-/

namespace A059146.P14224433245673560141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A059126 n - (1 - A059126 n)).toNat

end

end A059146.P14224433245673560141

namespace A059146

/-- `A016116(A059126(n)-(1-A059126(n)))` -/
def P14224433245673560141.Spec : Prop :=
  ∀ n, P14224433245673560141.a n = A059146 n

end A059146

/-! ## A059146.P3230842380042474005

`sqrt(A059148(3*n))`
-/

namespace A059146.P3230842380042474005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059148 (3 * n) : ℝ)

end

end A059146.P3230842380042474005

namespace A059146

/-- `sqrt(A059148(3*n))` -/
def P3230842380042474005.Spec : Prop :=
  ∀ n, P3230842380042474005.a n = (A059146 n : ℝ)

end A059146

/-! ## A059146.P14875113161676430611

`2^A001222(2^A059126(n)/2)`
-/

namespace A059146.P14875113161676430611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059126 n : ℤ) / 2)).toNat : ℤ)

end

end A059146.P14875113161676430611

namespace A059146

/-- `2^A001222(2^A059126(n)/2)` -/
def P14875113161676430611.Spec : Prop :=
  ∀ n, P14875113161676430611.a n = (A059146 n : ℚ)

end A059146

/-! ## A059146.P4687416875609913310

`A000010(sqrt(A059156(n)))`
-/

namespace A059146.P4687416875609913310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A059156 n : ℝ))).toNat

end

end A059146.P4687416875609913310

namespace A059146

/-- `A000010(sqrt(A059156(n)))` -/
def P4687416875609913310.Spec : Prop :=
  ∀ n, P4687416875609913310.a n = A059146 n

end A059146

/-! ## A059146.P7968120187421579742

`A000010(2^A059126(n))`
-/

namespace A059146.P7968120187421579742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059126 n : ℤ))).toNat

end

end A059146.P7968120187421579742

namespace A059146

/-- `A000010(2^A059126(n))` -/
def P7968120187421579742.Spec : Prop :=
  ∀ n, P7968120187421579742.a n = A059146 n

end A059146

/-!
# A059147: A hierarchical sequence (W'2{3} - see A059126).

The programs for A059147, there is no canonical definition to state claims against.
-/

/-! ## A059147.P13909167811104125412

`2^(A059127(n)-1)`
-/

namespace A059147.P13909167811104125412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059127 n - 1 : ℤ)

end

end A059147.P13909167811104125412

/-! ## A059147.P15193195039019279890

`A011782(A059127(n))`
-/

namespace A059147.P15193195039019279890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059127 n).toNat

end

end A059147.P15193195039019279890

/-! ## A059147.P5235724111603603300

`A000079(A059127(n)-1)`
-/

namespace A059147.P5235724111603603300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059127 n - 1).toNat

end

end A059147.P5235724111603603300

/-! ## A059147.P8807810349091756119

`2^A059127(n)/A000040((-1)^(2*n))`
-/

namespace A059147.P8807810349091756119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059127 n : ℤ) / (A000040 ((-1) ^ (2 * n)).toNat : ℚ)

end

end A059147.P8807810349091756119

/-! ## A059147.P16782147472958896079

`2^A059127(n)/2*A000203(gcd(n, n+1))`
-/

namespace A059147.P16782147472958896079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059127 n : ℤ) / 2 * (A000203 (Nat.gcd n (n + 1)) : ℚ)

end

end A059147.P16782147472958896079

/-! ## A059147.P7788923558092678466

`A000010(2^A059127(n))`
-/

namespace A059147.P7788923558092678466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059127 n : ℤ))).toNat

end

end A059147.P7788923558092678466

/-!
# A059148: A hierarchical sequence (W'3{2,2} - see A059126).

The programs for A059148, there is no canonical definition to state claims against.
-/

/-! ## A059148.P17467674815951541027

`2^(A059128(n)-1)`
-/

namespace A059148.P17467674815951541027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059128 n - 1 : ℤ)

end

end A059148.P17467674815951541027

/-! ## A059148.P16613178794939363381

`A011782(A059128(n))`
-/

namespace A059148.P16613178794939363381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059128 n).toNat

end

end A059148.P16613178794939363381

/-! ## A059148.P9645207696755712266

`A000079(A059128(n)-1)`
-/

namespace A059148.P9645207696755712266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059128 n - 1).toNat

end

end A059148.P9645207696755712266

/-! ## A059148.P6070072443721943738

`gcd(2, A054842(A004086(n+1)))^A059128(n)/2`
-/

namespace A059148.P6070072443721943738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A054842 (A004086 (n + 1)).toNat) : ℚ) ^ (A059128 n : ℤ) / 2

end

end A059148.P6070072443721943738

/-! ## A059148.P7187631406303675513

`2^A059128(n)/2*A002260(Δ[A004523(n)]+1)`
-/

namespace A059148.P7187631406303675513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059128 n : ℤ) / 2 * (A002260 (f1 (n + 1) - f1 n + 1).toNat : ℚ)

end

end A059148.P7187631406303675513

/-! ## A059148.P13911859710076874329

`A000010(2^A059128(n))`
-/

namespace A059148.P13911859710076874329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059128 n : ℤ))).toNat

end

end A059148.P13911859710076874329

/-! ## A059148.P13351130184466139239

`A004526(2^A059128(n))`
-/

namespace A059148.P13351130184466139239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059128 n : ℤ))).toNat

end

end A059148.P13351130184466139239

/-!
# A059149: A hierarchical sequence (W'2{2}* - see A059126).

The programs for A059149, the canonical program `A059149.P6273711001114290364` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059149 has offset 0).

The definition of A059149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059149.P830479653729429797

`2^(C(2, n%3)+val(∑[char[3*n]], 2)+1)/4`
-/

namespace A059149.P830479653729429797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (Nat.choose 2 (n % 3) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1) : ℚ) / 4

end

end A059149.P830479653729429797

namespace A059149

/-- `2^(C(2, n%3)+val(∑[char[3*n]], 2)+1)/4` -/
def P830479653729429797.Spec : Prop :=
  ∀ n, P830479653729429797.a n = (A059149 n : ℚ)

end A059149

/-! ## A059149.P13676561437030927063

`A059163(n)/4`
-/

namespace A059149.P13676561437030927063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059163 n : ℚ) / 4

end

end A059149.P13676561437030927063

namespace A059149

/-- `A059163(n)/4` -/
def P13676561437030927063.Spec : Prop :=
  ∀ n, P13676561437030927063.a n = (A059149 n : ℚ)

end A059149

/-! ## A059149.P13644924064222197901

`2^(A059129(n)-1)`
-/

namespace A059149.P13644924064222197901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059129 n - 1 : ℤ)

end

end A059149.P13644924064222197901

namespace A059149

/-- `2^(A059129(n)-1)` -/
def P13644924064222197901.Spec : Prop :=
  ∀ n, P13644924064222197901.a n = (A059149 n : ℚ)

end A059149

/-! ## A059149.P8905699341867343662

`2^floor(A059126(n)/2)`
-/

namespace A059149.P8905699341867343662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(A059126 n : ℚ) / 2⌋ : ℤ)

end

end A059149.P8905699341867343662

namespace A059149

/-- `2^floor(A059126(n)/2)` -/
def P8905699341867343662.Spec : Prop :=
  ∀ n, P8905699341867343662.a n = (A059149 n : ℚ)

end A059149

/-! ## A059149.P3097022224958918125

`gcd(2^ceil(log2(n+1)), A099470(n+1))`
-/

namespace A059149.P3097022224958918125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) (A099470 (n + 1))

end

end A059149.P3097022224958918125

namespace A059149

/-- `gcd(2^ceil(log2(n+1)), A099470(n+1))` -/
def P3097022224958918125.Spec : Prop :=
  ∀ n, (P3097022224958918125.a n : ℤ) = A059149 n

end A059149

/-! ## A059149.P6710755197426187411

`A006519(C(2, n%3)*∑[char[3*n]])`
-/

namespace A059149.P6710755197426187411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Nat.choose 2 (n % 3) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A059149.P6710755197426187411

namespace A059149

/-- `A006519(C(2, n%3)*∑[char[3*n]])` -/
def P6710755197426187411.Spec : Prop :=
  ∀ n, P6710755197426187411.a n = A059149 n

end A059149

/-! ## A059149.P6273711001114290364

`A016116(A059126(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059149

/-- `A016116(A059126(n))` -/
def P6273711001114290364.Spec : Prop :=
  ∀ n, P6273711001114290364.a n = A059149 n

theorem P6273711001114290364.correct : P6273711001114290364.Spec := by
  intro n
  simp only [A059149]

end A059149

/-! ## A059149.P13840213019255651385

`A006519(abs(A099254(n)))`
-/

namespace A059149.P13840213019255651385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 |A099254 n|.toNat

end

end A059149.P13840213019255651385

namespace A059149

/-- `A006519(abs(A099254(n)))` -/
def P13840213019255651385.Spec : Prop :=
  ∀ n, P13840213019255651385.a n = A059149 n

end A059149

/-! ## A059149.P2620385237378232719

`A000010(2^A059129(n))`
-/

namespace A059149.P2620385237378232719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059129 n : ℤ))).toNat

end

end A059149.P2620385237378232719

namespace A059149

/-- `A000010(2^A059129(n))` -/
def P2620385237378232719.Spec : Prop :=
  ∀ n, P2620385237378232719.a n = A059149 n

end A059149

/-! ## A059149.P10781456217448584331

`and(A099254(n), A099470(n+1))`
-/

namespace A059149.P10781456217448584331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099254 n) (A099470 (n + 1))

end

end A059149.P10781456217448584331

namespace A059149

/-- `and(A099254(n), A099470(n+1))` -/
def P10781456217448584331.Spec : Prop :=
  ∀ n, P10781456217448584331.a n = A059149 n

end A059149

/-! ## A059149.P6721952072511088793

`A020639(A000040(n+1)+1)^val(2^A059126(n), 4)`
-/

namespace A059149.P6721952072511088793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) + 1).toNat ^ SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059126 n : ℤ))).toNat 4

end

end A059149.P6721952072511088793

namespace A059149

/-- `A020639(A000040(n+1)+1)^val(2^A059126(n), 4)` -/
def P6721952072511088793.Spec : Prop :=
  ∀ n, P6721952072511088793.a n = A059149 n

end A059149

/-! ## A059149.P15177469338726605528

`A002016(A059163(n))`
-/

namespace A059149.P15177469338726605528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002016 (A059163 n).toNat

end

end A059149.P15177469338726605528

namespace A059149

/-- `A002016(A059163(n))` -/
def P15177469338726605528.Spec : Prop :=
  ∀ n, P15177469338726605528.a n = A059149 n

end A059149

/-! ## A059149.P16938304344422234161

`A006519(lcm(A006519(2*n+1), A099254(n)))`
-/

namespace A059149.P16938304344422234161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.lcm (A006519 (2 * n + 1)) (A099254 n))

end

end A059149.P16938304344422234161

namespace A059149

/-- `A006519(lcm(A006519(2*n+1), A099254(n)))` -/
def P16938304344422234161.Spec : Prop :=
  ∀ n, P16938304344422234161.a n = A059149 n

end A059149

/-! ## A059149.P241840119772440377

`A006519(lcm(3, A099254(n)))`
-/

namespace A059149.P241840119772440377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.lcm 3 (A099254 n))

end

end A059149.P241840119772440377

namespace A059149

/-- `A006519(lcm(3, A099254(n)))` -/
def P241840119772440377.Spec : Prop :=
  ∀ n, P241840119772440377.a n = A059149 n

end A059149

/-! ## A059149.P2354614654468960092

`A059150(A047354(n+1))`
-/

namespace A059149.P2354614654468960092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (A047354 (n + 1)).toNat

end

end A059149.P2354614654468960092

namespace A059149

/-- `A059150(A047354(n+1))` -/
def P2354614654468960092.Spec : Prop :=
  ∀ n, P2354614654468960092.a n = A059149 n

end A059149

/-! ## A059149.P9110260715482951

`A059150(A047275(n+1))`
-/

namespace A059149.P9110260715482951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (A047275 (n + 1)).toNat

end

end A059149.P9110260715482951

namespace A059149

/-- `A059150(A047275(n+1))` -/
def P9110260715482951.Spec : Prop :=
  ∀ n, P9110260715482951.a n = A059149 n

end A059149

/-! ## A059149.P14450736629655288430

`A059150(A047347(n+1))`
-/

namespace A059149.P14450736629655288430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (A047347 (n + 1)).toNat

end

end A059149.P14450736629655288430

namespace A059149

/-- `A059150(A047347(n+1))` -/
def P14450736629655288430.Spec : Prop :=
  ∀ n, P14450736629655288430.a n = A059149 n

end A059149

/-! ## A059149.P910121087112920356

`A059150(A047320(n+1))`
-/

namespace A059149.P910121087112920356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (A047320 (n + 1)).toNat

end

end A059149.P910121087112920356

namespace A059149

/-- `A059150(A047320(n+1))` -/
def P910121087112920356.Spec : Prop :=
  ∀ n, P910121087112920356.a n = A059149 n

end A059149

/-! ## A059149.P14666295912989357933

`A059150(A047323(n+1))`
-/

namespace A059149.P14666295912989357933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (A047323 (n + 1)).toNat

end

end A059149.P14666295912989357933

namespace A059149

/-- `A059150(A047323(n+1))` -/
def P14666295912989357933.Spec : Prop :=
  ∀ n, P14666295912989357933.a n = A059149 n

end A059149

/-! ## A059149.P6536866265192384623

`A059150(A047311(2*(n+1))-A047311(n+2))`
-/

namespace A059149.P6536866265192384623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (A047311 (2 * (n + 1)) - A047311 (n + 2)).toNat

end

end A059149.P6536866265192384623

namespace A059149

/-- `A059150(A047311(2*(n+1))-A047311(n+2))` -/
def P6536866265192384623.Spec : Prop :=
  ∀ n, P6536866265192384623.a n = A059149 n

end A059149

/-!
# A059150: A hierarchical sequence (W'2{3}* - see A059126).

The programs for A059150, there is no canonical definition to state claims against.
-/

/-! ## A059150.P8666555494493823044

`2^(A059130(n)-1)`
-/

namespace A059150.P8666555494493823044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059130 n - 1 : ℤ)

end

end A059150.P8666555494493823044

/-! ## A059150.P16592800780447333885

`A011782(A059130(n))`
-/

namespace A059150.P16592800780447333885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059130 n).toNat

end

end A059150.P16592800780447333885

/-! ## A059150.P3751663417659342682

`A060547(A059127(n)+1)`
-/

namespace A059150.P3751663417659342682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (A059127 n + 1).toNat

end

end A059150.P3751663417659342682

/-! ## A059150.P5400415350315646005

`A000079(A059130(n)-1)`
-/

namespace A059150.P5400415350315646005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059130 n - 1).toNat

end

end A059150.P5400415350315646005

/-! ## A059150.P5868675390032929438

`A000010(2^A059130(n))`
-/

namespace A059150.P5868675390032929438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059130 n : ℤ))).toNat

end

end A059150.P5868675390032929438

/-! ## A059150.P8724798498372808498

`A020639(2*(n+1))^A059130(n)/2`
-/

namespace A059150.P8724798498372808498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) : ℚ) ^ (A059130 n : ℤ) / 2

end

end A059150.P8724798498372808498

/-! ## A059150.P8427539972716560240

`(A007318(C(2, n))+1)^A059130(n)/2`
-/

namespace A059150.P8427539972716560240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) + 1 : ℚ) ^ (A059130 n : ℤ) / 2

end

end A059150.P8427539972716560240

/-! ## A059150.P3770498046314556526

`A000079(A008611(A059127(n)))`
-/

namespace A059150.P3770498046314556526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008611 (A059127 n).toNat).toNat

end

end A059150.P3770498046314556526

/-! ## A059150.P15008760500267632510

`floor(A020639(A000040(n+1)+1)^A059130(n)/2)`
-/

namespace A059150.P15008760500267632510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (A000040 (n + 1) + 1).toNat : ℚ) ^ (A059130 n : ℤ) / 2⌋

end

end A059150.P15008760500267632510

/-! ## A059150.P2068916613293105529

`ceil(A020639(A000005((n+1)²+1)+2)^A059130(n)/2)`
-/

namespace A059150.P2068916613293105529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (A000005 ((n + 1) ^ 2 + 1) + 2).toNat : ℚ) ^ (A059130 n : ℤ) / 2⌉

end

end A059150.P2068916613293105529

/-! ## A059150.P5391061050751113656

`A059268(A059130(n)+A000096(n))`
-/

namespace A059150.P5391061050751113656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A059130 n + A000096 n).toNat

end

end A059150.P5391061050751113656

/-! ## A059150.P15767584023005233161

`A337223(A059147(n))`
-/

namespace A059150.P15767584023005233161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (A059147 n).toNat

end

end A059150.P15767584023005233161

/-!
# A059151: A hierarchical sequence (W'3{2,2}* - see A059126).

The programs for A059151, the canonical program `A059151.P2977374088639099994` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059151 has offset 0).

The definition of A059151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059151.P8346189399681560952

`2^(A059131(n)-1)`
-/

namespace A059151.P8346189399681560952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059131 n - 1 : ℤ)

end

end A059151.P8346189399681560952

namespace A059151

/-- `2^(A059131(n)-1)` -/
def P8346189399681560952.Spec : Prop :=
  ∀ n, P8346189399681560952.a n = (A059151 n : ℚ)

end A059151

/-! ## A059151.P2977374088639099994

`C(2, n%3)*A059149(floor(n/3))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A059151

/-- `C(2, n%3)*A059149(floor(n/3))` -/
def P2977374088639099994.Spec : Prop :=
  ∀ n, P2977374088639099994.a n = A059151 n

theorem P2977374088639099994.correct : P2977374088639099994.Spec := by
  intro n
  simp only [A059151]

end A059151

/-! ## A059151.P11539805837693189495

`A011782(A059131(n))`
-/

namespace A059151.P11539805837693189495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059131 n).toNat

end

end A059151.P11539805837693189495

namespace A059151

/-- `A011782(A059131(n))` -/
def P11539805837693189495.Spec : Prop :=
  ∀ n, P11539805837693189495.a n = A059151 n

end A059151

/-! ## A059151.P4553341088682451399

`A166444(A059131(n)+1)`
-/

namespace A059151.P4553341088682451399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A059131 n + 1).toNat

end

end A059151.P4553341088682451399

namespace A059151

/-- `A166444(A059131(n)+1)` -/
def P4553341088682451399.Spec : Prop :=
  ∀ n, P4553341088682451399.a n = A059151 n

end A059151

/-! ## A059151.P13850230133977992005

`A000079(A059131(n)-1)`
-/

namespace A059151.P13850230133977992005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A059131 n - 1).toNat

end

end A059151.P13850230133977992005

namespace A059151

/-- `A000079(A059131(n)-1)` -/
def P13850230133977992005.Spec : Prop :=
  ∀ n, P13850230133977992005.a n = A059151 n

end A059151

/-! ## A059151.P1130167514664730994

`A000010(2^A059131(n))`
-/

namespace A059151.P1130167514664730994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059131 n : ℤ))).toNat

end

end A059151.P1130167514664730994

namespace A059151

/-- `A000010(2^A059131(n))` -/
def P1130167514664730994.Spec : Prop :=
  ∀ n, P1130167514664730994.a n = A059151 n

end A059151

/-! ## A059151.P7359160169773567462

`A059149(A002264(n))*A131534(n)`
-/

namespace A059151.P7359160169773567462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059149 (A002264 n).toNat * A131534 n

end

end A059151.P7359160169773567462

namespace A059151

/-- `A059149(A002264(n))*A131534(n)` -/
def P7359160169773567462.Spec : Prop :=
  ∀ n, P7359160169773567462.a n = A059151 n

end A059151

/-!
# A059152: A hierarchical sequence (W'2{2}c - see A059126).

The programs for A059152, the canonical program `A059152.P1141809837012285539` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059152 has offset 0).

The definition of A059152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059152.P1141809837012285539

`4*4^A007814(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059152

/-- `4*4^A007814(n+1)` -/
def P1141809837012285539.Spec : Prop :=
  ∀ n, P1141809837012285539.a n = (A059152 n : ℚ)

end A059152

/-! ## A059152.P9170929000308877321

`xor(n, -(n+2))²`
-/

namespace A059152.P9170929000308877321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2

end

end A059152.P9170929000308877321

namespace A059152

/-- `xor(n, -(n+2))²` -/
def P9170929000308877321.Spec : Prop :=
  ∀ n, P9170929000308877321.a n = A059152 n

end A059152

/-! ## A059152.P9984143548905833233

`(xor(n, n+1)+1)²`
-/

namespace A059152.P9984143548905833233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1) ^ 2

end

end A059152.P9984143548905833233

namespace A059152

/-- `(xor(n, n+1)+1)²` -/
def P9984143548905833233.Spec : Prop :=
  ∀ n, (P9984143548905833233.a n : ℤ) = A059152 n

end A059152

/-! ## A059152.P9124986517789787422

`xor(n, -(n+2))^2`
-/

namespace A059152.P9124986517789787422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2

end

end A059152.P9124986517789787422

namespace A059152

/-- `xor(n, -(n+2))^2` -/
def P9124986517789787422.Spec : Prop :=
  ∀ n, P9124986517789787422.a n = A059152 n

end A059152

/-! ## A059152.P7820194443839595789

`∑[-Δ[xor(n, -n)]]²`
-/

namespace A059152.P7820194443839595789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A059152.P7820194443839595789

namespace A059152

/-- `∑[-Δ[xor(n, -n)]]²` -/
def P7820194443839595789.Spec : Prop :=
  ∀ n, P7820194443839595789.a n = A059152 n

end A059152

/-! ## A059152.P17265504432247249317

`4^(val(n+1, 2)+1)`
-/

namespace A059152.P17265504432247249317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A059152.P17265504432247249317

namespace A059152

/-- `4^(val(n+1, 2)+1)` -/
def P17265504432247249317.Spec : Prop :=
  ∀ n, (P17265504432247249317.a n : ℤ) = A059152 n

end A059152

/-! ## A059152.P4334286876284103494

`(xor(n, n+1)+1)^2`
-/

namespace A059152.P4334286876284103494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1) ^ 2

end

end A059152.P4334286876284103494

namespace A059152

/-- `(xor(n, n+1)+1)^2` -/
def P4334286876284103494.Spec : Prop :=
  ∀ n, (P4334286876284103494.a n : ℤ) = A059152 n

end A059152

/-! ## A059152.P4915781886802045449

`4^val(∑[2*or(3, n)], 2)`
-/

namespace A059152.P4915781886802045449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A059152.P4915781886802045449

namespace A059152

/-- `4^val(∑[2*or(3, n)], 2)` -/
def P4915781886802045449.Spec : Prop :=
  ∀ n, (P4915781886802045449.a n : ℤ) = A059152 n

end A059152

/-! ## A059152.P14629087847997122407

`4^val(comp[n*and(1, n)], 2)`
-/

namespace A059152.P14629087847997122407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A059152.P14629087847997122407

namespace A059152

/-- `4^val(comp[n*and(1, n)], 2)` -/
def P14629087847997122407.Spec : Prop :=
  ∀ n, (P14629087847997122407.a n : ℤ) = A059152 n

end A059152

/-! ## A059152.P5799655526092282683

`(2*(or(n, n+1)-n))²`
-/

namespace A059152.P5799655526092282683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))) ^ 2

end

end A059152.P5799655526092282683

namespace A059152

/-- `(2*(or(n, n+1)-n))²` -/
def P5799655526092282683.Spec : Prop :=
  ∀ n, P5799655526092282683.a n = A059152 n

end A059152

/-! ## A059152.P14395214589579639611

`(2*and(n+1, -(n+1)))²`
-/

namespace A059152.P14395214589579639611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) ^ 2

end

end A059152.P14395214589579639611

namespace A059152

/-- `(2*and(n+1, -(n+1)))²` -/
def P14395214589579639611.Spec : Prop :=
  ∀ n, P14395214589579639611.a n = A059152 n

end A059152

/-! ## A059152.P9389529280183471655

`(2*or(n+1, -(n+1)))²`
-/

namespace A059152.P9389529280183471655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))) ^ 2

end

end A059152.P9389529280183471655

namespace A059152

/-- `(2*or(n+1, -(n+1)))²` -/
def P9389529280183471655.Spec : Prop :=
  ∀ n, P9389529280183471655.a n = A059152 n

end A059152

/-! ## A059152.P2133457033915374117

`(2*(n+1-and(n, n+1)))²`
-/

namespace A059152.P2133457033915374117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))) ^ 2

end

end A059152.P2133457033915374117

namespace A059152

/-- `(2*(n+1-and(n, n+1)))²` -/
def P2133457033915374117.Spec : Prop :=
  ∀ n, P2133457033915374117.a n = A059152 n

end A059152

/-! ## A059152.P7959125465795958289

`gcd((2*(n+1))², and(n, n+1)²)`
-/

namespace A059152.P7959125465795958289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((2 * (n + 1)) ^ 2) (Nat.land n (n + 1) ^ 2)

end

end A059152.P7959125465795958289

namespace A059152

/-- `gcd((2*(n+1))², and(n, n+1)²)` -/
def P7959125465795958289.Spec : Prop :=
  ∀ n, (P7959125465795958289.a n : ℤ) = A059152 n

end A059152

/-! ## A059152.P3535992417400499596

`A171977(n+1)²`
-/

namespace A059152.P3535992417400499596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) ^ 2

end

end A059152.P3535992417400499596

namespace A059152

/-- `A171977(n+1)²` -/
def P3535992417400499596.Spec : Prop :=
  ∀ n, P3535992417400499596.a n = A059152 n

end A059152

/-! ## A059152.P9199088121477925365

`Δ[4*A224915(n)]`
-/

namespace A059152.P9199088121477925365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A224915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059152.P9199088121477925365

namespace A059152

/-- `Δ[4*A224915(n)]` -/
def P9199088121477925365.Spec : Prop :=
  ∀ n, P9199088121477925365.a n = A059152 n

end A059152

/-! ## A059152.P14425041327016672951

`2^Δ[A178207(n)]`
-/

namespace A059152.P14425041327016672951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A059152.P14425041327016672951

namespace A059152

/-- `2^Δ[A178207(n)]` -/
def P14425041327016672951.Spec : Prop :=
  ∀ n, P14425041327016672951.a n = (A059152 n : ℚ)

end A059152

/-! ## A059152.P10519662409506533845

`4^Δ[A005187(n)]`
-/

namespace A059152.P10519662409506533845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A059152.P10519662409506533845

namespace A059152

/-- `4^Δ[A005187(n)]` -/
def P10519662409506533845.Spec : Prop :=
  ∀ n, P10519662409506533845.a n = (A059152 n : ℚ)

end A059152

/-! ## A059152.P12423342991501292190

`2^A366839(n+1)`
-/

namespace A059152.P12423342991501292190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366839 (n + 1) : ℤ)

end

end A059152.P12423342991501292190

namespace A059152

/-- `2^A366839(n+1)` -/
def P12423342991501292190.Spec : Prop :=
  ∀ n, P12423342991501292190.a n = (A059152 n : ℚ)

end A059152

/-! ## A059152.P9026253254640709409

`4^A001511(n+1)`
-/

namespace A059152.P9026253254640709409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001511 (n + 1) : ℤ)

end

end A059152.P9026253254640709409

namespace A059152

/-- `4^A001511(n+1)` -/
def P9026253254640709409.Spec : Prop :=
  ∀ n, P9026253254640709409.a n = (A059152 n : ℚ)

end A059152

/-!
# A059153: a(n) = 2^(n+2)*(2^(n+1)-1).

The programs for A059153, the canonical program `A059153.P18154160339219698843` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059153 has offset 0).

The definition of A059153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)*(2^(n+1)-1)` (program `A059153.P18154160339219698843`, by `A059153.P18154160339219698843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059153.P18154160339219698843

`2^(n+2)*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059153

/-- `2^(n+2)*(2^(n+1)-1)` -/
def P18154160339219698843.Spec : Prop :=
  ∀ n, P18154160339219698843.a n = A059153 n

theorem P18154160339219698843.correct : P18154160339219698843.Spec := by
  intro n
  simp only [A059153]

end A059153

/-! ## A059153.P16006696082672454406

`6*a(n-1)-8*a(n-2)` with `a(0)=4, a(1)=24`
-/

namespace A059153.P16006696082672454406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 24] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A059153.P16006696082672454406

namespace A059153

/-- `6*a(n-1)-8*a(n-2)` -/
def P16006696082672454406.Spec : Prop :=
  ∀ n, P16006696082672454406.a n = A059153 n

theorem P16006696082672454406.correct : P16006696082672454406.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A059153, Nat.add_sub_cancel, A059153.P16006696082672454406.a, A059153.P18154160339219698843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A059153, Nat.add_sub_cancel, A059153.P16006696082672454406.a, A059153.P18154160339219698843.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059153

/-! ## A059153.P6159528361545965813

`ogf(4/(1-6x+8x^2))`
-/

namespace A059153.P6159528361545965813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -6, 8] n

end

end A059153.P6159528361545965813

namespace A059153

/-- `ogf(4/(1-6x+8x^2))` -/
def P6159528361545965813.Spec : Prop :=
  ∀ n, P6159528361545965813.a n = A059153 n

end A059153

/-! ## A059153.P5945271512084502656

`lcm(2^(n+2), ∑[2^n])`
-/

namespace A059153.P5945271512084502656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059153.P5945271512084502656

namespace A059153

/-- `lcm(2^(n+2), ∑[2^n])` -/
def P5945271512084502656.Spec : Prop :=
  ∀ n, (P5945271512084502656.a n : ℤ) = A059153 n

end A059153

/-! ## A059153.P17273512853649981152

`floor(4*(a(n-1)+2^n))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A059153.P17273512853649981152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * (a (n - 1) + 2 ^ n)

end

end A059153.P17273512853649981152

namespace A059153

/-- `floor(4*(a(n-1)+2^n))` -/
def P17273512853649981152.Spec : Prop :=
  ∀ n, (P17273512853649981152.a n : ℤ) = A059153 n

theorem P17273512853649981152.correct : P17273512853649981152.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A059153, Nat.add_sub_cancel, A059153.P17273512853649981152.a, A059153.P18154160339219698843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A059153, Nat.add_sub_cancel, A059153.P17273512853649981152.a, A059153.P18154160339219698843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059153

/-! ## A059153.P5652045682784406314

`floor(∑[2*a(n-1)]²/2)` with `a(0)=3, a(1)=4`
-/

namespace A059153.P5652045682784406314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌋

end

end A059153.P5652045682784406314

namespace A059153

/-- `floor(∑[2*a(n-1)]²/2)` -/
def P5652045682784406314.Spec : Prop :=
  ∀ n, P5652045682784406314.a n = A059153 n

end A059153

/-! ## A059153.P5514338911866624215

`floor(2^n*∑[2*a(n-1)])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A059153.P5514338911866624215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059153.P5514338911866624215

namespace A059153

/-- `floor(2^n*∑[2*a(n-1)])` -/
def P5514338911866624215.Spec : Prop :=
  ∀ n, (P5514338911866624215.a n : ℤ) = A059153 n

end A059153

/-! ## A059153.P10382621604161053886

`or(2*a(n-1), 4*a(n-1))` with `a(0)=4`
-/

namespace A059153.P10382621604161053886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor (2 * a (n - 1)) (4 * a (n - 1))

end

end A059153.P10382621604161053886

namespace A059153

/-- `or(2*a(n-1), 4*a(n-1))` -/
def P10382621604161053886.Spec : Prop :=
  ∀ n, (P10382621604161053886.a n : ℤ) = A059153 n

end A059153

/-! ## A059153.P8013902192177901502

`a(n-1)+a(n-1)+4^(n+1)` with `a(0)=4`
-/

namespace A059153.P8013902192177901502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 4 ^ (n + 1))

end

end A059153.P8013902192177901502

namespace A059153

/-- `a(n-1)+a(n-1)+4^(n+1)` -/
def P8013902192177901502.Spec : Prop :=
  ∀ n, (P8013902192177901502.a n : ℤ) = A059153 n

end A059153

/-! ## A059153.P15239349445481523420

`A107659(Δ[n²])`
-/

namespace A059153.P15239349445481523420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059153.P15239349445481523420

namespace A059153

/-- `A107659(Δ[n²])` -/
def P15239349445481523420.Spec : Prop :=
  ∀ n, P15239349445481523420.a n = A059153 n

end A059153

/-! ## A059153.P8409036195161454539

`∑[A093357(n+2)]`
-/

namespace A059153.P8409036195161454539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059153.P8409036195161454539

namespace A059153

/-- `∑[A093357(n+2)]` -/
def P8409036195161454539.Spec : Prop :=
  ∀ n, P8409036195161454539.a n = A059153 n

end A059153

/-! ## A059153.P13310633671704367183

`∑[4*A010036(n)]`
-/

namespace A059153.P13310633671704367183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059153.P13310633671704367183

namespace A059153

/-- `∑[4*A010036(n)]` -/
def P13310633671704367183.Spec : Prop :=
  ∀ n, P13310633671704367183.a n = A059153 n

end A059153

/-! ## A059153.P5968899553038636696

`record[A288664(n+2)]`
-/

namespace A059153.P5968899553038636696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059153.P5968899553038636696

namespace A059153

/-- `record[A288664(n+2)]` -/
def P5968899553038636696.Spec : Prop :=
  ∀ n, P5968899553038636696.a n = A059153 n

end A059153

/-! ## A059153.P7690842323535944306

`A267816(n+1)+1`
-/

namespace A059153.P7690842323535944306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267816 (n + 1) + 1

end

end A059153.P7690842323535944306

namespace A059153

/-- `A267816(n+1)+1` -/
def P7690842323535944306.Spec : Prop :=
  ∀ n, P7690842323535944306.a n = A059153 n

end A059153

/-! ## A059153.P16445332978112917386

`A092440(n+1)-1`
-/

namespace A059153.P16445332978112917386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 (n + 1) - 1

end

end A059153.P16445332978112917386

namespace A059153

/-- `A092440(n+1)-1` -/
def P16445332978112917386.Spec : Prop :=
  ∀ n, P16445332978112917386.a n = A059153 n

theorem P16445332978112917386.correct : P16445332978112917386.Spec := by
  intro n
  simp only [A059153, Nat.add_sub_cancel, A059153.P16445332978112917386.a, A059153.P18154160339219698843.a, A092440, A092440.P9739041573880748262.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059153

/-! ## A059153.P2286440626671376289

`A288664(2*(n+1))`
-/

namespace A059153.P2286440626671376289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288664 (2 * (n + 1))

end

end A059153.P2286440626671376289

namespace A059153

/-- `A288664(2*(n+1))` -/
def P2286440626671376289.Spec : Prop :=
  ∀ n, P2286440626671376289.a n = A059153 n

end A059153

/-! ## A059153.P2521398791163370120

`A156232(2*(n+2))`
-/

namespace A059153.P2521398791163370120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156232 (2 * (n + 2))

end

end A059153.P2521398791163370120

namespace A059153

/-- `A156232(2*(n+2))` -/
def P2521398791163370120.Spec : Prop :=
  ∀ n, P2521398791163370120.a n = A059153 n

end A059153

/-! ## A059153.P12072607882112762935

`A271061(n+1)/2`
-/

namespace A059153.P12072607882112762935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271061 (n + 1) : ℚ) / 2

end

end A059153.P12072607882112762935

namespace A059153

/-- `A271061(n+1)/2` -/
def P12072607882112762935.Spec : Prop :=
  ∀ n, P12072607882112762935.a n = (A059153 n : ℚ)

end A059153

/-! ## A059153.P12944162605577326132

`A208901(2*n+3)`
-/

namespace A059153.P12944162605577326132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208901 (2 * n + 3)

end

end A059153.P12944162605577326132

namespace A059153

/-- `A208901(2*n+3)` -/
def P12944162605577326132.Spec : Prop :=
  ∀ n, P12944162605577326132.a n = A059153 n

end A059153

/-! ## A059153.P7160386482396954088

`A211012(n+2)/2`
-/

namespace A059153.P7160386482396954088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211012 (n + 2) : ℚ) / 2

end

end A059153.P7160386482396954088

namespace A059153

/-- `A211012(n+2)/2` -/
def P7160386482396954088.Spec : Prop :=
  ∀ n, P7160386482396954088.a n = (A059153 n : ℚ)

end A059153

/-!
# A059154: A hierarchical sequence (W'2{3}c - see A059126).

The programs for A059154, the canonical program `A059154.P4388372018061316421` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059154 has offset 0).

The definition of A059154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059154.P4388372018061316421

`12*8^A007814(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059154

/-- `12*8^A007814(n+1)` -/
def P4388372018061316421.Spec : Prop :=
  ∀ n, P4388372018061316421.a n = (A059154 n : ℚ)

end A059154

/-! ## A059154.P14859375154103270855

`12*8^val(n+1, 2)`
-/

namespace A059154.P14859375154103270855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * 8 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A059154.P14859375154103270855

namespace A059154

/-- `12*8^val(n+1, 2)` -/
def P14859375154103270855.Spec : Prop :=
  ∀ n, (P14859375154103270855.a n : ℤ) = A059154 n

end A059154

/-! ## A059154.P6746156280178022078

`12*(or(n, n+1)-n)^3`
-/

namespace A059154.P6746156280178022078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) ^ 3

end

end A059154.P6746156280178022078

namespace A059154

/-- `12*(or(n, n+1)-n)^3` -/
def P6746156280178022078.Spec : Prop :=
  ∀ n, P6746156280178022078.a n = A059154 n

end A059154

/-! ## A059154.P2274476543356478177

`12*and(n+1, -(n+1))^3`
-/

namespace A059154.P2274476543356478177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) ^ 3

end

end A059154.P2274476543356478177

namespace A059154

/-- `12*and(n+1, -(n+1))^3` -/
def P2274476543356478177.Spec : Prop :=
  ∀ n, P2274476543356478177.a n = A059154 n

end A059154

/-! ## A059154.P6526822503378164102

`12*round(xor(n, n+1)/2)^3`
-/

namespace A059154.P6526822503378164102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) ^ 3

end

end A059154.P6526822503378164102

namespace A059154

/-- `12*round(xor(n, n+1)/2)^3` -/
def P6526822503378164102.Spec : Prop :=
  ∀ n, P6526822503378164102.a n = A059154 n

end A059154

/-! ## A059154.P7143799715021406004

`12*abs(or(n+1, -(n+1)))^3`
-/

namespace A059154.P7143799715021406004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * |Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| ^ 3

end

end A059154.P7143799715021406004

namespace A059154

/-- `12*abs(or(n+1, -(n+1)))^3` -/
def P7143799715021406004.Spec : Prop :=
  ∀ n, P7143799715021406004.a n = A059154 n

end A059154

/-! ## A059154.P13795164927053209517

`floor((6*(xor(n, n+1)+1)^3+1)/4)`
-/

namespace A059154.P13795164927053209517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * (Nat.xor n (n + 1) + 1) ^ 3 + 1 : ℚ) / 4⌋

end

end A059154.P13795164927053209517

namespace A059154

/-- `floor((6*(xor(n, n+1)+1)^3+1)/4)` -/
def P13795164927053209517.Spec : Prop :=
  ∀ n, P13795164927053209517.a n = A059154 n

end A059154

/-! ## A059154.P18430715303198949964

`(or(n, n+1)-n)²*∑[12*Δ[and(n, -n)]]`
-/

namespace A059154.P18430715303198949964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059154.P18430715303198949964

namespace A059154

/-- `(or(n, n+1)-n)²*∑[12*Δ[and(n, -n)]]` -/
def P18430715303198949964.Spec : Prop :=
  ∀ n, P18430715303198949964.a n = A059154 n

end A059154

/-! ## A059154.P14889310020714253045

`6*(xor(n, n+1)+1)*(or(n, n+1)-n)²`
-/

namespace A059154.P14889310020714253045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (Nat.xor n (n + 1) + 1) : ℤ) * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) ^ 2

end

end A059154.P14889310020714253045

namespace A059154

/-- `6*(xor(n, n+1)+1)*(or(n, n+1)-n)²` -/
def P14889310020714253045.Spec : Prop :=
  ∀ n, P14889310020714253045.a n = A059154 n

end A059154

/-! ## A059154.P12043455370458154821

`6*(xor(n, n+1)+1)*xor(n, or(n, n+1))²`
-/

namespace A059154.P12043455370458154821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (Nat.xor n (n + 1) + 1) * Nat.xor n (Nat.lor n (n + 1)) ^ 2

end

end A059154.P12043455370458154821

namespace A059154

/-- `6*(xor(n, n+1)+1)*xor(n, or(n, n+1))²` -/
def P12043455370458154821.Spec : Prop :=
  ∀ n, (P12043455370458154821.a n : ℤ) = A059154 n

end A059154

/-! ## A059154.P9068364695279781133

`A072946(A059132(n))`
-/

namespace A059154.P9068364695279781133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 (A059132 n).toNat

end

end A059154.P9068364695279781133

namespace A059154

/-- `A072946(A059132(n))` -/
def P9068364695279781133.Spec : Prop :=
  ∀ n, P9068364695279781133.a n = A059154 n

end A059154

/-! ## A059154.P14846407036088421447

`A111286(A059139(n))`
-/

namespace A059154.P14846407036088421447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (A059139 n).toNat

end

end A059154.P14846407036088421447

namespace A059154

/-- `A111286(A059139(n))` -/
def P14846407036088421447.Spec : Prop :=
  ∀ n, P14846407036088421447.a n = A059154 n

end A059154

/-! ## A059154.P2925217207093150359

`A204630(A115364(n+1))`
-/

namespace A059154.P2925217207093150359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A115364 (n + 1)).toNat

end

end A059154.P2925217207093150359

namespace A059154

/-- `A204630(A115364(n+1))` -/
def P2925217207093150359.Spec : Prop :=
  ∀ n, P2925217207093150359.a n = A059154 n

end A059154

/-! ## A059154.P9227163869565263541

`A164675(A366839(n+1))`
-/

namespace A059154.P9227163869565263541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164675 (A366839 (n + 1)).toNat

end

end A059154.P9227163869565263541

namespace A059154

/-- `A164675(A366839(n+1))` -/
def P9227163869565263541.Spec : Prop :=
  ∀ n, P9227163869565263541.a n = A059154 n

end A059154

/-! ## A059154.P13423860833749579260

`A059157(n)/A171977(n+1)`
-/

namespace A059154.P13423860833749579260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059157 n : ℚ) / (A171977 (n + 1) : ℚ)

end

end A059154.P13423860833749579260

namespace A059154

/-- `A059157(n)/A171977(n+1)` -/
def P13423860833749579260.Spec : Prop :=
  ∀ n, P13423860833749579260.a n = (A059154 n : ℚ)

end A059154

/-! ## A059154.P16184732466977147443

`A006519(n+1)²*A059161(n)`
-/

namespace A059154.P16184732466977147443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) ^ 2 * A059161 n

end

end A059154.P16184732466977147443

namespace A059154

/-- `A006519(n+1)²*A059161(n)` -/
def P16184732466977147443.Spec : Prop :=
  ∀ n, P16184732466977147443.a n = A059154 n

end A059154

/-! ## A059154.P488052716622883770

`A055975(n+1)²*A059161(n)`
-/

namespace A059154.P488052716622883770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1) ^ 2 * A059161 n

end

end A059154.P488052716622883770

namespace A059154

/-- `A055975(n+1)²*A059161(n)` -/
def P488052716622883770.Spec : Prop :=
  ∀ n, P488052716622883770.a n = A059154 n

end A059154

/-! ## A059154.P5698536534666791715

`(A171977(n+1)+A006519(n+1))*A171977(n+1)²`
-/

namespace A059154.P5698536534666791715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) + A006519 (n + 1)) * A171977 (n + 1) ^ 2

end

end A059154.P5698536534666791715

namespace A059154

/-- `(A171977(n+1)+A006519(n+1))*A171977(n+1)²` -/
def P5698536534666791715.Spec : Prop :=
  ∀ n, P5698536534666791715.a n = A059154 n

end A059154

/-! ## A059154.P5638698925689637777

`A033196(A171977(n+1))`
-/

namespace A059154.P5638698925689637777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033196 (A171977 (n + 1)).toNat

end

end A059154.P5638698925689637777

namespace A059154

/-- `A033196(A171977(n+1))` -/
def P5638698925689637777.Spec : Prop :=
  ∀ n, P5638698925689637777.a n = A059154 n

end A059154

/-! ## A059154.P17534349162335430514

`A118830(2*(n+1))²*A006368(A118830(2*(n+1)))`
-/

namespace A059154.P17534349162335430514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * (n + 1)) ^ 2 * A006368 (A118830 (2 * (n + 1))).toNat

end

end A059154.P17534349162335430514

namespace A059154

/-- `A118830(2*(n+1))²*A006368(A118830(2*(n+1)))` -/
def P17534349162335430514.Spec : Prop :=
  ∀ n, P17534349162335430514.a n = A059154 n

end A059154

/-!
# A059155: A hierarchical sequence (S(W'2{3}c) - see A059126).

The programs for A059155, the canonical program `A059155.P6181797539108455846` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059155 has offset 0).

The definition of A059155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059155.P6181797539108455846

`2^(n+2)*(4^(n+1)-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059155

/-- `2^(n+2)*(4^(n+1)-1)` -/
def P6181797539108455846.Spec : Prop :=
  ∀ n, P6181797539108455846.a n = A059155 n

theorem P6181797539108455846.correct : P6181797539108455846.Spec := by
  intro n
  simp only [A059155]

end A059155

/-! ## A059155.P8532147429227500058

`ogf(12/(1-10x+16x^2))`
-/

namespace A059155.P8532147429227500058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12] [1, -10, 16] n

end

end A059155.P8532147429227500058

namespace A059155

/-- `ogf(12/(1-10x+16x^2))` -/
def P8532147429227500058.Spec : Prop :=
  ∀ n, P8532147429227500058.a n = A059155 n

end A059155

/-! ## A059155.P10865081143663790373

`A060549(6*n+7)`
-/

namespace A059155.P10865081143663790373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (6 * n + 7)

end

end A059155.P10865081143663790373

namespace A059155

/-- `A060549(6*n+7)` -/
def P10865081143663790373.Spec : Prop :=
  ∀ n, P10865081143663790373.a n = A059155 n

end A059155

/-! ## A059155.P18190923880618263811

`lcm(A048578(n), A059153(n))`
-/

namespace A059155.P18190923880618263811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048578 n) (A059153 n)

end

end A059155.P18190923880618263811

namespace A059155

/-- `lcm(A048578(n), A059153(n))` -/
def P18190923880618263811.Spec : Prop :=
  ∀ n, (P18190923880618263811.a n : ℤ) = A059155 n

end A059155

/-! ## A059155.P13236109054275458470

`or(A020530(n+1), A020540(n))`
-/

namespace A059155.P13236109054275458470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020530 (n + 1)) (A020540 n)

end

end A059155.P13236109054275458470

namespace A059155

/-- `or(A020530(n+1), A020540(n))` -/
def P13236109054275458470.Spec : Prop :=
  ∀ n, P13236109054275458470.a n = A059155 n

end A059155

/-! ## A059155.P16454580711935995859

`A248217(n+1)+A248217(n+1)`
-/

namespace A059155.P16454580711935995859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248217 (n + 1) + A248217 (n + 1)

end

end A059155.P16454580711935995859

namespace A059155

/-- `A248217(n+1)+A248217(n+1)` -/
def P16454580711935995859.Spec : Prop :=
  ∀ n, P16454580711935995859.a n = A059155 n

end A059155

/-! ## A059155.P9137278039905559036

`A103333(n+2)-A020530(n+1)`
-/

namespace A059155.P9137278039905559036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103333 (n + 2) - A020530 (n + 1)

end

end A059155.P9137278039905559036

namespace A059155

/-- `A103333(n+2)-A020530(n+1)` -/
def P9137278039905559036.Spec : Prop :=
  ∀ n, P9137278039905559036.a n = A059155 n

end A059155

/-! ## A059155.P8667854840739145750

`A147590(n+2)-A000079(n+1)`
-/

namespace A059155.P8667854840739145750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147590 (n + 2) - A000079 (n + 1)

end

end A059155.P8667854840739145750

namespace A059155

/-- `A147590(n+2)-A000079(n+1)` -/
def P8667854840739145750.Spec : Prop :=
  ∀ n, P8667854840739145750.a n = A059155 n

end A059155

/-! ## A059155.P10005947000496378797

`A199493(n+1)-A000051(n+2)`
-/

namespace A059155.P10005947000496378797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199493 (n + 1) - A000051 (n + 2)

end

end A059155.P10005947000496378797

namespace A059155

/-- `A199493(n+1)-A000051(n+2)` -/
def P10005947000496378797.Spec : Prop :=
  ∀ n, P10005947000496378797.a n = A059155 n

end A059155

/-! ## A059155.P12814889255144855652

`A020707(3*n+2)-A020707(n)`
-/

namespace A059155.P12814889255144855652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (3 * n + 2) - A020707 n

end

end A059155.P12814889255144855652

namespace A059155

/-- `A020707(3*n+2)-A020707(n)` -/
def P12814889255144855652.Spec : Prop :=
  ∀ n, P12814889255144855652.a n = A059155 n

end A059155

/-! ## A059155.P6434892620904205937

`A164703(2*(n+1))-A000079(n+2)`
-/

namespace A059155.P6434892620904205937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164703 (2 * (n + 1)) - A000079 (n + 2)

end

end A059155.P6434892620904205937

namespace A059155

/-- `A164703(2*(n+1))-A000079(n+2)` -/
def P6434892620904205937.Spec : Prop :=
  ∀ n, P6434892620904205937.a n = A059155 n

end A059155

/-! ## A059155.P14787255414090241570

`A000225(3*n+4)-A000225(n+2)`
-/

namespace A059155.P14787255414090241570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * n + 4) - A000225 (n + 2)

end

end A059155.P14787255414090241570

namespace A059155

/-- `A000225(3*n+4)-A000225(n+2)` -/
def P14787255414090241570.Spec : Prop :=
  ∀ n, P14787255414090241570.a n = A059155 n

end A059155

/-! ## A059155.P3662766044921530358

`A143095(6*n+5)-A143095(2*n+1)`
-/

namespace A059155.P3662766044921530358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (6 * n + 5) - A143095 (2 * n + 1)

end

end A059155.P3662766044921530358

namespace A059155

/-- `A143095(6*n+5)-A143095(2*n+1)` -/
def P3662766044921530358.Spec : Prop :=
  ∀ n, P3662766044921530358.a n = A059155 n

end A059155

/-! ## A059155.P3286500951846088930

`A354788(6*n+5)-A354788(2*n+1)`
-/

namespace A059155.P3286500951846088930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (6 * n + 5) - A354788 (2 * n + 1)

end

end A059155.P3286500951846088930

namespace A059155

/-- `A354788(6*n+5)-A354788(2*n+1)` -/
def P3286500951846088930.Spec : Prop :=
  ∀ n, P3286500951846088930.a n = A059155 n

end A059155

/-! ## A059155.P11869362189999962493

`A020707(n)²*A000079(n)-A020707(n)`
-/

namespace A059155.P11869362189999962493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 * A000079 n - A020707 n

end

end A059155.P11869362189999962493

namespace A059155

/-- `A020707(n)²*A000079(n)-A020707(n)` -/
def P11869362189999962493.Spec : Prop :=
  ∀ n, P11869362189999962493.a n = A059155 n

end A059155

/-! ## A059155.P18444470736204962685

`A048578(A008486(n+1))-A048578(n+1)`
-/

namespace A059155.P18444470736204962685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A008486 (n + 1)).toNat - A048578 (n + 1)

end

end A059155.P18444470736204962685

namespace A059155

/-- `A048578(A008486(n+1))-A048578(n+1)` -/
def P18444470736204962685.Spec : Prop :=
  ∀ n, P18444470736204962685.a n = A059155 n

end A059155

/-! ## A059155.P14430182984654259244

`A198633(A008585(n+1))-A198633(n+1)`
-/

namespace A059155.P14430182984654259244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (A008585 (n + 1)).toNat - A198633 (n + 1)

end

end A059155.P14430182984654259244

namespace A059155

/-- `A198633(A008585(n+1))-A198633(n+1)` -/
def P14430182984654259244.Spec : Prop :=
  ∀ n, P14430182984654259244.a n = A059155 n

end A059155

/-! ## A059155.P11124881484885607169

`A199493(n+1)-(A181565(n)+A000079(n))`
-/

namespace A059155.P11124881484885607169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199493 (n + 1) - (A181565 n + A000079 n)

end

end A059155.P11124881484885607169

namespace A059155

/-- `A199493(n+1)-(A181565(n)+A000079(n))` -/
def P11124881484885607169.Spec : Prop :=
  ∀ n, P11124881484885607169.a n = A059155 n

end A059155

/-! ## A059155.P4240833914565047063

`A059153(n)+A000079(n+1)*A059153(n)`
-/

namespace A059155.P4240833914565047063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059153 n + A000079 (n + 1) * A059153 n

end

end A059155.P4240833914565047063

namespace A059155

/-- `A059153(n)+A000079(n+1)*A059153(n)` -/
def P4240833914565047063.Spec : Prop :=
  ∀ n, P4240833914565047063.a n = A059155 n

end A059155

/-! ## A059155.P4647266463401379673

`A000079(n)*A141725(n+1)-A000079(n)`
-/

namespace A059155.P4647266463401379673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A141725 (n + 1) - A000079 n

end

end A059155.P4647266463401379673

namespace A059155

/-- `A000079(n)*A141725(n+1)-A000079(n)` -/
def P4647266463401379673.Spec : Prop :=
  ∀ n, P4647266463401379673.a n = A059155 n

theorem P4647266463401379673.correct : P4647266463401379673.Spec := by
  intro n
  simp only [A059155, Nat.add_sub_cancel, A059155.P4647266463401379673.a, A059155.P6181797539108455846.a, A000079, A000079.P10855139691139572931.a, A141725, A141725.P3910336082841405750.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059155

/-!
# A059156: A hierarchical sequence (W'3{2,2}c - see A059126).

The programs for A059156, the canonical program `A059156.P7671134672404718204` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059156 has offset 0).

The definition of A059156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059156.P9698780507876698539

`A059148(3*n)+A059148(3*n+1)+A059148(3*n)`
-/

namespace A059156.P9698780507876698539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059148 (3 * n) + A059148 (3 * n + 1) + A059148 (3 * n)

end

end A059156.P9698780507876698539

namespace A059156

/-- `A059148(3*n)+A059148(3*n+1)+A059148(3*n)` -/
def P9698780507876698539.Spec : Prop :=
  ∀ n, P9698780507876698539.a n = A059156 n

end A059156

/-! ## A059156.P5818806450250074231

`4^A059126(n)`
-/

namespace A059156.P5818806450250074231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A059126 n : ℤ)

end

end A059156.P5818806450250074231

namespace A059156

/-- `4^A059126(n)` -/
def P5818806450250074231.Spec : Prop :=
  ∀ n, P5818806450250074231.a n = (A059156 n : ℚ)

end A059156

/-! ## A059156.P7671134672404718204

`(2*A059146(n))²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A059156

/-- `(2*A059146(n))²` -/
def P7671134672404718204.Spec : Prop :=
  ∀ n, P7671134672404718204.a n = A059156 n

theorem P7671134672404718204.correct : P7671134672404718204.Spec := by
  intro n
  simp only [A059156]

end A059156

/-! ## A059156.P9912643781201240459

`4^ceil(A059136(n)/6)`
-/

namespace A059156.P9912643781201240459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌈(A059136 n : ℚ) / 6⌉ : ℤ)

end

end A059156.P9912643781201240459

namespace A059156

/-- `4^ceil(A059136(n)/6)` -/
def P9912643781201240459.Spec : Prop :=
  ∀ n, P9912643781201240459.a n = (A059156 n : ℚ)

end A059156

/-! ## A059156.P51946916871279118

`A000302(A059126(n))`
-/

namespace A059156.P51946916871279118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A059126 n).toNat

end

end A059156.P51946916871279118

namespace A059156

/-- `A000302(A059126(n))` -/
def P51946916871279118.Spec : Prop :=
  ∀ n, P51946916871279118.a n = A059156 n

end A059156

/-! ## A059156.P258914083641191120

`A029747(A059136(n))`
-/

namespace A059156.P258914083641191120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A059136 n).toNat

end

end A059156.P258914083641191120

namespace A059156

/-- `A029747(A059136(n))` -/
def P258914083641191120.Spec : Prop :=
  ∀ n, P258914083641191120.a n = A059156 n

end A059156

/-! ## A059156.P13440721619316049856

`A000079(2*A059126(n))`
-/

namespace A059156.P13440721619316049856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A059126 n).toNat

end

end A059156.P13440721619316049856

namespace A059156

/-- `A000079(2*A059126(n))` -/
def P13440721619316049856.Spec : Prop :=
  ∀ n, P13440721619316049856.a n = A059156 n

end A059156

/-! ## A059156.P15818204226654681732

`A016116(4*A059126(n))`
-/

namespace A059156.P15818204226654681732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (4 * A059126 n).toNat

end

end A059156.P15818204226654681732

namespace A059156

/-- `A016116(4*A059126(n))` -/
def P15818204226654681732.Spec : Prop :=
  ∀ n, P15818204226654681732.a n = A059156 n

end A059156

/-! ## A059156.P8865492314356619277

`A011782(A059126(n)+1)²`
-/

namespace A059156.P8865492314356619277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059126 n + 1).toNat ^ 2

end

end A059156.P8865492314356619277

namespace A059156

/-- `A011782(A059126(n)+1)²` -/
def P8865492314356619277.Spec : Prop :=
  ∀ n, P8865492314356619277.a n = A059156 n

end A059156

/-! ## A059156.P2912082100162984977

`A166444(A059126(n)+2)²`
-/

namespace A059156.P2912082100162984977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A059126 n + 2).toNat ^ 2

end

end A059156.P2912082100162984977

namespace A059156

/-- `A166444(A059126(n)+2)²` -/
def P2912082100162984977.Spec : Prop :=
  ∀ n, P2912082100162984977.a n = A059156 n

end A059156

/-! ## A059156.P14903291761784472292

`A011782(2*A059126(n)+1)`
-/

namespace A059156.P14903291761784472292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * A059126 n + 1).toNat

end

end A059156.P14903291761784472292

namespace A059156

/-- `A011782(2*A059126(n)+1)` -/
def P14903291761784472292.Spec : Prop :=
  ∀ n, P14903291761784472292.a n = A059156 n

end A059156

/-! ## A059156.P16552279518275879568

`2*A011782(2*A059126(n))`
-/

namespace A059156.P16552279518275879568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 (2 * A059126 n).toNat

end

end A059156.P16552279518275879568

namespace A059156

/-- `2*A011782(2*A059126(n))` -/
def P16552279518275879568.Spec : Prop :=
  ∀ n, P16552279518275879568.a n = A059156 n

end A059156

/-! ## A059156.P17585677732280004178

`A059268(2*A059126(n)²)²`
-/

namespace A059156.P17585677732280004178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A059126 n ^ 2).toNat ^ 2

end

end A059156.P17585677732280004178

namespace A059156

/-- `A059268(2*A059126(n)²)²` -/
def P17585677732280004178.Spec : Prop :=
  ∀ n, P17585677732280004178.a n = A059156 n

end A059156

/-! ## A059156.P14666332474176195072

`(2*A059146(n))^A020639(2*(n+1))`
-/

namespace A059156.P14666332474176195072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A059146 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A059156.P14666332474176195072

namespace A059156

/-- `(2*A059146(n))^A020639(2*(n+1))` -/
def P14666332474176195072.Spec : Prop :=
  ∀ n, P14666332474176195072.a n = (A059156 n : ℚ)

end A059156

/-! ## A059156.P7346226993250311474

`A011782(A059126(n)+A059126(n)+1)`
-/

namespace A059156.P7346226993250311474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A059126 n + (A059126 n + 1)).toNat

end

end A059156.P7346226993250311474

namespace A059156

/-- `A011782(A059126(n)+A059126(n)+1)` -/
def P7346226993250311474.Spec : Prop :=
  ∀ n, P7346226993250311474.a n = A059156 n

end A059156

/-! ## A059156.P10407636478719811388

`A059132(A059132(n))*A059146(n)*A059146(n)`
-/

namespace A059156.P10407636478719811388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059132 (A059132 n).toNat * A059146 n * A059146 n

end

end A059156.P10407636478719811388

namespace A059156

/-- `A059132(A059132(n))*A059146(n)*A059146(n)` -/
def P10407636478719811388.Spec : Prop :=
  ∀ n, P10407636478719811388.a n = A059156 n

end A059156

/-! ## A059156.P4666435647105909859

`A059146(lt[2, A059146(n)])*A059146(n)`
-/

namespace A059156.P4666435647105909859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A059146 n

end

end A059156.P4666435647105909859

namespace A059156

/-- `A059146(lt[2, A059146(n)])*A059146(n)` -/
def P4666435647105909859.Spec : Prop :=
  ∀ n, P4666435647105909859.a n = A059156 n

end A059156

/-! ## A059156.P3065923541362012349

`4*A059148(3*n)`
-/

namespace A059156.P3065923541362012349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A059148 (3 * n)

end

end A059156.P3065923541362012349

namespace A059156

/-- `4*A059148(3*n)` -/
def P3065923541362012349.Spec : Prop :=
  ∀ n, P3065923541362012349.a n = A059156 n

end A059156

/-! ## A059156.P7675858148600021596

`4^A001222(2*A059146(n))`
-/

namespace A059156.P7675858148600021596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (2 * A059146 n).toNat : ℤ)

end

end A059156.P7675858148600021596

namespace A059156

/-- `4^A001222(2*A059146(n))` -/
def P7675858148600021596.Spec : Prop :=
  ∀ n, P7675858148600021596.a n = (A059156 n : ℚ)

end A059156

/-! ## A059156.P10754064486705940675

`4^A001222(lcm(3, A059146(n)))`
-/

namespace A059156.P10754064486705940675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (Int.lcm 3 (A059146 n)) : ℤ)

end

end A059156.P10754064486705940675

namespace A059156

/-- `4^A001222(lcm(3, A059146(n)))` -/
def P10754064486705940675.Spec : Prop :=
  ∀ n, P10754064486705940675.a n = (A059156 n : ℚ)

end A059156

/-!
# A059157: A hierarchical sequence (W'3{2,2}cc - see A059126).

The programs for A059157, the canonical program `A059157.P6751361432800768077` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059157 has offset 0).

The definition of A059157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059157.P6751361432800768077

`24*16^A007814(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059157

/-- `24*16^A007814(n+1)` -/
def P6751361432800768077.Spec : Prop :=
  ∀ n, P6751361432800768077.a n = (A059157 n : ℚ)

end A059157

/-! ## A059157.P9335920007592509929

`24*16^val(n+1, 2)`
-/

namespace A059157.P9335920007592509929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * 16 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A059157.P9335920007592509929

namespace A059157

/-- `24*16^val(n+1, 2)` -/
def P9335920007592509929.Spec : Prop :=
  ∀ n, (P9335920007592509929.a n : ℤ) = A059157 n

end A059157

/-! ## A059157.P2955645611707397928

`24*(or(n, n+1)-n)^4`
-/

namespace A059157.P2955645611707397928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) ^ 4

end

end A059157.P2955645611707397928

namespace A059157

/-- `24*(or(n, n+1)-n)^4` -/
def P2955645611707397928.Spec : Prop :=
  ∀ n, P2955645611707397928.a n = A059157 n

end A059157

/-! ## A059157.P12972109295722708321

`24*Δ[xor(n, floor(n/2))]^4`
-/

namespace A059157.P12972109295722708321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (f1 (n + 1) - f1 n) ^ 4

end

end A059157.P12972109295722708321

namespace A059157

/-- `24*Δ[xor(n, floor(n/2))]^4` -/
def P12972109295722708321.Spec : Prop :=
  ∀ n, P12972109295722708321.a n = A059157 n

end A059157

/-! ## A059157.P10641057696374338433

`24*(or(n, n+1)-n)²²`
-/

namespace A059157.P10641057696374338433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A059157.P10641057696374338433

namespace A059157

/-- `24*(or(n, n+1)-n)²²` -/
def P10641057696374338433.Spec : Prop :=
  ∀ n, P10641057696374338433.a n = A059157 n

end A059157

/-! ## A059157.P500869933631012027

`A002023(A037227(n+1))`
-/

namespace A059157.P500869933631012027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 (A037227 (n + 1)).toNat

end

end A059157.P500869933631012027

namespace A059157

/-- `A002023(A037227(n+1))` -/
def P500869933631012027.Spec : Prop :=
  ∀ n, P500869933631012027.a n = A059157 n

end A059157

/-! ## A059157.P10050983984801422234

`A164908(A366839(n+1))`
-/

namespace A059157.P10050983984801422234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 (A366839 (n + 1)).toNat

end

end A059157.P10050983984801422234

namespace A059157

/-- `A164908(A366839(n+1))` -/
def P10050983984801422234.Spec : Prop :=
  ∀ n, P10050983984801422234.a n = A059157 n

end A059157

/-! ## A059157.P2172893030462191074

`A029747(2*(A059132(n)+2))`
-/

namespace A059157.P2172893030462191074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (2 * (A059132 n + 2)).toNat

end

end A059157.P2172893030462191074

namespace A059157

/-- `A029747(2*(A059132(n)+2))` -/
def P2172893030462191074.Spec : Prop :=
  ∀ n, P2172893030462191074.a n = A059157 n

end A059157

/-! ## A059157.P5568499528248663637

`A059154(n)*A171977(n+1)`
-/

namespace A059157.P5568499528248663637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059154 n * A171977 (n + 1)

end

end A059157.P5568499528248663637

namespace A059157

/-- `A059154(n)*A171977(n+1)` -/
def P5568499528248663637.Spec : Prop :=
  ∀ n, P5568499528248663637.a n = A059157 n

end A059157

/-! ## A059157.P5511788473591593017

`A006519(n+1)²²*A004011(A006519(n+1))`
-/

namespace A059157.P5511788473591593017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) ^ 2) ^ 2 * A004011 (A006519 (n + 1)).toNat

end

end A059157.P5511788473591593017

namespace A059157

/-- `A006519(n+1)²²*A004011(A006519(n+1))` -/
def P5511788473591593017.Spec : Prop :=
  ∀ n, P5511788473591593017.a n = A059157 n

end A059157

/-! ## A059157.P14426433206096917410

`A006519((n+1)²)²*6*8/2`
-/

namespace A059157.P14426433206096917410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 ((n + 1) ^ 2) ^ 2 : ℚ) * (6 * ((8 : ℚ) / 2))

end

end A059157.P14426433206096917410

namespace A059157

/-- `A006519((n+1)²)²*6*8/2` -/
def P14426433206096917410.Spec : Prop :=
  ∀ n, P14426433206096917410.a n = (A059157 n : ℚ)

end A059157

/-!
# A059158: A hierarchical sequence (S(W'3{2,2}cc) - see A059126).

The programs for A059158, there is no canonical definition to state claims against.
-/

/-! ## A059158.P17012850394231542924

`ogf(24/(1-18x+32x^2))`
-/

namespace A059158.P17012850394231542924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24] [1, -18, 32] n

end

end A059158.P17012850394231542924

/-! ## A059158.P16166374008351234245

`3*2^n*∑[8^(n+1)]`
-/

namespace A059158.P16166374008351234245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059158.P16166374008351234245

/-! ## A059158.P4150871158644721025

`or(2*a(n-1), 16*a(n-1))` with `a(0)=24`
-/

namespace A059158.P4150871158644721025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  Nat.lor (2 * a (n - 1)) (16 * a (n - 1))

end

end A059158.P4150871158644721025

/-! ## A059158.P18266327026765428277

`18*a(n-1)-32*a(n-2)` with `a(0)=24, a(1)=432`
-/

namespace A059158.P18266327026765428277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24, 432] fun n a =>
  18 * a (n - 1) - 32 * a (n - 2)

end

end A059158.P18266327026765428277

/-! ## A059158.P12302356755540544229

`lcm(∑[12*8^n], A007283(n+3))`
-/

namespace A059158.P12302356755540544229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * 8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A007283 (n + 3))

end

end A059158.P12302356755540544229

/-!
# A059159: A hierarchical sequence (W'2{2}*c) - see A059126.

The programs for A059159, the canonical program `A059159.P5461267207590208954` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059159 has offset 1).

The definition of A059159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059159.P5461267207590208954

`4*A006519(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059159

/-- `4*A006519(n+1)` -/
def P5461267207590208954.Spec : Prop :=
  ∀ n, P5461267207590208954.a n = A059159 (n + 1)

theorem P5461267207590208954.correct : P5461267207590208954.Spec := by
  intro n
  simp only [A059159, Nat.add_sub_cancel]

end A059159

/-! ## A059159.P1658143455065069759

`2^(val(n+1, 2)+2)`
-/

namespace A059159.P1658143455065069759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 2)

end

end A059159.P1658143455065069759

namespace A059159

/-- `2^(val(n+1, 2)+2)` -/
def P1658143455065069759.Spec : Prop :=
  ∀ n, (P1658143455065069759.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P1776136928762637328

`2*(xor(n, n+1)+1)`
-/

namespace A059159.P1776136928762637328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor n (n + 1) + 1)

end

end A059159.P1776136928762637328

namespace A059159

/-- `2*(xor(n, n+1)+1)` -/
def P1776136928762637328.Spec : Prop :=
  ∀ n, (P1776136928762637328.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P11575222976058316625

`lcm(2, xor(n, n+1))+2`
-/

namespace A059159.P11575222976058316625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.xor n (n + 1)) + 2

end

end A059159.P11575222976058316625

namespace A059159

/-- `lcm(2, xor(n, n+1))+2` -/
def P11575222976058316625.Spec : Prop :=
  ∀ n, (P11575222976058316625.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P98605775841682775

`4*(or(n, n+1)-n)`
-/

namespace A059159.P98605775841682775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A059159.P98605775841682775

namespace A059159

/-- `4*(or(n, n+1)-n)` -/
def P98605775841682775.Spec : Prop :=
  ∀ n, P98605775841682775.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P5201030604408491158

`∑[2*Δ[xor(n, n-1)]]`
-/

namespace A059159.P5201030604408491158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059159.P5201030604408491158

namespace A059159

/-- `∑[2*Δ[xor(n, n-1)]]` -/
def P5201030604408491158.Spec : Prop :=
  ∀ n, P5201030604408491158.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P12126838491525670474

`∑[2*Δ[-xor(n, -n)]]`
-/

namespace A059159.P12126838491525670474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059159.P12126838491525670474

namespace A059159

/-- `∑[2*Δ[-xor(n, -n)]]` -/
def P12126838491525670474.Spec : Prop :=
  ∀ n, P12126838491525670474.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P17928476768241696355

`4*and(n+1, -(n+1))`
-/

namespace A059159.P17928476768241696355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A059159.P17928476768241696355

namespace A059159

/-- `4*and(n+1, -(n+1))` -/
def P17928476768241696355.Spec : Prop :=
  ∀ n, P17928476768241696355.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P1010301744934103919

`lcm(4, and(n, -(n+2)))+4`
-/

namespace A059159.P1010301744934103919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 4

end

end A059159.P1010301744934103919

namespace A059159

/-- `lcm(4, and(n, -(n+2)))+4` -/
def P1010301744934103919.Spec : Prop :=
  ∀ n, (P1010301744934103919.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P11409938516567512244

`∑{d}[xor(n, -(n+2)), #]+1`
-/

namespace A059159.P11409938516567512244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1

end

end A059159.P11409938516567512244

namespace A059159

/-- `∑{d}[xor(n, -(n+2)), #]+1` -/
def P11409938516567512244.Spec : Prop :=
  ∀ n, (P11409938516567512244.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P2079462794621247514

`4*gcd(n+1, (3-n)^10)`
-/

namespace A059159.P2079462794621247514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10)

end

end A059159.P2079462794621247514

namespace A059159

/-- `4*gcd(n+1, (3-n)^10)` -/
def P2079462794621247514.Spec : Prop :=
  ∀ n, (P2079462794621247514.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P6172847659210340826

`4*(n+1-and(n, n+1))`
-/

namespace A059159.P6172847659210340826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A059159.P6172847659210340826

namespace A059159

/-- `4*(n+1-and(n, n+1))` -/
def P6172847659210340826.Spec : Prop :=
  ∀ n, P6172847659210340826.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P15940812798102520945

`abs(4*or(n+1, -(n+1)))`
-/

namespace A059159.P15940812798102520945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))|

end

end A059159.P15940812798102520945

namespace A059159

/-- `abs(4*or(n+1, -(n+1)))` -/
def P15940812798102520945.Spec : Prop :=
  ∀ n, P15940812798102520945.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P6018028693131134224

`-(4*or(n+1, -(n+1)))`
-/

namespace A059159.P6018028693131134224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A059159.P6018028693131134224

namespace A059159

/-- `-(4*or(n+1, -(n+1)))` -/
def P6018028693131134224.Spec : Prop :=
  ∀ n, P6018028693131134224.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P5032938947100345948

`abs(2*xor(n, n-2-2*n))`
-/

namespace A059159.P5032938947100345948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.xor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))|

end

end A059159.P5032938947100345948

namespace A059159

/-- `abs(2*xor(n, n-2-2*n))` -/
def P5032938947100345948.Spec : Prop :=
  ∀ n, P5032938947100345948.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P242545694314657471

`-(2*xor(n, n-2-2*n))`
-/

namespace A059159.P242545694314657471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Int.xor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ)))

end

end A059159.P242545694314657471

namespace A059159

/-- `-(2*xor(n, n-2-2*n))` -/
def P242545694314657471.Spec : Prop :=
  ∀ n, P242545694314657471.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P14687889913448396148

`∑[2*Δ[and(1-2*n, 2*n)]]`
-/

namespace A059159.P14687889913448396148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059159.P14687889913448396148

namespace A059159

/-- `∑[2*Δ[and(1-2*n, 2*n)]]` -/
def P14687889913448396148.Spec : Prop :=
  ∀ n, P14687889913448396148.a n = A059159 (n + 1)

end A059159

/-! ## A059159.P4046146187558002955

`xor(n, n+1)+xor(n, n+1)+2`
-/

namespace A059159.P4046146187558002955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + (Nat.xor n (n + 1) + 2)

end

end A059159.P4046146187558002955

namespace A059159

/-- `xor(n, n+1)+xor(n, n+1)+2` -/
def P4046146187558002955.Spec : Prop :=
  ∀ n, (P4046146187558002955.a n : ℤ) = A059159 (n + 1)

end A059159

/-! ## A059159.P5442171554546743687

`A059161(n)/3`
-/

namespace A059159.P5442171554546743687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059161 n : ℚ) / 3

end

end A059159.P5442171554546743687

namespace A059159

/-- `A059161(n)/3` -/
def P5442171554546743687.Spec : Prop :=
  ∀ n, P5442171554546743687.a n = (A059159 (n + 1) : ℚ)

theorem P5442171554546743687.correct : P5442171554546743687.Spec := by
  intro n
  simp only [A059159, Nat.add_sub_cancel, A059159.P5442171554546743687.a, A059159.P5461267207590208954.a, A006519, A006519.P10435570611646570274.a, A059161, A059161.P11618394600926942160.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059159

/-! ## A059159.P6495996357953403531

`A059164(n)/4`
-/

namespace A059159.P6495996357953403531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059164 n : ℚ) / 4

end

end A059159.P6495996357953403531

namespace A059159

/-- `A059164(n)/4` -/
def P6495996357953403531.Spec : Prop :=
  ∀ n, P6495996357953403531.a n = (A059159 (n + 1) : ℚ)

theorem P6495996357953403531.correct : P6495996357953403531.Spec := by
  intro n
  simp only [A059159, Nat.add_sub_cancel, A059159.P6495996357953403531.a, A059159.P5461267207590208954.a, A006519, A006519.P10435570611646570274.a, A059164, A059164.P8258123959311374398.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059159

/-!
# A059161: A hierarchical sequence (W'2{3}*c - see A059126).

The programs for A059161, the canonical program `A059161.P11618394600926942160` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059161 has offset 0).

The definition of A059161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059161.P11618394600926942160

`12*A006519(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059161

/-- `12*A006519(n+1)` -/
def P11618394600926942160.Spec : Prop :=
  ∀ n, P11618394600926942160.a n = A059161 n

theorem P11618394600926942160.correct : P11618394600926942160.Spec := by
  intro n
  simp only [A059161]

end A059161

/-! ## A059161.P10994890732558853022

`∑[12*Δ[and(n, -n)]]`
-/

namespace A059161.P10994890732558853022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059161.P10994890732558853022

namespace A059161

/-- `∑[12*Δ[and(n, -n)]]` -/
def P10994890732558853022.Spec : Prop :=
  ∀ n, P10994890732558853022.a n = A059161 n

end A059161

/-! ## A059161.P15892264078824310475

`12*2^val(n+1, 2)`
-/

namespace A059161.P15892264078824310475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * 2 ^ SequenceMachineLib.valuation (n + 1) 2

end

end A059161.P15892264078824310475

namespace A059161

/-- `12*2^val(n+1, 2)` -/
def P15892264078824310475.Spec : Prop :=
  ∀ n, (P15892264078824310475.a n : ℤ) = A059161 n

end A059161

/-! ## A059161.P10261257659367690586

`6*(xor(n, n+1)+1)`
-/

namespace A059161.P10261257659367690586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (Nat.xor n (n + 1) + 1)

end

end A059161.P10261257659367690586

namespace A059161

/-- `6*(xor(n, n+1)+1)` -/
def P10261257659367690586.Spec : Prop :=
  ∀ n, (P10261257659367690586.a n : ℤ) = A059161 n

end A059161

/-! ## A059161.P15659145705115419271

`12*(or(n, n+1)-n)`
-/

namespace A059161.P15659145705115419271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A059161.P15659145705115419271

namespace A059161

/-- `12*(or(n, n+1)-n)` -/
def P15659145705115419271.Spec : Prop :=
  ∀ n, P15659145705115419271.a n = A059161 n

end A059161

/-! ## A059161.P6647677319682506876

`12*and(n+1, -(n+1))`
-/

namespace A059161.P6647677319682506876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A059161.P6647677319682506876

namespace A059161

/-- `12*and(n+1, -(n+1))` -/
def P6647677319682506876.Spec : Prop :=
  ∀ n, P6647677319682506876.a n = A059161 n

end A059161

/-! ## A059161.P6065906082779838252

`lcm(3, 2^(val(n+1, 2)+2))`
-/

namespace A059161.P6065906082779838252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 2))

end

end A059161.P6065906082779838252

namespace A059161

/-- `lcm(3, 2^(val(n+1, 2)+2))` -/
def P6065906082779838252.Spec : Prop :=
  ∀ n, (P6065906082779838252.a n : ℤ) = A059161 n

end A059161

/-! ## A059161.P10184449167468766205

`12*(n+1-and(n, n+1))`
-/

namespace A059161.P10184449167468766205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A059161.P10184449167468766205

namespace A059161

/-- `12*(n+1-and(n, n+1))` -/
def P10184449167468766205.Spec : Prop :=
  ∀ n, P10184449167468766205.a n = A059161 n

end A059161

/-! ## A059161.P3193683137886463734

`3*A059159(n+1)`
-/

namespace A059161.P3193683137886463734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059159 (n + 1)

end

end A059161.P3193683137886463734

namespace A059161

/-- `3*A059159(n+1)` -/
def P3193683137886463734.Spec : Prop :=
  ∀ n, P3193683137886463734.a n = A059161 n

theorem P3193683137886463734.correct : P3193683137886463734.Spec := by
  intro n
  simp only [A059161, Nat.add_sub_cancel, A059161.P3193683137886463734.a, A059161.P11618394600926942160.a, A006519, A006519.P10435570611646570274.a, A059159, A059159.P5461267207590208954.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059161

/-! ## A059161.P7446303562025544624

`6*A171977(n+1)`
-/

namespace A059161.P7446303562025544624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A171977 (n + 1)

end

end A059161.P7446303562025544624

namespace A059161

/-- `6*A171977(n+1)` -/
def P7446303562025544624.Spec : Prop :=
  ∀ n, P7446303562025544624.a n = A059161 n

end A059161

/-! ## A059161.P2524882434469440581

`3/4*A059164(n)`
-/

namespace A059161.P2524882434469440581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A059164 n : ℚ)

end

end A059161.P2524882434469440581

namespace A059161

/-- `3/4*A059164(n)` -/
def P2524882434469440581.Spec : Prop :=
  ∀ n, P2524882434469440581.a n = (A059161 n : ℚ)

theorem P2524882434469440581.correct : P2524882434469440581.Spec := by
  intro n
  simp only [A059161, Nat.add_sub_cancel, A059161.P2524882434469440581.a, A059161.P11618394600926942160.a, A006519, A006519.P10435570611646570274.a, A059164, A059164.P8258123959311374398.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059161

/-! ## A059161.P3680257487821147576

`3*2^A085058(n)`
-/

namespace A059161.P3680257487821147576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A085058 n : ℤ)

end

end A059161.P3680257487821147576

namespace A059161

/-- `3*2^A085058(n)` -/
def P3680257487821147576.Spec : Prop :=
  ∀ n, P3680257487821147576.a n = (A059161 n : ℚ)

end A059161

/-! ## A059161.P15947940083683081563

`3*(A088837(n+1)+1)`
-/

namespace A059161.P15947940083683081563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A088837 (n + 1) + 1)

end

end A059161.P15947940083683081563

namespace A059161

/-- `3*(A088837(n+1)+1)` -/
def P15947940083683081563.Spec : Prop :=
  ∀ n, P15947940083683081563.a n = A059161 n

end A059161

/-! ## A059161.P4788667011383551216

`3*(A100892(n+1)+2)`
-/

namespace A059161.P4788667011383551216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A100892 (n + 1) + 2)

end

end A059161.P4788667011383551216

namespace A059161

/-- `3*(A100892(n+1)+2)` -/
def P4788667011383551216.Spec : Prop :=
  ∀ n, P4788667011383551216.a n = A059161 n

end A059161

/-! ## A059161.P18121054529566115866

`3*(A393210(n+1)+3)`
-/

namespace A059161.P18121054529566115866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A393210 (n + 1) + 3)

end

end A059161.P18121054529566115866

namespace A059161

/-- `3*(A393210(n+1)+3)` -/
def P18121054529566115866.Spec : Prop :=
  ∀ n, P18121054529566115866.a n = A059161 n

end A059161

/-! ## A059161.P5658425320213900633

`3/2*A037239(n+1)`
-/

namespace A059161.P5658425320213900633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A037239 (n + 1) : ℚ)

end

end A059161.P5658425320213900633

namespace A059161

/-- `3/2*A037239(n+1)` -/
def P5658425320213900633.Spec : Prop :=
  ∀ n, P5658425320213900633.a n = (A059161 n : ℚ)

end A059161

/-! ## A059161.P13564459595547115809

`A007283(A085058(n))`
-/

namespace A059161.P13564459595547115809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A085058 n).toNat

end

end A059161.P13564459595547115809

namespace A059161

/-- `A007283(A085058(n))` -/
def P13564459595547115809.Spec : Prop :=
  ∀ n, P13564459595547115809.a n = A059161 n

end A059161

/-! ## A059161.P14543731778945102324

`A152829(A059139(n))`
-/

namespace A059161.P14543731778945102324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152829 (A059139 n).toNat

end

end A059161.P14543731778945102324

namespace A059161

/-- `A152829(A059139(n))` -/
def P14543731778945102324.Spec : Prop :=
  ∀ n, P14543731778945102324.a n = A059161 n

end A059161

/-! ## A059161.P10280459083755618139

`A008594(A006519(n+1))`
-/

namespace A059161.P10280459083755618139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A006519 (n + 1)).toNat

end

end A059161.P10280459083755618139

namespace A059161

/-- `A008594(A006519(n+1))` -/
def P10280459083755618139.Spec : Prop :=
  ∀ n, P10280459083755618139.a n = A059161 n

end A059161

/-! ## A059161.P14449863342409247080

`A081808(A001511(n+1))`
-/

namespace A059161.P14449863342409247080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081808 (A001511 (n + 1)).toNat

end

end A059161.P14449863342409247080

namespace A059161

/-- `A081808(A001511(n+1))` -/
def P14449863342409247080.Spec : Prop :=
  ∀ n, P14449863342409247080.a n = A059161 n

end A059161

/-!
# A059162: A hierarchical sequence (S(W'2{3}*c) - see A059126).

The programs for A059162, the canonical program `A059162.P12958874502294538165` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059162 has offset 0).

The definition of A059162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059162.P12958874502294538165

`3*2^(2+n)*(1+n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059162

/-- `3*2^(2+n)*(1+n)` -/
def P12958874502294538165.Spec : Prop :=
  ∀ n, (P12958874502294538165.a n : ℤ) = A059162 n

theorem P12958874502294538165.correct : P12958874502294538165.Spec := by
  intro n
  simp only [A059162]

end A059162

/-! ## A059162.P922731232638896114

`4*a(n-1)-4*a(n-2)` with `a(0)=12, a(1)=48`
-/

namespace A059162.P922731232638896114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 48] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A059162.P922731232638896114

namespace A059162

/-- `4*a(n-1)-4*a(n-2)` -/
def P922731232638896114.Spec : Prop :=
  ∀ n, P922731232638896114.a n = A059162 n

theorem P922731232638896114.correct : P922731232638896114.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A059162, Nat.add_sub_cancel, A059162.P922731232638896114.a, A059162.P12958874502294538165.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A059162, Nat.add_sub_cancel, A059162.P922731232638896114.a, A059162.P12958874502294538165.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059162

/-! ## A059162.P12294220551560705244

`ogf(12/(1-4x+4x^2))`
-/

namespace A059162.P12294220551560705244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12] [1, -4, 4] n

end

end A059162.P12294220551560705244

namespace A059162

/-- `ogf(12/(1-4x+4x^2))` -/
def P12294220551560705244.Spec : Prop :=
  ∀ n, P12294220551560705244.a n = A059162 n

end A059162

/-! ## A059162.P380523157552247049

`∑[A167667(n+2)]`
-/

namespace A059162.P380523157552247049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P380523157552247049

namespace A059162

/-- `∑[A167667(n+2)]` -/
def P380523157552247049.Spec : Prop :=
  ∀ n, P380523157552247049.a n = A059162 n

end A059162

/-! ## A059162.P3850121876225531400

`∑[12*A001792(n)]`
-/

namespace A059162.P3850121876225531400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P3850121876225531400

namespace A059162

/-- `∑[12*A001792(n)]` -/
def P3850121876225531400.Spec : Prop :=
  ∀ n, P3850121876225531400.a n = A059162 n

end A059162

/-! ## A059162.P6759611571130681233

`∑[A048474(n+2)-1]`
-/

namespace A059162.P6759611571130681233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P6759611571130681233

namespace A059162

/-- `∑[A048474(n+2)-1]` -/
def P6759611571130681233.Spec : Prop :=
  ∀ n, P6759611571130681233.a n = A059162 n

end A059162

/-! ## A059162.P1517190608800781479

`∑[2*A128543(n+2)]`
-/

namespace A059162.P1517190608800781479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P1517190608800781479

namespace A059162

/-- `∑[2*A128543(n+2)]` -/
def P1517190608800781479.Spec : Prop :=
  ∀ n, P1517190608800781479.a n = A059162 n

end A059162

/-! ## A059162.P1292352629025545642

`∑[A203150(2*(n+2))]`
-/

namespace A059162.P1292352629025545642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203150 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P1292352629025545642

namespace A059162

/-- `∑[A203150(2*(n+2))]` -/
def P1292352629025545642.Spec : Prop :=
  ∀ n, P1292352629025545642.a n = A059162 n

end A059162

/-! ## A059162.P10878249622484639471

`∑[3*A001787(n+2)]`
-/

namespace A059162.P10878249622484639471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P10878249622484639471

namespace A059162

/-- `∑[3*A001787(n+2)]` -/
def P10878249622484639471.Spec : Prop :=
  ∀ n, P10878249622484639471.a n = A059162 n

end A059162

/-! ## A059162.P11259000519606377770

`∑[A058582(2*n+3)]`
-/

namespace A059162.P11259000519606377770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058582 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P11259000519606377770

namespace A059162

/-- `∑[A058582(2*n+3)]` -/
def P11259000519606377770.Spec : Prop :=
  ∀ n, P11259000519606377770.a n = A059162 n

end A059162

/-! ## A059162.P10711701783165028540

`∑[4*A084858(n+1)]`
-/

namespace A059162.P10711701783165028540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P10711701783165028540

namespace A059162

/-- `∑[4*A084858(n+1)]` -/
def P10711701783165028540.Spec : Prop :=
  ∀ n, P10711701783165028540.a n = A059162 n

end A059162

/-! ## A059162.P6837939585262667781

`∑[3*A097067(n+3)]`
-/

namespace A059162.P6837939585262667781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097067 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P6837939585262667781

namespace A059162

/-- `∑[3*A097067(n+3)]` -/
def P6837939585262667781.Spec : Prop :=
  ∀ n, P6837939585262667781.a n = A059162 n

end A059162

/-! ## A059162.P6780826022708712134

`∑[3*A139756(n+3)]`
-/

namespace A059162.P6780826022708712134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139756 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P6780826022708712134

namespace A059162

/-- `∑[3*A139756(n+3)]` -/
def P6780826022708712134.Spec : Prop :=
  ∀ n, P6780826022708712134.a n = A059162 n

end A059162

/-! ## A059162.P9399103723904779142

`∑[A036542(n+2)+n+1]`
-/

namespace A059162.P9399103723904779142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036542 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P9399103723904779142

namespace A059162

/-- `∑[A036542(n+2)+n+1]` -/
def P9399103723904779142.Spec : Prop :=
  ∀ n, P9399103723904779142.a n = A059162 n

end A059162

/-! ## A059162.P10718367008502745133

`∑[(n+2)*A007283(n+1)]`
-/

namespace A059162.P10718367008502745133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A007283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P10718367008502745133

namespace A059162

/-- `∑[(n+2)*A007283(n+1)]` -/
def P10718367008502745133.Spec : Prop :=
  ∀ n, P10718367008502745133.a n = A059162 n

end A059162

/-! ## A059162.P1568294157340118205

`∑[(n+2)*A091629(n+1)]`
-/

namespace A059162.P1568294157340118205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A091629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P1568294157340118205

namespace A059162

/-- `∑[(n+2)*A091629(n+1)]` -/
def P1568294157340118205.Spec : Prop :=
  ∀ n, P1568294157340118205.a n = A059162 n

end A059162

/-! ## A059162.P16770458829537179072

`∑[(n+2)*A003945(n+2)]`
-/

namespace A059162.P16770458829537179072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A003945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P16770458829537179072

namespace A059162

/-- `∑[(n+2)*A003945(n+2)]` -/
def P16770458829537179072.Spec : Prop :=
  ∀ n, P16770458829537179072.a n = A059162 n

end A059162

/-! ## A059162.P3157341905940256305

`∑[(n+2)*A042950(n+2)]`
-/

namespace A059162.P3157341905940256305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A042950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P3157341905940256305

namespace A059162

/-- `∑[(n+2)*A042950(n+2)]` -/
def P3157341905940256305.Spec : Prop :=
  ∀ n, P3157341905940256305.a n = A059162 n

end A059162

/-! ## A059162.P16763626526653759798

`∑[(n+2)*A082505(n+2)]`
-/

namespace A059162.P16763626526653759798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A082505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P16763626526653759798

namespace A059162

/-- `∑[(n+2)*A082505(n+2)]` -/
def P16763626526653759798.Spec : Prop :=
  ∀ n, P16763626526653759798.a n = A059162 n

end A059162

/-! ## A059162.P2770093110953918390

`∑[(n+2)*A111286(n+3)]`
-/

namespace A059162.P2770093110953918390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A111286 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059162.P2770093110953918390

namespace A059162

/-- `∑[(n+2)*A111286(n+3)]` -/
def P2770093110953918390.Spec : Prop :=
  ∀ n, P2770093110953918390.a n = A059162 n

end A059162

/-!
# A059163: A hierarchical sequence (W'3{2,2}*c - see A059126).

The programs for A059163, the canonical program `A059163.P2638595537801817336` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059163 has offset 0).

The definition of A059163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059151, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059163.P2638595537801817336

`A059151(3*n)+A059151(3*n+1)+A059151(3*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A059163

/-- `A059151(3*n)+A059151(3*n+1)+A059151(3*n)` -/
def P2638595537801817336.Spec : Prop :=
  ∀ n, P2638595537801817336.a n = A059163 n

theorem P2638595537801817336.correct : P2638595537801817336.Spec := by
  intro n
  simp only [A059163]

end A059163

/-! ## A059163.P4050305139261793708

`2^(C(2, n%3)+val(∑[char[3*n]], 2)+1)`
-/

namespace A059163.P4050305139261793708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (Nat.choose 2 (n % 3) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A059163.P4050305139261793708

namespace A059163

/-- `2^(C(2, n%3)+val(∑[char[3*n]], 2)+1)` -/
def P4050305139261793708.Spec : Prop :=
  ∀ n, (P4050305139261793708.a n : ℤ) = A059163 n

end A059163

/-! ## A059163.P14629231861819293782

`4*A059149(n)`
-/

namespace A059163.P14629231861819293782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A059149 n

end

end A059163.P14629231861819293782

namespace A059163

/-- `4*A059149(n)` -/
def P14629231861819293782.Spec : Prop :=
  ∀ n, P14629231861819293782.a n = A059163 n

end A059163

/-! ## A059163.P305274136849333222

`2^(1+A059129(n))`
-/

namespace A059163.P305274136849333222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A059129 n : ℤ)

end

end A059163.P305274136849333222

namespace A059163

/-- `2^(1+A059129(n))` -/
def P305274136849333222.Spec : Prop :=
  ∀ n, P305274136849333222.a n = (A059163 n : ℚ)

end A059163

/-! ## A059163.P773856281169064387

`2^(floor(A059126(n)/2)+2)`
-/

namespace A059163.P773856281169064387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(A059126 n : ℚ) / 2⌋ + 2 : ℤ)

end

end A059163.P773856281169064387

namespace A059163

/-- `2^(floor(A059126(n)/2)+2)` -/
def P773856281169064387.Spec : Prop :=
  ∀ n, P773856281169064387.a n = (A059163 n : ℚ)

end A059163

/-! ## A059163.P1899844325056162271

`A059159(C(2, n%3)*∑[char[3*n]])`
-/

namespace A059163.P1899844325056162271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059159 (Nat.choose 2 (n % 3) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A059163.P1899844325056162271

namespace A059163

/-- `A059159(C(2, n%3)*∑[char[3*n]])` -/
def P1899844325056162271.Spec : Prop :=
  ∀ n, P1899844325056162271.a n = A059163 n

end A059163

/-! ## A059163.P11597713262548287566

`A004756(A059149(n))`
-/

namespace A059163.P11597713262548287566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (A059149 n).toNat

end

end A059163.P11597713262548287566

namespace A059163

/-- `A004756(A059149(n))` -/
def P11597713262548287566.Spec : Prop :=
  ∀ n, P11597713262548287566.a n = A059163 n

end A059163

/-! ## A059163.P6925372631842225486

`A029747(A059143(n))`
-/

namespace A059163.P6925372631842225486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A059143 n).toNat

end

end A059163.P6925372631842225486

namespace A059163

/-- `A029747(A059143(n))` -/
def P6925372631842225486.Spec : Prop :=
  ∀ n, P6925372631842225486.a n = A059163 n

end A059163

/-! ## A059163.P17872741348431068664

`A198633(A059129(n))`
-/

namespace A059163.P17872741348431068664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (A059129 n).toNat

end

end A059163.P17872741348431068664

namespace A059163

/-- `A198633(A059129(n))` -/
def P17872741348431068664.Spec : Prop :=
  ∀ n, P17872741348431068664.a n = A059163 n

end A059163

/-! ## A059163.P17289434151338839950

`A016116(A059126(n)+4)`
-/

namespace A059163.P17289434151338839950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A059126 n + 4).toNat

end

end A059163.P17289434151338839950

namespace A059163

/-- `A016116(A059126(n)+4)` -/
def P17289434151338839950.Spec : Prop :=
  ∀ n, P17289434151338839950.a n = A059163 n

end A059163

/-! ## A059163.P9841585786734010895

`2*2*A059150(A047354(n+1))`
-/

namespace A059163.P9841585786734010895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A059150 (A047354 (n + 1)).toNat)

end

end A059163.P9841585786734010895

namespace A059163

/-- `2*2*A059150(A047354(n+1))` -/
def P9841585786734010895.Spec : Prop :=
  ∀ n, P9841585786734010895.a n = A059163 n

end A059163

/-! ## A059163.P3968935096269533127

`2*2*A059150(A047275(n+1))`
-/

namespace A059163.P3968935096269533127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A059150 (A047275 (n + 1)).toNat)

end

end A059163.P3968935096269533127

namespace A059163

/-- `2*2*A059150(A047275(n+1))` -/
def P3968935096269533127.Spec : Prop :=
  ∀ n, P3968935096269533127.a n = A059163 n

end A059163

/-! ## A059163.P2247705494048569727

`2*2*A059150(A047347(n+1))`
-/

namespace A059163.P2247705494048569727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A059150 (A047347 (n + 1)).toNat)

end

end A059163.P2247705494048569727

namespace A059163

/-- `2*2*A059150(A047347(n+1))` -/
def P2247705494048569727.Spec : Prop :=
  ∀ n, P2247705494048569727.a n = A059163 n

end A059163

/-! ## A059163.P1525924573692899994

`2*2*A059150(A047320(n+1))`
-/

namespace A059163.P1525924573692899994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A059150 (A047320 (n + 1)).toNat)

end

end A059163.P1525924573692899994

namespace A059163

/-- `2*2*A059150(A047320(n+1))` -/
def P1525924573692899994.Spec : Prop :=
  ∀ n, P1525924573692899994.a n = A059163 n

end A059163

/-! ## A059163.P12458405716475394933

`2*2*A059150(A047323(n+1))`
-/

namespace A059163.P12458405716475394933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A059150 (A047323 (n + 1)).toNat)

end

end A059163.P12458405716475394933

namespace A059163

/-- `2*2*A059150(A047323(n+1))` -/
def P12458405716475394933.Spec : Prop :=
  ∀ n, P12458405716475394933.a n = A059163 n

end A059163

/-! ## A059163.P9484507386935134224

`4*A059151(3*n)`
-/

namespace A059163.P9484507386935134224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A059151 (3 * n)

end

end A059163.P9484507386935134224

namespace A059163

/-- `4*A059151(3*n)` -/
def P9484507386935134224.Spec : Prop :=
  ∀ n, P9484507386935134224.a n = A059163 n

end A059163

/-! ## A059163.P6088922584032768725

`A059150(2*A047311(n+1))`
-/

namespace A059163.P6088922584032768725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (2 * A047311 (n + 1)).toNat

end

end A059163.P6088922584032768725

namespace A059163

/-- `A059150(2*A047311(n+1))` -/
def P6088922584032768725.Spec : Prop :=
  ∀ n, P6088922584032768725.a n = A059163 n

end A059163

/-! ## A059163.P226157182743532223

`filter[A059150(2*n), A011765(#)]`
-/

namespace A059163.P226157182743532223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A059163.P226157182743532223

namespace A059163

/-- `filter[A059150(2*n), A011765(#)]` -/
def P226157182743532223.Spec : Prop :=
  ∀ n, P226157182743532223.a n = A059163 n

end A059163

/-! ## A059163.P7947961311129577521

`filter[A059150(2*n), A036988(#)]`
-/

namespace A059163.P7947961311129577521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036988 (f1 j).toNat = 1) n)

end

end A059163.P7947961311129577521

namespace A059163

/-- `filter[A059150(2*n), A036988(#)]` -/
def P7947961311129577521.Spec : Prop :=
  ∀ n, P7947961311129577521.a n = A059163 n

end A059163

/-! ## A059163.P3110544773375042585

`filter[A059150(2*n), A043545(#)]`
-/

namespace A059163.P3110544773375042585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059150 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A059163.P3110544773375042585

namespace A059163

/-- `filter[A059150(2*n), A043545(#)]` -/
def P3110544773375042585.Spec : Prop :=
  ∀ n, P3110544773375042585.a n = A059163 n

end A059163

/-!
# A059164: A hierarchical sequence (W'3{2,2}*cc - see A059126).

The programs for A059164, the canonical program `A059164.P8258123959311374398` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059164 has offset 0).

The definition of A059164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059164.P8258123959311374398

`16*A006519(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059164

/-- `16*A006519(n+1)` -/
def P8258123959311374398.Spec : Prop :=
  ∀ n, P8258123959311374398.a n = A059164 n

theorem P8258123959311374398.correct : P8258123959311374398.Spec := by
  intro n
  simp only [A059164]

end A059164

/-! ## A059164.P9643969609765209136

`∑[16*Δ[and(n, -n)]]`
-/

namespace A059164.P9643969609765209136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059164.P9643969609765209136

namespace A059164

/-- `∑[16*Δ[and(n, -n)]]` -/
def P9643969609765209136.Spec : Prop :=
  ∀ n, P9643969609765209136.a n = A059164 n

end A059164

/-! ## A059164.P16029317561797330937

`2^(val(n+1, 2)+4)`
-/

namespace A059164.P16029317561797330937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 4)

end

end A059164.P16029317561797330937

namespace A059164

/-- `2^(val(n+1, 2)+4)` -/
def P16029317561797330937.Spec : Prop :=
  ∀ n, (P16029317561797330937.a n : ℤ) = A059164 n

end A059164

/-! ## A059164.P12567021200483937167

`8*(xor(n, n+1)+1)`
-/

namespace A059164.P12567021200483937167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (Nat.xor n (n + 1) + 1)

end

end A059164.P12567021200483937167

namespace A059164

/-- `8*(xor(n, n+1)+1)` -/
def P12567021200483937167.Spec : Prop :=
  ∀ n, (P12567021200483937167.a n : ℤ) = A059164 n

end A059164

/-! ## A059164.P2741819256692381807

`lcm(8, xor(n, n+1))+8`
-/

namespace A059164.P2741819256692381807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (Nat.xor n (n + 1)) + 8

end

end A059164.P2741819256692381807

namespace A059164

/-- `lcm(8, xor(n, n+1))+8` -/
def P2741819256692381807.Spec : Prop :=
  ∀ n, (P2741819256692381807.a n : ℤ) = A059164 n

end A059164

/-! ## A059164.P4687648375476400329

`16*(or(n, n+1)-n)`
-/

namespace A059164.P4687648375476400329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

end

end A059164.P4687648375476400329

namespace A059164

/-- `16*(or(n, n+1)-n)` -/
def P4687648375476400329.Spec : Prop :=
  ∀ n, P4687648375476400329.a n = A059164 n

end A059164

/-! ## A059164.P1641170944213749027

`16*and(n+1, -(n+1))`
-/

namespace A059164.P1641170944213749027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A059164.P1641170944213749027

namespace A059164

/-- `16*and(n+1, -(n+1))` -/
def P1641170944213749027.Spec : Prop :=
  ∀ n, P1641170944213749027.a n = A059164 n

end A059164

/-! ## A059164.P9707172172568073313

`2*8*(n+1-and(n, n+1))`
-/

namespace A059164.P9707172172568073313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (8 * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)))

end

end A059164.P9707172172568073313

namespace A059164

/-- `2*8*(n+1-and(n, n+1))` -/
def P9707172172568073313.Spec : Prop :=
  ∀ n, P9707172172568073313.a n = A059164 n

end A059164

/-! ## A059164.P2487908896309864939

`2*A037239(n+1)`
-/

namespace A059164.P2487908896309864939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037239 (n + 1)

end

end A059164.P2487908896309864939

namespace A059164

/-- `2*A037239(n+1)` -/
def P2487908896309864939.Spec : Prop :=
  ∀ n, P2487908896309864939.a n = A059164 n

end A059164

/-! ## A059164.P13528934452461617663

`4*A059159(n+1)`
-/

namespace A059164.P13528934452461617663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A059159 (n + 1)

end

end A059164.P13528934452461617663

namespace A059164

/-- `4*A059159(n+1)` -/
def P13528934452461617663.Spec : Prop :=
  ∀ n, P13528934452461617663.a n = A059164 n

theorem P13528934452461617663.correct : P13528934452461617663.Spec := by
  intro n
  simp only [A059164, Nat.add_sub_cancel, A059164.P13528934452461617663.a, A059164.P8258123959311374398.a, A006519, A006519.P10435570611646570274.a, A059159, A059159.P5461267207590208954.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059164

/-! ## A059164.P13346143948395526841

`8*A171977(n+1)`
-/

namespace A059164.P13346143948395526841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A171977 (n + 1)

end

end A059164.P13346143948395526841

namespace A059164

/-- `8*A171977(n+1)` -/
def P13346143948395526841.Spec : Prop :=
  ∀ n, P13346143948395526841.a n = A059164 n

end A059164

/-! ## A059164.P18341314416521605212

`4/3*A059161(n)`
-/

namespace A059164.P18341314416521605212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A059161 n : ℚ)

end

end A059164.P18341314416521605212

namespace A059164

/-- `4/3*A059161(n)` -/
def P18341314416521605212.Spec : Prop :=
  ∀ n, P18341314416521605212.a n = (A059164 n : ℚ)

theorem P18341314416521605212.correct : P18341314416521605212.Spec := by
  intro n
  simp only [A059164, Nat.add_sub_cancel, A059164.P18341314416521605212.a, A059164.P8258123959311374398.a, A006519, A006519.P10435570611646570274.a, A059161, A059161.P11618394600926942160.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059164

/-! ## A059164.P4971963191984991195

`2^(A085058(n)+2)`
-/

namespace A059164.P4971963191984991195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A085058 n + 2 : ℤ)

end

end A059164.P4971963191984991195

namespace A059164

/-- `2^(A085058(n)+2)` -/
def P4971963191984991195.Spec : Prop :=
  ∀ n, P4971963191984991195.a n = (A059164 n : ℚ)

end A059164

/-! ## A059164.P3074994992391432276

`4*(A088837(n+1)+1)`
-/

namespace A059164.P3074994992391432276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A088837 (n + 1) + 1)

end

end A059164.P3074994992391432276

namespace A059164

/-- `4*(A088837(n+1)+1)` -/
def P3074994992391432276.Spec : Prop :=
  ∀ n, P3074994992391432276.a n = A059164 n

end A059164

/-! ## A059164.P17753016606808793428

`4*(A100892(n+1)+2)`
-/

namespace A059164.P17753016606808793428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A100892 (n + 1) + 2)

end

end A059164.P17753016606808793428

namespace A059164

/-- `4*(A100892(n+1)+2)` -/
def P17753016606808793428.Spec : Prop :=
  ∀ n, P17753016606808793428.a n = A059164 n

end A059164

/-! ## A059164.P12357927656299248012

`4*(A393210(n+1)+3)`
-/

namespace A059164.P12357927656299248012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A393210 (n + 1) + 3)

end

end A059164.P12357927656299248012

namespace A059164

/-- `4*(A393210(n+1)+3)` -/
def P12357927656299248012.Spec : Prop :=
  ∀ n, P12357927656299248012.a n = A059164 n

end A059164

/-! ## A059164.P18171560694563343708

`2^(A090739(n+1)+1)`
-/

namespace A059164.P18171560694563343708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A090739 (n + 1) + 1 : ℤ)

end

end A059164.P18171560694563343708

namespace A059164

/-- `2^(A090739(n+1)+1)` -/
def P18171560694563343708.Spec : Prop :=
  ∀ n, P18171560694563343708.a n = (A059164 n : ℚ)

end A059164

/-! ## A059164.P9968670389022447002

`2^(A001511(n+1)+3)`
-/

namespace A059164.P9968670389022447002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001511 (n + 1) + 3 : ℤ)

end

end A059164.P9968670389022447002

namespace A059164

/-- `2^(A001511(n+1)+3)` -/
def P9968670389022447002.Spec : Prop :=
  ∀ n, P9968670389022447002.a n = (A059164 n : ℚ)

end A059164

/-! ## A059164.P2680160598481946632

`2^(4+A007814(n+1))`
-/

namespace A059164.P2680160598481946632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (4 + A007814 (n + 1) : ℤ)

end

end A059164.P2680160598481946632

namespace A059164

/-- `2^(4+A007814(n+1))` -/
def P2680160598481946632.Spec : Prop :=
  ∀ n, P2680160598481946632.a n = (A059164 n : ℚ)

end A059164

/-! ## A059164.P1659992239621441154

`2^(A000005(xor(n, n+1)+1)+2)`
-/

namespace A059164.P1659992239621441154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (Nat.xor n (n + 1) + 1) + 2 : ℤ)

end

end A059164.P1659992239621441154

namespace A059164

/-- `2^(A000005(xor(n, n+1)+1)+2)` -/
def P1659992239621441154.Spec : Prop :=
  ∀ n, P1659992239621441154.a n = (A059164 n : ℚ)

end A059164

/-!
# A059165: a(n) = (n+1)*2^(n+4).

The programs for A059165, there is no canonical definition to state claims against.
-/

/-! ## A059165.P13157642128568428409

`2^(n+3)*n`
-/

namespace A059165.P13157642128568428409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3) * n

end

end A059165.P13157642128568428409

/-! ## A059165.P10931103468740728075

`n*2^(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059165.P10931103468740728075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ (n + 3)

end

end A059165.P10931103468740728075

/-! ## A059165.P5641875650865902821

`ogf(16x/(1-4x+4x^2))`
-/

namespace A059165.P5641875650865902821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16] [1, -4, 4] n

end

end A059165.P5641875650865902821

/-! ## A059165.P13847795288614536509

`lcm(2, 8*n*2^n)`
-/

namespace A059165.P13847795288614536509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (8 * n * 2 ^ n)

end

end A059165.P13847795288614536509

/-! ## A059165.P13669229383189655942

`n/2^xor(n+2, -1)`
-/

namespace A059165.P13669229383189655942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (Int.xor (n + 2 : ℤ) (-1) : ℤ)

end

end A059165.P13669229383189655942

/-! ## A059165.P573965141957063715

`and(8*n*2^n, -2)`
-/

namespace A059165.P573965141957063715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (8 * (n * 2 ^ n) : ℤ) (-2)

end

end A059165.P573965141957063715

/-! ## A059165.P4437141051624618016

`floor(n*∑[2*a(n-1)])` with `a(0)=8, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A059165.P4437141051624618016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059165.P4437141051624618016

/-! ## A059165.P14813545556442809851

`abs(n*record[2*a(n-1)])` with `a(0)=8, a(1)=2, a(2)=16`
-/

namespace A059165.P14813545556442809851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 2, 16] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059165.P14813545556442809851

/-! ## A059165.P17428664025236989154

`a(n-1)+a(n-1)+2^(n+3)` with `a(0)=0`
-/

namespace A059165.P17428664025236989154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ (n + 3))

end

end A059165.P17428664025236989154

/-! ## A059165.P3961400918943627896

`A291526(n+3)-4`
-/

namespace A059165.P3961400918943627896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291526 (n + 3) - 4

end

end A059165.P3961400918943627896

/-! ## A059165.P2733482083524250178

`abs(16*A085750(n+1))`
-/

namespace A059165.P2733482083524250178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |16 * A085750 (n + 1)|

end

end A059165.P2733482083524250178

/-! ## A059165.P8793690273477091289

`∑[A058922(n+2)]-4`
-/

namespace A059165.P8793690273477091289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A059165.P8793690273477091289

/-! ## A059165.P16056308422763946031

`n*A000225(n+3)+n`
-/

namespace A059165.P16056308422763946031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000225 (n + 3) + (n : ℤ)

end

end A059165.P16056308422763946031

/-! ## A059165.P1789774033108289805

`A241204(n+1)-2^(n+3)`
-/

namespace A059165.P1789774033108289805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241204 (n + 1) - (2 ^ (n + 3) : ℤ)

end

end A059165.P1789774033108289805

/-! ## A059165.P11034113225015041788

`xor(1, n*A131577(n+4)+1)`
-/

namespace A059165.P11034113225015041788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A131577 (n + 4) + 1)

end

end A059165.P11034113225015041788

/-! ## A059165.P17872987115129273606

`(A134067(n+2)/4+1)*2*n-n`
-/

namespace A059165.P17872987115129273606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134067 (n + 2) : ℚ) / 4 + 1) * (2 * n : ℚ) - (n : ℚ)

end

end A059165.P17872987115129273606

/-! ## A059165.P3189843579373989145

`A059162(n)-A001787(n+3)`
-/

namespace A059165.P3189843579373989145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059162 n - A001787 (n + 3)

end

end A059165.P3189843579373989145

/-! ## A059165.P4688496740245413250

`A118417(n)-2*A143126(n)`
-/

namespace A059165.P4688496740245413250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118417 n - 2 * A143126 n

end

end A059165.P4688496740245413250

/-! ## A059165.P5637771592715250788

`A118417(n+1)-A007283(n+2)`
-/

namespace A059165.P5637771592715250788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118417 (n + 1) - A007283 (n + 2)

end

end A059165.P5637771592715250788

/-! ## A059165.P163654554411555838

`A118415(n+2)-A020714(n+1)`
-/

namespace A059165.P163654554411555838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118415 (n + 2) - A020714 (n + 1)

end

end A059165.P163654554411555838

/-!
# A059166: Number of n-node connected labeled graphs without endpoints.

The programs for A059166, there is no canonical definition to state claims against.
-/

/-! ## A059166.P13660878624718096212

`A001187(n)-A327362(n)`
-/

namespace A059166.P13660878624718096212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n - A327362 n

end

end A059166.P13660878624718096212

/-! ## A059166.P7825436814500619373

`A223894(A179865(n+1))-A327362(n)`
-/

namespace A059166.P7825436814500619373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A179865 (n + 1)).toNat - A327362 n

end

end A059166.P7825436814500619373

/-! ## A059166.P3915837064296781237

`A223894(A065033(∑[2*n]))-A327362(n)`
-/

namespace A059166.P3915837064296781237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A065033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A327362 n

end

end A059166.P3915837064296781237

/-! ## A059166.P7133226528750657433

`A223894(A255047(n)-A002662(n))-A327362(n)`
-/

namespace A059166.P7133226528750657433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A255047 n - A002662 n).toNat - A327362 n

end

end A059166.P7133226528750657433

/-! ## A059166.P375040856018051525

`A062740(n)/A000079(n)-A327362(n)`
-/

namespace A059166.P375040856018051525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062740 n : ℚ) / (A000079 n : ℚ) - (A327362 n : ℚ)

end

end A059166.P375040856018051525

/-!
# A059167: Number of n-node labeled graphs without endpoints.

The programs for A059167, there is no canonical definition to state claims against.
-/

/-! ## A059167.P15665090956585183797

`A327369(∑[n])`
-/

namespace A059167.P15665090956585183797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059167.P15665090956585183797

/-! ## A059167.P2171943318206503130

`A327369(A000217(n))+A025443(n)`
-/

namespace A059167.P2171943318206503130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 (A000217 n).toNat + A025443 n

end

end A059167.P2171943318206503130

/-! ## A059167.P11036361863861417631

`A006125(n)-A245797(A028310(n))`
-/

namespace A059167.P11036361863861417631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A245797 (A028310 n).toNat

end

end A059167.P11036361863861417631

/-! ## A059167.P10913878689106364756

`or(A000007(n), A327369(A000217(n)))`
-/

namespace A059167.P10913878689106364756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327369 (A000217 n).toNat)

end

end A059167.P10913878689106364756

/-! ## A059167.P16404626496664469683

`or(A151810(n), A327369(A000217(n)))`
-/

namespace A059167.P16404626496664469683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151810 n) (A327369 (A000217 n).toNat)

end

end A059167.P16404626496664469683

/-!
# A059168: Primes in which digits alternately rise and fall (or vice versa); sometimes called undulating primes.

The programs for A059168, there is no canonical definition to state claims against.
-/

/-! ## A059168.P2466970498290260092

`p?[A355301(n+1)]`
-/

namespace A059168.P2466970498290260092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059168.P2466970498290260092

/-! ## A059168.P4201281129111765359

`record[p?[A355301(A328396(n))]]`
-/

namespace A059168.P4201281129111765359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059168.P4201281129111765359

/-! ## A059168.P5649197063428297754

`record[A006530(A355301(n+3))]`
-/

namespace A059168.P5649197063428297754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A355301 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059168.P5649197063428297754

/-! ## A059168.P17023068084001253424

`filter[A355301(n+2), A010051(#)]`
-/

namespace A059168.P17023068084001253424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A059168.P17023068084001253424

/-! ## A059168.P1410861535767995280

`∩[A000040(n+1), A355301(n+1)]`
-/

namespace A059168.P1410861535767995280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059168.P1410861535767995280

/-!
# A059169: Number of partitions of n into 3 parts which form the sides of a nondegenerate isosceles triangle.

The programs for A059169, the canonical program `A059169.P12427980580684764790` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059169 has offset 1).

The definition of A059169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059169.P12427980580684764790

`floor(n/2)-floor((n+1)/4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059169

/-- `floor(n/2)-floor((n+1)/4)` -/
def P12427980580684764790.Spec : Prop :=
  ∀ n, P12427980580684764790.a n = A059169 (n + 1)

theorem P12427980580684764790.correct : P12427980580684764790.Spec := by
  intro n
  simp only [A059169, Nat.add_sub_cancel]

end A059169

/-! ## A059169.P8702378753130490517

`(2*(n+1)-3-2*cos((n+1)*π/2)-3*cos((n+1)*π)-2*sin((n+1)*π/2))/8`
-/

namespace A059169.P8702378753130490517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 3 : ℝ) - 2 * Real.cos ((n + 1 : ℝ) * Real.pi / 2) - 3 * Real.cos ((n + 1 : ℝ) * Real.pi) - 2 * Real.sin ((n + 1 : ℝ) * Real.pi / 2)) / 8

end

end A059169.P8702378753130490517

namespace A059169

/-- `(2*(n+1)-3-2*cos((n+1)*π/2)-3*cos((n+1)*π)-2*sin((n+1)*π/2))/8` -/
def P8702378753130490517.Spec : Prop :=
  ∀ n, P8702378753130490517.a n = (A059169 (n + 1) : ℝ)

end A059169

/-! ## A059169.P14326999179590931390

`floor(abs(xor(n, -2))/4)`
-/

namespace A059169.P14326999179590931390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|Int.xor (n : ℤ) (-2)| : ℚ) / 4⌋

end

end A059169.P14326999179590931390

namespace A059169

/-- `floor(abs(xor(n, -2))/4)` -/
def P14326999179590931390.Spec : Prop :=
  ∀ n, P14326999179590931390.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P6794942145895135889

`floor((xor(1, n)+1)/4)`
-/

namespace A059169.P6794942145895135889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋

end

end A059169.P6794942145895135889

namespace A059169

/-- `floor((xor(1, n)+1)/4)` -/
def P6794942145895135889.Spec : Prop :=
  ∀ n, P6794942145895135889.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P14313073450233299186

`ceil(xor(1, n-2)/4)`
-/

namespace A059169.P14313073450233299186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌉

end

end A059169.P14313073450233299186

namespace A059169

/-- `ceil(xor(1, n-2)/4)` -/
def P14313073450233299186.Spec : Prop :=
  ∀ n, P14313073450233299186.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P2074086487039070516

`round((xor(1, n)-1)/4)`
-/

namespace A059169.P2074086487039070516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 1 n : ℤ) - 1 : ℚ) / 4)

end

end A059169.P2074086487039070516

namespace A059169

/-- `round((xor(1, n)-1)/4)` -/
def P2074086487039070516.Spec : Prop :=
  ∀ n, P2074086487039070516.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P5196022672807890277

`ceil(n/4-and(1, n))`
-/

namespace A059169.P5196022672807890277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4 - (Nat.land 1 n : ℚ)⌉

end

end A059169.P5196022672807890277

namespace A059169

/-- `ceil(n/4-and(1, n))` -/
def P5196022672807890277.Spec : Prop :=
  ∀ n, P5196022672807890277.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P13380195740073656009

`floor(-(xor(n, -2)/4))`
-/

namespace A059169.P13380195740073656009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.xor (n : ℤ) (-2) : ℚ) / 4)⌋

end

end A059169.P13380195740073656009

namespace A059169

/-- `floor(-(xor(n, -2)/4))` -/
def P13380195740073656009.Spec : Prop :=
  ∀ n, P13380195740073656009.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P10360948036854181016

`-ceil(xor(n, -2)/4)`
-/

namespace A059169.P10360948036854181016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (n : ℤ) (-2) : ℚ) / 4⌉

end

end A059169.P10360948036854181016

namespace A059169

/-- `-ceil(xor(n, -2)/4)` -/
def P10360948036854181016.Spec : Prop :=
  ∀ n, P10360948036854181016.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P173743027794527944

`floor((or(2, n-1)+1)/4)`
-/

namespace A059169.P173743027794527944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor 2 ((n : ℤ) - 1) + 1 : ℚ) / 4⌋

end

end A059169.P173743027794527944

namespace A059169

/-- `floor((or(2, n-1)+1)/4)` -/
def P173743027794527944.Spec : Prop :=
  ∀ n, P173743027794527944.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P16876218786207037397

`ceil((or(2, n-1)-2)/4)`
-/

namespace A059169.P16876218786207037397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 ((n : ℤ) - 1) - 2 : ℚ) / 4⌉

end

end A059169.P16876218786207037397

namespace A059169

/-- `ceil((or(2, n-1)-2)/4)` -/
def P16876218786207037397.Spec : Prop :=
  ∀ n, P16876218786207037397.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P13727093136349053305

`floor(((n+1)%4+n)/4)`
-/

namespace A059169.P13727093136349053305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) % 4 + n : ℕ) : ℚ) / 4⌋

end

end A059169.P13727093136349053305

namespace A059169

/-- `floor(((n+1)%4+n)/4)` -/
def P13727093136349053305.Spec : Prop :=
  ∀ n, P13727093136349053305.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P13636231977477420895

`ceil((n-gcd(4, n+1))/4)`
-/

namespace A059169.P13636231977477420895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - (Nat.gcd 4 (n + 1) : ℤ) : ℚ) / 4⌉

end

end A059169.P13636231977477420895

namespace A059169

/-- `ceil((n-gcd(4, n+1))/4)` -/
def P13636231977477420895.Spec : Prop :=
  ∀ n, P13636231977477420895.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P12477136910502217848

`floor((and(2, n+1)+n)/4)`
-/

namespace A059169.P12477136910502217848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 2 (n + 1) + n : ℚ) / 4⌋

end

end A059169.P12477136910502217848

namespace A059169

/-- `floor((and(2, n+1)+n)/4)` -/
def P12477136910502217848.Spec : Prop :=
  ∀ n, P12477136910502217848.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P13539395692558440093

`floor((2*or(1, n)-n)/4)`
-/

namespace A059169.P13539395692558440093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * Nat.lor 1 n : ℤ) - (n : ℤ) : ℚ) / 4⌋

end

end A059169.P13539395692558440093

namespace A059169

/-- `floor((2*or(1, n)-n)/4)` -/
def P13539395692558440093.Spec : Prop :=
  ∀ n, P13539395692558440093.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P4506992353197852310

`round((n-2*and(1, n))/4)`
-/

namespace A059169.P4506992353197852310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - (2 * Nat.land 1 n : ℤ) : ℚ) / 4)

end

end A059169.P4506992353197852310

namespace A059169

/-- `round((n-2*and(1, n))/4)` -/
def P4506992353197852310.Spec : Prop :=
  ∀ n, P4506992353197852310.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P18166623790639389454

`abs(a(n-4)+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A059169.P18166623790639389454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  a (n - 4) + 1

end

end A059169.P18166623790639389454

namespace A059169

/-- `abs(a(n-4)+1)` -/
def P18166623790639389454.Spec : Prop :=
  ∀ n, (P18166623790639389454.a n : ℤ) = A059169 (n + 1)

end A059169

/-! ## A059169.P7520114741949936996

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A059169.P7520114741949936996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, -1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059169.P7520114741949936996

namespace A059169

/-- `∑[floor(a(n-4))]` -/
def P7520114741949936996.Spec : Prop :=
  ∀ n, P7520114741949936996.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P3865453460096593130

`floor((2*n-xor(1, n-1))/4)`
-/

namespace A059169.P3865453460096593130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - Int.xor 1 ((n : ℤ) - 1) : ℚ) / 4⌋

end

end A059169.P3865453460096593130

namespace A059169

/-- `floor((2*n-xor(1, n-1))/4)` -/
def P3865453460096593130.Spec : Prop :=
  ∀ n, P3865453460096593130.a n = A059169 (n + 1)

end A059169

/-! ## A059169.P14783760535283920290

`∑[a(n-4)^a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1`
-/

namespace A059169.P14783760535283920290
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 1, -1] fun n f1 =>
  f1 (n - 4) ^ (f1 (n - 3))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059169.P14783760535283920290

namespace A059169

/-- `∑[a(n-4)^a(n-3)]` -/
def P14783760535283920290.Spec : Prop :=
  ∀ n, P14783760535283920290.a n = (A059169 (n + 1) : ℝ)

end A059169

/-!
# A059170: Strictly undulating primes (digits alternate and differ by 1).

The programs for A059170, there is no canonical definition to state claims against.
-/

/-! ## A059170.P10163070894222315855

`∩[A030291(n+1), A033075(n+1)]`
-/

namespace A059170.P10163070894222315855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059170.P10163070894222315855

/-! ## A059170.P2830434251416062378

`∩[A032758(n+1), A033075(n+1)]`
-/

namespace A059170.P2830434251416062378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059170.P2830434251416062378

/-! ## A059170.P2195844248306152807

`∩[A030291(n+1), A048398(n+1)]`
-/

namespace A059170.P2195844248306152807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059170.P2195844248306152807

/-! ## A059170.P3923233804782098048

`∩[A032758(n+1), A048398(n+1)]`
-/

namespace A059170.P3923233804782098048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059170.P3923233804782098048

/-! ## A059170.P8165542942128776211

`∩[A033075(n+1), A242541(n+1)]`
-/

namespace A059170.P8165542942128776211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059170.P8165542942128776211

/-!
# A059171: Size of largest conjugacy class in S_n, the symmetric group on n symbols.

The programs for A059171, there is no canonical definition to state claims against.
-/

/-! ## A059171.P5974609381008421469

`n!*ratio[round(acot(n)+n)]`
-/

namespace A059171.P5974609381008421469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A059171.P5974609381008421469

/-! ## A059171.P2669849958899220130

`(n-1/n)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A059171.P2669849958899220130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  ((n : ℚ) - 1 / (n : ℚ)) * a (n - 1)

end

end A059171.P2669849958899220130

/-! ## A059171.P4012963340277841436

`(n+1)*lcm((n-1)!, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A059171.P4012963340277841436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1) * Nat.lcm (Nat.factorial ((n : ℤ) - 1).toNat) (a (n - 2))

end

end A059171.P4012963340277841436

/-! ## A059171.P11422784296232672840

`A034893(∑[n])`
-/

namespace A059171.P11422784296232672840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059171.P11422784296232672840

/-! ## A059171.P4369998549870515841

`A349980(∑[n+1])`
-/

namespace A059171.P4369998549870515841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059171.P4369998549870515841

/-! ## A059171.P14885052542558371436

`A054115(∑[n]+2)`
-/

namespace A059171.P14885052542558371436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A059171.P14885052542558371436

/-! ## A059171.P12132424089647133342

`ratio[round(acot(n)+n)]*A000142(n)`
-/

namespace A059171.P12132424089647133342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000142 n : ℚ)

end

end A059171.P12132424089647133342

/-! ## A059171.P9065575177400926676

`A211370(A238531(n))`
-/

namespace A059171.P9065575177400926676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211370 (A238531 n).toNat

end

end A059171.P9065575177400926676

/-! ## A059171.P12895564799495436587

`A126074(A212342(n+1))`
-/

namespace A059171.P12895564799495436587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (A212342 (n + 1)).toNat

end

end A059171.P12895564799495436587

/-! ## A059171.P13988782405675805314

`A058936(A002620(n)+2)`
-/

namespace A059171.P13988782405675805314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058936 (A002620 n + 2).toNat

end

end A059171.P13988782405675805314

/-!
# A059172: Numbers k such that k/rad(k) > sqrt(k) where rad(k) is the largest squarefree number dividing k.

The programs for A059172, there is no canonical definition to state claims against.
-/

/-! ## A059172.P16084306542040905129

`∪[A246549(n+1), A389528(n+1)]`
-/

namespace A059172.P16084306542040905129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P16084306542040905129

/-! ## A059172.P6865334906358238278

`∪[A320966(n+1), A366250(n+1)]`
-/

namespace A059172.P6865334906358238278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P6865334906358238278

/-! ## A059172.P17998089502351511899

`∪[A320966(n+1), A389528(n+1)]`
-/

namespace A059172.P17998089502351511899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P17998089502351511899

/-! ## A059172.P4894374434548680610

`∪[A320966(n+1), A389752(n+1)]`
-/

namespace A059172.P4894374434548680610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P4894374434548680610

/-! ## A059172.P3996593037141288946

`∪[A320966(n+1), A389753(n+1)]`
-/

namespace A059172.P3996593037141288946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P3996593037141288946

/-! ## A059172.P8647125665875737943

`∪[A377847(n+1), A389528(n+1)]`
-/

namespace A059172.P8647125665875737943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P8647125665875737943

/-! ## A059172.P14141361371802552233

`∪[A389528(n+1), A390540(n+1)]`
-/

namespace A059172.P14141361371802552233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P14141361371802552233

/-! ## A059172.P11871318878186682288

`∪[A389752(n+1), A390540(n+1)]`
-/

namespace A059172.P11871318878186682288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P11871318878186682288

/-! ## A059172.P6026865908302348282

`filter[A057111(n+1), A380439(#)]`
-/

namespace A059172.P6026865908302348282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P6026865908302348282

/-! ## A059172.P18317736496092704714

`filter[A069189(n+1), A380439(#)]`
-/

namespace A059172.P18317736496092704714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P18317736496092704714

/-! ## A059172.P7256631541423644957

`filter[A122145(n+1), A380439(#)]`
-/

namespace A059172.P7256631541423644957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P7256631541423644957

/-! ## A059172.P11179532399784356037

`filter[A228957(n+1), A380439(#)]`
-/

namespace A059172.P11179532399784356037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P11179532399784356037

/-! ## A059172.P5877946867757606960

`filter[A328014(n+1), A380439(#)]`
-/

namespace A059172.P5877946867757606960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P5877946867757606960

/-! ## A059172.P16849990824420209894

`filter[A339744(n+1), A380439(#)]`
-/

namespace A059172.P16849990824420209894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P16849990824420209894

/-! ## A059172.P18105052286415886942

`filter[A341645(n+1), A380439(#)]`
-/

namespace A059172.P18105052286415886942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P18105052286415886942

/-! ## A059172.P4929024262948452534

`filter[A046099(n+1), A380439(#)]`
-/

namespace A059172.P4929024262948452534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P4929024262948452534

/-! ## A059172.P11653277219628796367

`filter[A046099(n+1), A380440(#)]`
-/

namespace A059172.P11653277219628796367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A059172.P11653277219628796367

/-! ## A059172.P12669632573136213971

`∩[A046099(n+1), A341645(n+1)]`
-/

namespace A059172.P12669632573136213971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059172.P12669632573136213971

/-! ## A059172.P11761682418319712099

`filter[A048108(n+1), A380439(#)]`
-/

namespace A059172.P11761682418319712099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A059172.P11761682418319712099

/-! ## A059172.P13181586105724901711

`eq[1, A380439(n+1)]+1`
-/

namespace A059172.P13181586105724901711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059172.P13181586105724901711

/-!
# A059173: Maximal number of regions into which 4-space can be divided by n hyperspheres.

The programs for A059173, the canonical program `A059173.P6167581344001436890` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059173 has offset 0).

The definition of A059173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059173.P9668552703751706495

`Δ[A059174(n)]`
-/

namespace A059173.P9668552703751706495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059173.P9668552703751706495

namespace A059173

/-- `Δ[A059174(n)]` -/
def P9668552703751706495.Spec : Prop :=
  ∀ n, P9668552703751706495.a n = A059173 n

end A059173

/-! ## A059173.P6167581344001436890

`A046127(n-1)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059173

/-- `A046127(n-1)+a(n-1)` -/
def P6167581344001436890.Spec : Prop :=
  ∀ n, P6167581344001436890.a n = A059173 n

theorem P6167581344001436890.correct : P6167581344001436890.Spec := by
  intro n
  simp only [A059173]

end A059173

/-! ## A059173.P12691729250211486000

`A386480(n)+A034827(n)`
-/

namespace A059173.P12691729250211486000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n + A034827 n

end

end A059173.P12691729250211486000

namespace A059173

/-- `A386480(n)+A034827(n)` -/
def P12691729250211486000.Spec : Prop :=
  ∀ n, P12691729250211486000.a n = A059173 n

end A059173

/-! ## A059173.P5657222337732032810

`A059174(n+1)-A059174(n)`
-/

namespace A059173.P5657222337732032810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 (n + 1) - A059174 n

end

end A059173.P5657222337732032810

namespace A059173

/-- `A059174(n+1)-A059174(n)` -/
def P5657222337732032810.Spec : Prop :=
  ∀ n, P5657222337732032810.a n = A059173 n

end A059173

/-! ## A059173.P5418131124089264054

`2*A006261(n)-A059174(n)`
-/

namespace A059173.P5418131124089264054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006261 n - A059174 n

end

end A059173.P5418131124089264054

namespace A059173

/-- `2*A006261(n)-A059174(n)` -/
def P5418131124089264054.Spec : Prop :=
  ∀ n, P5418131124089264054.a n = A059173 n

end A059173

/-! ## A059173.P11613874840093729003

`A006261(n)-A000389(abs(1-n))`
-/

namespace A059173.P11613874840093729003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n - A000389 |1 - (n : ℤ)|.toNat

end

end A059173.P11613874840093729003

namespace A059173

/-- `A006261(n)-A000389(abs(1-n))` -/
def P11613874840093729003.Spec : Prop :=
  ∀ n, P11613874840093729003.a n = A059173 n

end A059173

/-! ## A059173.P15681977395814063132

`2*(A006522(n)+n)-A000007(n)`
-/

namespace A059173.P15681977395814063132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006522 n + (n : ℤ)) - A000007 n

end

end A059173.P15681977395814063132

namespace A059173

/-- `2*(A006522(n)+n)-A000007(n)` -/
def P15681977395814063132.Spec : Prop :=
  ∀ n, P15681977395814063132.a n = A059173 n

end A059173

/-! ## A059173.P16240527913341534106

`A000332(abs(1-n))+A000127(n+1)`
-/

namespace A059173.P16240527913341534106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 |1 - (n : ℤ)|.toNat + A000127 (n + 1)

end

end A059173.P16240527913341534106

namespace A059173

/-- `A000332(abs(1-n))+A000127(n+1)` -/
def P16240527913341534106.Spec : Prop :=
  ∀ n, P16240527913341534106.a n = A059173 n

end A059173

/-! ## A059173.P17649607131987036878

`(A006522(n)+n)*A000005(A008578(n+1))`
-/

namespace A059173.P17649607131987036878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006522 n + (n : ℤ)) * A000005 (A008578 (n + 1)).toNat

end

end A059173.P17649607131987036878

namespace A059173

/-- `(A006522(n)+n)*A000005(A008578(n+1))` -/
def P17649607131987036878.Spec : Prop :=
  ∀ n, P17649607131987036878.a n = A059173 n

end A059173

/-! ## A059173.P9684165635081180043

`A083479(A014206(n))+A034827(n)`
-/

namespace A059173.P9684165635081180043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A014206 n).toNat + A034827 n

end

end A059173.P9684165635081180043

namespace A059173

/-- `A083479(A014206(n))+A034827(n)` -/
def P9684165635081180043.Spec : Prop :=
  ∀ n, P9684165635081180043.a n = A059173 n

end A059173

/-!
# A059174: Maximal number of regions into which 5-space can be divided by n hyperspheres.

The programs for A059174, the canonical program `A059174.P3103714182843874225` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059174 has offset 0).

The definition of A059174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059174.P3103714182843874225

`A059173(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059174

/-- `A059173(n-1)+a(n-1)` -/
def P3103714182843874225.Spec : Prop :=
  ∀ n, P3103714182843874225.a n = A059174 n

theorem P3103714182843874225.correct : P3103714182843874225.Spec := by
  intro n
  simp only [A059174]

end A059174

/-! ## A059174.P8908129418714741159

`2*A006261(n)-A059173(n)`
-/

namespace A059174.P8908129418714741159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006261 n - A059173 n

end

end A059174.P8908129418714741159

namespace A059174

/-- `2*A006261(n)-A059173(n)` -/
def P8908129418714741159.Spec : Prop :=
  ∀ n, P8908129418714741159.a n = A059174 n

end A059174

/-! ## A059174.P1109503496668081371

`record[A000034(n)*A006261(A062276(n))]`
-/

namespace A059174.P1109503496668081371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A006261 (A062276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059174.P1109503496668081371

namespace A059174

/-- `record[A000034(n)*A006261(A062276(n))]` -/
def P1109503496668081371.Spec : Prop :=
  ∀ n, P1109503496668081371.a n = A059174 n

end A059174

/-! ## A059174.P17257557478928279333

`record[A000034(n)*A006261(A002264(n))]`
-/

namespace A059174.P17257557478928279333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A006261 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059174.P17257557478928279333

namespace A059174

/-- `record[A000034(n)*A006261(A002264(n))]` -/
def P17257557478928279333.Spec : Prop :=
  ∀ n, P17257557478928279333.a n = A059174 n

end A059174

/-! ## A059174.P896324717694302686

`record[A000002(n+1)*A006261(A002265(n))]`
-/

namespace A059174.P896324717694302686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A006261 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059174.P896324717694302686

namespace A059174

/-- `record[A000002(n+1)*A006261(A002265(n))]` -/
def P896324717694302686.Spec : Prop :=
  ∀ n, P896324717694302686.a n = A059174 n

end A059174

/-! ## A059174.P12325792505703649462

`record[A001285(n)*A006261(A008615(n))]`
-/

namespace A059174.P12325792505703649462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A006261 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059174.P12325792505703649462

namespace A059174

/-- `record[A001285(n)*A006261(A008615(n))]` -/
def P12325792505703649462.Spec : Prop :=
  ∀ n, P12325792505703649462.a n = A059174 n

end A059174

/-! ## A059174.P406542752935285

`A008859(n)+A084638(n)-A084637(n)`
-/

namespace A059174.P406542752935285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n + (A084638 n - A084637 n)

end

end A059174.P406542752935285

namespace A059174

/-- `A008859(n)+A084638(n)-A084637(n)` -/
def P406542752935285.Spec : Prop :=
  ∀ n, P406542752935285.a n = A059174 n

end A059174

/-!
# A059176: Engel expansion of sqrt(5) = 2.23606...

The programs for A059176, there is no canonical definition to state claims against.
-/

/-! ## A059176.P13726928712321773106

`A028259(1-char[1]+n)`
-/

namespace A059176.P13726928712321773106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A059176.P13726928712321773106

/-! ## A059176.P1796756389099116133

`A159075(n)+A028259(n+1)`
-/

namespace A059176.P1796756389099116133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A028259 (n + 1)

end

end A059176.P1796756389099116133

/-! ## A059176.P17558138350615305865

`A028259(n+1)-A063524(n)`
-/

namespace A059176.P17558138350615305865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (n + 1) - A063524 n

end

end A059176.P17558138350615305865

/-! ## A059176.P7689069232488483270

`A028259(n+1)/A373565(n)`
-/

namespace A059176.P7689069232488483270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028259 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A059176.P7689069232488483270

/-! ## A059176.P14709219739140840042

`gcd(A028259(n+1), A169585(n))`
-/

namespace A059176.P14709219739140840042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028259 (n + 1)) (A169585 n)

end

end A059176.P14709219739140840042

/-! ## A059176.P9393215882604410962

`A028259(n+1)^A134323(n+1)²`
-/

namespace A059176.P9393215882604410962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028259 (n + 1) : ℚ) ^ (A134323 (n + 1) ^ 2 : ℤ)

end

end A059176.P9393215882604410962

/-! ## A059176.P8380334643685809263

`A028259(n+1)-A000007(A004442(n))`
-/

namespace A059176.P8380334643685809263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (n + 1) - A000007 (A004442 n).toNat

end

end A059176.P8380334643685809263

/-! ## A059176.P8908544933167697690

`A028259(n+1)-A000007(A008611(n))`
-/

namespace A059176.P8908544933167697690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (n + 1) - A000007 (A008611 n).toNat

end

end A059176.P8908544933167697690

/-! ## A059176.P8052183254036657810

`A028259(n+1)-A000007(A008624(n))`
-/

namespace A059176.P8052183254036657810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (n + 1) - A000007 (A008624 n).toNat

end

end A059176.P8052183254036657810

/-! ## A059176.P3318256965586471487

`A028259(n+1)-A112316(A151704(n))`
-/

namespace A059176.P3318256965586471487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (n + 1) - A112316 (A151704 n).toNat

end

end A059176.P3318256965586471487

/-! ## A059176.P12349893149118236855

`A028259(n+1)/A000034(A053644(n))`
-/

namespace A059176.P12349893149118236855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028259 (n + 1) : ℚ) / (A000034 (A053644 n).toNat : ℚ)

end

end A059176.P12349893149118236855

/-! ## A059176.P14374424292504523795

`A028259(n+1)+A015573(A015919(n+1))`
-/

namespace A059176.P14374424292504523795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028259 (n + 1) + A015573 (A015919 (n + 1)).toNat

end

end A059176.P14374424292504523795

/-!
# A059180: Engel expansion of log(2).

The programs for A059180, there is no canonical definition to state claims against.
-/

/-! ## A059180.P2623351756273191685

`A092271(A092186(n))*A092293(n)`
-/

namespace A059180.P2623351756273191685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092271 (A092186 n).toNat * A092293 n

end

end A059180.P2623351756273191685

/-!
# A059183: Engel expansion of 1/log(2) = 1.4427...

The programs for A059183, there is no canonical definition to state claims against.
-/

/-! ## A059183.P7419662069430862704

`or(A056796(2*n)+1, A098841(2*(n+1)))`
-/

namespace A059183.P7419662069430862704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056796 (2 * n) + 1) (A098841 (2 * (n + 1)))

end

end A059183.P7419662069430862704

/-! ## A059183.P4177818129540398906

`A115384(n)+A090079(A307635(n))`
-/

namespace A059183.P4177818129540398906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n + A090079 (A307635 n).toNat

end

end A059183.P4177818129540398906

/-! ## A059183.P2545870676061606539

`A061775(2*n+1)+A048862(A324088(n+1))`
-/

namespace A059183.P2545870676061606539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (2 * n + 1) + A048862 (A324088 (n + 1)).toNat

end

end A059183.P2545870676061606539

/-!
# A059187: Engel expansion of sqrt(Pi) = 1.77245... .

The programs for A059187, there is no canonical definition to state claims against.
-/

/-! ## A059187.P9466211004423790773

`A342750(A081284(n)+1)`
-/

namespace A059187.P9466211004423790773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A081284 n + 1).toNat

end

end A059187.P9466211004423790773

/-! ## A059187.P9461367637535060685

`A002375(A135965(n)+A135961(n+3))`
-/

namespace A059187.P9461367637535060685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A135965 n + A135961 (n + 3)).toNat

end

end A059187.P9461367637535060685

/-!
# A059193: Engel expansion of 1/e = 0.367879... .

The programs for A059193, the canonical program `A059193.P2890262720096743460` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059193 has offset 1).

The definition of A059193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059193.P2890262720096743460

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=10, a(2)=28, a(3)=54`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059193

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2890262720096743460.Spec : Prop :=
  ∀ n, P2890262720096743460.a n = A059193 (n + 1)

theorem P2890262720096743460.correct : P2890262720096743460.Spec := by
  intro n
  simp only [A059193, Nat.add_sub_cancel]

end A059193

/-! ## A059193.P13523626040190140848

`∑[a(n-1)+8]` with `a(0)=3, a(1)=7, a(2)=18`
-/

namespace A059193.P13523626040190140848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 18] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059193.P13523626040190140848

namespace A059193

/-- `∑[a(n-1)+8]` -/
def P13523626040190140848.Spec : Prop :=
  ∀ n, (P13523626040190140848.a n : ℤ) = A059193 (n + 1)

end A059193

/-! ## A059193.P18189631029710626344

`record[and(n-1, -2)²-(n+1)]`
-/

namespace A059193.P18189631029710626344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-2) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059193.P18189631029710626344

namespace A059193

/-- `record[and(n-1, -2)²-(n+1)]` -/
def P18189631029710626344.Spec : Prop :=
  ∀ n, P18189631029710626344.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P3897139159448037636

`record[abs((2*n)²-(n+3))]-n`
-/

namespace A059193.P3897139159448037636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) - (n + 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A059193.P3897139159448037636

namespace A059193

/-- `record[abs((2*n)²-(n+3))]-n` -/
def P3897139159448037636.Spec : Prop :=
  ∀ n, P3897139159448037636.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P3267985757996250174

`(2*n+3)*ceil(sqrt(a(n-1)))` with `a(0)=3`
-/

namespace A059193.P3267985757996250174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 * n + 3 : ℤ) * ⌈Real.sqrt (a (n - 1) : ℝ)⌉

end

end A059193.P3267985757996250174

namespace A059193

/-- `(2*n+3)*ceil(sqrt(a(n-1)))` -/
def P3267985757996250174.Spec : Prop :=
  ∀ n, P3267985757996250174.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P2450176131464316249

`7*n+2+a(n-1)+n` with `a(0)=3, a(1)=10`
-/

namespace A059193.P2450176131464316249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  7 * n + 2 + (a (n - 1) + n)

end

end A059193.P2450176131464316249

namespace A059193

/-- `7*n+2+a(n-1)+n` -/
def P2450176131464316249.Spec : Prop :=
  ∀ n, (P2450176131464316249.a n : ℤ) = A059193 (n + 1)

end A059193

/-! ## A059193.P9605907281366084901

`(comp[2*(n+1)]+1)*(2*n+3)`
-/

namespace A059193.P9605907281366084901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * (2 * n + 3)

end

end A059193.P9605907281366084901

namespace A059193

/-- `(comp[2*(n+1)]+1)*(2*n+3)` -/
def P9605907281366084901.Spec : Prop :=
  ∀ n, (P9605907281366084901.a n : ℤ) = A059193 (n + 1)

end A059193

/-! ## A059193.P5453577799281773827

`record[(2*n+1-lcm(2, n+1))*(n-3)]`
-/

namespace A059193.P5453577799281773827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - (Nat.lcm 2 (n + 1) : ℤ)) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059193.P5453577799281773827

namespace A059193

/-- `record[(2*n+1-lcm(2, n+1))*(n-3)]` -/
def P5453577799281773827.Spec : Prop :=
  ∀ n, P5453577799281773827.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P16242163935857250937

`record[(n+1-A020639(n+3))²-(n+1)]`
-/

namespace A059193.P16242163935857250937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A020639 (n + 3)) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059193.P16242163935857250937

namespace A059193

/-- `record[(n+1-A020639(n+3))²-(n+1)]` -/
def P16242163935857250937.Spec : Prop :=
  ∀ n, P16242163935857250937.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P4460462887663919986

`xor(A054977(n), A082108(n))`
-/

namespace A059193.P4460462887663919986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A082108 n)

end

end A059193.P4460462887663919986

namespace A059193

/-- `xor(A054977(n), A082108(n))` -/
def P4460462887663919986.Spec : Prop :=
  ∀ n, P4460462887663919986.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P1130195796814356040

`A060747(n)+(A004273(n)+2)²`
-/

namespace A059193.P1130195796814356040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + (A004273 n + 2) ^ 2

end

end A059193.P1130195796814356040

namespace A059193

/-- `A060747(n)+(A004273(n)+2)²` -/
def P1130195796814356040.Spec : Prop :=
  ∀ n, P1130195796814356040.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P17720687210965904928

`A004277(n)²+2*A008486(n)`
-/

namespace A059193.P17720687210965904928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 2 + 2 * A008486 n

end

end A059193.P17720687210965904928

namespace A059193

/-- `A004277(n)²+2*A008486(n)` -/
def P17720687210965904928.Spec : Prop :=
  ∀ n, P17720687210965904928.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P16052162208126149972

`A166137(n+1)+A143208(n+1)`
-/

namespace A059193.P16052162208126149972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166137 (n + 1) + A143208 (n + 1)

end

end A059193.P16052162208126149972

namespace A059193

/-- `A166137(n+1)+A143208(n+1)` -/
def P16052162208126149972.Spec : Prop :=
  ∀ n, P16052162208126149972.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P4448272041236700091

`A111284(n+1)+A185669(n)-n`
-/

namespace A059193.P4448272041236700091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) + (A185669 n - (n : ℤ))

end

end A059193.P4448272041236700091

namespace A059193

/-- `A111284(n+1)+A185669(n)-n` -/
def P4448272041236700091.Spec : Prop :=
  ∀ n, P4448272041236700091.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P8621638757013815849

`A004277(n)+A004277(n+1)*A004277(n)`
-/

namespace A059193.P8621638757013815849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A004277 (n + 1) * A004277 n

end

end A059193.P8621638757013815849

namespace A059193

/-- `A004277(n)+A004277(n+1)*A004277(n)` -/
def P8621638757013815849.Spec : Prop :=
  ∀ n, P8621638757013815849.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P12577436237686005152

`A004275(n+1)+A004275(n+1)*A005843(n+1)`
-/

namespace A059193.P12577436237686005152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) + A004275 (n + 1) * A005843 (n + 1)

end

end A059193.P12577436237686005152

namespace A059193

/-- `A004275(n+1)+A004275(n+1)*A005843(n+1)` -/
def P12577436237686005152.Spec : Prop :=
  ∀ n, P12577436237686005152.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P8929079729677351142

`A144916(n+2)-2*(n+2)`
-/

namespace A059193.P8929079729677351142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144916 (n + 2) - (2 * (n + 2) : ℤ)

end

end A059193.P8929079729677351142

namespace A059193

/-- `A144916(n+2)-2*(n+2)` -/
def P8929079729677351142.Spec : Prop :=
  ∀ n, P8929079729677351142.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P10927307162285414989

`A211441(n)+A002061(n+2)`
-/

namespace A059193.P10927307162285414989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211441 n + A002061 (n + 2)

end

end A059193.P10927307162285414989

namespace A059193

/-- `A211441(n)+A002061(n+2)` -/
def P10927307162285414989.Spec : Prop :=
  ∀ n, P10927307162285414989.a n = A059193 (n + 1)

end A059193

/-! ## A059193.P11885929228383605501

`A002943(n+1)*A068377(n+1)/A118239(n+2)`
-/

namespace A059193.P11885929228383605501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 (n + 1) * A068377 (n + 1) : ℚ) / (A118239 (n + 2) : ℚ)

end

end A059193.P11885929228383605501

namespace A059193

/-- `A002943(n+1)*A068377(n+1)/A118239(n+2)` -/
def P11885929228383605501.Spec : Prop :=
  ∀ n, P11885929228383605501.a n = (A059193 (n + 1) : ℚ)

end A059193

/-! ## A059193.P2937520988166302131

`record[abs(A103505(2*n)-3)+1]`
-/

namespace A059193.P2937520988166302131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103505 (2 * n) - 3| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059193.P2937520988166302131

namespace A059193

/-- `record[abs(A103505(2*n)-3)+1]` -/
def P2937520988166302131.Spec : Prop :=
  ∀ n, P2937520988166302131.a n = A059193 (n + 1)

end A059193

/-!
# A059195: Engel expansion of log(Pi) = 1.14473... .

The programs for A059195, there is no canonical definition to state claims against.
-/

/-! ## A059195.P1422475593440628285

`A340963(A004019(n))%A140633(n+1)`
-/

namespace A059195.P1422475593440628285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340963 ((A004019 n).toNat + 14)) (A140633 (n + 1))

end

end A059195.P1422475593440628285

