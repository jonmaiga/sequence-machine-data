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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A060500: a(n) = number of drops in the n-th permutation of list A060118; the average of digits (where "digits" may eventually obtain also any values > 9) in each siteswap pattern A060496(n).

The programs for A060500, there is no canonical definition to state claims against.
-/

/-! ## A060500.P9942879460919001437

`A060502(A060125(n))`
-/

namespace A060500.P9942879460919001437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060125 n).toNat

end

end A060500.P9942879460919001437

/-! ## A060500.P14051954004839357416

`A060129(n)-A060502(n)`
-/

namespace A060500.P14051954004839357416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n - A060502 n

end

end A060500.P14051954004839357416

/-! ## A060500.P10698965860924149334

`A060501(n)-A275851(n)`
-/

namespace A060500.P10698965860924149334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n - A275851 n

end

end A060500.P10698965860924149334

/-! ## A060500.P17057532231123464179

`1+A275849(n)-A275851(n)`
-/

namespace A060500.P17057532231123464179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A275849 n - A275851 n

end

end A060500.P17057532231123464179

/-! ## A060500.P1739480921522145542

`A369377(A060119(n))`
-/

namespace A060500.P1739480921522145542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369377 (A060119 n).toNat

end

end A060500.P1739480921522145542

/-! ## A060500.P7035670848910249090

`A369376(A060120(n))`
-/

namespace A060500.P7035670848910249090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A060120 n).toNat

end

end A060500.P7035670848910249090

/-! ## A060500.P12117598492885971618

`A060130(n)-A276004(n)`
-/

namespace A060500.P12117598492885971618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A276004 n

end

end A060500.P12117598492885971618

/-! ## A060500.P1717052229609128113

`A084558(n)+1-A275853(n)`
-/

namespace A060500.P1717052229609128113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (1 - A275853 n)

end

end A060500.P1717052229609128113

/-! ## A060500.P15247007454911773455

`A084558(n)-A275849(A060125(n))`
-/

namespace A060500.P15247007454911773455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A275849 (A060125 n).toNat

end

end A060500.P15247007454911773455

/-! ## A060500.P18285939964070195651

`A060128(n)+A060130(n)-A060502(n)`
-/

namespace A060500.P18285939964070195651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n + (A060130 n - A060502 n)

end

end A060500.P18285939964070195651

/-! ## A060500.P18151508554434489631

`A060501(n)+A060502(n)-A275853(n)`
-/

namespace A060500.P18151508554434489631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n + (A060502 n - A275853 n)

end

end A060500.P18151508554434489631

/-! ## A060500.P13125276450240772868

`A060129(n)+A275851(n)-A275853(n)`
-/

namespace A060500.P13125276450240772868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n + (A275851 n - A275853 n)

end

end A060500.P13125276450240772868

/-! ## A060500.P5511537855015585221

`A275849(A231720(n))`
-/

namespace A060500.P5511537855015585221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A231720 n).toNat

end

end A060500.P5511537855015585221

/-! ## A060500.P4360342873017359218

`A275806(A275957(n))`
-/

namespace A060500.P4360342873017359218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A275957 n).toNat

end

end A060500.P4360342873017359218

/-! ## A060500.P8437342083252446421

`A060502(A275958(A225901(n)))`
-/

namespace A060500.P8437342083252446421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A275958 (A225901 n).toNat).toNat

end

end A060500.P8437342083252446421

/-!
# A060501: Average of digits of each term in A060495, number of balls in each such siteswap juggling pattern.

The programs for A060501, there is no canonical definition to state claims against.
-/

/-! ## A060501.P7011663330862366270

`1+A275849(n)`
-/

namespace A060501.P7011663330862366270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A275849 n

end

end A060501.P7011663330862366270

/-! ## A060501.P2578470723932853114

`A275849(n-char[1])-or(n, -1)`
-/

namespace A060501.P2578470723932853114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (n - (if ∃ j, f1 j = n then 1 else 0)) - Int.lor (n : ℤ) (-1)

end

end A060501.P2578470723932853114

/-! ## A060501.P16178965298950909912

`A275853(A060125(n))`
-/

namespace A060501.P16178965298950909912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A060125 n).toNat

end

end A060501.P16178965298950909912

/-! ## A060501.P13610057125304675744

`A275851(n)+A060500(n)`
-/

namespace A060501.P13610057125304675744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n + A060500 n

end

end A060501.P13610057125304675744

/-! ## A060501.P7279187623350141005

`A084558(n)+1-A060502(n)`
-/

namespace A060501.P7279187623350141005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (1 - A060502 n)

end

end A060501.P7279187623350141005

/-! ## A060501.P16818047501499457023

`A090529(n+1)-A060502(n)`
-/

namespace A060501.P16818047501499457023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1) - A060502 n

end

end A060501.P16818047501499457023

/-! ## A060501.P17068122540682963331

`A000027(A275849(n)-or(n, -1))`
-/

namespace A060501.P17068122540682963331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A275849 n - Int.lor (n : ℤ) (-1)).toNat

end

end A060501.P17068122540682963331

/-! ## A060501.P14040881054062220825

`A000030(A275849(n)-or(n, -1))`
-/

namespace A060501.P14040881054062220825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A275849 n - Int.lor (n : ℤ) (-1)).toNat

end

end A060501.P14040881054062220825

/-! ## A060501.P18252435164567868304

`A000194((A275849(n)-or(n, -1))²)`
-/

namespace A060501.P18252435164567868304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A275849 n - Int.lor (n : ℤ) (-1)) ^ 2).toNat

end

end A060501.P18252435164567868304

/-! ## A060501.P8928268266034110997

`A001222(2^(A275849(n)-or(n, -1)))`
-/

namespace A060501.P8928268266034110997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275849 n - Int.lor (n : ℤ) (-1) : ℤ))).toNat

end

end A060501.P8928268266034110997

/-! ## A060501.P13614842839087824876

`A275851(n)+A060502(A060125(n))`
-/

namespace A060501.P13614842839087824876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n + A060502 (A060125 n).toNat

end

end A060501.P13614842839087824876

/-! ## A060501.P3395991164924591819

`A275849(n)-A008683(A007918(n))`
-/

namespace A060501.P3395991164924591819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n - A008683 (A007918 n).toNat

end

end A060501.P3395991164924591819

/-! ## A060501.P17490232396326575281

`A001316(A001316(n))-(1-A275849(n))`
-/

namespace A060501.P17490232396326575281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A275849 n)

end

end A060501.P17490232396326575281

/-! ## A060501.P15889404671983771059

`A060500(n)+A275853(n)-A060502(n)`
-/

namespace A060501.P15889404671983771059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A275853 n - A060502 n)

end

end A060501.P15889404671983771059

/-! ## A060501.P12614445427968711908

`A000005(A020639(4*or(3, n))^A275849(n))`
-/

namespace A060501.P12614445427968711908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020639 (4 * Nat.lor 3 n) : ℚ) ^ (A275849 n : ℤ))).toNat

end

end A060501.P12614445427968711908

/-! ## A060501.P15994418610654436167

`A275850(A225901(n))+1`
-/

namespace A060501.P15994418610654436167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A225901 n).toNat + 1

end

end A060501.P15994418610654436167

/-! ## A060501.P6796542061168154632

`A084558(n)+1-A275806(A225901(n))`
-/

namespace A060501.P6796542061168154632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n + (1 - A275806 (A225901 n).toNat)

end

end A060501.P6796542061168154632

/-!
# A060502: a(n) = number of occupied digit slopes in the factorial base representation of n (see comments for the definition); number of drops in the n-th permutation of list A060117.

The programs for A060502, there is no canonical definition to state claims against.
-/

/-! ## A060502.P11835309538052805558

`A060500(A060125(n))`
-/

namespace A060502.P11835309538052805558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060125 n).toNat

end

end A060502.P11835309538052805558

/-! ## A060502.P1112733647808556019

`A000120(A276010(n))`
-/

namespace A060502.P1112733647808556019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A276010 n).toNat

end

end A060502.P1112733647808556019

/-! ## A060502.P18020075130924477565

`A060128(n)+A276004(n)`
-/

namespace A060502.P18020075130924477565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n + A276004 n

end

end A060502.P18020075130924477565

/-! ## A060502.P8703902475724372416

`A275946(n)+A275947(n)`
-/

namespace A060502.P8703902475724372416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 n + A275947 n

end

end A060502.P8703902475724372416

/-! ## A060502.P7855046573766560129

`A060129(n)-A060500(n)`
-/

namespace A060502.P7855046573766560129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n - A060500 n

end

end A060502.P7855046573766560129

/-! ## A060502.P11580388561601502159

`A084558(n)-A275849(n)`
-/

namespace A060502.P11580388561601502159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A275849 n

end

end A060502.P11580388561601502159

/-! ## A060502.P5702839433514460073

`1+A084558(n)-A060501(n)`
-/

namespace A060502.P5702839433514460073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A084558 n - A060501 n

end

end A060502.P5702839433514460073

/-! ## A060502.P11392697799951532322

`A001221(A275734(n))`
-/

namespace A060502.P11392697799951532322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275734 n).toNat

end

end A060502.P11392697799951532322

/-! ## A060502.P7518779682343018909

`A275806(A225901(n))`
-/

namespace A060502.P7518779682343018909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 n).toNat

end

end A060502.P7518779682343018909

/-! ## A060502.P5297715050438218540

`A369376(A060119(n))`
-/

namespace A060502.P5297715050438218540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A060119 n).toNat

end

end A060502.P5297715050438218540

/-! ## A060502.P14040598863986184776

`A369377(A060120(n))`
-/

namespace A060502.P14040598863986184776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369377 (A060120 n).toNat

end

end A060502.P14040598863986184776

/-! ## A060502.P14100441760926169352

`A275853(n)-A275851(n)`
-/

namespace A060502.P14100441760926169352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 n - A275851 n

end

end A060502.P14100441760926169352

/-! ## A060502.P16697895714943947367

`∑{p}[A275734(n), A007913(#²)]`
-/

namespace A060502.P16697895714943947367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007913 (p ^ 2)

end

end A060502.P16697895714943947367

/-! ## A060502.P15341407441409411778

`∑{p}[A275734(n), #/A007913(#)]`
-/

namespace A060502.P15341407441409411778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A007913 p : ℚ)

end

end A060502.P15341407441409411778

/-! ## A060502.P14006758881659109495

`∑{p}[A275734(n), A275734(A248663(#²))]`
-/

namespace A060502.P14006758881659109495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A275734 (A248663 (p ^ 2)).toNat

end

end A060502.P14006758881659109495

/-! ## A060502.P17814025757249036666

`A060128(n)+A060130(n)-A060500(n)`
-/

namespace A060502.P17814025757249036666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n + (A060130 n - A060500 n)

end

end A060502.P17814025757249036666

/-! ## A060502.P9014368027117704853

`A060500(n)+A275853(n)-A060501(n)`
-/

namespace A060502.P9014368027117704853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A275853 n - A060501 n)

end

end A060502.P9014368027117704853

/-! ## A060502.P4608692230024459195

`A060130(n)+A275947(n)-A275962(n)`
-/

namespace A060502.P4608692230024459195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + (A275947 n - A275962 n)

end

end A060502.P4608692230024459195

/-! ## A060502.P10346290862079413357

`A275806(n)+A275850(n)-A275849(n)`
-/

namespace A060502.P10346290862079413357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n + (A275850 n - A275849 n)

end

end A060502.P10346290862079413357

/-! ## A060502.P10200282775261515384

`A001221(A278234(n))`
-/

namespace A060502.P10200282775261515384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278234 n).toNat

end

end A060502.P10200282775261515384

/-!
# A060503: Primes p that have a primitive root between 0 and p that is not a primitive root of p^2.

The programs for A060503, there is no canonical definition to state claims against.
-/

/-! ## A060503.P8575668737873826848

`p?[∑[A080791(A185325(n)²)]]`
-/

namespace A060503.P8575668737873826848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A185325 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060503.P8575668737873826848

/-!
# A060505: a(n) = floor(2^n/(n^2)).

The programs for A060505, the canonical program `A060505.P1170048312916307566` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060505 has offset 1).

The definition of A060505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/(n+1)²)` (program `A060505.P1170048312916307566`, by `A060505.P1170048312916307566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060505.P1170048312916307566

`floor(2^(n+1)/(n+1)²)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060505

/-- `floor(2^(n+1)/(n+1)²)` -/
def P1170048312916307566.Spec : Prop :=
  ∀ n, P1170048312916307566.a n = A060505 (n + 1)

theorem P1170048312916307566.correct : P1170048312916307566.Spec := by
  intro n
  simp only [A060505, Nat.add_sub_cancel]

end A060505

/-! ## A060505.P91963836920647348

`ceil((A000799(n+1)-n)/(n+1))`
-/

namespace A060505.P91963836920647348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000799 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A060505.P91963836920647348

namespace A060505

/-- `ceil((A000799(n+1)-n)/(n+1))` -/
def P91963836920647348.Spec : Prop :=
  ∀ n, P91963836920647348.a n = A060505 (n + 1)

end A060505

/-! ## A060505.P15936274819667588066

`ceil(A030110(n+1)/(n+1)²)`
-/

namespace A060505.P15936274819667588066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030110 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌉

end

end A060505.P15936274819667588066

namespace A060505

/-- `ceil(A030110(n+1)/(n+1)²)` -/
def P15936274819667588066.Spec : Prop :=
  ∀ n, P15936274819667588066.a n = A060505 (n + 1)

end A060505

/-! ## A060505.P11045762768076581330

`ceil(A000051(n+1)/(n+1)²)-1`
-/

namespace A060505.P11045762768076581330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000051 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌉ - 1

end

end A060505.P11045762768076581330

namespace A060505

/-- `ceil(A000051(n+1)/(n+1)²)-1` -/
def P11045762768076581330.Spec : Prop :=
  ∀ n, P11045762768076581330.a n = A060505 (n + 1)

end A060505

/-! ## A060505.P3529489351675166284

`ceil((A011782(n+2)+1)/(n+1)²)-1`
-/

namespace A060505.P3529489351675166284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011782 (n + 2) + 1 : ℚ) / ((n + 1) ^ 2 : ℚ)⌉ - 1

end

end A060505.P3529489351675166284

namespace A060505

/-- `ceil((A011782(n+2)+1)/(n+1)²)-1` -/
def P3529489351675166284.Spec : Prop :=
  ∀ n, P3529489351675166284.a n = A060505 (n + 1)

end A060505

/-! ## A060505.P15782795701457464940

`A062283(∑[n+1]+2)`
-/

namespace A060505.P15782795701457464940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062283 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A060505.P15782795701457464940

namespace A060505

/-- `A062283(∑[n+1]+2)` -/
def P15782795701457464940.Spec : Prop :=
  ∀ n, P15782795701457464940.a n = A060505 (n + 1)

end A060505

/-!
# A060507: Denominators of the asymptotic expansion of the Airy function Ai(x).

The programs for A060507, there is no canonical definition to state claims against.
-/

/-! ## A060507.P7648865806060994084

`A001021(n)²/gcd(A000984(n), A001021(n))`
-/

namespace A060507.P7648865806060994084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n ^ 2 : ℚ) / (Int.gcd (A000984 n) (A001021 n) : ℚ)

end

end A060507.P7648865806060994084

/-! ## A060507.P18220391028069249399

`12^n*A285018(n)`
-/

namespace A060507.P18220391028069249399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 ^ n : ℤ) * A285018 n

end

end A060507.P18220391028069249399

/-! ## A060507.P13445922792395228549

`A001021(n)²/A284255(A000984(n))`
-/

namespace A060507.P13445922792395228549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n ^ 2 : ℚ) / (A284255 (A000984 n).toNat : ℚ)

end

end A060507.P13445922792395228549

/-!
# A060508: Exponent of largest power of n < 2^n.

The programs for A060508, the canonical program `A060508.P17280462633277841465` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060508 has offset 2).

The definition of A060508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060508.P17280462633277841465

`floor((n+2)/log2(n+2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060508

/-- `floor((n+2)/log2(n+2))` -/
def P17280462633277841465.Spec : Prop :=
  ∀ n, P17280462633277841465.a n = A060508 (n + 2)

theorem P17280462633277841465.correct : P17280462633277841465.Spec := by
  intro n
  simp only [A060508, Nat.add_sub_cancel]

end A060508

/-! ## A060508.P18168156609482285440

`A065801(n+2)-1`
-/

namespace A060508.P18168156609482285440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065801 (n + 2) - 1

end

end A060508.P18168156609482285440

namespace A060508

/-- `A065801(n+2)-1` -/
def P18168156609482285440.Spec : Prop :=
  ∀ n, P18168156609482285440.a n = A060508 (n + 2)

end A060508

/-! ## A060508.P8914349512231610138

`A259361(A065801(n+2)²)`
-/

namespace A060508.P8914349512231610138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A065801 (n + 2) ^ 2).toNat

end

end A060508.P8914349512231610138

namespace A060508

/-- `A259361(A065801(n+2)²)` -/
def P8914349512231610138.Spec : Prop :=
  ∀ n, P8914349512231610138.a n = A060508 (n + 2)

end A060508

/-! ## A060508.P15194881151462177867

`A025581(2*A065801(n+2)²)`
-/

namespace A060508.P15194881151462177867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A065801 (n + 2) ^ 2).toNat

end

end A060508.P15194881151462177867

namespace A060508

/-- `A025581(2*A065801(n+2)²)` -/
def P15194881151462177867.Spec : Prop :=
  ∀ n, P15194881151462177867.a n = A060508 (n + 2)

end A060508

/-! ## A060508.P17576553588382965365

`A025581(2*A065801(n+2)*A065801(n+2))`
-/

namespace A060508.P17576553588382965365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A065801 (n + 2) * A065801 (n + 2)).toNat

end

end A060508.P17576553588382965365

namespace A060508

/-- `A025581(2*A065801(n+2)*A065801(n+2))` -/
def P17576553588382965365.Spec : Prop :=
  ∀ n, P17576553588382965365.a n = A060508 (n + 2)

end A060508

/-! ## A060508.P15558200781850656324

`val(A060509(n+2), n+2)`
-/

namespace A060508.P15558200781850656324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060509 (n + 2)).toNat (n + 2)

end

end A060508.P15558200781850656324

namespace A060508

/-- `val(A060509(n+2), n+2)` -/
def P15558200781850656324.Spec : Prop :=
  ∀ n, (P15558200781850656324.a n : ℤ) = A060508 (n + 2)

end A060508

/-! ## A060508.P10172463684335371813

`A079782(n+1)%A065801(n+2)`
-/

namespace A060508.P10172463684335371813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A065801 (n + 2))

end

end A060508.P10172463684335371813

namespace A060508

/-- `A079782(n+1)%A065801(n+2)` -/
def P10172463684335371813.Spec : Prop :=
  ∀ n, P10172463684335371813.a n = A060508 (n + 2)

end A060508

/-! ## A060508.P9255266703184489986

`A083685(n+1)%A065801(n+2)`
-/

namespace A060508.P9255266703184489986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A065801 (n + 2))

end

end A060508.P9255266703184489986

namespace A060508

/-- `A083685(n+1)%A065801(n+2)` -/
def P9255266703184489986.Spec : Prop :=
  ∀ n, P9255266703184489986.a n = A060508 (n + 2)

end A060508

/-! ## A060508.P17916954544343967047

`A002260(A065801(n+2)+∑[n+2])`
-/

namespace A060508.P17916954544343967047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A065801 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060508.P17916954544343967047

namespace A060508

/-- `A002260(A065801(n+2)+∑[n+2])` -/
def P17916954544343967047.Spec : Prop :=
  ∀ n, P17916954544343967047.a n = A060508 (n + 2)

end A060508

/-!
# A060509: Largest power of n not exceeding 2^n.

The programs for A060509, the canonical program `A060509.P11280414271889525859` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060509 has offset 2).

The definition of A060509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060509.P11280414271889525859

`(n+2)^floor((n+2)/log2(n+2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060509

/-- `(n+2)^floor((n+2)/log2(n+2))` -/
def P11280414271889525859.Spec : Prop :=
  ∀ n, P11280414271889525859.a n = (A060509 (n + 2) : ℚ)

end A060509

/-! ## A060509.P11126640208839079721

`-xor((n+2)^A060508(n+2)-1, -1)`
-/

namespace A060509.P11126640208839079721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A060508 (n + 2) : ℤ) - 1)) (-1)

end

end A060509.P11126640208839079721

namespace A060509

/-- `-xor((n+2)^A060508(n+2)-1, -1)` -/
def P11126640208839079721.Spec : Prop :=
  ∀ n, P11126640208839079721.a n = A060509 (n + 2)

end A060509

/-! ## A060509.P7798416633114677408

`2^(n+2)-A215892(n+2)`
-/

namespace A060509.P7798416633114677408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A215892 (n + 2)

end

end A060509.P7798416633114677408

namespace A060509

/-- `2^(n+2)-A215892(n+2)` -/
def P7798416633114677408.Spec : Prop :=
  ∀ n, P7798416633114677408.a n = A060509 (n + 2)

end A060509

/-! ## A060509.P8936786619418702310

`abs(A215892(n+2)-A020707(n))`
-/

namespace A060509.P8936786619418702310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215892 (n + 2) - A020707 n|

end

end A060509.P8936786619418702310

namespace A060509

/-- `abs(A215892(n+2)-A020707(n))` -/
def P8936786619418702310.Spec : Prop :=
  ∀ n, P8936786619418702310.a n = A060509 (n + 2)

end A060509

/-!
# A060510: Alternating with hexagonal stutters: if n is hexagonal (2k^2 - k, i.e., A000384) then a(n)=a(n-1), otherwise a(n) = 1 - a(n-1).

The programs for A060510, the canonical program `A060510.P4619639518901930436` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060510 has offset 0).

The definition of A060510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060510.P4619639518901930436

`A002262(n)%2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060510

/-- `A002262(n)%2` -/
def P4619639518901930436.Spec : Prop :=
  ∀ n, P4619639518901930436.a n = A060510 n

theorem P4619639518901930436.correct : P4619639518901930436.Spec := by
  intro n
  simp only [A060510]

end A060510

/-! ## A060510.P2525250981716919548

`A060511(n)%2`
-/

namespace A060510.P2525250981716919548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060511 n) 2

end

end A060510.P2525250981716919548

namespace A060510

/-- `A060511(n)%2` -/
def P2525250981716919548.Spec : Prop :=
  ∀ n, P2525250981716919548.a n = A060510 n

end A060510

/-! ## A060510.P771757605457184953

`col(n)%2`
-/

namespace A060510.P771757605457184953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n % 2

end

end A060510.P771757605457184953

namespace A060510

/-- `col(n)%2` -/
def P771757605457184953.Spec : Prop :=
  ∀ n, (P771757605457184953.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P8236034002161844120

`and(1, col(n))`
-/

namespace A060510.P8236034002161844120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.triCol n)

end

end A060510.P8236034002161844120

namespace A060510

/-- `and(1, col(n))` -/
def P8236034002161844120.Spec : Prop :=
  ∀ n, (P8236034002161844120.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P18389876357812945393

`char[comp[n²]+n]`
-/

namespace A060510.P18389876357812945393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A060510.P18389876357812945393

namespace A060510

/-- `char[comp[n²]+n]` -/
def P18389876357812945393.Spec : Prop :=
  ∀ n, (P18389876357812945393.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P12397533192233447405

`2-gcd(2, col(n))`
-/

namespace A060510.P12397533192233447405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.triCol n) : ℤ)

end

end A060510.P12397533192233447405

namespace A060510

/-- `2-gcd(2, col(n))` -/
def P12397533192233447405.Spec : Prop :=
  ∀ n, P12397533192233447405.a n = A060510 n

end A060510

/-! ## A060510.P11323034364416193397

`val(col(n)²+1, 2)`
-/

namespace A060510.P11323034364416193397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.triCol n ^ 2 + 1) 2

end

end A060510.P11323034364416193397

namespace A060510

/-- `val(col(n)²+1, 2)` -/
def P11323034364416193397.Spec : Prop :=
  ∀ n, (P11323034364416193397.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P7087520425224338136

`(comp[2*n²]+1)%2`
-/

namespace A060510.P7087520425224338136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) % 2

end

end A060510.P7087520425224338136

namespace A060510

/-- `(comp[2*n²]+1)%2` -/
def P7087520425224338136.Spec : Prop :=
  ∀ n, (P7087520425224338136.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P9404414565244451046

`1-comp[2*n²]%2`
-/

namespace A060510.P9404414565244451046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A060510.P9404414565244451046

namespace A060510

/-- `1-comp[2*n²]%2` -/
def P9404414565244451046.Spec : Prop :=
  ∀ n, P9404414565244451046.a n = A060510 n

end A060510

/-! ## A060510.P3068372315336429499

`and(1, comp[2*n²]+1)`
-/

namespace A060510.P3068372315336429499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A060510.P3068372315336429499

namespace A060510

/-- `and(1, comp[2*n²]+1)` -/
def P3068372315336429499.Spec : Prop :=
  ∀ n, (P3068372315336429499.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P8951075908319116894

`col(n)+1-or(1, col(n))`
-/

namespace A060510.P8951075908319116894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) - (Nat.lor 1 (SequenceMachineLib.triCol n) : ℤ)

end

end A060510.P8951075908319116894

namespace A060510

/-- `col(n)+1-or(1, col(n))` -/
def P8951075908319116894.Spec : Prop :=
  ∀ n, P8951075908319116894.a n = A060510 n

end A060510

/-! ## A060510.P15479164843030553698

`and(2, ∪[2*n, n²])/2`
-/

namespace A060510.P15479164843030553698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) : ℚ) / 2

end

end A060510.P15479164843030553698

namespace A060510

/-- `and(2, ∪[2*n, n²])/2` -/
def P15479164843030553698.Spec : Prop :=
  ∀ n, P15479164843030553698.a n = (A060510 n : ℚ)

end A060510

/-! ## A060510.P1466324451607352036

`(1+(-1)^(col(n)+1))/2`
-/

namespace A060510.P1466324451607352036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A060510.P1466324451607352036

namespace A060510

/-- `(1+(-1)^(col(n)+1))/2` -/
def P1466324451607352036.Spec : Prop :=
  ∀ n, P1466324451607352036.a n = (A060510 n : ℚ)

end A060510

/-! ## A060510.P17018729449809728685

`1/2*(1-(-1)^col(n))`
-/

namespace A060510.P17018729449809728685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 - (-1) ^ SequenceMachineLib.triCol n : ℚ)

end

end A060510.P17018729449809728685

namespace A060510

/-- `1/2*(1-(-1)^col(n))` -/
def P17018729449809728685.Spec : Prop :=
  ∀ n, P17018729449809728685.a n = (A060510 n : ℚ)

end A060510

/-! ## A060510.P4309738670056433419

`floor((col(n)+3)/2)-floor((col(n)+2)/2)`
-/

namespace A060510.P4309738670056433419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triCol n + 3 : ℚ) / 2⌋ - ⌊(SequenceMachineLib.triCol n + 2 : ℚ) / 2⌋

end

end A060510.P4309738670056433419

namespace A060510

/-- `floor((col(n)+3)/2)-floor((col(n)+2)/2)` -/
def P4309738670056433419.Spec : Prop :=
  ∀ n, P4309738670056433419.a n = A060510 n

end A060510

/-! ## A060510.P3960037732793165093

`C(col(n)+1, col(n)+2-(-1)^(col(n)+1))`
-/

namespace A060510.P3960037732793165093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1) ((SequenceMachineLib.triCol n + 2 : ℤ) - (-1) ^ (SequenceMachineLib.triCol n + 1)).toNat

end

end A060510.P3960037732793165093

namespace A060510

/-- `C(col(n)+1, col(n)+2-(-1)^(col(n)+1))` -/
def P3960037732793165093.Spec : Prop :=
  ∀ n, (P3960037732793165093.a n : ℤ) = A060510 n

end A060510

/-! ## A060510.P15582150135931650503

`A000035(col(n))`
-/

namespace A060510.P15582150135931650503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.triCol n)

end

end A060510.P15582150135931650503

namespace A060510

/-- `A000035(col(n))` -/
def P15582150135931650503.Spec : Prop :=
  ∀ n, P15582150135931650503.a n = A060510 n

end A060510

/-! ## A060510.P242805724896144480

`floor(acot(A276424(n)))`
-/

namespace A060510.P242805724896144480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A276424 n : ℝ)⌋

end

end A060510.P242805724896144480

namespace A060510

/-- `floor(acot(A276424(n)))` -/
def P242805724896144480.Spec : Prop :=
  ∀ n, P242805724896144480.a n = A060510 n

end A060510

/-! ## A060510.P2674010231862649342

`A059841(col(n)+1)`
-/

namespace A060510.P2674010231862649342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.triCol n + 1)

end

end A060510.P2674010231862649342

namespace A060510

/-- `A059841(col(n)+1)` -/
def P2674010231862649342.Spec : Prop :=
  ∀ n, P2674010231862649342.a n = A060510 n

end A060510

/-! ## A060510.P11373370070759543181

`1-A376583(n+1)`
-/

namespace A060510.P11373370070759543181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376583 (n + 1)

end

end A060510.P11373370070759543181

namespace A060510

/-- `1-A376583(n+1)` -/
def P11373370070759543181.Spec : Prop :=
  ∀ n, P11373370070759543181.a n = A060510 n

end A060510

/-!
# A060511: Hexagonal excess: smallest amount by which n exceeds a hexagonal number (2k^2-k, A000384).

The programs for A060511, the canonical program `A060511.P6613141027037058169` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060511 has offset 0).

The definition of A060511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060511.P4201107668185354497

`(n*C(comp[n^gcd(2, n)], 2)+n)%(n+1)`
-/

namespace A060511.P4201107668185354497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2 + n) % (n + 1)

end

end A060511.P4201107668185354497

namespace A060511

/-- `(n*C(comp[n^gcd(2, n)], 2)+n)%(n+1)` -/
def P4201107668185354497.Spec : Prop :=
  ∀ n, (P4201107668185354497.a n : ℤ) = A060511 n

end A060511

/-! ## A060511.P915639011466282830

`(a(n-1)+1)%A213768(n)` with `a(0)=0`
-/

namespace A060511.P915639011466282830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (A213768 n)

end

end A060511.P915639011466282830

namespace A060511

/-- `(a(n-1)+1)%A213768(n)` -/
def P915639011466282830.Spec : Prop :=
  ∀ n, P915639011466282830.a n = A060511 n

end A060511

/-! ## A060511.P5282035600698771149

`n-A000384(∑[char[C(2*(n+1), 2)]])`
-/

namespace A060511.P5282035600698771149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060511.P5282035600698771149

namespace A060511

/-- `n-A000384(∑[char[C(2*(n+1), 2)]])` -/
def P5282035600698771149.Spec : Prop :=
  ∀ n, P5282035600698771149.a n = A060511 n

end A060511

/-! ## A060511.P5270386211764619736

`A237420(∑[char[∑[n+1]]])+n-C(∑[char[∑[n]]], 2)`
-/

namespace A060511.P5270386211764619736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A060511.P5270386211764619736

namespace A060511

/-- `A237420(∑[char[∑[n+1]]])+n-C(∑[char[∑[n]]], 2)` -/
def P5270386211764619736.Spec : Prop :=
  ∀ n, P5270386211764619736.a n = A060511 n

end A060511

/-! ## A060511.P5521681015787908984

`n-C(∑[char[∑[n+1]]], 2)+2-A141310(∑[char[∑[n]]])`
-/

