import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A360100: a(n) = Sum_{k=0..n} binomial(n+2*k-1,n-k) * Catalan(k).

The programs for A360100, there is no canonical definition to state claims against.
-/

/-! ## A360100.P17758226935515494800

`A360102(n)-or(n, A218654(A064306(n)))`
-/

namespace A360100.P17758226935515494800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n - Int.lor (n : ℤ) (A218654 (A064306 n).toNat)

end

end A360100.P17758226935515494800

/-! ## A360100.P7411567955024237264

`A185011(A303925(n))`
-/

namespace A360100.P7411567955024237264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185011 (A303925 n).toNat

end

end A360100.P7411567955024237264

/-!
# A360101: a(n) = Sum_{k=0..n} binomial(n+4*k-1,n-k) * Catalan(k).

The programs for A360101, there is no canonical definition to state claims against.
-/

/-! ## A360101.P15453165791173365857

`A034888(A005809(n)-val(A191106(2*(n+2))+1, 2))`
-/

namespace A360101.P15453165791173365857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A005809 n - (SequenceMachineLib.valuation (A191106 (2 * (n + 2)) + 1).toNat 2 : ℤ)).toNat

end

end A360101.P15453165791173365857

/-!
# A360102: a(n) = Sum_{k=0..n} binomial(n+2*k,n-k) * Catalan(k).

The programs for A360102, there is no canonical definition to state claims against.
-/

/-! ## A360102.P16700086460241604439

`∑[A360100(n)]`
-/

namespace A360102.P16700086460241604439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360102.P16700086460241604439

/-! ## A360102.P16399060374054315494

`Δ[A258973(n)]-A360100(n+1)`
-/

namespace A360102.P16399060374054315494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A360100 (n + 1)

end

end A360102.P16399060374054315494

/-! ## A360102.P7629288805611835501

`or(A087624(A041088(n)), A186858(n+1))`
-/

namespace A360102.P7629288805611835501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087624 (A041088 n).toNat) (A186858 (n + 1))

end

end A360102.P7629288805611835501

/-!
# A360103: a(n) = Sum_{k=0..n} binomial(n+4*k,n-k) * Catalan(k).

The programs for A360103, there is no canonical definition to state claims against.
-/

/-! ## A360103.P11179333775357782844

`∑[A360101(n)]`
-/

namespace A360103.P11179333775357782844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360103.P11179333775357782844

/-! ## A360103.P169057637360110320

`A172270(A218045(n+2))`
-/

namespace A360103.P169057637360110320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172270 (A218045 (n + 2)).toNat

end

end A360103.P169057637360110320

/-!
# A360107: Numbers k such that sigma_2(Fibonacci(k)^2 + 1) == 0 (mod Fibonacci(k)).

The programs for A360107, there is no canonical definition to state claims against.
-/

/-! ## A360107.P12805305030135015166

`∑[gcd(4, A068579(3*n+4))]`
-/

namespace A360107.P12805305030135015166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A068579 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360107.P12805305030135015166

/-! ## A360107.P8511707796968612829

`lt[A383094(and(n, -2)+n), 3-2*or(1, -n)]`
-/

namespace A360107.P8511707796968612829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383094 (Int.land (n : ℤ) (-2) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * Int.lor 1 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360107.P8511707796968612829

/-! ## A360107.P3513324439972295507

`∑[A001176(record[A163511(n)])]`
-/

namespace A360107.P3513324439972295507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360107.P3513324439972295507

/-! ## A360107.P6212473145726971938

`lt[A161197(A161148(n+4)), n]`
-/

namespace A360107.P6212473145726971938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161197 (A161148 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A360107.P6212473145726971938

/-! ## A360107.P4610063732077006828

`∑[A237271(∑[A189875(n+1)])]`
-/

namespace A360107.P4610063732077006828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189875 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360107.P4610063732077006828

/-!
# A360108: Sum of squares of digits of primorial base expansion of n.

The programs for A360108, there is no canonical definition to state claims against.
-/

/-! ## A360108.P2921032980542756694

`A090885(A276086(n))`
-/

namespace A360108.P2921032980542756694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A276086 n).toNat

end

end A360108.P2921032980542756694

/-! ## A360108.P16123784127373680889

`A289506(A328835(n))`
-/

namespace A360108.P16123784127373680889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A328835 n).toNat

end

end A360108.P16123784127373680889

/-! ## A360108.P13237153683799666687

`∑{digits}[A049345(n), #²]`
-/

namespace A360108.P13237153683799666687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A360108.P13237153683799666687

/-! ## A360108.P3142004550411656301

`∑{e}[A278226(n), #²]`
-/

namespace A360108.P3142004550411656301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A360108.P3142004550411656301

/-! ## A360108.P10849406080630491848

`A003132(A049345(n))`
-/

namespace A360108.P10849406080630491848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A049345 n).toNat

end

end A360108.P10849406080630491848

/-! ## A360108.P5532220295407088452

`A090885(A278226(n))`
-/

namespace A360108.P5532220295407088452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A278226 n).toNat

end

end A360108.P5532220295407088452

/-!
# A360109: a(n) = 1 if n is not multiple of 4, but its arithmetic derivative is, otherwise 0.

The programs for A360109, the canonical program `A360109.P9303785803174765081` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360109 has offset 0).

The definition of A360109 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360109.P9303785803174765081

`A166486(n)*A353494(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A360109

/-- `A166486(n)*A353494(n)` -/
def P9303785803174765081.Spec : Prop :=
  ∀ n, P9303785803174765081.a n = A360109 n

theorem P9303785803174765081.correct : P9303785803174765081.Spec := by
  intro n
  simp only [A360109]

end A360109

/-! ## A360109.P5176774878792322900

`and(n, A353494(n))`
-/

namespace A360109.P5176774878792322900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A353494 n)

end

end A360109.P5176774878792322900

namespace A360109

/-- `and(n, A353494(n))` -/
def P5176774878792322900.Spec : Prop :=
  ∀ n, P5176774878792322900.a n = A360109 n

end A360109

/-! ## A360109.P17080922685087322625

`char[A360110(n+1)]`
-/

namespace A360109.P17080922685087322625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A360109.P17080922685087322625

namespace A360109

/-- `char[A360110(n+1)]` -/
def P17080922685087322625.Spec : Prop :=
  ∀ n, (P17080922685087322625.a n : ℤ) = A360109 n

end A360109

/-! ## A360109.P1256853021364842269

`A353494(n)-A121262(n)`
-/

namespace A360109.P1256853021364842269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n - A121262 n

end

end A360109.P1256853021364842269

namespace A360109

/-- `A353494(n)-A121262(n)` -/
def P1256853021364842269.Spec : Prop :=
  ∀ n, P1256853021364842269.a n = A360109 n

end A360109

/-! ## A360109.P13523108441080461756

`A000035(n*A353494(n))`
-/

namespace A360109.P13523108441080461756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) * A353494 n).toNat

end

end A360109.P13523108441080461756

namespace A360109

/-- `A000035(n*A353494(n))` -/
def P13523108441080461756.Spec : Prop :=
  ∀ n, P13523108441080461756.a n = A360109 n

end A360109

/-! ## A360109.P10675432972483227296

`A007877(n*A353494(n))`
-/

namespace A360109.P10675432972483227296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 ((n : ℤ) * A353494 n).toNat

end

end A360109.P10675432972483227296

namespace A360109

/-- `A007877(n*A353494(n))` -/
def P10675432972483227296.Spec : Prop :=
  ∀ n, P10675432972483227296.a n = A360109 n

end A360109

/-! ## A360109.P11482377716300808938

`A070432(n*A353494(n))`
-/

namespace A360109.P11482377716300808938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 ((n : ℤ) * A353494 n).toNat

end

end A360109.P11482377716300808938

namespace A360109

/-- `A070432(n*A353494(n))` -/
def P11482377716300808938.Spec : Prop :=
  ∀ n, P11482377716300808938.a n = A360109 n

end A360109

/-! ## A360109.P14393948843296717001

`A098725(n*A353494(n))`
-/

namespace A360109.P14393948843296717001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 ((n : ℤ) * A353494 n).toNat

end

end A360109.P14393948843296717001

namespace A360109

/-- `A098725(n*A353494(n))` -/
def P14393948843296717001.Spec : Prop :=
  ∀ n, P14393948843296717001.a n = A360109 n

end A360109

/-! ## A360109.P13704878153424567771

`A131729(n*A353494(n))`
-/

namespace A360109.P13704878153424567771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 ((n : ℤ) * A353494 n).toNat

end

end A360109.P13704878153424567771

namespace A360109

/-- `A131729(n*A353494(n))` -/
def P13704878153424567771.Spec : Prop :=
  ∀ n, P13704878153424567771.a n = A360109 n

end A360109

/-! ## A360109.P14675750319092563293

`A359820(n*A353494(n))`
-/

namespace A360109.P14675750319092563293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 ((n : ℤ) * A353494 n).toNat

end

end A360109.P14675750319092563293

namespace A360109

/-- `A359820(n*A353494(n))` -/
def P14675750319092563293.Spec : Prop :=
  ∀ n, P14675750319092563293.a n = A360109 n

end A360109

/-! ## A360109.P16060772039438655582

`A370124(n*A353494(n))`
-/

namespace A360109.P16060772039438655582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370124 ((n : ℤ) * A353494 n).toNat

end

end A360109.P16060772039438655582

namespace A360109

/-- `A370124(n*A353494(n))` -/
def P16060772039438655582.Spec : Prop :=
  ∀ n, P16060772039438655582.a n = A360109 n

end A360109

/-! ## A360109.P12290415082736123691

`(1-A059841(n))*A353494(n)`
-/

namespace A360109.P12290415082736123691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A059841 n) * A353494 n

end

end A360109.P12290415082736123691

namespace A360109

/-- `(1-A059841(n))*A353494(n)` -/
def P12290415082736123691.Spec : Prop :=
  ∀ n, P12290415082736123691.a n = A360109 n

end A360109

/-! ## A360109.P9727676392299008202

`A121262(A353494(n)+2*n+1)`
-/

namespace A360109.P9727676392299008202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A353494 n + (2 * n + 1 : ℤ)).toNat

end

end A360109.P9727676392299008202

namespace A360109

/-- `A121262(A353494(n)+2*n+1)` -/
def P9727676392299008202.Spec : Prop :=
  ∀ n, P9727676392299008202.a n = A360109 n

end A360109

/-! ## A360109.P223837940737663913

`A166486(n)-A166486(A003415(n))`
-/

namespace A360109.P223837940737663913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n - A166486 (A003415 n).toNat

end

end A360109.P223837940737663913

namespace A360109

/-- `A166486(n)-A166486(A003415(n))` -/
def P223837940737663913.Spec : Prop :=
  ∀ n, P223837940737663913.a n = A360109 n

end A360109

/-! ## A360109.P4088494921331464736

`A358680(n)-(A353495(n)+A121262(n))`
-/

namespace A360109.P4088494921331464736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n - (A353495 n + A121262 n)

end

end A360109.P4088494921331464736

namespace A360109

/-- `A358680(n)-(A353495(n)+A121262(n))` -/
def P4088494921331464736.Spec : Prop :=
  ∀ n, P4088494921331464736.a n = A360109 n

end A360109

/-! ## A360109.P10519115449893001016

`A059841(n+1)*A353494(n)`
-/

namespace A360109.P10519115449893001016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A353494 n

end

end A360109.P10519115449893001016

namespace A360109

/-- `A059841(n+1)*A353494(n)` -/
def P10519115449893001016.Spec : Prop :=
  ∀ n, P10519115449893001016.a n = A360109 n

end A360109

/-! ## A360109.P13885195149162559306

`A353495(9*n)`
-/

namespace A360109.P13885195149162559306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (9 * n)

end

end A360109.P13885195149162559306

namespace A360109

/-- `A353495(9*n)` -/
def P13885195149162559306.Spec : Prop :=
  ∀ n, P13885195149162559306.a n = A360109 n

end A360109

/-! ## A360109.P16858882916530090483

`A165560(2*n*A353494(n))`
-/

namespace A360109.P16858882916530090483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (2 * ((n : ℤ) * A353494 n)).toNat

end

end A360109.P16858882916530090483

namespace A360109

/-- `A165560(2*n*A353494(n))` -/
def P16858882916530090483.Spec : Prop :=
  ∀ n, P16858882916530090483.a n = A360109 n

end A360109

/-! ## A360109.P14056672267096828636

`A168181((n*A353494(n))²)`
-/

namespace A360109.P14056672267096828636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (((n : ℤ) * A353494 n) ^ 2).toNat

end

end A360109.P14056672267096828636

namespace A360109

/-- `A168181((n*A353494(n))²)` -/
def P14056672267096828636.Spec : Prop :=
  ∀ n, P14056672267096828636.a n = A360109 n

end A360109

/-!
# A360110: Nonmultiples of 4 whose arithmetic derivative is a multiple of 4.

The programs for A360110, the canonical program `A360110.P1200029964072972346` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360110 has offset 1).

The definition of A360110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360110.P16487369295302911291

`comp[A360109(n)+n]`
-/

namespace A360110.P16487369295302911291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360110.P16487369295302911291

namespace A360110

/-- `comp[A360109(n)+n]` -/
def P16487369295302911291.Spec : Prop :=
  ∀ n, (P16487369295302911291.a n : ℤ) = A360110 (n + 1)

end A360110

/-! ## A360110.P1200029964072972346

`record[(n+1)*A360109(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360110

/-- `record[(n+1)*A360109(n+1)]` -/
def P1200029964072972346.Spec : Prop :=
  ∀ n, P1200029964072972346.a n = A360110 (n + 1)

theorem P1200029964072972346.correct : P1200029964072972346.Spec := by
  intro n
  simp only [A360110, Nat.add_sub_cancel]

end A360110

/-! ## A360110.P2010818348898794170

`∩[2*n+1, A369005(n+1)]`
-/

namespace A360110.P2010818348898794170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360110.P2010818348898794170

namespace A360110

/-- `∩[2*n+1, A369005(n+1)]` -/
def P2010818348898794170.Spec : Prop :=
  ∀ n, (P2010818348898794170.a n : ℤ) = A360110 (n + 1)

end A360110

/-! ## A360110.P5899734902087291095

`filter[A369005(n+1), A039982(#)]`
-/

namespace A360110.P5899734902087291095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A360110.P5899734902087291095

namespace A360110

/-- `filter[A369005(n+1), A039982(#)]` -/
def P5899734902087291095.Spec : Prop :=
  ∀ n, P5899734902087291095.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P12259434191697157226

`filter[A369005(n+1), A098725(#)]`
-/

namespace A360110.P12259434191697157226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A360110.P12259434191697157226

namespace A360110

/-- `filter[A369005(n+1), A098725(#)]` -/
def P12259434191697157226.Spec : Prop :=
  ∀ n, P12259434191697157226.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P6080788200318361339

`filter[A369005(n+1), A166486(#)]`
-/

namespace A360110.P6080788200318361339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A360110.P6080788200318361339

namespace A360110

/-- `filter[A369005(n+1), A166486(#)]` -/
def P6080788200318361339.Spec : Prop :=
  ∀ n, P6080788200318361339.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P14385016753742781191

`filter[A369005(n+1), A353557(#)]`
-/

namespace A360110.P14385016753742781191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A360110.P14385016753742781191

namespace A360110

/-- `filter[A369005(n+1), A353557(#)]` -/
def P14385016753742781191.Spec : Prop :=
  ∀ n, P14385016753742781191.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P305201496775542704

`filter[A369005(n+1), A359370(#)]`
-/

namespace A360110.P305201496775542704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A360110.P305201496775542704

namespace A360110

/-- `filter[A369005(n+1), A359370(#)]` -/
def P305201496775542704.Spec : Prop :=
  ∀ n, P305201496775542704.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P10945530110813484796

`filter[A369005(n+1), A359820(#)]`
-/

namespace A360110.P10945530110813484796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A360110.P10945530110813484796

namespace A360110

/-- `filter[A369005(n+1), A359820(#)]` -/
def P10945530110813484796.Spec : Prop :=
  ∀ n, P10945530110813484796.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P11101225760510236750

`filter[A369005(n+1), A359832(#)]`
-/

namespace A360110.P11101225760510236750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A360110.P11101225760510236750

namespace A360110

/-- `filter[A369005(n+1), A359832(#)]` -/
def P11101225760510236750.Spec : Prop :=
  ∀ n, P11101225760510236750.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P11477453108948122887

`filter[A369005(n+1), A360109(#)]`
-/

namespace A360110.P11477453108948122887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360109 (f1 j).toNat = 1) n)

end

end A360110.P11477453108948122887

namespace A360110

/-- `filter[A369005(n+1), A360109(#)]` -/
def P11477453108948122887.Spec : Prop :=
  ∀ n, P11477453108948122887.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P16752957908934104745

`filter[A369005(n+1), A370124(#)]`
-/

namespace A360110.P16752957908934104745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370124 (f1 j).toNat = 1) n)

end

end A360110.P16752957908934104745

namespace A360110

/-- `filter[A369005(n+1), A370124(#)]` -/
def P16752957908934104745.Spec : Prop :=
  ∀ n, P16752957908934104745.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P7472578298260762432

`eq[1, A360109(n)]`
-/

namespace A360110.P7472578298260762432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360110.P7472578298260762432

namespace A360110

/-- `eq[1, A360109(n)]` -/
def P7472578298260762432.Spec : Prop :=
  ∀ n, (P7472578298260762432.a n : ℤ) = A360110 (n + 1)

end A360110

/-! ## A360110.P14128121784147152796

`filter[A046337(n+1), A353494(#)]`
-/

namespace A360110.P14128121784147152796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A360110.P14128121784147152796

namespace A360110

/-- `filter[A046337(n+1), A353494(#)]` -/
def P14128121784147152796.Spec : Prop :=
  ∀ n, P14128121784147152796.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P7377889270364074245

`filter[A046337(n+1), A360109(#)]`
-/

namespace A360110.P7377889270364074245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360109 (f1 j).toNat = 1) n)

end

end A360110.P7377889270364074245

namespace A360110

/-- `filter[A046337(n+1), A360109(#)]` -/
def P7377889270364074245.Spec : Prop :=
  ∀ n, P7377889270364074245.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P13106229325082004476

`filter[A046337(n+1), A368994(#)]`
-/

namespace A360110.P13106229325082004476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A360110.P13106229325082004476

namespace A360110

/-- `filter[A046337(n+1), A368994(#)]` -/
def P13106229325082004476.Spec : Prop :=
  ∀ n, P13106229325082004476.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P2194116650468182600

`filter[A046337(n+1), A369004(#)]`
-/

namespace A360110.P2194116650468182600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A360110.P2194116650468182600

namespace A360110

/-- `filter[A046337(n+1), A369004(#)]` -/
def P2194116650468182600.Spec : Prop :=
  ∀ n, P2194116650468182600.a n = A360110 (n + 1)

end A360110

/-! ## A360110.P8701522696891322259

`eq[A328578(n), A353494(n)]`
-/

namespace A360110.P8701522696891322259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360110.P8701522696891322259

namespace A360110

/-- `eq[A328578(n), A353494(n)]` -/
def P8701522696891322259.Spec : Prop :=
  ∀ n, (P8701522696891322259.a n : ℤ) = A360110 (n + 1)

end A360110

/-! ## A360110.P194810219086887988

`lt[A353494(2*n), A353494(n)]`
-/

namespace A360110.P194810219086887988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360110.P194810219086887988

namespace A360110

/-- `lt[A353494(2*n), A353494(n)]` -/
def P194810219086887988.Spec : Prop :=
  ∀ n, (P194810219086887988.a n : ℤ) = A360110 (n + 1)

end A360110

/-! ## A360110.P17595355480457363580

`filter[A370125(n+1), A353494(#)]`
-/

namespace A360110.P17595355480457363580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A360110.P17595355480457363580

namespace A360110

/-- `filter[A370125(n+1), A353494(#)]` -/
def P17595355480457363580.Spec : Prop :=
  ∀ n, P17595355480457363580.a n = A360110 (n + 1)

end A360110

/-!
# A360111: 

The programs for A360111, there is no canonical definition to state claims against.
-/

/-! ## A360111.P844490569907567085

`A359550(n+1)*A341996(n+1)`
-/

namespace A360111.P844490569907567085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) * A341996 (n + 1)

end

end A360111.P844490569907567085

/-! ## A360111.P11067531005269258333

`char[A327934(n+1)-1]`
-/

namespace A360111.P11067531005269258333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A360111.P11067531005269258333

/-! ## A360111.P2401407533974531797

`A341996(C(A327938(n+1), n))`
-/

namespace A360111.P2401407533974531797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (Nat.choose (A327938 (n + 1)).toNat n)

end

end A360111.P2401407533974531797

/-! ## A360111.P13126450774967411364

`A267594((A256750(n+1)+1)²)`
-/

namespace A360111.P13126450774967411364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267594 ((A256750 (n + 1) + 1) ^ 2).toNat

end

end A360111.P13126450774967411364

/-! ## A360111.P17527903456637701904

`A341996((n+1)*A359546(n+1))`
-/

namespace A360111.P17527903456637701904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 ((n + 1 : ℤ) * A359546 (n + 1)).toNat

end

end A360111.P17527903456637701904

/-! ## A360111.P12283693630435427488

`(A256750(n+1)*A341996(n+1))²`
-/

namespace A360111.P12283693630435427488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A256750 (n + 1) * A341996 (n + 1)) ^ 2

end

end A360111.P12283693630435427488

/-! ## A360111.P8800833379191227349

`char[A260196(n+2)+eq[-1, A256750(n)]]`
-/

namespace A360111.P8800833379191227349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A360111.P8800833379191227349

/-!
# A360112: Number of solutions to m^(1 + 2^v(n-1)) == -m (mod n), where v(n) = A007814(n) is the 2-adic valuation of n, and 0 <= m < n.

The programs for A360112, there is no canonical definition to state claims against.
-/

/-! ## A360112.P5907082153613867811

`A333570(A097751(n+2))`
-/

namespace A360112.P5907082153613867811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (A097751 (n + 2)).toNat

end

end A360112.P5907082153613867811

/-! ## A360112.P8265210947502042283

`A333570(A157488(n+2))`
-/

namespace A360112.P8265210947502042283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (A157488 (n + 2)).toNat

end

end A360112.P8265210947502042283

/-! ## A360112.P15462908122361074515

`gcd(A333570(n+2), A333572(A333573(3*n+5)))`
-/

namespace A360112.P15462908122361074515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A333570 (n + 2)) (A333572 (A333573 (3 * n + 5)).toNat)

end

end A360112.P15462908122361074515

/-! ## A360112.P7912524497745794609

`A333570(A183091(n+2))`
-/

namespace A360112.P7912524497745794609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (A183091 (n + 2)).toNat

end

end A360112.P7912524497745794609

/-! ## A360112.P12725494645586966945

`A333570(A308360(n+2))`
-/

namespace A360112.P12725494645586966945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (A308360 (n + 2)).toNat

end

end A360112.P12725494645586966945

/-!
# A360113: a(n) = 1 if A360112(n) = 1, otherwise 0.

The programs for A360113, there is no canonical definition to state claims against.
-/

/-! ## A360113.P16471279593012562091

`A000035(n)*A360116(n+2)`
-/

namespace A360113.P16471279593012562091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A360116 (n + 2)

end

end A360113.P16471279593012562091

/-! ## A360113.P5442553928641110170

`and(n, A360116(n+2))`
-/

namespace A360113.P5442553928641110170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A360116 (n + 2))

end

end A360113.P5442553928641110170

/-! ## A360113.P7708674661587989712

`floor(1/A333570(n+2))`
-/

namespace A360113.P7708674661587989712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A333570 (n + 2) : ℚ)⌋

end

end A360113.P7708674661587989712

/-! ## A360113.P16304451051660881327

`floor(1/A360112(n+2))`
-/

namespace A360113.P16304451051660881327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A360112 (n + 2) : ℚ)⌋

end

end A360113.P16304451051660881327

/-! ## A360113.P16340389119612685334

`A360109(A360112(n+2))`
-/

namespace A360113.P16340389119612685334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 (A360112 (n + 2)).toNat

end

end A360113.P16340389119612685334

/-! ## A360113.P14092820996835466871

`A290098(A360112(n+2)²)`
-/

namespace A360113.P14092820996835466871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (A360112 (n + 2) ^ 2).toNat

end

end A360113.P14092820996835466871

/-! ## A360113.P5475263949539604977