namespace A060511.P5521681015787908984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2 - A141310 (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A060511.P5521681015787908984

namespace A060511

/-- `n-C(∑[char[∑[n+1]]], 2)+2-A141310(∑[char[∑[n]]])` -/
def P5521681015787908984.Spec : Prop :=
  ∀ n, P5521681015787908984.a n = A060511 n

end A060511

/-! ## A060511.P17472657796066499884

`A022998(∑[char[∑[n+1]]])-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A060511.P17472657796066499884
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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
  A022998 (∑ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A060511.P17472657796066499884

namespace A060511

/-- `A022998(∑[char[∑[n+1]]])-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P17472657796066499884.Spec : Prop :=
  ∀ n, P17472657796066499884.a n = A060511 n

end A060511

/-! ## A060511.P6613141027037058169

`n-A000384(A351846(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060511

/-- `n-A000384(A351846(n))` -/
def P6613141027037058169.Spec : Prop :=
  ∀ n, P6613141027037058169.a n = A060511 n

theorem P6613141027037058169.correct : P6613141027037058169.Spec := by
  intro n
  simp only [A060511]

end A060511

/-! ## A060511.P11363361308596002340

`A158405(n+1)+A003056(n)-A210530(n+1)`
-/

namespace A060511.P11363361308596002340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + (A003056 n - A210530 (n + 1))

end

end A060511.P11363361308596002340

namespace A060511

/-- `A158405(n+1)+A003056(n)-A210530(n+1)` -/
def P11363361308596002340.Spec : Prop :=
  ∀ n, P11363361308596002340.a n = A060511 n

end A060511

/-! ## A060511.P13733757321139999221

`A053186(lt[0, (-1)^floor(sqrt(n))])`
-/

namespace A060511.P13733757321139999221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060511.P13733757321139999221

namespace A060511

/-- `A053186(lt[0, (-1)^floor(sqrt(n))])` -/
def P13733757321139999221.Spec : Prop :=
  ∀ n, P13733757321139999221.a n = A060511 n

end A060511

/-! ## A060511.P10164232951915595448

`A053186(eq[1, (-1)^floor(sqrt(n))])`
-/

namespace A060511.P10164232951915595448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060511.P10164232951915595448

namespace A060511

/-- `A053186(eq[1, (-1)^floor(sqrt(n))])` -/
def P10164232951915595448.Spec : Prop :=
  ∀ n, P10164232951915595448.a n = A060511 n

end A060511

/-! ## A060511.P12352210243080840226

`A053186(A280682(n+1))`
-/

namespace A060511.P12352210243080840226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A280682 (n + 1)).toNat

end

end A060511.P12352210243080840226

namespace A060511

/-- `A053186(A280682(n+1))` -/
def P12352210243080840226.Spec : Prop :=
  ∀ n, P12352210243080840226.a n = A060511 n

end A060511

/-!
# A060514: Triangle T(n,k) of series-reduced (or homeomorphically irreducible) labeled graphs with n nodes and k edges, k=0..binomial(n,2).

The programs for A060514, there is no canonical definition to state claims against.
-/

/-! ## A060514.P15671772307347325336

`A196368(A000383(n))*A271023(n)`
-/

namespace A060514.P15671772307347325336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A000383 n).toNat * A271023 n

end

end A060514.P15671772307347325336

/-! ## A060514.P8439799446858287491

`A271023(n)%A244006(A028878(n))`
-/

namespace A060514.P8439799446858287491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271023 n) (A244006 (A028878 n).toNat)

end

end A060514.P8439799446858287491

/-! ## A060514.P1358308509945825362

`A271023(n-A025465(A211624(n)))`
-/

namespace A060514.P1358308509945825362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271023 ((n : ℤ) - A025465 (A211624 n).toNat).toNat

end

end A060514.P1358308509945825362

/-! ## A060514.P5223048588888351622

`A271023(n)-A353481(A026010(n))`
-/

namespace A060514.P5223048588888351622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271023 n - A353481 (A026010 n).toNat

end

end A060514.P5223048588888351622

/-! ## A060514.P16890889068777570801

`xor(A025465(A211624(n)), A271023(n))`
-/

namespace A060514.P16890889068777570801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025465 (A211624 n).toNat) (A271023 n)

end

end A060514.P16890889068777570801

/-!
# A060515: Integers i > 1 for which there is no prime p such that i is a solution mod p of x^2 = 2.

The programs for A060515, there is no canonical definition to state claims against.
-/

/-! ## A060515.P11760970819742612864

`eq[0, A059772(n+2)]+2`
-/

namespace A060515.P11760970819742612864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A060515.P11760970819742612864

/-! ## A060515.P1120610708538956287

`record[A029578(2*(n+2))-A059772(n+2)]`
-/

namespace A060515.P1120610708538956287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * (n + 2)) - A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060515.P1120610708538956287

/-! ## A060515.P3407508428417476913

`A001057(record[A144396(n+1)-A059772(n+2)])`
-/

namespace A060515.P3407508428417476913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060515.P3407508428417476913

/-! ## A060515.P8424085585558985058

`A008619(record[A144396(n+1)-A059772(n+2)])`
-/

namespace A060515.P8424085585558985058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060515.P8424085585558985058

/-! ## A060515.P2011006041502145184

`A065033(record[A144396(n+1)-A059772(n+2)])`
-/

namespace A060515.P2011006041502145184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - A059772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060515.P2011006041502145184

/-! ## A060515.P6263102959597967870

`record[gcd(A008611(3*n+5), A059772(n+2))]`
-/

namespace A060515.P6263102959597967870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 (3 * n + 5)) (A059772 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060515.P6263102959597967870

/-! ## A060515.P11662978013650440076

`record[A233583(n+1)-A059772(A233583(n+1))]`
-/

namespace A060515.P11662978013650440076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A059772 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060515.P11662978013650440076

/-!
# A060516: Number of series-reduced (or homeomorphically irreducible) graphs with loops on n labeled nodes.

The programs for A060516, there is no canonical definition to state claims against.
-/

/-! ## A060516.P10156031381627495393

`xor(n^n, A328746(C(n, 2)))`
-/

namespace A060516.P10156031381627495393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ n : ℤ) (A328746 (Nat.choose n 2))

end

end A060516.P10156031381627495393

/-!
# A060521: Number of 3 X n grids of black and white cells, no 3 of same color vertically or horizontally contiguous.

The programs for A060521, the canonical program `A060521.P8646143590663438384` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060521 has offset 1).

The definition of A060521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060521.P8646143590663438384

`2*A238649(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060521

/-- `2*A238649(n+1)` -/
def P8646143590663438384.Spec : Prop :=
  ∀ n, P8646143590663438384.a n = A060521 (n + 1)

theorem P8646143590663438384.correct : P8646143590663438384.Spec := by
  intro n
  simp only [A060521, Nat.add_sub_cancel]

end A060521

/-! ## A060521.P6666147082060845813

`A208287(∑[n+2]+4)`
-/

namespace A060521.P6666147082060845813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A060521.P6666147082060845813

namespace A060521

/-- `A208287(∑[n+2]+4)` -/
def P6666147082060845813.Spec : Prop :=
  ∀ n, P6666147082060845813.a n = A060521 (n + 1)

end A060521

/-! ## A060521.P13573169987434652165

`A208420(∑[n+2]+4)`
-/

namespace A060521.P13573169987434652165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A060521.P13573169987434652165

namespace A060521

/-- `A208420(∑[n+2]+4)` -/
def P13573169987434652165.Spec : Prop :=
  ∀ n, P13573169987434652165.a n = A060521 (n + 1)

end A060521

/-! ## A060521.P11749446535566367118

`A208028(∑[n+2]+4)`
-/

namespace A060521.P11749446535566367118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A060521.P11749446535566367118

namespace A060521

/-- `A208028(∑[n+2]+4)` -/
def P11749446535566367118.Spec : Prop :=
  ∀ n, P11749446535566367118.a n = A060521 (n + 1)

end A060521

/-! ## A060521.P9322647539871597996

`A207808(∑[n+2]+4)`
-/

namespace A060521.P9322647539871597996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A060521.P9322647539871597996

namespace A060521

/-- `A207808(∑[n+2]+4)` -/
def P9322647539871597996.Spec : Prop :=
  ∀ n, P9322647539871597996.a n = A060521 (n + 1)

end A060521

/-!
# A060522: Number of 4 X n grids of black and white cells, no 3 of same color vertically or horizontally contiguous.

The programs for A060522, there is no canonical definition to state claims against.
-/

/-! ## A060522.P4218031159995825935

`2*A238650(n+1)`
-/

namespace A060522.P4218031159995825935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238650 (n + 1)

end

end A060522.P4218031159995825935

/-! ## A060522.P7864198955193593406

`A238650(n+1)+A238650(gcd(n, n+1)+n)`
-/

namespace A060522.P7864198955193593406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238650 (n + 1) + A238650 (Nat.gcd n (n + 1) + n)

end

end A060522.P7864198955193593406

/-! ## A060522.P5328714233752279341

`A238650(A000027(n+1))+A238650(n+1)`
-/

namespace A060522.P5328714233752279341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238650 (A000027 (n + 1)).toNat + A238650 (n + 1)

end

end A060522.P5328714233752279341

/-! ## A060522.P6621120179875573285

`A238650(A028310(n+1))+A238650(n+1)`
-/

namespace A060522.P6621120179875573285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238650 (A028310 (n + 1)).toNat + A238650 (n + 1)

end

end A060522.P6621120179875573285

/-! ## A060522.P1170372688596586219

`A238650(n+1)+A238650(n+1)%A238650(n+2)`
-/

namespace A060522.P1170372688596586219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238650 (n + 1) + Int.tmod (A238650 (n + 1)) (A238650 (n + 2))

end

end A060522.P1170372688596586219

/-!
# A060524: Triangle read by rows: T(n,k) = number of degree-n permutations with k odd cycles, k=0..n, n >= 0.

The programs for A060524, the canonical program `A060524.P6748931632294556836` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060524 has offset 0).

The definition of A060524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060524.P6748931632294556836

`T(n-1,k-1)+(row(n)-1)²*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060524

/-- `T(n-1,k-1)+(row(n)-1)²*T(n-2,k)` -/
def P6748931632294556836.Spec : Prop :=
  ∀ n, P6748931632294556836.a n = A060524 n

theorem P6748931632294556836.correct : P6748931632294556836.Spec := by
  intro n
  simp only [A060524]

end A060524

/-! ## A060524.P15363929009846443738

`T(n-1,k-1)+(1-row(n))*(1-row(n))*T(n-2,k)` with `a(0)=1`
-/

namespace A060524.P15363929009846443738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - (SequenceMachineLib.triRow n : ℤ)) * (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2 a n

end

end A060524.P15363929009846443738

namespace A060524

/-- `T(n-1,k-1)+(1-row(n))*(1-row(n))*T(n-2,k)` -/
def P15363929009846443738.Spec : Prop :=
  ∀ n, P15363929009846443738.a n = A060524 n

theorem P15363929009846443738.correct : P15363929009846443738.Spec := by
  intro n
  simp only [A060524, Nat.add_sub_cancel, A060524.P15363929009846443738.a, A060524.P6748931632294556836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060524

/-! ## A060524.P15022916997742656330

`T(n-1,k-1)-(1-row(n))*(row(n)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A060524.P15022916997742656330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triRow n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2 a n

end

end A060524.P15022916997742656330

namespace A060524

/-- `T(n-1,k-1)-(1-row(n))*(row(n)-1)*T(n-2,k)` -/
def P15022916997742656330.Spec : Prop :=
  ∀ n, P15022916997742656330.a n = A060524 n

theorem P15022916997742656330.correct : P15022916997742656330.Spec := by
  intro n
  simp only [A060524, Nat.add_sub_cancel, A060524.P15022916997742656330.a, A060524.P6748931632294556836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060524

/-! ## A060524.P9077655941393804073

`A060338(∑[2*n]%comp[∑[n]])`
-/

namespace A060524.P9077655941393804073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A060524.P9077655941393804073

namespace A060524

/-- `A060338(∑[2*n]%comp[∑[n]])` -/
def P9077655941393804073.Spec : Prop :=
  ∀ n, P9077655941393804073.a n = A060524 n

end A060524

/-! ## A060524.P16954592291395794389

`A060338(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060524.P16954592291395794389
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060524.P16954592291395794389

namespace A060524

/-- `A060338(∑[char[∑[n]]]²-(n+1))` -/
def P16954592291395794389.Spec : Prop :=
  ∀ n, P16954592291395794389.a n = A060524 n

end A060524

/-! ## A060524.P4571211944885620443

`or(char[2], A060338(A061579(n)))`
-/

namespace A060524.P4571211944885620443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060338 (A061579 n).toNat)

end

end A060524.P4571211944885620443

namespace A060524

/-- `or(char[2], A060338(A061579(n)))` -/
def P4571211944885620443.Spec : Prop :=
  ∀ n, P4571211944885620443.a n = A060524 n

end A060524

/-! ## A060524.P5322033779822480436

`A060097(n)*A060338(A061579(n))`
-/

namespace A060524.P5322033779822480436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060097 n * A060338 (A061579 n).toNat

end

end A060524.P5322033779822480436

namespace A060524

/-- `A060097(n)*A060338(A061579(n))` -/
def P5322033779822480436.Spec : Prop :=
  ∀ n, P5322033779822480436.a n = A060524 n

end A060524

/-! ## A060524.P4427825349672887933

`A060338(A061579(n))*A060576(n)`
-/

namespace A060524.P4427825349672887933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 (A061579 n).toNat * A060576 n

end

end A060524.P4427825349672887933

namespace A060524

/-- `A060338(A061579(n))*A060576(n)` -/
def P4427825349672887933.Spec : Prop :=
  ∀ n, P4427825349672887933.a n = A060524 n

end A060524

/-! ## A060524.P16619951994912311822

`A060338(A061579(n))*A097807(n)`
-/

namespace A060524.P16619951994912311822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 (A061579 n).toNat * A097807 n

end

end A060524.P16619951994912311822

namespace A060524

/-- `A060338(A061579(n))*A097807(n)` -/
def P16619951994912311822.Spec : Prop :=
  ∀ n, P16619951994912311822.a n = A060524 n

end A060524

/-! ## A060524.P6330307060279174

`gcd(A000038(n), A060338(A061579(n)))`
-/

namespace A060524.P6330307060279174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060338 (A061579 n).toNat)

end

end A060524.P6330307060279174

namespace A060524

/-- `gcd(A000038(n), A060338(A061579(n)))` -/
def P6330307060279174.Spec : Prop :=
  ∀ n, (P6330307060279174.a n : ℤ) = A060524 n

end A060524

/-! ## A060524.P8347754580143060095

`A060338(A061579(n))+A001222(gcd(n, n+1))`
-/

namespace A060524.P8347754580143060095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 (A061579 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A060524.P8347754580143060095

namespace A060524

/-- `A060338(A061579(n))+A001222(gcd(n, n+1))` -/
def P8347754580143060095.Spec : Prop :=
  ∀ n, P8347754580143060095.a n = A060524 n

end A060524

/-! ## A060524.P9365172911236278144

`A060338(A061579(n))%A000032(n+2)`
-/

namespace A060524.P9365172911236278144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060338 (A061579 n).toNat) (A000032 (n + 2))

end

end A060524.P9365172911236278144

namespace A060524

/-- `A060338(A061579(n))%A000032(n+2)` -/
def P9365172911236278144.Spec : Prop :=
  ∀ n, P9365172911236278144.a n = A060524 n

end A060524

/-!
# A060525: A list of equal temperaments (equal divisions of the octave) whose nearest scale steps are closer and closer approximations to four of the simple ratios of musical harmony: 5/4, 4/3, 3/2 and 8/5.

The programs for A060525, there is no canonical definition to state claims against.
-/

/-! ## A060525.P7409707815943831630

`A247886(n+1)-A000002(A001008(n+1))`
-/

namespace A060525.P7409707815943831630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247886 (n + 1) - A000002 (A001008 (n + 1)).toNat

end

end A060525.P7409707815943831630

/-! ## A060525.P12700861674423267819

`A316842(A002522(n)*A167932(2*n+3))`
-/

namespace A060525.P12700861674423267819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316842 (A002522 n * A167932 (2 * n + 3)).toNat

end

end A060525.P12700861674423267819

/-!
# A060527: A list of equal temperaments (equal divisions of the octave) whose nearest scale steps are closer and closer approximations to the ratios of 8 musical tones: 8/7 16/11 5/4 4/3 3/2 8/5 11/8 7/4.

The programs for A060527, there is no canonical definition to state claims against.
-/

/-! ## A060527.P14610150288874546308

`lt[A003961(A064861(3*n)), A085713(n+1)]`
-/

namespace A060527.P14610150288874546308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064861 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085713 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060527.P14610150288874546308

/-! ## A060527.P466512750062560608

`lt[A327245(3*n), A180001(A157884(n+1))]`
-/

namespace A060527.P466512750062560608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180001 (A157884 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060527.P466512750062560608

/-! ## A060527.P9935531666852042777

`lt[A214568(3*n+1), A075020(A075020(n+1))]`
-/

namespace A060527.P9935531666852042777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214568 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075020 (A075020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060527.P9935531666852042777

/-! ## A060527.P895063472318242281

`lt[A255903(3*n), A209831(A328594(2*(n+2)))]`
-/

namespace A060527.P895063472318242281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209831 (A328594 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060527.P895063472318242281

/-! ## A060527.P9536517219194247651

`lt[A237427(A034261(3*(n+1))), A345428(n+1)]+1`
-/

namespace A060527.P9536517219194247651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237427 (A034261 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A060527.P9536517219194247651

/-!
# A060528: A list of equal temperaments (equal divisions of the octave) whose nearest scale steps are closer and closer approximations to the ratios of two tones of musical harmony: the perfect 4th, 4/3 and its complement the perfect 5th, 3/2.

The programs for A060528, there is no canonical definition to state claims against.
-/

/-! ## A060528.P5692467819797848390

`A206788(A279757(n)+A032555(n+1))`
-/

namespace A060528.P5692467819797848390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206788 (A279757 n + A032555 (n + 1)).toNat

end

end A060528.P5692467819797848390

/-! ## A060528.P4099943632775893371

`A206788(A204553(n+1)+A032555(n+1))`
-/

namespace A060528.P4099943632775893371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206788 (A204553 (n + 1) + A032555 (n + 1)).toNat

end

end A060528.P4099943632775893371

/-!
# A060530: Number of inequivalent ways to color edges of a cube using at most n colors.

The programs for A060530, the canonical program `A060530.P4965103452131502112` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060530 has offset 0).

The definition of A060530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060530.P4965103452131502112

`(n^12+6*n^7+3*n^6+8*n^4+6*n^3)/24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060530

/-- `(n^12+6*n^7+3*n^6+8*n^4+6*n^3)/24` -/
def P4965103452131502112.Spec : Prop :=
  ∀ n, P4965103452131502112.a n = (A060530 n : ℚ)

end A060530

/-! ## A060530.P6393488394108189199

`A100794(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A060530.P6393488394108189199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100794 (n - 1) + a (n - 1)

end

end A060530.P6393488394108189199

namespace A060530

/-- `A100794(n-1)+a(n-1)` -/
def P6393488394108189199.Spec : Prop :=
  ∀ n, P6393488394108189199.a n = A060530 n

end A060530

/-! ## A060530.P12782725941264106989

`∑[A100794(n)]-A100794(n)`
-/

namespace A060530.P12782725941264106989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100794 n

end

end A060530.P12782725941264106989

namespace A060530

/-- `∑[A100794(n)]-A100794(n)` -/
def P12782725941264106989.Spec : Prop :=
  ∀ n, P12782725941264106989.a n = A060530 n

end A060530

/-! ## A060530.P9241054947710478136

`A199406(n+1)+A337406(n+1)-A100794(n)`
-/

namespace A060530.P9241054947710478136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199406 (n + 1) + (A337406 (n + 1) - A100794 n)

end

end A060530.P9241054947710478136

namespace A060530

/-- `A199406(n+1)+A337406(n+1)-A100794(n)` -/
def P9241054947710478136.Spec : Prop :=
  ∀ n, P9241054947710478136.a n = A060530 n

end A060530

/-!
# A060531: 9th binomial transform of (1,0,1,0,1,...), A059841.

The programs for A060531, the canonical program `A060531.P15645007764344666475` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060531 has offset 0).

The definition of A060531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060531.P13189546479549595170

`ogf((1-9x)/(1-18x+80x^2))`
-/

namespace A060531.P13189546479549595170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -18, 80] n

end

end A060531.P13189546479549595170

namespace A060531

/-- `ogf((1-9x)/(1-18x+80x^2))` -/
def P13189546479549595170.Spec : Prop :=
  ∀ n, P13189546479549595170.a n = A060531 n

end A060531

/-! ## A060531.P15645007764344666475

`8*a(n-1)+10^(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060531

/-- `8*a(n-1)+10^(n-1)` -/
def P15645007764344666475.Spec : Prop :=
  ∀ n, P15645007764344666475.a n = (A060531 n : ℚ)

end A060531

/-! ## A060531.P17207743642376009556

`2^(n-1)*(4^n+5^n)`
-/

namespace A060531.P17207743642376009556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (4 ^ n + 5 ^ n : ℚ)

end

end A060531.P17207743642376009556

namespace A060531

/-- `2^(n-1)*(4^n+5^n)` -/
def P17207743642376009556.Spec : Prop :=
  ∀ n, P17207743642376009556.a n = (A060531 n : ℚ)

end A060531

/-! ## A060531.P154310170360568211

`10^n-(A155667(n)-1)/2`
-/

namespace A060531.P154310170360568211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) - (A155667 n - 1 : ℚ) / 2

end

end A060531.P154310170360568211

namespace A060531

/-- `10^n-(A155667(n)-1)/2` -/
def P154310170360568211.Spec : Prop :=
  ∀ n, P154310170360568211.a n = (A060531 n : ℚ)

end A060531

/-! ## A060531.P14102574592544307674

`A081203(n)+A001018(n)`
-/

namespace A060531.P14102574592544307674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 n + A001018 n

end

end A060531.P14102574592544307674

namespace A060531

/-- `A081203(n)+A001018(n)` -/
def P14102574592544307674.Spec : Prop :=
  ∀ n, P14102574592544307674.a n = A060531 n

end A060531

/-! ## A060531.P2056540603852538542

`A081203(n)+A000079(3*n)`
-/

namespace A060531.P2056540603852538542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 n + A000079 (3 * n)

end

end A060531.P2056540603852538542

namespace A060531

/-- `A081203(n)+A000079(3*n)` -/
def P2056540603852538542.Spec : Prop :=
  ∀ n, P2056540603852538542.a n = A060531 n

end A060531

/-! ## A060531.P10375425995453673947

`A151821(A008486(n))+A081203(n)`
-/

namespace A060531.P10375425995453673947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (A008486 n).toNat + A081203 n

end

end A060531.P10375425995453673947

namespace A060531

/-- `A151821(A008486(n))+A081203(n)` -/
def P10375425995453673947.Spec : Prop :=
  ∀ n, P10375425995453673947.a n = A060531 n

end A060531

/-! ## A060531.P5205852926235286864

`ceil(A155664(n)/2)`
-/

namespace A060531.P5205852926235286864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155664 n : ℚ) / 2⌉

end

end A060531.P5205852926235286864

namespace A060531

/-- `ceil(A155664(n)/2)` -/
def P5205852926235286864.Spec : Prop :=
  ∀ n, P5205852926235286864.a n = A060531 n

end A060531

/-! ## A060531.P17328679283184888149

`(A011557(n)+A001018(n))/2`
-/

namespace A060531.P17328679283184888149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n + A001018 n : ℚ) / 2

end

end A060531.P17328679283184888149

namespace A060531

/-- `(A011557(n)+A001018(n))/2` -/
def P17328679283184888149.Spec : Prop :=
  ∀ n, P17328679283184888149.a n = (A060531 n : ℚ)

end A060531

/-! ## A060531.P2220158063260123206

`(A155669(n)-A155666(n))/2+1`
-/

namespace A060531.P2220158063260123206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155669 n - A155666 n : ℚ) / 2 + 1

end

end A060531.P2220158063260123206

namespace A060531

/-- `(A155669(n)-A155666(n))/2+1` -/
def P2220158063260123206.Spec : Prop :=
  ∀ n, P2220158063260123206.a n = (A060531 n : ℚ)

end A060531

/-! ## A060531.P13167300431707962013

`floor(A293305(∑[n])+A155664(n)/2)`
-/

namespace A060531.P13167300431707962013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293305 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (A155664 n : ℚ) / 2⌋

end

end A060531.P13167300431707962013

namespace A060531

/-- `floor(A293305(∑[n])+A155664(n)/2)` -/
def P13167300431707962013.Spec : Prop :=
  ∀ n, P13167300431707962013.a n = A060531 n

end A060531

/-!
# A060532: Number of ways to color vertices of a heptagon using <= n colors, allowing rotations and reflections.

The programs for A060532, the canonical program `A060532.P12302933573445705595` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060532 has offset 0).

The definition of A060532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060532.P12302933573445705595

`(n^7+7*n^4+6*n)/14`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060532

/-- `(n^7+7*n^4+6*n)/14` -/
def P12302933573445705595.Spec : Prop :=
  ∀ n, P12302933573445705595.a n = (A060532 n : ℚ)

end A060532

/-! ## A060532.P17266164574006558784

`ogf((x+10x^2+82x^3+164x^4+101x^5+2x^6)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A060532.P17266164574006558784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10, 82, 164, 101, 2] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A060532.P17266164574006558784

namespace A060532

/-- `ogf((x+10x^2+82x^3+164x^4+101x^5+2x^6)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P17266164574006558784.Spec : Prop :=
  ∀ n, P17266164574006558784.a n = A060532 n

end A060532

/-! ## A060532.P6074152085936942186

`A208545(n+1)+A027441(n)`
-/

namespace A060532.P6074152085936942186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208545 (n + 1) + A027441 n

end

end A060532.P6074152085936942186

namespace A060532

/-- `A208545(n+1)+A027441(n)` -/
def P6074152085936942186.Spec : Prop :=
  ∀ n, P6074152085936942186.a n = A060532 n

end A060532

/-! ## A060532.P14674123419070104222

`A208545(n+1)+∑[A212133(n)]`
-/

namespace A060532.P14674123419070104222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208545 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060532.P14674123419070104222

namespace A060532

/-- `A208545(n+1)+∑[A212133(n)]` -/
def P14674123419070104222.Spec : Prop :=
  ∀ n, P14674123419070104222.a n = A060532 n

end A060532

/-! ## A060532.P2342169367413535681

`A027441(n)+A208537(n+1)/2`
-/

namespace A060532.P2342169367413535681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027441 n : ℚ) + (A208537 (n + 1) : ℚ) / 2

end

end A060532.P2342169367413535681

namespace A060532

/-- `A027441(n)+A208537(n+1)/2` -/
def P2342169367413535681.Spec : Prop :=
  ∀ n, P2342169367413535681.a n = (A060532 n : ℚ)

end A060532

/-! ## A060532.P2211536830842370791

`A208545(n+1)+A000217(n)*A002061(n)`
-/

namespace A060532.P2211536830842370791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208545 (n + 1) + A000217 n * A002061 n

end

end A060532.P2211536830842370791

namespace A060532

/-- `A208545(n+1)+A000217(n)*A002061(n)` -/
def P2211536830842370791.Spec : Prop :=
  ∀ n, P2211536830842370791.a n = A060532 n

end A060532

/-!
# A060533: Number of homeomorphically irreducible multigraphs (or series-reduced multigraphs or multigraphs without nodes of degree 2) on 3 labeled nodes.

The programs for A060533, the canonical program `A060533.P1110712874726294285` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060533 has offset 0).

The definition of A060533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060533.P5318717281856693651

`ogf((1-6x^2+11x^3-3x^4-6x^5+7x^6-3x^7)/(1-3x+3x^2-x^3))`
-/

namespace A060533.P5318717281856693651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6, 11, -3, -6, 7, -3] [1, -3, 3, -1] n

end

end A060533.P5318717281856693651

namespace A060533

/-- `ogf((1-6x^2+11x^3-3x^4-6x^5+7x^6-3x^7)/(1-3x+3x^2-x^3))` -/
def P5318717281856693651.Spec : Prop :=
  ∀ n, P5318717281856693651.a n = A060533 n

end A060533

/-! ## A060533.P1110712874726294285

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=0, a(3)=3, a(4)=9, a(5)=12, a(6)=19, a(7)=27`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060533

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1110712874726294285.Spec : Prop :=
  ∀ n, P1110712874726294285.a n = A060533 n

theorem P1110712874726294285.correct : P1110712874726294285.Spec := by
  intro n
  simp only [A060533]

end A060533

/-!
# A060535: Number of homeomorphically irreducible multigraphs (or series-reduced multigraphs or multigraphs without nodes of degree 2) on 5 labeled nodes.

The programs for A060535, there is no canonical definition to state claims against.
-/

/-! ## A060535.P12463520498859394856

`A379840(A049945(n+2))`
-/

namespace A060535.P12463520498859394856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379840 (A049945 (n + 2)).toNat

end

end A060535.P12463520498859394856

/-!
# A060536: Number of homeomorphically irreducible multigraphs (or series-reduced multigraphs or multigraphs without nodes of degree 2) on 6 labeled nodes.

The programs for A060536, there is no canonical definition to state claims against.
-/

/-! ## A060536.P18282403415330985813

`filter[A121014(2*n+1), A228747(#)]`
-/

namespace A060536.P18282403415330985813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228747 (f1 j).toNat = 1) n)

end

end A060536.P18282403415330985813

/-!
# A060538: Square array read by antidiagonals of number of ways of dividing n*k labeled items into n labeled boxes with k items in each box.

The programs for A060538, the canonical program `A060538.P17621897443951003271` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060538 has offset 1).

The definition of A060538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060538.P17621897443951003271

`((col(n)+1)*(row(n)-col(n)+1))!/(row(n)-col(n)+1)!^(col(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060538

/-- `((col(n)+1)*(row(n)-col(n)+1))!/(row(n)-col(n)+1)!^(col(n)+1)` -/
def P17621897443951003271.Spec : Prop :=
  ∀ n, P17621897443951003271.a n = (A060538 (n + 1) : ℚ)

end A060538

/-! ## A060538.P8252536530656079859

`A187783(eq[0, A103451(n)])`
-/

namespace A060538.P8252536530656079859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060538.P8252536530656079859

namespace A060538

/-- `A187783(eq[0, A103451(n)])` -/
def P8252536530656079859.Spec : Prop :=
  ∀ n, P8252536530656079859.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P3062200246252939244

`A187783(lt[1, A007318(n)])`
-/

namespace A060538.P3062200246252939244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060538.P3062200246252939244

namespace A060538

/-- `A187783(lt[1, A007318(n)])` -/
def P3062200246252939244.Spec : Prop :=
  ∀ n, P3062200246252939244.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P16862245445559436804

`A187783(lt[1, A268436(n)])`
-/

namespace A060538.P16862245445559436804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060538.P16862245445559436804

namespace A060538

/-- `A187783(lt[1, A268436(n)])` -/
def P16862245445559436804.Spec : Prop :=
  ∀ n, P16862245445559436804.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P15360263745346196519

`A187783(2*A080036(n)-n)`
-/

namespace A060538.P15360263745346196519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (2 * A080036 n - (n : ℤ)).toNat

end

end A060538.P15360263745346196519

namespace A060538

/-- `A187783(2*A080036(n)-n)` -/
def P15360263745346196519.Spec : Prop :=
  ∀ n, P15360263745346196519.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P2445599023153243860

`A187783(A080036(comp[∑[n-1]]))`
-/

namespace A060538.P2445599023153243860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A080036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A060538.P2445599023153243860

namespace A060538

/-- `A187783(A080036(comp[∑[n-1]]))` -/
def P2445599023153243860.Spec : Prop :=
  ∀ n, P2445599023153243860.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P4936053581878053223

`A060540(n+1)*A166350(n+1)`
-/

namespace A060538.P4936053581878053223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (n + 1) * A166350 (n + 1)

end

end A060538.P4936053581878053223

namespace A060538

/-- `A060540(n+1)*A166350(n+1)` -/
def P4936053581878053223.Spec : Prop :=
  ∀ n, P4936053581878053223.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P13743835020900968669

`A187783(2*A014132(n+1)-n)`
-/

namespace A060538.P13743835020900968669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A060538.P13743835020900968669

namespace A060538

/-- `A187783(2*A014132(n+1)-n)` -/
def P13743835020900968669.Spec : Prop :=
  ∀ n, P13743835020900968669.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P936790668130252357

`A002260(n+1)!*A060540(n+1)`
-/

namespace A060538.P936790668130252357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A060540 (n + 1)

end

end A060538.P936790668130252357

namespace A060538

/-- `A002260(n+1)!*A060540(n+1)` -/
def P936790668130252357.Spec : Prop :=
  ∀ n, P936790668130252357.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P15248066085259627990

`A187783(A014132(A080036(n)))`
-/

namespace A060538.P15248066085259627990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A014132 (A080036 n).toNat).toNat

end

end A060538.P15248066085259627990

namespace A060538

/-- `A187783(A014132(A080036(n)))` -/
def P15248066085259627990.Spec : Prop :=
  ∀ n, P15248066085259627990.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P299433237282302555

`A060540(n+1)*A233543(A080036(n))`
-/

namespace A060538.P299433237282302555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (n + 1) * A233543 (A080036 n).toNat

end

end A060538.P299433237282302555

namespace A060538

/-- `A060540(n+1)*A233543(A080036(n))` -/
def P299433237282302555.Spec : Prop :=
  ∀ n, P299433237282302555.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P8323609471586155317

`A187783(A080036(n)+A080036(n)-n)`
-/

namespace A060538.P8323609471586155317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A080036 n + (A080036 n - (n : ℤ))).toNat

end

end A060538.P8323609471586155317

namespace A060538

/-- `A187783(A080036(n)+A080036(n)-n)` -/
def P8323609471586155317.Spec : Prop :=
  ∀ n, P8323609471586155317.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P13233739145837289572

`A187783(A080036(n)-(n-A080036(n)))`
-/

namespace A060538.P13233739145837289572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A080036 n - ((n : ℤ) - A080036 n)).toNat

end

end A060538.P13233739145837289572

namespace A060538

/-- `A187783(A080036(n)-(n-A080036(n)))` -/
def P13233739145837289572.Spec : Prop :=
  ∀ n, P13233739145837289572.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P11293379438184660075

`A187783(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A060538.P11293379438184660075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A060538.P11293379438184660075

namespace A060538

/-- `A187783(A014132(n+1)+A014132(n+1)-n)` -/
def P11293379438184660075.Spec : Prop :=
  ∀ n, P11293379438184660075.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P11575619786824867565

`A200473(A056535(n+1))*A233543(A080036(n))`
-/

namespace A060538.P11575619786824867565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200473 (A056535 (n + 1)).toNat * A233543 (A080036 n).toNat

end

end A060538.P11575619786824867565

namespace A060538

/-- `A200473(A056535(n+1))*A233543(A080036(n))` -/
def P11575619786824867565.Spec : Prop :=
  ∀ n, P11575619786824867565.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P13749138529744181432

`A187783(record[(n+1)%A060540(n+1)])`
-/

namespace A060538.P13749138529744181432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A060540 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060538.P13749138529744181432

namespace A060538

/-- `A187783(record[(n+1)%A060540(n+1)])` -/
def P13749138529744181432.Spec : Prop :=
  ∀ n, P13749138529744181432.a n = A060538 (n + 1)

end A060538

/-! ## A060538.P6751333820306871293

`A187783(lt[1, A060540(n+1)])`
-/

namespace A060538.P6751333820306871293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060538.P6751333820306871293

namespace A060538

/-- `A187783(lt[1, A060540(n+1)])` -/
def P6751333820306871293.Spec : Prop :=
  ∀ n, P6751333820306871293.a n = A060538 (n + 1)

end A060538

/-!
# A060539: Table by antidiagonals of number of ways of choosing k items from n*k.

The programs for A060539, the canonical program `A060539.P3903810983094009172` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060539 has offset 1).

The definition of A060539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060539.P3903810983094009172

`C((col(n)+1)*(row(n)-col(n)+1), row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060539

/-- `C((col(n)+1)*(row(n)-col(n)+1), row(n)-col(n)+1)` -/
def P3903810983094009172.Spec : Prop :=
  ∀ n, (P3903810983094009172.a n : ℤ) = A060539 (n + 1)

theorem P3903810983094009172.correct : P3903810983094009172.Spec := by
  intro n
  simp only [A060539, Nat.add_sub_cancel]

end A060539

/-! ## A060539.P12832652050739572040

`A002260(n+1)*A060543(n)`
-/

namespace A060539.P12832652050739572040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A060543 n

end

end A060539.P12832652050739572040

namespace A060539

/-- `A002260(n+1)*A060543(n)` -/
def P12832652050739572040.Spec : Prop :=
  ∀ n, P12832652050739572040.a n = A060539 (n + 1)

end A060539

/-! ## A060539.P10509322735981790855

`(A002262(n)+1)*A060543(n)`
-/

namespace A060539.P10509322735981790855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A060543 n

end

end A060539.P10509322735981790855

namespace A060539

/-- `(A002262(n)+1)*A060543(n)` -/
def P10509322735981790855.Spec : Prop :=
  ∀ n, P10509322735981790855.a n = A060539 (n + 1)

end A060539

/-! ## A060539.P5030766140767735524

`A004737(A004202(n+1))*A060543(n)`
-/

namespace A060539.P5030766140767735524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A004202 (n + 1)).toNat * A060543 n

end

end A060539.P5030766140767735524

namespace A060539

/-- `A004737(A004202(n+1))*A060543(n)` -/
def P5030766140767735524.Spec : Prop :=
  ∀ n, P5030766140767735524.a n = A060539 (n + 1)

end A060539

/-! ## A060539.P15345650391431450457

`C(A003991(n+1), A004736(n+1))`
-/

namespace A060539.P15345650391431450457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003991 (n + 1)).toNat (A004736 (n + 1)).toNat

end

end A060539.P15345650391431450457

namespace A060539

/-- `C(A003991(n+1), A004736(n+1))` -/
def P15345650391431450457.Spec : Prop :=
  ∀ n, (P15345650391431450457.a n : ℤ) = A060539 (n + 1)

end A060539

/-! ## A060539.P9763257495546057790

`C(A002260(n+1)*A004736(n+1), A004736(n+1))`
-/

namespace A060539.P9763257495546057790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1) * A004736 (n + 1)).toNat (A004736 (n + 1)).toNat

end

end A060539.P9763257495546057790

namespace A060539

/-- `C(A002260(n+1)*A004736(n+1), A004736(n+1))` -/
def P9763257495546057790.Spec : Prop :=
  ∀ n, (P9763257495546057790.a n : ℤ) = A060539 (n + 1)

end A060539

/-! ## A060539.P7727899968934339381

`C(A003991(n+1), A003991(n+1)/A002260(n+1))`
-/

namespace A060539.P7727899968934339381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003991 (n + 1)).toNat (SequenceMachineLib.roundAway ((A003991 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A060539.P7727899968934339381

namespace A060539

/-- `C(A003991(n+1), A003991(n+1)/A002260(n+1))` -/
def P7727899968934339381.Spec : Prop :=
  ∀ n, (P7727899968934339381.a n : ℤ) = A060539 (n + 1)

end A060539

/-! ## A060539.P12594233824031059322

`C(A057555(2*n+1)*A057555(2*(n+1)), A057555(2*(n+1)))`
-/

namespace A060539.P12594233824031059322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057555 (2 * n + 1) * A057555 (2 * (n + 1))).toNat (A057555 (2 * (n + 1))).toNat

end

end A060539.P12594233824031059322

namespace A060539

/-- `C(A057555(2*n+1)*A057555(2*(n+1)), A057555(2*(n+1)))` -/
def P12594233824031059322.Spec : Prop :=
  ∀ n, (P12594233824031059322.a n : ℤ) = A060539 (n + 1)

end A060539

/-! ## A060539.P16703684494385870479

`A007318(A004736(n+1)+A000217(A003991(n+1)))`
-/

namespace A060539.P16703684494385870479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004736 (n + 1) + A000217 (A003991 (n + 1)).toNat).toNat

end

end A060539.P16703684494385870479

namespace A060539

/-- `A007318(A004736(n+1)+A000217(A003991(n+1)))` -/
def P16703684494385870479.Spec : Prop :=
  ∀ n, P16703684494385870479.a n = A060539 (n + 1)

end A060539

/-! ## A060539.P7022989929446100076

`A007318(A000096(A003991(n+1))-A004736(n+1))`
-/

namespace A060539.P7022989929446100076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (A003991 (n + 1)).toNat - A004736 (n + 1)).toNat

end

end A060539.P7022989929446100076

namespace A060539

/-- `A007318(A000096(A003991(n+1))-A004736(n+1))` -/
def P7022989929446100076.Spec : Prop :=
  ∀ n, P7022989929446100076.a n = A060539 (n + 1)

end A060539

/-! ## A060539.P15365371998710120476

`A000005(A059268(n))*A060543(n)`
-/

namespace A060539.P15365371998710120476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A060543 n

end

end A060539.P15365371998710120476

namespace A060539

/-- `A000005(A059268(n))*A060543(n)` -/
def P15365371998710120476.Spec : Prop :=
  ∀ n, P15365371998710120476.a n = A060539 (n + 1)

end A060539

/-!
# A060540: Square array read by antidiagonals downwards: T(n,k) = (n*k)!/(k!^n*n!), (n>=1, k>=1), the number of ways of dividing nk labeled items into n unlabeled boxes with k items in each box.

The programs for A060540, the canonical program `A060540.P11282140095539086689` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060540 has offset 1).

The definition of A060540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060540.P11282140095539086689

`A060538(n+1)/A166350(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060540

/-- `A060538(n+1)/A166350(n+1)` -/
def P11282140095539086689.Spec : Prop :=
  ∀ n, P11282140095539086689.a n = (A060540 (n + 1) : ℚ)

end A060540

/-! ## A060540.P1527979389117410897

`A060538(n+1)/A002260(n+1)!`
-/

namespace A060540.P1527979389117410897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060538 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A060540.P1527979389117410897

namespace A060540

/-- `A060538(n+1)/A002260(n+1)!` -/
def P1527979389117410897.Spec : Prop :=
  ∀ n, P1527979389117410897.a n = (A060540 (n + 1) : ℚ)

end A060540

/-! ## A060540.P12889483376354962736

`A060538(n+1)/A233543(A080036(n))`
-/

namespace A060540.P12889483376354962736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060538 (n + 1) : ℚ) / (A233543 (A080036 n).toNat : ℚ)

end

end A060540.P12889483376354962736

namespace A060540

/-- `A060538(n+1)/A233543(A080036(n))` -/
def P12889483376354962736.Spec : Prop :=
  ∀ n, P12889483376354962736.a n = (A060540 (n + 1) : ℚ)

end A060540

/-! ## A060540.P7034550760960023857

`A060538(n+1)/(A002260(n+1)*A233543(n))`
-/

namespace A060540.P7034550760960023857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060538 (n + 1) : ℚ) / (A002260 (n + 1) * A233543 n : ℚ)

end

end A060540.P7034550760960023857

namespace A060540

/-- `A060538(n+1)/(A002260(n+1)*A233543(n))` -/
def P7034550760960023857.Spec : Prop :=
  ∀ n, P7034550760960023857.a n = (A060540 (n + 1) : ℚ)

end A060540

/-! ## A060540.P13806361739929347108

`A200473(A056535(n+1))`
-/

namespace A060540.P13806361739929347108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200473 (A056535 (n + 1)).toNat

end

end A060540.P13806361739929347108

namespace A060540

/-- `A200473(A056535(n+1))` -/
def P13806361739929347108.Spec : Prop :=
  ∀ n, P13806361739929347108.a n = A060540 (n + 1)

end A060540

/-!
# A060541: a(n) = binomial(4*n,4).

The programs for A060541, the canonical program `A060541.P3227994209697425568` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060541 has offset 1).

The definition of A060541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*(n+1), 4)` (program `A060541.P3227994209697425568`, by `A060541.P3227994209697425568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060541.P3227994209697425568

`C(4*(n+1), 4)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060541

/-- `C(4*(n+1), 4)` -/
def P3227994209697425568.Spec : Prop :=
  ∀ n, (P3227994209697425568.a n : ℤ) = A060541 (n + 1)

theorem P3227994209697425568.correct : P3227994209697425568.Spec := by
  intro n
  simp only [A060541, Nat.add_sub_cancel]

end A060541

/-! ## A060541.P13747039970475557440

`ogf((1+65x+155x^2+35x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A060541.P13747039970475557440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 65, 155, 35] [1, -5, 10, -10, 5, -1] n

end

end A060541.P13747039970475557440

namespace A060541

/-- `ogf((1+65x+155x^2+35x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13747039970475557440.Spec : Prop :=
  ∀ n, P13747039970475557440.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P4470289035091342463

`(n+1)*(2*(n+1)-1)*(4*(n+1)-1)*(4*(n+1)-3)/3`
-/

namespace A060541.P4470289035091342463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 1) * ((4 * (n + 1) : ℤ) - 1) * ((4 * (n + 1) : ℤ) - 3) : ℚ) / 3

end

end A060541.P4470289035091342463

namespace A060541

/-- `(n+1)*(2*(n+1)-1)*(4*(n+1)-1)*(4*(n+1)-3)/3` -/
def P4470289035091342463.Spec : Prop :=
  ∀ n, P4470289035091342463.a n = (A060541 (n + 1) : ℚ)

theorem P4470289035091342463.correct : P4470289035091342463.Spec := by
  intro n
  simp only [A060541, Nat.add_sub_cancel, A060541.P4470289035091342463.a, A060541.P3227994209697425568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060541

/-! ## A060541.P13714021601504130944

`(n+1)*A015219(n)`
-/

namespace A060541.P13714021601504130944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015219 n

end

end A060541.P13714021601504130944

namespace A060541

/-- `(n+1)*A015219(n)` -/
def P13714021601504130944.Spec : Prop :=
  ∀ n, P13714021601504130944.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P8112664439114221885

`A000332(4*(n+1))`
-/

namespace A060541.P8112664439114221885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (4 * (n + 1))

end

end A060541.P8112664439114221885

namespace A060541

/-- `A000332(4*(n+1))` -/
def P8112664439114221885.Spec : Prop :=
  ∀ n, P8112664439114221885.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P16517995874823337210

`(n+1)*sqrt(A014795(n))`
-/

namespace A060541.P16517995874823337210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A014795 n : ℝ)

end

end A060541.P16517995874823337210

namespace A060541

/-- `(n+1)*sqrt(A014795(n))` -/
def P16517995874823337210.Spec : Prop :=
  ∀ n, P16517995874823337210.a n = (A060541 (n + 1) : ℝ)

end A060541

/-! ## A060541.P5460537753520970107

`(n+1)*∑[A010021(n)]`
-/

namespace A060541.P5460537753520970107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060541.P5460537753520970107

namespace A060541

/-- `(n+1)*∑[A010021(n)]` -/
def P5460537753520970107.Spec : Prop :=
  ∀ n, P5460537753520970107.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P11672146106690016869

`A016813(n)*A100157(n+1)`
-/

namespace A060541.P11672146106690016869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A100157 (n + 1)

end

end A060541.P11672146106690016869

namespace A060541

/-- `A016813(n)*A100157(n+1)` -/
def P11672146106690016869.Spec : Prop :=
  ∀ n, P11672146106690016869.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P9401397044240044027

`∑[A085474(2*n)]`
-/

namespace A060541.P9401397044240044027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085474 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060541.P9401397044240044027

namespace A060541

/-- `∑[A085474(2*n)]` -/
def P9401397044240044027.Spec : Prop :=
  ∀ n, P9401397044240044027.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P9845817920168769860

`A085474(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A060541.P9845817920168769860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085474 (n + n) + a (n - 1)

end

end A060541.P9845817920168769860

namespace A060541

/-- `A085474(n+n)+a(n-1)` -/
def P9845817920168769860.Spec : Prop :=
  ∀ n, P9845817920168769860.a n = A060541 (n + 1)

theorem P9845817920168769860.correct : P9845817920168769860.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060541, Nat.add_sub_cancel, A060541.P9845817920168769860.a, A060541.P3227994209697425568.a, A085474, A085474.P13009969362069391226.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060541, Nat.add_sub_cancel, A060541.P9845817920168769860.a, A060541.P3227994209697425568.a, A085474, A085474.P13009969362069391226.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060541

/-! ## A060541.P1748560536386513556

`A053134(2*n)`
-/

namespace A060541.P1748560536386513556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 (2 * n)

end

end A060541.P1748560536386513556

namespace A060541

/-- `A053134(2*n)` -/
def P1748560536386513556.Spec : Prop :=
  ∀ n, P1748560536386513556.a n = A060541 (n + 1)

theorem P1748560536386513556.correct : P1748560536386513556.Spec := by
  intro n
  simp only [A060541, Nat.add_sub_cancel, A060541.P1748560536386513556.a, A060541.P3227994209697425568.a, A053134, A053134.P2509470964205377793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060541

/-! ## A060541.P17710089142737845850

`(n+1)*A000447(Δ[n²])`
-/

namespace A060541.P17710089142737845850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000447 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060541.P17710089142737845850

namespace A060541

/-- `(n+1)*A000447(Δ[n²])` -/
def P17710089142737845850.Spec : Prop :=
  ∀ n, P17710089142737845850.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P16351459337054015159

`A000330(2*n+1)*A016813(n)`
-/

namespace A060541.P16351459337054015159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n + 1) * A016813 n

end

end A060541.P16351459337054015159

namespace A060541

/-- `A000330(2*n+1)*A016813(n)` -/
def P16351459337054015159.Spec : Prop :=
  ∀ n, P16351459337054015159.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P16031926223584094220

`A220084(2*n)+A072819(2*n)`
-/

namespace A060541.P16031926223584094220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 (2 * n) + A072819 (2 * n)

end

end A060541.P16031926223584094220

namespace A060541

/-- `A220084(2*n)+A072819(2*n)` -/
def P16031926223584094220.Spec : Prop :=
  ∀ n, P16031926223584094220.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P118161797933864808

`A289643(2*n)+A051797(2*n)`
-/

namespace A060541.P118161797933864808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 (2 * n) + A051797 (2 * n)

end

end A060541.P118161797933864808

namespace A060541

/-- `A289643(2*n)+A051797(2*n)` -/
def P118161797933864808.Spec : Prop :=
  ∀ n, P118161797933864808.a n = A060541 (n + 1)

theorem P118161797933864808.correct : P118161797933864808.Spec := by
  intro n
  simp only [A060541, Nat.add_sub_cancel, A060541.P118161797933864808.a, A060541.P3227994209697425568.a, A051797, A051797.P13875985765154845986.a, A289643, A289643.P1054073898019394777.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060541

/-! ## A060541.P9901843693056395546

`A264851(2*n)+A050441(2*n+1)`
-/

namespace A060541.P9901843693056395546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264851 (2 * n) + A050441 (2 * n + 1)

end

end A060541.P9901843693056395546

namespace A060541

/-- `A264851(2*n)+A050441(2*n+1)` -/
def P9901843693056395546.Spec : Prop :=
  ∀ n, P9901843693056395546.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P13379622618198431443

`A112742(2*n+1)+A006324(2*n+1)`
-/

namespace A060541.P13379622618198431443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 (2 * n + 1) + A006324 (2 * n + 1)

end

end A060541.P13379622618198431443

namespace A060541

/-- `A112742(2*n+1)+A006324(2*n+1)` -/
def P13379622618198431443.Spec : Prop :=
  ∀ n, P13379622618198431443.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P5102972318409707894

`A098077(2*n+1)-A000330(2*n+1)`
-/

namespace A060541.P5102972318409707894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (2 * n + 1) - A000330 (2 * n + 1)

end

end A060541.P5102972318409707894

namespace A060541

/-- `A098077(2*n+1)-A000330(2*n+1)` -/
def P5102972318409707894.Spec : Prop :=
  ∀ n, P5102972318409707894.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P946236330989218301

`A000330(2*n+1)*A004273(2*n+1)`
-/

namespace A060541.P946236330989218301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n + 1) * A004273 (2 * n + 1)

end

end A060541.P946236330989218301

namespace A060541

/-- `A000330(2*n+1)*A004273(2*n+1)` -/
def P946236330989218301.Spec : Prop :=
  ∀ n, P946236330989218301.a n = A060541 (n + 1)

end A060541

/-! ## A060541.P6398470591606422128

`A000330(2*n+1)*A042963(2*n+1)`
-/

namespace A060541.P6398470591606422128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n + 1) * A042963 (2 * n + 1)

end

end A060541.P6398470591606422128

namespace A060541

/-- `A000330(2*n+1)*A042963(2*n+1)` -/
def P6398470591606422128.Spec : Prop :=
  ∀ n, P6398470591606422128.a n = A060541 (n + 1)

end A060541

/-!
# A060542: a(n) = (1/6)*multinomial(3*n;n,n,n).

The programs for A060542, the canonical program `A060542.P12410524968826904241` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060542 has offset 1).

The definition of A060542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060542.P12410524968826904241

`A006480(n+1)/6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060542

/-- `A006480(n+1)/6` -/
def P12410524968826904241.Spec : Prop :=
  ∀ n, P12410524968826904241.a n = (A060542 (n + 1) : ℚ)

end A060542

/-! ## A060542.P3825061622550500343

`a(n-1)*3*(3*(n+1)-1)*(3*(n+1)-2)/(n+1)²` with `a(0)=1`
-/

namespace A060542.P3825061622550500343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * 3 * ((3 * (n + 1) : ℤ) - 1 : ℚ) * ((3 * (n + 1) : ℤ) - 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A060542.P3825061622550500343

namespace A060542

/-- `a(n-1)*3*(3*(n+1)-1)*(3*(n+1)-2)/(n+1)²` -/
def P3825061622550500343.Spec : Prop :=
  ∀ n, P3825061622550500343.a n = (A060542 (n + 1) : ℚ)

end A060542

/-! ## A060542.P13104474608070785524

`1/(n+1)²*∑{#}[n+1, (-1)^(n+1+#+1)*(n+1-#)²*C(2*(n+1), #)^3]`
-/

namespace A060542.P13104474608070785524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((n + 1) ^ 2 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (-1) ^ (n + 1 + k + 1) * ((n + 1 : ℤ) - (k : ℤ)) ^ 2 * (Nat.choose (2 * (n + 1)) k ^ 3 : ℤ) : ℤ) : ℚ)

end

end A060542.P13104474608070785524

namespace A060542

/-- `1/(n+1)²*∑{#}[n+1, (-1)^(n+1+#+1)*(n+1-#)²*C(2*(n+1), #)^3]` -/
def P13104474608070785524.Spec : Prop :=
  ∀ n, P13104474608070785524.a n = (A060542 (n + 1) : ℚ)

end A060542

/-! ## A060542.P16194523598782734759

`(3*(n+1))!/((n+1)!^3*6)`
-/

namespace A060542.P16194523598782734759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * (n + 1)) : ℚ) / (Nat.factorial (n + 1) ^ 3 * 6 : ℚ)

end

end A060542.P16194523598782734759

namespace A060542

/-- `(3*(n+1))!/((n+1)!^3*6)` -/
def P16194523598782734759.Spec : Prop :=
  ∀ n, P16194523598782734759.a n = (A060542 (n + 1) : ℚ)

end A060542

/-! ## A060542.P6134500471618310964

`C(2*n+1, n)*C(3*n+2, n)`
-/

namespace A060542.P6134500471618310964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * Nat.choose (3 * n + 2) n

end

end A060542.P6134500471618310964

namespace A060542

/-- `C(2*n+1, n)*C(3*n+2, n)` -/
def P6134500471618310964.Spec : Prop :=
  ∀ n, (P6134500471618310964.a n : ℤ) = A060542 (n + 1)

end A060542

/-! ## A060542.P12461184070008019898

`A199094(3*(n+1))`
-/

namespace A060542.P12461184070008019898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199094 (3 * (n + 1))

end

end A060542.P12461184070008019898

namespace A060542

/-- `A199094(3*(n+1))` -/
def P12461184070008019898.Spec : Prop :=
  ∀ n, P12461184070008019898.a n = A060542 (n + 1)

end A060542

/-! ## A060542.P12569400520692489096

`(n+2)/6*A007004(n+1)`
-/

namespace A060542.P12569400520692489096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 6 * (A007004 (n + 1) : ℚ)

end

end A060542.P12569400520692489096

namespace A060542

/-- `(n+2)/6*A007004(n+1)` -/
def P12569400520692489096.Spec : Prop :=
  ∀ n, P12569400520692489096.a n = (A060542 (n + 1) : ℚ)

end A060542

/-! ## A060542.P1874335152738974730

`A001700(n)*A025174(n+1)`
-/

namespace A060542.P1874335152738974730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A025174 (n + 1)

end

end A060542.P1874335152738974730

namespace A060542

/-- `A001700(n)*A025174(n+1)` -/
def P1874335152738974730.Spec : Prop :=
  ∀ n, P1874335152738974730.a n = A060542 (n + 1)

end A060542

/-! ## A060542.P9014681190884866830

`A025174(n+1)*A088218(n+1)`
-/

namespace A060542.P9014681190884866830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 1) * A088218 (n + 1)

end

end A060542.P9014681190884866830

namespace A060542

/-- `A025174(n+1)*A088218(n+1)` -/
def P9014681190884866830.Spec : Prop :=
  ∀ n, P9014681190884866830.a n = A060542 (n + 1)

end A060542

/-! ## A060542.P2983642495943282665

`A227726(n+1)/4*A001700(n)`
-/

namespace A060542.P2983642495943282665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227726 (n + 1) : ℚ) / 4 * (A001700 n : ℚ)

end

end A060542.P2983642495943282665

namespace A060542

/-- `A227726(n+1)/4*A001700(n)` -/
def P2983642495943282665.Spec : Prop :=
  ∀ n, P2983642495943282665.a n = (A060542 (n + 1) : ℚ)

end A060542

/-!
# A060543: Triangle, read by antidiagonals, where T(n,k) = C(n+n*k+k, n*k+k).

The programs for A060543, the canonical program `A060543.P10709607462778319582` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060543 has offset 0).

The definition of A060543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)-col(n)+(row(n)-col(n))*col(n)+col(n), row(n)-col(n))` (program `A060543.P10709607462778319582`, by `A060543.P10709607462778319582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060543.P10709607462778319582

`C(row(n)-col(n)+(row(n)-col(n))*col(n)+col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060543

/-- `C(row(n)-col(n)+(row(n)-col(n))*col(n)+col(n), row(n)-col(n))` -/
def P10709607462778319582.Spec : Prop :=
  ∀ n, (P10709607462778319582.a n : ℤ) = A060543 n

theorem P10709607462778319582.correct : P10709607462778319582.Spec := by
  intro n
  simp only [A060543]

end A060543

/-! ## A060543.P5827635978495324054

`C(row(n)-col(n)+(row(n)-col(n))*col(n)+col(n), (row(n)-col(n))*col(n)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060543.P5827635978495324054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)).toNat (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A060543.P5827635978495324054

namespace A060543

/-- `C(row(n)-col(n)+(row(n)-col(n))*col(n)+col(n), (row(n)-col(n))*col(n)+col(n))` -/
def P5827635978495324054.Spec : Prop :=
  ∀ n, (P5827635978495324054.a n : ℤ) = A060543 n

end A060543

/-! ## A060543.P442920313630877622

`A060539(n+1)/A002260(n+1)`
-/

namespace A060543.P442920313630877622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A060543.P442920313630877622

namespace A060543

/-- `A060539(n+1)/A002260(n+1)` -/
def P442920313630877622.Spec : Prop :=
  ∀ n, P442920313630877622.a n = (A060543 n : ℚ)

end A060543

/-! ## A060543.P10396065906053089373

`A060539(n+1)/(A002262(n)+1)`
-/

namespace A060543.P10396065906053089373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A060543.P10396065906053089373

namespace A060543

/-- `A060539(n+1)/(A002262(n)+1)` -/
def P10396065906053089373.Spec : Prop :=
  ∀ n, P10396065906053089373.a n = (A060543 n : ℚ)

end A060543

/-! ## A060543.P11718636421365791029

`A060539(n+1)/(1-A057944(n)+n)`
-/

namespace A060543.P11718636421365791029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (1 - A057944 n + (n : ℤ) : ℚ)

end

end A060543.P11718636421365791029

namespace A060543

/-- `A060539(n+1)/(1-A057944(n)+n)` -/
def P11718636421365791029.Spec : Prop :=
  ∀ n, P11718636421365791029.a n = (A060543 n : ℚ)

end A060543

/-! ## A060543.P12731322876311713721

`A060539(n+1)/A000720(A037126(n+1))`
-/

namespace A060543.P12731322876311713721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A000720 (A037126 (n + 1)).toNat : ℚ)

end

end A060543.P12731322876311713721

namespace A060543

/-- `A060539(n+1)/A000720(A037126(n+1))` -/
def P12731322876311713721.Spec : Prop :=
  ∀ n, P12731322876311713721.a n = (A060543 n : ℚ)

end A060543

/-! ## A060543.P3851412313881901058

`A060539(n+1)/A004736(A038722(n+1))`
-/

namespace A060543.P3851412313881901058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A060543.P3851412313881901058

namespace A060543

/-- `A060539(n+1)/A004736(A038722(n+1))` -/
def P3851412313881901058.Spec : Prop :=
  ∀ n, P3851412313881901058.a n = (A060543 n : ℚ)

end A060543

/-! ## A060543.P4905357337602092465

`A060539(n+1)/A008619(A158405(n+1))`
-/

namespace A060543.P4905357337602092465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A008619 (A158405 (n + 1)).toNat : ℚ)

end

end A060543.P4905357337602092465

namespace A060543

/-- `A060539(n+1)/A008619(A158405(n+1))` -/
def P4905357337602092465.Spec : Prop :=
  ∀ n, P4905357337602092465.a n = (A060543 n : ℚ)

end A060543

/-! ## A060543.P5449161367704417751

`C((col(n)+1)*(row(n)-col(n)+1)-1, row(n)-col(n))`
-/

namespace A060543.P5449161367704417751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A060543.P5449161367704417751

namespace A060543

/-- `C((col(n)+1)*(row(n)-col(n)+1)-1, row(n)-col(n))` -/
def P5449161367704417751.Spec : Prop :=
  ∀ n, (P5449161367704417751.a n : ℤ) = A060543 n

theorem P5449161367704417751.correct : P5449161367704417751.Spec := by
  intro n
  simp only [A060543, Nat.add_sub_cancel, A060543.P5449161367704417751.a, A060543.P10709607462778319582.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060543

/-! ## A060543.P3144912551400362731

`A007318(A000217(A003991(n+1))-A004736(n+1))`
-/

namespace A060543.P3144912551400362731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (A003991 (n + 1)).toNat - A004736 (n + 1)).toNat

end

end A060543.P3144912551400362731

namespace A060543

/-- `A007318(A000217(A003991(n+1))-A004736(n+1))` -/
def P3144912551400362731.Spec : Prop :=
  ∀ n, P3144912551400362731.a n = A060543 n

end A060543

/-! ## A060543.P7729995168324779284

`A060539(n+1)/A000005(A059268(n))`
-/

namespace A060543.P7729995168324779284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060539 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A060543.P7729995168324779284

namespace A060543

/-- `A060539(n+1)/A000005(A059268(n))` -/
def P7729995168324779284.Spec : Prop :=
  ∀ n, P7729995168324779284.a n = (A060543 n : ℚ)

end A060543

/-!
# A060544: Centered 9-gonal (also known as nonagonal or enneagonal) numbers. Every third triangular number, starting with a(1)=1.

The programs for A060544, the canonical program `A060544.P10494938980490359141` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060544 has offset 1).

The definition of A060544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060544.P5375891023095874201

`C(3*(n+1)-1, 2)`
-/

namespace A060544.P5375891023095874201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((3 * (n + 1) : ℤ) - 1).toNat 2

end

end A060544.P5375891023095874201

namespace A060544

/-- `C(3*(n+1)-1, 2)` -/
def P5375891023095874201.Spec : Prop :=
  ∀ n, (P5375891023095874201.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P10494938980490359141

`a(n-1)+9*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060544

/-- `a(n-1)+9*n` -/
def P10494938980490359141.Spec : Prop :=
  ∀ n, (P10494938980490359141.a n : ℤ) = A060544 (n + 1)

theorem P10494938980490359141.correct : P10494938980490359141.Spec := by
  intro n
  simp only [A060544, Nat.add_sub_cancel]

end A060544

/-! ## A060544.P15272129783305986511

`ogf((1+7x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A060544.P15272129783305986511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 1] [1, -3, 3, -1] n

end

end A060544.P15272129783305986511

namespace A060544

/-- `ogf((1+7x+x^2)/(1-3x+3x^2-x^3))` -/
def P15272129783305986511.Spec : Prop :=
  ∀ n, P15272129783305986511.a n = A060544 (n + 1)

end A060544

/-! ## A060544.P6067959651739512289

`C(3*(n+1), 3)/(n+1)`
-/

namespace A060544.P6067959651739512289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * (n + 1)) 3 : ℚ) / (n + 1 : ℚ)

end

end A060544.P6067959651739512289

namespace A060544

/-- `C(3*(n+1), 3)/(n+1)` -/
def P6067959651739512289.Spec : Prop :=
  ∀ n, P6067959651739512289.a n = (A060544 (n + 1) : ℚ)

end A060544

/-! ## A060544.P6212904845215168190

`(2*(n+1)-1)²+n*(n+1)/2`
-/

namespace A060544.P6212904845215168190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) ^ 2 : ℚ) + (n * (n + 1) : ℚ) / 2

end

end A060544.P6212904845215168190

namespace A060544

/-- `(2*(n+1)-1)²+n*(n+1)/2` -/
def P6212904845215168190.Spec : Prop :=
  ∀ n, P6212904845215168190.a n = (A060544 (n + 1) : ℚ)

theorem P6212904845215168190.correct : P6212904845215168190.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060544, Nat.add_sub_cancel, A060544.P6212904845215168190.a, A060544.P10494938980490359141.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060544, Nat.add_sub_cancel, A060544.P6212904845215168190.a, A060544.P10494938980490359141.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060544

/-! ## A060544.P10074144385589184556

`A001504(n)/2`
-/

namespace A060544.P10074144385589184556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001504 n : ℚ) / 2

end

end A060544.P10074144385589184556

namespace A060544

/-- `A001504(n)/2` -/
def P10074144385589184556.Spec : Prop :=
  ∀ n, P10074144385589184556.a n = (A060544 (n + 1) : ℚ)

theorem P10074144385589184556.correct : P10074144385589184556.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060544, Nat.add_sub_cancel, A060544.P10074144385589184556.a, A060544.P10494938980490359141.a, A001504, A001504.P13639601878872911563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060544, Nat.add_sub_cancel, A060544.P10074144385589184556.a, A060544.P10494938980490359141.a, A001504, A001504.P13639601878872911563.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A060544

/-! ## A060544.P5139986708770722750

`A000217(3*(n+1)-2)`
-/

namespace A060544.P5139986708770722750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * (n + 1) - 2)

end

end A060544.P5139986708770722750

namespace A060544

/-- `A000217(3*(n+1)-2)` -/
def P5139986708770722750.Spec : Prop :=
  ∀ n, P5139986708770722750.a n = A060544 (n + 1)

end A060544

/-! ## A060544.P4559296473714714667

`A006566(n+1)/(n+1)`
-/

namespace A060544.P4559296473714714667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006566 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060544.P4559296473714714667

namespace A060544

/-- `A006566(n+1)/(n+1)` -/
def P4559296473714714667.Spec : Prop :=
  ∀ n, P4559296473714714667.a n = (A060544 (n + 1) : ℚ)

end A060544

/-! ## A060544.P12755470362735518256

`filter[C(n, 2), dr(#)]`
-/