`A360130(A360112(n+2)²)`
-/

namespace A360113.P5475263949539604977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360130 (A360112 (n + 2) ^ 2).toNat

end

end A360113.P5475263949539604977

/-! ## A360113.P12406027799343534858

`A010051(2*A360112(n+2))`
-/

namespace A360113.P12406027799343534858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A360112 (n + 2)).toNat

end

end A360113.P12406027799343534858

/-! ## A360113.P16444601477795391321

`A088705(n*A360116(n+2))`
-/

namespace A360113.P16444601477795391321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 ((n : ℤ) * A360116 (n + 2)).toNat

end

end A360113.P16444601477795391321

/-! ## A360113.P3905310743428257965

`A259044(n*A360116(n+2))`
-/

namespace A360113.P3905310743428257965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259044 ((n : ℤ) * A360116 (n + 2)).toNat

end

end A360113.P3905310743428257965

/-! ## A360113.P11065173793734144704

`A280237(n*A360116(n+2))`
-/

namespace A360113.P11065173793734144704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280237 ((n : ℤ) * A360116 (n + 2)).toNat

end

end A360113.P11065173793734144704

/-! ## A360113.P14027216383141636457

`and(1, A000010(A360112(n+2)²))`
-/

namespace A360113.P14027216383141636457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A360112 (n + 2) ^ 2).toNat)

end

end A360113.P14027216383141636457

/-! ## A360113.P4944177597039154870

`A285383(n+1)*A360116(n+2)`
-/

namespace A360113.P4944177597039154870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1) * A360116 (n + 2)

end

end A360113.P4944177597039154870

/-! ## A360113.P12836861685080002293

`A360128(A360112(n+2)+A360112(n+2)²)`
-/

namespace A360113.P12836861685080002293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360128 (A360112 (n + 2) + A360112 (n + 2) ^ 2).toNat

end

end A360113.P12836861685080002293

/-! ## A360113.P18231246331184908217

`val(A015909(n+2), n+2)`
-/

namespace A360113.P18231246331184908217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A015909 (n + 2)).toNat (n + 2)

end

end A360113.P18231246331184908217

/-! ## A360113.P16725260675003975445

`A360116(A165998(n+1))`
-/

namespace A360113.P16725260675003975445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 (A165998 (n + 1)).toNat

end

end A360113.P16725260675003975445

/-! ## A360113.P3105090272678553998

`A360116(A066070(n+2))`
-/

namespace A360113.P3105090272678553998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 (A066070 (n + 2)).toNat

end

end A360113.P3105090272678553998

/-! ## A360113.P749906384851054264

`A007814(A000040(A333570(n+2)))`
-/

namespace A360113.P749906384851054264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (A333570 (n + 2)).toNat).toNat

end

end A360113.P749906384851054264

/-! ## A360113.P11293965521263516148

`A255327(n*A360116(n+2))`
-/

namespace A360113.P11293965521263516148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 ((n : ℤ) * A360116 (n + 2)).toNat

end

end A360113.P11293965521263516148

/-! ## A360113.P1733201748233902570

`A360116((n+2)*A037227(n+2))`
-/

namespace A360113.P1733201748233902570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 ((n + 2 : ℤ) * A037227 (n + 2)).toNat

end

end A360113.P1733201748233902570

/-!
# A360114: Numbers k such that m^(1 + 2^v(k-1)) == -m (mod k) has only one solution (with 0 <= m < k), where v(k) = A007814(k) is the 2-adic valuation of k.

The programs for A360114, there is no canonical definition to state claims against.
-/

/-! ## A360114.P16338544657913827671

`record[A015909(2*n+3)]`
-/

namespace A360114.P16338544657913827671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015909 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360114.P16338544657913827671

/-! ## A360114.P9448627152309698934

`eq[1, A360112(n+2)]+2`
-/

namespace A360114.P9448627152309698934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360112 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360114.P9448627152309698934

/-! ## A360114.P3905901233088398870

`eq[1, A360113(n+2)]+2`
-/

namespace A360114.P3905901233088398870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360114.P3905901233088398870

/-! ## A360114.P5849695081572233434

`eq[1, A333570(n+2)²]+2`
-/

namespace A360114.P5849695081572233434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360114.P5849695081572233434

/-! ## A360114.P4231089511754078692

`record[and(n+3, A015909(n+3))]`
-/

namespace A360114.P4231089511754078692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (A015909 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360114.P4231089511754078692

/-! ## A360114.P12076325338437070842

`∪[A345330(n+1), p?[2*n+1]]`
-/

namespace A360114.P12076325338437070842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A360114.P12076325338437070842

/-! ## A360114.P10709851659975805293

`filter[A007617(n+1), A360116(#)]`
-/

namespace A360114.P10709851659975805293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A360114.P10709851659975805293

/-! ## A360114.P5092912148534821925

`filter[A057716(n+1), A360116(#)]`
-/

namespace A360114.P5092912148534821925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A360114.P5092912148534821925

/-! ## A360114.P2780234903001417522

`filter[A067715(n+1), A360116(#)]`
-/

namespace A360114.P2780234903001417522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A360114.P2780234903001417522

/-!
# A360115: Number of prime factors p of n for which the 2-adic valuation of p-1 is greater than that of n-1.

The programs for A360115, there is no canonical definition to state claims against.
-/

/-! ## A360115.P17042038257356292548

`A031286(3^A360112(n+2))`
-/

namespace A360115.P17042038257356292548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A360112 (n + 2) : ℤ))).toNat

end

end A360115.P17042038257356292548

/-! ## A360115.P6518693113751468239

`A003056(A360112(n+2))-A003557(A235394(n+1))`
-/

namespace A360115.P6518693113751468239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A360112 (n + 2)).toNat - A003557 (A235394 (n + 1)).toNat

end

end A360115.P6518693113751468239

/-! ## A360115.P13248594042509074602

`A198277(n)%A003056(A360112(n+2))`
-/

namespace A360115.P13248594042509074602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A003056 (A360112 (n + 2)).toNat)

end

end A360115.P13248594042509074602

/-! ## A360115.P146368873630144198

`A066272(A360112(n+2))^A230369(n+1)`
-/

namespace A360115.P146368873630144198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066272 (A360112 (n + 2)).toNat : ℚ) ^ (A230369 (n + 1) : ℤ)

end

end A360115.P146368873630144198

/-! ## A360115.P2265153591896513023

`floor(A333570(A097751(n+2))/3)`
-/

namespace A360115.P2265153591896513023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333570 (A097751 (n + 2)).toNat : ℚ) / 3⌋

end

end A360115.P2265153591896513023

/-! ## A360115.P17211063134671689294

`A002375(A360112(n+2))%A238185(2*n+5)`
-/

namespace A360115.P17211063134671689294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002375 (A360112 (n + 2)).toNat) (A238185 (2 * n + 5))

end

end A360115.P17211063134671689294

/-! ## A360115.P5461575005369061478

`A066272(A360112(n+2))%A360106(n)`
-/

namespace A360115.P5461575005369061478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066272 (A360112 (n + 2)).toNat) (A360106 n)

end

end A360115.P5461575005369061478

/-! ## A360115.P12024574517927192080

`A001222(A360112(n+2))-A000035(A235088(n+1))`
-/

namespace A360115.P12024574517927192080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A360112 (n + 2)).toNat - A000035 (A235088 (n + 1)).toNat

end

end A360115.P12024574517927192080

/-! ## A360115.P10485670779658459808

`A066272(A360112(n+2)%A360114(n+1))`
-/

namespace A360115.P10485670779658459808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (Int.tmod (A360112 (n + 2)) (A360114 (n + 1))).toNat

end

end A360115.P10485670779658459808

/-! ## A360115.P4497074522546926404

`A195160(Δ[n^3]-n)%A001221(n+2)`
-/

namespace A360115.P4497074522546926404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195160 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A001221 (n + 2))

end

end A360115.P4497074522546926404

/-!
# A360116: a(n) = 1 if there are no prime factors p of n for which the 2-adic valuation of p-1 is less than that of n-1, otherwise 0.

The programs for A360116, there is no canonical definition to state claims against.
-/

/-! ## A360116.P13118654820691423756

`floor(acot(A360115(n+2)))`
-/

namespace A360116.P13118654820691423756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A360115 (n + 2) : ℝ)⌋

end

end A360116.P13118654820691423756

/-! ## A360116.P694811332139792128

`round(1/A333570(n+2))`
-/

namespace A360116.P694811332139792128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A333570 (n + 2) : ℚ))

end

end A360116.P694811332139792128

/-! ## A360116.P11406573733051271594

`round(1/A360112(n+2))`
-/

namespace A360116.P11406573733051271594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A360112 (n + 2) : ℚ))

end

end A360116.P11406573733051271594

/-! ## A360116.P5579082375174310279

`A360113(n+2)+Δ[floor(log2(n+1))]`
-/

namespace A360116.P5579082375174310279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360113 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A360116.P5579082375174310279

/-! ## A360116.P18040383850606568781

`A360130(A360112(n+2))`
-/

namespace A360116.P18040383850606568781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360130 (A360112 (n + 2)).toNat

end

end A360116.P18040383850606568781

/-! ## A360116.P3024970545293186201

`A290098(A360112(n+2)^3)`
-/

namespace A360116.P3024970545293186201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (A360112 (n + 2) ^ 3).toNat

end

end A360116.P3024970545293186201

/-! ## A360116.P5910395125708181198

`A000045(C(2, A360112(n+2)))`
-/

namespace A360116.P5910395125708181198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A360112 (n + 2)).toNat)

end

end A360116.P5910395125708181198

/-! ## A360116.P16040579236631630587

`A360096(C(2, A360112(n+2)))`
-/

namespace A360116.P16040579236631630587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360096 (Nat.choose 2 (A360112 (n + 2)).toNat)

end

end A360116.P16040579236631630587

/-! ## A360116.P1070430194414581661

`A360108(C(2, A360112(n+2)))`
-/

namespace A360116.P1070430194414581661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360108 (Nat.choose 2 (A360112 (n + 2)).toNat)

end

end A360116.P1070430194414581661

/-! ## A360116.P3159813464208802753

`A347519(xor(10, A360112(n+2)))`
-/

namespace A360116.P3159813464208802753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347519 (Int.xor 10 (A360112 (n + 2))).toNat

end

end A360116.P3159813464208802753

/-! ## A360116.P9735275480646712157

`sin(A360113(n+2))^A360115(n+2)`
-/

namespace A360116.P9735275480646712157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A360113 (n + 2) : ℝ) ^ (A360115 (n + 2) : ℤ)

end

end A360116.P9735275480646712157

/-! ## A360116.P17262719441823525901

`C(2, A360112(n+2)*A360115(n+2))`
-/

namespace A360116.P17262719441823525901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A360112 (n + 2) * A360115 (n + 2)).toNat

end

end A360116.P17262719441823525901

/-! ## A360116.P11195256748054895343

`(∏{p}[2*(n+1), A001221(#)+1]%2)^A360115(n+2)`
-/

namespace A360116.P11195256748054895343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (A001221 p + 1)) 2 : ℚ) ^ (A360115 (n + 2) : ℤ)

end

end A360116.P11195256748054895343

/-! ## A360116.P11146903202021204183

`A360109(C(A360112(n+2), A360115(n+2)))`
-/

namespace A360116.P11146903202021204183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 (Nat.choose (A360112 (n + 2)).toNat (A360115 (n + 2)).toNat)

end

end A360116.P11146903202021204183

/-! ## A360116.P14824734663141387970

`A290098(A360112(n+2)²*A360112(n+2))`
-/

namespace A360116.P14824734663141387970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (A360112 (n + 2) ^ 2 * A360112 (n + 2)).toNat

end

end A360116.P14824734663141387970

/-! ## A360116.P5893310792503482213

`and(A000010(A360112(n+2)), A360128(2*n+1))`
-/

namespace A360116.P5893310792503482213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A360112 (n + 2)).toNat) (A360128 (2 * n + 1))

end

end A360116.P5893310792503482213

/-! ## A360116.P4313800700410832238

`(A000005(A005117(2*(n+1)))%2)^A360115(n+2)`
-/

namespace A360116.P4313800700410832238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000005 (A005117 (2 * (n + 1))).toNat) 2 : ℚ) ^ (A360115 (n + 2) : ℤ)

end

end A360116.P4313800700410832238

/-! ## A360116.P10287367244198376410

`(A000005(lcm(2, A005117(n+1)))%2)^A360115(n+2)`
-/

namespace A360116.P10287367244198376410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000005 (Int.lcm 2 (A005117 (n + 1)))) 2 : ℚ) ^ (A360115 (n + 2) : ℤ)

end

end A360116.P10287367244198376410

/-! ## A360116.P7225349764257144140

`A360123(2^A360112(n+2))`
-/

namespace A360116.P7225349764257144140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360123 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A360112 (n + 2) : ℤ))).toNat

end

end A360116.P7225349764257144140

/-!
# A360117: Numbers k such that for all their prime factors p, v(p-1) <= v(k-1), where v(n) = A007814(n) is the 2-adic valuation of n.

The programs for A360117, there is no canonical definition to state claims against.
-/

/-! ## A360117.P3594607409601443203

`eq[1, A360116(n+2)]+2`
-/

namespace A360117.P3594607409601443203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360117.P3594607409601443203

/-! ## A360117.P17528345993705375728

`lt[A360115(n+2), 1]+2`
-/

namespace A360117.P17528345993705375728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360115 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A360117.P17528345993705375728

/-! ## A360117.P12746901461889365040

`eq[gcd(2, n), A360112(n+2)]+2`
-/

namespace A360117.P12746901461889365040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360112 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360117.P12746901461889365040

/-! ## A360117.P14867266092767986597

`record[A059841(n)+A015909(n+2)]`
-/

namespace A360117.P14867266092767986597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A015909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360117.P14867266092767986597

/-! ## A360117.P813126535426580082

`eq[1, A143554(A333570(n+2))]+2`
-/

namespace A360117.P813126535426580082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (A333570 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360117.P813126535426580082

/-! ## A360117.P9900318098869977786

`eq[1, A333313(A360112(n+2))]+2`
-/

namespace A360117.P9900318098869977786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333313 (A360112 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360117.P9900318098869977786

/-! ## A360117.P13152665044236225312

`∪[A059046(n+1), A345330(n+1)]`
-/

namespace A360117.P13152665044236225312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360117.P13152665044236225312

/-! ## A360117.P1804202477134627429

`∪[A052396(n+1), A360114(n+1)]`
-/

namespace A360117.P1804202477134627429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360117.P1804202477134627429

/-! ## A360117.P15088967790921532523

`∪[A056767(n+1), A360114(n+1)]`
-/

namespace A360117.P15088967790921532523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360117.P15088967790921532523

/-!
# A360118: Number of differences (not all necessarily distinct) between consecutive divisors of n which are not also divisors of n.

The programs for A360118, there is no canonical definition to state claims against.
-/

/-! ## A360118.P4054836076019495530

`A060764(n+1)-A360119(n+1)`
-/

namespace A360118.P4054836076019495530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 1) - A360119 (n + 1)

end

end A360118.P4054836076019495530

/-! ## A360118.P8394620340064178764

`or(A060763(n+1), A070109(A345170(n)))`
-/

namespace A360118.P8394620340064178764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060763 (n + 1)) (A070109 (A345170 n).toNat)

end

end A360118.P8394620340064178764

/-! ## A360118.P11682160679173057747

`or(A060763(A319118(2*(n+2))), A060763(n+1))`
-/

namespace A360118.P11682160679173057747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060763 (A319118 (2 * (n + 2))).toNat) (A060763 (n + 1))

end

end A360118.P11682160679173057747

/-! ## A360118.P4117406031869980398

`A032741(A300330(n+1))%A209621(n)`
-/

namespace A360118.P4117406031869980398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A300330 (n + 1)).toNat) (A209621 n)

end

end A360118.P4117406031869980398

/-! ## A360118.P9178820093896663640

`A205808(A297694(n+1))+A060763(n+1)`
-/

namespace A360118.P9178820093896663640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205808 (A297694 (n + 1)).toNat + A060763 (n + 1)

end

end A360118.P9178820093896663640

/-!
# A360119: Number of divisors of n which are not also differences between consecutive divisors, minus the number of differences between consecutive divisors of n which are not also divisors of n. Here the differences are counted with repetition if they occur more than once.

The programs for A360119, there is no canonical definition to state claims against.
-/

/-! ## A360119.P285114945584493088

`A060764(n+1)-A360118(n+1)`
-/

namespace A360119.P285114945584493088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 1) - A360118 (n + 1)

end

end A360119.P285114945584493088

/-! ## A360119.P17840541912426027044

`A035218(n^A341624(n+1))`
-/

namespace A360119.P17840541912426027044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A341624 (n + 1) : ℤ))).toNat

end

end A360119.P17840541912426027044

/-! ## A360119.P7213177079401403359

`A320107(n^A341620(n+1))`
-/

namespace A360119.P7213177079401403359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A341620 (n + 1) : ℤ))).toNat

end

end A360119.P7213177079401403359

/-! ## A360119.P9279458279996057788

`A329198(A091010(2*n+3)*A094518(n+1))`
-/

namespace A360119.P9279458279996057788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 (A091010 (2 * n + 3) * A094518 (n + 1)).toNat

end

end A360119.P9279458279996057788

/-! ## A360119.P13617571641236012295

`A211111(A064771(3*n+5)*A065205(n+1))`
-/

namespace A360119.P13617571641236012295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (A064771 (3 * n + 5) * A065205 (n + 1)).toNat

end

end A360119.P13617571641236012295

/-!
# A360120: a(n) = 1 if there are no solutions to k*n/(k+n) = x and k*n/(k-n) = y for integers x and y and natural number k, otherwise 0.

The programs for A360120, there is no canonical definition to state claims against.
-/

/-! ## A360120.P504828537574567284

`C(2, A243017(n+1))`
-/

namespace A360120.P504828537574567284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A243017 (n + 1)).toNat

end

end A360120.P504828537574567284

/-! ## A360120.P6237541478691436074

`C(2, A243045(n+1))`
-/

namespace A360120.P6237541478691436074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A243045 (n + 1)).toNat

end

end A360120.P6237541478691436074

/-! ## A360120.P4896254831847826517

`C(2, A243046(n+1)+2)`
-/

namespace A360120.P4896254831847826517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A243046 (n + 1) + 2).toNat

end

end A360120.P4896254831847826517

/-! ## A360120.P9699560901338287745

`A000007(A243046(n+1))`
-/

namespace A360120.P9699560901338287745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A243046 (n + 1)).toNat

end

end A360120.P9699560901338287745

/-! ## A360120.P3394483390276989693

`A034188(11*A243046(n+1))`
-/

namespace A360120.P3394483390276989693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (11 * A243046 (n + 1)).toNat

end

end A360120.P3394483390276989693

/-! ## A360120.P15613835581599158239

`and(1, -A006093(A243046(n+1)+1))`
-/

namespace A360120.P15613835581599158239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-A006093 (A243046 (n + 1) + 1).toNat)

end

end A360120.P15613835581599158239

/-! ## A360120.P9692515839305521508

`round(1/A333020(A243046(n+1)+1))`
-/

namespace A360120.P9692515839305521508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A333020 (A243046 (n + 1) + 1).toNat : ℚ))

end

end A360120.P9692515839305521508

/-! ## A360120.P10217517872963555683

`A243045(A319101(n+1))^A243045(n+1)`
-/

namespace A360120.P10217517872963555683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243045 (A319101 (n + 1)).toNat : ℚ) ^ (A243045 (n + 1) : ℤ)

end

end A360120.P10217517872963555683

/-! ## A360120.P3160656192345042413

`A000122(2*n+1)^A243045(n+1)`
-/

namespace A360120.P3160656192345042413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (2 * n + 1) : ℚ) ^ (A243045 (n + 1) : ℤ)

end

end A360120.P3160656192345042413

/-! ## A360120.P9932620247776496948

`A243045(A007510(n+1))^A243045(n+1)`
-/

namespace A360120.P9932620247776496948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243045 (A007510 (n + 1)).toNat : ℚ) ^ (A243045 (n + 1) : ℤ)

end

end A360120.P9932620247776496948

/-! ## A360120.P15501760553992370675

`A000007(A243017(n+1))`
-/

namespace A360120.P15501760553992370675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A243017 (n + 1)).toNat

end

end A360120.P15501760553992370675

/-! ## A360120.P627944877701529713

`A000007(A243045(n+1))`
-/

namespace A360120.P627944877701529713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A243045 (n + 1)).toNat

end

end A360120.P627944877701529713

/-!
# A360122: Parity of A360121, where A360121 is Dirichlet convolution of A342001 with A342002.

The programs for A360122, the canonical program `A360122.P9404621498929135355` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360122 has offset 1).

The definition of A360122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360122.P15509949373770710154

`A360121(n+1)%2`
-/

namespace A360122.P15509949373770710154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360121 (n + 1)) 2

end

end A360122.P15509949373770710154

namespace A360122

/-- `A360121(n+1)%2` -/
def P15509949373770710154.Spec : Prop :=
  ∀ n, P15509949373770710154.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P1621853735221163796

`A000035(A360121(n+1))`
-/

namespace A360122.P1621853735221163796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A360121 (n + 1)).toNat

end

end A360122.P1621853735221163796

namespace A360122

/-- `A000035(A360121(n+1))` -/
def P1621853735221163796.Spec : Prop :=
  ∀ n, P1621853735221163796.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P13916127049086389046

`A347959(n+1)%2`
-/

namespace A360122.P13916127049086389046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347959 (n + 1)) 2

end

end A360122.P13916127049086389046

namespace A360122

/-- `A347959(n+1)%2` -/
def P13916127049086389046.Spec : Prop :=
  ∀ n, P13916127049086389046.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P9404621498929135355