namespace A060544.P12755470362735518256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A060544.P12755470362735518256

namespace A060544

/-- `filter[C(n, 2), dr(#)]` -/
def P12755470362735518256.Spec : Prop :=
  ∀ n, (P12755470362735518256.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P2576919702818455829

`filter[C(n, 2), #%3]`
-/

namespace A060544.P2576919702818455829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 3 = 1) n)

end

end A060544.P2576919702818455829

namespace A060544

/-- `filter[C(n, 2), #%3]` -/
def P2576919702818455829.Spec : Prop :=
  ∀ n, (P2576919702818455829.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P7783301377300940469

`record[C(n+2, lcm(3, n))]`
-/

namespace A060544.P7783301377300940469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (Nat.lcm 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060544.P7783301377300940469

namespace A060544

/-- `record[C(n+2, lcm(3, n))]` -/
def P7783301377300940469.Spec : Prop :=
  ∀ n, (P7783301377300940469.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P14036370312427608957

`∑[floor(3/acot(3*n))]`
-/

namespace A060544.P14036370312427608957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (3 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060544.P14036370312427608957

namespace A060544

/-- `∑[floor(3/acot(3*n))]` -/
def P14036370312427608957.Spec : Prop :=
  ∀ n, P14036370312427608957.a n = A060544 (n + 1)

end A060544

/-! ## A060544.P12758167938816314416

`9*C(n+1, 2)+1`
-/

namespace A060544.P12758167938816314416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 1) 2 + 1

end

end A060544.P12758167938816314416

namespace A060544

/-- `9*C(n+1, 2)+1` -/
def P12758167938816314416.Spec : Prop :=
  ∀ n, (P12758167938816314416.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P6959883519037906480

`∑[a(n-1)+9]` with `a(0)=1, a(1)=9`
-/

namespace A060544.P6959883519037906480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060544.P6959883519037906480

namespace A060544

/-- `∑[a(n-1)+9]` -/
def P6959883519037906480.Spec : Prop :=
  ∀ n, (P6959883519037906480.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P13337518246050027224

`9*n+a(n-1)` with `a(0)=1`
-/

namespace A060544.P13337518246050027224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 * n + a (n - 1)

end

end A060544.P13337518246050027224

namespace A060544

/-- `9*n+a(n-1)` -/
def P13337518246050027224.Spec : Prop :=
  ∀ n, (P13337518246050027224.a n : ℤ) = A060544 (n + 1)

end A060544

/-! ## A060544.P13788573965312355038

`filter[(n²+n)/2, dr(#)]`
-/

namespace A060544.P13788573965312355038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (f1 j)) = 1) n)

end

end A060544.P13788573965312355038

namespace A060544

/-- `filter[(n²+n)/2, dr(#)]` -/
def P13788573965312355038.Spec : Prop :=
  ∀ n, P13788573965312355038.a n = (A060544 (n + 1) : ℚ)

end A060544

/-! ## A060544.P1227602946136305320

`∑[ogf((1+7x+x^2)/(1-2x+x^2))]`
-/

namespace A060544.P1227602946136305320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060544.P1227602946136305320

namespace A060544

/-- `∑[ogf((1+7x+x^2)/(1-2x+x^2))]` -/
def P1227602946136305320.Spec : Prop :=
  ∀ n, P1227602946136305320.a n = A060544 (n + 1)

end A060544

/-! ## A060544.P16253144140214561357

`(3*n)²-(a(n-1)-2)` with `a(0)=1`
-/

namespace A060544.P16253144140214561357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * n) ^ 2 : ℤ) - (a (n - 1) - 2)

end

end A060544.P16253144140214561357

namespace A060544

/-- `(3*n)²-(a(n-1)-2)` -/
def P16253144140214561357.Spec : Prop :=
  ∀ n, P16253144140214561357.a n = A060544 (n + 1)

end A060544

/-! ## A060544.P17501749569099861738

`lcm(2*n+1+n, 2*n+n+2)/2`
-/

namespace A060544.P17501749569099861738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1 + n) (2 * n + (n + 2)) : ℚ) / 2

end

end A060544.P17501749569099861738

namespace A060544

/-- `lcm(2*n+1+n, 2*n+n+2)/2` -/
def P17501749569099861738.Spec : Prop :=
  ∀ n, P17501749569099861738.a n = (A060544 (n + 1) : ℚ)

end A060544

/-!
# A060545: a(n) = binomial(n^2, n)/n.

The programs for A060545, the canonical program `A060545.P11052780647503334750` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060545 has offset 1).

The definition of A060545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060545.P11052780647503334750

`C(A005563(n), n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060545

/-- `C(A005563(n), n)` -/
def P11052780647503334750.Spec : Prop :=
  ∀ n, (P11052780647503334750.a n : ℤ) = A060545 (n + 1)

theorem P11052780647503334750.correct : P11052780647503334750.Spec := by
  intro n
  simp only [A060545, Nat.add_sub_cancel]

end A060545

/-! ## A060545.P10776927718816866330

`C((n+1)², n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060545.P10776927718816866330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060545.P10776927718816866330

namespace A060545

/-- `C((n+1)², n+1)/(n+1)` -/
def P10776927718816866330.Spec : Prop :=
  ∀ n, P10776927718816866330.a n = (A060545 (n + 1) : ℚ)

end A060545

/-! ## A060545.P13507537835262735208

`A014062(n+1)/(n+1)`
-/

namespace A060545.P13507537835262735208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014062 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060545.P13507537835262735208

namespace A060545

/-- `A014062(n+1)/(n+1)` -/
def P13507537835262735208.Spec : Prop :=
  ∀ n, P13507537835262735208.a n = (A060545 (n + 1) : ℚ)

end A060545

/-! ## A060545.P17383452291826625945

`C(n*(n+2), n)`
-/

namespace A060545.P17383452291826625945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n + 2)) n

end

end A060545.P17383452291826625945

namespace A060545

/-- `C(n*(n+2), n)` -/
def P17383452291826625945.Spec : Prop :=
  ∀ n, (P17383452291826625945.a n : ℤ) = A060545 (n + 1)

end A060545

/-! ## A060545.P2529607506407437107

`A102366(n*(n+2))`
-/

namespace A060545.P2529607506407437107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (n * (n + 2))

end

end A060545.P2529607506407437107

namespace A060545

/-- `A102366(n*(n+2))` -/
def P2529607506407437107.Spec : Prop :=
  ∀ n, P2529607506407437107.a n = A060545 (n + 1)

end A060545

/-!
# A060546: a(n) = 2^ceiling(n/2).

The programs for A060546, the canonical program `A060546.P1654444225821562750` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060546 has offset 0).

The definition of A060546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060546.P1003745680151369599

`2^ceil(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060546.P1003745680151369599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A060546.P1003745680151369599

namespace A060546

/-- `2^ceil(n/2)` -/
def P1003745680151369599.Spec : Prop :=
  ∀ n, P1003745680151369599.a n = (A060546 n : ℚ)

end A060546

/-! ## A060546.P8237981086201011253

`ogf((1+2x)/(1-2x^2))`
-/

namespace A060546.P8237981086201011253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -2] n

end

end A060546.P8237981086201011253

namespace A060546

/-- `ogf((1+2x)/(1-2x^2))` -/
def P8237981086201011253.Spec : Prop :=
  ∀ n, P8237981086201011253.a n = A060546 n

end A060546

/-! ## A060546.P1654444225821562750

`A016116(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060546

/-- `A016116(n+1)` -/
def P1654444225821562750.Spec : Prop :=
  ∀ n, P1654444225821562750.a n = A060546 n

theorem P1654444225821562750.correct : P1654444225821562750.Spec := by
  intro n
  simp only [A060546]

end A060546

/-! ## A060546.P16901965268560612855

`∏[n%2+1]`
-/

namespace A060546.P16901965268560612855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P16901965268560612855

namespace A060546

/-- `∏[n%2+1]` -/
def P16901965268560612855.Spec : Prop :=
  ∀ n, (P16901965268560612855.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P3136512383336860841

`∏[gcd(2, n+1)]`
-/

namespace A060546.P3136512383336860841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P3136512383336860841

namespace A060546

/-- `∏[gcd(2, n+1)]` -/
def P3136512383336860841.Spec : Prop :=
  ∀ n, (P3136512383336860841.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P5479867920452617948

`∏[and(1, n)+1]`
-/

namespace A060546.P5479867920452617948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P5479867920452617948

namespace A060546

/-- `∏[and(1, n)+1]` -/
def P5479867920452617948.Spec : Prop :=
  ∀ n, (P5479867920452617948.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P7190650046618660215

`∏[2^and(1, n)]`
-/

namespace A060546.P7190650046618660215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P7190650046618660215

namespace A060546

/-- `∏[2^and(1, n)]` -/
def P7190650046618660215.Spec : Prop :=
  ∀ n, (P7190650046618660215.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P9268593383296118451

`∏[C(2, and(1, n))]`
-/

namespace A060546.P9268593383296118451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P9268593383296118451

namespace A060546

/-- `∏[C(2, and(1, n))]` -/
def P9268593383296118451.Spec : Prop :=
  ∀ n, (P9268593383296118451.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P6677007402222668681

`∏[floor(exp(and(1, n)))]`
-/

namespace A060546.P6677007402222668681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Nat.land 1 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P6677007402222668681

namespace A060546

/-- `∏[floor(exp(and(1, n)))]` -/
def P6677007402222668681.Spec : Prop :=
  ∀ n, P6677007402222668681.a n = A060546 n

end A060546

/-! ## A060546.P18370981004447240558

`∏[Δ[or(1, n)]!]`
-/

namespace A060546.P18370981004447240558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P18370981004447240558

namespace A060546

/-- `∏[Δ[or(1, n)]!]` -/
def P18370981004447240558.Spec : Prop :=
  ∀ n, (P18370981004447240558.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P13060278375370401965

`∏[ceil(cosh(and(1, n)))]`
-/

namespace A060546.P13060278375370401965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Nat.land 1 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P13060278375370401965

namespace A060546

/-- `∏[ceil(cosh(and(1, n)))]` -/
def P13060278375370401965.Spec : Prop :=
  ∀ n, P13060278375370401965.a n = A060546 n

end A060546

/-! ## A060546.P16352449389946475823

`∏[round(cosh(and(1, n)))]`
-/

namespace A060546.P16352449389946475823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Nat.land 1 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P16352449389946475823

namespace A060546

/-- `∏[round(cosh(and(1, n)))]` -/
def P16352449389946475823.Spec : Prop :=
  ∀ n, P16352449389946475823.a n = A060546 n

end A060546

/-! ## A060546.P3405483049265796932

`∏[or(n, -2)+3]`
-/

namespace A060546.P3405483049265796932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P3405483049265796932

namespace A060546

/-- `∏[or(n, -2)+3]` -/
def P3405483049265796932.Spec : Prop :=
  ∀ n, P3405483049265796932.a n = A060546 n

end A060546

/-! ## A060546.P8725645755976996020

`∏[and(3, n²-3)]`
-/

namespace A060546.P8725645755976996020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P8725645755976996020

namespace A060546

/-- `∏[and(3, n²-3)]` -/
def P8725645755976996020.Spec : Prop :=
  ∀ n, P8725645755976996020.a n = A060546 n

end A060546

/-! ## A060546.P7150046110296030431

`∏[((2*n)%4)!]`
-/

namespace A060546.P7150046110296030431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P7150046110296030431

namespace A060546

/-- `∏[((2*n)%4)!]` -/
def P7150046110296030431.Spec : Prop :=
  ∀ n, (P7150046110296030431.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P7487714067854213523

`∏[(2*and(1, n))!]`
-/

namespace A060546.P7487714067854213523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P7487714067854213523

namespace A060546

/-- `∏[(2*and(1, n))!]` -/
def P7487714067854213523.Spec : Prop :=
  ∀ n, (P7487714067854213523.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P7114609312382810028

`∏[and(2, -n²)!]`
-/

namespace A060546.P7114609312382810028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (-(n ^ 2 : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P7114609312382810028

namespace A060546

/-- `∏[and(2, -n²)!]` -/
def P7114609312382810028.Spec : Prop :=
  ∀ n, (P7114609312382810028.a n : ℤ) = A060546 n

end A060546

/-! ## A060546.P2310772414655882965

`∏[ceil(acot(char[2*n]))]`
-/

namespace A060546.P2310772414655882965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P2310772414655882965

namespace A060546

/-- `∏[ceil(acot(char[2*n]))]` -/
def P2310772414655882965.Spec : Prop :=
  ∀ n, P2310772414655882965.a n = A060546 n

end A060546

/-! ## A060546.P8704236554610354607

`∏[round(acot(char[2*n]))]`
-/

namespace A060546.P8704236554610354607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060546.P8704236554610354607

namespace A060546

/-- `∏[round(acot(char[2*n]))]` -/
def P8704236554610354607.Spec : Prop :=
  ∀ n, P8704236554610354607.a n = A060546 n

end A060546

/-! ## A060546.P14205157191500803033

`2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A060546.P14205157191500803033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2)

end

end A060546.P14205157191500803033

namespace A060546

/-- `2*a(n-2)` -/
def P14205157191500803033.Spec : Prop :=
  ∀ n, (P14205157191500803033.a n : ℤ) = A060546 n

end A060546

/-!
# A060547: a(n) = 2^(floor(n/3) + ((n mod 3) mod 2)).

The programs for A060547, the canonical program `A060547.P16635624753728141466` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060547 has offset 1).

The definition of A060547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060547.P3380526061057539185

`2^(floor((n+1)/3)+((n+1)%3)%2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060547.P3380526061057539185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 3⌋ + (((n + 1) % 3 % 2 : ℕ) : ℤ) : ℤ)

end

end A060547.P3380526061057539185

namespace A060547

/-- `2^(floor((n+1)/3)+((n+1)%3)%2)` -/
def P3380526061057539185.Spec : Prop :=
  ∀ n, P3380526061057539185.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P16635624753728141466

`2^A008611(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060547

/-- `2^A008611(n)` -/
def P16635624753728141466.Spec : Prop :=
  ∀ n, P16635624753728141466.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P2671208768595068973

`2^Δ[ceil(∑[n/3])]`
-/

namespace A060547.P2671208768595068973
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060547.P2671208768595068973

namespace A060547

/-- `2^Δ[ceil(∑[n/3])]` -/
def P2671208768595068973.Spec : Prop :=
  ∀ n, P2671208768595068973.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P7677340057785153840

`2*a(n-3)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A060547.P7677340057785153840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  2 * a (n - 3)

end

end A060547.P7677340057785153840

namespace A060547

/-- `2*a(n-3)` -/
def P7677340057785153840.Spec : Prop :=
  ∀ n, (P7677340057785153840.a n : ℤ) = A060547 (n + 1)

end A060547

/-! ## A060547.P17674322281377793448

`a(n-3)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A060547.P17674322281377793448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (n - 3) + a (n - 3)

end

end A060547.P17674322281377793448

namespace A060547

/-- `a(n-3)+a(n-3)` -/
def P17674322281377793448.Spec : Prop :=
  ∀ n, (P17674322281377793448.a n : ℤ) = A060547 (n + 1)

end A060547

/-! ## A060547.P7482383967643947142

`a(n-3)/(1-1/2)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A060547.P7482383967643947142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A060547.P7482383967643947142

namespace A060547

/-- `a(n-3)/(1-1/2)` -/
def P7482383967643947142.Spec : Prop :=
  ∀ n, P7482383967643947142.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P12905979271140100843

`∏[2^(2-gcd(2*n+1, n+2))]`
-/

namespace A060547.P12905979271140100843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 - (Nat.gcd (2 * n + 1) (n + 2) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P12905979271140100843

namespace A060547

/-- `∏[2^(2-gcd(2*n+1, n+2))]` -/
def P12905979271140100843.Spec : Prop :=
  ∀ n, P12905979271140100843.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P17585202541679941276

`abs(Δ[A078029(n)])`
-/

namespace A060547.P17585202541679941276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A060547.P17585202541679941276

namespace A060547

/-- `abs(Δ[A078029(n)])` -/
def P17585202541679941276.Spec : Prop :=
  ∀ n, P17585202541679941276.a n = A060547 (n + 1)

end A060547

/-! ## A060547.P8945424440293261723

`abs(Δ[A078030(n)])`
-/

namespace A060547.P8945424440293261723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A060547.P8945424440293261723

namespace A060547

/-- `abs(Δ[A078030(n)])` -/
def P8945424440293261723.Spec : Prop :=
  ∀ n, P8945424440293261723.a n = A060547 (n + 1)

end A060547

/-! ## A060547.P10899152792336293287

`∏[2/A131534(n)²]`
-/

namespace A060547.P10899152792336293287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A131534 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P10899152792336293287

namespace A060547

/-- `∏[2/A131534(n)²]` -/
def P10899152792336293287.Spec : Prop :=
  ∀ n, P10899152792336293287.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P11921686034768891327

`∏[A173259(n+1)/2]`
-/

namespace A060547.P11921686034768891327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173259 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P11921686034768891327

namespace A060547

/-- `∏[A173259(n+1)/2]` -/
def P11921686034768891327.Spec : Prop :=
  ∀ n, P11921686034768891327.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P16477505654066015112

`∏[2/A101825(n+1)²]`
-/

namespace A060547.P16477505654066015112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A101825 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P16477505654066015112

namespace A060547

/-- `∏[2/A101825(n+1)²]` -/
def P16477505654066015112.Spec : Prop :=
  ∀ n, P16477505654066015112.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P8298266288945672906

`∏[2/A177702(n+1)²]`
-/

namespace A060547.P8298266288945672906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A177702 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P8298266288945672906

namespace A060547

/-- `∏[2/A177702(n+1)²]` -/
def P8298266288945672906.Spec : Prop :=
  ∀ n, P8298266288945672906.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P14701138128101187494

`∏[2/A099837(n+2)²]`
-/

namespace A060547.P14701138128101187494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A099837 (n + 2) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P14701138128101187494

namespace A060547

/-- `∏[2/A099837(n+2)²]` -/
def P14701138128101187494.Spec : Prop :=
  ∀ n, P14701138128101187494.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P9312585785969322317

`∏[2/A100063(n+2)²]`
-/

namespace A060547.P9312585785969322317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A100063 (n + 2) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P9312585785969322317

namespace A060547

/-- `∏[2/A100063(n+2)²]` -/
def P9312585785969322317.Spec : Prop :=
  ∀ n, P9312585785969322317.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P14190592574062827835

`∏[A143098(n+2)²/2]`
-/

namespace A060547.P14190592574062827835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143098 (n + 2) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P14190592574062827835

namespace A060547

/-- `∏[A143098(n+2)²/2]` -/
def P14190592574062827835.Spec : Prop :=
  ∀ n, P14190592574062827835.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P9660123312768289659

`∏[A010219(2*n+1)/2]`
-/

namespace A060547.P9660123312768289659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010219 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P9660123312768289659

namespace A060547

/-- `∏[A010219(2*n+1)/2]` -/
def P9660123312768289659.Spec : Prop :=
  ∀ n, P9660123312768289659.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P5702437292605498104

`∏[2/A083040(2*n+1)²]`
-/

namespace A060547.P5702437292605498104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A083040 (2 * n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P5702437292605498104

namespace A060547

/-- `∏[2/A083040(2*n+1)²]` -/
def P5702437292605498104.Spec : Prop :=
  ∀ n, P5702437292605498104.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P12509303973521525849

`∏[2/A100051(2*n+1)²]`
-/

namespace A060547.P12509303973521525849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A100051 (2 * n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P12509303973521525849

namespace A060547

/-- `∏[2/A100051(2*n+1)²]` -/
def P12509303973521525849.Spec : Prop :=
  ∀ n, P12509303973521525849.a n = (A060547 (n + 1) : ℚ)

end A060547

/-! ## A060547.P4454280403367030605

`∏[2/A322702(2*n+1)²]`
-/

namespace A060547.P4454280403367030605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A322702 (2 * n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060547.P4454280403367030605

namespace A060547

/-- `∏[2/A322702(2*n+1)²]` -/
def P4454280403367030605.Spec : Prop :=
  ∀ n, P4454280403367030605.a n = (A060547 (n + 1) : ℚ)

end A060547

/-!
# A060548: a(n) is the number of D3-symmetric patterns that may be formed with a top-down equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

The programs for A060548, the canonical program `A060548.P8398797337320787600` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060548 has offset 1).

The definition of A060548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060548.P8398797337320787600

`2*a(n-6)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060548

/-- `2*a(n-6)` -/
def P8398797337320787600.Spec : Prop :=
  ∀ n, (P8398797337320787600.a n : ℤ) = A060548 (n + 1)

theorem P8398797337320787600.correct : P8398797337320787600.Spec := by
  intro n
  simp only [A060548, Nat.add_sub_cancel]

end A060548

/-! ## A060548.P4079429717198503058

`2^A008615(n+2)`
-/

namespace A060548.P4079429717198503058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008615 (n + 2) : ℤ)

end

end A060548.P4079429717198503058

namespace A060548

/-- `2^A008615(n+2)` -/
def P4079429717198503058.Spec : Prop :=
  ∀ n, P4079429717198503058.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P3076842902299400467

`2^floor(A008611(n+3)/2)`
-/

namespace A060548.P3076842902299400467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(A008611 (n + 3) : ℚ) / 2⌋ : ℤ)

end

end A060548.P3076842902299400467

namespace A060548

/-- `2^floor(A008611(n+3)/2)` -/
def P3076842902299400467.Spec : Prop :=
  ∀ n, P3076842902299400467.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P11359121663924117748

`ogf((2+x+2x^2+2x^3+2x^4+2x^5)/(1-2x^6))`
-/

namespace A060548.P11359121663924117748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2, 2, 2, 2] [1, 0, 0, 0, 0, 0, -2] n

end

end A060548.P11359121663924117748

namespace A060548

/-- `ogf((2+x+2x^2+2x^3+2x^4+2x^5)/(1-2x^6))` -/
def P11359121663924117748.Spec : Prop :=
  ∀ n, P11359121663924117748.a n = A060548 (n + 1)

end A060548

/-! ## A060548.P8670193389230357044

`2^ceil(xor(1, n)/6)`
-/

namespace A060548.P8670193389230357044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(Nat.xor 1 n : ℚ) / 6⌉ : ℤ)

end

end A060548.P8670193389230357044

namespace A060548

/-- `2^ceil(xor(1, n)/6)` -/
def P8670193389230357044.Spec : Prop :=
  ∀ n, P8670193389230357044.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P16048118607537679261

`gcd(2, n)*a(n-3)` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A060548.P16048118607537679261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  Nat.gcd 2 n * a (n - 3)

end

end A060548.P16048118607537679261

namespace A060548

/-- `gcd(2, n)*a(n-3)` -/
def P16048118607537679261.Spec : Prop :=
  ∀ n, (P16048118607537679261.a n : ℤ) = A060548 (n + 1)

end A060548

/-! ## A060548.P1319822067452807187

`2^∑[∑[ogf(1/(1+2x+2x^2+x^3))]]`
-/

namespace A060548.P1319822067452807187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A060548.P1319822067452807187

namespace A060548

/-- `2^∑[∑[ogf(1/(1+2x+2x^2+x^3))]]` -/
def P1319822067452807187.Spec : Prop :=
  ∀ n, P1319822067452807187.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P11087371173895492946

`2^∑[1-n²%3-a(n-1)]` with `a(0)=1`
-/

namespace A060548.P11087371173895492946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A060548.P11087371173895492946

namespace A060548

/-- `2^∑[1-n²%3-a(n-1)]` -/
def P11087371173895492946.Spec : Prop :=
  ∀ n, P11087371173895492946.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P10432374794247041730

`2^∑[∑[n+1]%3-a(n-1)]` with `a(0)=1`
-/

namespace A060548.P10432374794247041730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A060548.P10432374794247041730

namespace A060548

/-- `2^∑[∑[n+1]%3-a(n-1)]` -/
def P10432374794247041730.Spec : Prop :=
  ∀ n, P10432374794247041730.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P3066812220715015368

`A140426(n+2)`
-/

namespace A060548.P3066812220715015368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140426 (n + 2)

end

end A060548.P3066812220715015368

namespace A060548

/-- `A140426(n+2)` -/
def P3066812220715015368.Spec : Prop :=
  ∀ n, P3066812220715015368.a n = A060548 (n + 1)

end A060548

/-! ## A060548.P13340493028633768744

`2^A103221(n)`
-/

namespace A060548.P13340493028633768744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A103221 n : ℤ)

end

end A060548.P13340493028633768744

namespace A060548

/-- `2^A103221(n)` -/
def P13340493028633768744.Spec : Prop :=
  ∀ n, P13340493028633768744.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P16719469008821992428

`2^∑[A115360(n)]`
-/

namespace A060548.P16719469008821992428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A060548.P16719469008821992428

namespace A060548

/-- `2^∑[A115360(n)]` -/
def P16719469008821992428.Spec : Prop :=
  ∀ n, P16719469008821992428.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P2774939717278107135

`2^A008647(2*n)`
-/

namespace A060548.P2774939717278107135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008647 (2 * n) : ℤ)

end

end A060548.P2774939717278107135

namespace A060548

/-- `2^A008647(2*n)` -/
def P2774939717278107135.Spec : Prop :=
  ∀ n, P2774939717278107135.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P398653877905759009

`2^A008679(2*n)`
-/

namespace A060548.P398653877905759009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008679 (2 * n) : ℤ)

end

end A060548.P398653877905759009

namespace A060548

/-- `2^A008679(2*n)` -/
def P398653877905759009.Spec : Prop :=
  ∀ n, P398653877905759009.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P3379428339810730148

`2^A081753(2*n)`
-/

namespace A060548.P3379428339810730148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081753 (2 * n) : ℤ)

end

end A060548.P3379428339810730148

namespace A060548

/-- `2^A081753(2*n)` -/
def P3379428339810730148.Spec : Prop :=
  ∀ n, P3379428339810730148.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P5417426245766502836

`2^A291984(2*n)`
-/

namespace A060548.P5417426245766502836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A291984 (2 * n) : ℤ)

end

end A060548.P5417426245766502836

namespace A060548

/-- `2^A291984(2*n)` -/
def P5417426245766502836.Spec : Prop :=
  ∀ n, P5417426245766502836.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P359494764762944050

`2^A008618(3*n)`
-/

namespace A060548.P359494764762944050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008618 (3 * n) : ℤ)

end

end A060548.P359494764762944050

namespace A060548

/-- `2^A008618(3*n)` -/
def P359494764762944050.Spec : Prop :=
  ∀ n, P359494764762944050.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P13067526099187312769

`2^ceil(A028242(n)/3)`
-/

namespace A060548.P13067526099187312769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(A028242 n : ℚ) / 3⌉ : ℤ)

end

end A060548.P13067526099187312769

namespace A060548

/-- `2^ceil(A028242(n)/3)` -/
def P13067526099187312769.Spec : Prop :=
  ∀ n, P13067526099187312769.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P12497593082632620114

`2^Δ[A014591(n+2)]`
-/

namespace A060548.P12497593082632620114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060548.P12497593082632620114

namespace A060548

/-- `2^Δ[A014591(n+2)]` -/
def P12497593082632620114.Spec : Prop :=
  ∀ n, P12497593082632620114.a n = (A060548 (n + 1) : ℚ)

end A060548

/-! ## A060548.P4802295574392634896

`2^Δ[A069905(n+2)]`
-/

namespace A060548.P4802295574392634896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060548.P4802295574392634896

namespace A060548

/-- `2^Δ[A069905(n+2)]` -/
def P4802295574392634896.Spec : Prop :=
  ∀ n, P4802295574392634896.a n = (A060548 (n + 1) : ℚ)

end A060548

/-!
# A060549: a(n) is the number of distinct patterns (modulo geometric D3-operations) with strict median-reflective (palindrome) symmetry (i.e., having no other symmetry) which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

The programs for A060549, the canonical program `A060549.P14112489990380296126` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060549 has offset 1).

The definition of A060549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060549.P14112489990380296126

`A060546(n+1)-A060548(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060549

/-- `A060546(n+1)-A060548(n+1)` -/
def P14112489990380296126.Spec : Prop :=
  ∀ n, P14112489990380296126.a n = A060549 (n + 1)

theorem P14112489990380296126.correct : P14112489990380296126.Spec := by
  intro n
  simp only [A060549, Nat.add_sub_cancel]

end A060549

/-! ## A060549.P15932947173530499838

`2^A008619(n)-2^A008615(n+2)`
-/

namespace A060549.P15932947173530499838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008619 n : ℤ) - (2 : ℚ) ^ (A008615 (n + 2) : ℤ)

end

end A060549.P15932947173530499838

namespace A060549

/-- `2^A008619(n)-2^A008615(n+2)` -/
def P15932947173530499838.Spec : Prop :=
  ∀ n, P15932947173530499838.a n = (A060549 (n + 1) : ℚ)

end A060549

/-! ## A060549.P12249173710390436911

`ogf((x+2x^2+2x^4+2x^5)/(1-2x^2-2x^6+4x^8))`
-/

namespace A060549.P12249173710390436911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2, 2] [1, 0, -2, 0, 0, 0, -2, 0, 4] n

end

end A060549.P12249173710390436911

namespace A060549

/-- `ogf((x+2x^2+2x^4+2x^5)/(1-2x^2-2x^6+4x^8))` -/
def P12249173710390436911.Spec : Prop :=
  ∀ n, P12249173710390436911.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P9197395379676345482

`A131572(n+2)-A060548(n+1)`
-/

namespace A060549.P9197395379676345482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 2) - A060548 (n + 1)

end

end A060549.P9197395379676345482

namespace A060549

/-- `A131572(n+2)-A060548(n+1)` -/
def P9197395379676345482.Spec : Prop :=
  ∀ n, P9197395379676345482.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P2419970518381368134

`A060546(n+1)-A140426(n+2)`
-/

namespace A060549.P2419970518381368134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A140426 (n + 2)

end

end A060549.P2419970518381368134

namespace A060549

/-- `A060546(n+1)-A140426(n+2)` -/
def P2419970518381368134.Spec : Prop :=
  ∀ n, P2419970518381368134.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P2206811774141355222

`A060548(3*(n+1))-A060548(n+1)`
-/

namespace A060549.P2206811774141355222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (3 * (n + 1)) - A060548 (n + 1)

end

end A060549.P2206811774141355222

namespace A060549

/-- `A060548(3*(n+1))-A060548(n+1)` -/
def P2206811774141355222.Spec : Prop :=
  ∀ n, P2206811774141355222.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P990244392032491714

`A000079(A008619(n))-A060548(n+1)`
-/

namespace A060549.P990244392032491714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008619 n).toNat - A060548 (n + 1)

end

end A060549.P990244392032491714

namespace A060549

/-- `A000079(A008619(n))-A060548(n+1)` -/
def P990244392032491714.Spec : Prop :=
  ∀ n, P990244392032491714.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P8473012192444259744

`A060546(n+1)-A060546(A008611(n))`
-/

namespace A060549.P8473012192444259744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A060546 (A008611 n).toNat

end

end A060549.P8473012192444259744

namespace A060549

/-- `A060546(n+1)-A060546(A008611(n))` -/
def P8473012192444259744.Spec : Prop :=
  ∀ n, P8473012192444259744.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P8451488799775573120

`A060546(n+1)-A060546(A051274(n))`
-/

namespace A060549.P8451488799775573120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A060546 (A051274 n).toNat

end

end A060549.P8451488799775573120

namespace A060549

/-- `A060546(n+1)-A060546(A051274(n))` -/
def P8451488799775573120.Spec : Prop :=
  ∀ n, P8451488799775573120.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P11600470846884963609

`A060546(n+1)-A060546(A051275(n))`
-/

namespace A060549.P11600470846884963609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A060546 (A051275 n).toNat

end

end A060549.P11600470846884963609

namespace A060549

/-- `A060546(n+1)-A060546(A051275(n))` -/
def P11600470846884963609.Spec : Prop :=
  ∀ n, P11600470846884963609.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P15631240107681972450

`A060546(n+1)-A060546(A341307(n))`
-/

namespace A060549.P15631240107681972450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A060546 (A341307 n).toNat

end

end A060549.P15631240107681972450

namespace A060549

/-- `A060546(n+1)-A060546(A341307(n))` -/
def P15631240107681972450.Spec : Prop :=
  ∀ n, P15631240107681972450.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P5863187915307442553

`A060546(n+1)-A000079(A008615(n+2))`
-/

namespace A060549.P5863187915307442553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A000079 (A008615 (n + 2)).toNat

end

end A060549.P5863187915307442553

namespace A060549

/-- `A060546(n+1)-A000079(A008615(n+2))` -/
def P5863187915307442553.Spec : Prop :=
  ∀ n, P5863187915307442553.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P11683919792278009948

`A000079(A008619(n))-A060546(A008611(n))`
-/

namespace A060549.P11683919792278009948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008619 n).toNat - A060546 (A008611 n).toNat

end

end A060549.P11683919792278009948

namespace A060549

/-- `A000079(A008619(n))-A060546(A008611(n))` -/
def P11683919792278009948.Spec : Prop :=
  ∀ n, P11683919792278009948.a n = A060549 (n + 1)

end A060549

/-! ## A060549.P17713421671859745551

`A000079(A008619(n))-A000079(A103221(n))`
-/

namespace A060549.P17713421671859745551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008619 n).toNat - A000079 (A103221 n).toNat

end

end A060549.P17713421671859745551

namespace A060549

/-- `A000079(A008619(n))-A000079(A103221(n))` -/
def P17713421671859745551.Spec : Prop :=
  ∀ n, P17713421671859745551.a n = A060549 (n + 1)

end A060549

/-!
# A060550: a(n) is the number of distinct patterns (modulo geometric D_3-operations) with no other than strict 120-degree rotational symmetry which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement.

The programs for A060550, the canonical program `A060550.P2251018908041164968` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060550 has offset 1).

The definition of A060550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060550.P2251018908041164968

`(A060547(n+1)-A060548(n+1))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060550

/-- `(A060547(n+1)-A060548(n+1))/2` -/
def P2251018908041164968.Spec : Prop :=
  ∀ n, P2251018908041164968.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P1920355065205126579

`ogf((x^3+x^5+x^7)/(1-2x^3-2x^6+4x^9))`
-/

namespace A060550.P1920355065205126579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 0, 1, 0, 1] [1, 0, 0, -2, 0, 0, -2, 0, 0, 4] n

end

end A060550.P1920355065205126579

namespace A060550

/-- `ogf((x^3+x^5+x^7)/(1-2x^3-2x^6+4x^9))` -/
def P1920355065205126579.Spec : Prop :=
  ∀ n, P1920355065205126579.a n = A060550 (n + 1)

end A060550

/-! ## A060550.P3225094345152725317

`A011782(A008611(n))-A011782(A103221(n))`
-/

namespace A060550.P3225094345152725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008611 n).toNat - A011782 (A103221 n).toNat

end

end A060550.P3225094345152725317

namespace A060550

/-- `A011782(A008611(n))-A011782(A103221(n))` -/
def P3225094345152725317.Spec : Prop :=
  ∀ n, P3225094345152725317.a n = A060550 (n + 1)

end A060550

/-! ## A060550.P12950452247880744574

`A233411(A008611(n))/2`
-/

namespace A060550.P12950452247880744574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 (A008611 n).toNat : ℚ) / 2

end

end A060550.P12950452247880744574

namespace A060550

/-- `A233411(A008611(n))/2` -/
def P12950452247880744574.Spec : Prop :=
  ∀ n, P12950452247880744574.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P5133175730705884058

`(A060548(A047236(n+1))-A060548(n+1))/2`
-/

namespace A060550.P5133175730705884058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060548 (A047236 (n + 1)).toNat - A060548 (n + 1) : ℚ) / 2

end

end A060550.P5133175730705884058

namespace A060550

/-- `(A060548(A047236(n+1))-A060548(n+1))/2` -/
def P5133175730705884058.Spec : Prop :=
  ∀ n, P5133175730705884058.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P10021299229464984013

`(A060548(A047245(n+1))-A060548(n+1))/2`
-/

namespace A060550.P10021299229464984013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060548 (A047245 (n + 1)).toNat - A060548 (n + 1) : ℚ) / 2

end

end A060550.P10021299229464984013

namespace A060550

/-- `(A060548(A047245(n+1))-A060548(n+1))/2` -/
def P10021299229464984013.Spec : Prop :=
  ∀ n, P10021299229464984013.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P18081792197554247707

`(A060548(A047268(n+1))-A060548(n+1))/2`
-/

namespace A060550.P18081792197554247707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060548 (A047268 (n + 1)).toNat - A060548 (n + 1) : ℚ) / 2

end

end A060550.P18081792197554247707

namespace A060550

/-- `(A060548(A047268(n+1))-A060548(n+1))/2` -/
def P18081792197554247707.Spec : Prop :=
  ∀ n, P18081792197554247707.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P5500737516347808497

`(A060547(n+1)-A060547(A194272(n+1)))/2`
-/

namespace A060550.P5500737516347808497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060547 (n + 1) - A060547 (A194272 (n + 1)).toNat : ℚ) / 2

end

end A060550.P5500737516347808497

namespace A060550

/-- `(A060547(n+1)-A060547(A194272(n+1)))/2` -/
def P5500737516347808497.Spec : Prop :=
  ∀ n, P5500737516347808497.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P1421464747640663608

`A060549(n+1)%A060547(n+1)/2`
-/

namespace A060550.P1421464747640663608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A060549 (n + 1)) (A060547 (n + 1)) : ℚ) / 2

end

end A060550.P1421464747640663608

namespace A060550

/-- `A060549(n+1)%A060547(n+1)/2` -/
def P1421464747640663608.Spec : Prop :=
  ∀ n, P1421464747640663608.a n = (A060550 (n + 1) : ℚ)

end A060550

/-! ## A060550.P1471334037169268940

`A060553(n+1)-(A060552(n+1)+A060546(n+1))`
-/

namespace A060550.P1471334037169268940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 1) - (A060552 (n + 1) + A060546 (n + 1))

end

end A060550.P1471334037169268940

namespace A060550

/-- `A060553(n+1)-(A060552(n+1)+A060546(n+1))` -/
def P1471334037169268940.Spec : Prop :=
  ∀ n, P1471334037169268940.a n = A060550 (n + 1)

end A060550

/-!
# A060551: a(n) is the number of nonsymmetric patterns (no reflective, nor rotational symmetry) which may be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

The programs for A060551, the canonical program `A060551.P6924873238948629771` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060551 has offset 1).

The definition of A060551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060551.P14444291052785036815

`6*A060552(n+1)`
-/

namespace A060551.P14444291052785036815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060552 (n + 1)

end

end A060551.P14444291052785036815

namespace A060551

/-- `6*A060552(n+1)` -/
def P14444291052785036815.Spec : Prop :=
  ∀ n, P14444291052785036815.a n = A060551 (n + 1)

end A060551

/-! ## A060551.P6924873238948629771

`A000079(n+1)-3*A060546(n+1)-A060547(n+1)+3*A060548(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060551

/-- `A000079(n+1)-3*A060546(n+1)-A060547(n+1)+3*A060548(n+1)` -/
def P6924873238948629771.Spec : Prop :=
  ∀ n, P6924873238948629771.a n = A060551 (n + 1)

theorem P6924873238948629771.correct : P6924873238948629771.Spec := by
  intro n
  simp only [A060551, Nat.add_sub_cancel]

end A060551

/-! ## A060551.P6714789868174849895

`A000079(n+1)-3*2^A008619(n)-2^A008611(n)+3*2^A008615(n+2)`
-/

namespace A060551.P6714789868174849895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - 3 * (2 : ℚ) ^ (A008619 n : ℤ) - (2 : ℚ) ^ (A008611 n : ℤ) + 3 * (2 : ℚ) ^ (A008615 (n + 2) : ℤ)

end

end A060551.P6714789868174849895

namespace A060551

/-- `A000079(n+1)-3*2^A008619(n)-2^A008611(n)+3*2^A008615(n+2)` -/
def P6714789868174849895.Spec : Prop :=
  ∀ n, P6714789868174849895.a n = (A060551 (n + 1) : ℚ)

end A060551

/-! ## A060551.P6968401653231003893

`ogf((6x^3+6x^5-12x^6+6x^7-12x^8-12x^9)/(1-2x-2x^2+2x^3+4x^4+4x^5-10x^6+4x^7+4x^8-4x^9-8x^10-8x^11+16x^12))`
-/

namespace A060551.P6968401653231003893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6, 0, 6, -12, 6, -12, -12] [1, -2, -2, 2, 4, 4, -10, 4, 4, -4, -8, -8, 16] n

end

end A060551.P6968401653231003893

namespace A060551

/-- `ogf((6x^3+6x^5-12x^6+6x^7-12x^8-12x^9)/(1-2x-2x^2+2x^3+4x^4+4x^5-10x^6+4x^7+4x^8-4x^9-8x^10-8x^11+16x^12))` -/
def P6968401653231003893.Spec : Prop :=
  ∀ n, P6968401653231003893.a n = A060551 (n + 1)

end A060551

/-! ## A060551.P8426787567719209333

`A008588(A060552(n+1))`
-/

namespace A060551.P8426787567719209333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A060552 (n + 1)).toNat

end

end A060551.P8426787567719209333

namespace A060551

/-- `A008588(A060552(n+1))` -/
def P8426787567719209333.Spec : Prop :=
  ∀ n, P8426787567719209333.a n = A060551 (n + 1)

end A060551

/-!
# A060552: a(n) is the number of distinct (modulo geometric D3-operations) nonsymmetric (no reflective nor rotational symmetry) patterns which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

The programs for A060552, the canonical program `A060552.P4431457088495515140` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060552 has offset 1).

The definition of A060552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060552.P4431457088495515140

`(A000079(n)-A060547(n+1)/2)/3+A060548(n+1)/2-A060546(n+1)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060552

/-- `(A000079(n)-A060547(n+1)/2)/3+A060548(n+1)/2-A060546(n+1)/2` -/
def P4431457088495515140.Spec : Prop :=
  ∀ n, P4431457088495515140.a n = (A060552 (n + 1) : ℚ)

end A060552

/-! ## A060552.P7187117416247800952

`ogf((x^3+x^5-2x^6+x^7-2x^8-2x^9)/(1-2x-2x^2+2x^3+4x^4+4x^5-10x^6+4x^7+4x^8-4x^9-8x^10-8x^11+16x^12))`
-/

namespace A060552.P7187117416247800952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 0, 1, -2, 1, -2, -2] [1, -2, -2, 2, 4, 4, -10, 4, 4, -4, -8, -8, 16] n

end

end A060552.P7187117416247800952

namespace A060552

/-- `ogf((x^3+x^5-2x^6+x^7-2x^8-2x^9)/(1-2x-2x^2+2x^3+4x^4+4x^5-10x^6+4x^7+4x^8-4x^9-8x^10-8x^11+16x^12))` -/
def P7187117416247800952.Spec : Prop :=
  ∀ n, P7187117416247800952.a n = A060552 (n + 1)

end A060552

/-! ## A060552.P5029706115427311406

`A060551(n+1)/6`
-/

namespace A060552.P5029706115427311406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060551 (n + 1) : ℚ) / 6

end

end A060552.P5029706115427311406

namespace A060552

/-- `A060551(n+1)/6` -/
def P5029706115427311406.Spec : Prop :=
  ∀ n, P5029706115427311406.a n = (A060552 (n + 1) : ℚ)

end A060552

/-! ## A060552.P11706960557964166570

`floor(A060551(A008619(2*n))/6)`
-/

namespace A060552.P11706960557964166570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060551 (A008619 (2 * n)).toNat : ℚ) / 6⌋

end

end A060552.P11706960557964166570

namespace A060552

/-- `floor(A060551(A008619(2*n))/6)` -/
def P11706960557964166570.Spec : Prop :=
  ∀ n, P11706960557964166570.a n = A060552 (n + 1)

end A060552

/-! ## A060552.P1522337227780074958

`A060551(A008619(2*n))/6*A033999(n)²`
-/

namespace A060552.P1522337227780074958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060551 (A008619 (2 * n)).toNat : ℚ) / 6 * (A033999 n ^ 2 : ℚ)

end

end A060552.P1522337227780074958

namespace A060552

/-- `A060551(A008619(2*n))/6*A033999(n)²` -/
def P1522337227780074958.Spec : Prop :=
  ∀ n, P1522337227780074958.a n = (A060552 (n + 1) : ℚ)

end A060552

/-! ## A060552.P12091008053959977225

`6^A008683(A215161(n+1))*A060551(n+1)`
-/

namespace A060552.P12091008053959977225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A008683 (A215161 (n + 1)).toNat : ℤ) * (A060551 (n + 1) : ℚ)

end

end A060552.P12091008053959977225

namespace A060552

/-- `6^A008683(A215161(n+1))*A060551(n+1)` -/
def P12091008053959977225.Spec : Prop :=
  ∀ n, P12091008053959977225.a n = (A060552 (n + 1) : ℚ)

end A060552

/-! ## A060552.P14321918685051927020

`(1-A192490(A017089(n)))*A060551(A008619(2*n))/6`
-/

namespace A060552.P14321918685051927020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A192490 (A017089 n).toNat : ℚ) * ((A060551 (A008619 (2 * n)).toNat : ℚ) / 6)

end

end A060552.P14321918685051927020

namespace A060552

/-- `(1-A192490(A017089(n)))*A060551(A008619(2*n))/6` -/
def P14321918685051927020.Spec : Prop :=
  ∀ n, P14321918685051927020.a n = (A060552 (n + 1) : ℚ)

end A060552

/-! ## A060552.P16440350144263464632

`(A060551(A008619(2*n))/6)%A134067(n)`
-/

namespace A060552.P16440350144263464632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A060551 (A008619 (2 * n)).toNat : ℚ) / 6)) (A134067 n)

end

end A060552.P16440350144263464632

namespace A060552

/-- `(A060551(A008619(2*n))/6)%A134067(n)` -/
def P16440350144263464632.Spec : Prop :=
  ∀ n, P16440350144263464632.a n = A060552 (n + 1)

end A060552

/-! ## A060552.P5037524603890991232

`A060551(A008619(2*n))/6*A007318(∑[n])`
-/

namespace A060552.P5037524603890991232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060551 (A008619 (2 * n)).toNat : ℚ) / 6 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A060552.P5037524603890991232

namespace A060552

/-- `A060551(A008619(2*n))/6*A007318(∑[n])` -/
def P5037524603890991232.Spec : Prop :=
  ∀ n, P5037524603890991232.a n = (A060552 (n + 1) : ℚ)

end A060552

/-!
# A060553: a(n) is the number of distinct (modulo geometric D3-operations) patterns which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

The programs for A060553, the canonical program `A060553.P8251059348114031478` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060553 has offset 1).

The definition of A060553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060553.P14602521305814547993

`ogf((2-2x-4x^2-2x^3+2x^4+8x^5)/(1-2x-2x^2+2x^3+4x^4+4x^5-8x^6))`
-/

namespace A060553.P14602521305814547993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -4, -2, 2, 8] [1, -2, -2, 2, 4, 4, -8] n

end

end A060553.P14602521305814547993

namespace A060553

/-- `ogf((2-2x-4x^2-2x^3+2x^4+8x^5)/(1-2x-2x^2+2x^3+4x^4+4x^5-8x^6))` -/
def P14602521305814547993.Spec : Prop :=
  ∀ n, P14602521305814547993.a n = A060553 (n + 1)

end A060553

/-! ## A060553.P8251059348114031478

`(2^n+2^(floor((n+1)/3)+((n+1)%3)%2))/3+2^floor(n/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060553

/-- `(2^n+2^(floor((n+1)/3)+((n+1)%3)%2))/3+2^floor(n/2)` -/
def P8251059348114031478.Spec : Prop :=
  ∀ n, P8251059348114031478.a n = (A060553 (n + 1) : ℚ)

end A060553

/-! ## A060553.P17307787703584394118

`(A000079(n)+A060547(n+1))/3+A060546(n+1)/2`
-/

namespace A060553.P17307787703584394118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n + A060547 (n + 1) : ℚ) / 3 + (A060546 (n + 1) : ℚ) / 2

end

end A060553.P17307787703584394118

namespace A060553

/-- `(A000079(n)+A060547(n+1))/3+A060546(n+1)/2` -/
def P17307787703584394118.Spec : Prop :=
  ∀ n, P17307787703584394118.a n = (A060553 (n + 1) : ℚ)

end A060553

/-! ## A060553.P5871865349970240587

`(A000079(n)+2^A008611(n))/3+2^(A008619(n)-1)`
-/

namespace A060553.P5871865349970240587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 n : ℚ) + (2 : ℚ) ^ (A008611 n : ℤ)) / 3 + (2 : ℚ) ^ (A008619 n - 1 : ℤ)

end

end A060553.P5871865349970240587

namespace A060553

/-- `(A000079(n)+2^A008611(n))/3+2^(A008619(n)-1)` -/
def P5871865349970240587.Spec : Prop :=
  ∀ n, P5871865349970240587.a n = (A060553 (n + 1) : ℚ)

end A060553

/-! ## A060553.P15459756570569610789

`A068010(n)+A016116(n)`
-/

namespace A060553.P15459756570569610789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + A016116 n

end

end A060553.P15459756570569610789

namespace A060553

/-- `A068010(n)+A016116(n)` -/
def P15459756570569610789.Spec : Prop :=
  ∀ n, P15459756570569610789.a n = A060553 (n + 1)

end A060553

/-! ## A060553.P6660132051918302356

`A068010(n)+Δ[A052955(n)]`
-/

namespace A060553.P6660132051918302356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + (f1 (n + 1) - f1 n)

end

end A060553.P6660132051918302356

namespace A060553

/-- `A068010(n)+Δ[A052955(n)]` -/
def P6660132051918302356.Spec : Prop :=
  ∀ n, P6660132051918302356.a n = A060553 (n + 1)

end A060553

/-! ## A060553.P1264398461413702684

`A068010(n)+Δ[A209721(n+1)]`
-/

namespace A060553.P1264398461413702684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + (f1 (n + 1) - f1 n)

end

end A060553.P1264398461413702684

namespace A060553

/-- `A068010(n)+Δ[A209721(n+1)]` -/
def P1264398461413702684.Spec : Prop :=
  ∀ n, P1264398461413702684.a n = A060553 (n + 1)

end A060553

/-! ## A060553.P15308268056680824485

`A068010(n)+A000079(A004526(n))`
-/

namespace A060553.P15308268056680824485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + A000079 (A004526 n).toNat

end

end A060553.P15308268056680824485

namespace A060553

/-- `A068010(n)+A000079(A004526(n))` -/
def P15308268056680824485.Spec : Prop :=
  ∀ n, P15308268056680824485.a n = A060553 (n + 1)

end A060553

/-! ## A060553.P4771241419612134662

`A068010(n)+A011782(A008619(n))`
-/

namespace A060553.P4771241419612134662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + A011782 (A008619 n).toNat

end

end A060553.P4771241419612134662

namespace A060553

/-- `A068010(n)+A011782(A008619(n))` -/
def P4771241419612134662.Spec : Prop :=
  ∀ n, P4771241419612134662.a n = A060553 (n + 1)

end A060553

/-! ## A060553.P4815670612164813305

`A068010(n)+A000079(A008619(n)-1)`
-/

namespace A060553.P4815670612164813305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068010 n + A000079 (A008619 n - 1).toNat

end

end A060553.P4815670612164813305

namespace A060553

/-- `A068010(n)+A000079(A008619(n)-1)` -/
def P4815670612164813305.Spec : Prop :=
  ∀ n, P4815670612164813305.a n = A060553 (n + 1)

end A060553

/-!
# A060555: String together the first n numbers in an order which minimizes the result.

The programs for A060555, there is no canonical definition to state claims against.
-/

/-! ## A060555.P16752598208207993570

`A001292(A000124(n)^A005135(n))`
-/

namespace A060555.P16752598208207993570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001292 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A005135 n : ℤ))).toNat

end

end A060555.P16752598208207993570

/-! ## A060555.P5164346649632758719

`A001292(A000124(n)%A058993(n+4))`
-/

namespace A060555.P5164346649632758719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001292 (Int.tmod (A000124 n) (A058993 (n + 4))).toNat

end

end A060555.P5164346649632758719

/-! ## A060555.P16796499879420202673

`record[A001292(n+1)/A348595(n)]`
-/

namespace A060555.P16796499879420202673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001292 (n + 1) : ℚ) / (A348595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060555.P16796499879420202673

/-! ## A060555.P10634339994675329480

`A001292(A000124(n)^A319099(n+1))`
-/

namespace A060555.P10634339994675329480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001292 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A319099 (n + 1) : ℤ))).toNat