`A347963(n+1)%2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360122

/-- `A347963(n+1)%2` -/
def P9404621498929135355.Spec : Prop :=
  ∀ n, P9404621498929135355.a n = A360122 (n + 1)

theorem P9404621498929135355.correct : P9404621498929135355.Spec := by
  intro n
  simp only [A360122, Nat.add_sub_cancel]

end A360122

/-! ## A360122.P7505624035059363224

`and(1, A347959(A000027(n+1)))`
-/

namespace A360122.P7505624035059363224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347959 (A000027 (n + 1)).toNat)

end

end A360122.P7505624035059363224

namespace A360122

/-- `and(1, A347959(A000027(n+1)))` -/
def P7505624035059363224.Spec : Prop :=
  ∀ n, P7505624035059363224.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P16481801273481422259

`and(A054977(n), A347959(n+1))`
-/

namespace A360122.P16481801273481422259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A347959 (n + 1))

end

end A360122.P16481801273481422259

namespace A360122

/-- `and(A054977(n), A347959(n+1))` -/
def P16481801273481422259.Spec : Prop :=
  ∀ n, P16481801273481422259.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P12706244135275858261

`and(A054977(n), A347963(n+1))`
-/

namespace A360122.P12706244135275858261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A347963 (n + 1))

end

end A360122.P12706244135275858261

namespace A360122

/-- `and(A054977(n), A347963(n+1))` -/
def P12706244135275858261.Spec : Prop :=
  ∀ n, P12706244135275858261.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P1915446060982828668

`and(A057427(n), A347959(n+1))`
-/

namespace A360122.P1915446060982828668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A347959 (n + 1))

end

end A360122.P1915446060982828668

namespace A360122

/-- `and(A057427(n), A347959(n+1))` -/
def P1915446060982828668.Spec : Prop :=
  ∀ n, P1915446060982828668.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P3212971512432485074

`and(A057427(n), A347963(n+1))`
-/

namespace A360122.P3212971512432485074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A347963 (n + 1))

end

end A360122.P3212971512432485074

namespace A360122

/-- `and(A057427(n), A347963(n+1))` -/
def P3212971512432485074.Spec : Prop :=
  ∀ n, P3212971512432485074.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P2741255835705596649

`A000035(A347963(n+1))`
-/

namespace A360122.P2741255835705596649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347963 (n + 1)).toNat

end

end A360122.P2741255835705596649

namespace A360122

/-- `A000035(A347963(n+1))` -/
def P2741255835705596649.Spec : Prop :=
  ∀ n, P2741255835705596649.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P4556050902874456710

`A000035(A347959(n+1))`
-/

namespace A360122.P4556050902874456710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347959 (n + 1)).toNat

end

end A360122.P4556050902874456710

namespace A360122

/-- `A000035(A347959(n+1))` -/
def P4556050902874456710.Spec : Prop :=
  ∀ n, P4556050902874456710.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P4687001962172010216

`and(A052552(n), A347959(n+1))`
-/

namespace A360122.P4687001962172010216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A347959 (n + 1))

end

end A360122.P4687001962172010216

namespace A360122

/-- `and(A052552(n), A347959(n+1))` -/
def P4687001962172010216.Spec : Prop :=
  ∀ n, P4687001962172010216.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P16032491682677239804

`and(A052552(n), A347963(n+1))`
-/

namespace A360122.P16032491682677239804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A347963 (n + 1))

end

end A360122.P16032491682677239804

namespace A360122

/-- `and(A052552(n), A347963(n+1))` -/
def P16032491682677239804.Spec : Prop :=
  ∀ n, P16032491682677239804.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P7264835014458632212

`and(A000051(n), A347959(n+1))`
-/

namespace A360122.P7264835014458632212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A347959 (n + 1))

end

end A360122.P7264835014458632212

namespace A360122

/-- `and(A000051(n), A347959(n+1))` -/
def P7264835014458632212.Spec : Prop :=
  ∀ n, P7264835014458632212.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P196183414417709609

`and(A000051(n), A347963(n+1))`
-/

namespace A360122.P196183414417709609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A347963 (n + 1))

end

end A360122.P196183414417709609

namespace A360122

/-- `and(A000051(n), A347963(n+1))` -/
def P196183414417709609.Spec : Prop :=
  ∀ n, P196183414417709609.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P18277753699618887078

`and(A000051(n), A360121(n+1))`
-/

namespace A360122.P18277753699618887078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A360121 (n + 1))

end

end A360122.P18277753699618887078

namespace A360122

/-- `and(A000051(n), A360121(n+1))` -/
def P18277753699618887078.Spec : Prop :=
  ∀ n, P18277753699618887078.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P17013937419641266614

`and(A048578(n), A347959(n+1))`
-/

namespace A360122.P17013937419641266614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A347959 (n + 1))

end

end A360122.P17013937419641266614

namespace A360122

/-- `and(A048578(n), A347959(n+1))` -/
def P17013937419641266614.Spec : Prop :=
  ∀ n, P17013937419641266614.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P6635808875380319009

`and(A048578(n), A347963(n+1))`
-/

namespace A360122.P6635808875380319009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A347963 (n + 1))

end

end A360122.P6635808875380319009

namespace A360122

/-- `and(A048578(n), A347963(n+1))` -/
def P6635808875380319009.Spec : Prop :=
  ∀ n, P6635808875380319009.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P3469938289739958325

`and(A020737(n), A347959(n+1))`
-/

namespace A360122.P3469938289739958325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A347959 (n + 1))

end

end A360122.P3469938289739958325

namespace A360122

/-- `and(A020737(n), A347959(n+1))` -/
def P3469938289739958325.Spec : Prop :=
  ∀ n, P3469938289739958325.a n = A360122 (n + 1)

end A360122

/-! ## A360122.P12772452452118404142

`and(A020737(n), A347963(n+1))`
-/

namespace A360122.P12772452452118404142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A347963 (n + 1))

end

end A360122.P12772452452118404142

namespace A360122

/-- `and(A020737(n), A347963(n+1))` -/
def P12772452452118404142.Spec : Prop :=
  ∀ n, P12772452452118404142.a n = A360122 (n + 1)

end A360122

/-!
# A360123: Parity of A347389, where A347389 is Dirichlet convolution of A003415(n) with A003415(A276086(n)).

The programs for A360123, the canonical program `A360123.P18421023914784840136` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360123 has offset 1).

The definition of A360123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360123.P7313243684464327551

`A347389(n+1)%2`
-/

namespace A360123.P7313243684464327551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347389 (n + 1)) 2

end

end A360123.P7313243684464327551

namespace A360123

/-- `A347389(n+1)%2` -/
def P7313243684464327551.Spec : Prop :=
  ∀ n, P7313243684464327551.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P1468236023324531180

`A000035(A347389(n+1))`
-/

namespace A360123.P1468236023324531180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347389 (n + 1)).toNat

end

end A360123.P1468236023324531180

namespace A360123

/-- `A000035(A347389(n+1))` -/
def P1468236023324531180.Spec : Prop :=
  ∀ n, P1468236023324531180.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P18421023914784840136

`and(A001492(n), A360122(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360123

/-- `and(A001492(n), A360122(n+1))` -/
def P18421023914784840136.Spec : Prop :=
  ∀ n, P18421023914784840136.a n = A360123 (n + 1)

theorem P18421023914784840136.correct : P18421023914784840136.Spec := by
  intro n
  simp only [A360123, Nat.add_sub_cancel]

end A360123

/-! ## A360123.P16115012634038709539

`and(A054977(n), A347389(n+1))`
-/

namespace A360123.P16115012634038709539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A347389 (n + 1))

end

end A360123.P16115012634038709539

namespace A360123

/-- `and(A054977(n), A347389(n+1))` -/
def P16115012634038709539.Spec : Prop :=
  ∀ n, P16115012634038709539.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P2724081068392901747

`and(A057427(n), A347389(n+1))`
-/

namespace A360123.P2724081068392901747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A347389 (n + 1))

end

end A360123.P2724081068392901747

namespace A360123

/-- `and(A057427(n), A347389(n+1))` -/
def P2724081068392901747.Spec : Prop :=
  ∀ n, P2724081068392901747.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P14137838992173767850

`and(A001221(A088136(2*n+3)), A347389(n+1))`
-/

namespace A360123.P14137838992173767850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A088136 (2 * n + 3)).toNat) (A347389 (n + 1))

end

end A360123.P14137838992173767850

namespace A360123

/-- `and(A001221(A088136(2*n+3)), A347389(n+1))` -/
def P14137838992173767850.Spec : Prop :=
  ∀ n, P14137838992173767850.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P7942392829438934172

`and(A052552(n), A347389(n+1))`
-/

namespace A360123.P7942392829438934172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A347389 (n + 1))

end

end A360123.P7942392829438934172

namespace A360123

/-- `and(A052552(n), A347389(n+1))` -/
def P7942392829438934172.Spec : Prop :=
  ∀ n, P7942392829438934172.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P4567130312884116020

`and(A000051(n), A347389(n+1))`
-/

namespace A360123.P4567130312884116020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A347389 (n + 1))

end

end A360123.P4567130312884116020

namespace A360123

/-- `and(A000051(n), A347389(n+1))` -/
def P4567130312884116020.Spec : Prop :=
  ∀ n, P4567130312884116020.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P4195022474270408137

`and(A083318(n), A347389(n+1))`
-/

namespace A360123.P4195022474270408137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A347389 (n + 1))

end

end A360123.P4195022474270408137

namespace A360123

/-- `and(A083318(n), A347389(n+1))` -/
def P4195022474270408137.Spec : Prop :=
  ∀ n, P4195022474270408137.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P7233750550047024309

`and(A048578(n), A347389(n+1))`
-/

namespace A360123.P7233750550047024309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A347389 (n + 1))

end

end A360123.P7233750550047024309

namespace A360123

/-- `and(A048578(n), A347389(n+1))` -/
def P7233750550047024309.Spec : Prop :=
  ∀ n, P7233750550047024309.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P13766124683544602763

`and(A020737(n), A347389(n+1))`
-/

namespace A360123.P13766124683544602763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A347389 (n + 1))

end

end A360123.P13766124683544602763

namespace A360123

/-- `and(A020737(n), A347389(n+1))` -/
def P13766124683544602763.Spec : Prop :=
  ∀ n, P13766124683544602763.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P2641998955371903955

`and(A033622(n), A347389(n+1))`
-/

namespace A360123.P2641998955371903955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A347389 (n + 1))

end

end A360123.P2641998955371903955

namespace A360123

/-- `and(A033622(n), A347389(n+1))` -/
def P2641998955371903955.Spec : Prop :=
  ∀ n, P2641998955371903955.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P208172680081946069

`and(A083575(n), A347389(n+1))`
-/

namespace A360123.P208172680081946069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083575 n) (A347389 (n + 1))

end

end A360123.P208172680081946069

namespace A360123

/-- `and(A083575(n), A347389(n+1))` -/
def P208172680081946069.Spec : Prop :=
  ∀ n, P208172680081946069.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P6712808651132851340

`and(A083686(n), A347389(n+1))`
-/

namespace A360123.P6712808651132851340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083686 n) (A347389 (n + 1))

end

end A360123.P6712808651132851340

namespace A360123

/-- `and(A083686(n), A347389(n+1))` -/
def P6712808651132851340.Spec : Prop :=
  ∀ n, P6712808651132851340.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P15342868278713503909

`and(A083705(n), A347389(n+1))`
-/

namespace A360123.P15342868278713503909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083705 n) (A347389 (n + 1))

end

end A360123.P15342868278713503909

namespace A360123

/-- `and(A083705(n), A347389(n+1))` -/
def P15342868278713503909.Spec : Prop :=
  ∀ n, P15342868278713503909.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P17590315340384804251

`and(A083683(n), A347389(n+1))`
-/

namespace A360123.P17590315340384804251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083683 n) (A347389 (n + 1))

end

end A360123.P17590315340384804251

namespace A360123

/-- `and(A083683(n), A347389(n+1))` -/
def P17590315340384804251.Spec : Prop :=
  ∀ n, P17590315340384804251.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P1204061183828727689

`and(A035089(n), A347389(n+1))`
-/

namespace A360123.P1204061183828727689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035089 n) (A347389 (n + 1))

end

end A360123.P1204061183828727689

namespace A360123

/-- `and(A035089(n), A347389(n+1))` -/
def P1204061183828727689.Spec : Prop :=
  ∀ n, P1204061183828727689.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P9910473542307544903

`and(A195744(n), A347389(n+1))`
-/

namespace A360123.P9910473542307544903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A347389 (n + 1))

end

end A360123.P9910473542307544903

namespace A360123

/-- `and(A195744(n), A347389(n+1))` -/
def P9910473542307544903.Spec : Prop :=
  ∀ n, P9910473542307544903.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P2512592762401249483

`and(A206371(n), A347389(n+1))`
-/

namespace A360123.P2512592762401249483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206371 n) (A347389 (n + 1))

end

end A360123.P2512592762401249483

namespace A360123

/-- `and(A206371(n), A347389(n+1))` -/
def P2512592762401249483.Spec : Prop :=
  ∀ n, P2512592762401249483.a n = A360123 (n + 1)

end A360123

/-! ## A360123.P553802650881380298

`and(A122041(n+1), A347389(n+1))`
-/

namespace A360123.P553802650881380298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A347389 (n + 1))

end

end A360123.P553802650881380298

namespace A360123

/-- `and(A122041(n+1), A347389(n+1))` -/
def P553802650881380298.Spec : Prop :=
  ∀ n, P553802650881380298.a n = A360123 (n + 1)

end A360123

/-!
# A360124: Numbers k such that A360121(k) is odd, but A347389(k) is even.

The programs for A360124, the canonical program `A360124.P4749655470974638796` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360124 has offset 1).

The definition of A360124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360124.P7392235613784675024

`8*∪[2*(n+1)², (n+1)²]`
-/

namespace A360124.P7392235613784675024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A360124.P7392235613784675024

namespace A360124

/-- `8*∪[2*(n+1)², (n+1)²]` -/
def P7392235613784675024.Spec : Prop :=
  ∀ n, (P7392235613784675024.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P4749655470974638796

`4*A088827(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A360124

/-- `4*A088827(n+1)` -/
def P4749655470974638796.Spec : Prop :=
  ∀ n, P4749655470974638796.a n = A360124 (n + 1)

theorem P4749655470974638796.correct : P4749655470974638796.Spec := by
  intro n
  simp only [A360124, Nat.add_sub_cancel]

end A360124

/-! ## A360124.P17301596622292812813

`8*A028982(n+1)`
-/

namespace A360124.P17301596622292812813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A028982 (n + 1)

end

end A360124.P17301596622292812813

namespace A360124

/-- `8*A028982(n+1)` -/
def P17301596622292812813.Spec : Prop :=
  ∀ n, P17301596622292812813.a n = A360124 (n + 1)

theorem P17301596622292812813.correct : P17301596622292812813.Spec := by
  intro n
  simp only [A360124, Nat.add_sub_cancel, A360124.P17301596622292812813.a, A360124.P4749655470974638796.a, A028982, A028982.P8924659345006964944.f1, A028982.P8924659345006964944.f2, A028982.P8924659345006964944.a, A088827, A088827.P16132540698734930391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360124

/-! ## A360124.P9143405779778355086

`∩[2*A377821(n+1), A377821(n+1)]`
-/

namespace A360124.P9143405779778355086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A377821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P9143405779778355086

namespace A360124

/-- `∩[2*A377821(n+1), A377821(n+1)]` -/
def P9143405779778355086.Spec : Prop :=
  ∀ n, (P9143405779778355086.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P8937334174279602606

`A088827(A001953(A001953(n+1)))`
-/

namespace A360124.P8937334174279602606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (A001953 (A001953 (n + 1)).toNat).toNat

end

end A360124.P8937334174279602606

namespace A360124

/-- `A088827(A001953(A001953(n+1)))` -/
def P8937334174279602606.Spec : Prop :=
  ∀ n, P8937334174279602606.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P9628064711405642322

`∩[A106841(n+1), A083854(n)]`
-/

namespace A360124.P9628064711405642322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P9628064711405642322

namespace A360124

/-- `∩[A106841(n+1), A083854(n)]` -/
def P9628064711405642322.Spec : Prop :=
  ∀ n, (P9628064711405642322.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P10250101284744458595

`∩[A028982(n+1), A106841(n+1)]`
-/

namespace A360124.P10250101284744458595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P10250101284744458595

namespace A360124

/-- `∩[A028982(n+1), A106841(n+1)]` -/
def P10250101284744458595.Spec : Prop :=
  ∀ n, (P10250101284744458595.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P1652031311002510739

`∩[A069265(n+1), A106841(n+1)]`
-/

namespace A360124.P1652031311002510739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P1652031311002510739

namespace A360124

/-- `∩[A069265(n+1), A106841(n+1)]` -/
def P1652031311002510739.Spec : Prop :=
  ∀ n, (P1652031311002510739.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P14542557659754651945

`∩[A088827(n+1), A106841(n+1)]`
-/

namespace A360124.P14542557659754651945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P14542557659754651945

namespace A360124

/-- `∩[A088827(n+1), A106841(n+1)]` -/
def P14542557659754651945.Spec : Prop :=
  ∀ n, (P14542557659754651945.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P9161511116325899376

`A022144(∪[2*(n+1)², (n+1)²])`
-/

namespace A360124.P9161511116325899376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A360124.P9161511116325899376

namespace A360124

/-- `A022144(∪[2*(n+1)², (n+1)²])` -/
def P9161511116325899376.Spec : Prop :=
  ∀ n, P9161511116325899376.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P14161328553335226197

`A022144(A088827(n+1)/2)`
-/

namespace A360124.P14161328553335226197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat

end

end A360124.P14161328553335226197

namespace A360124

/-- `A022144(A088827(n+1)/2)` -/
def P14161328553335226197.Spec : Prop :=
  ∀ n, P14161328553335226197.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P14883342373725783776

`∩[A088827(n+1), A022144(n)]`
-/

namespace A360124.P14883342373725783776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P14883342373725783776

namespace A360124

/-- `∩[A088827(n+1), A022144(n)]` -/
def P14883342373725783776.Spec : Prop :=
  ∀ n, (P14883342373725783776.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P10348060744505357990

`A008590(A028982(n+1))`
-/

namespace A360124.P10348060744505357990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A028982 (n + 1)).toNat

end

end A360124.P10348060744505357990

namespace A360124

/-- `A008590(A028982(n+1))` -/
def P10348060744505357990.Spec : Prop :=
  ∀ n, P10348060744505357990.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P8880750825041079149

`A008590(A088827(n+1)/2)`
-/

namespace A360124.P8880750825041079149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat

end

end A360124.P8880750825041079149

namespace A360124

/-- `A008590(A088827(n+1)/2)` -/
def P8880750825041079149.Spec : Prop :=
  ∀ n, P8880750825041079149.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P7747079298817804528

`∩[A088827(n+1), A008590(n)]`
-/

namespace A360124.P7747079298817804528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P7747079298817804528

namespace A360124

/-- `∩[A088827(n+1), A008590(n)]` -/
def P7747079298817804528.Spec : Prop :=
  ∀ n, (P7747079298817804528.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P14341490855566833825

`∩[A088827(n+1), A365886(n+1)]`
-/

namespace A360124.P14341490855566833825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P14341490855566833825

namespace A360124

/-- `∩[A088827(n+1), A365886(n+1)]` -/
def P14341490855566833825.Spec : Prop :=
  ∀ n, (P14341490855566833825.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P16310422122434478324

`∩[A088827(n+1), A365866(n+1)]`
-/

namespace A360124.P16310422122434478324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360124.P16310422122434478324

namespace A360124

/-- `∩[A088827(n+1), A365866(n+1)]` -/
def P16310422122434478324.Spec : Prop :=
  ∀ n, (P16310422122434478324.a n : ℤ) = A360124 (n + 1)

end A360124

/-! ## A360124.P4433618797152486182

`filter[A008590(n+1), A053866(#)]`
-/

namespace A360124.P4433618797152486182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A360124.P4433618797152486182

namespace A360124

/-- `filter[A008590(n+1), A053866(#)]` -/
def P4433618797152486182.Spec : Prop :=
  ∀ n, P4433618797152486182.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P14390420318088776653

`filter[A022144(n+1), A053866(#)]`
-/

namespace A360124.P14390420318088776653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A360124.P14390420318088776653

namespace A360124

/-- `filter[A022144(n+1), A053866(#)]` -/
def P14390420318088776653.Spec : Prop :=
  ∀ n, P14390420318088776653.a n = A360124 (n + 1)

end A360124

/-! ## A360124.P18297837105294167118

`filter[A106841(n+1), A053866(#)]`
-/

namespace A360124.P18297837105294167118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A360124.P18297837105294167118

namespace A360124

/-- `filter[A106841(n+1), A053866(#)]` -/
def P18297837105294167118.Spec : Prop :=
  ∀ n, P18297837105294167118.a n = A360124 (n + 1)

end A360124

/-!
# A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

The programs for A360125, the canonical program `A360125.P8640991440014561384` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360125 has offset 1).

The definition of A360125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360125.P12291204855292744772

`A359425(n+1)%2`
-/

namespace A360125.P12291204855292744772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359425 (n + 1)) 2

end

end A360125.P12291204855292744772

namespace A360125

/-- `A359425(n+1)%2` -/
def P12291204855292744772.Spec : Prop :=
  ∀ n, P12291204855292744772.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P15980456886728314477

`A000035(A359425(n+1))`
-/

namespace A360125.P15980456886728314477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359425 (n + 1)).toNat

end

end A360125.P15980456886728314477

namespace A360125

/-- `A000035(A359425(n+1))` -/
def P15980456886728314477.Spec : Prop :=
  ∀ n, P15980456886728314477.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P8640991440014561384

`A319684(gcd(xor(1, n²), ∑[n]))%2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360125

/-- `A319684(gcd(xor(1, n²), ∑[n]))%2` -/
def P8640991440014561384.Spec : Prop :=
  ∀ n, P8640991440014561384.a n = A360125 (n + 1)

theorem P8640991440014561384.correct : P8640991440014561384.Spec := by
  intro n
  simp only [A360125, Nat.add_sub_cancel]

end A360125

/-! ## A360125.P13540485799863471568

`and(1, A359425(A000027(n+1)))`
-/

namespace A360125.P13540485799863471568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359425 (A000027 (n + 1)).toNat)

end

end A360125.P13540485799863471568

namespace A360125

/-- `and(1, A359425(A000027(n+1)))` -/
def P13540485799863471568.Spec : Prop :=
  ∀ n, P13540485799863471568.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P11668883975618332112

`and(A039982(n), A359425(n+1))`
-/

namespace A360125.P11668883975618332112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039982 n) (A359425 (n + 1))

end

end A360125.P11668883975618332112

namespace A360125

/-- `and(A039982(n), A359425(n+1))` -/
def P11668883975618332112.Spec : Prop :=
  ∀ n, P11668883975618332112.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P16476699663555008453

`and(A054977(n), A359425(n+1))`
-/

namespace A360125.P16476699663555008453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A359425 (n + 1))

end

end A360125.P16476699663555008453

namespace A360125

/-- `and(A054977(n), A359425(n+1))` -/
def P16476699663555008453.Spec : Prop :=
  ∀ n, P16476699663555008453.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P7012811514434188695

`and(A057427(n), A359425(n+1))`
-/

namespace A360125.P7012811514434188695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A359425 (n + 1))

end

end A360125.P7012811514434188695

namespace A360125

/-- `and(A057427(n), A359425(n+1))` -/
def P7012811514434188695.Spec : Prop :=
  ∀ n, P7012811514434188695.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P17455872943594681868

`and(A060576(n), A359425(n+1))`
-/

namespace A360125.P17455872943594681868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A359425 (n + 1))

end

end A360125.P17455872943594681868

namespace A360125

/-- `and(A060576(n), A359425(n+1))` -/
def P17455872943594681868.Spec : Prop :=
  ∀ n, P17455872943594681868.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P9596910080867610052

`and(A093719(n), A359425(n+1))`
-/

namespace A360125.P9596910080867610052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093719 n) (A359425 (n + 1))

end

end A360125.P9596910080867610052

namespace A360125

/-- `and(A093719(n), A359425(n+1))` -/
def P9596910080867610052.Spec : Prop :=
  ∀ n, P9596910080867610052.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P10407343234584302904

`and(A097325(n), A359425(n+1))`
-/

namespace A360125.P10407343234584302904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097325 n) (A359425 (n + 1))

end

end A360125.P10407343234584302904

namespace A360125

/-- `and(A097325(n), A359425(n+1))` -/
def P10407343234584302904.Spec : Prop :=
  ∀ n, P10407343234584302904.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P1383169261758750353

`and(A098725(n), A359425(n+1))`
-/

namespace A360125.P1383169261758750353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098725 n) (A359425 (n + 1))

end

end A360125.P1383169261758750353

namespace A360125

/-- `and(A098725(n), A359425(n+1))` -/
def P1383169261758750353.Spec : Prop :=
  ∀ n, P1383169261758750353.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P13335203165039230106

`and(A105234(n), A359425(n+1))`
-/

namespace A360125.P13335203165039230106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105234 n) (A359425 (n + 1))

end

end A360125.P13335203165039230106

namespace A360125

/-- `and(A105234(n), A359425(n+1))` -/
def P13335203165039230106.Spec : Prop :=
  ∀ n, P13335203165039230106.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P8738527034211107935

`and(A048578(n), A359425(n+1))`
-/

namespace A360125.P8738527034211107935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A359425 (n + 1))

end

end A360125.P8738527034211107935

namespace A360125

/-- `and(A048578(n), A359425(n+1))` -/
def P8738527034211107935.Spec : Prop :=
  ∀ n, P8738527034211107935.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P15225367314481195198

`and(A020737(n), A359425(n+1))`
-/

namespace A360125.P15225367314481195198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A359425 (n + 1))

end

end A360125.P15225367314481195198

namespace A360125

/-- `and(A020737(n), A359425(n+1))` -/
def P15225367314481195198.Spec : Prop :=
  ∀ n, P15225367314481195198.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P13728508402648416674

`and(A195744(n), A359425(n+1))`
-/

namespace A360125.P13728508402648416674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A359425 (n + 1))

end

end A360125.P13728508402648416674

namespace A360125

/-- `and(A195744(n), A359425(n+1))` -/
def P13728508402648416674.Spec : Prop :=
  ∀ n, P13728508402648416674.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P14123723889603869487

`and(A122041(n+1), A359425(n+1))`
-/

namespace A360125.P14123723889603869487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A359425 (n + 1))

end

end A360125.P14123723889603869487

namespace A360125

/-- `and(A122041(n+1), A359425(n+1))` -/
def P14123723889603869487.Spec : Prop :=
  ∀ n, P14123723889603869487.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P8610143249378322608

`and(A196657(n), A359425(n+1))`
-/

namespace A360125.P8610143249378322608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A359425 (n + 1))

end

end A360125.P8610143249378322608

namespace A360125

/-- `and(A196657(n), A359425(n+1))` -/
def P8610143249378322608.Spec : Prop :=
  ∀ n, P8610143249378322608.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P15789978992854013975

`and(A000337(n), A359425(n+1))`
-/

namespace A360125.P15789978992854013975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A359425 (n + 1))

end

end A360125.P15789978992854013975

namespace A360125

/-- `and(A000337(n), A359425(n+1))` -/
def P15789978992854013975.Spec : Prop :=
  ∀ n, P15789978992854013975.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P2941310574270032410

`and(A051900(n), A359425(n+1))`
-/

namespace A360125.P2941310574270032410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A359425 (n + 1))

end

end A360125.P2941310574270032410

namespace A360125

/-- `and(A051900(n), A359425(n+1))` -/
def P2941310574270032410.Spec : Prop :=
  ∀ n, P2941310574270032410.a n = A360125 (n + 1)

end A360125

/-! ## A360125.P17471521203864989178

`and(A048479(n), A359425(n+1))`
-/

namespace A360125.P17471521203864989178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A359425 (n + 1))

end

end A360125.P17471521203864989178

namespace A360125

/-- `and(A048479(n), A359425(n+1))` -/
def P17471521203864989178.Spec : Prop :=
  ∀ n, P17471521203864989178.a n = A360125 (n + 1)

end A360125

/-!
# A360126: Numbers k for which A359425(k) is even, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

The programs for A360126, the canonical program `A360126.P9027795698661320514` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360126 has offset 1).

The definition of A360126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360126.P9027795698661320514

`eq[0, A360125(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360126

/-- `eq[0, A360125(n+1)]+1` -/
def P9027795698661320514.Spec : Prop :=
  ∀ n, (P9027795698661320514.a n : ℤ) = A360126 (n + 1)

theorem P9027795698661320514.correct : P9027795698661320514.Spec := by
  intro n
  simp only [A360126, Nat.add_sub_cancel]

end A360126

/-! ## A360126.P308051257924918353

`comp[A360127(n+1)-1]+1`
-/

namespace A360126.P308051257924918353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360127 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360126.P308051257924918353

namespace A360126

/-- `comp[A360127(n+1)-1]+1` -/
def P308051257924918353.Spec : Prop :=
  ∀ n, (P308051257924918353.a n : ℤ) = A360126 (n + 1)

end A360126

/-! ## A360126.P17731029332142591120

`eq[0, A359425(n+1)%2]+1`
-/

namespace A360126.P17731029332142591120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359425 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360126.P17731029332142591120

namespace A360126

/-- `eq[0, A359425(n+1)%2]+1` -/
def P17731029332142591120.Spec : Prop :=
  ∀ n, (P17731029332142591120.a n : ℤ) = A360126 (n + 1)

end A360126

/-! ## A360126.P1127759803639622748

`lt[A328578(n), A088570(A128393(n+3))]`
-/

namespace A360126.P1127759803639622748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A128393 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360126.P1127759803639622748

namespace A360126

/-- `lt[A328578(n), A088570(A128393(n+3))]` -/
def P1127759803639622748.Spec : Prop :=
  ∀ n, (P1127759803639622748.a n : ℤ) = A360126 (n + 1)

end A360126

/-! ## A360126.P3225474138931363352

`lt[A261734(n), A377063(A245450(n+1))]`
-/

namespace A360126.P3225474138931363352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377063 (A245450 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360126.P3225474138931363352

namespace A360126

/-- `lt[A261734(n), A377063(A245450(n+1))]` -/
def P3225474138931363352.Spec : Prop :=
  ∀ n, (P3225474138931363352.a n : ℤ) = A360126 (n + 1)

end A360126

/-!
# A360127: Numbers k for which A359425(k) is odd, where A359425 is the Dirichlet convolution of the arithmetic derivative with the primorial base exp function.

The programs for A360127, the canonical program `A360127.P2447225170114496464` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360127 has offset 1).

The definition of A360127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360127.P2447225170114496464

`eq[1, A360125(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360127

/-- `eq[1, A360125(n+1)]+1` -/
def P2447225170114496464.Spec : Prop :=
  ∀ n, (P2447225170114496464.a n : ℤ) = A360127 (n + 1)

theorem P2447225170114496464.correct : P2447225170114496464.Spec := by
  intro n
  simp only [A360127, Nat.add_sub_cancel]

end A360127

/-! ## A360127.P13908814802316241374

`lt[A360125(n+2), A360125(n+1)]+1`
-/

namespace A360127.P13908814802316241374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360127.P13908814802316241374

namespace A360127

/-- `lt[A360125(n+2), A360125(n+1)]+1` -/
def P13908814802316241374.Spec : Prop :=
  ∀ n, (P13908814802316241374.a n : ℤ) = A360127 (n + 1)

end A360127

/-! ## A360127.P6811428729010698452

`filter[A004277(n), A360125(#)]`
-/

namespace A360127.P6811428729010698452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P6811428729010698452

namespace A360127

/-- `filter[A004277(n), A360125(#)]` -/
def P6811428729010698452.Spec : Prop :=
  ∀ n, P6811428729010698452.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P4415363377133237388

`filter[A103517(n), A360125(#)]`
-/

namespace A360127.P4415363377133237388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P4415363377133237388

namespace A360127

/-- `filter[A103517(n), A360125(#)]` -/
def P4415363377133237388.Spec : Prop :=
  ∀ n, P4415363377133237388.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P4300201109712833047

`filter[A005843(n+1), A360125(#)]`
-/

namespace A360127.P4300201109712833047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P4300201109712833047

namespace A360127

/-- `filter[A005843(n+1), A360125(#)]` -/
def P4300201109712833047.Spec : Prop :=
  ∀ n, P4300201109712833047.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P14407577110349822803

`filter[A051755(n+2), A360125(#)]`
-/

namespace A360127.P14407577110349822803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P14407577110349822803

namespace A360127

/-- `filter[A051755(n+2), A360125(#)]` -/
def P14407577110349822803.Spec : Prop :=
  ∀ n, P14407577110349822803.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P9956736952228365973

`filter[A163300(n+2), A360125(#)]`
-/

namespace A360127.P9956736952228365973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P9956736952228365973

namespace A360127

/-- `filter[A163300(n+2), A360125(#)]` -/
def P9956736952228365973.Spec : Prop :=
  ∀ n, P9956736952228365973.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P13500725216619721310

`record[A005843(n+2)*A360125(A005843(n+2))]`
-/

namespace A360127.P13500725216619721310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) * A360125 (A005843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360127.P13500725216619721310

namespace A360127

/-- `record[A005843(n+2)*A360125(A005843(n+2))]` -/
def P13500725216619721310.Spec : Prop :=
  ∀ n, P13500725216619721310.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P11125382648894156455

`filter[A092535(n), A360125(#)]`
-/

namespace A360127.P11125382648894156455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P11125382648894156455

namespace A360127

/-- `filter[A092535(n), A360125(#)]` -/
def P11125382648894156455.Spec : Prop :=
  ∀ n, P11125382648894156455.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P1459519789016804121

`filter[A004275(n+1), A360125(#)]`
-/

namespace A360127.P1459519789016804121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P1459519789016804121

namespace A360127

/-- `filter[A004275(n+1), A360125(#)]` -/
def P1459519789016804121.Spec : Prop :=
  ∀ n, P1459519789016804121.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P11253512782676143535

`filter[A004278(n+1), A360125(#)]`
-/

namespace A360127.P11253512782676143535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P11253512782676143535

namespace A360127

/-- `filter[A004278(n+1), A360125(#)]` -/
def P11253512782676143535.Spec : Prop :=
  ∀ n, P11253512782676143535.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P5980920841859926141

`filter[A300576(n+1), A360125(#)]`
-/

namespace A360127.P5980920841859926141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P5980920841859926141

namespace A360127

/-- `filter[A300576(n+1), A360125(#)]` -/
def P5980920841859926141.Spec : Prop :=
  ∀ n, P5980920841859926141.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P389685322165757563

`filter[A058992(n+2), A360125(#)]`
-/

namespace A360127.P389685322165757563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P389685322165757563

namespace A360127

/-- `filter[A058992(n+2), A360125(#)]` -/
def P389685322165757563.Spec : Prop :=
  ∀ n, P389685322165757563.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P9640487011364503969

`filter[A004279(n), A360125(#)]`
-/

namespace A360127.P9640487011364503969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P9640487011364503969

namespace A360127

/-- `filter[A004279(n), A360125(#)]` -/
def P9640487011364503969.Spec : Prop :=
  ∀ n, P9640487011364503969.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P17942212028609024136

`filter[A004271(n+1), A360125(#)]`
-/

namespace A360127.P17942212028609024136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P17942212028609024136

namespace A360127

/-- `filter[A004271(n+1), A360125(#)]` -/
def P17942212028609024136.Spec : Prop :=
  ∀ n, P17942212028609024136.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P15799745086064148116

`filter[A004272(n+1), A360125(#)]`
-/

namespace A360127.P15799745086064148116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P15799745086064148116

namespace A360127

/-- `filter[A004272(n+1), A360125(#)]` -/
def P15799745086064148116.Spec : Prop :=
  ∀ n, P15799745086064148116.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P9266021755690583018

`filter[A257282(n+2), A360125(#)]`
-/

namespace A360127.P9266021755690583018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P9266021755690583018

namespace A360127

/-- `filter[A257282(n+2), A360125(#)]` -/
def P9266021755690583018.Spec : Prop :=
  ∀ n, P9266021755690583018.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P17598470053602417970

`filter[A063127(n+1), A360125(#)]`
-/

namespace A360127.P17598470053602417970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P17598470053602417970

namespace A360127

/-- `filter[A063127(n+1), A360125(#)]` -/
def P17598470053602417970.Spec : Prop :=
  ∀ n, P17598470053602417970.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P14641594790691481147

`filter[A176693(n+2), A360125(#)]`
-/

namespace A360127.P14641594790691481147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P14641594790691481147

namespace A360127

/-- `filter[A176693(n+2), A360125(#)]` -/
def P14641594790691481147.Spec : Prop :=
  ∀ n, P14641594790691481147.a n = A360127 (n + 1)

end A360127

/-! ## A360127.P410738954157235903

`filter[A064745(n+1), A360125(#)]`
-/

namespace A360127.P410738954157235903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360125 (f1 j).toNat = 1) n)

end

end A360127.P410738954157235903

namespace A360127

/-- `filter[A064745(n+1), A360125(#)]` -/
def P410738954157235903.Spec : Prop :=
  ∀ n, P410738954157235903.a n = A360127 (n + 1)

end A360127

/-!
# A360128: a(n) = 1 if there are no divisors d>1 of n such that also d+1 is a divisor of n, otherwise 0.

The programs for A360128, the canonical program `A360128.P10742742717207604320` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360128 has offset 1).

The definition of A360128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360128.P7676888074016669233

`C(2, A132747(n+1))`
-/

namespace A360128.P7676888074016669233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A132747 (n + 1)).toNat

end

end A360128.P7676888074016669233

namespace A360128

/-- `C(2, A132747(n+1))` -/
def P7676888074016669233.Spec : Prop :=
  ∀ n, (P7676888074016669233.a n : ℤ) = A360128 (n + 1)

end A360128

/-! ## A360128.P3756788178300792663

`C(3, A132748(n+1))`
-/

namespace A360128.P3756788178300792663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A132748 (n + 1)).toNat

end

end A360128.P3756788178300792663

namespace A360128

/-- `C(3, A132748(n+1))` -/
def P3756788178300792663.Spec : Prop :=
  ∀ n, (P3756788178300792663.a n : ℤ) = A360128 (n + 1)

end A360128

/-! ## A360128.P13875736620336389819

`round(1/A195155(n+1))`
-/

namespace A360128.P13875736620336389819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A195155 (n + 1) : ℚ))

end

end A360128.P13875736620336389819

namespace A360128

/-- `round(1/A195155(n+1))` -/
def P13875736620336389819.Spec : Prop :=
  ∀ n, P13875736620336389819.a n = A360128 (n + 1)

end A360128

/-! ## A360128.P14442996475359741786

`A129308(n+1)!%2`
-/

namespace A360128.P14442996475359741786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A129308 (n + 1)).toNat % 2

end

end A360128.P14442996475359741786

namespace A360128

/-- `A129308(n+1)!%2` -/
def P14442996475359741786.Spec : Prop :=
  ∀ n, (P14442996475359741786.a n : ℤ) = A360128 (n + 1)

end A360128

/-! ## A360128.P11318501470828168651

`C(2, 2*A328458(n+1))`
-/

namespace A360128.P11318501470828168651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A328458 (n + 1)).toNat

end

end A360128.P11318501470828168651

namespace A360128

/-- `C(2, 2*A328458(n+1))` -/
def P11318501470828168651.Spec : Prop :=
  ∀ n, (P11318501470828168651.a n : ℤ) = A360128 (n + 1)

end A360128

/-! ## A360128.P10742742717207604320

`A000007(A088722(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360128

/-- `A000007(A088722(n+1))` -/
def P10742742717207604320.Spec : Prop :=
  ∀ n, P10742742717207604320.a n = A360128 (n + 1)

theorem P10742742717207604320.correct : P10742742717207604320.Spec := by
  intro n
  simp only [A360128, Nat.add_sub_cancel]

end A360128

/-! ## A360128.P9770677712166721835

`A103451(A337363(n+1))`
-/

namespace A360128.P9770677712166721835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A337363 (n + 1)).toNat

end

end A360128.P9770677712166721835

namespace A360128

/-- `A103451(A337363(n+1))` -/
def P9770677712166721835.Spec : Prop :=
  ∀ n, P9770677712166721835.a n = A360128 (n + 1)

end A360128

/-! ## A360128.P2448440183493611079

`A051731(A337362(n+1)+1)`
-/

namespace A360128.P2448440183493611079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A337362 (n + 1) + 1).toNat

end

end A360128.P2448440183493611079

namespace A360128

/-- `A051731(A337362(n+1)+1)` -/
def P2448440183493611079.Spec : Prop :=
  ∀ n, P2448440183493611079.a n = A360128 (n + 1)

end A360128

/-! ## A360128.P1485259809360297775

`A133565(A133565(n+2)!)`
-/

namespace A360128.P1485259809360297775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (Nat.factorial (A133565 (n + 2)).toNat)

end

end A360128.P1485259809360297775

namespace A360128

/-- `A133565(A133565(n+2)!)` -/
def P1485259809360297775.Spec : Prop :=
  ∀ n, P1485259809360297775.a n = A360128 (n + 1)

end A360128

/-! ## A360128.P2280887924167458259

`A127093(A308114(A129308(n+1))²)`
-/

namespace A360128.P2280887924167458259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A308114 (A129308 (n + 1)).toNat ^ 2).toNat

end

end A360128.P2280887924167458259

namespace A360128

/-- `A127093(A308114(A129308(n+1))²)` -/
def P2280887924167458259.Spec : Prop :=
  ∀ n, P2280887924167458259.a n = A360128 (n + 1)

end A360128

/-!
# A360130: a(n) = 1 if A003961(n) is a triangular number, otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A360130, the canonical program `A360130.P786476217289508092` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360130 has offset 1).

The definition of A360130 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360130.P786476217289508092

`A010054(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A360130

/-- `A010054(A003961(n+1))` -/
def P786476217289508092.Spec : Prop :=
  ∀ n, P786476217289508092.a n = A360130 (n + 1)

theorem P786476217289508092.correct : P786476217289508092.Spec := by
  intro n
  simp only [A360130, Nat.add_sub_cancel]

end A360130

/-! ## A360130.P15339400524551518911

`A023531(A253885(n))`
-/

namespace A360130.P15339400524551518911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A253885 n).toNat

end

end A360130.P15339400524551518911

namespace A360130

/-- `A023531(A253885(n))` -/
def P15339400524551518911.Spec : Prop :=
  ∀ n, P15339400524551518911.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P6610007956183962056

`A214263(A108228(n+1))`
-/

namespace A360130.P6610007956183962056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A108228 (n + 1)).toNat

end

end A360130.P6610007956183962056

namespace A360130

/-- `A214263(A108228(n+1))` -/
def P6610007956183962056.Spec : Prop :=
  ∀ n, P6610007956183962056.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P15543592097789147579

`A003982(4*A003961(n+1))`
-/

namespace A360130.P15543592097789147579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (4 * A003961 (n + 1)).toNat

end

end A360130.P15543592097789147579

namespace A360130

/-- `A003982(4*A003961(n+1))` -/
def P15543592097789147579.Spec : Prop :=
  ∀ n, P15543592097789147579.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P10684369030334215899

`A003982(lcm(4, A003961(n+1)))`
-/

namespace A360130.P10684369030334215899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (Int.lcm 4 (A003961 (n + 1)))

end

end A360130.P10684369030334215899

namespace A360130

/-- `A003982(lcm(4, A003961(n+1)))` -/
def P10684369030334215899.Spec : Prop :=
  ∀ n, P10684369030334215899.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P7991368729172574658

`A010054(A253885(n)+1)`
-/

namespace A360130.P7991368729172574658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A253885 n + 1).toNat

end

end A360130.P7991368729172574658

namespace A360130

/-- `A010054(A253885(n)+1)` -/
def P7991368729172574658.Spec : Prop :=
  ∀ n, P7991368729172574658.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P2589093751087960658

`A185916(A243501(n+1))`
-/

namespace A360130.P2589093751087960658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A243501 (n + 1)).toNat

end

end A360130.P2589093751087960658

namespace A360130

/-- `A185916(A243501(n+1))` -/
def P2589093751087960658.Spec : Prop :=
  ∀ n, P2589093751087960658.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P12172254406124080000

`A185916(A253885(n)+2)`
-/

namespace A360130.P12172254406124080000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A253885 n + 2).toNat

end

end A360130.P12172254406124080000

namespace A360130

/-- `A185916(A253885(n)+2)` -/
def P12172254406124080000.Spec : Prop :=
  ∀ n, P12172254406124080000.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P8718111669478686092

`A010054(or(1, A253885(n)))`
-/

namespace A360130.P8718111669478686092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lor 1 (A253885 n)).toNat

end

end A360130.P8718111669478686092

namespace A360130

/-- `A010054(or(1, A253885(n)))` -/
def P8718111669478686092.Spec : Prop :=
  ∀ n, P8718111669478686092.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P10809606944728166364

`A185916(A003961(n+1)+1)`
-/

namespace A360130.P10809606944728166364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (A003961 (n + 1) + 1).toNat

end

end A360130.P10809606944728166364

namespace A360130

/-- `A185916(A003961(n+1)+1)` -/
def P10809606944728166364.Spec : Prop :=
  ∀ n, P10809606944728166364.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P13030840380894586300

`A010054(A243501(n+1)-1)`
-/

namespace A360130.P13030840380894586300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A243501 (n + 1) - 1).toNat

end

end A360130.P13030840380894586300

namespace A360130

/-- `A010054(A243501(n+1)-1)` -/
def P13030840380894586300.Spec : Prop :=
  ∀ n, P13030840380894586300.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P14398057594642272953

`A185916(2*A048673(n+1))`
-/

namespace A360130.P14398057594642272953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (2 * A048673 (n + 1)).toNat

end

end A360130.P14398057594642272953

namespace A360130

/-- `A185916(2*A048673(n+1))` -/
def P14398057594642272953.Spec : Prop :=
  ∀ n, P14398057594642272953.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P15663537179926865622

`A054523(A045965(n+1))%2`
-/

namespace A360130.P15663537179926865622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054523 (A045965 (n + 1)).toNat) 2

end

end A360130.P15663537179926865622

namespace A360130

/-- `A054523(A045965(n+1))%2` -/
def P15663537179926865622.Spec : Prop :=
  ∀ n, P15663537179926865622.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P8787477603314126842

`A010054(or(1, A045965(n+1)))`
-/

namespace A360130.P8787477603314126842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.lor 1 (A045965 (n + 1))).toNat

end

end A360130.P8787477603314126842

namespace A360130

/-- `A010054(or(1, A045965(n+1)))` -/
def P8787477603314126842.Spec : Prop :=
  ∀ n, P8787477603314126842.a n = A360130 (n + 1)

end A360130

/-! ## A360130.P15475994623203202445

`A185916(∑{d}[n+1, A008683(#)*A003973((n+1)/#)]+1)`
-/

namespace A360130.P15475994623203202445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (∑ d ∈ Nat.divisors (f1 n), A008683 d * A003973 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1).toNat

end

end A360130.P15475994623203202445

namespace A360130

/-- `A185916(∑{d}[n+1, A008683(#)*A003973((n+1)/#)]+1)` -/
def P15475994623203202445.Spec : Prop :=
  ∀ n, P15475994623203202445.a n = A360130 (n + 1)

end A360130

/-!
# A360132: Expansion of 1/sqrt(1 - 4*x/(1-x)^6).

The programs for A360132, there is no canonical definition to state claims against.
-/

/-! ## A360132.P1948468818672828496

`A055748(A144069(n))`
-/

namespace A360132.P1948468818672828496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A144069 n).toNat

end

end A360132.P1948468818672828496

/-!
# A360134: a(n) = A356133(1 + A026430(n)).

The programs for A360134, the canonical program `A360134.P1092804426433472261` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360134 has offset 1).

The definition of A360134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360134.P1092804426433472261