end

end A060555.P10634339994675329480

/-!
# A060556: Bisection of triangle A060098: odd-indexed members of column sequences of A060098 (not counting leading zeros).

The programs for A060556, there is no canonical definition to state claims against.
-/

/-! ## A060556.P3725971199262776431

`A276696(∑[char[∑[n]]]²+2*n)`
-/

namespace A060556.P3725971199262776431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276696 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A060556.P3725971199262776431

/-! ## A060556.P5854681186916832548

`A097623(A059300(n))`
-/

namespace A060556.P5854681186916832548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097623 (A059300 n).toNat

end

end A060556.P5854681186916832548

/-! ## A060556.P1204652714278573460

`A259434(A046803(n+1))`
-/

namespace A060556.P1204652714278573460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259434 (A046803 (n + 1)).toNat

end

end A060556.P1204652714278573460

/-! ## A060556.P14154318119823618143

`and(record[A085587(n+1)], A059300(n))`
-/

namespace A060556.P14154318119823618143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A059300 n)

end

end A060556.P14154318119823618143

/-!
# A060557: Row sums of triangle A060556.

The programs for A060557, the canonical program `A060557.P15859946953129485583` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060557 has offset 0).

The definition of A060557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060557.P1507446235896418022

`ogf((1-2x+x^2)/(1-5x+6x^2-x^3))`
-/

namespace A060557.P1507446235896418022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -5, 6, -1] n

end

end A060557.P1507446235896418022

namespace A060557

/-- `ogf((1-2x+x^2)/(1-5x+6x^2-x^3))` -/
def P1507446235896418022.Spec : Prop :=
  ∀ n, P1507446235896418022.a n = A060557 n

end A060557

/-! ## A060557.P15859946953129485583

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060557

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P15859946953129485583.Spec : Prop :=
  ∀ n, P15859946953129485583.a n = A060557 n

theorem P15859946953129485583.correct : P15859946953129485583.Spec := by
  intro n
  simp only [A060557]

end A060557

/-! ## A060557.P7743728709334766072

`A028495(Δ[n²])`
-/

namespace A060557.P7743728709334766072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060557.P7743728709334766072

namespace A060557

/-- `A028495(Δ[n²])` -/
def P7743728709334766072.Spec : Prop :=
  ∀ n, P7743728709334766072.a n = A060557 n

end A060557

/-! ## A060557.P10775723289177511740

`Δ[A187067(4*n)]`
-/

namespace A060557.P10775723289177511740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060557.P10775723289177511740

namespace A060557

/-- `Δ[A187067(4*n)]` -/
def P10775723289177511740.Spec : Prop :=
  ∀ n, P10775723289177511740.a n = A060557 n

end A060557

/-! ## A060557.P1621926330229393644

`Δ[A006053(Δ[n²])]`
-/

namespace A060557.P1621926330229393644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060557.P1621926330229393644

namespace A060557

/-- `Δ[A006053(Δ[n²])]` -/
def P1621926330229393644.Spec : Prop :=
  ∀ n, P1621926330229393644.a n = A060557 n

end A060557

/-! ## A060557.P4373927482166910860

`A187067(4*n+3)`
-/

namespace A060557.P4373927482166910860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * n + 3)

end

end A060557.P4373927482166910860

namespace A060557

/-- `A187067(4*n+3)` -/
def P4373927482166910860.Spec : Prop :=
  ∀ n, P4373927482166910860.a n = A060557 n

end A060557

/-! ## A060557.P18289296330602396557

`Δ[A187066(4*n+1)]`
-/

namespace A060557.P18289296330602396557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060557.P18289296330602396557

namespace A060557

/-- `Δ[A187066(4*n+1)]` -/
def P18289296330602396557.Spec : Prop :=
  ∀ n, P18289296330602396557.a n = A060557 n

end A060557

/-! ## A060557.P3816151849316026242

`Δ[A187065(4*n+3)]`
-/

namespace A060557.P3816151849316026242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060557.P3816151849316026242

namespace A060557

/-- `Δ[A187065(4*n+3)]` -/
def P3816151849316026242.Spec : Prop :=
  ∀ n, P3816151849316026242.a n = A060557 n

end A060557

/-! ## A060557.P4943804409352953140

`record[A028495(xor(1, n+1))]`
-/

namespace A060557.P4943804409352953140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060557.P4943804409352953140

namespace A060557

/-- `record[A028495(xor(1, n+1))]` -/
def P4943804409352953140.Spec : Prop :=
  ∀ n, P4943804409352953140.a n = A060557 n

end A060557

/-! ## A060557.P12573094474711490468

`or(char[1], A028495(2*n+1))`
-/

namespace A060557.P12573094474711490468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A028495 (2 * n + 1))

end

end A060557.P12573094474711490468

namespace A060557

/-- `or(char[1], A028495(2*n+1))` -/
def P12573094474711490468.Spec : Prop :=
  ∀ n, P12573094474711490468.a n = A060557 n

end A060557

/-! ## A060557.P367260239569224098

`A291015(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A060557.P367260239569224098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291015 (n - 1) + a (n - 1)

end

end A060557.P367260239569224098

namespace A060557

/-- `A291015(n-1)+a(n-1)` -/
def P367260239569224098.Spec : Prop :=
  ∀ n, P367260239569224098.a n = A060557 n

end A060557

/-! ## A060557.P7825443493160662715

`record[A028495(A014681(n)+1)]`
-/

namespace A060557.P7825443493160662715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060557.P7825443493160662715

namespace A060557

/-- `record[A028495(A014681(n)+1)]` -/
def P7825443493160662715.Spec : Prop :=
  ∀ n, P7825443493160662715.a n = A060557 n

end A060557

/-! ## A060557.P16465169074061260857

`record[A028495(A153733(n)+1)]`
-/

namespace A060557.P16465169074061260857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (A153733 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060557.P16465169074061260857

namespace A060557

/-- `record[A028495(A153733(n)+1)]` -/
def P16465169074061260857.Spec : Prop :=
  ∀ n, P16465169074061260857.a n = A060557 n

end A060557

/-! ## A060557.P5849116626433951974

`A215694(n)+A006053(2*n)`
-/

namespace A060557.P5849116626433951974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215694 n + A006053 (2 * n)

end

end A060557.P5849116626433951974

namespace A060557

/-- `A215694(n)+A006053(2*n)` -/
def P5849116626433951974.Spec : Prop :=
  ∀ n, P5849116626433951974.a n = A060557 n

end A060557

/-! ## A060557.P7193560587946977454

`2*A052975(n)-A080937(n)`
-/

namespace A060557.P7193560587946977454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052975 n - A080937 n

end

end A060557.P7193560587946977454

namespace A060557

/-- `2*A052975(n)-A080937(n)` -/
def P7193560587946977454.Spec : Prop :=
  ∀ n, P7193560587946977454.a n = A060557 n

end A060557

/-! ## A060557.P17428844234257112716

`A052975(n+1)-∑[A052975(n)]`
-/

namespace A060557.P17428844234257112716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060557.P17428844234257112716

namespace A060557

/-- `A052975(n+1)-∑[A052975(n)]` -/
def P17428844234257112716.Spec : Prop :=
  ∀ n, P17428844234257112716.a n = A060557 n

end A060557

/-! ## A060557.P16527254702640988644

`A080937(n+2)-∑[A080937(n)]`
-/

namespace A060557.P16527254702640988644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060557.P16527254702640988644

namespace A060557

/-- `A080937(n+2)-∑[A080937(n)]` -/
def P16527254702640988644.Spec : Prop :=
  ∀ n, P16527254702640988644.a n = A060557 n

end A060557

/-! ## A060557.P15621192034983103701

`A052975(n+1)-A094790(n+1)`
-/

namespace A060557.P15621192034983103701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) - A094790 (n + 1)

end

end A060557.P15621192034983103701

namespace A060557

/-- `A052975(n+1)-A094790(n+1)` -/
def P15621192034983103701.Spec : Prop :=
  ∀ n, P15621192034983103701.a n = A060557 n

end A060557

/-! ## A060557.P2843858499555876

`A052975(n)+A006053(2*n+1)`
-/

namespace A060557.P2843858499555876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 n + A006053 (2 * n + 1)

end

end A060557.P2843858499555876

namespace A060557

/-- `A052975(n)+A006053(2*n+1)` -/
def P2843858499555876.Spec : Prop :=
  ∀ n, P2843858499555876.a n = A060557 n

end A060557

/-! ## A060557.P13962261387310267206

`A033999(n)²*A028495(2*n+1)`
-/

namespace A060557.P13962261387310267206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A028495 (2 * n + 1)

end

end A060557.P13962261387310267206

namespace A060557

/-- `A033999(n)²*A028495(2*n+1)` -/
def P13962261387310267206.Spec : Prop :=
  ∀ n, P13962261387310267206.a n = A060557 n

end A060557

/-!
# A060558: Fifth column (m=4) of triangle A060556.

The programs for A060558, the canonical program `A060558.P12745876215450791672` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060558 has offset 0).

The definition of A060558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060558.P12745876215450791672

`(2*n²+18*n+35)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060558

/-- `(2*n²+18*n+35)*C(n+6, 6)/7` -/
def P12745876215450791672.Spec : Prop :=
  ∀ n, P12745876215450791672.a n = (A060558 n : ℚ)

end A060558

/-! ## A060558.P13865720469766591447

`A060100(Δ[n²])`
-/

namespace A060558.P13865720469766591447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060558.P13865720469766591447

namespace A060558

/-- `A060100(Δ[n²])` -/
def P13865720469766591447.Spec : Prop :=
  ∀ n, P13865720469766591447.a n = A060558 n

end A060558

/-! ## A060558.P6000592419181649973

`∑[∑[A299335(2*n+1)]]`
-/

namespace A060558.P6000592419181649973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060558.P6000592419181649973

namespace A060558

/-- `∑[∑[A299335(2*n+1)]]` -/
def P6000592419181649973.Spec : Prop :=
  ∀ n, P6000592419181649973.a n = A060558 n

end A060558

/-! ## A060558.P9792633949675482586

`∑[∑[∑[A001753(2*n+1)]]]`
-/

namespace A060558.P9792633949675482586
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060558.P9792633949675482586

namespace A060558

/-- `∑[∑[∑[A001753(2*n+1)]]]` -/
def P9792633949675482586.Spec : Prop :=
  ∀ n, P9792633949675482586.a n = A060558 n

end A060558

/-! ## A060558.P16270472609221029017

`record[A060100(A014681(n)+1)]`
-/

namespace A060558.P16270472609221029017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060558.P16270472609221029017

namespace A060558

/-- `record[A060100(A014681(n)+1)]` -/
def P16270472609221029017.Spec : Prop :=
  ∀ n, P16270472609221029017.a n = A060558 n

end A060558

/-! ## A060558.P6962405353637565104

`record[A060100(A230423(n)+1)]`
-/

namespace A060558.P6962405353637565104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A230423 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060558.P6962405353637565104

namespace A060558

/-- `record[A060100(A230423(n)+1)]` -/
def P6962405353637565104.Spec : Prop :=
  ∀ n, P6962405353637565104.a n = A060558 n

end A060558

/-! ## A060558.P11373877529678913211

`record[A060100(A237420(n)+1)]`
-/

namespace A060558.P11373877529678913211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060558.P11373877529678913211

namespace A060558

/-- `record[A060100(A237420(n)+1)]` -/
def P11373877529678913211.Spec : Prop :=
  ∀ n, P11373877529678913211.a n = A060558 n

end A060558

/-! ## A060558.P14538565643496159074

`record[A060100(A033999(n)+n)]`
-/

namespace A060558.P14538565643496159074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060558.P14538565643496159074

namespace A060558

/-- `record[A060100(A033999(n)+n)]` -/
def P14538565643496159074.Spec : Prop :=
  ∀ n, P14538565643496159074.a n = A060558 n

end A060558

/-! ## A060558.P13806997095754444837

`A060100(2*n)+A038164(2*n+1)`
-/

namespace A060558.P13806997095754444837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (2 * n) + A038164 (2 * n + 1)

end

end A060558.P13806997095754444837

namespace A060558

/-- `A060100(2*n)+A038164(2*n+1)` -/
def P13806997095754444837.Spec : Prop :=
  ∀ n, P13806997095754444837.a n = A060558 n

end A060558

/-! ## A060558.P13711014919391069557

`∑[A038164(2*n+1)+A038164(2*n)]`
-/

namespace A060558.P13711014919391069557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038164 (2 * n + 1) + A038164 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060558.P13711014919391069557

namespace A060558

/-- `∑[A038164(2*n+1)+A038164(2*n)]` -/
def P13711014919391069557.Spec : Prop :=
  ∀ n, P13711014919391069557.a n = A060558 n

end A060558

/-! ## A060558.P2684222159674659845

`∑[∑[A060099(2*n+1)+A060099(2*n)]]`
-/

namespace A060558.P2684222159674659845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n + 1) + A060099 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060558.P2684222159674659845

namespace A060558

/-- `∑[∑[A060099(2*n+1)+A060099(2*n)]]` -/
def P2684222159674659845.Spec : Prop :=
  ∀ n, P2684222159674659845.a n = A060558 n

end A060558

/-! ## A060558.P6188749764911783146

`A060100(A028310(2*n+1))²/A060100(2*n+1)`
-/

namespace A060558.P6188749764911783146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060100 (A028310 (2 * n + 1)).toNat ^ 2 : ℚ) / (A060100 (2 * n + 1) : ℚ)

end

end A060558.P6188749764911783146

namespace A060558

/-- `A060100(A028310(2*n+1))²/A060100(2*n+1)` -/
def P6188749764911783146.Spec : Prop :=
  ∀ n, P6188749764911783146.a n = (A060558 n : ℚ)

end A060558

/-! ## A060558.P13235147508611261419