`A356133(1+A026430(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360134

/-- `A356133(1+A026430(n+1))` -/
def P1092804426433472261.Spec : Prop :=
  ∀ n, P1092804426433472261.a n = A360134 (n + 1)

theorem P1092804426433472261.correct : P1092804426433472261.Spec := by
  intro n
  simp only [A360134, Nat.add_sub_cancel]

end A360134

/-! ## A360134.P3078840831881152112

`A356133(∑[2-(a(floor(n/2))+n)%2])` with `a(0)=2, a(1)=2`
-/

namespace A360134.P3078840831881152112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - Int.tmod (f1 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360134.P3078840831881152112

namespace A360134

/-- `A356133(∑[2-(a(floor(n/2))+n)%2])` -/
def P3078840831881152112.Spec : Prop :=
  ∀ n, P3078840831881152112.a n = A360134 (n + 1)

end A360134

/-! ## A360134.P660856591706299224

`A356133(∑[2*n+1-comp[xor(n-1, 2*n)]]+1)`
-/

namespace A360134.P660856591706299224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A360134.P660856591706299224

namespace A360134

/-- `A356133(∑[2*n+1-comp[xor(n-1, 2*n)]]+1)` -/
def P660856591706299224.Spec : Prop :=
  ∀ n, P660856591706299224.a n = A360134 (n + 1)

end A360134

/-! ## A360134.P5923044535674188995

`A356133(A285954(n+2))`
-/

namespace A360134.P5923044535674188995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A285954 (n + 2)).toNat

end

end A360134.P5923044535674188995

namespace A360134

/-- `A356133(A285954(n+2))` -/
def P5923044535674188995.Spec : Prop :=
  ∀ n, P5923044535674188995.a n = A360134 (n + 1)

theorem P5923044535674188995.correct : P5923044535674188995.Spec := by
  intro n
  simp only [A360134, Nat.add_sub_cancel, A360134.P5923044535674188995.a, A360134.P1092804426433472261.a, A026430, A026430.P14890685957938381463.a, A285954, A285954.P14356408792107538698.a, A356133, A356133.P5129533171813419768.a, A000069, A000069.P3917626109476666468.a, A001285, A001285.P11616636227895161122.a, A000120, A000120.P2816527436160941581.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360134

/-! ## A360134.P11629500338892202422

`A356133(∑[A001285(n)]+1)`
-/

namespace A360134.P11629500338892202422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A360134.P11629500338892202422

namespace A360134

/-- `A356133(∑[A001285(n)]+1)` -/
def P11629500338892202422.Spec : Prop :=
  ∀ n, P11629500338892202422.a n = A360134 (n + 1)

end A360134

/-! ## A360134.P7191160406548099440

`A356133(A360392(n+1)-1)`
-/

namespace A360134.P7191160406548099440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A360392 (n + 1) - 1).toNat

end

end A360134.P7191160406548099440

namespace A360134

/-- `A356133(A360392(n+1)-1)` -/
def P7191160406548099440.Spec : Prop :=
  ∀ n, P7191160406548099440.a n = A360134 (n + 1)

theorem P7191160406548099440.correct : P7191160406548099440.Spec := by
  intro n
  simp only [A360134, Nat.add_sub_cancel, A360134.P7191160406548099440.a, A360134.P1092804426433472261.a, A026430, A026430.P14890685957938381463.a, A356133, A356133.P5129533171813419768.a, A360392, A360392.P6145566539357259399.a, A000069, A000069.P3917626109476666468.a, A001285, A001285.P11616636227895161122.a, A000120, A000120.P2816527436160941581.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360134

/-! ## A360134.P1024712913443007091

`A356133(A115384(n)+2+n)`
-/

namespace A360134.P1024712913443007091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A115384 n + 2 + (n : ℤ)).toNat

end

end A360134.P1024712913443007091

namespace A360134

/-- `A356133(A115384(n)+2+n)` -/
def P1024712913443007091.Spec : Prop :=
  ∀ n, P1024712913443007091.a n = A360134 (n + 1)

end A360134

/-! ## A360134.P16462182276617554064

`A356133(floor(A285953(n+2)/2))`
-/

namespace A360134.P16462182276617554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 ⌊(A285953 (n + 2) : ℚ) / 2⌋.toNat

end

end A360134.P16462182276617554064

namespace A360134

/-- `A356133(floor(A285953(n+2)/2))` -/
def P16462182276617554064.Spec : Prop :=
  ∀ n, P16462182276617554064.a n = A360134 (n + 1)

end A360134

/-! ## A360134.P13970047170322540310

`A356133(comp[A360393(n+1)-1])`
-/

namespace A360134.P13970047170322540310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360134.P13970047170322540310

namespace A360134

/-- `A356133(comp[A360393(n+1)-1])` -/
def P13970047170322540310.Spec : Prop :=
  ∀ n, P13970047170322540310.a n = A360134 (n + 1)

end A360134

/-! ## A360134.P87088826078455221

`A360393(A360392(n+1)+1)-2`
-/

namespace A360134.P87088826078455221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A360392 (n + 1) + 1).toNat - 2

end

end A360134.P87088826078455221

namespace A360134

/-- `A360393(A360392(n+1)+1)-2` -/
def P87088826078455221.Spec : Prop :=
  ∀ n, P87088826078455221.a n = A360134 (n + 1)

end A360134

/-!
# A360135: a(n) = A356133(A285953(n+1)).

The programs for A360135, there is no canonical definition to state claims against.
-/

/-! ## A360135.P11829922319873034614

`A356133(A360393(n+2)-1)`
-/

namespace A360135.P11829922319873034614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A360393 (n + 2) - 1).toNat

end

end A360135.P11829922319873034614

/-! ## A360135.P18018456120111077905

`A356133(∪[A285953(n+1), A360137(n+1)])`
-/

namespace A360135.P18018456120111077905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360135.P18018456120111077905

/-! ## A360135.P8433854665676125836

`A356133(∪[A360137(n+1), A360139(n+1)])`
-/

namespace A360135.P8433854665676125836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360139 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360135.P8433854665676125836

/-! ## A360135.P2294456004887933555

`A356133(∪[3*(n+1)-A010060(n), A274501(3*(n+2))])`
-/

namespace A360135.P2294456004887933555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274501 (3 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360135.P2294456004887933555

/-! ## A360135.P15025657525154228069

`A356133(∪[A274501(3*(n+2)), A161560(n+1)+2*n+3])`
-/

namespace A360135.P15025657525154228069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274501 (3 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (n + 1) + (2 * n + 3 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360135.P15025657525154228069

/-!
# A360136: a(n) = 1 + A026430(A026430(n)).

The programs for A360136, the canonical program `A360136.P4184868371155148676` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360136 has offset 1).

The definition of A360136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360136.P4184868371155148676

`1+A026430(A026430(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360136

/-- `1+A026430(A026430(n+1))` -/
def P4184868371155148676.Spec : Prop :=
  ∀ n, P4184868371155148676.a n = A360136 (n + 1)

theorem P4184868371155148676.correct : P4184868371155148676.Spec := by
  intro n
  simp only [A360136, Nat.add_sub_cancel]

end A360136

/-! ## A360136.P8484258594475222175

`A360402(n+1)-1`
-/

namespace A360136.P8484258594475222175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360402 (n + 1) - 1

end

end A360136.P8484258594475222175

namespace A360136

/-- `A360402(n+1)-1` -/
def P8484258594475222175.Spec : Prop :=
  ∀ n, P8484258594475222175.a n = A360136 (n + 1)

end A360136

/-! ## A360136.P18171644759430571287

`A360392(∑[2-char[xor(n, 2*n)]])-1`
-/

namespace A360136.P18171644759430571287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A360136.P18171644759430571287

namespace A360136

/-- `A360392(∑[2-char[xor(n, 2*n)]])-1` -/
def P18171644759430571287.Spec : Prop :=
  ∀ n, P18171644759430571287.a n = A360136 (n + 1)

end A360136

/-! ## A360136.P12790484472056246681

`A023443(A360402(n+1))`
-/

namespace A360136.P12790484472056246681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A360402 (n + 1)).toNat

end

end A360136.P12790484472056246681

namespace A360136

/-- `A023443(A360402(n+1))` -/
def P12790484472056246681.Spec : Prop :=
  ∀ n, P12790484472056246681.a n = A360136 (n + 1)

end A360136

/-! ## A360136.P15962851586613002142

`A285954(A285954(n+2))`
-/

namespace A360136.P15962851586613002142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (A285954 (n + 2)).toNat

end

end A360136.P15962851586613002142

namespace A360136

/-- `A285954(A285954(n+2))` -/
def P15962851586613002142.Spec : Prop :=
  ∀ n, P15962851586613002142.a n = A360136 (n + 1)

end A360136

/-! ## A360136.P11196627945466482138

`A026430(∑[A001285(n)])+1`
-/

namespace A360136.P11196627945466482138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A360136.P11196627945466482138

namespace A360136

/-- `A026430(∑[A001285(n)])+1` -/
def P11196627945466482138.Spec : Prop :=
  ∀ n, P11196627945466482138.a n = A360136 (n + 1)

end A360136

/-! ## A360136.P13914713939503557540

`A360392(∑[A001285(n)])-1`
-/

namespace A360136.P13914713939503557540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A360136.P13914713939503557540

namespace A360136

/-- `A360392(∑[A001285(n)])-1` -/
def P13914713939503557540.Spec : Prop :=
  ∀ n, P13914713939503557540.a n = A360136 (n + 1)

end A360136

/-! ## A360136.P9130894164582052234

`A065033(A360134(n+1))`
-/

namespace A360136.P9130894164582052234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A360134 (n + 1)).toNat

end

end A360136.P9130894164582052234

namespace A360136

/-- `A065033(A360134(n+1))` -/
def P9130894164582052234.Spec : Prop :=
  ∀ n, P9130894164582052234.a n = A360136 (n + 1)

end A360136

/-!
# A360137: a(n) = V(A026430(n)), where V(1) = 1 and V(k) = A285953(k+1) for k >= 2.

The programs for A360137, there is no canonical definition to state claims against.
-/

/-! ## A360137.P6475003669646639644

`A360393(A285954(n+2))-1`
-/

namespace A360137.P6475003669646639644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A285954 (n + 2)).toNat - 1

end

end A360137.P6475003669646639644

/-! ## A360137.P1546037491644480939

`A360393(A360392(n+1)-1)-1`
-/

namespace A360137.P1546037491644480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A360392 (n + 1) - 1).toNat - 1

end

end A360137.P1546037491644480939

/-! ## A360137.P8388588374038357733

`A360393(comp[A360393(n+1)-1])-1`
-/

namespace A360137.P8388588374038357733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A360137.P8388588374038357733

/-! ## A360137.P4956960708208469652

`A360393(A010060(n+1)+A285953(n+2)-A285950(n+2)-1)-1`
-/

namespace A360137.P4956960708208469652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A010060 (n + 1) + (A285953 (n + 2) - A285950 (n + 2)) - 1).toNat - 1

end

end A360137.P4956960708208469652

/-!
# A360138: a(n) = 1 + A026430(A356133(n)).

The programs for A360138, the canonical program `A360138.P2833924897830709977` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360138 has offset 1).

The definition of A360138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360138.P2833924897830709977

`1+A026430(A356133(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360138

/-- `1+A026430(A356133(n+1))` -/
def P2833924897830709977.Spec : Prop :=
  ∀ n, P2833924897830709977.a n = A360138 (n + 1)

theorem P2833924897830709977.correct : P2833924897830709977.Spec := by
  intro n
  simp only [A360138, Nat.add_sub_cancel]

end A360138

/-! ## A360138.P18116326588977174409

`A360404(n+1)-1`
-/

namespace A360138.P18116326588977174409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360404 (n + 1) - 1

end

end A360138.P18116326588977174409

namespace A360138

/-- `A360404(n+1)-1` -/
def P18116326588977174409.Spec : Prop :=
  ∀ n, P18116326588977174409.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P3572145167329601541

`A285954(comp[xor(n, 2*n)]+2+n)`
-/

namespace A360138.P3572145167329601541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n)

end

end A360138.P3572145167329601541

namespace A360138

/-- `A285954(comp[xor(n, 2*n)]+2+n)` -/
def P3572145167329601541.Spec : Prop :=
  ∀ n, P3572145167329601541.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P9803406608428000406

`A026430(comp[xor(n, 2*n)]+1+n)+1`
-/

namespace A360138.P9803406608428000406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n) + 1

end

end A360138.P9803406608428000406

namespace A360138

/-- `A026430(comp[xor(n, 2*n)]+1+n)+1` -/
def P9803406608428000406.Spec : Prop :=
  ∀ n, P9803406608428000406.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P12527465678189466805

`A360392(comp[xor(n, 2*n)]+1+n)-1`
-/

namespace A360138.P12527465678189466805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n) - 1

end

end A360138.P12527465678189466805

namespace A360138

/-- `A360392(comp[xor(n, 2*n)]+1+n)-1` -/
def P12527465678189466805.Spec : Prop :=
  ∀ n, P12527465678189466805.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P2827318322935606278

`A285954(char[xor(n, 2*n)]+3*n+2)`
-/

namespace A360138.P2827318322935606278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285954 ((if ∃ j, f1 j = n then 1 else 0) + (3 * n + 2))

end

end A360138.P2827318322935606278

namespace A360138

/-- `A285954(char[xor(n, 2*n)]+3*n+2)` -/
def P2827318322935606278.Spec : Prop :=
  ∀ n, P2827318322935606278.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P14035971202560256178

`A360392(comp[xor(n, 2*n)]-xor(n, -1))-1`
-/

namespace A360138.P14035971202560256178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.xor (n : ℤ) (-1)).toNat - 1

end

end A360138.P14035971202560256178

namespace A360138

/-- `A360392(comp[xor(n, 2*n)]-xor(n, -1))-1` -/
def P14035971202560256178.Spec : Prop :=
  ∀ n, P14035971202560256178.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P18013975655280846182

`A360392(comp[xor(n, 2*n)]-(n-Δ[n²]))-1`
-/

namespace A360138.P18013975655280846182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))).toNat - 1

end

end A360138.P18013975655280846182

namespace A360138

/-- `A360392(comp[xor(n, 2*n)]-(n-Δ[n²]))-1` -/
def P18013975655280846182.Spec : Prop :=
  ∀ n, P18013975655280846182.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P11428752163039056518

`floor(A285953(char[xor(n, 2*n)]+3*n+2)/2)`
-/

namespace A360138.P11428752163039056518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285953 ((if ∃ j, f1 j = n then 1 else 0) + (3 * n + 2)) : ℚ) / 2⌋

end

end A360138.P11428752163039056518

namespace A360138

/-- `floor(A285953(char[xor(n, 2*n)]+3*n+2)/2)` -/
def P11428752163039056518.Spec : Prop :=
  ∀ n, P11428752163039056518.a n = A360138 (n + 1)

end A360138

/-! ## A360138.P3965058797492399225

`A360392(1-(n-2*n-comp[xor(n, 2*n)]))-1`
-/

namespace A360138.P3965058797492399225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (1 - ((n : ℤ) - (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))).toNat - 1

end

end A360138.P3965058797492399225

namespace A360138

/-- `A360392(1-(n-2*n-comp[xor(n, 2*n)]))-1` -/
def P3965058797492399225.Spec : Prop :=
  ∀ n, P3965058797492399225.a n = A360138 (n + 1)

end A360138

/-!
# A360139: a(n) = V(A356133(n)), where V(1) = 1 and V(k) = A285953(k+1) for k >= 2.

The programs for A360139, there is no canonical definition to state claims against.
-/

/-! ## A360139.P6201894588861041823

`A285953(comp[xor(n, 2*n)]+n)`
-/

namespace A360139.P6201894588861041823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A360139.P6201894588861041823

/-! ## A360139.P2194093189703988891

`A360393(comp[xor(n, 2*n)]+2+n)-1`
-/

namespace A360139.P2194093189703988891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 + n) - 1

end

end A360139.P2194093189703988891

/-! ## A360139.P6192657469796483403

`A285953(comp[xor(n, 2*n)]-xor(n, -1)-1)`
-/

namespace A360139.P6192657469796483403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - Int.xor (n : ℤ) (-1) - 1).toNat

end

end A360139.P6192657469796483403

/-! ## A360139.P1567018246679308243

`A360393(char[xor(n, 2*n)]+3*n+2)-1`
-/

namespace A360139.P1567018246679308243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 ((if ∃ j, f1 j = n then 1 else 0) + (3 * n + 2)) - 1

end

end A360139.P1567018246679308243

/-! ## A360139.P11617558648028857991

`A285953(comp[A026430(n)-1])`
-/

namespace A360139.P11617558648028857991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A360139.P11617558648028857991

/-! ## A360139.P13537381865267216242

`A285953(A356133(n+1)-1)`
-/

namespace A360139.P13537381865267216242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (A356133 (n + 1) - 1).toNat

end

end A360139.P13537381865267216242

/-! ## A360139.P10643041660938460446

`A360393(A285953(n+1))-1`
-/

namespace A360139.P10643041660938460446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A285953 (n + 1)).toNat - 1

end

end A360139.P10643041660938460446

/-! ## A360139.P11215026419711436146

`A285953(A285953(n+1)-2)`
-/

namespace A360139.P11215026419711436146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (A285953 (n + 1) - 2).toNat

end

end A360139.P11215026419711436146

/-! ## A360139.P2660247583165394241

`A285953(A000069(n+1)+n)`
-/

namespace A360139.P2660247583165394241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285953 (A000069 (n + 1) + (n : ℤ)).toNat

end

end A360139.P2660247583165394241

/-! ## A360139.P2043203525283853197

`A360393(A285950(2*(n+1)))-1`
-/

namespace A360139.P2043203525283853197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A285950 (2 * (n + 1))).toNat - 1

end

end A360139.P2043203525283853197

/-!
# A360141: Bitwise encoding of the right half, initially empty, state of the 1D cellular automaton from A359303 after n steps.

The programs for A360141, there is no canonical definition to state claims against.
-/

/-! ## A360141.P3552569368044569682

`∑[A145023(3*n+2)%A056951(n+1)]`
-/

namespace A360141.P3552569368044569682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145023 (3 * n + 2)) (A056951 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360141.P3552569368044569682

/-! ## A360141.P17092390967977792670

`A333348(A333369(n+1)%A333375(3*n+1))`
-/

namespace A360141.P17092390967977792670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (Int.tmod (A333369 (n + 1)) (A333375 (3 * n + 1))).toNat

end

end A360141.P17092390967977792670

/-! ## A360141.P1349338819358937660

`∑[A339659(A077957(n))]`
-/

namespace A360141.P1349338819358937660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (A077957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360141.P1349338819358937660

/-! ## A360141.P14228193250479655801

`-floor((2-A374685(A080389(2*n+3)))/11)`
-/

namespace A360141.P14228193250479655801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(2 - A374685 (A080389 (2 * n + 3)).toNat : ℚ) / 11⌋

end

end A360141.P14228193250479655801

/-! ## A360141.P6357796351707747369

`A245760(A000079(n))+A059995(2*n)`
-/

namespace A360141.P6357796351707747369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (A000079 n).toNat + A059995 (2 * n)

end

end A360141.P6357796351707747369

/-!
# A360143: a(n) = Sum_{k=0..n} binomial(2*n+2*k,n-k).

The programs for A360143, there is no canonical definition to state claims against.
-/

/-! ## A360143.P13149440186218903307

`A365388(10^n)`
-/

namespace A360143.P13149440186218903307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365388 (10 ^ n)

end

end A360143.P13149440186218903307

/-!
# A360144: a(n) = Sum_{k=0..n} binomial(2*n+3*k,n-k).

The programs for A360144, there is no canonical definition to state claims against.
-/

/-! ## A360144.P4869039250178809633

`A276796(A164994(n!)+5^n)`
-/

namespace A360144.P4869039250178809633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A164994 (Nat.factorial n) + (5 ^ n : ℤ)).toNat

end

end A360144.P4869039250178809633

/-! ## A360144.P7393947294848602059

`A161511(A055842(n))+A018218(n)`
-/

namespace A360144.P7393947294848602059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A055842 n).toNat + A018218 n

end

end A360144.P7393947294848602059

/-!
# A360145: Triangle read by rows where row n is the largest (or middle or n-th) column of the reverse pyramid summation of order n described in A359087.

The programs for A360145, there is no canonical definition to state claims against.
-/

/-! ## A360145.P15904943503874187041

`3^col(n)*(row(n)+1)-2*A132894(col(n))`
-/

namespace A360145.P15904943503874187041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.triCol n * (SequenceMachineLib.triRow n + 1) : ℤ) - 2 * A132894 (SequenceMachineLib.triCol n)

end

end A360145.P15904943503874187041

/-!
# A360146: Integers d such that the longest possible arithmetic progression (AP) of primes with common difference d has exactly 10 elements.

The programs for A360146, there is no canonical definition to state claims against.
-/

/-! ## A360146.P9829145393520969909

`floor(A096026(n+1)/12)`
-/

namespace A360146.P9829145393520969909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096026 (n + 1) : ℚ) / 12⌋

end

end A360146.P9829145393520969909

/-! ## A360146.P2769214594188871821

`∑[A147571(Δ[A043096(n+1)])]`
-/

namespace A360146.P2769214594188871821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360146.P2769214594188871821

/-! ## A360146.P6737683271984239943

`∑[A361038(Δ[A010784(n+1)])]`
-/

namespace A360146.P6737683271984239943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361038 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360146.P6737683271984239943

/-! ## A360146.P4441079937889808521

`∑[A361038(Δ[A043096(n+1)])]`
-/

namespace A360146.P4441079937889808521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361038 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360146.P4441079937889808521

/-! ## A360146.P9617541538142657649

`∑[A033993(Δ[A010784(n+1)]²)]`
-/

namespace A360146.P9617541538142657649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360146.P9617541538142657649

/-!
# A360147: Primes in base 10 that are also prime when read in a smaller base that is one plus the largest digit in the prime in base 10.

The programs for A360147, there is no canonical definition to state claims against.
-/

/-! ## A360147.P13706836656990550999

`A000040(lt[A293312(3*n+2), A048767(n+1)])`
-/

namespace A360147.P13706836656990550999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293312 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360147.P13706836656990550999

/-! ## A360147.P11722055209964749440

`∩[A181172(n+1), A267305(n+1)+1]`
-/

namespace A360147.P11722055209964749440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267305 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360147.P11722055209964749440

/-! ## A360147.P17513236150079125775

`A000040(lt[A094954(3*(n+1)), (n+1)*∏{p}[n+1, #]])`
-/

namespace A360147.P17513236150079125775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094954 (3 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A360147.P17513236150079125775

/-! ## A360147.P12777456786793736117

`A042986(A051037(n+1))%A271269(3*(n+1))`
-/

namespace A360147.P12777456786793736117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042986 (A051037 (n + 1)).toNat) (A271269 (3 * (n + 1)))

end

end A360147.P12777456786793736117

/-! ## A360147.P8554356258732869126

`eq[A003415(n), A007318(A143677(2*n+3))]`
-/

namespace A360147.P8554356258732869126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A143677 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360147.P8554356258732869126

/-!
# A360149: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n+k,n-2*k).

The programs for A360149, there is no canonical definition to state claims against.
-/

/-! ## A360149.P16153616357623731542

`A335115(A000302(n))+A215877(n)`
-/

namespace A360149.P16153616357623731542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335115 (A000302 n).toNat + A215877 n

end

end A360149.P16153616357623731542

/-! ## A360149.P14665358742174262085

`A276797(A270432(n+1)+A215100(n))`
-/

namespace A360149.P14665358742174262085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A270432 (n + 1) + A215100 n).toNat

end

end A360149.P14665358742174262085

/-! ## A360149.P8271908806481880640

`A215877(n)+A133622(A026644(2*n))`
-/

namespace A360149.P8271908806481880640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215877 n + A133622 (A026644 (2 * n)).toNat

end

end A360149.P8271908806481880640

/-!
# A360150: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-k,n-3*k).

The programs for A360150, there is no canonical definition to state claims against.
-/

/-! ## A360150.P336245887112580045

`A001700(n)-Δ[A078483(n)]`
-/

namespace A360150.P336245887112580045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - (f1 (n + 1) - f1 n)

end

end A360150.P336245887112580045

/-! ## A360150.P4482341294753504080

`A088218(n+1)+A078483(n)-A078483(n+1)`
-/

namespace A360150.P4482341294753504080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + (A078483 n - A078483 (n + 1))

end

end A360150.P4482341294753504080

/-! ## A360150.P6646179624319697959

`∑[A028310(∑[A176085(n)])]`
-/

namespace A360150.P6646179624319697959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360150.P6646179624319697959

/-!
# A360151: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-4*k,n-3*k).

The programs for A360151, there is no canonical definition to state claims against.
-/

/-! ## A360151.P12924544516377538060

`A160543(C(A151999(n+1), n))`
-/

namespace A360151.P12924544516377538060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (Nat.choose (A151999 (n + 1)).toNat n)

end

end A360151.P12924544516377538060

/-! ## A360151.P11008309194843783859

`A002264(A026030(n+1)+n²-n)+1`
-/

namespace A360151.P11008309194843783859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A026030 (n + 1) + ((n ^ 2 : ℤ) - (n : ℤ))).toNat + 1

end

end A360151.P11008309194843783859

/-! ## A360151.P6056177496739642165

`A130446(A000108(n))+A081161(n)`
-/

namespace A360151.P6056177496739642165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A000108 n).toNat + A081161 n

end

end A360151.P6056177496739642165

/-!
# A360152: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-5*k,n-3*k).

The programs for A360152, there is no canonical definition to state claims against.
-/

/-! ## A360152.P18397319390126978152

`A001791(n)+A001462(A162326(n))`
-/

namespace A360152.P18397319390126978152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n + A001462 (A162326 n).toNat

end

end A360152.P18397319390126978152

/-! ## A360152.P11199099154485159227

`A337588(A127101(n+1))+A000984(n)`
-/

namespace A360152.P11199099154485159227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337588 (A127101 (n + 1)).toNat + A000984 n

end

end A360152.P11199099154485159227

/-! ## A360152.P10133255838379148237

`A300763(A278214(n+1)+A253070(n))`
-/

namespace A360152.P10133255838379148237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A278214 (n + 1) + A253070 n).toNat

end

end A360152.P10133255838379148237

/-!
# A360153: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-6*k,n-3*k).

The programs for A360153, the canonical program `A360153.P10301442448555793105` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360153 has offset 0).

The definition of A360153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360153.P10301442448555793105

`A000984(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360153

/-- `A000984(n)+a(n-3)` -/
def P10301442448555793105.Spec : Prop :=
  ∀ n, P10301442448555793105.a n = A360153 n

theorem P10301442448555793105.correct : P10301442448555793105.Spec := by
  intro n
  simp only [A360153]

end A360153

/-! ## A360153.P12457582209089808807

`A111660(A000719(n))+A000984(n)`
-/

namespace A360153.P12457582209089808807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A000719 n).toNat + A000984 n

end

end A360153.P12457582209089808807

namespace A360153

/-- `A111660(A000719(n))+A000984(n)` -/
def P12457582209089808807.Spec : Prop :=
  ∀ n, P12457582209089808807.a n = A360153 n

end A360153

/-! ## A360153.P10956339764957953435

`A002266(A006134(n+1))+A000009(n)`
-/

namespace A360153.P10956339764957953435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A006134 (n + 1)).toNat + A000009 n

end

end A360153.P10956339764957953435

namespace A360153

/-- `A002266(A006134(n+1))+A000009(n)` -/
def P10956339764957953435.Spec : Prop :=
  ∀ n, P10956339764957953435.a n = A360153 n

end A360153

/-!
# A360154: Primes of the form m^2 + 2*k^2 such that m^2 + 2*(k+1)^2 is also prime.

The programs for A360154, there is no canonical definition to state claims against.
-/

/-! ## A360154.P3819776957451256061

`A046132(∑[A127446(n+1)^A144064(3*n)+1])`
-/

namespace A360154.P3819776957451256061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127446 (n + 1) : ℚ) ^ (A144064 (3 * n) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A360154.P3819776957451256061

/-!
# A360155: Primes of the form m^2 + 2*(k+1)^2 such that m^2 + 2*k^2 is also prime.

The programs for A360155, there is no canonical definition to state claims against.
-/

/-! ## A360155.P11233495054048077289

`A000040(eq[A001223(2*n+3), A225630(n)])`
-/

namespace A360155.P11233495054048077289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A360155.P11233495054048077289

/-!
# A360156: a(n) is the sum of the even unitary divisors of 2*n.

The programs for A360156, the canonical program `A360156.P7196993032354104862` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360156 has offset 1).

The definition of A360156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192066, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360156.P7196993032354104862

`A171977(n+1)*A192066(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A360156

/-- `A171977(n+1)*A192066(n+1)` -/
def P7196993032354104862.Spec : Prop :=
  ∀ n, P7196993032354104862.a n = A360156 (n + 1)

theorem P7196993032354104862.correct : P7196993032354104862.Spec := by
  intro n
  simp only [A360156, Nat.add_sub_cancel]

end A360156

/-! ## A360156.P3743609220886288869

`A034448(2*(n+1))-A192066(2*(n+1))`
-/

namespace A360156.P3743609220886288869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (2 * (n + 1)) - A192066 (2 * (n + 1))

end

end A360156.P3743609220886288869

namespace A360156

/-- `A034448(2*(n+1))-A192066(2*(n+1))` -/
def P3743609220886288869.Spec : Prop :=
  ∀ n, P3743609220886288869.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P16479436055237651147

`A192066(2*(n+1))-A328258(2*(n+1))`
-/

namespace A360156.P16479436055237651147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (2 * (n + 1)) - A328258 (2 * (n + 1))

end

end A360156.P16479436055237651147

namespace A360156

/-- `A192066(2*(n+1))-A328258(2*(n+1))` -/
def P16479436055237651147.Spec : Prop :=
  ∀ n, P16479436055237651147.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P13185195039335254598

`A192066(n+1)+A107749(n+1)`
-/

namespace A360156.P13185195039335254598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (n + 1) + A107749 (n + 1)

end

end A360156.P13185195039335254598

namespace A360156

/-- `A192066(n+1)+A107749(n+1)` -/
def P13185195039335254598.Spec : Prop :=
  ∀ n, P13185195039335254598.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P15616793909557855931

`(A038712(n+1)+1)*A192066(n+1)`
-/

namespace A360156.P15616793909557855931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038712 (n + 1) + 1) * A192066 (n + 1)

end

end A360156.P15616793909557855931

namespace A360156

/-- `(A038712(n+1)+1)*A192066(n+1)` -/
def P15616793909557855931.Spec : Prop :=
  ∀ n, P15616793909557855931.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P17735704166130500222

`A107749(A000265(n+1))+A107749(n+1)`
-/

namespace A360156.P17735704166130500222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (A000265 (n + 1)).toNat + A107749 (n + 1)

end

end A360156.P17735704166130500222

namespace A360156

/-- `A107749(A000265(n+1))+A107749(n+1)` -/
def P17735704166130500222.Spec : Prop :=
  ∀ n, P17735704166130500222.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P5650184360706216982

`A107749(n+1)+A107749(n+1)/A038712(n+1)`
-/

namespace A360156.P5650184360706216982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107749 (n + 1) : ℚ) + (A107749 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A360156.P5650184360706216982

namespace A360156

/-- `A107749(n+1)+A107749(n+1)/A038712(n+1)` -/
def P5650184360706216982.Spec : Prop :=
  ∀ n, P5650184360706216982.a n = (A360156 (n + 1) : ℚ)

end A360156

/-! ## A360156.P11447381627978980306

`A107749(2*(n+1))-A107749(n+1)`
-/

namespace A360156.P11447381627978980306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (2 * (n + 1)) - A107749 (n + 1)

end

end A360156.P11447381627978980306

namespace A360156

/-- `A107749(2*(n+1))-A107749(n+1)` -/
def P11447381627978980306.Spec : Prop :=
  ∀ n, P11447381627978980306.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P6022737185129615856

`A034448(2*(n+1))-A034448(A000265(n+1))`
-/

namespace A360156.P6022737185129615856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (2 * (n + 1)) - A034448 (A000265 (n + 1)).toNat

end

end A360156.P6022737185129615856

namespace A360156

/-- `A034448(2*(n+1))-A034448(A000265(n+1))` -/
def P6022737185129615856.Spec : Prop :=
  ∀ n, P6022737185129615856.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P8131769641306940714

`A034448(2*(n+1))-A034448(A171435(2*(n+1)))`
-/

namespace A360156.P8131769641306940714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (2 * (n + 1)) - A034448 (A171435 (2 * (n + 1))).toNat

end

end A360156.P8131769641306940714

namespace A360156

/-- `A034448(2*(n+1))-A034448(A171435(2*(n+1)))` -/
def P8131769641306940714.Spec : Prop :=
  ∀ n, P8131769641306940714.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P15621535386017399433

`A345451(4*(n+1))-A345451(2*(n+1))`
-/

namespace A360156.P15621535386017399433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (4 * (n + 1)) - A345451 (2 * (n + 1))

end

end A360156.P15621535386017399433

namespace A360156

/-- `A345451(4*(n+1))-A345451(2*(n+1))` -/
def P15621535386017399433.Spec : Prop :=
  ∀ n, P15621535386017399433.a n = A360156 (n + 1)

end A360156

/-! ## A360156.P17410490146471210875

`A034448(A008574(n+1))-A034448(2*(n+1))`
-/

namespace A360156.P17410490146471210875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A008574 (n + 1)).toNat - A034448 (2 * (n + 1))

end

end A360156.P17410490146471210875

namespace A360156

/-- `A034448(A008574(n+1))-A034448(2*(n+1))` -/
def P17410490146471210875.Spec : Prop :=
  ∀ n, P17410490146471210875.a n = A360156 (n + 1)

end A360156

/-!
# A360157: a(n) is the number of unitary divisors of n that are odd squares.

The programs for A360157, the canonical program `A360157.P14177147188931133787` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360157 has offset 1).

The definition of A360157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360157.P17538953044974852518

`gcd(4, A358347(n+1))`
-/

namespace A360157.P17538953044974852518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A358347 (n + 1))

end

end A360157.P17538953044974852518

namespace A360157

/-- `gcd(4, A358347(n+1))` -/
def P17538953044974852518.Spec : Prop :=
  ∀ n, (P17538953044974852518.a n : ℤ) = A360157 (n + 1)

end A360157

/-! ## A360157.P3044121932441790822

`A056624((n+1)/2^val(n+1, 2))`
-/

namespace A360157.P3044121932441790822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A360157.P3044121932441790822

namespace A360157

/-- `A056624((n+1)/2^val(n+1, 2))` -/
def P3044121932441790822.Spec : Prop :=
  ∀ n, P3044121932441790822.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P13974986169441165886

`2^A162641((n+1)/2^val(n+1, 2))`
-/

namespace A360157.P13974986169441165886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℤ)

end

end A360157.P13974986169441165886

namespace A360157

/-- `2^A162641((n+1)/2^val(n+1, 2))` -/
def P13974986169441165886.Spec : Prop :=
  ∀ n, P13974986169441165886.a n = (A360157 (n + 1) : ℚ)

end A360157

/-! ## A360157.P7335791481617697494

`A360160((n+1)/2^val(n+1, 2))%8`
-/

namespace A360157.P7335791481617697494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360160 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) 8

end

end A360157.P7335791481617697494

namespace A360157

/-- `A360160((n+1)/2^val(n+1, 2))%8` -/
def P7335791481617697494.Spec : Prop :=
  ∀ n, P7335791481617697494.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P4316189425707225674

`A056624(A000265(n+1))`
-/

namespace A360157.P4316189425707225674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A000265 (n + 1)).toNat

end

end A360157.P4316189425707225674

namespace A360157

/-- `A056624(A000265(n+1))` -/
def P4316189425707225674.Spec : Prop :=
  ∀ n, P4316189425707225674.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P17461974047914823991

`A056624(A064989(n+1))`
-/

namespace A360157.P17461974047914823991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A064989 (n + 1)).toNat

end

end A360157.P17461974047914823991

namespace A360157

/-- `A056624(A064989(n+1))` -/
def P17461974047914823991.Spec : Prop :=
  ∀ n, P17461974047914823991.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P13836560514213852483

`A068068(A066990(n+1)/A007947(n+1))`
-/

namespace A360157.P13836560514213852483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A360157.P13836560514213852483

namespace A360157

/-- `A068068(A066990(n+1)/A007947(n+1))` -/
def P13836560514213852483.Spec : Prop :=
  ∀ n, P13836560514213852483.a n = A360157 (n + 1)

theorem P13836560514213852483.correct : P13836560514213852483.Spec := by
  intro n
  simp only [A360157, Nat.add_sub_cancel, A360157.P13836560514213852483.a, A360157.P14177147188931133787.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066990, A066990.P6526794843317406672.a, A068068, A068068.P4574816363977512760.a, A073353, A073353.P4516188460080726977.a, A034444, A034444.P6574915864346323298.a, A295657, A295657.P6967734593411189466.a, A000188, A000188.P7486858720566838181.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008833, A008833.P18388074464065390543.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A360157

/-! ## A360157.P17436109353955873962

`A068068(A066990(n+1)/sqrt(A078615(n+1)))`
-/

namespace A360157.P17436109353955873962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℝ) / Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A360157.P17436109353955873962

namespace A360157

/-- `A068068(A066990(n+1)/sqrt(A078615(n+1)))` -/
def P17436109353955873962.Spec : Prop :=
  ∀ n, P17436109353955873962.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P14177147188931133787

`A068068(A066990(n+1)/(A073353(n+1)-(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A360157

/-- `A068068(A066990(n+1)/(A073353(n+1)-(n+1)))` -/
def P14177147188931133787.Spec : Prop :=
  ∀ n, P14177147188931133787.a n = A360157 (n + 1)

theorem P14177147188931133787.correct : P14177147188931133787.Spec := by
  intro n
  simp only [A360157, Nat.add_sub_cancel]

end A360157

/-! ## A360157.P6314461787093456223

`A068068(A066990(n+1)/A355038(n+1)%(n+2))`
-/

namespace A360157.P6314461787093456223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (Int.tmod (A355038 (n + 1)) (n + 2 : ℤ) : ℚ))).toNat

end

end A360157.P6314461787093456223

namespace A360157

/-- `A068068(A066990(n+1)/A355038(n+1)%(n+2))` -/
def P6314461787093456223.Spec : Prop :=
  ∀ n, P6314461787093456223.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P6072934635121614489

`A006519(A360160(n+1))`
-/

namespace A360157.P6072934635121614489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A360160 (n + 1)).toNat

end

end A360157.P6072934635121614489

namespace A360157

/-- `A006519(A360160(n+1))` -/
def P6072934635121614489.Spec : Prop :=
  ∀ n, P6072934635121614489.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P16063496569431772936

`A006519(A358347(n+1))`
-/

namespace A360157.P16063496569431772936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A358347 (n + 1)).toNat

end

end A360157.P16063496569431772936

namespace A360157

/-- `A006519(A358347(n+1))` -/
def P16063496569431772936.Spec : Prop :=
  ∀ n, P16063496569431772936.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P9776100680087691903

`A056624(2*A350388(n+1))`
-/

namespace A360157.P9776100680087691903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (2 * A350388 (n + 1)).toNat

end

end A360157.P9776100680087691903

namespace A360157

/-- `A056624(2*A350388(n+1))` -/
def P9776100680087691903.Spec : Prop :=
  ∀ n, P9776100680087691903.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P10498059560418688874

`A360158(2*A350388(n+1))`
-/

namespace A360157.P10498059560418688874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360158 (2 * A350388 (n + 1)).toNat

end

end A360157.P10498059560418688874

namespace A360157

/-- `A360158(2*A350388(n+1))` -/
def P10498059560418688874.Spec : Prop :=
  ∀ n, P10498059560418688874.a n = A360157 (n + 1)

end A360157

/-! ## A360157.P8863023986492850836

`gcd(A000079(n), A183097(n+1))`
-/

namespace A360157.P8863023986492850836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A183097 (n + 1))

end

end A360157.P8863023986492850836

namespace A360157

/-- `gcd(A000079(n), A183097(n+1))` -/
def P8863023986492850836.Spec : Prop :=
  ∀ n, (P8863023986492850836.a n : ℤ) = A360157 (n + 1)

end A360157

/-! ## A360157.P11229414120004419276

`gcd(A018201(n), A091051(n+1))`
-/

namespace A360157.P11229414120004419276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018201 n) (A091051 (n + 1))

end

end A360157.P11229414120004419276

namespace A360157

/-- `gcd(A018201(n), A091051(n+1))` -/
def P11229414120004419276.Spec : Prop :=
  ∀ n, (P11229414120004419276.a n : ℤ) = A360157 (n + 1)

end A360157

/-! ## A360157.P13814605200505069668

`gcd(A110288(n), A348505(n+1))`
-/

namespace A360157.P13814605200505069668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110288 n) (A348505 (n + 1))

end

end A360157.P13814605200505069668

namespace A360157

/-- `gcd(A110288(n), A348505(n+1))` -/
def P13814605200505069668.Spec : Prop :=
  ∀ n, (P13814605200505069668.a n : ℤ) = A360157 (n + 1)

end A360157

/-! ## A360157.P16328014527711634493

`gcd(A175806(n), A360722(n+1))`
-/

namespace A360157.P16328014527711634493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175806 n) (A360722 (n + 1))

end

end A360157.P16328014527711634493

namespace A360157

/-- `gcd(A175806(n), A360722(n+1))` -/
def P16328014527711634493.Spec : Prop :=
  ∀ n, (P16328014527711634493.a n : ℤ) = A360157 (n + 1)

end A360157

/-! ## A360157.P7171409222967758342

`gcd(A018204(n), A360161(n+1))`
-/

namespace A360157.P7171409222967758342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018204 n) (A360161 (n + 1))

end

end A360157.P7171409222967758342

namespace A360157

/-- `gcd(A018204(n), A360161(n+1))` -/
def P7171409222967758342.Spec : Prop :=
  ∀ n, (P7171409222967758342.a n : ℤ) = A360157 (n + 1)

end A360157

/-! ## A360157.P8599776776430098435

`and(A196655(n), A360160(n+1))`
-/

namespace A360157.P8599776776430098435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A360160 (n + 1))

end

end A360157.P8599776776430098435

namespace A360157

/-- `and(A196655(n), A360160(n+1))` -/
def P8599776776430098435.Spec : Prop :=
  ∀ n, P8599776776430098435.a n = A360157 (n + 1)

end A360157

/-!
# A360158: a(n) is the number of unitary divisors of n that are odd squares minus the number of unitary divisors of n that are even squares.

The programs for A360158, the canonical program `A360158.P3306147856364975510` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360158 has offset 1).

The definition of A360158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360158.P3306147856364975510

`val(lcm(2, n+1), 2)%2*∏{e}[n+1, gcd(2, #)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360158

/-- `val(lcm(2, n+1), 2)%2*∏{e}[n+1, gcd(2, #)]` -/
def P3306147856364975510.Spec : Prop :=
  ∀ n, (P3306147856364975510.a n : ℤ) = A360158 (n + 1)

theorem P3306147856364975510.correct : P3306147856364975510.Spec := by
  intro n
  simp only [A360158, Nat.add_sub_cancel]

end A360158

/-! ## A360158.P11719047266485809540

`∏{e}[n+1, gcd(2, #)]*A295316(2^val(n+1, 2))`
-/

namespace A360158.P11719047266485809540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (Nat.factorization (f1 n) p) : ℕ) : ℤ) * A295316 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A360158.P11719047266485809540

namespace A360158

/-- `∏{e}[n+1, gcd(2, #)]*A295316(2^val(n+1, 2))` -/
def P11719047266485809540.Spec : Prop :=
  ∀ n, P11719047266485809540.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P15563826899381832813

`A048272(A336643(n+1))`
-/

namespace A360158.P15563826899381832813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A336643 (n + 1)).toNat

end

end A360158.P15563826899381832813

namespace A360158

/-- `A048272(A336643(n+1))` -/
def P15563826899381832813.Spec : Prop :=
  ∀ n, P15563826899381832813.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P914840508950406024

`A344299(A066990(n+1))`
-/

namespace A360158.P914840508950406024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (A066990 (n + 1)).toNat

end

end A360158.P914840508950406024

namespace A360158

/-- `A344299(A066990(n+1))` -/
def P914840508950406024.Spec : Prop :=
  ∀ n, P914840508950406024.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P3104816659140156569

`A056624(n+1)*A359832(n+1)`
-/

namespace A360158.P3104816659140156569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1) * A359832 (n + 1)

end

end A360158.P3104816659140156569

namespace A360158

/-- `A056624(n+1)*A359832(n+1)` -/
def P3104816659140156569.Spec : Prop :=
  ∀ n, P3104816659140156569.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P3358110026283757090

`A359832(n+1)*A360157(n+1)`
-/

namespace A360158.P3358110026283757090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359832 (n + 1) * A360157 (n + 1)

end

end A360158.P3358110026283757090

namespace A360158

/-- `A359832(n+1)*A360157(n+1)` -/
def P3358110026283757090.Spec : Prop :=
  ∀ n, P3358110026283757090.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P15253510927568696712

`and(A056624(n+1), A358347(n+1))`
-/

namespace A360158.P15253510927568696712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056624 (n + 1)) (A358347 (n + 1))

end

end A360158.P15253510927568696712

namespace A360158

/-- `and(A056624(n+1), A358347(n+1))` -/
def P15253510927568696712.Spec : Prop :=
  ∀ n, P15253510927568696712.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P9317008667750686673

`and(A056624(n+1), A360157(n+1))`
-/

namespace A360158.P9317008667750686673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056624 (n + 1)) (A360157 (n + 1))

end

end A360158.P9317008667750686673

namespace A360158

/-- `and(A056624(n+1), A360157(n+1))` -/
def P9317008667750686673.Spec : Prop :=
  ∀ n, P9317008667750686673.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P14447839895288699545

`and(A056624(A000265(n+1)), A056624(n+1))`
-/

namespace A360158.P14447839895288699545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056624 (A000265 (n + 1)).toNat) (A056624 (n + 1))

end

end A360158.P14447839895288699545

namespace A360158

/-- `and(A056624(A000265(n+1)), A056624(n+1))` -/
def P14447839895288699545.Spec : Prop :=
  ∀ n, P14447839895288699545.a n = A360158 (n + 1)

end A360158

/-! ## A360158.P10487606594985346980

`A036578(A292380(n+1)²*A292380(n+1))`
-/

namespace A360158.P10487606594985346980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (A292380 (n + 1) ^ 2 * A292380 (n + 1)).toNat

end

end A360158.P10487606594985346980

namespace A360158

/-- `A036578(A292380(n+1)²*A292380(n+1))` -/
def P10487606594985346980.Spec : Prop :=
  ∀ n, P10487606594985346980.a n = A360158 (n + 1)

end A360158

/-!
# A360159: a(n) is the sum of divisors of n that are odd squares.

The programs for A360159, the canonical program `A360159.P13468530059512545607` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360159 has offset 1).

The definition of A360159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A344300, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360159.P13468530059512545607

`(A035316(n+1)+A344300(n+1))/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A360159

/-- `(A035316(n+1)+A344300(n+1))/2` -/
def P13468530059512545607.Spec : Prop :=
  ∀ n, P13468530059512545607.a n = (A360159 (n + 1) : ℚ)

end A360159

/-! ## A360159.P14158642666817488849

`∑{d}[n+1, #*A098108(#)]`
-/

namespace A360159.P14158642666817488849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A098108 d

end

end A360159.P14158642666817488849

namespace A360159

/-- `∑{d}[n+1, #*A098108(#)]` -/
def P14158642666817488849.Spec : Prop :=
  ∀ n, P14158642666817488849.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P18338407083322763601

`A035316((n+1)/2^val(n+1, 2))`
-/

namespace A360159.P18338407083322763601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A360159.P18338407083322763601

namespace A360159

/-- `A035316((n+1)/2^val(n+1, 2))` -/
def P18338407083322763601.Spec : Prop :=
  ∀ n, P18338407083322763601.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P6367140250518946494

`A035316((n+1)/and(n+1, -(n+1)))`
-/

namespace A360159.P6367140250518946494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A360159.P6367140250518946494

namespace A360159

/-- `A035316((n+1)/and(n+1, -(n+1)))` -/
def P6367140250518946494.Spec : Prop :=
  ∀ n, P6367140250518946494.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P4198489088929298446

`A035316(A000265(n+1))`
-/

namespace A360159.P4198489088929298446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A000265 (n + 1)).toNat

end

end A360159.P4198489088929298446

namespace A360159

/-- `A035316(A000265(n+1))` -/
def P4198489088929298446.Spec : Prop :=
  ∀ n, P4198489088929298446.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P7661487199548436098

`A050999(A000188(n+1))`
-/

namespace A360159.P7661487199548436098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (A000188 (n + 1)).toNat

end

end A360159.P7661487199548436098

namespace A360159

/-- `A050999(A000188(n+1))` -/
def P7661487199548436098.Spec : Prop :=
  ∀ n, P7661487199548436098.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P9455896139155466044

`A035316(A065883(n+1))`
-/

namespace A360159.P9455896139155466044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A065883 (n + 1)).toNat

end

end A360159.P9455896139155466044

namespace A360159

/-- `A035316(A065883(n+1))` -/
def P9455896139155466044.Spec : Prop :=
  ∀ n, P9455896139155466044.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P8559353807871286644

`A035316(A171435(n+1))`
-/

namespace A360159.P8559353807871286644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A171435 (n + 1)).toNat

end

end A360159.P8559353807871286644

namespace A360159

/-- `A035316(A171435(n+1))` -/
def P8559353807871286644.Spec : Prop :=
  ∀ n, P8559353807871286644.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P364790869654102009

`A035316(A259445(n+1))`
-/

namespace A360159.P364790869654102009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A259445 (n + 1)).toNat

end

end A360159.P364790869654102009

namespace A360159

/-- `A035316(A259445(n+1))` -/
def P364790869654102009.Spec : Prop :=
  ∀ n, P364790869654102009.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P8570591291010679898

`A065745(n+1)/A038712(n+1)`
-/

namespace A360159.P8570591291010679898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065745 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A360159.P8570591291010679898

namespace A360159

/-- `A065745(n+1)/A038712(n+1)` -/
def P8570591291010679898.Spec : Prop :=
  ∀ n, P8570591291010679898.a n = (A360159 (n + 1) : ℚ)

end A360159

/-! ## A360159.P9371807505567598803

`A328373((n+1)/A007913(n+1))`
-/

namespace A360159.P9371807505567598803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A360159.P9371807505567598803

namespace A360159

/-- `A328373((n+1)/A007913(n+1))` -/
def P9371807505567598803.Spec : Prop :=
  ∀ n, P9371807505567598803.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P17491327560368225510

`A035316(n+1)/A323921(n+1)`
-/

namespace A360159.P17491327560368225510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) : ℚ) / (A323921 (n + 1) : ℚ)

end

end A360159.P17491327560368225510

namespace A360159

/-- `A035316(n+1)/A323921(n+1)` -/
def P17491327560368225510.Spec : Prop :=
  ∀ n, P17491327560368225510.a n = (A360159 (n + 1) : ℚ)

end A360159

/-! ## A360159.P5641243052793441796

`∑{d}[n+1, A046897(#)*A061019((n+1)/#)]`
-/

namespace A360159.P5641243052793441796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046897 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360159.P5641243052793441796

namespace A360159

/-- `∑{d}[n+1, A046897(#)*A061019((n+1)/#)]` -/
def P5641243052793441796.Spec : Prop :=
  ∀ n, P5641243052793441796.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P16705041912284097125

`A035316(n+1)/A035316(A006519(n+1))`
-/

namespace A360159.P16705041912284097125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) : ℚ) / (A035316 (A006519 (n + 1)).toNat : ℚ)

end

end A360159.P16705041912284097125

namespace A360159