`A060100(2*(n+1))-A059600(n+1)`
-/

namespace A060558.P13235147508611261419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (2 * (n + 1)) - A059600 (n + 1)

end

end A060558.P13235147508611261419

namespace A060558

/-- `A060100(2*(n+1))-A059600(n+1)` -/
def P13235147508611261419.Spec : Prop :=
  ∀ n, P13235147508611261419.a n = A060558 n

end A060558

/-! ## A060558.P12060328544330616337

`record[A060100(A018838(n)+1)]`
-/

namespace A060558.P12060328544330616337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A018838 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060558.P12060328544330616337

namespace A060558

/-- `record[A060100(A018838(n)+1)]` -/
def P12060328544330616337.Spec : Prop :=
  ∀ n, P12060328544330616337.a n = A060558 n

end A060558

/-! ## A060558.P4777798569576620137

`record[A060100(A131380(n)+1)]`
-/

namespace A060558.P4777798569576620137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 (A131380 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060558.P4777798569576620137

namespace A060558

/-- `record[A060100(A131380(n)+1)]` -/
def P4777798569576620137.Spec : Prop :=
  ∀ n, P4777798569576620137.a n = A060558 n

end A060558

/-!
# A060559: One half of sixth column (m=5) of triangle A060556.

The programs for A060559, the canonical program `A060559.P18277517613775327240` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060559 has offset 0).

The definition of A060559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060559.P18277517613775327240

`(8*n²+72*n+135)*C(n+8, 8)/45`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060559

/-- `(8*n²+72*n+135)*C(n+8, 8)/45` -/
def P18277517613775327240.Spec : Prop :=
  ∀ n, P18277517613775327240.a n = (A060559 n : ℚ)

end A060559

/-! ## A060559.P18293250184439803468

`∑[(A059602(n)+A059601(n))/2]`
-/

namespace A060559.P18293250184439803468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059602 n + A059601 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060559.P18293250184439803468

namespace A060559

/-- `∑[(A059602(n)+A059601(n))/2]` -/
def P18293250184439803468.Spec : Prop :=
  ∀ n, P18293250184439803468.a n = (A060559 n : ℚ)

end A060559

/-! ## A060559.P8114241602080323495

`A060101(Δ[n²])/2`
-/

namespace A060559.P8114241602080323495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A060559.P8114241602080323495

namespace A060559

/-- `A060101(Δ[n²])/2` -/
def P8114241602080323495.Spec : Prop :=
  ∀ n, P8114241602080323495.a n = (A060559 n : ℚ)

end A060559

/-! ## A060559.P4381861037790493874

`floor(A060101(2*n+1)/2)`
-/

namespace A060559.P4381861037790493874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060101 (2 * n + 1) : ℚ) / 2⌋

end

end A060559.P4381861037790493874

namespace A060559

/-- `floor(A060101(2*n+1)/2)` -/
def P4381861037790493874.Spec : Prop :=
  ∀ n, P4381861037790493874.a n = A060559 n

end A060559

/-! ## A060559.P14501381522171833799

`floor((A060101(A005408(n))+1)/2)`
-/

namespace A060559.P14501381522171833799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060101 (A005408 n).toNat + 1 : ℚ) / 2⌋

end

end A060559.P14501381522171833799

namespace A060559

/-- `floor((A060101(A005408(n))+1)/2)` -/
def P14501381522171833799.Spec : Prop :=
  ∀ n, P14501381522171833799.a n = A060559 n

end A060559

/-! ## A060559.P15673140104335880309

`A060101(2*n+1)/2*A007318(C(2, n))`
-/

namespace A060559.P15673140104335880309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060101 (2 * n + 1) : ℚ) / 2 * (A007318 (Nat.choose 2 n) : ℚ)

end

end A060559.P15673140104335880309

namespace A060559

/-- `A060101(2*n+1)/2*A007318(C(2, n))` -/
def P15673140104335880309.Spec : Prop :=
  ∀ n, P15673140104335880309.a n = (A060559 n : ℚ)

end A060559

/-! ## A060559.P544676774920445137

`A060101(2*n+1)/2*A323022(A000040(n+1))`
-/

namespace A060559.P544676774920445137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060101 (2 * n + 1) : ℚ) / 2 * (A323022 (A000040 (n + 1)).toNat : ℚ)

end

end A060559.P544676774920445137

namespace A060559

/-- `A060101(2*n+1)/2*A323022(A000040(n+1))` -/
def P544676774920445137.Spec : Prop :=
  ∀ n, P544676774920445137.a n = (A060559 n : ℚ)

end A060559

/-!
# A060560: Number of ways to color the vertices of an octagon using <= n colors, allowing rotations and reflections.

The programs for A060560, the canonical program `A060560.P3424272561325593215` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060560 has offset 0).

The definition of A060560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060560.P3424272561325593215

`n*(n^7+4*n^4+5*n^3+2*n+4)/16`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060560

/-- `n*(n^7+4*n^4+5*n^3+2*n+4)/16` -/
def P3424272561325593215.Spec : Prop :=
  ∀ n, P3424272561325593215.a n = (A060560 n : ℚ)

end A060560

/-! ## A060560.P17066541555863213830

`A208544(A167499(n+6)+3)`
-/

namespace A060560.P17066541555863213830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A167499 (n + 6) + 3).toNat

end

end A060560.P17066541555863213830

namespace A060560

/-- `A208544(A167499(n+6)+3)` -/
def P17066541555863213830.Spec : Prop :=
  ∀ n, P17066541555863213830.a n = A060560 n

end A060560

/-! ## A060560.P7846395061459507221

`A208544(A000217(n+7)+8)`
-/

namespace A060560.P7846395061459507221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000217 (n + 7) + 8).toNat

end

end A060560.P7846395061459507221

namespace A060560

/-- `A208544(A000217(n+7)+8)` -/
def P7846395061459507221.Spec : Prop :=
  ∀ n, P7846395061459507221.a n = A060560 n

end A060560

/-! ## A060560.P9658402286836519385

`A208544(A161680(n+8)+8)`
-/

namespace A060560.P9658402286836519385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A161680 (n + 8) + 8).toNat

end

end A060560.P9658402286836519385

namespace A060560

/-- `A208544(A161680(n+8)+8)` -/
def P9658402286836519385.Spec : Prop :=
  ∀ n, P9658402286836519385.a n = A060560 n

end A060560

/-! ## A060560.P15909872423581398526

`A208544(A000124(n+8)-(n+1))`
-/

namespace A060560.P15909872423581398526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A060560.P15909872423581398526

namespace A060560

/-- `A208544(A000124(n+8)-(n+1))` -/
def P15909872423581398526.Spec : Prop :=
  ∀ n, P15909872423581398526.a n = A060560 n

end A060560

/-!
# A060561: Number of ways to color vertices of a 9-gon using <= n colors, allowing rotations and reflections.

The programs for A060561, the canonical program `A060561.P5264418334482276597` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060561 has offset 0).

The definition of A060561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060561.P5264418334482276597

`(n^9+9*n^5+2*n^3+6*n)/18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060561

/-- `(n^9+9*n^5+2*n^3+6*n)/18` -/
def P5264418334482276597.Spec : Prop :=
  ∀ n, P5264418334482276597.a n = (A060561 n : ℚ)

end A060561

/-!
# A060562: Number of ways to color vertices of a 10-gon using <= n colors, allowing rotations and reflections.

The programs for A060562, the canonical program `A060562.P13995839367757001225` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060562 has offset 0).

The definition of A060562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060562.P13995839367757001225

`(n^10+5*n^6+6*n^5+4*n²+4*n)/20`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060562

/-- `(n^10+5*n^6+6*n^5+4*n²+4*n)/20` -/
def P13995839367757001225.Spec : Prop :=
  ∀ n, P13995839367757001225.a n = (A060562 n : ℚ)

end A060562

/-! ## A060562.P12074174061179540398

`A208544(A167499(n+8)+5)`
-/

namespace A060562.P12074174061179540398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A167499 (n + 8) + 5).toNat

end

end A060562.P12074174061179540398

namespace A060562

/-- `A208544(A167499(n+8)+5)` -/
def P12074174061179540398.Spec : Prop :=
  ∀ n, P12074174061179540398.a n = A060562 n

end A060562

/-! ## A060562.P15377799221065181244

`A208544(A000217(n+9)+10)`
-/

namespace A060562.P15377799221065181244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A000217 (n + 9) + 10).toNat

end

end A060562.P15377799221065181244

namespace A060562

/-- `A208544(A000217(n+9)+10)` -/
def P15377799221065181244.Spec : Prop :=
  ∀ n, P15377799221065181244.a n = A060562 n

end A060562

/-! ## A060562.P6656745788606618627

`A208544(A008458(n+8)+A000124(n+3))`
-/

namespace A060562.P6656745788606618627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A008458 (n + 8) + A000124 (n + 3)).toNat

end

end A060562.P6656745788606618627

namespace A060562

/-- `A208544(A008458(n+8)+A000124(n+3))` -/
def P6656745788606618627.Spec : Prop :=
  ∀ n, P6656745788606618627.a n = A060562 n

end A060562

/-! ## A060562.P16281134608380138938

`A208544(A008486(n+11)+A000124(n+6))`
-/

namespace A060562.P16281134608380138938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208544 (A008486 (n + 11) + A000124 (n + 6)).toNat

end

end A060562.P16281134608380138938

namespace A060562

/-- `A208544(A008486(n+11)+A000124(n+6))` -/
def P16281134608380138938.Spec : Prop :=
  ∀ n, P16281134608380138938.a n = A060562 n

end A060562

/-!
# A060563: First n digits after decimal point in the expansion of sqrt(n), or 0 if n is a square. Leading zeros omitted.

The programs for A060563, there is no canonical definition to state claims against.
-/

/-! ## A060563.P3597031433314510050

`A093471(n+1)%Δ[A002275(n+1)]`
-/

namespace A060563.P3597031433314510050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093471 (n + 1)) (f1 (n + 1) - f1 n)

end

end A060563.P3597031433314510050

/-!
# A060564: Number of elliptic curves (up to isogeny) of conductor n.

The programs for A060564, there is no canonical definition to state claims against.
-/

/-! ## A060564.P9434993421918389682

`and(A051724(A222635(n+1)), A127788(n+1))`
-/

namespace A060564.P9434993421918389682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051724 (A222635 (n + 1)).toNat) (A127788 (n + 1))

end

end A060564.P9434993421918389682

/-! ## A060564.P18390075565261546815

`and(A005408(A321272(n+1)), A127788(n+1))`
-/

namespace A060564.P18390075565261546815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A321272 (n + 1)).toNat) (A127788 (n + 1))

end

end A060564.P18390075565261546815

/-! ## A060564.P16637790061977187978

`and(∑[A127800(2*n)], A127788(n+1))`
-/

namespace A060564.P16637790061977187978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127800 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A127788 (n + 1))

end

end A060564.P16637790061977187978

/-! ## A060564.P4624578151283802507

`and(A127788(n+1), A132450(n+1))`
-/

namespace A060564.P4624578151283802507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127788 (n + 1)) (A132450 (n + 1))

end

end A060564.P4624578151283802507

/-! ## A060564.P13291304315689819565

`and(A127788(n+1), A323558(n+1))`
-/

namespace A060564.P13291304315689819565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127788 (n + 1)) (A323558 (n + 1))

end

end A060564.P13291304315689819565

/-!
# A060566: a(n) = n^2 - 79*n + 1601.

The programs for A060566, the canonical program `A060566.P12467925969216394313` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060566 has offset 0).

The definition of A060566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060566.P12467925969216394313

`(40-n)²+1+n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060566

/-- `(40-n)²+1+n` -/
def P12467925969216394313.Spec : Prop :=
  ∀ n, P12467925969216394313.a n = A060566 n

theorem P12467925969216394313.correct : P12467925969216394313.Spec := by
  intro n
  simp only [A060566]

end A060566

/-! ## A060566.P13230313871014508132

`or(A023482(n)²+n+1, A036987(n+1))`
-/

namespace A060566.P13230313871014508132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023482 n ^ 2 + (n + 1 : ℤ)) (A036987 (n + 1))

end

end A060566.P13230313871014508132

namespace A060566

/-- `or(A023482(n)²+n+1, A036987(n+1))` -/
def P13230313871014508132.Spec : Prop :=
  ∀ n, P13230313871014508132.a n = A060566 n

end A060566

/-! ## A060566.P1509190077809341859

`abs((A023482(n)²+n+1)*A020985(n+1))`
-/

namespace A060566.P1509190077809341859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A023482 n ^ 2 + (n + 1 : ℤ)) * A020985 (n + 1)|

end

end A060566.P1509190077809341859

namespace A060566

/-- `abs((A023482(n)²+n+1)*A020985(n+1))` -/
def P1509190077809341859.Spec : Prop :=
  ∀ n, P1509190077809341859.a n = A060566 n

end A060566

/-! ## A060566.P697218324303099215

`abs((A023482(n)²+n+1)*A034947(n+1))`
-/

namespace A060566.P697218324303099215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A023482 n ^ 2 + (n + 1 : ℤ)) * A034947 (n + 1)|

end

end A060566.P697218324303099215

namespace A060566

/-- `abs((A023482(n)²+n+1)*A034947(n+1))` -/
def P697218324303099215.Spec : Prop :=
  ∀ n, P697218324303099215.a n = A060566 n

end A060566

/-! ## A060566.P16746424173822811589

`(A023482(n)²+n+1)*A036798(n+1)%2`
-/

namespace A060566.P16746424173822811589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * Int.tmod (A036798 (n + 1)) 2

end

end A060566.P16746424173822811589

namespace A060566

/-- `(A023482(n)²+n+1)*A036798(n+1)%2` -/
def P16746424173822811589.Spec : Prop :=
  ∀ n, P16746424173822811589.a n = A060566 n

end A060566

/-! ## A060566.P3315529065521576119

`(A023482(n)²+n+1)*A007318(n²%(n+1))`
-/

namespace A060566.P3315529065521576119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * A007318 (n ^ 2 % (n + 1))

end

end A060566.P3315529065521576119

namespace A060566

/-- `(A023482(n)²+n+1)*A007318(n²%(n+1))` -/
def P3315529065521576119.Spec : Prop :=
  ∀ n, P3315529065521576119.a n = A060566 n

end A060566

/-! ## A060566.P12967837743145731852

`(A023482(n)²+n+1)*A001222(Δ[A004957(n)])`
-/

namespace A060566.P12967837743145731852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * A001222 (f1 (n + 1) - f1 n).toNat

end

end A060566.P12967837743145731852

namespace A060566

/-- `(A023482(n)²+n+1)*A001222(Δ[A004957(n)])` -/
def P12967837743145731852.Spec : Prop :=
  ∀ n, P12967837743145731852.a n = A060566 n

end A060566

/-! ## A060566.P2437356611893397826

`or(A023482(n)²+n+1, A001222(A014963(n+1)))`
-/

namespace A060566.P2437356611893397826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023482 n ^ 2 + (n + 1 : ℤ)) (A001222 (A014963 (n + 1)).toNat)

end

end A060566.P2437356611893397826

namespace A060566

/-- `or(A023482(n)²+n+1, A001222(A014963(n+1)))` -/
def P2437356611893397826.Spec : Prop :=
  ∀ n, P2437356611893397826.a n = A060566 n

end A060566

/-! ## A060566.P17084607945608727962

`(A023482(n)²+n+1)*A000034(or(1, n)+1)`
-/

namespace A060566.P17084607945608727962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * A000034 (Nat.lor 1 n + 1)

end

end A060566.P17084607945608727962

namespace A060566

/-- `(A023482(n)²+n+1)*A000034(or(1, n)+1)` -/
def P17084607945608727962.Spec : Prop :=
  ∀ n, P17084607945608727962.a n = A060566 n

end A060566

/-! ## A060566.P887764129433991763

`(A023482(n)²+n+1)*A152271(2*n)`
-/

namespace A060566.P887764129433991763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * A152271 (2 * n)

end

end A060566.P887764129433991763

namespace A060566

/-- `(A023482(n)²+n+1)*A152271(2*n)` -/
def P887764129433991763.Spec : Prop :=
  ∀ n, P887764129433991763.a n = A060566 n

end A060566

/-! ## A060566.P9948033760766533517

`and(A023482(n)²+n+1, A280193(2*n+1))`
-/

namespace A060566.P9948033760766533517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023482 n ^ 2 + (n + 1 : ℤ)) (A280193 (2 * n + 1))

end

end A060566.P9948033760766533517

namespace A060566

/-- `and(A023482(n)²+n+1, A280193(2*n+1))` -/
def P9948033760766533517.Spec : Prop :=
  ∀ n, P9948033760766533517.a n = A060566 n

end A060566

/-! ## A060566.P8642978153504992138

`-((A023482(n)²+n+1)*A008683(A003629(n+1)))`
-/

namespace A060566.P8642978153504992138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A023482 n ^ 2 + (n + 1 : ℤ)) * A008683 (A003629 (n + 1)).toNat)

end

end A060566.P8642978153504992138

namespace A060566

/-- `-((A023482(n)²+n+1)*A008683(A003629(n+1)))` -/
def P8642978153504992138.Spec : Prop :=
  ∀ n, P8642978153504992138.a n = A060566 n

end A060566

/-! ## A060566.P6593163279152127035

`A000027(A022996(n)²+n+1)`
-/

namespace A060566.P6593163279152127035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022996 n ^ 2 + (n + 1 : ℤ)).toNat

end

end A060566.P6593163279152127035

namespace A060566

/-- `A000027(A022996(n)²+n+1)` -/
def P6593163279152127035.Spec : Prop :=
  ∀ n, P6593163279152127035.a n = A060566 n

end A060566

/-! ## A060566.P3132772799266044166

`A000027(A023482(n)²+n+1)`
-/

namespace A060566.P3132772799266044166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A023482 n ^ 2 + (n + 1 : ℤ)).toNat

end

end A060566.P3132772799266044166

namespace A060566

/-- `A000027(A023482(n)²+n+1)` -/
def P3132772799266044166.Spec : Prop :=
  ∀ n, P3132772799266044166.a n = A060566 n

end A060566

/-! ## A060566.P12476369488147494820

`(A023482(n)²+n+1)*A001222(A099349(n+1))`
-/

namespace A060566.P12476369488147494820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * A001222 (A099349 (n + 1)).toNat

end

end A060566.P12476369488147494820

namespace A060566

/-- `(A023482(n)²+n+1)*A001222(A099349(n+1))` -/
def P12476369488147494820.Spec : Prop :=
  ∀ n, P12476369488147494820.a n = A060566 n

end A060566

/-! ## A060566.P774292298440931657

`(A023482(n)²+n+1)*A000005((n+1)²)%2`
-/

namespace A060566.P774292298440931657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023482 n ^ 2 + (n + 1 : ℤ)) * Int.tmod (A000005 ((n + 1) ^ 2)) 2

end

end A060566.P774292298440931657

namespace A060566

/-- `(A023482(n)²+n+1)*A000005((n+1)²)%2` -/
def P774292298440931657.Spec : Prop :=
  ∀ n, P774292298440931657.a n = A060566 n

end A060566

/-! ## A060566.P13101500722384590333

`A141310((40-n)²+n)`
-/

namespace A060566.P13101500722384590333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((40 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A060566.P13101500722384590333

namespace A060566

/-- `A141310((40-n)²+n)` -/
def P13101500722384590333.Spec : Prop :=
  ∀ n, P13101500722384590333.a n = A060566 n

end A060566

/-!
# A060569: Consider Pythagorean triples which satisfy X^2+(X+7)^2=Z^2; sequence gives increasing values of Z.

The programs for A060569, the canonical program `A060569.P13296775485247044272` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060569 has offset 1).

The definition of A060569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060569.P13296775485247044272

`ogf((13+17x-5x^2-5x^3)/(1-6x^2+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060569

/-- `ogf((13+17x-5x^2-5x^3)/(1-6x^2+x^4))` -/
def P13296775485247044272.Spec : Prop :=
  ∀ n, P13296775485247044272.a n = A060569 (n + 1)

theorem P13296775485247044272.correct : P13296775485247044272.Spec := by
  intro n
  simp only [A060569, Nat.add_sub_cancel]

end A060569

/-! ## A060569.P7759732019281529303

`A076294(∑[2-n%2])`
-/

namespace A060569.P7759732019281529303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060569.P7759732019281529303

namespace A060569

/-- `A076294(∑[2-n%2])` -/
def P7759732019281529303.Spec : Prop :=
  ∀ n, P7759732019281529303.a n = A060569 (n + 1)

end A060569

/-! ## A060569.P9652598818237475617

`A076294(∑[(n+1)%2+1])`
-/

namespace A060569.P9652598818237475617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060569.P9652598818237475617

namespace A060569

/-- `A076294(∑[(n+1)%2+1])` -/
def P9652598818237475617.Spec : Prop :=
  ∀ n, P9652598818237475617.a n = A060569 (n + 1)

end A060569

/-! ## A060569.P5458154990457931200

`A076294(∑[3-a(n-1)])` with `a(0)=2`
-/

namespace A060569.P5458154990457931200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060569.P5458154990457931200

namespace A060569

/-- `A076294(∑[3-a(n-1)])` -/
def P5458154990457931200.Spec : Prop :=
  ∀ n, P5458154990457931200.a n = A060569 (n + 1)

end A060569

/-! ## A060569.P14028848440084909793

`A076294(A007494(n+1))`
-/

namespace A060569.P14028848440084909793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (A007494 (n + 1)).toNat

end

end A060569.P14028848440084909793

namespace A060569

/-- `A076294(A007494(n+1))` -/
def P14028848440084909793.Spec : Prop :=
  ∀ n, P14028848440084909793.a n = A060569 (n + 1)

end A060569

/-! ## A060569.P12119578714020182060

`A076294(A294732(n+3))`
-/

namespace A060569.P12119578714020182060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (A294732 (n + 3)).toNat

end

end A060569.P12119578714020182060

namespace A060569

/-- `A076294(A294732(n+3))` -/
def P12119578714020182060.Spec : Prop :=
  ∀ n, P12119578714020182060.a n = A060569 (n + 1)

end A060569

/-! ## A060569.P1317668216358119342

`A076294(A045506(n+1))`
-/

namespace A060569.P1317668216358119342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (A045506 (n + 1)).toNat

end

end A060569.P1317668216358119342

namespace A060569

/-- `A076294(A045506(n+1))` -/
def P1317668216358119342.Spec : Prop :=
  ∀ n, P1317668216358119342.a n = A060569 (n + 1)

end A060569

/-!
# A060570: Number of flips between the d-dimensional tilings of the unary zonotope Z(D,d). Here d=2 and D varies.

The programs for A060570, there is no canonical definition to state claims against.
-/

/-! ## A060570.P15908520410779581199

`A060638(∑[n+2]+3)`
-/

namespace A060570.P15908520410779581199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060638 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A060570.P15908520410779581199

/-!
# A060571: Tower of Hanoi: the optimal way to move an even number of disks from peg 0 to peg 2 or an odd number from peg 0 to peg 1 is on move n to move disk A001511 from peg A060571 (here) to peg A060572.

The programs for A060571, the canonical program `A060571.P16643100434275445017` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060571 has offset 1).

The definition of A060571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060571.P16643100434275445017

`(2*and(n, n+1))%3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060571

/-- `(2*and(n, n+1))%3` -/
def P16643100434275445017.Spec : Prop :=
  ∀ n, (P16643100434275445017.a n : ℤ) = A060571 (n + 1)

theorem P16643100434275445017.correct : P16643100434275445017.Spec := by
  intro n
  simp only [A060571, Nat.add_sub_cancel]

end A060571

/-! ## A060571.P11184281740481643854

`(and(n, n+1)/2)%3`
-/

namespace A060571.P11184281740481643854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.land n (n + 1) : ℚ) / 2)) 3

end

end A060571.P11184281740481643854

namespace A060571

/-- `(and(n, n+1)/2)%3` -/
def P11184281740481643854.Spec : Prop :=
  ∀ n, P11184281740481643854.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P3798245138416391781

`floor(sqrt(and(n, n+1)%6))`
-/

namespace A060571.P3798245138416391781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.land n (n + 1) % 6)

end

end A060571.P3798245138416391781

namespace A060571

/-- `floor(sqrt(and(n, n+1)%6))` -/
def P3798245138416391781.Spec : Prop :=
  ∀ n, (P3798245138416391781.a n : ℤ) = A060571 (n + 1)

end A060571

/-! ## A060571.P4252190998243703557

`(9-dr(and(n, n+1)))%3`
-/

namespace A060571.P4252190998243703557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 - (SequenceMachineLib.digitalRoot (Nat.land n (n + 1) : ℤ) : ℤ)) 3

end

end A060571.P4252190998243703557

namespace A060571

/-- `(9-dr(and(n, n+1)))%3` -/
def P4252190998243703557.Spec : Prop :=
  ∀ n, P4252190998243703557.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P17146608734537206280

`or(2*n, val(n+1, 2))%3`
-/

namespace A060571.P17146608734537206280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (SequenceMachineLib.valuation (n + 1) 2) % 3

end

end A060571.P17146608734537206280

namespace A060571

/-- `or(2*n, val(n+1, 2))%3` -/
def P17146608734537206280.Spec : Prop :=
  ∀ n, (P17146608734537206280.a n : ℤ) = A060571 (n + 1)

end A060571

/-! ## A060571.P2980050415097508085

`7%((and(n, n+1)+1)%6)`
-/

namespace A060571.P2980050415097508085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 % ((Nat.land n (n + 1) + 1) % 6)

end

end A060571.P2980050415097508085

namespace A060571

/-- `7%((and(n, n+1)+1)%6)` -/
def P2980050415097508085.Spec : Prop :=
  ∀ n, (P2980050415097508085.a n : ℤ) = A060571 (n + 1)

end A060571

/-! ## A060571.P11517646175946433031

`(or(n, n+1)-1+n)%3`
-/

namespace A060571.P11517646175946433031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lor n (n + 1) : ℤ) - 1 + (n : ℤ)) 3

end

end A060571.P11517646175946433031

namespace A060571

/-- `(or(n, n+1)-1+n)%3` -/
def P11517646175946433031.Spec : Prop :=
  ∀ n, P11517646175946433031.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P1719088009682370683

`∑[2*Δ[and(n, n-1)]]%3`
-/

namespace A060571.P1719088009682370683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A060571.P1719088009682370683

namespace A060571

/-- `∑[2*Δ[and(n, n-1)]]%3` -/
def P1719088009682370683.Spec : Prop :=
  ∀ n, P1719088009682370683.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P3052631738451009027

`(2*n+1-xor(n, n+1))%3`
-/

namespace A060571.P3052631738451009027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - (Nat.xor n (n + 1) : ℤ)) 3

end

end A060571.P3052631738451009027

namespace A060571

/-- `(2*n+1-xor(n, n+1))%3` -/
def P3052631738451009027.Spec : Prop :=
  ∀ n, P3052631738451009027.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P382394507750166798

`xor(2*n+1, xor(n, n+1))%3`
-/

namespace A060571.P382394507750166798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (Nat.xor n (n + 1)) % 3

end

end A060571.P382394507750166798

namespace A060571

/-- `xor(2*n+1, xor(n, n+1))%3` -/
def P382394507750166798.Spec : Prop :=
  ∀ n, (P382394507750166798.a n : ℤ) = A060571 (n + 1)

end A060571

/-! ## A060571.P17458124786345699281

`∑[A249032(n)]%3`
-/

namespace A060571.P17458124786345699281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A060571.P17458124786345699281

namespace A060571

/-- `∑[A249032(n)]%3` -/
def P17458124786345699281.Spec : Prop :=
  ∀ n, P17458124786345699281.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P18065277294869262099

`A075326(n+1)%3`
-/

namespace A060571.P18065277294869262099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075326 (n + 1)) 3

end

end A060571.P18065277294869262099

namespace A060571

/-- `A075326(n+1)%3` -/
def P18065277294869262099.Spec : Prop :=
  ∀ n, P18065277294869262099.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P6119011248910442455

`A104594(n+1)%3`
-/

namespace A060571.P6119011248910442455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104594 (n + 1)) 3

end

end A060571.P6119011248910442455

namespace A060571

/-- `A104594(n+1)%3` -/
def P6119011248910442455.Spec : Prop :=
  ∀ n, P6119011248910442455.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P7666141226663381341

`A021823(and(n, n+1))`
-/

namespace A060571.P7666141226663381341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 (Nat.land n (n + 1))

end

end A060571.P7666141226663381341

namespace A060571

/-- `A021823(and(n, n+1))` -/
def P7666141226663381341.Spec : Prop :=
  ∀ n, P7666141226663381341.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P4393337884732881431

`A080425(and(n, n+1))`
-/

namespace A060571.P4393337884732881431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (Nat.land n (n + 1))

end

end A060571.P4393337884732881431

namespace A060571

/-- `A080425(and(n, n+1))` -/
def P4393337884732881431.Spec : Prop :=
  ∀ n, P4393337884732881431.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P3932150497662998602

`A088689(and(n, n+1))`
-/

namespace A060571.P3932150497662998602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (Nat.land n (n + 1))

end

end A060571.P3932150497662998602

namespace A060571

/-- `A088689(and(n, n+1))` -/
def P3932150497662998602.Spec : Prop :=
  ∀ n, P3932150497662998602.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P7066787807784157190

`A131555(and(n, n+1))`
-/

namespace A060571.P7066787807784157190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (Nat.land n (n + 1))

end

end A060571.P7066787807784157190

namespace A060571

/-- `A131555(and(n, n+1))` -/
def P7066787807784157190.Spec : Prop :=
  ∀ n, P7066787807784157190.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P12124968707998046316

`A300075(and(n, n+1))`
-/

namespace A060571.P12124968707998046316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300075 (Nat.land n (n + 1))

end

end A060571.P12124968707998046316

namespace A060571

/-- `A300075(and(n, n+1))` -/
def P12124968707998046316.Spec : Prop :=
  ∀ n, P12124968707998046316.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P6601623668353024514

`A359506(2*n+1)%3`
-/

namespace A060571.P6601623668353024514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359506 (2 * n + 1)) 3

end

end A060571.P6601623668353024514

namespace A060571

/-- `A359506(2*n+1)%3` -/
def P6601623668353024514.Spec : Prop :=
  ∀ n, P6601623668353024514.a n = A060571 (n + 1)

end A060571

/-! ## A060571.P11713455613065761024

`A010872(A104594(n+1))`
-/

namespace A060571.P11713455613065761024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A104594 (n + 1)).toNat

end

end A060571.P11713455613065761024

namespace A060571

/-- `A010872(A104594(n+1))` -/
def P11713455613065761024.Spec : Prop :=
  ∀ n, P11713455613065761024.a n = A060571 (n + 1)

end A060571

/-!
# A060572: Tower of Hanoi: the optimal way to move an even number of disks from peg 0 to peg 2 or an odd number from peg 0 to peg 1 is on move n to move disk A001511 from peg A060571 to peg A060572 (here).

The programs for A060572, the canonical program `A060572.P9458110033200678504` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060572 has offset 1).

The definition of A060572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060572.P9458110033200678504