/-- `A035316(n+1)/A035316(A006519(n+1))` -/
def P16705041912284097125.Spec : Prop :=
  ∀ n, P16705041912284097125.a n = (A360159 (n + 1) : ℚ)

end A360159

/-! ## A360159.P11487618261334187127

`A367989(2*A008833(n+1))`
-/

namespace A360159.P11487618261334187127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367989 (2 * A008833 (n + 1)).toNat

end

end A360159.P11487618261334187127

namespace A360159

/-- `A367989(2*A008833(n+1))` -/
def P11487618261334187127.Spec : Prop :=
  ∀ n, P11487618261334187127.a n = A360159 (n + 1)

end A360159

/-! ## A360159.P12958541683631754386

`A035316(A028234(2*(n+1)))`
-/

namespace A360159.P12958541683631754386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A028234 (2 * (n + 1))).toNat

end

end A360159.P12958541683631754386

namespace A360159

/-- `A035316(A028234(2*(n+1)))` -/
def P12958541683631754386.Spec : Prop :=
  ∀ n, P12958541683631754386.a n = A360159 (n + 1)

end A360159

/-!
# A360160: a(n) is the sum of unitary divisors of n that are odd squares.

The programs for A360160, the canonical program `A360160.P8428443414059967614` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360160 has offset 1).

The definition of A360160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360160.P8793024810378541851

`A358347(A000265(n+1))`
-/

namespace A360160.P8793024810378541851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (A000265 (n + 1)).toNat

end

end A360160.P8793024810378541851

namespace A360160

/-- `A358347(A000265(n+1))` -/
def P8793024810378541851.Spec : Prop :=
  ∀ n, P8793024810378541851.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P14527092322022895426

`A358347(A065883(n+1))`
-/

namespace A360160.P14527092322022895426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (A065883 (n + 1)).toNat

end

end A360160.P14527092322022895426

namespace A360160

/-- `A358347(A065883(n+1))` -/
def P14527092322022895426.Spec : Prop :=
  ∀ n, P14527092322022895426.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P10115287110207189487

`A358347(A171435(n+1))`
-/

namespace A360160.P10115287110207189487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (A171435 (n + 1)).toNat

end

end A360160.P10115287110207189487

namespace A360160

/-- `A358347(A171435(n+1))` -/
def P10115287110207189487.Spec : Prop :=
  ∀ n, P10115287110207189487.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P16498735036740388983

`A358347((n+1)/A006519(n+1))`
-/

namespace A360160.P16498735036740388983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A360160.P16498735036740388983

namespace A360160

/-- `A358347((n+1)/A006519(n+1))` -/
def P16498735036740388983.Spec : Prop :=
  ∀ n, P16498735036740388983.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P8428443414059967614

`A360161((n+1)/A006519(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A360160

/-- `A360161((n+1)/A006519(n+1))` -/
def P8428443414059967614.Spec : Prop :=
  ∀ n, P8428443414059967614.a n = A360160 (n + 1)

theorem P8428443414059967614.correct : P8428443414059967614.Spec := by
  intro n
  simp only [A360160, Nat.add_sub_cancel]

end A360160

/-! ## A360160.P9579132104610079289

`A358347(2*A350388(n+1))`
-/

namespace A360160.P9579132104610079289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (2 * A350388 (n + 1)).toNat

end

end A360160.P9579132104610079289

namespace A360160

/-- `A358347(2*A350388(n+1))` -/
def P9579132104610079289.Spec : Prop :=
  ∀ n, P9579132104610079289.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P15983228312670660272

`A358347(2*A071974(n+1)²)`
-/

namespace A360160.P15983228312670660272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (2 * A071974 (n + 1) ^ 2).toNat

end

end A360160.P15983228312670660272

namespace A360160

/-- `A358347(2*A071974(n+1)²)` -/
def P15983228312670660272.Spec : Prop :=
  ∀ n, P15983228312670660272.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P14838897097497749173

`A358347(A350388(n+1)+A350388(n+1))`
-/

namespace A360160.P14838897097497749173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (A350388 (n + 1) + A350388 (n + 1)).toNat

end

end A360160.P14838897097497749173

namespace A360160

/-- `A358347(A350388(n+1)+A350388(n+1))` -/
def P14838897097497749173.Spec : Prop :=
  ∀ n, P14838897097497749173.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P999533699892408752

`A360164(A350388(n+1)²)`
-/

namespace A360160.P999533699892408752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360164 (A350388 (n + 1) ^ 2).toNat

end

end A360160.P999533699892408752

namespace A360160

/-- `A360164(A350388(n+1)²)` -/
def P999533699892408752.Spec : Prop :=
  ∀ n, P999533699892408752.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P4735093751533944235

`A360164((n+1)*A008833(n+1))`
-/

namespace A360160.P4735093751533944235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360164 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A360160.P4735093751533944235

namespace A360160

/-- `A360164((n+1)*A008833(n+1))` -/
def P4735093751533944235.Spec : Prop :=
  ∀ n, P4735093751533944235.a n = A360160 (n + 1)

end A360160

/-! ## A360160.P5724471826027848125

`A360164((n+1)*A350388(n+1))`
-/

namespace A360160.P5724471826027848125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360164 ((n + 1 : ℤ) * A350388 (n + 1)).toNat

end

end A360160.P5724471826027848125

namespace A360160

/-- `A360164((n+1)*A350388(n+1))` -/
def P5724471826027848125.Spec : Prop :=
  ∀ n, P5724471826027848125.a n = A360160 (n + 1)

end A360160

/-!
# A360161: a(n) is the sum of unitary divisors of n that are odd squares minus the sum of unitary divisors of n that are even squares.

The programs for A360161, the canonical program `A360161.P10072357667769380062` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360161 has offset 1).

The definition of A360161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360161.P2989102183659046850

`A328258(A350388(n+1))`
-/

namespace A360161.P2989102183659046850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (A350388 (n + 1)).toNat

end

end A360161.P2989102183659046850

namespace A360161

/-- `A328258(A350388(n+1))` -/
def P2989102183659046850.Spec : Prop :=
  ∀ n, P2989102183659046850.a n = A360161 (n + 1)

end A360161

/-! ## A360161.P13386945704684067854

`A328258(A071974(n+1)²)`
-/

namespace A360161.P13386945704684067854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (A071974 (n + 1) ^ 2).toNat

end

end A360161.P13386945704684067854

namespace A360161

/-- `A328258(A071974(n+1)²)` -/
def P13386945704684067854.Spec : Prop :=
  ∀ n, P13386945704684067854.a n = A360161 (n + 1)

end A360161

/-! ## A360161.P10072357667769380062

`A328258((n+1)/A350389(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A360161

/-- `A328258((n+1)/A350389(n+1))` -/
def P10072357667769380062.Spec : Prop :=
  ∀ n, P10072357667769380062.a n = A360161 (n + 1)

theorem P10072357667769380062.correct : P10072357667769380062.Spec := by
  intro n
  simp only [A360161, Nat.add_sub_cancel]

end A360161

/-! ## A360161.P17300798202619605395

`2*A360160(n+1)-A358347(n+1)`
-/

namespace A360161.P17300798202619605395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360160 (n + 1) - A358347 (n + 1)

end

end A360161.P17300798202619605395

namespace A360161

/-- `2*A360160(n+1)-A358347(n+1)` -/
def P17300798202619605395.Spec : Prop :=
  ∀ n, P17300798202619605395.a n = A360161 (n + 1)

end A360161

/-! ## A360161.P11259942337431752532

`A328258(gcd(A000188(n+1), A331738(n+1))²)`
-/

namespace A360161.P11259942337431752532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (Int.gcd (A000188 (n + 1)) (A331738 (n + 1)) ^ 2)

end

end A360161.P11259942337431752532

namespace A360161

/-- `A328258(gcd(A000188(n+1), A331738(n+1))²)` -/
def P11259942337431752532.Spec : Prop :=
  ∀ n, P11259942337431752532.a n = A360161 (n + 1)

end A360161

/-! ## A360161.P3435288032753337795

`A360165((n+1)*∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A360161.P3435288032753337795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360165 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A360161.P3435288032753337795

namespace A360161

/-- `A360165((n+1)*∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P3435288032753337795.Spec : Prop :=
  ∀ n, P3435288032753337795.a n = A360161 (n + 1)

end A360161

/-! ## A360161.P8965884953217542854

`A360165((n+1)*A008833(n+1))`
-/

namespace A360161.P8965884953217542854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360165 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A360161.P8965884953217542854

namespace A360161

/-- `A360165((n+1)*A008833(n+1))` -/
def P8965884953217542854.Spec : Prop :=
  ∀ n, P8965884953217542854.a n = A360161 (n + 1)

end A360161

/-!
# A360162: a(n) is the sum of the square roots of the unitary divisors of n that are squares.

The programs for A360162, the canonical program `A360162.P1996768474283540312` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360162 has offset 1).

The definition of A360162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360162.P1996768474283540312

`A034448(A071974(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A360162

/-- `A034448(A071974(n+1))` -/
def P1996768474283540312.Spec : Prop :=
  ∀ n, P1996768474283540312.a n = A360162 (n + 1)

theorem P1996768474283540312.correct : P1996768474283540312.Spec := by
  intro n
  simp only [A360162, Nat.add_sub_cancel]

end A360162

/-! ## A360162.P7297755057589313629

`A305461(A350388(n+1))`
-/

namespace A360162.P7297755057589313629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A350388 (n + 1)).toNat

end

end A360162.P7297755057589313629

namespace A360162

/-- `A305461(A350388(n+1))` -/
def P7297755057589313629.Spec : Prop :=
  ∀ n, P7297755057589313629.a n = A360162 (n + 1)

end A360162

/-! ## A360162.P2537287741985436801

`A305461(A071974(n+1)²)`
-/

namespace A360162.P2537287741985436801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A071974 (n + 1) ^ 2).toNat

end

end A360162.P2537287741985436801

namespace A360162

/-- `A305461(A071974(n+1)²)` -/
def P2537287741985436801.Spec : Prop :=
  ∀ n, P2537287741985436801.a n = A360162 (n + 1)

end A360162

/-! ## A360162.P18119860120740464732

`A034448(sqrt(A350388(n+1)))`
-/

namespace A360162.P18119860120740464732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway (Real.sqrt (A350388 (n + 1) : ℝ))).toNat

end

end A360162.P18119860120740464732

namespace A360162

/-- `A034448(sqrt(A350388(n+1)))` -/
def P18119860120740464732.Spec : Prop :=
  ∀ n, P18119860120740464732.a n = A360162 (n + 1)

end A360162

/-! ## A360162.P13688607188626420731

`∑{d}[A071974(n+1), A254503(#)]`
-/

namespace A360162.P13688607188626420731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A254503 d

end

end A360162.P13688607188626420731

namespace A360162

/-- `∑{d}[A071974(n+1), A254503(#)]` -/
def P13688607188626420731.Spec : Prop :=
  ∀ n, P13688607188626420731.a n = A360162 (n + 1)

end A360162

/-! ## A360162.P1769544981370524663

`2*A360164(n+1)-A360165(n+1)`
-/

namespace A360162.P1769544981370524663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360164 (n + 1) - A360165 (n + 1)

end

end A360162.P1769544981370524663

namespace A360162

/-- `2*A360164(n+1)-A360165(n+1)` -/
def P1769544981370524663.Spec : Prop :=
  ∀ n, P1769544981370524663.a n = A360162 (n + 1)

end A360162

/-! ## A360162.P14783700094670191388

`A034448(gcd(A000188(n+1), A331738(n+1)))`
-/

namespace A360162.P14783700094670191388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.gcd (A000188 (n + 1)) (A331738 (n + 1)))

end

end A360162.P14783700094670191388

namespace A360162

/-- `A034448(gcd(A000188(n+1), A331738(n+1)))` -/
def P14783700094670191388.Spec : Prop :=
  ∀ n, P14783700094670191388.a n = A360162 (n + 1)

end A360162

/-!
# A360163: a(n) is the sum of the square roots of the divisors of n that are odd squares.

The programs for A360163, the canonical program `A360163.P4073483441112475958` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360163 has offset 1).

The definition of A360163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347176, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360163.P4073483441112475958

`(A069290(n+1)+A347176(n+1))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360163

/-- `(A069290(n+1)+A347176(n+1))/2` -/
def P4073483441112475958.Spec : Prop :=
  ∀ n, P4073483441112475958.a n = (A360163 (n + 1) : ℚ)

end A360163

/-! ## A360163.P18432902756158228891

`A069290((n+1)/4^val(n+1, 4))`
-/

namespace A360163.P18432902756158228891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

end

end A360163.P18432902756158228891

namespace A360163

/-- `A069290((n+1)/4^val(n+1, 4))` -/
def P18432902756158228891.Spec : Prop :=
  ∀ n, P18432902756158228891.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P3209553298973169652

`A000593(A000188(n+1))`
-/

namespace A360163.P3209553298973169652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000188 (n + 1)).toNat

end

end A360163.P3209553298973169652

namespace A360163

/-- `A000593(A000188(n+1))` -/
def P3209553298973169652.Spec : Prop :=
  ∀ n, P3209553298973169652.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P13646195973335465668

`A069290(A000265(n+1))`
-/

namespace A360163.P13646195973335465668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000265 (n + 1)).toNat

end

end A360163.P13646195973335465668

namespace A360163

/-- `A069290(A000265(n+1))` -/
def P13646195973335465668.Spec : Prop :=
  ∀ n, P13646195973335465668.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P2377284742836416295

`A069290(A065883(n+1))`
-/

namespace A360163.P2377284742836416295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A065883 (n + 1)).toNat

end

end A360163.P2377284742836416295

namespace A360163

/-- `A069290(A065883(n+1))` -/
def P2377284742836416295.Spec : Prop :=
  ∀ n, P2377284742836416295.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P11706213767753639465

`A069290(A171435(n+1))`
-/

namespace A360163.P11706213767753639465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A171435 (n + 1)).toNat

end

end A360163.P11706213767753639465

namespace A360163

/-- `A069290(A171435(n+1))` -/
def P11706213767753639465.Spec : Prop :=
  ∀ n, P11706213767753639465.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P6836552476563586612

`A000593(A057918(n+1)+1)`
-/

namespace A360163.P6836552476563586612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A057918 (n + 1) + 1).toNat

end

end A360163.P6836552476563586612

namespace A360163

/-- `A000593(A057918(n+1)+1)` -/
def P6836552476563586612.Spec : Prop :=
  ∀ n, P6836552476563586612.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P11579069501307945602

`A326135(2*A000188(n+1))`
-/

namespace A360163.P11579069501307945602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (2 * A000188 (n + 1)).toNat

end

end A360163.P11579069501307945602

namespace A360163

/-- `A326135(2*A000188(n+1))` -/
def P11579069501307945602.Spec : Prop :=
  ∀ n, P11579069501307945602.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P6137336807705851909

`A347176(A000265(2*(n+1)))`
-/

namespace A360163.P6137336807705851909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347176 (A000265 (2 * (n + 1))).toNat

end

end A360163.P6137336807705851909

namespace A360163

/-- `A347176(A000265(2*(n+1)))` -/
def P6137336807705851909.Spec : Prop :=
  ∀ n, P6137336807705851909.a n = A360163 (n + 1)

end A360163

/-! ## A360163.P14246637540206807365

`gcd(A193916(n), A365334(n+1))`
-/

namespace A360163.P14246637540206807365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193916 n) (A365334 (n + 1))

end

end A360163.P14246637540206807365

namespace A360163

/-- `gcd(A193916(n), A365334(n+1))` -/
def P14246637540206807365.Spec : Prop :=
  ∀ n, (P14246637540206807365.a n : ℤ) = A360163 (n + 1)

end A360163

/-!
# A360164: a(n) is the sum of the square roots of the unitary divisors of n that are odd squares.

The programs for A360164, the canonical program `A360164.P14192724432491003551` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360164 has offset 1).

The definition of A360164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360164.P12714805246961903152

`A360162((n+1)/2^val(n+1, 2))`
-/

namespace A360164.P12714805246961903152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A360164.P12714805246961903152

namespace A360164

/-- `A360162((n+1)/2^val(n+1, 2))` -/
def P12714805246961903152.Spec : Prop :=
  ∀ n, P12714805246961903152.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P3527055929005692146

`A360165((n+1)/2^val(n+1, 2))`
-/

namespace A360164.P3527055929005692146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A360164.P3527055929005692146

namespace A360164

/-- `A360165((n+1)/2^val(n+1, 2))` -/
def P3527055929005692146.Spec : Prop :=
  ∀ n, P3527055929005692146.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P14192724432491003551

`A360162(A000265(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A360164

/-- `A360162(A000265(n+1))` -/
def P14192724432491003551.Spec : Prop :=
  ∀ n, P14192724432491003551.a n = A360164 (n + 1)

theorem P14192724432491003551.correct : P14192724432491003551.Spec := by
  intro n
  simp only [A360164, Nat.add_sub_cancel]

end A360164

/-! ## A360164.P3882853916322199030

`A360162(A065883(n+1))`
-/

namespace A360164.P3882853916322199030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A065883 (n + 1)).toNat

end

end A360164.P3882853916322199030

namespace A360164

/-- `A360162(A065883(n+1))` -/
def P3882853916322199030.Spec : Prop :=
  ∀ n, P3882853916322199030.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P10147129748334848796

`A360162(A153733(n)+1)`
-/

namespace A360164.P10147129748334848796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A153733 n + 1).toNat

end

end A360164.P10147129748334848796

namespace A360164

/-- `A360162(A153733(n)+1)` -/
def P10147129748334848796.Spec : Prop :=
  ∀ n, P10147129748334848796.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P5194633347640436184

`A360165(A153733(n)+1)`
-/

namespace A360164.P5194633347640436184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360165 (A153733 n + 1).toNat

end

end A360164.P5194633347640436184

namespace A360164

/-- `A360165(A153733(n)+1)` -/
def P5194633347640436184.Spec : Prop :=
  ∀ n, P5194633347640436184.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P1273978322521952603

`A360162(A171435(n+1))`
-/

namespace A360164.P1273978322521952603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A171435 (n + 1)).toNat

end

end A360164.P1273978322521952603

namespace A360164

/-- `A360162(A171435(n+1))` -/
def P1273978322521952603.Spec : Prop :=
  ∀ n, P1273978322521952603.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P15698159479172696280

`A360165(xor(1, A153733(n)))`
-/

namespace A360164.P15698159479172696280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360165 (Int.xor 1 (A153733 n)).toNat

end

end A360164.P15698159479172696280

namespace A360164

/-- `A360165(xor(1, A153733(n)))` -/
def P15698159479172696280.Spec : Prop :=
  ∀ n, P15698159479172696280.a n = A360164 (n + 1)

end A360164

/-! ## A360164.P8993217518676141140

`gcd(A360162(n+1), A360165(n+1))`
-/

namespace A360164.P8993217518676141140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360162 (n + 1)) (A360165 (n + 1))

end

end A360164.P8993217518676141140

namespace A360164

/-- `gcd(A360162(n+1), A360165(n+1))` -/
def P8993217518676141140.Spec : Prop :=
  ∀ n, (P8993217518676141140.a n : ℤ) = A360164 (n + 1)

end A360164

/-! ## A360164.P368263392325186421

`A178306(A286387(A071974(n+1)²))`
-/

namespace A360164.P368263392325186421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178306 (A286387 (A071974 (n + 1) ^ 2).toNat).toNat

end

end A360164.P368263392325186421

namespace A360164

/-- `A178306(A286387(A071974(n+1)²))` -/
def P368263392325186421.Spec : Prop :=
  ∀ n, P368263392325186421.a n = A360164 (n + 1)

end A360164

/-!
# A360165: a(n) is the sum of the square roots of the unitary divisors of n that are odd squares minus the sum of the square roots of the unitary divisors of n that are even squares.

The programs for A360165, the canonical program `A360165.P9817317706186478787` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360165 has offset 1).

The definition of A360165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360165.P9817317706186478787

`A328258(A071974(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A360165

/-- `A328258(A071974(n+1))` -/
def P9817317706186478787.Spec : Prop :=
  ∀ n, P9817317706186478787.a n = A360165 (n + 1)

theorem P9817317706186478787.correct : P9817317706186478787.Spec := by
  intro n
  simp only [A360165, Nat.add_sub_cancel]

end A360165

/-! ## A360165.P13186480059040822996

`A328258(sqrt(A350388(n+1)))`
-/

namespace A360165.P13186480059040822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (SequenceMachineLib.roundAway (Real.sqrt (A350388 (n + 1) : ℝ))).toNat

end

end A360165.P13186480059040822996

namespace A360165

/-- `A328258(sqrt(A350388(n+1)))` -/
def P13186480059040822996.Spec : Prop :=
  ∀ n, P13186480059040822996.a n = A360165 (n + 1)

end A360165

/-! ## A360165.P17860475345695967442

`2*A360164(n+1)-A360162(n+1)`
-/

namespace A360165.P17860475345695967442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360164 (n + 1) - A360162 (n + 1)

end

end A360165.P17860475345695967442

namespace A360165

/-- `2*A360164(n+1)-A360162(n+1)` -/
def P17860475345695967442.Spec : Prop :=
  ∀ n, P17860475345695967442.a n = A360165 (n + 1)

end A360165

/-! ## A360165.P5237469639711574071

`A005843(A360164(n+1))-A360162(n+1)`
-/

namespace A360165.P5237469639711574071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A360164 (n + 1)).toNat - A360162 (n + 1)

end

end A360165.P5237469639711574071

namespace A360165

/-- `A005843(A360164(n+1))-A360162(n+1)` -/
def P5237469639711574071.Spec : Prop :=
  ∀ n, P5237469639711574071.a n = A360165 (n + 1)

end A360165

/-! ## A360165.P11789420106004451221

`A328258(gcd(A000188(n+1), A331738(n+1)))`
-/

namespace A360165.P11789420106004451221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (Int.gcd (A000188 (n + 1)) (A331738 (n + 1)))

end

end A360165.P11789420106004451221

namespace A360165

/-- `A328258(gcd(A000188(n+1), A331738(n+1)))` -/
def P11789420106004451221.Spec : Prop :=
  ∀ n, P11789420106004451221.a n = A360165 (n + 1)

end A360165

/-!
# A360168: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n,n-3*k).

The programs for A360168, the canonical program `A360168.P9179285589559651985` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360168 has offset 0).

The definition of A360168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360168.P3150359577033355710

`∑[A277924(floor(acot(n))-1+n)]`
-/

namespace A360168.P3150359577033355710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277924 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360168.P3150359577033355710

namespace A360168

/-- `∑[A277924(floor(acot(n))-1+n)]` -/
def P3150359577033355710.Spec : Prop :=
  ∀ n, P3150359577033355710.a n = A360168 n

end A360168

/-! ## A360168.P6495013781992299549

`∑[A277924(comp[2*(n+1)]-n)]`
-/

namespace A360168.P6495013781992299549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277924 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360168.P6495013781992299549

namespace A360168

/-- `∑[A277924(comp[2*(n+1)]-n)]` -/
def P6495013781992299549.Spec : Prop :=
  ∀ n, P6495013781992299549.a n = A360168 n

end A360168

/-! ## A360168.P9179285589559651985

`4*a(n-1)-A000108(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360168

/-- `4*a(n-1)-A000108(n-1)-1` -/
def P9179285589559651985.Spec : Prop :=
  ∀ n, P9179285589559651985.a n = A360168 n

theorem P9179285589559651985.correct : P9179285589559651985.Spec := by
  intro n
  simp only [A360168]

end A360168

/-! ## A360168.P8604415071169884494

`A006095(n)+A005317(n)`
-/

namespace A360168.P8604415071169884494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + A005317 n

end

end A360168.P8604415071169884494

namespace A360168

/-- `A006095(n)+A005317(n)` -/
def P8604415071169884494.Spec : Prop :=
  ∀ n, P8604415071169884494.a n = A360168 n

end A360168

/-! ## A360168.P2739023393001289360

`A032443(n)-A002450(n)`
-/

namespace A360168.P2739023393001289360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n - A002450 n

end

end A360168.P2739023393001289360

namespace A360168

/-- `A032443(n)-A002450(n)` -/
def P2739023393001289360.Spec : Prop :=
  ∀ n, P2739023393001289360.a n = A360168 n

end A360168

/-! ## A360168.P6863121005580741320

`A001045(2*n+1)-A058622(2*n)`
-/

namespace A360168.P6863121005580741320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n + 1) - A058622 (2 * n)

end