`2-or(n, n+1)%3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060572

/-- `2-or(n, n+1)%3` -/
def P9458110033200678504.Spec : Prop :=
  ∀ n, P9458110033200678504.a n = A060572 (n + 1)

theorem P9458110033200678504.correct : P9458110033200678504.Spec := by
  intro n
  simp only [A060572, Nat.add_sub_cancel]

end A060572

/-! ## A060572.P14591239849506780278

`ceil(or(n, n+1)/2)%3`
-/

namespace A060572.P14591239849506780278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(Nat.lor n (n + 1) : ℚ) / 2⌉ 3

end

end A060572.P14591239849506780278

namespace A060572

/-- `ceil(or(n, n+1)/2)%3` -/
def P14591239849506780278.Spec : Prop :=
  ∀ n, P14591239849506780278.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P14415631187170527051

`round(or(n, n+1)/2)%3`
-/

namespace A060572.P14415631187170527051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.lor n (n + 1) : ℚ) / 2)) 3

end

end A060572.P14415631187170527051

namespace A060572

/-- `round(or(n, n+1)/2)%3` -/
def P14415631187170527051.Spec : Prop :=
  ∀ n, P14415631187170527051.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P12051342114155559343

`ceil(cosh(log(or(n, n+1))))%3`
-/

namespace A060572.P12051342114155559343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.cosh (Real.log (Nat.lor n (n + 1) : ℝ))⌉ 3

end

end A060572.P12051342114155559343

namespace A060572

/-- `ceil(cosh(log(or(n, n+1))))%3` -/
def P12051342114155559343.Spec : Prop :=
  ∀ n, P12051342114155559343.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P10656033546891587491

`(2*(or(n, n+1)+1))%3`
-/

namespace A060572.P10656033546891587491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lor n (n + 1) + 1) % 3

end

end A060572.P10656033546891587491

namespace A060572

/-- `(2*(or(n, n+1)+1))%3` -/
def P10656033546891587491.Spec : Prop :=
  ∀ n, (P10656033546891587491.a n : ℤ) = A060572 (n + 1)

theorem P10656033546891587491.correct : P10656033546891587491.Spec := by
  intro n
  simp only [A060572, Nat.add_sub_cancel, A060572.P10656033546891587491.a, A060572.P9458110033200678504.a, SequenceMachineLib.memo_apply]
  try push_cast
  try omega

end A060572

/-! ## A060572.P13897562494953231682

`((or(n, n+1)+1)/2)%3`
-/

namespace A060572.P13897562494953231682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.lor n (n + 1) + 1 : ℚ) / 2)) 3

end

end A060572.P13897562494953231682

namespace A060572

/-- `((or(n, n+1)+1)/2)%3` -/
def P13897562494953231682.Spec : Prop :=
  ∀ n, P13897562494953231682.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P12812044730098060260

`(lcm(2, or(n, n+1))+2)%3`
-/

namespace A060572.P12812044730098060260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor n (n + 1)) + 2) % 3

end

end A060572.P12812044730098060260

namespace A060572

/-- `(lcm(2, or(n, n+1))+2)%3` -/
def P12812044730098060260.Spec : Prop :=
  ∀ n, (P12812044730098060260.a n : ℤ) = A060572 (n + 1)

end A060572

/-! ## A060572.P11502696178328459628

`(and(n, n+1)+1+n)%3`
-/

namespace A060572.P11502696178328459628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) + 1 + n) % 3

end

end A060572.P11502696178328459628

namespace A060572

/-- `(and(n, n+1)+1+n)%3` -/
def P11502696178328459628.Spec : Prop :=
  ∀ n, (P11502696178328459628.a n : ℤ) = A060572 (n + 1)

end A060572

/-! ## A060572.P10958468914297267491

`(xor(n, n+1)+2*n)%3`
-/

namespace A060572.P10958468914297267491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 2 * n) % 3

end

end A060572.P10958468914297267491

namespace A060572

/-- `(xor(n, n+1)+2*n)%3` -/
def P10958468914297267491.Spec : Prop :=
  ∀ n, (P10958468914297267491.a n : ℤ) = A060572 (n + 1)

end A060572

/-! ## A060572.P15644742722849261086

`∑[Δ[or(n, n-1)]/2]%3`
-/

namespace A060572.P15644742722849261086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A060572.P15644742722849261086

namespace A060572

/-- `∑[Δ[or(n, n-1)]/2]%3` -/
def P15644742722849261086.Spec : Prop :=
  ∀ n, P15644742722849261086.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P8065578871165430286

`(xor(n, n+1)+n+n)%3`
-/

namespace A060572.P8065578871165430286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + n + n) % 3

end

end A060572.P8065578871165430286

namespace A060572

/-- `(xor(n, n+1)+n+n)%3` -/
def P8065578871165430286.Spec : Prop :=
  ∀ n, (P8065578871165430286.a n : ℤ) = A060572 (n + 1)

end A060572

/-! ## A060572.P14835438522566039757

`A339597(n)%3`
-/

namespace A060572.P14835438522566039757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339597 n) 3

end

end A060572.P14835438522566039757

namespace A060572

/-- `A339597(n)%3` -/
def P14835438522566039757.Spec : Prop :=
  ∀ n, P14835438522566039757.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P4705441994415824731

`∑[A214546(n)]%3`
-/

namespace A060572.P4705441994415824731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A060572.P4705441994415824731

namespace A060572

/-- `∑[A214546(n)]%3` -/
def P4705441994415824731.Spec : Prop :=
  ∀ n, P4705441994415824731.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P1396338709458255606

`A026491(n+1)%3`
-/

namespace A060572.P1396338709458255606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026491 (n + 1)) 3

end

end A060572.P1396338709458255606

namespace A060572

/-- `A026491(n+1)%3` -/
def P1396338709458255606.Spec : Prop :=
  ∀ n, P1396338709458255606.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P8813561646140684511

`A109168(n+1)%3`
-/

namespace A060572.P8813561646140684511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109168 (n + 1)) 3

end

end A060572.P8813561646140684511

namespace A060572

/-- `A109168(n+1)%3` -/
def P8813561646140684511.Spec : Prop :=
  ∀ n, P8813561646140684511.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P2971211956482701645

`A140472(n+1)%3`
-/

namespace A060572.P2971211956482701645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140472 (n + 1)) 3

end

end A060572.P2971211956482701645

namespace A060572

/-- `A140472(n+1)%3` -/
def P2971211956482701645.Spec : Prop :=
  ∀ n, P2971211956482701645.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P3589202381234269772

`A297469(n+1)%3`
-/

namespace A060572.P3589202381234269772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297469 (n + 1)) 3

end

end A060572.P3589202381234269772

namespace A060572

/-- `A297469(n+1)%3` -/
def P3589202381234269772.Spec : Prop :=
  ∀ n, P3589202381234269772.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P6374728107361998181

`A010872(A109168(n+1))`
-/

namespace A060572.P6374728107361998181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A109168 (n + 1)).toNat

end

end A060572.P6374728107361998181

namespace A060572

/-- `A010872(A109168(n+1))` -/
def P6374728107361998181.Spec : Prop :=
  ∀ n, P6374728107361998181.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P14944649923876367057

`A010872(A140472(n+1))`
-/

namespace A060572.P14944649923876367057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A140472 (n + 1)).toNat

end

end A060572.P14944649923876367057

namespace A060572

/-- `A010872(A140472(n+1))` -/
def P14944649923876367057.Spec : Prop :=
  ∀ n, P14944649923876367057.a n = A060572 (n + 1)

end A060572

/-! ## A060572.P6428877221916717857

`A010882(n)-A060571(n+1)`
-/

namespace A060572.P6428877221916717857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n - A060571 (n + 1)

end

end A060572.P6428877221916717857

namespace A060572

/-- `A010882(n)-A060571(n+1)` -/
def P6428877221916717857.Spec : Prop :=
  ∀ n, P6428877221916717857.a n = A060572 (n + 1)

end A060572

/-!
# A060573: Tower of Hanoi: using the optimal way to move an even number of disks from peg 0 to peg 2 or an odd number from peg 0 to peg 1, a(n) is the smallest disk on peg 0 after n moves.

The programs for A060573, there is no canonical definition to state claims against.
-/

/-! ## A060573.P2542548373330606454

`A215879(A055661(n))+1`
-/

namespace A060573.P2542548373330606454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A055661 n).toNat + 1

end

end A060573.P2542548373330606454

/-! ## A060573.P11650430711889218309

`A215879(A055661(xor(n²%3, Δ[n²])))`
-/

namespace A060573.P11650430711889218309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A055661 (Int.xor ((n ^ 2 % 3 : ℕ) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat).toNat

end

end A060573.P11650430711889218309

/-! ## A060573.P17898416862801303582

`A001511(A391638(n)+1)`
-/

namespace A060573.P17898416862801303582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A391638 n + 1).toNat

end

end A060573.P17898416862801303582

/-! ## A060573.P15137881487444817574

`A215879(A128202(n+1))+1`
-/

namespace A060573.P15137881487444817574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A128202 (n + 1)).toNat + 1

end

end A060573.P15137881487444817574

/-! ## A060573.P14177156494660782305

`A215879(A128202(comp[∑[n%4]]))`
-/

namespace A060573.P14177156494660782305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A128202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A060573.P14177156494660782305

/-!
# A060574: Tower of Hanoi: using the optimal way to move an even number of disks from peg 0 to peg 2 or an odd number from peg 0 to peg 1, a(n) is the smallest disk on peg 1 after n moves (or 0 if there are no disks on peg 1).

The programs for A060574, there is no canonical definition to state claims against.
-/

/-! ## A060574.P351654853423108760

`A141387(A005449(5*(n+1)))%4`
-/

namespace A060574.P351654853423108760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141387 (A005449 (5 * (n + 1))).toNat) 4

end

end A060574.P351654853423108760

/-! ## A060574.P2783901210022217417

`A272356(A022345(n)-A151567(n))`
-/

namespace A060574.P2783901210022217417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272356 (A022345 n - A151567 n).toNat

end

end A060574.P2783901210022217417

/-! ## A060574.P6525500803423754055

`and(A160912(A001405(n)), A287732(n+1))`
-/

namespace A060574.P6525500803423754055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160912 (A001405 n).toNat) (A287732 (n + 1))

end

end A060574.P6525500803423754055

/-! ## A060574.P943457460985862229

`and(A178653(A004277(n)), A287732(n+1))`
-/

namespace A060574.P943457460985862229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178653 (A004277 n).toNat) (A287732 (n + 1))

end

end A060574.P943457460985862229

/-!
# A060575: Tower of Hanoi: using the optimal way to move an even number of disks from peg 0 to peg 2 or an odd number from peg 0 to peg 1, a(n) is the smallest disk on peg 2 after n moves (or 0 if there are no disks on peg 2).

The programs for A060575, there is no canonical definition to state claims against.
-/

/-! ## A060575.P9453246018613030134

`A287823(2*n+1)%A227349(5*A001911(n))`
-/

namespace A060575.P9453246018613030134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287823 (2 * n + 1)) (A227349 (5 * A001911 n).toNat)

end

end A060575.P9453246018613030134

/-!
# A060576: a(n) = 1 except for a(1) = 0.

The programs for A060576, the canonical program `A060576.P1912365932169338834` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060576 has offset 0).

The definition of A060576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060576.P1912365932169338834

`ogf((1-x+x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060576

/-- `ogf((1-x+x^2)/(1-x))` -/
def P1912365932169338834.Spec : Prop :=
  ∀ n, P1912365932169338834.a n = A060576 n

theorem P1912365932169338834.correct : P1912365932169338834.Spec := by
  intro n
  simp only [A060576]

end A060576

/-!
# A060577: Number of homeomorphically irreducible general graphs on 2 labeled nodes and with n edges.

The programs for A060577, the canonical program `A060577.P12981079408110252809` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060577 has offset 0).

The definition of A060577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060577.P12981079408110252809

`ogf((1-2x+4x^2-4x^3+4x^4-2x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060577

/-- `ogf((1-2x+4x^2-4x^3+4x^4-2x^5)/(1-3x+3x^2-x^3))` -/
def P12981079408110252809.Spec : Prop :=
  ∀ n, P12981079408110252809.a n = A060577 n

theorem P12981079408110252809.correct : P12981079408110252809.Spec := by
  intro n
  simp only [A060577]

end A060577

/-! ## A060577.P8296531897549915368

`∑[n]+abs(1-abs(2-n))`
-/

namespace A060577.P8296531897549915368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |(1 - |2 - (n : ℤ)|)|

end

end A060577.P8296531897549915368

namespace A060577

/-- `∑[n]+abs(1-abs(2-n))` -/
def P8296531897549915368.Spec : Prop :=
  ∀ n, P8296531897549915368.a n = A060577 n

end A060577

/-! ## A060577.P2793950187900837322

`∑[a(n-1)+1]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=5`
-/

namespace A060577.P2793950187900837322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 2, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060577.P2793950187900837322

namespace A060577

/-- `∑[a(n-1)+1]` -/
def P2793950187900837322.Spec : Prop :=
  ∀ n, (P2793950187900837322.a n : ℤ) = A060577 n

end A060577

/-! ## A060577.P9603492026960188063

`∑[2-(gcd(n, a(n-2))-n)]` with `a(0)=1, a(1)=0`
-/

namespace A060577.P9603492026960188063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - ((Int.gcd (n : ℤ) (f1 (n - 2)) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060577.P9603492026960188063

namespace A060577

/-- `∑[2-(gcd(n, a(n-2))-n)]` -/
def P9603492026960188063.Spec : Prop :=
  ∀ n, P9603492026960188063.a n = A060577 n

end A060577

/-! ## A060577.P122324343060609669

`∑[n+1-and(2, C(2, (2-n)²))]`
-/

namespace A060577.P122324343060609669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 2 (Nat.choose 2 ((2 - (n : ℤ)) ^ 2).toNat) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060577.P122324343060609669

namespace A060577

/-- `∑[n+1-and(2, C(2, (2-n)²))]` -/
def P122324343060609669.Spec : Prop :=
  ∀ n, P122324343060609669.a n = A060577 n

end A060577

/-! ## A060577.P3497361140899019816

`∑[n+1-(18%(n+1)²)%3]`
-/

namespace A060577.P3497361140899019816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((18 % (n + 1) ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060577.P3497361140899019816

namespace A060577

/-- `∑[n+1-(18%(n+1)²)%3]` -/
def P3497361140899019816.Spec : Prop :=
  ∀ n, P3497361140899019816.a n = A060577 n

end A060577

/-! ## A060577.P14398231324217847198

`∑[n+1-lcm(n-2, C(2, (2-n)²))]`
-/

namespace A060577.P14398231324217847198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm ((n : ℤ) - 2) (Nat.choose 2 ((2 - (n : ℤ)) ^ 2).toNat : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060577.P14398231324217847198

namespace A060577

/-- `∑[n+1-lcm(n-2, C(2, (2-n)²))]` -/
def P14398231324217847198.Spec : Prop :=
  ∀ n, P14398231324217847198.a n = A060577 n

end A060577

/-! ## A060577.P11236763164345630230

`∑[n+1-2*char[A014963(∑[n+1])]]`
-/

namespace A060577.P11236763164345630230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060577.P11236763164345630230

namespace A060577

/-- `∑[n+1-2*char[A014963(∑[n+1])]]` -/
def P11236763164345630230.Spec : Prop :=
  ∀ n, P11236763164345630230.a n = A060577 n

end A060577

/-! ## A060577.P11609393695922107541

`A305425(A048840(n))`
-/

namespace A060577.P11609393695922107541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A048840 n).toNat

end

end A060577.P11609393695922107541

namespace A060577

/-- `A305425(A048840(n))` -/
def P11609393695922107541.Spec : Prop :=
  ∀ n, P11609393695922107541.a n = A060577 n

end A060577

/-! ## A060577.P16785479391369981055

`A132118(A054254(n+1)-n)`
-/

namespace A060577.P16785479391369981055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (A054254 (n + 1) - (n : ℤ)).toNat

end

end A060577.P16785479391369981055

namespace A060577

/-- `A132118(A054254(n+1)-n)` -/
def P16785479391369981055.Spec : Prop :=
  ∀ n, P16785479391369981055.a n = A060577 n

end A060577

/-!
# A060578: Number of homeomorphically irreducible general graphs on 3 labeled node and with n edges.

The programs for A060578, the canonical program `A060578.P2579281568891220713` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060578 has offset 0).

The definition of A060578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060578.P2579281568891220713

`ogf((1-3x+6x^2-8x^3+24x^4-51x^5+70x^6-66x^7+36x^8-8x^9)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060578

/-- `ogf((1-3x+6x^2-8x^3+24x^4-51x^5+70x^6-66x^7+36x^8-8x^9)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P2579281568891220713.Spec : Prop :=
  ∀ n, P2579281568891220713.a n = A060578 n

theorem P2579281568891220713.correct : P2579281568891220713.Spec := by
  intro n
  simp only [A060578]

end A060578

/-! ## A060578.P6114935206638470954

`3*A275738(a(n-1)²)` with `a(0)=1`
-/

namespace A060578.P6114935206638470954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A275738 (a (n - 1) ^ 2).toNat

end

end A060578.P6114935206638470954

namespace A060578

/-- `3*A275738(a(n-1)²)` -/
def P6114935206638470954.Spec : Prop :=
  ∀ n, P6114935206638470954.a n = A060578 n

end A060578

/-!
# A060579: Number of homeomorphically irreducible general graphs on 4 labeled nodes and with n edges.

The programs for A060579, there is no canonical definition to state claims against.
-/

/-! ## A060579.P5635869592409484212

`A098236(A027106(n+1))`
-/

namespace A060579.P5635869592409484212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A027106 (n + 1)).toNat

end

end A060579.P5635869592409484212

/-!
# A060580: Number of homeomorphically irreducible general graphs on 5 labeled nodes and with n edges.

The programs for A060580, there is no canonical definition to state claims against.
-/

/-! ## A060580.P16002166052533528776

`A020959(A149720(n+1))`
-/

namespace A060580.P16002166052533528776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (A149720 (n + 1)).toNat

end

end A060580.P16002166052533528776

/-!
# A060582: If the final digit of n in base 3 is the same as a([n/3]) then this digit, otherwise a(n)= mod 3-sum of these two digits, with a(0)=0.

The programs for A060582, the canonical program `A060582.P2354958509821228698` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060582 has offset 0).

The definition of A060582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060582.P4423589839694210851

`A060583(n)%3`
-/

namespace A060582.P4423589839694210851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060583 n) 3

end

end A060582.P4423589839694210851

namespace A060582

/-- `A060583(n)%3` -/
def P4423589839694210851.Spec : Prop :=
  ∀ n, P4423589839694210851.a n = A060582 n

end A060582

/-! ## A060582.P2354958509821228698

`(2*n-a(floor(n/3)))%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060582

/-- `(2*n-a(floor(n/3)))%3` -/
def P2354958509821228698.Spec : Prop :=
  ∀ n, P2354958509821228698.a n = A060582 n

theorem P2354958509821228698.correct : P2354958509821228698.Spec := by
  intro n
  simp only [A060582]

end A060582

/-! ## A060582.P13519704910624526845

`(n-a(floor(n/3))+n)%3` with `a(0)=0`
-/

namespace A060582.P13519704910624526845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat + (n : ℤ)) 3

end

end A060582.P13519704910624526845

namespace A060582

/-- `(n-a(floor(n/3))+n)%3` -/
def P13519704910624526845.Spec : Prop :=
  ∀ n, P13519704910624526845.a n = A060582 n

theorem P13519704910624526845.correct : P13519704910624526845.Spec := by
  intro n
  simp only [A060582, Nat.add_sub_cancel, A060582.P13519704910624526845.a, A060582.P2354958509821228698.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060582

/-! ## A060582.P3644603213486093424

`a((a(floor(n/3))+n)%3)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A060582.P3644603213486093424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a ((a ⌊(n : ℚ) / 3⌋.toNat + n) % 3)

end

end A060582.P3644603213486093424

namespace A060582

/-- `a((a(floor(n/3))+n)%3)` -/
def P3644603213486093424.Spec : Prop :=
  ∀ n, (P3644603213486093424.a n : ℤ) = A060582 n

end A060582

/-! ## A060582.P1033684506882370569

`(2*A037456(n))%3`
-/

namespace A060582.P1033684506882370569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A037456 n) 3

end

end A060582.P1033684506882370569

namespace A060582

/-- `(2*A037456(n))%3` -/
def P1033684506882370569.Spec : Prop :=
  ∀ n, P1033684506882370569.a n = A060582 n

end A060582

/-! ## A060582.P10354615189473813336

`(2*A065361(n))%3`
-/

namespace A060582.P10354615189473813336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A065361 n) 3

end

end A060582.P10354615189473813336

namespace A060582

/-- `(2*A065361(n))%3` -/
def P10354615189473813336.Spec : Prop :=
  ∀ n, P10354615189473813336.a n = A060582 n

end A060582

/-! ## A060582.P17304126166825088776

`val(C(4, A287451(n+1)), 2)`
-/

namespace A060582.P17304126166825088776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 4 (A287451 (n + 1)).toNat) 2

end

end A060582.P17304126166825088776

namespace A060582

/-- `val(C(4, A287451(n+1)), 2)` -/
def P17304126166825088776.Spec : Prop :=
  ∀ n, (P17304126166825088776.a n : ℤ) = A060582 n

end A060582

/-! ## A060582.P15303663378848161911

`3*(n+1)-A287454(n+1)`
-/

namespace A060582.P15303663378848161911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A287454 (n + 1)

end

end A060582.P15303663378848161911

namespace A060582

/-- `3*(n+1)-A287454(n+1)` -/
def P15303663378848161911.Spec : Prop :=
  ∀ n, P15303663378848161911.a n = A060582 n

theorem P15303663378848161911.correct : P15303663378848161911.Spec := by
  intro n
  simp only [A060582, Nat.add_sub_cancel, A060582.P15303663378848161911.a, A060582.P2354958509821228698.a, A287454, A287454.P17182626822090707294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060582

/-! ## A060582.P5795488228123277829

`A080425(A065361(n))`
-/

namespace A060582.P5795488228123277829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A065361 n).toNat

end

end A060582.P5795488228123277829

namespace A060582

/-- `A080425(A065361(n))` -/
def P5795488228123277829.Spec : Prop :=
  ∀ n, P5795488228123277829.a n = A060582 n

end A060582

/-! ## A060582.P7219135272493930408

`A010872(2*A065361(n))`
-/

namespace A060582.P7219135272493930408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A065361 n).toNat

end

end A060582.P7219135272493930408

namespace A060582

/-- `A010872(2*A065361(n))` -/
def P7219135272493930408.Spec : Prop :=
  ∀ n, P7219135272493930408.a n = A060582 n

end A060582

/-! ## A060582.P4963780095263679178

`2-A010872(A065361(n)+2)`
-/

namespace A060582.P4963780095263679178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (A065361 n + 2).toNat

end

end A060582.P4963780095263679178

namespace A060582

/-- `2-A010872(A065361(n)+2)` -/
def P4963780095263679178.Spec : Prop :=
  ∀ n, P4963780095263679178.a n = A060582 n

end A060582

/-! ## A060582.P5212272990077237861

`A010872(A060583(n))`
-/

namespace A060582.P5212272990077237861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A060583 n).toNat

end

end A060582.P5212272990077237861

namespace A060582

/-- `A010872(A060583(n))` -/
def P5212272990077237861.Spec : Prop :=
  ∀ n, P5212272990077237861.a n = A060582 n

end A060582

/-! ## A060582.P7695156863608946197

`A080425(A370932(n))`
-/

namespace A060582.P7695156863608946197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A370932 n).toNat

end

end A060582.P7695156863608946197

namespace A060582

/-- `A080425(A370932(n))` -/
def P7695156863608946197.Spec : Prop :=
  ∀ n, P7695156863608946197.a n = A060582 n

end A060582

/-! ## A060582.P7643759137658647286

`A060588(A060583(A060583(A060583(A060587(n)))))`
-/

namespace A060582.P7643759137658647286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060588 (A060583 (A060583 (A060583 (A060587 n).toNat).toNat).toNat).toNat

end

end A060582.P7643759137658647286

namespace A060582

/-- `A060588(A060583(A060583(A060583(A060587(n)))))` -/
def P7643759137658647286.Spec : Prop :=
  ∀ n, P7643759137658647286.a n = A060582 n

end A060582

/-! ## A060582.P592312752268038942

`A287451(3*n+1)`
-/

namespace A060582.P592312752268038942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (3 * n + 1)

end

end A060582.P592312752268038942

namespace A060582

/-- `A287451(3*n+1)` -/
def P592312752268038942.Spec : Prop :=
  ∀ n, P592312752268038942.a n = A060582 n

end A060582

/-! ## A060582.P4411711974485173867

`A080425(A287454(n+1))`
-/

namespace A060582.P4411711974485173867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A287454 (n + 1)).toNat

end

end A060582.P4411711974485173867

namespace A060582

/-- `A080425(A287454(n+1))` -/
def P4411711974485173867.Spec : Prop :=
  ∀ n, P4411711974485173867.a n = A060582 n

end A060582

/-! ## A060582.P16745950806378529599

`A270740(A060583(3*n))`
-/

namespace A060582.P16745950806378529599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270740 (A060583 (3 * n)).toNat

end

end A060582.P16745950806378529599

namespace A060582

/-- `A270740(A060583(3*n))` -/
def P16745950806378529599.Spec : Prop :=
  ∀ n, P16745950806378529599.a n = A060582 n

end A060582

/-! ## A060582.P11875992213309685862

`A080425(A037456(n))`
-/

namespace A060582.P11875992213309685862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A037456 n).toNat

end

end A060582.P11875992213309685862

namespace A060582

/-- `A080425(A037456(n))` -/
def P11875992213309685862.Spec : Prop :=
  ∀ n, P11875992213309685862.a n = A060582 n

end A060582

/-!
# A060583: A ternary code related to the Tower of Hanoi.

The programs for A060583, the canonical program `A060583.P3294459721720643481` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060583 has offset 0).

The definition of A060583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060582, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060583.P3294459721720643481

`3*a(floor(n/3))+A060582(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060583

/-- `3*a(floor(n/3))+A060582(n)` -/
def P3294459721720643481.Spec : Prop :=
  ∀ n, P3294459721720643481.a n = A060583 n

theorem P3294459721720643481.correct : P3294459721720643481.Spec := by
  intro n
  simp only [A060583]

end A060583

/-! ## A060583.P852266205314475346

`A370932(A004488(n))`
-/

namespace A060583.P852266205314475346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A004488 n).toNat

end

end A060583.P852266205314475346

namespace A060583

/-- `A370932(A004488(n))` -/
def P852266205314475346.Spec : Prop :=
  ∀ n, P852266205314475346.a n = A060583 n

end A060583

/-! ## A060583.P12936164889920829937

`A370932(A117966(n)+n)`
-/

namespace A060583.P12936164889920829937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A117966 n + (n : ℤ)).toNat

end

end A060583.P12936164889920829937

namespace A060583

/-- `A370932(A117966(n)+n)` -/
def P12936164889920829937.Spec : Prop :=
  ∀ n, P12936164889920829937.a n = A060583 n

end A060583

/-! ## A060583.P10402449796128339267

`A370932(n-3/2*A300222(n)+n)`
-/

namespace A060583.P10402449796128339267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (SequenceMachineLib.roundAway ((n : ℚ) - (3 : ℚ) / 2 * (A300222 n : ℚ) + (n : ℚ))).toNat

end

end A060583.P10402449796128339267

namespace A060583

/-- `A370932(n-3/2*A300222(n)+n)` -/
def P10402449796128339267.Spec : Prop :=
  ∀ n, P10402449796128339267.a n = A060583 n

end A060583

/-! ## A060583.P16433927695010163096

`A370932(A005843(n)-(n-A117966(n)))`
-/

namespace A060583.P16433927695010163096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A005843 n - ((n : ℤ) - A117966 n)).toNat

end

end A060583.P16433927695010163096

namespace A060583

/-- `A370932(A005843(n)-(n-A117966(n)))` -/
def P16433927695010163096.Spec : Prop :=
  ∀ n, P16433927695010163096.a n = A060583 n

end A060583

/-! ## A060583.P10668099960924571234

`A370932(A117967(n)-A117966(2*n))`
-/

namespace A060583.P10668099960924571234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A117967 n - A117966 (2 * n)).toNat

end

end A060583.P10668099960924571234

namespace A060583

/-- `A370932(A117967(n)-A117966(2*n))` -/
def P10668099960924571234.Spec : Prop :=
  ∀ n, P10668099960924571234.a n = A060583 n

end A060583

/-! ## A060583.P5083340636810111923

`A361832(A060587(A361832(n)))`
-/

namespace A060583.P5083340636810111923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361832 (A060587 (A361832 n).toNat).toNat

end

end A060583.P5083340636810111923

namespace A060583

/-- `A361832(A060587(A361832(n)))` -/
def P5083340636810111923.Spec : Prop :=
  ∀ n, P5083340636810111923.a n = A060583 n

end A060583

/-! ## A060583.P15046384831472226651

`A370932(A374363(n)+A244042(n))`
-/

namespace A060583.P15046384831472226651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A374363 n + A244042 n).toNat

end

end A060583.P15046384831472226651

namespace A060583

/-- `A370932(A374363(n)+A244042(n))` -/
def P15046384831472226651.Spec : Prop :=
  ∀ n, P15046384831472226651.a n = A060583 n

end A060583

/-! ## A060583.P1259942758956429922

`A370932(A244042(3*n)-A117966(n))`
-/

namespace A060583.P1259942758956429922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A244042 (3 * n) - A117966 n).toNat

end

end A060583.P1259942758956429922

namespace A060583

/-- `A370932(A244042(3*n)-A117966(n))` -/
def P1259942758956429922.Spec : Prop :=
  ∀ n, P1259942758956429922.a n = A060583 n

end A060583

/-!
# A060584: Compare ultimate and penultimate digits of n base 3, i.e., 0 if n mod 3 = floor(n/3) mod 3, 1 otherwise; also 0 if (n mod 9) is a multiple of 4, 1 otherwise.

The programs for A060584, the canonical program `A060584.P3451533538028100298` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060584 has offset 0).

The definition of A060584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060584.P3451533538028100298

`a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=1, a(8)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060584

/-- `a(n-9)` -/
def P3451533538028100298.Spec : Prop :=
  ∀ n, (P3451533538028100298.a n : ℤ) = A060584 n

theorem P3451533538028100298.correct : P3451533538028100298.Spec := by
  intro n
  simp only [A060584]

end A060584

/-!
# A060585: Write n in base 3, then (working from left to right) if the k-th digit of n is not equal to the digit to its left then the k-th digit of a(n) is 1, otherwise it is 0, and finally read the result as a base-2 number.

The programs for A060585, the canonical program `A060585.P14714864189265894970` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060585 has offset 0).

The definition of A060585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060585.P14714864189265894970

`2*a(floor(n/3))+A060584(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060585

/-- `2*a(floor(n/3))+A060584(n)` -/
def P14714864189265894970.Spec : Prop :=
  ∀ n, P14714864189265894970.a n = A060585 n

theorem P14714864189265894970.correct : P14714864189265894970.Spec := by
  intro n
  simp only [A060585]

end A060585

/-! ## A060585.P8140457347061377301

`A060586(A060587(n))`
-/

namespace A060585.P8140457347061377301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A060587 n).toNat

end

end A060585.P8140457347061377301

namespace A060585

/-- `A060586(A060587(n))` -/
def P8140457347061377301.Spec : Prop :=
  ∀ n, P8140457347061377301.a n = A060585 n

end A060585

/-! ## A060585.P2265688324116014200

`A060586(A071770(n))`
-/

namespace A060585.P2265688324116014200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A071770 n).toNat

end

end A060585.P2265688324116014200

namespace A060585

/-- `A060586(A071770(n))` -/
def P2265688324116014200.Spec : Prop :=
  ∀ n, P2265688324116014200.a n = A060585 n

end A060585

/-! ## A060585.P8398063153813383123

`A060586(floor(A242399(n)/3))`
-/

namespace A060585.P8398063153813383123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 ⌊(A242399 n : ℚ) / 3⌋.toNat

end

end A060585.P8398063153813383123

namespace A060585

/-- `A060586(floor(A242399(n)/3))` -/
def P8398063153813383123.Spec : Prop :=
  ∀ n, P8398063153813383123.a n = A060585 n

end A060585

/-! ## A060585.P5139037017471928217

`A003188(A371256(n))`
-/

namespace A060585.P5139037017471928217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A371256 n).toNat

end

end A060585.P5139037017471928217

namespace A060585

/-- `A003188(A371256(n))` -/
def P5139037017471928217.Spec : Prop :=
  ∀ n, P5139037017471928217.a n = A060585 n

end A060585

/-! ## A060585.P15616430879740922844

`A289831(A105530(n))`
-/

namespace A060585.P15616430879740922844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A105530 n).toNat

end

end A060585.P15616430879740922844

namespace A060585

/-- `A289831(A105530(n))` -/
def P15616430879740922844.Spec : Prop :=
  ∀ n, P15616430879740922844.a n = A060585 n

end A060585

/-! ## A060585.P13808582384872377109

`A344511(A381668(n))`
-/

namespace A060585.P13808582384872377109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A381668 n).toNat

end

end A060585.P13808582384872377109

namespace A060585

/-- `A344511(A381668(n))` -/
def P13808582384872377109.Spec : Prop :=
  ∀ n, P13808582384872377109.a n = A060585 n

end A060585

/-!
# A060586: Minimum number of moves required to reach position n starting from 0 in Tower of Hanoi (with three pegs: 0,1,2), where with position n written in base 3, xyz means smallest disk is on peg z, second smallest is on peg y, third smallest on peg x, etc. and leading zeros indicate largest disks are all on peg 0.

The programs for A060586, the canonical program `A060586.P12534353226957296192` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060586 has offset 0).

The definition of A060586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060583, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060586.P12534353226957296192

`A060585(A060583(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060586

/-- `A060585(A060583(n))` -/
def P12534353226957296192.Spec : Prop :=
  ∀ n, P12534353226957296192.a n = A060586 n

theorem P12534353226957296192.correct : P12534353226957296192.Spec := by
  intro n
  simp only [A060586]

end A060586

/-! ## A060586.P13756639407760891988

`A060585(A370932(n))`
-/

namespace A060586.P13756639407760891988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060585 (A370932 n).toNat

end

end A060586.P13756639407760891988

namespace A060586

/-- `A060585(A370932(n))` -/
def P13756639407760891988.Spec : Prop :=
  ∀ n, P13756639407760891988.a n = A060586 n

end A060586

/-! ## A060586.P55970593830327148

`A060592(∑[n])`
-/

namespace A060586.P55970593830327148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060586.P55970593830327148

namespace A060586

/-- `A060592(∑[n])` -/
def P55970593830327148.Spec : Prop :=
  ∀ n, P55970593830327148.a n = A060586 n

end A060586

/-! ## A060586.P2427098224466563541

`A060592(A000217(n))^(char[1]+1)`
-/

namespace A060586.P2427098224466563541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060592 (A000217 n).toNat ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A060586.P2427098224466563541

namespace A060586

/-- `A060592(A000217(n))^(char[1]+1)` -/
def P2427098224466563541.Spec : Prop :=
  ∀ n, P2427098224466563541.a n = A060586 n

end A060586

/-! ## A060586.P8087480694419453293

`A060592(A000217(n))%A016813(n)`
-/

namespace A060586.P8087480694419453293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060592 (A000217 n).toNat) (A016813 n)

end

end A060586.P8087480694419453293

namespace A060586

/-- `A060592(A000217(n))%A016813(n)` -/
def P8087480694419453293.Spec : Prop :=
  ∀ n, P8087480694419453293.a n = A060586 n

end A060586

/-! ## A060586.P5055250424185983851

`A001511(2*n+5)*A060592(A000217(n))`
-/

namespace A060586.P5055250424185983851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 5) * A060592 (A000217 n).toNat

end

end A060586.P5055250424185983851

namespace A060586

/-- `A001511(2*n+5)*A060592(A000217(n))` -/
def P5055250424185983851.Spec : Prop :=
  ∀ n, P5055250424185983851.a n = A060586 n

end A060586

/-! ## A060586.P10355884586060824312

`(char[A059802(2*(n+2))]+1)*A060592(A000217(n))`
-/

namespace A060586.P10355884586060824312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059802 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A060592 (A000217 n).toNat

end

end A060586.P10355884586060824312

namespace A060586

/-- `(char[A059802(2*(n+2))]+1)*A060592(A000217(n))` -/
def P10355884586060824312.Spec : Prop :=
  ∀ n, P10355884586060824312.a n = A060586 n

end A060586

/-! ## A060586.P4620272636428166895

`(char[A072197(2*(n+2))]+1)*A060592(A000217(n))`
-/

namespace A060586.P4620272636428166895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A060592 (A000217 n).toNat

end

end A060586.P4620272636428166895

namespace A060586

/-- `(char[A072197(2*(n+2))]+1)*A060592(A000217(n))` -/
def P4620272636428166895.Spec : Prop :=
  ∀ n, P4620272636428166895.a n = A060586 n

end A060586

/-! ## A060586.P6348448331582185073

`A001511(A019549(n+1))+A060592(A000217(n))-1`
-/

namespace A060586.P6348448331582185073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A019549 (n + 1)).toNat + (A060592 (A000217 n).toNat - 1)

end

end A060586.P6348448331582185073

namespace A060586

/-- `A001511(A019549(n+1))+A060592(A000217(n))-1` -/
def P6348448331582185073.Spec : Prop :=
  ∀ n, P6348448331582185073.a n = A060586 n

end A060586

/-! ## A060586.P3332920766557695662

`A001511(A068228(n+1))+A060592(A000217(n))-1`
-/

namespace A060586.P3332920766557695662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A068228 (n + 1)).toNat + (A060592 (A000217 n).toNat - 1)

end

end A060586.P3332920766557695662

namespace A060586

/-- `A001511(A068228(n+1))+A060592(A000217(n))-1` -/
def P3332920766557695662.Spec : Prop :=
  ∀ n, P3332920766557695662.a n = A060586 n

end A060586

/-! ## A060586.P7538120515832459985

`A001511(A007821(n+4))+A060592(A000217(n))-1`
-/

namespace A060586.P7538120515832459985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A007821 (n + 4)).toNat + (A060592 (A000217 n).toNat - 1)

end

end A060586.P7538120515832459985

namespace A060586

/-- `A001511(A007821(n+4))+A060592(A000217(n))-1` -/
def P7538120515832459985.Spec : Prop :=
  ∀ n, P7538120515832459985.a n = A060586 n

end A060586

/-! ## A060586.P16292105388653788374

`A060592(A000096(n))*A294619(n+4)`
-/

namespace A060586.P16292105388653788374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060592 (A000096 n).toNat * A294619 (n + 4)

end

end A060586.P16292105388653788374

namespace A060586

/-- `A060592(A000096(n))*A294619(n+4)` -/
def P16292105388653788374.Spec : Prop :=
  ∀ n, P16292105388653788374.a n = A060586 n

end A060586

/-!
# A060587: A ternary code: inverse of A060583.

The programs for A060587, there is no canonical definition to state claims against.
-/

/-! ## A060587.P11400181729456419425

`A071770(A004488(n))`
-/

namespace A060587.P11400181729456419425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A004488 n).toNat

end

end A060587.P11400181729456419425

/-! ## A060587.P17762983341020620436

`A071770(A117966(n)+n)`
-/

namespace A060587.P17762983341020620436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A117966 n + (n : ℤ)).toNat

end

end A060587.P17762983341020620436

/-! ## A060587.P10271864856336170121

`A071770(A134028(n)+A274107(n)+n)`
-/

namespace A060587.P10271864856336170121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A134028 n + (A274107 n + (n : ℤ))).toNat

end

end A060587.P10271864856336170121

/-! ## A060587.P11176361270700626693

`A071770(A005843(n)-(n-A117966(n)))`
-/

namespace A060587.P11176361270700626693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A005843 n - ((n : ℤ) - A117966 n)).toNat

end

end A060587.P11176361270700626693

/-! ## A060587.P9698943685237546977

`A071770(A117967(n)-A117966(2*n))`
-/

namespace A060587.P9698943685237546977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A117967 n - A117966 (2 * n)).toNat

end

end A060587.P9698943685237546977

/-! ## A060587.P297031476199274903

`A071770(A374363(3*n)-n)`
-/

namespace A060587.P297031476199274903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A374363 (3 * n) - (n : ℤ)).toNat

end

end A060587.P297031476199274903

/-! ## A060587.P5320979049107058599

`A253587(A002264(n)+∑[n])`
-/

namespace A060587.P5320979049107058599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (A002264 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060587.P5320979049107058599

/-! ## A060587.P3193413379673850458

`A253587(∑[1-char[A030102(n)]+n])`
-/

namespace A060587.P3193413379673850458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060587.P3193413379673850458

/-! ## A060587.P14779012499972461841

`A253587(A161680(n)+A004773(n))`
-/

namespace A060587.P14779012499972461841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (A161680 n + A004773 n).toNat

end

end A060587.P14779012499972461841

/-! ## A060587.P2894484626289375675

`A253587(A042968(n+1)-A080956(n))`
-/

namespace A060587.P2894484626289375675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (A042968 (n + 1) - A080956 n).toNat

end

end A060587.P2894484626289375675

/-!
# A060588: If the final two digits of n written in base 3 are the same then this digit, otherwise mod 3-sum of these two digits.

The programs for A060588, the canonical program `A060588.P8568582253220027970` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060588 has offset 0).

The definition of A060588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060588.P8568582253220027970

`a(n-9)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2, a(4)=1, a(5)=0, a(6)=1, a(7)=0, a(8)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060588

/-- `a(n-9)` -/
def P8568582253220027970.Spec : Prop :=
  ∀ n, (P8568582253220027970.a n : ℤ) = A060588 n

theorem P8568582253220027970.correct : P8568582253220027970.Spec := by
  intro n
  simp only [A060588]

end A060588

/-!
# A060589: a(n) = 2*(2^n-1)*3^(n-1).

The programs for A060589, the canonical program `A060589.P18011316872635690004` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060589 has offset 0).

The definition of A060589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060589.P9556845424686717252

`ogf(2x/(1-9x+18x^2))`
-/

namespace A060589.P9556845424686717252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -9, 18] n

end

end A060589.P9556845424686717252

namespace A060589

/-- `ogf(2x/(1-9x+18x^2))` -/
def P9556845424686717252.Spec : Prop :=
  ∀ n, P9556845424686717252.a n = A060589 n

end A060589

/-! ## A060589.P10500052407635511891

`2*(2^n-1)*3^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060589.P10500052407635511891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((2 ^ n : ℤ) - 1) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A060589.P10500052407635511891

namespace A060589

/-- `2*(2^n-1)*3^(n-1)` -/
def P10500052407635511891.Spec : Prop :=
  ∀ n, P10500052407635511891.a n = (A060589 n : ℚ)

end A060589

/-! ## A060589.P14533065359528951641

`9*a(n-1)-18*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A060589.P14533065359528951641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  9 * a (n - 1) - 18 * a (n - 2)

end

end A060589.P14533065359528951641

namespace A060589

/-- `9*a(n-1)-18*a(n-2)` -/
def P14533065359528951641.Spec : Prop :=
  ∀ n, P14533065359528951641.a n = A060589 n

end A060589

/-! ## A060589.P18011316872635690004

`6*a(n-1)+A008776(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060589

/-- `6*a(n-1)+A008776(n-1)` -/
def P18011316872635690004.Spec : Prop :=
  ∀ n, P18011316872635690004.a n = A060589 n

theorem P18011316872635690004.correct : P18011316872635690004.Spec := by
  intro n
  simp only [A060589]

end A060589

/-! ## A060589.P491267787697342967

`A000244(n)*A060590(n)/A010684(n)`
-/

namespace A060589.P491267787697342967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n * A060590 n : ℚ) / (A010684 n : ℚ)

end

end A060589.P491267787697342967

namespace A060589

/-- `A000244(n)*A060590(n)/A010684(n)` -/
def P491267787697342967.Spec : Prop :=
  ∀ n, P491267787697342967.a n = (A060589 n : ℚ)

end A060589

/-! ## A060589.P4206421874165337267

`2*A248225(n)/3`
-/

namespace A060589.P4206421874165337267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A248225 n : ℚ) / 3

end

end A060589.P4206421874165337267

namespace A060589

/-- `2*A248225(n)/3` -/
def P4206421874165337267.Spec : Prop :=
  ∀ n, P4206421874165337267.a n = (A060589 n : ℚ)

theorem P4206421874165337267.correct : P4206421874165337267.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060589, Nat.add_sub_cancel, A060589.P4206421874165337267.a, A060589.P18011316872635690004.a, A008776, A008776.P11088121667404015999.a, A248225, A248225.P8427210478039895849.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060589, Nat.add_sub_cancel, A060589.P4206421874165337267.a, A060589.P18011316872635690004.a, A008776, A008776.P11088121667404015999.a, A248225, A248225.P8427210478039895849.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A060589

/-! ## A060589.P931035151742477608

`abs((1-2^n)*A025192(n))`
-/

namespace A060589.P931035151742477608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (2 ^ n : ℤ)) * A025192 n|

end

end A060589.P931035151742477608

namespace A060589

/-- `abs((1-2^n)*A025192(n))` -/
def P931035151742477608.Spec : Prop :=
  ∀ n, P931035151742477608.a n = A060589 n

end A060589

/-! ## A060589.P5417558943501616666

`abs(Δ[3^(n-1)]*A000225(n))`
-/

namespace A060589.P5417558943501616666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * (A000225 n : ℚ)|

end

end A060589.P5417558943501616666

namespace A060589

/-- `abs(Δ[3^(n-1)]*A000225(n))` -/
def P5417558943501616666.Spec : Prop :=
  ∀ n, P5417558943501616666.a n = (A060589 n : ℚ)

end A060589

/-! ## A060589.P6717499281550372499

`A081678(n)+(5^n-3^n)/2`
-/

namespace A060589.P6717499281550372499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081678 n : ℚ) + ((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2

end

end A060589.P6717499281550372499

namespace A060589

/-- `A081678(n)+(5^n-3^n)/2` -/
def P6717499281550372499.Spec : Prop :=
  ∀ n, P6717499281550372499.a n = (A060589 n : ℚ)

end A060589

/-! ## A060589.P12367716893470386853

`A000079(n)*A025192(n)-A025192(n)`
-/

namespace A060589.P12367716893470386853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A025192 n - A025192 n

end

end A060589.P12367716893470386853

namespace A060589

/-- `A000079(n)*A025192(n)-A025192(n)` -/
def P12367716893470386853.Spec : Prop :=
  ∀ n, P12367716893470386853.a n = A060589 n

end A060589

/-! ## A060589.P2656145134792367966

`A067411(n)-A067411(n)/A000079(n)`
-/

namespace A060589.P2656145134792367966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067411 n : ℚ) - (A067411 n : ℚ) / (A000079 n : ℚ)

end

end A060589.P2656145134792367966

namespace A060589

/-- `A067411(n)-A067411(n)/A000079(n)` -/
def P2656145134792367966.Spec : Prop :=
  ∀ n, P2656145134792367966.a n = (A060589 n : ℚ)

end A060589

/-! ## A060589.P11407172152199886512

`A011782(n+1)*A025192(n)-A025192(n)`
-/

namespace A060589.P11407172152199886512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A025192 n - A025192 n

end

end A060589.P11407172152199886512

namespace A060589

/-- `A011782(n+1)*A025192(n)-A025192(n)` -/
def P11407172152199886512.Spec : Prop :=
  ∀ n, P11407172152199886512.a n = A060589 n

end A060589

/-! ## A060589.P13770849325392960415

`floor(A212850(n+1)/9)`
-/

namespace A060589.P13770849325392960415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212850 (n + 1) : ℚ) / 9⌋

end

end A060589.P13770849325392960415

namespace A060589

/-- `floor(A212850(n+1)/9)` -/
def P13770849325392960415.Spec : Prop :=
  ∀ n, P13770849325392960415.a n = A060589 n

end A060589

/-!
# A060590: Numerator of the expected time to finish a random Tower of Hanoi problem with n disks using optimal moves.

The programs for A060590, the canonical program `A060590.P8487577346155354365` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060590 has offset 0).

The definition of A060590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060590.P1508258719791048492

`ogf((2x+2x^2+4x^3)/(1-5x^2+4x^4))`
-/

namespace A060590.P1508258719791048492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 4] [1, 0, -5, 0, 4] n

end

end A060590.P1508258719791048492

namespace A060590

/-- `ogf((2x+2x^2+4x^3)/(1-5x^2+4x^4))` -/
def P1508258719791048492.Spec : Prop :=
  ∀ n, P1508258719791048492.a n = A060590 n

end A060590

/-! ## A060590.P8487577346155354365

`2*(2^n-1)*(2-(-1)^n)/3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060590

/-- `2*(2^n-1)*(2-(-1)^n)/3` -/
def P8487577346155354365.Spec : Prop :=
  ∀ n, P8487577346155354365.a n = (A060590 n : ℚ)

end A060590

/-! ## A060590.P17340712391903808726

`4*(a(n-2)+n%2)+2` with `a(0)=0, a(1)=2`
-/

namespace A060590.P17340712391903808726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * (a (n - 2) + n % 2) + 2

end

end A060590.P17340712391903808726

namespace A060590

/-- `4*(a(n-2)+n%2)+2` -/
def P17340712391903808726.Spec : Prop :=
  ∀ n, (P17340712391903808726.a n : ℤ) = A060590 n

end A060590

/-! ## A060590.P1903750335800055755

`A282124(n)-1`
-/

namespace A060590.P1903750335800055755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 n - 1

end

end A060590.P1903750335800055755

namespace A060590

/-- `A282124(n)-1` -/
def P1903750335800055755.Spec : Prop :=
  ∀ n, P1903750335800055755.a n = A060590 n

end A060590

/-! ## A060590.P13886845053323829327

`lcm(2, A084184(n))`
-/

namespace A060590.P13886845053323829327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A084184 n)

end

end A060590.P13886845053323829327

namespace A060590

/-- `lcm(2, A084184(n))` -/
def P13886845053323829327.Spec : Prop :=
  ∀ n, (P13886845053323829327.a n : ℤ) = A060590 n

end A060590

/-! ## A060590.P6808251294501714064

`A000034(n)*A084184(n)`
-/

namespace A060590.P6808251294501714064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A084184 n

end

end A060590.P6808251294501714064

namespace A060590

/-- `A000034(n)*A084184(n)` -/
def P6808251294501714064.Spec : Prop :=
  ∀ n, P6808251294501714064.a n = A060590 n

end A060590

/-! ## A060590.P10662380395355248234

`A066532(n+1)+A084184(n)-1`
-/

namespace A060590.P10662380395355248234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (n + 1) + (A084184 n - 1)

end

end A060590.P10662380395355248234

namespace A060590

/-- `A066532(n+1)+A084184(n)-1` -/
def P10662380395355248234.Spec : Prop :=
  ∀ n, P10662380395355248234.a n = A060590 n

end A060590

/-! ## A060590.P13489872161653774273

`A096773(n+1)+A078008(n)-1`
-/

namespace A060590.P13489872161653774273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (n + 1) + (A078008 n - 1)

end

end A060590.P13489872161653774273

namespace A060590

/-- `A096773(n+1)+A078008(n)-1` -/
def P13489872161653774273.Spec : Prop :=
  ∀ n, P13489872161653774273.a n = A060590 n

end A060590

/-! ## A060590.P14220468120079458707

`and(A168330(2*(n+1)), A282124(n))`
-/

namespace A060590.P14220468120079458707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (2 * (n + 1))) (A282124 n)

end

end A060590.P14220468120079458707

namespace A060590

/-- `and(A168330(2*(n+1)), A282124(n))` -/
def P14220468120079458707.Spec : Prop :=
  ∀ n, P14220468120079458707.a n = A060590 n

end A060590

/-! ## A060590.P8943523378811090995

`A166752(n+1)+A167030(n+1)-1`
-/

namespace A060590.P8943523378811090995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 (n + 1) + (A167030 (n + 1) - 1)

end

end A060590.P8943523378811090995

namespace A060590

/-- `A166752(n+1)+A167030(n+1)-1` -/
def P8943523378811090995.Spec : Prop :=
  ∀ n, P8943523378811090995.a n = A060590 n

end A060590

/-! ## A060590.P13407235409347416074

`A193652(n+1)+A282577(n+1)-1`
-/

namespace A060590.P13407235409347416074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 (n + 1) + (A282577 (n + 1) - 1)

end

end A060590.P13407235409347416074

namespace A060590

/-- `A193652(n+1)+A282577(n+1)-1` -/
def P13407235409347416074.Spec : Prop :=
  ∀ n, P13407235409347416074.a n = A060590 n

end A060590

/-! ## A060590.P3704954370631274740

`A001045(n+1)+A166752(n+1)-2`
-/

namespace A060590.P3704954370631274740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A166752 (n + 1) - 2)

end

end A060590.P3704954370631274740

namespace A060590

/-- `A001045(n+1)+A166752(n+1)-2` -/
def P3704954370631274740.Spec : Prop :=
  ∀ n, P3704954370631274740.a n = A060590 n

end A060590

/-! ## A060590.P1022409765080583293

`A001045(n+1)*A153284(n+2)-1`
-/

namespace A060590.P1022409765080583293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A153284 (n + 2) - 1

end

end A060590.P1022409765080583293

namespace A060590

/-- `A001045(n+1)*A153284(n+2)-1` -/
def P1022409765080583293.Spec : Prop :=
  ∀ n, P1022409765080583293.a n = A060590 n

end A060590

/-! ## A060590.P9474317312238667059

`A001045(n+1)*A068073(2*n)-1`
-/

namespace A060590.P9474317312238667059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A068073 (2 * n) - 1

end

end A060590.P9474317312238667059

namespace A060590

/-- `A001045(n+1)*A068073(2*n)-1` -/
def P9474317312238667059.Spec : Prop :=
  ∀ n, P9474317312238667059.a n = A060590 n

end A060590

/-! ## A060590.P1885355291667668868

`A001045(n+1)*A132400(2*n)-1`
-/

namespace A060590.P1885355291667668868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A132400 (2 * n) - 1

end

end A060590.P1885355291667668868

namespace A060590

/-- `A001045(n+1)*A132400(2*n)-1` -/
def P1885355291667668868.Spec : Prop :=
  ∀ n, P1885355291667668868.a n = A060590 n

end A060590

/-! ## A060590.P16376568652123133962

`A001045(n+1)*A010873(2*n+1)-1`
-/

namespace A060590.P16376568652123133962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A010873 (2 * n + 1) - 1

end

end A060590.P16376568652123133962

namespace A060590

/-- `A001045(n+1)*A010873(2*n+1)-1` -/
def P16376568652123133962.Spec : Prop :=
  ∀ n, P16376568652123133962.a n = A060590 n

end A060590

/-! ## A060590.P10746038619231316107

`A001045(n+1)*A065882(2*n+1)-1`
-/

namespace A060590.P10746038619231316107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A065882 (2 * n + 1) - 1

end

end A060590.P10746038619231316107

namespace A060590

/-- `A001045(n+1)*A065882(2*n+1)-1` -/
def P10746038619231316107.Spec : Prop :=
  ∀ n, P10746038619231316107.a n = A060590 n

end A060590

/-! ## A060590.P5430242359340269138

`A001045(n+1)*A091084(2*n+1)-1`
-/

namespace A060590.P5430242359340269138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A091084 (2 * n + 1) - 1

end

end A060590.P5430242359340269138

namespace A060590

/-- `A001045(n+1)*A091084(2*n+1)-1` -/
def P5430242359340269138.Spec : Prop :=
  ∀ n, P5430242359340269138.a n = A060590 n

end A060590

/-! ## A060590.P5895017964531670088

`A084184(n)+A084184(A109043(n)-n)`
-/

namespace A060590.P5895017964531670088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + A084184 (A109043 n - (n : ℤ)).toNat

end

end A060590.P5895017964531670088

namespace A060590

/-- `A084184(n)+A084184(A109043(n)-n)` -/
def P5895017964531670088.Spec : Prop :=
  ∀ n, P5895017964531670088.a n = A060590 n

end A060590

/-! ## A060590.P2116329024046509295

`A084639(n*A000035(n))+A000975(n)`
-/

namespace A060590.P2116329024046509295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 ((n : ℤ) * A000035 n).toNat + A000975 n

end

end A060590.P2116329024046509295

namespace A060590

/-- `A084639(n*A000035(n))+A000975(n)` -/
def P2116329024046509295.Spec : Prop :=
  ∀ n, P2116329024046509295.a n = A060590 n

end A060590

/-!
# A060592: Square table by antidiagonals of minimum number of moves between two positions in the Tower of Hanoi (with three pegs: 0,1,2), where with position n written in base 3, xyz means smallest disk is on peg z, second smallest is on peg y, third smallest on peg x, etc. and leading zeros indicate largest disks are all on peg 0.

The programs for A060592, there is no canonical definition to state claims against.
-/

/-! ## A060592.P5884837976514169268

`A001221(A268019(n+1))-char[2*(n²+n)]`
-/

namespace A060592.P5884837976514169268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A268019 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060592.P5884837976514169268

/-! ## A060592.P17859365782526048342

`A292600(A331886(n))%A123209(n)`
-/

namespace A060592.P17859365782526048342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292600 (A331886 n).toNat) (A123209 (n + 33))

end

end A060592.P17859365782526048342

/-!
# A060593: a(n) is the number of ways that a cycle of length 2n+1 in the symmetric group S_(2n+1) can be decomposed as the product of two cycles of length 2n+1.

The programs for A060593, the canonical program `A060593.P3471701571644767191` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060593 has offset 0).

The definition of A060593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060593.P2198549701059602367

`A090586(2*n+1)`
-/

namespace A060593.P2198549701059602367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090586 (2 * n + 1)

end

end A060593.P2198549701059602367

namespace A060593

/-- `A090586(2*n+1)` -/
def P2198549701059602367.Spec : Prop :=
  ∀ n, P2198549701059602367.a n = A060593 n

end A060593

/-! ## A060593.P3471701571644767191

`(2*n)!/(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060593

/-- `(2*n)!/(n+1)` -/
def P3471701571644767191.Spec : Prop :=
  ∀ n, P3471701571644767191.a n = (A060593 n : ℚ)

end A060593

/-! ## A060593.P9260377506421789989

`(4-6/(n+1))*a(n-1)*n²` with `a(0)=1`
-/

namespace A060593.P9260377506421789989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (n ^ 2 : ℚ)

end

end A060593.P9260377506421789989

namespace A060593

/-- `(4-6/(n+1))*a(n-1)*n²` -/
def P9260377506421789989.Spec : Prop :=
  ∀ n, P9260377506421789989.a n = (A060593 n : ℚ)

end A060593

/-! ## A060593.P11559358960467965383

`n*n*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A060593.P11559358960467965383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n : ℚ) * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1)))

end

end A060593.P11559358960467965383

namespace A060593

/-- `n*n*(4-6/(n+1))*a(n-1)` -/
def P11559358960467965383.Spec : Prop :=
  ∀ n, P11559358960467965383.a n = (A060593 n : ℚ)

end A060593

/-! ## A060593.P13660690913979139746

`A260695(2*n)`
-/

namespace A060593.P13660690913979139746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260695 (2 * n)

end

end A060593.P13660690913979139746

namespace A060593

/-- `A260695(2*n)` -/
def P13660690913979139746.Spec : Prop :=
  ∀ n, P13660690913979139746.a n = A060593 n

end A060593

/-!
# A060594: Number of solutions to x^2 == 1 (mod n), that is, square roots of unity modulo n.

The programs for A060594, the canonical program `A060594.P2818484457649056228` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060594 has offset 1).

The definition of A060594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060594.P11547366837749614213

`A155828(n+1)+1`
-/

namespace A060594.P11547366837749614213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1) + 1

end

end A060594.P11547366837749614213

namespace A060594

/-- `A155828(n+1)+1` -/
def P11547366837749614213.Spec : Prop :=
  ∀ n, P11547366837749614213.a n = A060594 (n + 1)

theorem P11547366837749614213.correct : P11547366837749614213.Spec := by
  intro n
  simp only [A060594, Nat.add_sub_cancel, A060594.P11547366837749614213.a, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A114643, A114643.P3385208476335884825.a, A155828, A155828.P14308889291480101554.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A063659, A063659.P17976112420004081821.a, A063658, A063658.P2835377320300210005.f1, A063658.P2835377320300210005.a, A347586, A347586.P6878572311121842152.f1, A347586.P6878572311121842152.a, A000010, A000010.P4673923239450215316.a, A008615, A008615.P10410393553474300613.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055104, A055104.P18008443072376633459.f1, A055104.P18008443072376633459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060594

/-! ## A060594.P16280706643720534212

`2^A072273(n+1)`
-/

namespace A060594.P16280706643720534212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A072273 (n + 1) : ℤ)

end

end A060594.P16280706643720534212

namespace A060594

/-- `2^A072273(n+1)` -/
def P16280706643720534212.Spec : Prop :=
  ∀ n, P16280706643720534212.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P2818484457649056228

`∑{d}[n+1, A114643(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060594

/-- `∑{d}[n+1, A114643(#)]` -/
def P2818484457649056228.Spec : Prop :=
  ∀ n, P2818484457649056228.a n = A060594 (n + 1)

theorem P2818484457649056228.correct : P2818484457649056228.Spec := by
  intro n
  simp only [A060594, Nat.add_sub_cancel]

end A060594

/-! ## A060594.P10234117626147630270

`∑{d}[A157230(n+1), #]+1`
-/

namespace A060594.P10234117626147630270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1

end

end A060594.P10234117626147630270

namespace A060594

/-- `∑{d}[A157230(n+1), #]+1` -/
def P10234117626147630270.Spec : Prop :=
  ∀ n, (P10234117626147630270.a n : ℤ) = A060594 (n + 1)

end A060594

/-! ## A060594.P5694560265229297473

`2^(A046072(n+1)-C(n, n²))`
-/

namespace A060594.P5694560265229297473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046072 (n + 1) - (Nat.choose n (n ^ 2) : ℤ) : ℤ)

end

end A060594.P5694560265229297473

namespace A060594

/-- `2^(A046072(n+1)-C(n, n²))` -/
def P5694560265229297473.Spec : Prop :=
  ∀ n, P5694560265229297473.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P11761714471885958846

`A002616(Δ[A211415(n)])`
-/

namespace A060594.P11761714471885958846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (f1 (n + 1) - f1 n).toNat

end

end A060594.P11761714471885958846

namespace A060594

/-- `A002616(Δ[A211415(n)])` -/
def P11761714471885958846.Spec : Prop :=
  ∀ n, P11761714471885958846.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P2609557104096499569

`A003958(A087688(n+1))`
-/

namespace A060594.P2609557104096499569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A087688 (n + 1)).toNat

end

end A060594.P2609557104096499569

namespace A060594

/-- `A003958(A087688(n+1))` -/
def P2609557104096499569.Spec : Prop :=
  ∀ n, P2609557104096499569.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P16890091421814973623

`A001316(A155828(n+1))`
-/

namespace A060594.P16890091421814973623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A155828 (n + 1)).toNat

end

end A060594.P16890091421814973623

namespace A060594

/-- `A001316(A155828(n+1))` -/
def P16890091421814973623.Spec : Prop :=
  ∀ n, P16890091421814973623.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P13763770501568437363

`A004277(A157230(n+1))`
-/

namespace A060594.P13763770501568437363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A157230 (n + 1)).toNat

end

end A060594.P13763770501568437363

namespace A060594

/-- `A004277(A157230(n+1))` -/
def P13763770501568437363.Spec : Prop :=
  ∀ n, P13763770501568437363.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P18168668668264662551

`A327730(A026741(n+1))`
-/

namespace A060594.P18168668668264662551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327730 (A026741 (n + 1)).toNat

end

end A060594.P18168668668264662551

namespace A060594

/-- `A327730(A026741(n+1))` -/
def P18168668668264662551.Spec : Prop :=
  ∀ n, P18168668668264662551.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P3721469961172047735

`A061142(A364925(n+1))`
-/

namespace A060594.P3721469961172047735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A364925 (n + 1)).toNat

end

end A060594.P3721469961172047735

namespace A060594

/-- `A061142(A364925(n+1))` -/
def P3721469961172047735.Spec : Prop :=
  ∀ n, P3721469961172047735.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P15797914313712324087

`A322362(A319100(n+1))`
-/

namespace A060594.P15797914313712324087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A319100 (n + 1)).toNat

end

end A060594.P15797914313712324087

namespace A060594

/-- `A322362(A319100(n+1))` -/
def P15797914313712324087.Spec : Prop :=
  ∀ n, P15797914313712324087.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P8015875837421871375

`A054345(2*A157230(n+1))`
-/

namespace A060594.P8015875837421871375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (2 * A157230 (n + 1)).toNat

end

end A060594.P8015875837421871375

namespace A060594

/-- `A054345(2*A157230(n+1))` -/
def P8015875837421871375.Spec : Prop :=
  ∀ n, P8015875837421871375.a n = A060594 (n + 1)

end A060594

/-! ## A060594.P7361793171553037221

`gcd(A017550(n), A319100(n+1))`
-/

namespace A060594.P7361793171553037221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017550 n) (A319100 (n + 1))

end

end A060594.P7361793171553037221

namespace A060594

/-- `gcd(A017550(n), A319100(n+1))` -/
def P7361793171553037221.Spec : Prop :=
  ∀ n, (P7361793171553037221.a n : ℤ) = A060594 (n + 1)

end A060594

/-! ## A060594.P7430851912993322400

`A000010(n+1)/A046073(n+1)`
-/

namespace A060594.P7430851912993322400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A046073 (n + 1) : ℚ)

end

end A060594.P7430851912993322400

namespace A060594

/-- `A000010(n+1)/A046073(n+1)` -/
def P7430851912993322400.Spec : Prop :=
  ∀ n, P7430851912993322400.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P8355372987874725631

`A182039(n+1)/A060968(n+1)`
-/

namespace A060594.P8355372987874725631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182039 (n + 1) : ℚ) / (A060968 (n + 1) : ℚ)

end

end A060594.P8355372987874725631

namespace A060594

/-- `A182039(n+1)/A060968(n+1)` -/
def P8355372987874725631.Spec : Prop :=
  ∀ n, P8355372987874725631.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P7517850925572125047

`A000056(n+1)/A300915(n+1)`
-/

namespace A060594.P7517850925572125047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A300915 (n + 1) : ℚ)

end

end A060594.P7517850925572125047

namespace A060594

/-- `A000056(n+1)/A300915(n+1)` -/
def P7517850925572125047.Spec : Prop :=
  ∀ n, P7517850925572125047.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P12471426911151544070

`A319100(n+1)/A060839(n+1)`
-/

namespace A060594.P12471426911151544070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319100 (n + 1) : ℚ) / (A060839 (n + 1) : ℚ)

end

end A060594.P12471426911151544070

namespace A060594

/-- `A319100(n+1)/A060839(n+1)` -/
def P12471426911151544070.Spec : Prop :=
  ∀ n, P12471426911151544070.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P4967436725151596738

`A087692(n+1)/A293483(n+1)`
-/

namespace A060594.P4967436725151596738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087692 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A060594.P4967436725151596738

namespace A060594

/-- `A087692(n+1)/A293483(n+1)` -/
def P4967436725151596738.Spec : Prop :=
  ∀ n, P4967436725151596738.a n = (A060594 (n + 1) : ℚ)

end A060594

/-! ## A060594.P15605145109263755974

`gcd(A000089(n+1), A329586(n+1))`
-/

namespace A060594.P15605145109263755974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000089 (n + 1)) (A329586 (n + 1))

end

end A060594.P15605145109263755974

namespace A060594

/-- `gcd(A000089(n+1), A329586(n+1))` -/
def P15605145109263755974.Spec : Prop :=
  ∀ n, (P15605145109263755974.a n : ℤ) = A060594 (n + 1)

end A060594

/-!
# A060595: Number of tilings of the 3-dimensional zonotope constructed from D vectors.

The programs for A060595, there is no canonical definition to state claims against.
-/

/-! ## A060595.P9791741279937730863

`A060637(∑[n+3]+6)`
-/

namespace A060595.P9791741279937730863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060637 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A060595.P9791741279937730863