end A360168.P6863121005580741320

namespace A360168

/-- `A001045(2*n+1)-A058622(2*n)` -/
def P6863121005580741320.Spec : Prop :=
  ∀ n, P6863121005580741320.a n = A360168 n

end A360168

/-! ## A360168.P14903392595688813639

`A136412(n)-A265939(n)`
-/

namespace A360168.P14903392595688813639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n - A265939 n

end

end A360168.P14903392595688813639

namespace A360168

/-- `A136412(n)-A265939(n)` -/
def P14903392595688813639.Spec : Prop :=
  ∀ n, P14903392595688813639.a n = A360168 n

end A360168

/-! ## A360168.P11077636490172320421

`A080850(∑[4*n])`
-/

namespace A360168.P11077636490172320421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080850 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360168.P11077636490172320421

namespace A360168

/-- `A080850(∑[4*n])` -/
def P11077636490172320421.Spec : Prop :=
  ∀ n, P11077636490172320421.a n = A360168 n

end A360168

/-! ## A360168.P14319109590819271474

`∑[A193820(2*n²)]`
-/

namespace A360168.P14319109590819271474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360168.P14319109590819271474

namespace A360168

/-- `∑[A193820(2*n²)]` -/
def P14319109590819271474.Spec : Prop :=
  ∀ n, P14319109590819271474.a n = A360168 n

end A360168

/-!
# A360169: Numbers k such that the partition number p(k) = A000041(k) is a term of A057109, i.e., it is not a divisor of the factorial of its greatest prime factor.

The programs for A360169, there is no canonical definition to state claims against.
-/

/-! ## A360169.P16749476211896750498

`A075325(A343569(n+2))`
-/

namespace A360169.P16749476211896750498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075325 (A343569 (n + 2)).toNat

end

end A360169.P16749476211896750498

/-!
# A360170: a(n) is the X-coordinate after n steps of an infinite knight's tour through all lattice points; see A360171 for the Y-coordinates.

The programs for A360170, there is no canonical definition to state claims against.
-/

/-! ## A360170.P13702088889470498099

`A174344(A068613(n))`
-/

namespace A360170.P13702088889470498099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A068613 n).toNat

end

end A360170.P13702088889470498099

/-! ## A360170.P13728199377533165703

`A174344(A068609(n))`
-/

namespace A360170.P13728199377533165703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A068609 n).toNat

end

end A360170.P13728199377533165703

/-! ## A360170.P1786004295674197948

`A268038(A068608(n))`
-/

namespace A360170.P1786004295674197948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A068608 n).toNat

end

end A360170.P1786004295674197948

/-! ## A360170.P8254340565865823364

`A268038(A068612(n))`
-/

namespace A360170.P8254340565865823364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A068612 n).toNat

end

end A360170.P8254340565865823364

/-! ## A360170.P1512011559869906829

`A274923(A068610(n))`
-/

namespace A360170.P1512011559869906829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A068610 n).toNat

end

end A360170.P1512011559869906829

/-! ## A360170.P1637340643484103471

`A274923(A068614(n))`
-/

namespace A360170.P1637340643484103471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A068614 n).toNat

end

end A360170.P1637340643484103471

/-!
# A360171: a(n) is the Y-coordinate after n steps of an infinite knight's tour through all lattice points; see A360170 for the X-coordinates.

The programs for A360171, there is no canonical definition to state claims against.
-/

/-! ## A360171.P5942515447157863008

`A274923(A068613(n))`
-/

namespace A360171.P5942515447157863008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A068613 n).toNat

end

end A360171.P5942515447157863008

/-! ## A360171.P12347616109576479840

`A174344(A068610(n))`
-/

namespace A360171.P12347616109576479840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A068610 n).toNat

end

end A360171.P12347616109576479840

/-! ## A360171.P8396739178871109944

`A174344(A068612(n))`
-/

namespace A360171.P8396739178871109944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A068612 n).toNat

end

end A360171.P8396739178871109944

/-! ## A360171.P3323418032285487590

`A268038(A068609(n))`
-/

namespace A360171.P3323418032285487590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A068609 n).toNat

end

end A360171.P3323418032285487590

/-! ## A360171.P3312266625006508076

`A268038(A068615(n))`
-/

namespace A360171.P3312266625006508076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A068615 n).toNat

end

end A360171.P3312266625006508076

/-! ## A360171.P7568256979124021620

`A274923(A068611(n))`
-/

namespace A360171.P7568256979124021620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A068611 n).toNat

end

end A360171.P7568256979124021620

/-! ## A360171.P9175263564811794384

`A296030(2*A068613(n))`
-/

namespace A360171.P9175263564811794384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A068613 n).toNat

end

end A360171.P9175263564811794384

/-!
# A360172: Sequences of length n in [n] not starting with their minimum value.

The programs for A360172, there is no canonical definition to state claims against.
-/

/-! ## A360172.P13065785576268292596

`Δ[A001923(n)]-A076015(n+1)`
-/

namespace A360172.P13065785576268292596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A076015 (n + 1)

end

end A360172.P13065785576268292596

/-! ## A360172.P333443717333544499

`Δ[A062970(n)]-A076015(n+1)`
-/

namespace A360172.P333443717333544499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A076015 (n + 1)

end

end A360172.P333443717333544499

/-! ## A360172.P17537680182288069782

`record[A091884(n)]-A076015(n+1)`
-/

namespace A360172.P17537680182288069782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A076015 (n + 1)

end

end A360172.P17537680182288069782

/-! ## A360172.P13493924287773577978

`record[A128433(n)]-A076015(n+1)`
-/

namespace A360172.P13493924287773577978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A076015 (n + 1)

end

end A360172.P13493924287773577978

/-! ## A360172.P15369792723682023930

`record[A174551(n)]-A076015(n+1)`
-/

namespace A360172.P15369792723682023930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A076015 (n + 1)

end

end A360172.P15369792723682023930

/-!
# A360174: Triangle read by rows. T(n, k) = (k + 1) * abs(Stirling1(n, k)).

The programs for A360174, there is no canonical definition to state claims against.
-/

/-! ## A360174.P9651058568351628302

`(n+1-C(round(sqrt(2*n)), 2))*A132393(n)`
-/

namespace A360174.P9651058568351628302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ)) * A132393 n

end

end A360174.P9651058568351628302

/-! ## A360174.P4183395000826495076

`A132393(n)-A136426(n+1)`
-/

namespace A360174.P4183395000826495076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A136426 (n + 1)

end

end A360174.P4183395000826495076

/-! ## A360174.P9782511551888578291

`A002260(n+1)*A132393(n)`
-/

namespace A360174.P9782511551888578291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A132393 n

end

end A360174.P9782511551888578291

/-! ## A360174.P16037709649240016881

`(A002262(n)+1)*A132393(n)`
-/

namespace A360174.P16037709649240016881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A132393 n

end

end A360174.P16037709649240016881

/-! ## A360174.P3271428047209416083

`A048994(n)*A140756(n+1)`
-/

namespace A360174.P3271428047209416083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A140756 (n + 1)

end

end A360174.P3271428047209416083

/-! ## A360174.P3070850112766933324

`A131818(n+1)*A132393(n)`
-/

namespace A360174.P3070850112766933324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A132393 n

end

end A360174.P3070850112766933324

/-! ## A360174.P16526187355245786465

`A132393(n)*A134868(n+1)`
-/

namespace A360174.P16526187355245786465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A134868 (n + 1)

end

end A360174.P16526187355245786465

/-! ## A360174.P10114830004502628387

`A132393(n)*A135223(n+1)`
-/

namespace A360174.P10114830004502628387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A135223 (n + 1)

end

end A360174.P10114830004502628387

/-! ## A360174.P1455330294933446019

`(A163351(n)+1)*A132393(n)`
-/

namespace A360174.P1455330294933446019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163351 n + 1) * A132393 n

end

end A360174.P1455330294933446019

/-! ## A360174.P17341464090283468822

`(A298486(n)+1)*A132393(n)`
-/

namespace A360174.P17341464090283468822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A298486 n + 1) * A132393 n

end

end A360174.P17341464090283468822

/-!
# A360175: a(n) = Sum_{k=0..n} (-1)^(n-k)*(n!/k!) * [x^n] (1 - exp(-LambertW(x*exp(-x))))^k.

The programs for A360175, there is no canonical definition to state claims against.
-/

/-! ## A360175.P5591755732760036147

`A267806(3^n*n!-2*n)`
-/

namespace A360175.P5591755732760036147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (3 ^ n * Nat.factorial n - 2 * n)

end

end A360175.P5591755732760036147

/-!
# A360177: Triangle read by rows. T(n, k) = 1 if n = k, otherwise T(n, k) = Sum_{j=0..k-1} (-1)^(j - k - 1) * (n + j + 1)^(n-1) / (j! * (k - 1 - j)!).

The programs for A360177, there is no canonical definition to state claims against.
-/

/-! ## A360177.P15265519733235666605

`A241981(n*A292795(n)^n)`
-/

namespace A360177.P15265519733235666605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 ((n : ℤ) * A292795 n ^ n).toNat

end

end A360177.P15265519733235666605

/-! ## A360177.P10905108093698056436

`A241981(n)-A318880(A058404(n))`
-/

namespace A360177.P10905108093698056436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 n - A318880 (A058404 n).toNat

end

end A360177.P10905108093698056436

/-! ## A360177.P13394134341147594496

`A241981(n)/A304327(A005248(n))`
-/

namespace A360177.P13394134341147594496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241981 n : ℚ) / (A304327 (A005248 n).toNat : ℚ)

end

end A360177.P13394134341147594496

/-! ## A360177.P11134538657921206522

`A241981(n)/A204697(A322785(n))`
-/

namespace A360177.P11134538657921206522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241981 n : ℚ) / (A204697 (A322785 n).toNat : ℚ)

end

end A360177.P11134538657921206522

/-! ## A360177.P3795263665636794839

`A241981(n)^A283027(A214015(n))`
-/

namespace A360177.P3795263665636794839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241981 n : ℚ) ^ (A283027 (A214015 n).toNat : ℤ)

end

end A360177.P3795263665636794839

/-!
# A360179: a(1) = 1. Thereafter if a(n-1) is a novel term, a(n) = d(a(n-1)); otherwise a(n) = a(n-1) + d(u), where d is the divisor function A000005 and u is the smallest unstarred prior term (each time we use a prior term we star it, and starred terms cannot be reused).

The programs for A360179, there is no canonical definition to state claims against.
-/

/-! ## A360179.P4155644349835854846

`A361511(n+1)-A179391(A000041(n))`
-/

namespace A360179.P4155644349835854846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1) - A179391 (A000041 n).toNat

end

end A360179.P4155644349835854846

/-! ## A360179.P6363215321864704982

`A345147(n+1)-A102683(A344110(n))`
-/

namespace A360179.P6363215321864704982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345147 (n + 1) - A102683 (A344110 n).toNat

end

end A360179.P6363215321864704982

/-! ## A360179.P3823874976659329276

`A361511(n+1)-A102683(A344110(n))`
-/

namespace A360179.P3823874976659329276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1) - A102683 (A344110 n).toNat

end

end A360179.P3823874976659329276

/-! ## A360179.P3611547773061792317

`A361511(n+1)-A144193(A317458(n+3))`
-/

namespace A360179.P3611547773061792317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1) - A144193 (A317458 (n + 3)).toNat

end

end A360179.P3611547773061792317

/-! ## A360179.P17365237101858815071

`A345147(∑[A287384(n)])`
-/

namespace A360179.P17365237101858815071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360179.P17365237101858815071

/-!
# A360182: Number of partitions of [n] where each block size occurs at most twice.

The programs for A360182, there is no canonical definition to state claims against.
-/

/-! ## A360182.P2388026317523723622

`A271423(A133263(n))+A007837(n)`
-/

namespace A360182.P2388026317523723622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271423 (A133263 n).toNat + A007837 n

end

end A360182.P2388026317523723622

/-! ## A360182.P16985304042411251702

`A023193(A149420(n))`
-/

namespace A360182.P16985304042411251702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149420 n).toNat

end

end A360182.P16985304042411251702

/-! ## A360182.P6269136904841845678

`A102829(A088808(n))`
-/

namespace A360182.P6269136904841845678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102829 (A088808 n).toNat

end

end A360182.P6269136904841845678

/-!
# A360185: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(2*n-4*k,n-2*k).

The programs for A360185, the canonical program `A360185.P1194481214510871890` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360185 has offset 0).

The definition of A360185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360185.P1194481214510871890

`A000984(n)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360185

/-- `A000984(n)-a(n-2)` -/
def P1194481214510871890.Spec : Prop :=
  ∀ n, P1194481214510871890.a n = A360185 n

theorem P1194481214510871890.correct : P1194481214510871890.Spec := by
  intro n
  simp only [A360185]

end A360185

/-! ## A360185.P9272582285370184637

`A001405(2*n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A360185.P9272582285370184637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001405 (2 * n) - a (n - 2)

end

end A360185.P9272582285370184637

namespace A360185

/-- `A001405(2*n)-a(n-2)` -/
def P9272582285370184637.Spec : Prop :=
  ∀ n, P9272582285370184637.a n = A360185 n

end A360185

/-! ## A360185.P3523489867508039449

`A134758(n)-a(n-2)-n` with `a(0)=1, a(1)=2`
-/

namespace A360185.P3523489867508039449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A134758 n - a (n - 2) - (n : ℤ)

end

end A360185.P3523489867508039449

namespace A360185

/-- `A134758(n)-a(n-2)-n` -/
def P3523489867508039449.Spec : Prop :=
  ∀ n, P3523489867508039449.a n = A360185 n

theorem P3523489867508039449.correct : P3523489867508039449.Spec := by
  intro n
  simp only [A360185, Nat.add_sub_cancel, A360185.P3523489867508039449.a, A360185.P1194481214510871890.a, A000984, A000984.P7946844122574426130.a, A134758, A134758.P3097203731672110701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A360185

/-! ## A360185.P4421035416878638753

`(n+1)*A000108(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A360185.P4421035416878638753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) * A000108 n - a (n - 2)

end

end A360185.P4421035416878638753

namespace A360185

/-- `(n+1)*A000108(n)-a(n-2)` -/
def P4421035416878638753.Spec : Prop :=
  ∀ n, P4421035416878638753.a n = A360185 n

end A360185

/-! ## A360185.P3376975289107783498

`A068555(∑[n])-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A360185.P3376975289107783498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A068555 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 2)

end

end A360185.P3376975289107783498

namespace A360185

/-- `A068555(∑[n])-a(n-2)` -/
def P3376975289107783498.Spec : Prop :=
  ∀ n, P3376975289107783498.a n = A360185 n

end A360185

/-! ## A360185.P9186264128183043270

`A117852(∑[n])-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A360185.P9186264128183043270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A117852 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 2)

end

end A360185.P9186264128183043270

namespace A360185

/-- `A117852(∑[n])-a(n-2)` -/
def P9186264128183043270.Spec : Prop :=
  ∀ n, P9186264128183043270.a n = A360185 n

end A360185

/-! ## A360185.P2073546453090883378

`C(2*n, n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A360185.P2073546453090883378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.choose (2 * n) n : ℤ) - a (n - 2)

end

end A360185.P2073546453090883378

namespace A360185

/-- `C(2*n, n)-a(n-2)` -/
def P2073546453090883378.Spec : Prop :=
  ∀ n, P2073546453090883378.a n = A360185 n

end A360185

/-!
# A360186: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n-6*k,n-3*k).

The programs for A360186, the canonical program `A360186.P970478234899042505` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360186 has offset 0).

The definition of A360186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360186.P970478234899042505

`A000984(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360186

/-- `A000984(n)-a(n-3)` -/
def P970478234899042505.Spec : Prop :=
  ∀ n, P970478234899042505.a n = A360186 n

theorem P970478234899042505.correct : P970478234899042505.Spec := by
  intro n
  simp only [A360186]

end A360186

/-! ## A360186.P3296379226786279775

`C(2*n, n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A360186.P3296379226786279775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  (Nat.choose (2 * n) n : ℤ) - a (n - 3)

end

end A360186.P3296379226786279775

namespace A360186

/-- `C(2*n, n)-a(n-3)` -/
def P3296379226786279775.Spec : Prop :=
  ∀ n, P3296379226786279775.a n = A360186 n

end A360186

/-! ## A360186.P12058062370964733280

`floor(A005100(A026560(n+2)+2)/(n+2))`
-/

namespace A360186.P12058062370964733280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005100 (A026560 (n + 2) + 2).toNat : ℚ) / (n + 2 : ℚ)⌋

end

end A360186.P12058062370964733280

namespace A360186

/-- `floor(A005100(A026560(n+2)+2)/(n+2))` -/
def P12058062370964733280.Spec : Prop :=
  ∀ n, P12058062370964733280.a n = A360186 n

end A360186

/-!
# A360187: Generalized Somos-5 sequence with a(n) = (-a(n-1)*a(n-4) + 42*a(n-2)*a(n-3))/a(n-5), a(-n) = a(n), a(0) = a(1) = 1, a(2) = 3.

The programs for A360187, the canonical program `A360187.P6330282457502500058` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360187 has offset 0).

The definition of A360187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360187.P6330282457502500058

`(-a(n-1)*a(n-4)+42*a(n-2)*a(n-3))/a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=13, a(4)=113`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360187

/-- `(-a(n-1)*a(n-4)+42*a(n-2)*a(n-3))/a(n-5)` -/
def P6330282457502500058.Spec : Prop :=
  ∀ n, P6330282457502500058.a n = (A360187 n : ℚ)

end A360187

/-! ## A360187.P11587398765270106491

`A008996(∑[lcm(n, a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A360187.P11587398765270106491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  Nat.lcm n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360187.P11587398765270106491

namespace A360187

/-- `A008996(∑[lcm(n, a(n-1))])` -/
def P11587398765270106491.Spec : Prop :=
  ∀ n, P11587398765270106491.a n = A360187 n

end A360187

/-!
# A360189: Triangle T(n,k), n>=0, 0<=k<=floor(log_2(n+1)), read by rows: T(n,k) = number of nonnegative integers <= n having binary weight k.

The programs for A360189, there is no canonical definition to state claims against.
-/

/-! ## A360189.P12007910367355851155

`A351014(3^A008289(n+4))`
-/

namespace A360189.P12007910367355851155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A008289 (n + 4) : ℤ))).toNat

end

end A360189.P12007910367355851155

/-! ## A360189.P17372022385069834024

`A055640(7^A008289(n+4))`
-/

namespace A360189.P17372022385069834024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A008289 (n + 4) : ℤ))).toNat

end

end A360189.P17372022385069834024

/-! ## A360189.P3669312434656746348

`A033264(9^A008289(n+4))`
-/

namespace A360189.P3669312434656746348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A008289 (n + 4) : ℤ))).toNat

end

end A360189.P3669312434656746348

/-! ## A360189.P7172930234464140231

`A295824(A008289(n+4)²)%4`
-/

namespace A360189.P7172930234464140231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295824 (A008289 (n + 4) ^ 2).toNat) 4

end

end A360189.P7172930234464140231

/-! ## A360189.P12354187043707037946

`A029928(A008289(n+4)%A374249(3*(n+1)))`
-/

namespace A360189.P12354187043707037946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029928 (Int.tmod (A008289 (n + 4)) (A374249 (3 * (n + 1)))).toNat

end

end A360189.P12354187043707037946

/-!
# A360191: G.f. 1 / Product_{n>=1} (1 - x^n)^3 * (1 - x^(2*n-1))^2.

The programs for A360191, there is no canonical definition to state claims against.
-/

/-! ## A360191.P7029997570475786434

`A361550(∑[n+1]+1)`
-/

namespace A360191.P7029997570475786434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360191.P7029997570475786434

/-! ## A360191.P5281497370387756909

`record[C(A361550(n+2), A049029(n+1))]`
-/

namespace A360191.P5281497370387756909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A361550 (n + 2)).toNat (A049029 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360191.P5281497370387756909

/-! ## A360191.P16812601821933614755

`A361050(∑[n+1]+2)`
-/

namespace A360191.P16812601821933614755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361050 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A360191.P16812601821933614755

/-! ## A360191.P5548619394081329976

`record[gcd(A255517(n+1), A361050(n+3))]`
-/

namespace A360191.P5548619394081329976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255517 (n + 1)) (A361050 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360191.P5548619394081329976

/-! ## A360191.P13820256881969394998

`record[A361550(n)/A279636(n)]`
-/

namespace A360191.P13820256881969394998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361550 n : ℚ) / (A279636 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360191.P13820256881969394998

/-!
# A360193: a(n) = Sum_{k=0..n} (k-1)^(k-1) * binomial(n,k).

The programs for A360193, there is no canonical definition to state claims against.
-/

/-! ## A360193.P2599128518415658028

`∑[A086331(n)]-1-A086331(n)`
-/

namespace A360193.P2599128518415658028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A086331 n

end

end A360193.P2599128518415658028

/-!
# A360195: Number of acyclic spanning subgraphs in the 4 X n grid graph.

The programs for A360195, there is no canonical definition to state claims against.
-/

/-! ## A360195.P7637331286366296302

`A360194(A374004(n+1))`
-/

namespace A360195.P7637331286366296302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 (A374004 (n + 1)).toNat

end

end A360195.P7637331286366296302

/-! ## A360195.P11284095972247496684

`A360194(A055999(n)+10)`
-/

namespace A360195.P11284095972247496684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 (A055999 n + 10).toNat

end

end A360195.P11284095972247496684

/-! ## A360195.P10096633893052867505

`A360194(A000217(n+3)+4)`
-/

namespace A360195.P10096633893052867505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 (A000217 (n + 3) + 4).toNat

end

end A360195.P10096633893052867505

/-! ## A360195.P3367222955420069200

`A360194(A141214(n+1))`
-/

namespace A360195.P3367222955420069200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 (A141214 (n + 1)).toNat

end

end A360195.P3367222955420069200

/-! ## A360195.P4234331137920932867

`A360194(lt[A360199(n+3), n])`
-/

namespace A360195.P4234331137920932867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360199 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A360195.P4234331137920932867

/-!
# A360196: Array read by antidiagonals: T(m,n) is the number of induced cycles in the grid graph P_m X P_n.

The programs for A360196, there is no canonical definition to state claims against.
-/

/-! ## A360196.P6453114522789348766

`A346447(A001263(n+1))+A003056(n)`
-/

namespace A360196.P6453114522789348766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (A001263 (n + 1)).toNat + A003056 n

end

end A360196.P6453114522789348766

/-! ## A360196.P5616268081463187716

`A243903(A003056(n)+A001263(n+1))`
-/

namespace A360196.P5616268081463187716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A003056 n + A001263 (n + 1)).toNat

end

end A360196.P5616268081463187716

/-! ## A360196.P12616017680934406095

`A051250(A115262(n)%A051250(n+3))`
-/

namespace A360196.P12616017680934406095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051250 (Int.tmod (A115262 n) (A051250 (n + 3))).toNat

end

end A360196.P12616017680934406095

/-! ## A360196.P13364757325229193498

`A335678(n+1)+A004148(A331039(2*n))`
-/

namespace A360196.P13364757325229193498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335678 (n + 1) + A004148 (A331039 (2 * n)).toNat

end

end A360196.P13364757325229193498

/-! ## A360196.P6621022730339758410

`A004218(A081254(n+1))+A001263(n+1)`
-/

namespace A360196.P6621022730339758410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A081254 (n + 1)).toNat + A001263 (n + 1)

end

end A360196.P6621022730339758410

/-!
# A360197: Number of induced cycles in the 4 X n grid graph.

The programs for A360197, there is no canonical definition to state claims against.
-/

/-! ## A360197.P6494044403514030675

`record[char[∑[n+1]]*A360196(n+4)]`
-/

namespace A360197.P6494044403514030675
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A360196 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360197.P6494044403514030675

/-! ## A360197.P15021846178868160084

`A360196(A000096(n+1))%A360854(n+2)`
-/

namespace A360197.P15021846178868160084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360196 (A000096 (n + 1)).toNat) (A360854 (n + 2))

end

end A360197.P15021846178868160084

/-!
# A360198: Number of induced cycles in the 5 X n grid graph.

The programs for A360198, there is no canonical definition to state claims against.
-/

/-! ## A360198.P16294076893007239755

`A360196(A167499(n+1))%A017765(n)`
-/

namespace A360198.P16294076893007239755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360196 (A167499 (n + 1)).toNat) (A017765 n)

end

end A360198.P16294076893007239755

