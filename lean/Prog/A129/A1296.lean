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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A129600: Array A(i,j) of binary run-length encoded product of i and j, read by ascending antidiagonals.

The programs for A129600, there is no canonical definition to state claims against.
-/

/-! ## A129600.P3997416759247484829

`A075158((A075157(col(n))+1)*(A075157(row(n)-col(n))+1)-1)`
-/

namespace A129600.P3997416759247484829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 ((A075157 (SequenceMachineLib.triCol n) + 1) * (A075157 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + 1) - 1).toNat

end

end A129600.P3997416759247484829

/-! ## A129600.P7631133033635194603

`A335881(A232948(n+1))`
-/

namespace A129600.P7631133033635194603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (A232948 (n + 1)).toNat

end

end A129600.P7631133033635194603

/-! ## A129600.P6469208377799278525

`A003991(n+1)-A331128(A062275(n))`
-/

namespace A129600.P6469208377799278525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A331128 (A062275 n).toNat

end

end A129600.P6469208377799278525

/-! ## A129600.P9365127770239297791

`A355663(n)-A129552(A129568(n+1))`
-/

namespace A129600.P9365127770239297791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355663 n - A129552 (A129568 (n + 1)).toNat

end

end A129600.P9365127770239297791

/-! ## A129600.P9099119151179732260

`A057526(A110476(n+1)%A206611(n+1))`
-/

namespace A129600.P9099119151179732260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (Int.tmod (A110476 (n + 1)) (A206611 (n + 1))).toNat

end

end A129600.P9099119151179732260

/-!
# A129601: Table T(i,j): T(0,0), T(1,0), T(1,1), T(2,0), T(2,1), T(2,2), ... of binary runlength encoded product of i and j.

The programs for A129601, there is no canonical definition to state claims against.
-/

/-! ## A129601.P15846783008121265083

`A075158((A075157(row(n))+1)*(A075157(col(n))+1)-1)`
-/

namespace A129601.P15846783008121265083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 ((A075157 (SequenceMachineLib.triRow n) + 1) * (A075157 (SequenceMachineLib.triCol n) + 1) - 1).toNat

end

end A129601.P15846783008121265083

/-! ## A129601.P9290701029564522306

`A129600(A245300(n))`
-/

namespace A129601.P9290701029564522306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129600 (A245300 n).toNat

end

end A129601.P9290701029564522306

/-!
# A129602: In the binary expansion of n replace each run of k 0's (or 1's) with 2k-1 0's (or 1's), except in the most significant run where we double the number of 0's (or 1's).

The programs for A129602, there is no canonical definition to state claims against.
-/

/-! ## A129602.P11184033689796051389

`A129594(2*A129594(A129603(n)))`
-/

namespace A129602.P11184033689796051389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (2 * A129594 (A129603 n).toNat).toNat

end

end A129602.P11184033689796051389

/-! ## A129602.P5251612279225735193

`A129594(lcm(2, A129594(A129603(n))))`
-/

namespace A129602.P5251612279225735193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (Int.lcm 2 (A129594 (A129603 n).toNat))

end

end A129602.P5251612279225735193

/-! ## A129602.P10890483623324637248

`A053645(A129603(A004760(n+2)))`
-/

namespace A129602.P10890483623324637248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A129603 (A004760 (n + 2)).toNat).toNat

end

end A129602.P10890483623324637248

/-! ## A129602.P12354765449906964298

`A129601(A089717(n+1)+n)`
-/

namespace A129602.P12354765449906964298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129601 (A089717 (n + 1) + (n : ℤ)).toNat

end

end A129602.P12354765449906964298

/-!
# A129603: Replace in the binary expansion of n each run of k 0's (or 1's) with 2k-1 0's (or 1's).

The programs for A129603, there is no canonical definition to state claims against.
-/

/-! ## A129603.P7405790696618895699

`A162853(2*∑[and(n, -n)²]+n)`
-/

namespace A129603.P7405790696618895699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A129603.P7405790696618895699

/-! ## A129603.P5116034209768622844

`A318921(2*∑[and(n, -n)²]+n)`
-/

namespace A129603.P5116034209768622844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A129603.P5116034209768622844

/-! ## A129603.P7009916461661861166

`A162853(3*4*∑[ceil(xor(n, -n)²/3)]/8)`
-/

namespace A129603.P7009916461661861166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (SequenceMachineLib.roundAway (3 * (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 8))).toNat

end

end A129603.P7009916461661861166

/-! ## A129603.P16492281033046636015

`A318921(3*4*∑[ceil(xor(n, -n)²/3)]/8)`
-/

namespace A129603.P16492281033046636015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.roundAway (3 * (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 8))).toNat

end

end A129603.P16492281033046636015

/-! ## A129603.P7734567595166787329

`A319419(2*∑[and(n, -n)²]+n)%∑{d}[n+1, #^7]`
-/

namespace A129603.P7734567595166787329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319419 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat) ((∑ d ∈ Nat.divisors (f2 n), d ^ 7 : ℕ) : ℤ)

end

end A129603.P7734567595166787329

/-! ## A129603.P12726136325119075198

`A162853(A001196(n))`
-/

namespace A129603.P12726136325119075198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (A001196 n).toNat

end

end A129603.P12726136325119075198

/-! ## A129603.P5121421942503084452

`A318921(record[A048647(n)])`
-/

namespace A129603.P5121421942503084452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A129603.P5121421942503084452

/-! ## A129603.P1886125110145554440

`A162853(3*A000695(n))`
-/

namespace A129603.P1886125110145554440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (3 * A000695 n).toNat

end

end A129603.P1886125110145554440

/-! ## A129603.P5586916371435441397

`A318921(3*A000695(n))`
-/

namespace A129603.P5586916371435441397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (3 * A000695 n).toNat

end

end A129603.P5586916371435441397

/-! ## A129603.P2632052122575437765

`A318921(lcm(2, A001196(n)))`
-/

namespace A129603.P2632052122575437765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (Int.lcm 2 (A001196 n))

end

end A129603.P2632052122575437765

/-!
# A129604: Signature-permutation of a Catalan automorphism, row 1654720 of A089840.

The programs for A129604, there is no canonical definition to state claims against.
-/

/-! ## A129604.P6141215820763585362

`A069770(A089864(n))`
-/

namespace A129604.P6141215820763585362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089864 n).toNat

end

end A129604.P6141215820763585362

/-! ## A129604.P14211904347454566807

`A069770(A089850(A089854(n)))`
-/

namespace A129604.P14211904347454566807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089850 (A089854 n).toNat).toNat

end

end A129604.P14211904347454566807

/-! ## A129604.P1871894175552844545

`A123713(A073269(A123713(A089856(n))))`
-/

namespace A129604.P1871894175552844545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A073269 (A123713 (A089856 n).toNat).toNat).toNat

end

end A129604.P1871894175552844545

/-! ## A129604.P5261893533092504167

`A089859(A089854(n))`
-/

namespace A129604.P5261893533092504167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A089854 n).toNat

end

end A129604.P5261893533092504167

/-! ## A129604.P8529715799885694476

`A089859(A089864(n)+n-A089850(n))`
-/

namespace A129604.P8529715799885694476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A089864 n + ((n : ℤ) - A089850 n)).toNat

end

end A129604.P8529715799885694476

/-! ## A129604.P11245186758362861026

`A089856(n)+A089859(n)-A123714(n)`
-/

namespace A129604.P11245186758362861026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 n + (A089859 n - A123714 n)

end

end A129604.P11245186758362861026

/-! ## A129604.P3723349353014385142

`A089859(n-(A089850(n)-A089864(n)))`
-/

namespace A129604.P3723349353014385142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 ((n : ℤ) - (A089850 n - A089864 n)).toNat

end

end A129604.P3723349353014385142

/-! ## A129604.P15232185193446961693

`A089859(A069770(A089863(n)))`
-/

namespace A129604.P15232185193446961693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A069770 (A089863 n).toNat).toNat

end

end A129604.P15232185193446961693

/-! ## A129604.P9543267445450309774

`A069770(A089850(n))+A089863(n)-A069770(n)`
-/

namespace A129604.P9543267445450309774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089850 n).toNat + (A089863 n - A069770 n)

end

end A129604.P9543267445450309774

/-! ## A129604.P17006432710485353806

`A089864(A069770(n))`
-/

namespace A129604.P17006432710485353806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A069770 n).toNat

end

end A129604.P17006432710485353806

/-!
# A129605: Signature-permutation of a Catalan automorphism, row 3613 of A089840.

The programs for A129605, there is no canonical definition to state claims against.
-/

/-! ## A129605.P13024489614972581690

`A072796(A129606(A072796(n)))`
-/

namespace A129605.P13024489614972581690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A129606 (A072796 n).toNat).toNat

end

end A129605.P13024489614972581690

/-! ## A129605.P5099471573567846777

`A129606(A129606(A129606(A129606(A129606(n)))))`
-/

namespace A129605.P5099471573567846777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129606 (A129606 (A129606 (A129606 (A129606 n).toNat).toNat).toNat).toNat

end

end A129605.P5099471573567846777

/-! ## A129605.P13671880959883568914

`A127287(A130374(n))%A275124(n+1)`
-/

namespace A129605.P13671880959883568914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127287 (A130374 n).toNat) (A275124 (n + 1))

end

end A129605.P13671880959883568914

/-! ## A129605.P3317444667199861462

`A127287(A130374(n))-A010051(A262675(n+2))`
-/

namespace A129605.P3317444667199861462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A130374 n).toNat - A010051 (A262675 (n + 2)).toNat

end

end A129605.P3317444667199861462

/-! ## A129605.P2823006341689426660

`A130374(A127285(A130374(A127286(A127285(n)))))`
-/

namespace A129605.P2823006341689426660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130374 (A127285 (A130374 (A127286 (A127285 n).toNat).toNat).toNat).toNat

end

end A129605.P2823006341689426660

/-! ## A129605.P5975074869539356359

`A127287(A130374(n)%A243497(n))`
-/

namespace A129605.P5975074869539356359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A130374 n) (A243497 n)).toNat

end

end A129605.P5975074869539356359

/-! ## A129605.P10923890772374780590

`A089851(A154126(A069770(A072796(A154123(n)))))`
-/

namespace A129605.P10923890772374780590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A154126 (A069770 (A072796 (A154123 n).toNat).toNat).toNat).toNat

end

end A129605.P10923890772374780590

/-!
# A129606: Signature-permutation of a Catalan automorphism, row 3613 of A089840.

The programs for A129606, there is no canonical definition to state claims against.
-/

/-! ## A129606.P17029131291599519161

`A072796(A129605(A072796(n)))`
-/

namespace A129606.P17029131291599519161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A129605 (A072796 n).toNat).toNat

end

end A129606.P17029131291599519161

/-! ## A129606.P5778274350263679303

`A154124(A154121(A129605(A129605(n))))`
-/

namespace A129606.P5778274350263679303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154124 (A154121 (A129605 (A129605 n).toNat).toNat).toNat

end

end A129606.P5778274350263679303

/-! ## A129606.P17531918469041882949

`A129605(A129605(A154122(A154123(n))))`
-/

namespace A129606.P17531918469041882949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129605 (A129605 (A154122 (A154123 n).toNat).toNat).toNat

end

end A129606.P17531918469041882949

/-! ## A129606.P16938512059133189965

`A069770(A073269(A129605(A069770(A073269(n)))))`
-/

namespace A129606.P16938512059133189965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073269 (A129605 (A069770 (A073269 n).toNat).toNat).toNat).toNat

end

end A129606.P16938512059133189965

/-! ## A129606.P10232733874713655248

`A073269(A073281(A129605(A073269(A073281(n)))))`
-/

namespace A129606.P10232733874713655248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A073281 (A129605 (A073269 (A073281 n).toNat).toNat).toNat).toNat

end

end A129606.P10232733874713655248

/-! ## A129606.P18306396048310779217

`A057510(A057510(A127286(n)))`
-/

namespace A129606.P18306396048310779217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A057510 (A127286 n).toNat).toNat

end

end A129606.P18306396048310779217

/-! ## A129606.P7244879296715586792

`A127286(A127286(A057509(A127286(A057509(n)))))`
-/

namespace A129606.P7244879296715586792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (A127286 (A057509 (A127286 (A057509 n).toNat).toNat).toNat).toNat

end

end A129606.P7244879296715586792

/-! ## A129606.P11347709398044101655

`A127287(A127286(A127288(A127288(A127287(n)))))`
-/

namespace A129606.P11347709398044101655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A127286 (A127288 (A127288 (A127287 n).toNat).toNat).toNat).toNat

end

end A129606.P11347709398044101655

/-! ## A129606.P11878485483609513837

`A130374(A127288(n)%A243497(n))`
-/

namespace A129606.P11878485483609513837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130374 (Int.tmod (A127288 n) (A243497 n)).toNat

end

end A129606.P11878485483609513837

/-!
# A129607: Signature-permutation of a Catalan automorphism: swap the left and right subtree of degree 2 general trees.

The programs for A129607, there is no canonical definition to state claims against.
-/

/-! ## A129607.P12004979016093889178

`A154124(A154121(n))`
-/

namespace A129607.P12004979016093889178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154124 (A154121 n).toNat

end

end A129607.P12004979016093889178

/-! ## A129607.P2960093806062929490

`A154122(A154123(n))`
-/

namespace A129607.P2960093806062929490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (A154123 n).toNat

end

end A129607.P2960093806062929490

/-! ## A129607.P16576856364087967238

`A129605(A129605(A129605(n)))`
-/

namespace A129607.P16576856364087967238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129605 (A129605 (A129605 n).toNat).toNat

end

end A129607.P16576856364087967238

/-! ## A129607.P8990551015152622482

`A129606(A129606(A129606(n)))`
-/

namespace A129607.P8990551015152622482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129606 (A129606 (A129606 n).toNat).toNat

end

end A129607.P8990551015152622482

/-! ## A129607.P5747105505439713777

`A074680(A123503(A072796(A074679(n))))`
-/

namespace A129607.P5747105505439713777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A123503 (A072796 (A074679 n).toNat).toNat).toNat

end

end A129607.P5747105505439713777

/-! ## A129607.P681621451618971814

`A154124(A057163(A089866(A057163(n))))`
-/

namespace A129607.P681621451618971814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154124 (A057163 (A089866 (A057163 n).toNat).toNat).toNat

end

end A129607.P681621451618971814

/-! ## A129607.P12259154831223649

`A123500(A123503(A072796(A123499(n))))`
-/

namespace A129607.P12259154831223649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123500 (A123503 (A072796 (A123499 n).toNat).toNat).toNat

end

end A129607.P12259154831223649

/-!
# A129608: Signature-permutation of a Catalan automorphism: swap the two rightmost subtrees of general trees.

The programs for A129608, there is no canonical definition to state claims against.
-/

/-! ## A129608.P803990635745301426

`A057164(A072796(A057164(n)))`
-/

namespace A129608.P803990635745301426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A072796 (A057164 n).toNat).toNat

end

end A129608.P803990635745301426

/-! ## A129608.P10833331551389170225

`A057508(A072796(A057508(n)))`
-/

namespace A129608.P10833331551389170225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A072796 (A057508 n).toNat).toNat

end

end A129608.P10833331551389170225

/-! ## A129608.P3437137009219127679

`A057161(A073283(A057161(A057163(n))))`
-/

namespace A129608.P3437137009219127679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A073283 (A057161 (A057163 n).toNat).toNat).toNat

end

end A129608.P3437137009219127679

/-! ## A129608.P17160383218932305310

`A057163(A057162(A073282(A057162(n))))`
-/

namespace A129608.P17160383218932305310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057162 (A073282 (A057162 n).toNat).toNat).toNat

end

end A129608.P17160383218932305310

/-! ## A129608.P6617512501598463842

`A073284(A073284(A072796(A073285(A073285(n)))))`
-/

namespace A129608.P6617512501598463842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073284 (A073284 (A072796 (A073285 (A073285 n).toNat).toNat).toNat).toNat

end

end A129608.P6617512501598463842

/-! ## A129608.P13871503127178666817

`A057509(A127286(A127288(A127285(n))))`
-/

namespace A129608.P13871503127178666817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A127286 (A127288 (A127285 n).toNat).toNat).toNat

end

end A129608.P13871503127178666817

/-! ## A129608.P12348160922152954041

`A057509(A127286(A127286(A127287(n))))`
-/

namespace A129608.P12348160922152954041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A127286 (A127286 (A127287 n).toNat).toNat).toNat

end

end A129608.P12348160922152954041

/-! ## A129608.P5905501023972287513

`A123717(A123717(A072796(A123718(A123718(n)))))`
-/

namespace A129608.P5905501023972287513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123717 (A123717 (A072796 (A123718 (A123718 n).toNat).toNat).toNat).toNat

end

end A129608.P5905501023972287513

/-!
# A129609: Signature-permutation of a Catalan automorphism, row 65167 of A089840.

The programs for A129609, there is no canonical definition to state claims against.
-/

/-! ## A129609.P9106136717814958649

`A074679(A154122(n))`
-/

namespace A129609.P9106136717814958649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A154122 n).toNat

end

end A129609.P9106136717814958649

/-! ## A129609.P6060488707900042789

`A074679(A154124(A154121(A154124(n))))`
-/

namespace A129609.P6060488707900042789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A154124 (A154121 (A154124 n).toNat).toNat).toNat

end

end A129609.P6060488707900042789

/-! ## A129609.P8718607121065851645

`A073269(A129610(A073269(A129610(A073269(n)))))`
-/

namespace A129609.P8718607121065851645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (A129610 (A073269 (A129610 (A073269 n).toNat).toNat).toNat).toNat

end

end A129609.P8718607121065851645

/-! ## A129609.P12785978702190609616

`A154126(A089851(A154121(A069770(A074679(n)))))`
-/

namespace A129609.P12785978702190609616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A089851 (A154121 (A069770 (A074679 n).toNat).toNat).toNat).toNat

end

end A129609.P12785978702190609616

/-! ## A129609.P16932932481716552087

`A154126(A089851(A154121(A089851(A089851(n)))))`
-/

namespace A129609.P16932932481716552087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A089851 (A154121 (A089851 (A089851 n).toNat).toNat).toNat).toNat

end

end A129609.P16932932481716552087

/-!
# A129610: Signature-permutation of a Catalan automorphism, row 65352 of A089840.

The programs for A129610, there is no canonical definition to state claims against.
-/

/-! ## A129610.P14633005796807080652

`A154121(A074680(n))`
-/

namespace A129610.P14633005796807080652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A074680 n).toNat

end

end A129610.P14633005796807080652

/-! ## A129610.P14091033605899054896

`A154121(A154126(A082352(n)))`
-/

namespace A129610.P14091033605899054896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A154126 (A082352 n).toNat).toNat

end

end A129610.P14091033605899054896

/-! ## A129610.P6084576083300979432

`A154121(A057163(A074679(A057163(n))))`
-/

namespace A129610.P6084576083300979432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A057163 (A074679 (A057163 n).toNat).toNat).toNat

end

end A129610.P6084576083300979432

/-! ## A129610.P1401266357600861393

`A154121(A072796(A069770(A072797(n))))`
-/

namespace A129610.P1401266357600861393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A072796 (A069770 (A072797 n).toNat).toNat).toNat

end

end A129610.P1401266357600861393

/-! ## A129610.P4052917191393526565

`A074680(A089866(A082351(n)))`
-/

namespace A129610.P4052917191393526565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A089866 (A082351 n).toNat).toNat

end

end A129610.P4052917191393526565

/-! ## A129610.P9453786171139356974

`A154121(A089851(A069770(n)))`
-/

namespace A129610.P9453786171139356974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A089851 (A069770 n).toNat).toNat

end

end A129610.P9453786171139356974

/-! ## A129610.P812195641102789047

`A154121(A089851(A074679(A089851(n))))`
-/

namespace A129610.P812195641102789047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A089851 (A074679 (A089851 n).toNat).toNat).toNat

end

end A129610.P812195641102789047

/-!
# A129611: Signature-permutation of a Catalan automorphism, row 169 of A089840.

The programs for A129611, there is no canonical definition to state claims against.
-/

/-! ## A129611.P16744438921650079522

`A069770(A129612(A069770(n)))`
-/

namespace A129611.P16744438921650079522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A129612 (A069770 n).toNat).toNat

end

end A129611.P16744438921650079522

/-! ## A129611.P1766639513638417956

`A129612(A129612(A129612(n)))`
-/

namespace A129611.P1766639513638417956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (A129612 (A129612 n).toNat).toNat

end

end A129611.P1766639513638417956

/-!
# A129612: Signature-permutation of a Catalan automorphism, row 251 of A089840.

The programs for A129612, there is no canonical definition to state claims against.
-/

/-! ## A129612.P4549887730687532663

`A069770(A129611(A069770(n)))`
-/

namespace A129612.P4549887730687532663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A129611 (A069770 n).toNat).toNat

end

end A129612.P4549887730687532663

/-! ## A129612.P3153344468609262872

`A129611(A129611(A129611(n)))`
-/

namespace A129612.P3153344468609262872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 (A129611 (A129611 n).toNat).toNat

end

end A129612.P3153344468609262872

/-!
# A129613: a(n) is the smallest natural number m such that 2^(2^k) + m is prime for k=0,1,...,n.

The programs for A129613, there is no canonical definition to state claims against.
-/

/-! ## A129613.P13643822828140244521

`and(A007273(n), A063898(n))+1`
-/

namespace A129613.P13643822828140244521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007273 n) (A063898 n) + 1

end

end A129613.P13643822828140244521

/-! ## A129613.P17063824749822715445

`A063898(A063895(n+1))-A157895(n)`
-/

namespace A129613.P17063824749822715445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063898 (A063895 (n + 1)).toNat - A157895 n

end

end A129613.P17063824749822715445

/-!
# A129614: a(n) is the smallest natural number m such that 3^(3^k) + m is prime for k=0,1,...,n.

The programs for A129614, there is no canonical definition to state claims against.
-/

/-! ## A129614.P15054807773097307461

`A226946(∏[n!])`
-/

namespace A129614.P15054807773097307461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A129614.P15054807773097307461

/-!
# A129617: a(1) = 0; a(2) = a(3) = 1; for n > 3: a(n) = 16*a(n-2)+14*a(n-3).

The programs for A129617, the canonical program `A129617.P12332296517593069514` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129617 has offset 1).

The definition of A129617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-2)+14*a(n-3)` (program `A129617.P12332296517593069514`, by `A129617.P12332296517593069514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129617.P682750441782328198

`ogf((x+x^2)/(1-16x^2-14x^3))`
-/

namespace A129617.P682750441782328198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -16, -14] n

end

end A129617.P682750441782328198

namespace A129617

/-- `ogf((x+x^2)/(1-16x^2-14x^3))` -/
def P682750441782328198.Spec : Prop :=
  ∀ n, P682750441782328198.a n = A129617 (n + 1)

end A129617

/-! ## A129617.P12332296517593069514

`16*a(n-2)+14*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129617

/-- `16*a(n-2)+14*a(n-3)` -/
def P12332296517593069514.Spec : Prop :=
  ∀ n, (P12332296517593069514.a n : ℤ) = A129617 (n + 1)

theorem P12332296517593069514.correct : P12332296517593069514.Spec := by
  intro n
  simp only [A129617, Nat.add_sub_cancel]

end A129617

/-!
# A129618: A method of using three consecutive coprimes to generate numbers either one away from a prime or splitting two twin primes. The sequence lists the first of a group of three coprimes.

The programs for A129618, there is no canonical definition to state claims against.
-/

/-! ## A129618.P17201300194325154511

`lt[A374466(A094440(3*(n+1))), A036036(2*n+3)]`
-/

namespace A129618.P17201300194325154511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (A094440 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129618.P17201300194325154511

/-! ## A129618.P18049431709512342408

`∑[A305936(A318360(A215366(n)))]`
-/

namespace A129618.P18049431709512342408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A318360 (A215366 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129618.P18049431709512342408

/-! ## A129618.P9594981654609790787

`lt[A338255(A338283(n+1)), A338253(n)]-2`
-/

namespace A129618.P9594981654609790787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338255 (A338283 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 2

end

end A129618.P9594981654609790787

/-! ## A129618.P9969719443678693548

`lt[A338255(A338283(n+3)), A338253(n+2)]`
-/

namespace A129618.P9969719443678693548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338255 (A338283 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338253 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129618.P9969719443678693548

/-! ## A129618.P56038438875314608

`lt[A036039(A036039(n+1)), A032559(n+1)]`
-/

namespace A129618.P56038438875314608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (A036039 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129618.P56038438875314608

/-!
# A129619: a(n) = largest proper divisor of the sum of all positive integers which are <= n and are not included among the first n-1 terms of the sequence.

The programs for A129619, there is no canonical definition to state claims against.
-/

/-! ## A129619.P8369055055211482503

`A032742(lt[A093682(n+3), A091844(n+1)])`
-/

namespace A129619.P8369055055211482503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093682 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129619.P8369055055211482503

/-!
# A129620: Square array read by falling antidiagonals: T(n,k) is the number of connected directed multigraphs with loops with n arcs and at most k vertices.

The programs for A129620, there is no canonical definition to state claims against.
-/

/-! ## A129620.P6844978036238056786

`A353858(A323222(n+1))`
-/

namespace A129620.P6844978036238056786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353858 (A323222 (n + 1)).toNat

end

end A129620.P6844978036238056786

/-! ## A129620.P3102507165094854591

`A277239(n)%A009230(A047083(n))`
-/

namespace A129620.P3102507165094854591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277239 n) (A009230 (A047083 n).toNat)

end

end A129620.P3102507165094854591

/-! ## A129620.P14291111479296327364

`A178487(A217245(n+2))`
-/

namespace A129620.P14291111479296327364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A217245 (n + 2)).toNat

end

end A129620.P14291111479296327364

/-! ## A129620.P12742515968205982474

`A241918(A364074(n+3))`
-/

namespace A129620.P12742515968205982474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A364074 (n + 3)).toNat

end

end A129620.P12742515968205982474

/-! ## A129620.P18312203508241624880

`A044933(A368493(n+1))`
-/

namespace A129620.P18312203508241624880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (A368493 (n + 1)).toNat

end

end A129620.P18312203508241624880

/-!
# A129621: Primes p such that at least one of k-1 and k+1 is prime, where k = sum of the two neighboring primes of 3*p.

The programs for A129621, there is no canonical definition to state claims against.
-/

/-! ## A129621.P14898893935910661354

`∩[A123068(n+1), A281295(n+1)]`
-/

namespace A129621.P14898893935910661354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129621.P14898893935910661354

/-! ## A129621.P16253932596931841174

`eq[A003415(n), A008292(A299755(n+1))]`
-/

namespace A129621.P16253932596931841174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A299755 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129621.P16253932596931841174

/-! ## A129621.P12907343543697970324

`eq[A123487(A299755(n+1)), A353860(n)]`
-/

namespace A129621.P12907343543697970324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123487 (A299755 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129621.P12907343543697970324

/-! ## A129621.P12446791661599106400

`lt[A082859(A299755(n+1)), A105700(2*n)]`
-/

namespace A129621.P12446791661599106400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A299755 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129621.P12446791661599106400

/-!
# A129627: Sum of the 4th powers of the degrees of irreducible representations of S_n, the symmetric group on n letters.

The programs for A129627, there is no canonical definition to state claims against.
-/

/-! ## A129627.P7817196595582346035

`record[A208447(A052905(n))]`
-/

namespace A129627.P7817196595582346035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129627.P7817196595582346035

/-! ## A129627.P13252690389966353881

`A208447(eq[5, A193592(n)])`
-/

namespace A129627.P13252690389966353881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129627.P13252690389966353881

/-! ## A129627.P14945021381778000665

`A208447(A027379(n+4)-2)`
-/

namespace A129627.P14945021381778000665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (A027379 (n + 4) - 2).toNat

end

end A129627.P14945021381778000665

/-! ## A129627.P4339171758639710181

`A208447(eq[7, A049286(n+1)])`
-/

namespace A129627.P4339171758639710181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129627.P4339171758639710181

/-! ## A129627.P9574942594289002660

`A208447(Δ[A023551(n+1)]+1)`
-/

namespace A129627.P9574942594289002660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (f1 (n + 1) - f1 n + 1).toNat

end

end A129627.P9574942594289002660

/-!
# A129628: Inverse Moebius transform of A001511.

The programs for A129628, the canonical program `A129628.P17919949017180811330` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129628 has offset 1).

The definition of A129628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129628.P12387481433124313571

`∑{d}[n+1, A001511(#)]`
-/

namespace A129628.P12387481433124313571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d

end

end A129628.P12387481433124313571

namespace A129628

/-- `∑{d}[n+1, A001511(#)]` -/
def P12387481433124313571.Spec : Prop :=
  ∀ n, P12387481433124313571.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P17919949017180811330

`A115364(n+1)*A001227(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A129628

/-- `A115364(n+1)*A001227(n+1)` -/
def P17919949017180811330.Spec : Prop :=
  ∀ n, P17919949017180811330.a n = A129628 (n + 1)

theorem P17919949017180811330.correct : P17919949017180811330.Spec := by
  intro n
  simp only [A129628, Nat.add_sub_cancel]

end A129628

/-! ## A129628.P18155421893543145559

`1/2*A001511(n+1)*A099777(n+1)`
-/

namespace A129628.P18155421893543145559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001511 (n + 1) : ℚ) * (A099777 (n + 1) : ℚ)

end

end A129628.P18155421893543145559

namespace A129628

/-- `1/2*A001511(n+1)*A099777(n+1)` -/
def P18155421893543145559.Spec : Prop :=
  ∀ n, P18155421893543145559.a n = (A129628 (n + 1) : ℚ)

end A129628

/-! ## A129628.P10175150896196476848

`∑{#}[A007814(n+1), A000005((n+1)/2^#)]`
-/

namespace A129628.P10175150896196476848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ k : ℚ))).toNat

end

end A129628.P10175150896196476848

namespace A129628

/-- `∑{#}[A007814(n+1), A000005((n+1)/2^#)]` -/
def P10175150896196476848.Spec : Prop :=
  ∀ n, P10175150896196476848.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P11617309201358381555

`1/2*(A001511(n+1)+1)*A000005(n+1)`
-/

namespace A129628.P11617309201358381555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001511 (n + 1) + 1 : ℚ) * (A000005 (n + 1) : ℚ)

end

end A129628.P11617309201358381555

namespace A129628

/-- `1/2*(A001511(n+1)+1)*A000005(n+1)` -/
def P11617309201358381555.Spec : Prop :=
  ∀ n, P11617309201358381555.a n = (A129628 (n + 1) : ℚ)

end A129628

/-! ## A129628.P10547886610781010182

`∑{d}[2*(n+1), A007814(#)]`
-/

namespace A129628.P10547886610781010182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007814 d

end

end A129628.P10547886610781010182

namespace A129628

/-- `∑{d}[2*(n+1), A007814(#)]` -/
def P10547886610781010182.Spec : Prop :=
  ∀ n, P10547886610781010182.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P18113683526139992139

`∑{d}[n+1, val(#, 2)+1]`
-/

namespace A129628.P18113683526139992139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (SequenceMachineLib.valuation d 2 + 1)

end

end A129628.P18113683526139992139

namespace A129628

/-- `∑{d}[n+1, val(#, 2)+1]` -/
def P18113683526139992139.Spec : Prop :=
  ∀ n, (P18113683526139992139.a n : ℤ) = A129628 (n + 1)

end A129628

/-! ## A129628.P17660792251975657260

`∑{d}[n+1, sqrt(A123726(#))]`
-/

namespace A129628.P17660792251975657260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A123726 d : ℝ)

end

end A129628.P17660792251975657260

namespace A129628

/-- `∑{d}[n+1, sqrt(A123726(#))]` -/
def P17660792251975657260.Spec : Prop :=
  ∀ n, P17660792251975657260.a n = (A129628 (n + 1) : ℝ)

end A129628

/-! ## A129628.P12814724090041343243

`∑{d}[n+1, A007814(#)+1]`
-/

namespace A129628.P12814724090041343243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007814 d + 1)

end

end A129628.P12814724090041343243

namespace A129628

/-- `∑{d}[n+1, A007814(#)+1]` -/
def P12814724090041343243.Spec : Prop :=
  ∀ n, P12814724090041343243.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P14047483542077160913

`∑{d}[A005843(n+1), val(#, 2)]`
-/

namespace A129628.P14047483542077160913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.valuation d 2

end

end A129628.P14047483542077160913

namespace A129628

/-- `∑{d}[A005843(n+1), val(#, 2)]` -/
def P14047483542077160913.Spec : Prop :=
  ∀ n, (P14047483542077160913.a n : ℤ) = A129628 (n + 1)

end A129628

/-! ## A129628.P12492261962806271184

`∑{d}[n+1, A000005(gcd(#, and(n, n+1)))]`
-/

namespace A129628.P12492261962806271184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (Nat.gcd d (Nat.land n (n + 1)))

end

end A129628.P12492261962806271184

namespace A129628

/-- `∑{d}[n+1, A000005(gcd(#, and(n, n+1)))]` -/
def P12492261962806271184.Spec : Prop :=
  ∀ n, P12492261962806271184.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P10050658922829639546

`A001227(n+1)*A115364(n+1)`
-/

namespace A129628.P10050658922829639546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A115364 (n + 1)

end

end A129628.P10050658922829639546

namespace A129628

/-- `A001227(n+1)*A115364(n+1)` -/
def P10050658922829639546.Spec : Prop :=
  ∀ n, P10050658922829639546.a n = A129628 (n + 1)

theorem P10050658922829639546.correct : P10050658922829639546.Spec := by
  intro n
  simp only [A129628, Nat.add_sub_cancel, A129628.P10050658922829639546.a, A129628.P17919949017180811330.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A129628

/-! ## A129628.P7627751058357270180

`A397549(n+1)/A133700(n+1)`
-/

namespace A129628.P7627751058357270180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397549 (n + 1) : ℚ) / (A133700 (n + 1) : ℚ)

end

end A129628.P7627751058357270180

namespace A129628

/-- `A397549(n+1)/A133700(n+1)` -/
def P7627751058357270180.Spec : Prop :=
  ∀ n, P7627751058357270180.a n = (A129628 (n + 1) : ℚ)

end A129628

/-! ## A129628.P762756964963204314

`A000005(n+1)/2*A085058(n)`
-/

namespace A129628.P762756964963204314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (A085058 n : ℚ)

end

end A129628.P762756964963204314

namespace A129628

/-- `A000005(n+1)/2*A085058(n)` -/
def P762756964963204314.Spec : Prop :=
  ∀ n, P762756964963204314.a n = (A129628 (n + 1) : ℚ)

end A129628

/-! ## A129628.P18186482760865178168

`∑{d}[n+1, A000005(#/A000265(#))]`
-/

namespace A129628.P18186482760865178168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (SequenceMachineLib.roundAway ((d : ℚ) / (A000265 d : ℚ))).toNat

end

end A129628.P18186482760865178168

namespace A129628

/-- `∑{d}[n+1, A000005(#/A000265(#))]` -/
def P18186482760865178168.Spec : Prop :=
  ∀ n, P18186482760865178168.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P6468509347344708630

`lcm(A000005(2*(n+1)), A000005(n+1))/2`
-/

namespace A129628.P6468509347344708630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (2 * (n + 1))) (A000005 (n + 1)) : ℚ) / 2

end

end A129628.P6468509347344708630

namespace A129628

/-- `lcm(A000005(2*(n+1)), A000005(n+1))/2` -/
def P6468509347344708630.Spec : Prop :=
  ∀ n, P6468509347344708630.a n = (A129628 (n + 1) : ℚ)

end A129628

/-! ## A129628.P6504476138893375727

`∑{d}[n+1, A035263(#)*A037227((n+1)/#)]`
-/

namespace A129628.P6504476138893375727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A037227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129628.P6504476138893375727

namespace A129628

/-- `∑{d}[n+1, A035263(#)*A037227((n+1)/#)]` -/
def P6504476138893375727.Spec : Prop :=
  ∀ n, P6504476138893375727.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P1433579393387236306

`∑{d}[n+1, A006519(#)*A087810((n+1)/#)]`
-/

namespace A129628.P1433579393387236306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A087810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129628.P1433579393387236306

namespace A129628

/-- `∑{d}[n+1, A006519(#)*A087810((n+1)/#)]` -/
def P1433579393387236306.Spec : Prop :=
  ∀ n, P1433579393387236306.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P10727438595640232575

`∑{d}[n+1, A007425(#)*A087003((n+1)/#)]`
-/

namespace A129628.P10727438595640232575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129628.P10727438595640232575

namespace A129628

/-- `∑{d}[n+1, A007425(#)*A087003((n+1)/#)]` -/
def P10727438595640232575.Spec : Prop :=
  ∀ n, P10727438595640232575.a n = A129628 (n + 1)

end A129628

/-! ## A129628.P6638828746800687403

`∑{d}[n+1, A035191(#)*A065333((n+1)/#)]`
-/

namespace A129628.P6638828746800687403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035191 d * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129628.P6638828746800687403

namespace A129628

/-- `∑{d}[n+1, A035191(#)*A065333((n+1)/#)]` -/
def P6638828746800687403.Spec : Prop :=
  ∀ n, P6638828746800687403.a n = A129628 (n + 1)

end A129628

/-!
# A129630: Numbers k such that sum of digits of (k+1) is a prime.

The programs for A129630, there is no canonical definition to state claims against.
-/

/-! ## A129630.P16995176267223649475

`A028834(n+1)-1`
-/

namespace A129630.P16995176267223649475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) - 1

end

end A129630.P16995176267223649475

/-! ## A129630.P14270832314951790293

`∪[A046704(n+1), A141642(n+1)]-1`
-/

namespace A129630.P14270832314951790293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A129630.P14270832314951790293

/-! ## A129630.P16009263380043531189

`A102283(A020639(2*(n+2)))+A028834(n+1)`
-/

namespace A129630.P16009263380043531189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A020639 (2 * (n + 2))).toNat + A028834 (n + 1)

end

end A129630.P16009263380043531189

/-! ## A129630.P7341863615805828825

`A292520(A126241(2*(n+2)))+A028834(n+1)`
-/

namespace A129630.P7341863615805828825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 (A126241 (2 * (n + 2))).toNat + A028834 (n + 1)

end

end A129630.P7341863615805828825

/-! ## A129630.P16601643091947994852

`A081360(A006519(2*n+5))+A028834(n+1)`
-/

namespace A129630.P16601643091947994852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (A006519 (2 * n + 5)).toNat + A028834 (n + 1)

end

end A129630.P16601643091947994852

/-! ## A129630.P51717032786409561

`A166956(A001511(2*n+5))+A028834(n+1)`
-/

namespace A129630.P51717032786409561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166956 (A001511 (2 * n + 5)).toNat + A028834 (n + 1)

end

end A129630.P51717032786409561

/-! ## A129630.P6958069127672747420

`eq[1, A054024(∑{digits}[n+2, #])]+1`
-/

namespace A129630.P6958069127672747420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129630.P6958069127672747420

/-! ## A129630.P14118984815069649027

`eq[2, A306509(n+1)]`
-/

namespace A129630.P14118984815069649027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P14118984815069649027

/-! ## A129630.P10010566022943294874

`eq[1, A001222(∑{digits}[n+1, #])]`
-/

namespace A129630.P10010566022943294874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P10010566022943294874

/-! ## A129630.P17572945039567544301

`eq[1, A032741(∑{digits}[n+1, #])]`
-/

namespace A129630.P17572945039567544301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P17572945039567544301

/-! ## A129630.P14830950891570683563

`eq[2, A000005(∑{digits}[n+1, #])]`
-/

namespace A129630.P14830950891570683563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P14830950891570683563

/-! ## A129630.P8409888911630061028

`A023443(A028834(n+1))`
-/

namespace A129630.P8409888911630061028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A028834 (n + 1)).toNat

end

end A129630.P8409888911630061028

/-! ## A129630.P3490916317125475514

`eq[1, A001222(A007953(n+1))]`
-/

namespace A129630.P3490916317125475514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P3490916317125475514

/-! ## A129630.P6504257878232998694

`eq[1, A003415(A007953(n))]-1`
-/

namespace A129630.P6504257878232998694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A129630.P6504257878232998694

/-! ## A129630.P2892937315048026137

`eq[2, A074206(A118881(n+1))]`
-/

namespace A129630.P2892937315048026137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A118881 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P2892937315048026137

/-! ## A129630.P8820462130603796316

`lt[1, A105700(A169805(n+1))]`
-/

namespace A129630.P8820462130603796316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A169805 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129630.P8820462130603796316

/-! ## A129630.P364584632202905801

`eq[2, A074206(A118881(n))]-1`
-/

namespace A129630.P364584632202905801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A118881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A129630.P364584632202905801

/-! ## A129630.P17071851677318394089

`lt[1, A105700(A169805(n))]-1`
-/

namespace A129630.P17071851677318394089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A169805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A129630.P17071851677318394089

/-! ## A129630.P77777853995730379

`eq[2, A032741(A007953(n+1)²)]`
-/

namespace A129630.P77777853995730379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P77777853995730379

/-! ## A129630.P5092659001687923182

`eq[2, A074206(A007953(n+1)²)]`
-/

namespace A129630.P5092659001687923182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A007953 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129630.P5092659001687923182

/-!
# A129631: Numbers k such that sum of digits of binomial(k+1, k-1) is a prime.

The programs for A129631, the canonical program `A129631.P433838894207889531` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129631 has offset 1).

The definition of A129631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129631.P1842798829719195182

`eq[0, A007920(A004157(n))]`
-/

namespace A129631.P1842798829719195182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004157 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129631.P1842798829719195182

namespace A129631

/-- `eq[0, A007920(A004157(n))]` -/
def P1842798829719195182.Spec : Prop :=
  ∀ n, (P1842798829719195182.a n : ℤ) = A129631 (n + 1)

end A129631

/-! ## A129631.P9271344141442490562

`eq[1, A001222(A004157(n+1))]+1`
-/

namespace A129631.P9271344141442490562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004157 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129631.P9271344141442490562

namespace A129631

/-- `eq[1, A001222(A004157(n+1))]+1` -/
def P9271344141442490562.Spec : Prop :=
  ∀ n, (P9271344141442490562.a n : ℤ) = A129631 (n + 1)

end A129631

/-! ## A129631.P4409476158105299480

`eq[1, A249858(A004157(n+1)+1)]+1`
-/

namespace A129631.P4409476158105299480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (A004157 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129631.P4409476158105299480

namespace A129631

/-- `eq[1, A249858(A004157(n+1)+1)]+1` -/
def P4409476158105299480.Spec : Prop :=
  ∀ n, (P4409476158105299480.a n : ℤ) = A129631 (n + 1)

end A129631

/-! ## A129631.P5330313571251717852

`eq[A032741(A004157(n)), A158388(n)]`
-/

namespace A129631.P5330313571251717852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004157 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129631.P5330313571251717852

namespace A129631

/-- `eq[A032741(A004157(n)), A158388(n)]` -/
def P5330313571251717852.Spec : Prop :=
  ∀ n, (P5330313571251717852.a n : ℤ) = A129631 (n + 1)

end A129631

/-! ## A129631.P10323497026247094109

`eq[A004157(n), A051444(A004157(n)+1)]`
-/

namespace A129631.P10323497026247094109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A004157 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129631.P10323497026247094109

namespace A129631

/-- `eq[A004157(n), A051444(A004157(n)+1)]` -/
def P10323497026247094109.Spec : Prop :=
  ∀ n, (P10323497026247094109.a n : ℤ) = A129631 (n + 1)

end A129631

/-! ## A129631.P433838894207889531

`eq[A032741(A004157(n))+n-1, A028310(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129631

/-- `eq[A032741(A004157(n))+n-1, A028310(n)]` -/
def P433838894207889531.Spec : Prop :=
  ∀ n, (P433838894207889531.a n : ℤ) = A129631 (n + 1)

theorem P433838894207889531.correct : P433838894207889531.Spec := by
  intro n
  simp only [A129631, Nat.add_sub_cancel]

end A129631

/-! ## A129631.P15293674275496961114

`A080098(A117512(n+1))`
-/

namespace A129631.P15293674275496961114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A117512 (n + 1)).toNat

end

end A129631.P15293674275496961114

namespace A129631

/-- `A080098(A117512(n+1))` -/
def P15293674275496961114.Spec : Prop :=
  ∀ n, P15293674275496961114.a n = A129631 (n + 1)

end A129631

/-!
# A129632: Partial sums of A063882.

The programs for A129632, the canonical program `A129632.P2546070396223318739` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129632 has offset 1).

The definition of A129632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129632.P2546070396223318739

`∑[a(n-a(n-1))+a(n-a(n-4))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129632

/-- `∑[a(n-a(n-1))+a(n-a(n-4))]` -/
def P2546070396223318739.Spec : Prop :=
  ∀ n, (P2546070396223318739.a n : ℤ) = A129632 (n + 1)

theorem P2546070396223318739.correct : P2546070396223318739.Spec := by
  intro n
  simp only [A129632, Nat.add_sub_cancel]

end A129632

/-! ## A129632.P17841880197929811860

`∑[A063882(n+1)]`
-/

namespace A129632.P17841880197929811860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P17841880197929811860

namespace A129632

/-- `∑[A063882(n+1)]` -/
def P17841880197929811860.Spec : Prop :=
  ∀ n, P17841880197929811860.a n = A129632 (n + 1)

theorem P17841880197929811860.correct : P17841880197929811860.Spec := by
  intro n
  simp only [A129632, Nat.add_sub_cancel, A129632.P17841880197929811860.f1, A129632.P17841880197929811860.a, A129632.P2546070396223318739.f1, A129632.P2546070396223318739.a, A063882, A063882.P3070067966620141214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129632

/-! ## A129632.P8351431197613431729

`∑[A136036(n)+a(n-1)]` with `a(0)=1`
-/

namespace A129632.P8351431197613431729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A136036 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P8351431197613431729

namespace A129632

/-- `∑[A136036(n)+a(n-1)]` -/
def P8351431197613431729.Spec : Prop :=
  ∀ n, P8351431197613431729.a n = A129632 (n + 1)

end A129632

/-! ## A129632.P9303056232921315981

`∑[∑[char[A202014(n+1)-1]]]`
-/

namespace A129632.P9303056232921315981
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P9303056232921315981

namespace A129632

/-- `∑[∑[char[A202014(n+1)-1]]]` -/
def P9303056232921315981.Spec : Prop :=
  ∀ n, (P9303056232921315981.a n : ℤ) = A129632 (n + 1)

end A129632

/-! ## A129632.P11012810420997736988

`∑[A285758(2*(n+1))/2]`
-/

namespace A129632.P11012810420997736988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285758 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P11012810420997736988

namespace A129632

/-- `∑[A285758(2*(n+1))/2]` -/
def P11012810420997736988.Spec : Prop :=
  ∀ n, P11012810420997736988.a n = (A129632 (n + 1) : ℚ)

end A129632

/-! ## A129632.P5896565180234475411

`∑[A289440(A285758(2*(n+1)))]`
-/

namespace A129632.P5896565180234475411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A285758 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P5896565180234475411

namespace A129632

/-- `∑[A289440(A285758(2*(n+1)))]` -/
def P5896565180234475411.Spec : Prop :=
  ∀ n, P5896565180234475411.a n = A129632 (n + 1)

end A129632

/-! ## A129632.P1894091982295501068

`∑[A003602(A285758(2*(n+1))-1)]`
-/

namespace A129632.P1894091982295501068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A285758 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P1894091982295501068

namespace A129632

/-- `∑[A003602(A285758(2*(n+1))-1)]` -/
def P1894091982295501068.Spec : Prop :=
  ∀ n, P1894091982295501068.a n = A129632 (n + 1)

end A129632

/-! ## A129632.P16343100326774707746

`∑[∑[A285758(2*(n+1))-A285758(2*n+1)]]`
-/

namespace A129632.P16343100326774707746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (2 * (n + 1)) - A285758 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129632.P16343100326774707746

namespace A129632

/-- `∑[∑[A285758(2*(n+1))-A285758(2*n+1)]]` -/
def P16343100326774707746.Spec : Prop :=
  ∀ n, P16343100326774707746.a n = A129632 (n + 1)

end A129632

/-!
# A129633: The sum of the decimal digits of all primes up to and including the primes listed equals a prime.

The programs for A129633, the canonical program `A129633.P6237499131116269407` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129633 has offset 1).

The definition of A129633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129633.P6237499131116269407

`A000040(A058049(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A129633

/-- `A000040(A058049(n+1))` -/
def P6237499131116269407.Spec : Prop :=
  ∀ n, P6237499131116269407.a n = A129633 (n + 1)

theorem P6237499131116269407.correct : P6237499131116269407.Spec := by
  intro n
  simp only [A129633, Nat.add_sub_cancel]

end A129633

/-! ## A129633.P13713562569496216608

`A008578(A058049(n+1)+1)`
-/

namespace A129633.P13713562569496216608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A058049 (n + 1) + 1).toNat

end

end A129633.P13713562569496216608

namespace A129633

/-- `A008578(A058049(n+1)+1)` -/
def P13713562569496216608.Spec : Prop :=
  ∀ n, P13713562569496216608.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P12425939620857096628

`A182986(A058049(n+1)+1)`
-/

namespace A129633.P12425939620857096628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A058049 (n + 1) + 1).toNat

end

end A129633.P12425939620857096628

namespace A129633

/-- `A182986(A058049(n+1)+1)` -/
def P12425939620857096628.Spec : Prop :=
  ∀ n, P12425939620857096628.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P18268382546337756303

`∑{d}[A058049(n+1), A007444(#)]`
-/

namespace A129633.P18268382546337756303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A129633.P18268382546337756303

namespace A129633

/-- `∑{d}[A058049(n+1), A007444(#)]` -/
def P18268382546337756303.Spec : Prop :=
  ∀ n, P18268382546337756303.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P10474075181472834864

`A006093(A058049(n+1))+A014963(6*(n+1))`
-/

namespace A129633.P10474075181472834864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A058049 (n + 1)).toNat + A014963 (6 * (n + 1))

end

end A129633.P10474075181472834864

namespace A129633

/-- `A006093(A058049(n+1))+A014963(6*(n+1))` -/
def P10474075181472834864.Spec : Prop :=
  ∀ n, P10474075181472834864.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P11114103578810358433

`A006093(A058049(n+1))+A007318(gcd(n, n+1))`
-/

namespace A129633.P11114103578810358433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A058049 (n + 1)).toNat + A007318 (Nat.gcd n (n + 1))

end

end A129633.P11114103578810358433

namespace A129633

/-- `A006093(A058049(n+1))+A007318(gcd(n, n+1))` -/
def P11114103578810358433.Spec : Prop :=
  ∀ n, P11114103578810358433.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P10302189652721738158

`A006093(A058049(n+1))+((-1)^A007318(n))²`
-/

namespace A129633.P10302189652721738158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (A058049 (n + 1)).toNat : ℚ) + ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A129633.P10302189652721738158

namespace A129633

/-- `A006093(A058049(n+1))+((-1)^A007318(n))²` -/
def P10302189652721738158.Spec : Prop :=
  ∀ n, P10302189652721738158.a n = (A129633 (n + 1) : ℚ)

end A129633

/-! ## A129633.P10865367714859958341

`A006093(A058049(n+1))+A007318((-1)^n+1)`
-/

namespace A129633.P10865367714859958341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A058049 (n + 1)).toNat + A007318 ((-1) ^ n + 1).toNat

end

end A129633.P10865367714859958341

namespace A129633

/-- `A006093(A058049(n+1))+A007318((-1)^n+1)` -/
def P10865367714859958341.Spec : Prop :=
  ∀ n, P10865367714859958341.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P5357915123846991235

`A073846(2*A058049(n+1))`
-/

namespace A129633.P5357915123846991235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A058049 (n + 1)).toNat

end

end A129633.P5357915123846991235

namespace A129633

/-- `A073846(2*A058049(n+1))` -/
def P5357915123846991235.Spec : Prop :=
  ∀ n, P5357915123846991235.a n = A129633 (n + 1)

end A129633

/-! ## A129633.P8742863825633236510

`p?[A008578(n+1)*A032741(A051351(n))]`
-/

namespace A129633.P8742863825633236510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A032741 (A051351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129633.P8742863825633236510

namespace A129633

/-- `p?[A008578(n+1)*A032741(A051351(n))]` -/
def P8742863825633236510.Spec : Prop :=
  ∀ n, P8742863825633236510.a n = A129633 (n + 1)

end A129633

/-!
# A129634: Least nonnegative m such that T(n) + T(m) is prime, where T(n) = n*(n+1)/2.

The programs for A129634, there is no canonical definition to state claims against.
-/

/-! ## A129634.P3931941238682214600

`A249061(∑[n])%(5-n²)²`
-/

namespace A129634.P3931941238682214600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249061 (∑ j ∈ Finset.range (n + 1), f1 j)) ((5 - (n ^ 2 : ℤ)) ^ 2)

end

end A129634.P3931941238682214600

/-! ## A129634.P8410644973000848643

`A249061(∑[n])*A266678(n)`
-/

namespace A129634.P8410644973000848643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (∑ j ∈ Finset.range (n + 1), f1 j) * A266678 n

end

end A129634.P8410644973000848643

/-! ## A129634.P5827111414954881100

`and(A153893(n), A249061(∑[n]))`
-/

namespace A129634.P5827111414954881100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A249061 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A129634.P5827111414954881100

/-! ## A129634.P13821665836958919496

`and(A052955(2*n+1), A249061(∑[n]))`
-/

namespace A129634.P13821665836958919496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052955 (2 * n + 1)) (A249061 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A129634.P13821665836958919496

/-!
# A129635: Decimal expansion of 1 + A117871.

The programs for A129635, there is no canonical definition to state claims against.
-/

/-! ## A129635.P12670773419180717727

`floor(A117871(n)+acot(n))`
-/

namespace A129635.P12670773419180717727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117871 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A129635.P12670773419180717727

/-! ## A129635.P16452804160127357759

`A117871(n)+A000007(n)`
-/

namespace A129635.P16452804160127357759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117871 (n + 1) + A000007 n

end

end A129635.P16452804160127357759

/-! ## A129635.P8374853957817443683

`A117871(n)+1-A057427(n)`
-/

namespace A129635.P8374853957817443683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117871 (n + 1) + (1 - A057427 n)

end

end A129635.P8374853957817443683

/-! ## A129635.P510884005197607164

`A117871(n)+char[A120813(n+1)²]`
-/

namespace A129635.P510884005197607164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120813 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117871 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129635.P510884005197607164

/-! ## A129635.P5088568240060178788

`A117871(n)+char[A120813(3*n+1)]`
-/

namespace A129635.P5088568240060178788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120813 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117871 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129635.P5088568240060178788

/-! ## A129635.P17432600226192698874

`A117871(n)+A008683(A008574(n))`
-/

namespace A129635.P17432600226192698874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117871 (n + 1) + A008683 (A008574 n).toNat

end

end A129635.P17432600226192698874

/-! ## A129635.P678832847624500033

`A166698(A298026(n))+A117871(n)`
-/

namespace A129635.P678832847624500033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A298026 n).toNat + A117871 (n + 1)

end

end A129635.P678832847624500033

/-! ## A129635.P17814212629378346075

`A166698(A054271(n+1))+A117871(n)`
-/

namespace A129635.P17814212629378346075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A054271 (n + 1)).toNat + A117871 (n + 1)

end

end A129635.P17814212629378346075

/-! ## A129635.P15366465439208138968

`A117871(n)-A008683(2*A008574(n))`
-/

namespace A129635.P15366465439208138968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117871 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A129635.P15366465439208138968

/-!
# A129636: Triangle T(n,k): base-3 digit sum of the Pascal type triangle A102363(n,k).

The programs for A129636, the canonical program `A129636.P13019751396834659063` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129636 has offset 0).

The definition of A129636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129636.P13019751396834659063

`A053735(A102363(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129636

/-- `A053735(A102363(n))` -/
def P13019751396834659063.Spec : Prop :=
  ∀ n, P13019751396834659063.a n = A129636 n

theorem P13019751396834659063.correct : P13019751396834659063.Spec := by
  intro n
  simp only [A129636]

end A129636

/-! ## A129636.P225414061397768795

`A053735(record[A267112(n+1)])`
-/

namespace A129636.P225414061397768795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A129636.P225414061397768795

namespace A129636

/-- `A053735(record[A267112(n+1)])` -/
def P225414061397768795.Spec : Prop :=
  ∀ n, P225414061397768795.a n = A129636 n

end A129636

/-! ## A129636.P7106646986844945542

`A053735(∑[A007318(abs(1-n))])`
-/

namespace A129636.P7106646986844945542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129636.P7106646986844945542

namespace A129636

/-- `A053735(∑[A007318(abs(1-n))])` -/
def P7106646986844945542.Spec : Prop :=
  ∀ n, P7106646986844945542.a n = A129636 n

end A129636

/-! ## A129636.P4133805276968307161

`A053735(A308663(comp[∑[n+1]]))`
-/

namespace A129636.P4133805276968307161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A308663 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A129636.P4133805276968307161

namespace A129636

/-- `A053735(A308663(comp[∑[n+1]]))` -/
def P4133805276968307161.Spec : Prop :=
  ∀ n, P4133805276968307161.a n = A129636 n

end A129636

/-! ## A129636.P10181990422298247721

`A053735(A140513(n)-A055248(n))`
-/

namespace A129636.P10181990422298247721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A140513 n - A055248 n).toNat

end

end A129636.P10181990422298247721

namespace A129636

/-- `A053735(A140513(n)-A055248(n))` -/
def P10181990422298247721.Spec : Prop :=
  ∀ n, P10181990422298247721.a n = A129636 n

theorem P10181990422298247721.correct : P10181990422298247721.Spec := by
  intro n
  simp only [A129636, Nat.add_sub_cancel, A129636.P10181990422298247721.a, A129636.P13019751396834659063.a, A053735, A053735.P3640341592284089632.a, A055248, A055248.P3086643025084055619.a, A102363, A102363.P15098294147514921799.a, A140513, A140513.P13579608035938851890.a, A007318, A007318.P11755526479805562006.a, A054861, A054861.P6137810495506521191.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A129636

/-! ## A129636.P5779973743500494090

`A053735(∑[A007318(n)]-A014473(n))`
-/

namespace A129636.P5779973743500494090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (∑ j ∈ Finset.range (n + 1), f1 j - A014473 n).toNat

end

end A129636.P5779973743500494090

namespace A129636

/-- `A053735(∑[A007318(n)]-A014473(n))` -/
def P5779973743500494090.Spec : Prop :=
  ∀ n, P5779973743500494090.a n = A129636 n

end A129636

/-! ## A129636.P3647340303707814907

`A053735(A163866(n+1)-A014473(n))`
-/

namespace A129636.P3647340303707814907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A163866 (n + 1) - A014473 n).toNat

end

end A129636.P3647340303707814907

namespace A129636

/-- `A053735(A163866(n+1)-A014473(n))` -/
def P3647340303707814907.Spec : Prop :=
  ∀ n, P3647340303707814907.a n = A129636 n

end A129636

/-! ## A129636.P9526688589923516887

`A053735(∑[A007318(n)]+1-A007318(n))`
-/

namespace A129636.P9526688589923516887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A007318 n)).toNat

end

end A129636.P9526688589923516887

namespace A129636

/-- `A053735(∑[A007318(n)]+1-A007318(n))` -/
def P9526688589923516887.Spec : Prop :=
  ∀ n, P9526688589923516887.a n = A129636 n

end A129636

/-!
# A129637: Number of n-step paths that can go {west, southeast, southwest, northwest} on a 240-degree wedge on the equilateral triangular lattice.

The programs for A129637, there is no canonical definition to state claims against.
-/

/-! ## A129637.P13840442005076371148

`(A151282(n)+A000302(n))/2`
-/

namespace A129637.P13840442005076371148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151282 n + A000302 n : ℚ) / 2

end

end A129637.P13840442005076371148

/-! ## A129637.P10214314848842370470

`(A151282(n)+A000302(n))*2^A008683(A020483(n))`
-/

namespace A129637.P10214314848842370470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151282 n + A000302 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A129637.P10214314848842370470

/-! ## A129637.P3622513099448094778

`(A151282(n)+A000302(n))*2^A008683(A020484(n))`
-/

namespace A129637.P3622513099448094778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151282 n + A000302 n : ℚ) * (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A129637.P3622513099448094778

/-! ## A129637.P1368709234333344791

`4*a(n-1)-A306684(A027379(n))` with `a(0)=1`
-/

namespace A129637.P1368709234333344791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A306684 (A027379 n).toNat

end

end A129637.P1368709234333344791

/-! ## A129637.P15857816209645613611

`4*a(n-1)-A306684(A055998(n))` with `a(0)=1`
-/

namespace A129637.P15857816209645613611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A306684 (A055998 n).toNat

end

end A129637.P15857816209645613611

/-!
# A129638: Number of meaningful differential operations of the k-th order on the space R^11.

The programs for A129638, the canonical program `A129638.P1827807077135099414` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129638 has offset 11).

The definition of A129638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129638.P1827807077135099414

`ogf((11+10x-36x^2-24x^3+21x^4+6x^5)/(1-x-5x^2+4x^3+6x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129638

/-- `ogf((11+10x-36x^2-24x^3+21x^4+6x^5)/(1-x-5x^2+4x^3+6x^4-3x^5-x^6))` -/
def P1827807077135099414.Spec : Prop :=
  ∀ n, P1827807077135099414.a n = A129638 (n + 11)

theorem P1827807077135099414.correct : P1827807077135099414.Spec := by
  intro n
  simp only [A129638, Nat.add_sub_cancel]

end A129638

/-! ## A129638.P15045606787436860093

`A153361(n+2)/2`
-/

namespace A129638.P15045606787436860093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153361 (n + 2) : ℚ) / 2

end

end A129638.P15045606787436860093

namespace A129638

/-- `A153361(n+2)/2` -/
def P15045606787436860093.Spec : Prop :=
  ∀ n, P15045606787436860093.a n = (A129638 (n + 11) : ℚ)

end A129638

/-! ## A129638.P7540021930438644857

`A014682(A153361(n+2))`
-/

namespace A129638.P7540021930438644857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A153361 (n + 2)).toNat

end

end A129638.P7540021930438644857

namespace A129638

/-- `A014682(A153361(n+2))` -/
def P7540021930438644857.Spec : Prop :=
  ∀ n, P7540021930438644857.a n = A129638 (n + 11)

end A129638

/-! ## A129638.P4264692624691838069

`A273943(A010687(2*n)*A153361(n+2))`
-/

namespace A129638.P4264692624691838069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A010687 (2 * n) * A153361 (n + 2)).toNat

end

end A129638.P4264692624691838069

namespace A129638

/-- `A273943(A010687(2*n)*A153361(n+2))` -/
def P4264692624691838069.Spec : Prop :=
  ∀ n, P4264692624691838069.a n = A129638 (n + 11)

end A129638

/-! ## A129638.P5403623963641995924

`A318518(A010687(2*n)*A153361(n+2))`
-/

namespace A129638.P5403623963641995924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A010687 (2 * n) * A153361 (n + 2)).toNat

end

end A129638.P5403623963641995924

namespace A129638

/-- `A318518(A010687(2*n)*A153361(n+2))` -/
def P5403623963641995924.Spec : Prop :=
  ∀ n, P5403623963641995924.a n = A129638 (n + 11)

end A129638

/-!
# A129639: Number of meaningful differential operations of the k-th order on the space R^12.

The programs for A129639, the canonical program `A129639.P5937670592414867916` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129639 has offset 12).

The definition of A129639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129639.P4746236614703525515

`ogf((12+22x-8x^2-14x^3)/(1-4x^2+2x^4))`
-/

namespace A129639.P4746236614703525515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 22, -8, -14] [1, 0, -4, 0, 2] n

end

end A129639.P4746236614703525515

namespace A129639

/-- `ogf((12+22x-8x^2-14x^3)/(1-4x^2+2x^4))` -/
def P4746236614703525515.Spec : Prop :=
  ∀ n, P4746236614703525515.a n = A129639 (n + 12)

end A129639

/-! ## A129639.P5937670592414867916

`2*(a(n-1)-A030436(n))` with `a(0)=12`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129639

/-- `2*(a(n-1)-A030436(n))` -/
def P5937670592414867916.Spec : Prop :=
  ∀ n, P5937670592414867916.a n = A129639 (n + 12)

theorem P5937670592414867916.correct : P5937670592414867916.Spec := by
  intro n
  simp only [A129639, Nat.add_sub_cancel]

end A129639

/-! ## A129639.P11525127320973117111

`2*a(n-1)-A030435(n)` with `a(0)=12`
-/

namespace A129639.P11525127320973117111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  2 * a (n - 1) - A030435 n

end

end A129639.P11525127320973117111

namespace A129639

/-- `2*a(n-1)-A030435(n)` -/
def P11525127320973117111.Spec : Prop :=
  ∀ n, P11525127320973117111.a n = A129639 (n + 12)

end A129639

/-! ## A129639.P6195308008581377562

`A220062(A155212(n+6))`
-/

namespace A129639.P6195308008581377562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A155212 (n + 6)).toNat

end

end A129639.P6195308008581377562

namespace A129639

/-- `A220062(A155212(n+6))` -/
def P6195308008581377562.Spec : Prop :=
  ∀ n, P6195308008581377562.a n = A129639 (n + 12)

end A129639

/-! ## A129639.P2953753577627703348

`A220062(A056000(n+6)+2)`
-/

namespace A129639.P2953753577627703348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A056000 (n + 6) + 2).toNat

end

end A129639.P2953753577627703348

namespace A129639

/-- `A220062(A056000(n+6)+2)` -/
def P2953753577627703348.Spec : Prop :=
  ∀ n, P2953753577627703348.a n = A129639 (n + 12)

end A129639

/-! ## A129639.P6177977313591626965

`A220062(A000124(n+10)-9)`
-/

namespace A129639.P6177977313591626965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A000124 (n + 10) - 9).toNat

end

end A129639.P6177977313591626965

namespace A129639

/-- `A220062(A000124(n+10)-9)` -/
def P6177977313591626965.Spec : Prop :=
  ∀ n, P6177977313591626965.a n = A129639 (n + 12)

end A129639

/-!
# A129640: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+313)^2 = y^2.

The programs for A129640, there is no canonical definition to state claims against.
-/

/-! ## A129640.P7113806159752756013

`A101152(n+1)+A157119(n+1)-A130610(n+1)`
-/

namespace A129640.P7113806159752756013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101152 (n + 1) + (A157119 (n + 1) - A130610 (n + 1))

end

end A129640.P7113806159752756013

/-!
# A129643: a(1)=1. a(n) = a(n-1)*(b(n-1)+1), where {b(k)} is the concatenated list of the positive divisors of the terms of {a(k)}.

The programs for A129643, there is no canonical definition to state claims against.
-/

/-! ## A129643.P2305765111423912168

`(A129644(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A129643.P2305765111423912168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A129644 n + 1) * a (n - 1)

end

end A129643.P2305765111423912168

/-! ## A129643.P5085563111981396813

`∏[A193330(∑[A335491(n+1)])]`
-/

namespace A129643.P5085563111981396813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129643.P5085563111981396813

/-! ## A129643.P8157106417187693306

`∏[A134024(A001631(2*n))+1]`
-/

namespace A129643.P8157106417187693306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A001631 (2 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129643.P8157106417187693306

/-! ## A129643.P14780922918656670089

`∏[A333212(A352261(n+1))+A001221(n+1)]`
-/

namespace A129643.P14780922918656670089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333212 (A352261 (n + 1)).toNat + A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129643.P14780922918656670089

/-! ## A129643.P3699633625326288209

`A003964(A332644(n))`
-/

namespace A129643.P3699633625326288209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A332644 n).toNat

end

end A129643.P3699633625326288209

/-!
# A129644: The concatenated list of the positive divisors of the terms of sequence A129643. Also, a(n) = A129643(n+1)/A129643(n) -1.

The programs for A129644, there is no canonical definition to state claims against.
-/

/-! ## A129644.P8537762218206003425

`A129643(n+2)/A129643(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129644.P8537762218206003425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129643 (n + 2) : ℚ) / (A129643 (n + 1) : ℚ) - 1

end

end A129644.P8537762218206003425

/-! ## A129644.P18341745009612009137

`ratio[A129643(n+1)]-1`
-/

namespace A129644.P18341745009612009137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129643 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1

end

end A129644.P18341745009612009137

/-! ## A129644.P12843743438558996465

`A003964(Δ[A129643(n+1)]/A129643(n+1))`
-/

namespace A129644.P12843743438558996465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A129643 (n + 1) : ℚ))).toNat

end

end A129644.P12843743438558996465

/-! ## A129644.P15520771340587475549

`A028310(Δ[A129643(n+1)]/A129643(n+1))`
-/

namespace A129644.P15520771340587475549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A129643 (n + 1) : ℚ))).toNat

end

end A129644.P15520771340587475549

/-! ## A129644.P4544963090746981594

`A222246(Δ[A129643(n+1)]/A129643(n+1))`
-/

namespace A129644.P4544963090746981594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A129643 (n + 1) : ℚ))).toNat

end

end A129644.P4544963090746981594

/-!
# A129645: a(1) = 1; for n>1, a(n) = a(n-1)*b(n-1) + 1, where {b(k)} is the concatenated list of the ordered positive divisors of the terms of {a(k)}.

The programs for A129645, there is no canonical definition to state claims against.
-/

/-! ## A129645.P8122418957493278685

`a(n-1)*A129646(n)+1` with `a(0)=1`
-/

namespace A129645.P8122418957493278685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A129646 n + 1

end

end A129645.P8122418957493278685

/-! ## A129645.P2309960548744174748

`record[A129646(A079880(n+1))]`
-/

namespace A129645.P2309960548744174748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129646 (A079880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129645.P2309960548744174748

/-! ## A129645.P15597096849272952521

`record[A129646(A131042(n+1))]`
-/

namespace A129645.P15597096849272952521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129646 (A131042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129645.P15597096849272952521

/-! ## A129645.P9935149072241675427

`record[A129646(∑[A100996(n+1)])]`
-/

namespace A129645.P9935149072241675427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100996 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129646 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129645.P9935149072241675427

/-! ## A129645.P12138151453152509567

`record[A129646(A129677(n+1))]`
-/

namespace A129645.P12138151453152509567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129646 (A129677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129645.P12138151453152509567

/-!
# A129646: Concatenated list of the positive divisors of the terms of sequence A129645.

The programs for A129646, there is no canonical definition to state claims against.
-/

/-! ## A129646.P8588430275803353397

`(A129645(n+2)-1)/A129645(n+1)`
-/

namespace A129646.P8588430275803353397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129645 (n + 2) - 1 : ℚ) / (A129645 (n + 1) : ℚ)

end

end A129646.P8588430275803353397

/-! ## A129646.P14579114134333915058

`ceil(ratio[A129645(n+1)])-1`
-/

namespace A129646.P14579114134333915058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A129646.P14579114134333915058

/-! ## A129646.P884883218464390696

`floor(ratio[A129645(n+1)+A000007(n)])`
-/

namespace A129646.P884883218464390696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129645 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A129646.P884883218464390696

/-! ## A129646.P8262275969542114094

`round(ratio[A129645(n+1)+A054977(n)])`
-/

namespace A129646.P8262275969542114094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129645 (n + 1) + A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A129646.P8262275969542114094

/-! ## A129646.P9522486882416967703

`floor(ratio[A129645(n+1)+A019590(n+1)])`
-/

namespace A129646.P9522486882416967703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129645 (n + 1) + A019590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A129646.P9522486882416967703

/-!
# A129647: Largest order of a permutation of n elements with exactly 2 cycles. Also the largest LCM of a 2-partition of n.

The programs for A129647, the canonical program `A129647.P64381371946848490` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129647 has offset 1).

The definition of A129647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129647.P5308493794940734989

`A214297(n+1)+4*char[1]`
-/

namespace A129647.P5308493794940734989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (n + 1) + ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A129647.P5308493794940734989

namespace A129647

/-- `A214297(n+1)+4*char[1]` -/
def P5308493794940734989.Spec : Prop :=
  ∀ n, P5308493794940734989.a n = A129647 (n + 1)

end A129647

/-! ## A129647.P64381371946848490

`A116921(n+1)*A116922(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129647

/-- `A116921(n+1)*A116922(n+1)` -/
def P64381371946848490.Spec : Prop :=
  ∀ n, P64381371946848490.a n = A129647 (n + 1)

theorem P64381371946848490.correct : P64381371946848490.Spec := by
  intro n
  simp only [A129647, Nat.add_sub_cancel]

end A129647

/-! ## A129647.P13393814777218188471

`abs(A214297(n+1)%A000982(n+1))`
-/

namespace A129647.P13393814777218188471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A214297 (n + 1)) (A000982 (n + 1))|

end

end A129647.P13393814777218188471

namespace A129647

/-- `abs(A214297(n+1)%A000982(n+1))` -/
def P13393814777218188471.Spec : Prop :=
  ∀ n, P13393814777218188471.a n = A129647 (n + 1)

end A129647

/-! ## A129647.P18184029501430263188

`A215175(A316571(n+2))`
-/

namespace A129647.P18184029501430263188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215175 (A316571 (n + 2)).toNat

end

end A129647.P18184029501430263188

namespace A129647

/-- `A215175(A316571(n+2))` -/
def P18184029501430263188.Spec : Prop :=
  ∀ n, P18184029501430263188.a n = A129647 (n + 1)

end A129647

/-! ## A129647.P8620112533104255245

`A214297(3*(n+1))%(n+1)²`
-/

namespace A129647.P8620112533104255245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214297 (3 * (n + 1))) ((n + 1) ^ 2 : ℤ)

end

end A129647.P8620112533104255245

namespace A129647

/-- `A214297(3*(n+1))%(n+1)²` -/
def P8620112533104255245.Spec : Prop :=
  ∀ n, P8620112533104255245.a n = A129647 (n + 1)

end A129647

/-! ## A129647.P5000852059127414485

`(A214297(n+1)+A126098(n+2))%A126098(n+2)`
-/

namespace A129647.P5000852059127414485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214297 (n + 1) + A126098 (n + 2)) (A126098 (n + 2))

end

end A129647.P5000852059127414485

namespace A129647

/-- `(A214297(n+1)+A126098(n+2))%A126098(n+2)` -/
def P5000852059127414485.Spec : Prop :=
  ∀ n, P5000852059127414485.a n = A129647 (n + 1)

end A129647

/-! ## A129647.P15396043784747045281

`gcd(A214297(n+1), A309953(∑[n]))`
-/

namespace A129647.P15396043784747045281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214297 (n + 1)) (A309953 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A129647.P15396043784747045281

namespace A129647

/-- `gcd(A214297(n+1), A309953(∑[n]))` -/
def P15396043784747045281.Spec : Prop :=
  ∀ n, (P15396043784747045281.a n : ℤ) = A129647 (n + 1)

end A129647

/-!
# A129649: Largest order of a permutation of n elements with exactly 4 cycles. Also the largest LCM of a 4-partition of n.

The programs for A129649, there is no canonical definition to state claims against.
-/

/-! ## A129649.P3759260857897863255

`A129650(A000005(2^n)+1)`
-/

namespace A129649.P3759260857897863255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129650 (A000005 (2 ^ n) + 1).toNat

end

end A129649.P3759260857897863255

/-! ## A129649.P18284097569622493

`A129650(n+2)%A102982(n+1)`
-/

namespace A129649.P18284097569622493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129650 (n + 2)) (A102982 (n + 1))

end

end A129649.P18284097569622493

/-! ## A129649.P12392580868786678986

`A151933(A093101(n))+A129650(n+2)`
-/

namespace A129649.P12392580868786678986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A093101 n).toNat + A129650 (n + 2)

end

end A129649.P12392580868786678986

/-! ## A129649.P13936830530197273047

`A118759(A129650(n+2))`
-/

namespace A129649.P13936830530197273047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A129650 (n + 2)).toNat

end

end A129649.P13936830530197273047

/-! ## A129649.P7174666306668787152

`A097448(A129650(n+2))`
-/

namespace A129649.P7174666306668787152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A129650 (n + 2)).toNat

end

end A129649.P7174666306668787152

/-!
# A129650: Largest order of a permutation of n elements with exactly 5 cycles. Also the largest LCM of a 5-partition of n.

The programs for A129650, there is no canonical definition to state claims against.
-/

/-! ## A129650.P1797872580225027857

`A129649(floor(sqrt(A217990(n+1))))`
-/

namespace A129650.P1797872580225027857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129649 (Int.sqrt (A217990 (n + 1))).toNat

end

end A129650.P1797872580225027857

/-! ## A129650.P17485915776225582425

`A129649(round(sqrt(A217990(n+1))))`
-/

namespace A129650.P17485915776225582425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129649 (SequenceMachineLib.roundAway (Real.sqrt (A217990 (n + 1) : ℝ))).toNat

end

end A129650.P17485915776225582425

/-! ## A129650.P12112942769676825199

`A129649(or(n, A244172(n+9)))`
-/

namespace A129650.P12112942769676825199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129649 (Int.lor (n : ℤ) (A244172 (n + 9))).toNat

end

end A129650.P12112942769676825199

/-! ## A129650.P10203323045111083448

`A129649(C(A129649(n+1), n²)+n)`
-/

namespace A129650.P10203323045111083448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129649 (Nat.choose (A129649 (n + 1)).toNat (n ^ 2) + n)

end

end A129650.P10203323045111083448

/-! ## A129650.P1102976588981652793

`A129649(A051904(or(1, 2^n-1)+1))`
-/

namespace A129650.P1102976588981652793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129649 (A051904 (Int.lor 1 ((2 ^ n : ℤ) - 1) + 1).toNat).toNat

end

end A129650.P1102976588981652793

/-!
# A129651: a(n) is the smallest position k at which b_n(i)<b_n(i+1) for all i>=k, where b_n(m) is the largest order of a permutation of m elements with exactly n cycles.

The programs for A129651, there is no canonical definition to state claims against.
-/

/-! ## A129651.P12884843570920212088

`∑[∑[A276669(A123776(n+1))]]`
-/

namespace A129651.P12884843570920212088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276669 (A123776 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129651.P12884843570920212088

/-!
# A129652: Exponential Riordan array [e^(x/(1-x)),x].

The programs for A129652, the canonical program `A129652.P1277558392997245816` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129652 has offset 0).

The definition of A129652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129652.P1277558392997245816

`C(row(n), col(n))*A000262(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129652

/-- `C(row(n), col(n))*A000262(row(n)-col(n))` -/
def P1277558392997245816.Spec : Prop :=
  ∀ n, P1277558392997245816.a n = A129652 n

theorem P1277558392997245816.correct : P1277558392997245816.Spec := by
  intro n
  simp only [A129652]

end A129652

/-! ## A129652.P3563795070060040678

`A206703(n)/A233543(n)`
-/

namespace A129652.P3563795070060040678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 n : ℚ) / (A233543 n : ℚ)

end

end A129652.P3563795070060040678

namespace A129652

/-- `A206703(n)/A233543(n)` -/
def P3563795070060040678.Spec : Prop :=
  ∀ n, P3563795070060040678.a n = (A129652 n : ℚ)

end A129652

/-! ## A129652.P8503837777717594089

`A206703(n)/A002262(n)!`
-/

namespace A129652.P8503837777717594089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A129652.P8503837777717594089

namespace A129652

/-- `A206703(n)/A002262(n)!` -/
def P8503837777717594089.Spec : Prop :=
  ∀ n, P8503837777717594089.a n = (A129652 n : ℚ)

end A129652

/-! ## A129652.P7481055878930789619

`A206703(n)/A144328(n+1)!`
-/

namespace A129652.P7481055878930789619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A129652.P7481055878930789619

namespace A129652

/-- `A206703(n)/A144328(n+1)!` -/
def P7481055878930789619.Spec : Prop :=
  ∀ n, P7481055878930789619.a n = (A129652 n : ℚ)

end A129652

/-! ## A129652.P5081916602674368372

`A007318(n)*A000262(A025581(n))`
-/

namespace A129652.P5081916602674368372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000262 (A025581 n).toNat

end

end A129652.P5081916602674368372

namespace A129652

/-- `A007318(n)*A000262(A025581(n))` -/
def P5081916602674368372.Spec : Prop :=
  ∀ n, P5081916602674368372.a n = A129652 n

end A129652

/-! ## A129652.P11581999218896116091

`A206703(n)/A021009(A112367(n))`
-/

namespace A129652.P11581999218896116091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 n : ℚ) / (A021009 (A112367 n).toNat : ℚ)

end

end A129652.P11581999218896116091

namespace A129652

/-- `A206703(n)/A021009(A112367(n))` -/
def P11581999218896116091.Spec : Prop :=
  ∀ n, P11581999218896116091.a n = (A129652 n : ℚ)

end A129652

/-! ## A129652.P5372937530896252433

`A206703(n)/A119502(A061579(n))`
-/

namespace A129652.P5372937530896252433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 n : ℚ) / (A119502 (A061579 n).toNat : ℚ)

end

end A129652.P5372937530896252433

namespace A129652

/-- `A206703(n)/A119502(A061579(n))` -/
def P5372937530896252433.Spec : Prop :=
  ∀ n, P5372937530896252433.a n = (A129652 n : ℚ)

end A129652

/-! ## A129652.P9333429510506865769

`A206703(n)/A130675(A059268(n))`
-/

namespace A129652.P9333429510506865769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206703 n : ℚ) / (A130675 (A059268 n).toNat : ℚ)

end

end A129652.P9333429510506865769

namespace A129652

/-- `A206703(n)/A130675(A059268(n))` -/
def P9333429510506865769.Spec : Prop :=
  ∀ n, P9333429510506865769.a n = (A129652 n : ℚ)

end A129652

/-!
# A129653: Antidiagonal sums of number triangle A129652.

The programs for A129653, there is no canonical definition to state claims against.
-/

/-! ## A129653.P997793170992611343

`A195177(A038720(n+1))`
-/

namespace A129653.P997793170992611343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A038720 (n + 1)).toNat

end

end A129653.P997793170992611343

/-! ## A129653.P2257453613762877296

`A247833(2*A088715(n))`
-/

namespace A129653.P2257453613762877296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (2 * A088715 n).toNat

end

end A129653.P2257453613762877296

/-!
# A129654: Number of different ways to represent n as general polygonal number P(m,r) = 1/2*r*((m-2)*r-(m-4)) = n>1, for m,r>1.

The programs for A129654, there is no canonical definition to state claims against.
-/

/-! ## A129654.P10273115918774289216

`A177025(abs(1-n)+3)+A057427(n)`
-/

namespace A129654.P10273115918774289216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (|1 - (n : ℤ)| + 3).toNat + A057427 n

end

end A129654.P10273115918774289216

/-! ## A129654.P9336351899757755905

`A177025(abs(1-n)+3)+1-A000007(n)`
-/

namespace A129654.P9336351899757755905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (|1 - (n : ℤ)| + 3).toNat + 1 - A000007 n

end

end A129654.P9336351899757755905

/-! ## A129654.P16112850448312606070

`A177025(abs(1-n)+3)+and(1, A030101(n))`
-/

namespace A129654.P16112850448312606070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (|1 - (n : ℤ)| + 3).toNat + Int.land 1 (A030101 n)

end

end A129654.P16112850448312606070

/-! ## A129654.P14696212051704289834

`A333822(n+2)+1-A333836(n+2)`
-/

namespace A129654.P14696212051704289834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333822 (n + 2) + (1 - A333836 (n + 2))

end

end A129654.P14696212051704289834

/-! ## A129654.P1938833246370132522

`A239550(∑[n+3]+2)`
-/

namespace A129654.P1938833246370132522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A129654.P1938833246370132522

/-! ## A129654.P12353023218757638774

`dr(A239550(Δ[A005286(n)]))`
-/

namespace A129654.P12353023218757638774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A239550 (f1 (n + 1) - f1 n).toNat)

end

end A129654.P12353023218757638774

/-! ## A129654.P10879825004981058595

`dr(A239550(Δ[A005586(n)]))`
-/

namespace A129654.P10879825004981058595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A239550 (f1 (n + 1) - f1 n).toNat)

end

end A129654.P10879825004981058595

/-! ## A129654.P6495142977407918035

`dr(A239550(A000096(n+2)))`
-/

namespace A129654.P6495142977407918035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A239550 (A000096 (n + 2)).toNat)

end

end A129654.P6495142977407918035

/-! ## A129654.P10412935633807295875

`dr(A239550(A055999(n)+5))`
-/

namespace A129654.P10412935633807295875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A239550 (A055999 n + 5).toNat)

end

end A129654.P10412935633807295875

/-! ## A129654.P4302144077571643349

`A239550(A000096(n+2))%A000040(n+1)`
-/

namespace A129654.P4302144077571643349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (A000096 (n + 2)).toNat) (A000040 (n + 1))

end

end A129654.P4302144077571643349

/-! ## A129654.P11301986106386852300

`A000045(((-1)^n)²)*A239550(A000096(n+2))`
-/

namespace A129654.P11301986106386852300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A239550 (A000096 (n + 2)).toNat

end

end A129654.P11301986106386852300

/-! ## A129654.P8049592782027869967

`A000010(ceil(1/(n+1)))*A239550(A000096(n+2))`
-/

namespace A129654.P8049592782027869967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A239550 (A000096 (n + 2)).toNat

end

end A129654.P8049592782027869967

/-!
# A129655: Numbers that set a new record for number of Fibonacci divisors.

The programs for A129655, there is no canonical definition to state claims against.
-/

/-! ## A129655.P16310604656440367177

`∏[A193461(A188649(n+1))]`
-/

namespace A129655.P16310604656440367177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193461 (A188649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129655.P16310604656440367177

/-! ## A129655.P10272695616941906114

`∏[lt[A182106(n), A182119(n)]]`
-/

namespace A129655.P10272695616941906114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182106 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182119 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129655.P10272695616941906114

/-! ## A129655.P6178046411287115484

`∏[∑[A000005(A147284(n+2))]]`
-/

namespace A129655.P6178046411287115484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A147284 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129655.P6178046411287115484

/-! ## A129655.P8077899101265954685

`∏[lt[A306017(n), A001844(n)]]`
-/

namespace A129655.P8077899101265954685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306017 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129655.P8077899101265954685

/-! ## A129655.P11072873152062912339

`∏[lt[A351977(n), A000034(n)]]`
-/

namespace A129655.P11072873152062912339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351977 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129655.P11072873152062912339

/-!
# A129656: Infinitary abundant numbers: integers for which A126168 (n)>n, or equivalently for which A049417 (n)>2n.

The programs for A129656, there is no canonical definition to state claims against.
-/

/-! ## A129656.P15444078747133650963

`lt[n, A126168(A028310(n))]`
-/

namespace A129656.P15444078747133650963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129656.P15444078747133650963

/-! ## A129656.P2461391191190066057

`A020725(lt[n+1, A126168(n+1)])`
-/

namespace A129656.P2461391191190066057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129656.P2461391191190066057

/-! ## A129656.P15969568777240720119

`A061767(lt[n+1, A126168(n+1)])`
-/

namespace A129656.P15969568777240720119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129656.P15969568777240720119

/-! ## A129656.P17683727025482340276

`A153152(lt[n+1, A126168(n+1)])`
-/

namespace A129656.P17683727025482340276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129656.P17683727025482340276

/-! ## A129656.P15957538733080186343

`A020725(lt[2*(n+1), A049417(n+1)])`
-/

namespace A129656.P15957538733080186343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129656.P15957538733080186343

/-! ## A129656.P5960291146591938457

`A153152(lt[2*(n+1), A049417(n+1)])`
-/

namespace A129656.P5960291146591938457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129656.P5960291146591938457

/-! ## A129656.P4640530660549644394

`lt[A005408(n), A049417(A028310(n))]`
-/

namespace A129656.P4640530660549644394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129656.P4640530660549644394

/-! ## A129656.P2105482877042076145

`record[A292982(n+1)%A126168(A292982(n+1))]`
-/

namespace A129656.P2105482877042076145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292982 (n + 1)) (A126168 (A292982 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129656.P2105482877042076145

/-! ## A129656.P10862196888248347568

`lt[A028310(2*n), A049417(A028310(n))]`
-/

namespace A129656.P10862196888248347568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129656.P10862196888248347568

/-! ## A129656.P15198057003817070497

`lt[n+1, A126168(A233583(n+1))]`
-/

namespace A129656.P15198057003817070497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129656.P15198057003817070497

/-!
# A129657: Infinitary deficient numbers: integers for which A126168(n) < n, or equivalently for which A049417(n) < 2n.

The programs for A129657, there is no canonical definition to state claims against.
-/

/-! ## A129657.P7978204387454213747

`lt[A126168(round(sqrt(n²+1))), n]`
-/

namespace A129657.P7978204387454213747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129657.P7978204387454213747

/-! ## A129657.P13329555627557627356

`lt[A126168(n+1), n+1]+1`
-/

namespace A129657.P13329555627557627356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129657.P13329555627557627356

/-! ## A129657.P4566228107894857042

`lt[A049417(round(sqrt(n²+1))), 2*n]`
-/

namespace A129657.P4566228107894857042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129657.P4566228107894857042

/-! ## A129657.P11341719865501272037

`lt[A049417(n+1), 2*(n+1)]+1`
-/

namespace A129657.P11341719865501272037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A129657.P11341719865501272037

/-! ## A129657.P1595434088721797603

`lt[A049417(n+1)/(A028310(n)+1), 2]+1`
-/

namespace A129657.P1595434088721797603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049417 (n + 1) : ℚ) / (A028310 n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A129657.P1595434088721797603

/-! ## A129657.P2936806577698308942

`lt[A049417(A028310(n))+1, A005408(n)]`
-/

namespace A129657.P2936806577698308942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129657.P2936806577698308942

/-! ## A129657.P13547362274212010805

`eq[char[A335197(n+1)], A151933(n)]`
-/

namespace A129657.P13547362274212010805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A129657.P13547362274212010805

/-! ## A129657.P12039017231437642522

`lt[A300979(A226602(n)), A118362(n+1)]`
-/

namespace A129657.P12039017231437642522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300979 (A226602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129657.P12039017231437642522

/-!
# A129658: Numerators of the convergents of the continued fraction for L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129658, there is no canonical definition to state claims against.
-/

/-! ## A129658.P16302915005934284852

`A157681(n+1)%record[A271315(n)]`
-/

namespace A129658.P16302915005934284852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157681 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A129658.P16302915005934284852

/-! ## A129658.P6790412259039945413

`A042580(n)%A042581(A070938(n+1))`
-/

namespace A129658.P6790412259039945413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042580 n) (A042581 (A070938 (n + 1)).toNat)

end

end A129658.P6790412259039945413

/-!
# A129659: Denominators of the convergents of the continued fraction for L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129659, there is no canonical definition to state claims against.
-/

/-! ## A129659.P13341535141999389284

`(2-(4/2-a(n-1)-a(n-2)))^A342671(A362849(n))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A129659.P13341535141999389284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))) ^ (A342671 (A362849 n).toNat : ℤ)

end

end A129659.P13341535141999389284

/-! ## A129659.P4654269050039941547

`A351870(A351870(a(n-2))+a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=8`
-/

namespace A129659.P4654269050039941547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 8] fun n a =>
  A351870 (A351870 (a (n - 2)).toNat + a (n - 1)).toNat

end

end A129659.P4654269050039941547

/-! ## A129659.P13607493666658159491

`(2-(4/2-a(n-1)-a(n-2)))^A136394(A248112(n+1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A129659.P13607493666658159491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))) ^ (A136394 (A248112 (n + 1)).toNat : ℤ)

end

end A129659.P13607493666658159491

/-!
# A129661: Denominators of the Engel partial sums for L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129661, there is no canonical definition to state claims against.
-/

/-! ## A129661.P3458810091142164403

`∏[A004736(∑[A135862(n)])]`
-/

namespace A129661.P3458810091142164403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129661.P3458810091142164403

/-! ## A129661.P9443816024777005589

`∏[A018577(Δ[A057335(n)])]`
-/

namespace A129661.P9443816024777005589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129661.P9443816024777005589

/-!
# A129662: Numerators of the Pierce partial sums for L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129662, there is no canonical definition to state claims against.
-/

/-! ## A129662.P5776306692939534245

`A135073((2*n)^n)%((2*n)^n)`
-/

namespace A129662.P5776306692939534245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135073 ((2 * n) ^ n)) ((2 * n) ^ n : ℤ)

end

end A129662.P5776306692939534245

/-!
# A129663: Denominators of the Pierce partial sums for L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129663, there is no canonical definition to state claims against.
-/

/-! ## A129663.P8844498454287310335

`A319385(A120463(n+1))`
-/

namespace A129663.P8844498454287310335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319385 (A120463 (n + 1)).toNat

end

end A129663.P8844498454287310335

/-! ## A129663.P18308821525653456872

`A319385(A164415(n)-val(n+1, 2))`
-/

namespace A129663.P18308821525653456872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319385 (A164415 n - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A129663.P18308821525653456872

/-!
# A129665: Denominators of the greedy Egyptian partial sums for L(3, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A129665, there is no canonical definition to state claims against.
-/

/-! ## A129665.P4870939545578577299

`lcm(a(n-1), A129411(n))` with `a(0)=1`
-/

namespace A129665.P4870939545578577299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A129411 n)

end

end A129665.P4870939545578577299

/-!
# A129667: Dirichlet inverse of the Abelian group count (A000688).

The programs for A129667, the canonical program `A129667.P9864119466472355018` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129667 has offset 1).

The definition of A129667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129667.P9864119466472355018

`∏{e}[n+1, A010815(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129667

/-- `∏{e}[n+1, A010815(#)]` -/
def P9864119466472355018.Spec : Prop :=
  ∀ n, P9864119466472355018.a n = A129667 (n + 1)

theorem P9864119466472355018.correct : P9864119466472355018.Spec := by
  intro n
  simp only [A129667, Nat.add_sub_cancel]

end A129667

/-! ## A129667.P3176402625665123991

`∏{e}[n+1, A229894(#)]`
-/

namespace A129667.P3176402625665123991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A229894 (Nat.factorization (f1 n) p)

end

end A129667.P3176402625665123991

namespace A129667

/-- `∏{e}[n+1, A229894(#)]` -/
def P3176402625665123991.Spec : Prop :=
  ∀ n, P3176402625665123991.a n = A129667 (n + 1)

end A129667

/-! ## A129667.P7364292203383353753

`∏{e}[n+1, A030199(#+1)]`
-/

namespace A129667.P7364292203383353753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A030199 (Nat.factorization (f1 n) p + 1)

end

end A129667.P7364292203383353753

namespace A129667

/-- `∏{e}[n+1, A030199(#+1)]` -/
def P7364292203383353753.Spec : Prop :=
  ∀ n, P7364292203383353753.a n = A129667 (n + 1)

end A129667

/-! ## A129667.P8871216707728731156

`∑{d}[n+1, A114592(#)*A322452((n+1)/#)]`
-/

namespace A129667.P8871216707728731156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A129667.P8871216707728731156

namespace A129667

/-- `∑{d}[n+1, A114592(#)*A322452((n+1)/#)]` -/
def P8871216707728731156.Spec : Prop :=
  ∀ n, P8871216707728731156.a n = A129667 (n + 1)

end A129667

/-! ## A129667.P4745427969014854051

`A359578(A332730(n+1)²*A332730(n+1))`
-/

namespace A129667.P4745427969014854051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359578 (A332730 (n + 1) ^ 2 * A332730 (n + 1)).toNat

end

end A129667.P4745427969014854051

namespace A129667

/-- `A359578(A332730(n+1)²*A332730(n+1))` -/
def P4745427969014854051.Spec : Prop :=
  ∀ n, P4745427969014854051.a n = A129667 (n + 1)

end A129667

/-!
# A129668: Number of different ways to divide an n X n X n cube into subcubes, considering only the list of parts.

The programs for A129668, there is no canonical definition to state claims against.
-/

/-! ## A129668.P6808768519359491926

`A228202(C(n+3, 3))`
-/

namespace A129668.P6808768519359491926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228202 (Nat.choose (n + 3) 3)

end

end A129668.P6808768519359491926

/-! ## A129668.P18061973630744777634

`A228202(∑[∑[n+1]])`
-/

namespace A129668.P18061973630744777634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129668.P18061973630744777634

/-!
# A129670: Right truncatable primes in base 4 (written in decimal form).

The programs for A129670, there is no canonical definition to state claims against.
-/

/-! ## A129670.P3312336426291680377

`ogf((2+3x+x^2-2x^3)/(1-5x^2+4x^4))`
-/

namespace A129670.P3312336426291680377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1, -2] [1, 0, -5, 0, 4] n

end

end A129670.P3312336426291680377

/-! ## A129670.P5687139892199881601

`gcd(3, n%2)+4*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A129670.P5687139892199881601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.gcd 3 (n % 2) + 4 * a (n - 2)

end

end A129670.P5687139892199881601

/-! ## A129670.P1402021780721129529

`A118753(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A129670.P1402021780721129529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A118753 (a (n - 2)).toNat

end

end A129670.P1402021780721129529

/-!
# A129672: Right truncatable primes in base 6 (written in decimal form).

The programs for A129672, there is no canonical definition to state claims against.
-/

/-! ## A129672.P4740915337431429473

`A028901(A024766(n+1))`
-/

namespace A129672.P4740915337431429473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A024766 (n + 1)).toNat

end

end A129672.P4740915337431429473

/-! ## A129672.P16338960254612294882

`p?[∑[A027960(A201635(n))]]`
-/

namespace A129672.P16338960254612294882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A201635 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129672.P16338960254612294882

/-! ## A129672.P4371605618479537022

`p?[∑[A000034(A183108(n+1))]]`
-/

namespace A129672.P4371605618479537022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A183108 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129672.P4371605618479537022

/-! ## A129672.P3348751756749281082

`p?[∑[A205565(A303469(n+1))]]`
-/

namespace A129672.P3348751756749281082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 (A303469 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129672.P3348751756749281082

/-! ## A129672.P4811485350172405414

`p?[∑[A006530(A332205(n)!)]]`
-/

namespace A129672.P4811485350172405414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A332205 n).toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129672.P4811485350172405414

/-!
# A129673: Right truncatable primes in base 7 (written in decimal form).

The programs for A129673, there is no canonical definition to state claims against.
-/

/-! ## A129673.P5208525055992568820

`p?[∑[A264981(A064174(n+1))]]`
-/

namespace A129673.P5208525055992568820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A064174 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129673.P5208525055992568820

/-! ## A129673.P548636256053719948

`record[p?[A112979(A188399(n+1))]]`
-/

namespace A129673.P548636256053719948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112979 (A188399 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129673.P548636256053719948

/-! ## A129673.P8465619658154525066

`p?[xor(A215260(n), A283784(n+1))]`
-/

namespace A129673.P8465619658154525066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A215260 n) (A283784 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129673.P8465619658154525066

/-! ## A129673.P11902540053222236985

`A321910(lt[A247905(n), A247906(n+2)]+1)`
-/

namespace A129673.P11902540053222236985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247906 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321910 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A129673.P11902540053222236985

/-!
# A129674: Permutation sequence generated by the "evil numbers" (A001969), by swapping n-th natural number by the (n-g)-th sequentially (iteratively), where g=min(evil(n+1)-evil(n)-1,n-1).

The programs for A129674, there is no canonical definition to state claims against.
-/

/-! ## A129674.P13133857041904692185

`A129678(n+1)+1+n`
-/

namespace A129674.P13133857041904692185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129678 (n + 1) + 1 + (n : ℤ)

end

end A129674.P13133857041904692185

/-! ## A129674.P14117597177906300572

`A129678(A077168(n))+A077168(n)`
-/

namespace A129674.P14117597177906300572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129678 (A077168 n).toNat + A077168 n

end

end A129674.P14117597177906300572

/-!
# A129675: Inverse permutation to A129674.

The programs for A129675, there is no canonical definition to state claims against.
-/

/-! ## A129675.P424892171697780660

`A129679(n+1)+1+n`
-/

namespace A129675.P424892171697780660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129679 (n + 1) + 1 + (n : ℤ)

end

end A129675.P424892171697780660

/-! ## A129675.P762901532996008426

`A129679(A077168(n))+n+1`
-/

namespace A129675.P762901532996008426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129679 (A077168 n).toNat + (n + 1 : ℤ)

end

end A129675.P762901532996008426

/-!
# A129676: Permutation sequence generated by the "odious numbers" (A000069), by swapping n-th natural number by the (n-g)-th sequentially, where g=min(odious(n+1)-odious(n)-1,n-1).

The programs for A129676, there is no canonical definition to state claims against.
-/

/-! ## A129676.P15295636708673076579

`A129680(n+1)+1+n`
-/

namespace A129676.P15295636708673076579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129680 (n + 1) + 1 + (n : ℤ)

end

end A129676.P15295636708673076579

/-! ## A129676.P3076825949837432024

`A129678(A062383(2*(n+1))+n)+n+1`
-/

namespace A129676.P3076825949837432024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129678 (A062383 (2 * (n + 1)) + (n : ℤ)).toNat + (n + 1 : ℤ)

end

end A129676.P3076825949837432024

/-! ## A129676.P6159275448933148805

`A129680(A077168(n))+n+1`
-/

namespace A129676.P6159275448933148805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129680 (A077168 n).toNat + (n + 1 : ℤ)

end

end A129676.P6159275448933148805

/-! ## A129676.P17471131155039404530

`A129678(A252078(n+5))+n+1`
-/

namespace A129676.P17471131155039404530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129678 (A252078 (n + 5)).toNat + (n + 1 : ℤ)

end

end A129676.P17471131155039404530

/-!
# A129677: Inverse permutation to A129676.

The programs for A129677, there is no canonical definition to state claims against.
-/

/-! ## A129677.P10183524517646518538

`A129681(n+1)+1+n`
-/

namespace A129677.P10183524517646518538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129681 (n + 1) + 1 + (n : ℤ)

end

end A129677.P10183524517646518538

/-! ## A129677.P15898527241163956408

`A129681(A077168(n))+n+1`
-/

namespace A129677.P15898527241163956408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129681 (A077168 n).toNat + (n + 1 : ℤ)

end

end A129677.P15898527241163956408

/-!
# A129678: Distance sequence of A129674: A129674(n)-n.

The programs for A129678, there is no canonical definition to state claims against.
-/

/-! ## A129678.P15756505419087902877

`A129674(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129678.P15756505419087902877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129674 (n + 1) - (n + 1 : ℤ)

end

end A129678.P15756505419087902877

/-! ## A129678.P6105698564393317894

`A023443(A129674(n+1))-n`
-/

namespace A129678.P6105698564393317894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129674 (n + 1)).toNat - (n : ℤ)

end

end A129678.P6105698564393317894

/-! ## A129678.P12093660986020818788

`A001478(n+1)+A129674(n+1)`
-/

namespace A129678.P12093660986020818788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A129674 (n + 1)

end

end A129678.P12093660986020818788

/-! ## A129678.P654981684380955668

`A285779(comp[xor(n, 2*n)])+A129674(n+1)`
-/

namespace A129678.P654981684380955668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A129674 (n + 1)

end

end A129678.P654981684380955668

/-! ## A129678.P14536262636727857361

`A285779(char[xor(n, 2*n)]+2*n)+A129674(n+1)`
-/

namespace A129678.P14536262636727857361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) + A129674 (n + 1)

end

end A129678.P14536262636727857361

/-! ## A129678.P2948070704895592403

`A285779(A000069(n+1))+A129674(n+1)`
-/

namespace A129678.P2948070704895592403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (A000069 (n + 1)).toNat + A129674 (n + 1)

end

end A129678.P2948070704895592403

/-! ## A129678.P4609375425557214310

`A285779(record[A268669(n+1)])+A129674(n+1)`
-/

namespace A129678.P4609375425557214310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A129674 (n + 1)

end

end A129678.P4609375425557214310

/-! ## A129678.P12700216583902057987

`-A129679(A129674(n+1))`
-/

namespace A129678.P12700216583902057987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129679 (A129674 (n + 1)).toNat

end

end A129678.P12700216583902057987

/-! ## A129678.P4778215753562466376

`A057428(n+1)*A129679(A129674(n+1))`
-/

namespace A129678.P4778215753562466376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A129679 (A129674 (n + 1)).toNat

end

end A129678.P4778215753562466376

/-! ## A129678.P7941453991524440409

`A129679(A129674(n+1))/A057428(n+2)`
-/

namespace A129678.P7941453991524440409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129679 (A129674 (n + 1)).toNat : ℚ) / (A057428 (n + 2) : ℚ)

end

end A129678.P7941453991524440409

/-!
# A129679: Distance sequence of A129675: A129675(n)-n.

The programs for A129679, there is no canonical definition to state claims against.
-/

/-! ## A129679.P66128825002395713

`A129675(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129679.P66128825002395713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129675 (n + 1) - (n + 1 : ℤ)

end

end A129679.P66128825002395713

/-! ## A129679.P15184026264829400703

`-A129678(A129675(n+1))`
-/

namespace A129679.P15184026264829400703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129678 (A129675 (n + 1)).toNat

end

end A129679.P15184026264829400703

/-! ## A129679.P2304587268387554663

`A129675(n+1)+A024000(n+3)+1`
-/

namespace A129679.P2304587268387554663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129675 (n + 1) + A024000 (n + 3) + 1

end

end A129679.P2304587268387554663

/-! ## A129679.P4837573500220244190

`A285779(comp[xor(n, 2*n)])+A129675(n+1)`
-/

namespace A129679.P4837573500220244190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A129675 (n + 1)

end

end A129679.P4837573500220244190

/-! ## A129679.P3750133281444808425

`A285779(char[xor(n, 2*n)]+2*n)+A129675(n+1)`
-/

namespace A129679.P3750133281444808425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) + A129675 (n + 1)

end

end A129679.P3750133281444808425

/-! ## A129679.P9032480508186942327

`A028310(A129675(n+1))+A001478(n+1)`
-/

namespace A129679.P9032480508186942327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A129675 (n + 1)).toNat + A001478 (n + 1)

end

end A129679.P9032480508186942327

/-! ## A129679.P17280362813469524720

`A285779(A000069(n+1))+A129675(n+1)`
-/

namespace A129679.P17280362813469524720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (A000069 (n + 1)).toNat + A129675 (n + 1)

end

end A129679.P17280362813469524720

/-! ## A129679.P6506140488096380391

`A057428(n+1)*A129678(A129675(n+1))`
-/

namespace A129679.P6506140488096380391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A129678 (A129675 (n + 1)).toNat

end

end A129679.P6506140488096380391

/-! ## A129679.P7718631134537134948

`A008683(A001097(n+1))*A129678(A129675(n+1))`
-/

namespace A129679.P7718631134537134948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat * A129678 (A129675 (n + 1)).toNat

end

end A129679.P7718631134537134948

/-! ## A129679.P2203004670984478189

`A008683(A001359(n+1))*A129678(A129675(n+1))`
-/

namespace A129679.P2203004670984478189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat * A129678 (A129675 (n + 1)).toNat

end

end A129679.P2203004670984478189

/-!
# A129680: Distance sequence of A129676: A129676(n)-n.

The programs for A129680, there is no canonical definition to state claims against.
-/

/-! ## A129680.P6637893880342906842

`A129676(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129680.P6637893880342906842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129676 (n + 1) - (n + 1 : ℤ)

end

end A129680.P6637893880342906842

/-! ## A129680.P2952738758476541157

`A023443(A129676(n+1))-n`
-/

namespace A129680.P2952738758476541157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129676 (n + 1)).toNat - (n : ℤ)

end

end A129680.P2952738758476541157

/-! ## A129680.P6248332492242297331

`A028310(A129676(n+1))+A001478(n+1)`
-/

namespace A129680.P6248332492242297331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A129676 (n + 1)).toNat + A001478 (n + 1)

end

end A129680.P6248332492242297331

/-! ## A129680.P14343863073749124046

`A285779(comp[xor(n, 2*n)])+A129676(n+1)`
-/

namespace A129680.P14343863073749124046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A129676 (n + 1)

end

end A129680.P14343863073749124046

/-! ## A129680.P7045454912401267819

`A285779(char[xor(n, 2*n)]+2*n)+A129676(n+1)`
-/

namespace A129680.P7045454912401267819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) + A129676 (n + 1)

end

end A129680.P7045454912401267819

/-! ## A129680.P10398344517111114377

`A285779(A000069(n+1))+A129676(n+1)`
-/

namespace A129680.P10398344517111114377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (A000069 (n + 1)).toNat + A129676 (n + 1)

end

end A129680.P10398344517111114377

/-! ## A129680.P17635647852855201331

`A285779(record[A268669(n+1)])+A129676(n+1)`
-/

namespace A129680.P17635647852855201331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A129676 (n + 1)

end

end A129680.P17635647852855201331

/-! ## A129680.P18035375056728483961

`-A129681(A129676(n+1))`
-/

namespace A129680.P18035375056728483961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129681 (A129676 (n + 1)).toNat

end

end A129680.P18035375056728483961

/-! ## A129680.P10410586290835341355

`A008683(A001097(n+1))*A129681(A129676(n+1))`
-/

namespace A129680.P10410586290835341355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat * A129681 (A129676 (n + 1)).toNat

end

end A129680.P10410586290835341355

/-! ## A129680.P14149386284912915397

`A008683(A001359(n+1))*A129681(A129676(n+1))`
-/

namespace A129680.P14149386284912915397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat * A129681 (A129676 (n + 1)).toNat

end

end A129680.P14149386284912915397

/-!
# A129681: Distance sequence of A129677: A129677(n)-n.

The programs for A129681, there is no canonical definition to state claims against.
-/

/-! ## A129681.P15403514382701120527

`A129677(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129681.P15403514382701120527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129677 (n + 1) - (n + 1 : ℤ)

end

end A129681.P15403514382701120527

/-! ## A129681.P487140310186596677

`-A129680(A129677(n+1))`
-/

namespace A129681.P487140310186596677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129680 (A129677 (n + 1)).toNat

end

end A129681.P487140310186596677

/-! ## A129681.P15675573992744447897

`A001478(n+1)+A129677(n+1)`
-/

namespace A129681.P15675573992744447897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A129677 (n + 1)

end

end A129681.P15675573992744447897

/-! ## A129681.P14935247043548756033

`A285779(comp[xor(n, 2*n)])+A129677(n+1)`
-/

namespace A129681.P14935247043548756033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A129677 (n + 1)

end

end A129681.P14935247043548756033

/-! ## A129681.P18049464127308627716

`A285779(char[xor(n, 2*n)]+2*n)+A129677(n+1)`
-/

namespace A129681.P18049464127308627716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) + A129677 (n + 1)

end

end A129681.P18049464127308627716

/-! ## A129681.P9794461228249022875

`A285779(A000069(n+1))+A129677(n+1)`
-/

namespace A129681.P9794461228249022875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (A000069 (n + 1)).toNat + A129677 (n + 1)

end

end A129681.P9794461228249022875

/-! ## A129681.P14494063861303011851

`A129680(A129677(n+1))/A033999(Δ[n²])`
-/

namespace A129681.P14494063861303011851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129680 (A129677 (n + 1)).toNat : ℚ) / (A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A129681.P14494063861303011851

/-! ## A129681.P12342853960113645610

`A008683(A051698(n))*A129680(A129677(n+1))`
-/

namespace A129681.P12342853960113645610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051698 n).toNat * A129680 (A129677 (n + 1)).toNat

end

end A129681.P12342853960113645610

/-! ## A129681.P9997577074061343769

`A008683(A001097(n+1))*A129680(A129677(n+1))`
-/

namespace A129681.P9997577074061343769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat * A129680 (A129677 (n + 1)).toNat

end

end A129681.P9997577074061343769

/-! ## A129681.P5459524069904853356

`A008683(A001359(n+1))*A129680(A129677(n+1))`
-/

namespace A129681.P5459524069904853356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat * A129680 (A129677 (n + 1)).toNat

end

end A129681.P5459524069904853356

/-!
# A129682: Number of ways tiling a 2 X n rectangle with 2 X 1 (domino) and 3 X 1 (tromino) tiles.

The programs for A129682, the canonical program `A129682.P9962382981802364606` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129682 has offset 0).

The definition of A129682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129682.P11689969296264552828

`ogf((1-x-x^3)/(1-2x-x^3+2x^4-x^5+x^6))`
-/

namespace A129682.P11689969296264552828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -1] [1, -2, 0, -1, 2, -1, 1] n

end

end A129682.P11689969296264552828

namespace A129682

/-- `ogf((1-x-x^3)/(1-2x-x^3+2x^4-x^5+x^6))` -/
def P11689969296264552828.Spec : Prop :=
  ∀ n, P11689969296264552828.a n = A129682 n

end A129682

/-! ## A129682.P9962382981802364606

`2*a(n-1)+a(n-3)-2*a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=15`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129682

/-- `2*a(n-1)+a(n-3)-2*a(n-4)+a(n-5)-a(n-6)` -/
def P9962382981802364606.Spec : Prop :=
  ∀ n, P9962382981802364606.a n = A129682 n

theorem P9962382981802364606.correct : P9962382981802364606.Spec := by
  intro n
  simp only [A129682]

end A129682

/-! ## A129682.P913334054458401066

`A219866(∑[n+3])`
-/

namespace A129682.P913334054458401066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129682.P913334054458401066

namespace A129682

/-- `A219866(∑[n+3])` -/
def P913334054458401066.Spec : Prop :=
  ∀ n, P913334054458401066.a n = A129682 n

end A129682

/-! ## A129682.P6703248402606080327

`A219866(A055998(n+1))%A017057(n)`
-/

namespace A129682.P6703248402606080327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219866 (A055998 (n + 1)).toNat) (A017057 n)

end

end A129682.P6703248402606080327

namespace A129682

/-- `A219866(A055998(n+1))%A017057(n)` -/
def P6703248402606080327.Spec : Prop :=
  ∀ n, P6703248402606080327.a n = A129682 n

end A129682

/-! ## A129682.P13586047149631554796

`gcd(A000038(n), A219866(A055998(n+1)))`
-/

namespace A129682.P13586047149631554796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A219866 (A055998 (n + 1)).toNat)

end

end A129682.P13586047149631554796

namespace A129682

/-- `gcd(A000038(n), A219866(A055998(n+1)))` -/
def P13586047149631554796.Spec : Prop :=
  ∀ n, (P13586047149631554796.a n : ℤ) = A129682 n

end A129682

/-!
# A129683: Expansion of (1/(1-2x))*exp(2x/(1-2x)).

The programs for A129683, there is no canonical definition to state claims against.
-/

/-! ## A129683.P17190275221651256367

`2^n*A002720(n)`
-/

namespace A129683.P17190275221651256367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002720 n

end

end A129683.P17190275221651256367

/-! ## A129683.P12235979533198848079

`(A097662(n)+1)*2^n`
-/

namespace A129683.P12235979533198848079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097662 n + 1) * (2 ^ n : ℤ)

end

end A129683.P12235979533198848079

/-! ## A129683.P5802983467809845420

`(A317094(n)-(n+1)²)*2^n`
-/

namespace A129683.P5802983467809845420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A317094 n - ((n + 1) ^ 2 : ℤ)) * (2 ^ n : ℤ)

end

end A129683.P5802983467809845420

/-! ## A129683.P14503304353404539254

`A000079(n)*A056953(2*n)`
-/

namespace A129683.P14503304353404539254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A056953 (2 * n)

end

end A129683.P14503304353404539254

/-! ## A129683.P9307811216969758708

`(A052852(n)+A000262(n))*2^n`
-/

namespace A129683.P9307811216969758708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052852 n + A000262 n) * (2 ^ n : ℤ)

end

end A129683.P9307811216969758708

/-! ## A129683.P11793544266791401848

`(A331326(n)+A331325(n))*2^n`
-/

namespace A129683.P11793544266791401848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A331326 n + A331325 n) * (2 ^ n : ℤ)

end

end A129683.P11793544266791401848

/-! ## A129683.P2522877845203957578

`A000079(n)*A293985(∑[n+2]-1)`
-/

namespace A129683.P2522877845203957578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A293985 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A129683.P2522877845203957578

/-! ## A129683.P6130656918535715183

`A002720(n)+A000225(n)*A002720(n)`
-/

namespace A129683.P6130656918535715183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n + A000225 n * A002720 n

end

end A129683.P6130656918535715183

/-! ## A129683.P11437493930836885681

`A000079(n)+A000079(n)*A097662(n)`
-/

namespace A129683.P11437493930836885681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000079 n * A097662 n

end

end A129683.P11437493930836885681

/-! ## A129683.P5623531331470523500

`A000051(n)*A002720(n)-A002720(n)`
-/

namespace A129683.P5623531331470523500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A002720 n - A002720 n

end

end A129683.P5623531331470523500

/-!
# A129684: Exponential Riordan array [1/(1-x^2/2), x].

The programs for A129684, the canonical program `A129684.P1014183556665715311` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129684 has offset 0).

The definition of A129684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3004 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129684.P1014183556665715311

`A072346(A025581(n))*A099174(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129684

/-- `A072346(A025581(n))*A099174(n)` -/
def P1014183556665715311.Spec : Prop :=
  ∀ n, P1014183556665715311.a n = A129684 n

theorem P1014183556665715311.correct : P1014183556665715311.Spec := by
  intro n
  simp only [A129684]

end A129684

/-! ## A129684.P10232855265605045505

`A081123(A193739(n))*A099174(n)`
-/

namespace A129684.P10232855265605045505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A193739 n).toNat * A099174 n

end

end A129684.P10232855265605045505

namespace A129684

/-- `A081123(A193739(n))*A099174(n)` -/
def P10232855265605045505.Spec : Prop :=
  ∀ n, P10232855265605045505.a n = A129684 n

end A129684

/-! ## A129684.P158928688786859638

`A081123(A004736(n+1))*A099174(n)`
-/

namespace A129684.P158928688786859638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A004736 (n + 1)).toNat * A099174 n

end

end A129684.P158928688786859638

namespace A129684

/-- `A081123(A004736(n+1))*A099174(n)` -/
def P158928688786859638.Spec : Prop :=
  ∀ n, P158928688786859638.a n = A129684 n

end A129684

/-! ## A129684.P15417661444816890036

`A055634(A025581(n))*A161556(n)`
-/

namespace A129684.P15417661444816890036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (A025581 n).toNat * A161556 n

end

end A129684.P15417661444816890036

namespace A129684

/-- `A055634(A025581(n))*A161556(n)` -/
def P15417661444816890036.Spec : Prop :=
  ∀ n, P15417661444816890036.a n = A129684 n

end A129684

/-! ## A129684.P14917169462774871587

`A116447(A166378(n))`
-/

namespace A129684.P14917169462774871587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A166378 n).toNat

end

end A129684.P14917169462774871587

namespace A129684

/-- `A116447(A166378(n))` -/
def P14917169462774871587.Spec : Prop :=
  ∀ n, P14917169462774871587.a n = A129684 n

end A129684

/-!
# A129685: Exponential Riordan array [1-x^2/2, x].

The programs for A129685, the canonical program `A129685.P4243944531495755914` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129685 has offset 0).

The definition of A129685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129685.P18063543799046376359

`A097610(n)*A106467(n)`
-/

namespace A129685.P18063543799046376359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A106467 n

end

end A129685.P18063543799046376359

namespace A129685

/-- `A097610(n)*A106467(n)` -/
def P18063543799046376359.Spec : Prop :=
  ∀ n, P18063543799046376359.a n = A129685 n

end A129685

/-! ## A129685.P10468824111236600675

`A104975(n)*A106246(n)`
-/

namespace A129685.P10468824111236600675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n * A106246 n

end

end A129685.P10468824111236600675

namespace A129685

/-- `A104975(n)*A106246(n)` -/
def P10468824111236600675.Spec : Prop :=
  ∀ n, P10468824111236600675.a n = A129685 n

end A129685

/-! ## A129685.P4243944531495755914

`A106246(n)*A117568(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129685

/-- `A106246(n)*A117568(n)` -/
def P4243944531495755914.Spec : Prop :=
  ∀ n, P4243944531495755914.a n = A129685 n

theorem P4243944531495755914.correct : P4243944531495755914.Spec := by
  intro n
  simp only [A129685]

end A129685

/-! ## A129685.P17217579986547301431

`A106467(n)*A119467(n)`
-/

namespace A129685.P17217579986547301431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106467 n * A119467 n

end

end A129685.P17217579986547301431

namespace A129685

/-- `A106467(n)*A119467(n)` -/
def P17217579986547301431.Spec : Prop :=
  ∀ n, P17217579986547301431.a n = A129685 n

end A129685

/-! ## A129685.P11342417252054756753

`A055137(n)*A185018(n)`
-/

namespace A129685.P11342417252054756753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A185018 n

end

end A129685.P11342417252054756753

namespace A129685

/-- `A055137(n)*A185018(n)` -/
def P11342417252054756753.Spec : Prop :=
  ∀ n, P11342417252054756753.a n = A129685 n

end A129685

/-! ## A129685.P4371133411485947503

`A106246(n)*A369736(n)`
-/

namespace A129685.P4371133411485947503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106246 n * A369736 n

end

end A129685.P4371133411485947503

namespace A129685

/-- `A106246(n)*A369736(n)` -/
def P4371133411485947503.Spec : Prop :=
  ∀ n, P4371133411485947503.a n = A129685 n

end A129685

/-! ## A129685.P16690521151401163197

`A137526(n)/A101566(n)`
-/

namespace A129685.P16690521151401163197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137526 n : ℚ) / (A101566 n : ℚ)

end

end A129685.P16690521151401163197

namespace A129685

/-- `A137526(n)/A101566(n)` -/
def P16690521151401163197.Spec : Prop :=
  ∀ n, P16690521151401163197.a n = (A129685 n : ℚ)

end A129685

/-! ## A129685.P804360878062228789

`A110324(n)%A132148(n)`
-/

namespace A129685.P804360878062228789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110324 n) (A132148 n)

end

end A129685.P804360878062228789

namespace A129685

/-- `A110324(n)%A132148(n)` -/
def P804360878062228789.Spec : Prop :=
  ∀ n, P804360878062228789.a n = A129685 n

end A129685

/-! ## A129685.P12761979682549348975

`and(A055137(n), A106467(n))`
-/

namespace A129685.P12761979682549348975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055137 n) (A106467 n)

end

end A129685.P12761979682549348975

namespace A129685

/-- `and(A055137(n), A106467(n))` -/
def P12761979682549348975.Spec : Prop :=
  ∀ n, P12761979682549348975.a n = A129685 n

end A129685

/-! ## A129685.P3317172743157415829

`and(A055137(n), A141679(n+1))`
-/

namespace A129685.P3317172743157415829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055137 n) (A141679 (n + 1))

end

end A129685.P3317172743157415829

namespace A129685

/-- `and(A055137(n), A141679(n+1))` -/
def P3317172743157415829.Spec : Prop :=
  ∀ n, P3317172743157415829.a n = A129685 n

end A129685

/-! ## A129685.P11701779206305153943

`A066325(n)*A106468(n)`
-/

namespace A129685.P11701779206305153943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A106468 n

end

end A129685.P11701779206305153943

namespace A129685

/-- `A066325(n)*A106468(n)` -/
def P11701779206305153943.Spec : Prop :=
  ∀ n, P11701779206305153943.a n = A129685 n

end A129685

/-! ## A129685.P10755512321167323715

`A099174(n)*A106467(n)`
-/

namespace A129685.P10755512321167323715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 n * A106467 n

end

end A129685.P10755512321167323715

namespace A129685

/-- `A099174(n)*A106467(n)` -/
def P10755512321167323715.Spec : Prop :=
  ∀ n, P10755512321167323715.a n = A129685 n

end A129685

/-! ## A129685.P14011497818680182247

`A066325(n)*A185018(n)`
-/

namespace A129685.P14011497818680182247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n * A185018 n

end

end A129685.P14011497818680182247

namespace A129685

/-- `A066325(n)*A185018(n)` -/
def P14011497818680182247.Spec : Prop :=
  ∀ n, P14011497818680182247.a n = A129685 n

end A129685

/-! ## A129685.P4764522371190126414

`and(A066325(n), A106467(n))`
-/

namespace A129685.P4764522371190126414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066325 n) (A106467 n)

end

end A129685.P4764522371190126414

namespace A129685

/-- `and(A066325(n), A106467(n))` -/
def P4764522371190126414.Spec : Prop :=
  ∀ n, P4764522371190126414.a n = A129685 n

end A129685

/-! ## A129685.P6067335304617177807

`and(A066325(n), A141679(n+1))`
-/

namespace A129685.P6067335304617177807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066325 n) (A141679 (n + 1))

end

end A129685.P6067335304617177807

namespace A129685

/-- `and(A066325(n), A141679(n+1))` -/
def P6067335304617177807.Spec : Prop :=
  ∀ n, P6067335304617177807.a n = A129685 n

end A129685

/-! ## A129685.P13505487500799087383

`A106468(n)*A119879(n)`
-/

namespace A129685.P13505487500799087383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106468 n * A119879 n

end

end A129685.P13505487500799087383

namespace A129685

/-- `A106468(n)*A119879(n)` -/
def P13505487500799087383.Spec : Prop :=
  ∀ n, P13505487500799087383.a n = A129685 n

end A129685

/-! ## A129685.P16433069929590337560

`A119879(n)*A185018(n)`
-/

namespace A129685.P16433069929590337560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 n * A185018 n

end

end A129685.P16433069929590337560

namespace A129685

/-- `A119879(n)*A185018(n)` -/
def P16433069929590337560.Spec : Prop :=
  ∀ n, P16433069929590337560.a n = A129685 n

end A129685

/-! ## A129685.P15583555548467283644

`and(A106467(n), A119879(n))`
-/

namespace A129685.P15583555548467283644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106467 n) (A119879 n)

end

end A129685.P15583555548467283644

namespace A129685

/-- `and(A106467(n), A119879(n))` -/
def P15583555548467283644.Spec : Prop :=
  ∀ n, P15583555548467283644.a n = A129685 n

end A129685

/-! ## A129685.P2445627771542397622

`and(A119879(n), A141679(n+1))`
-/

namespace A129685.P2445627771542397622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119879 n) (A141679 (n + 1))

end

end A129685.P2445627771542397622

namespace A129685

/-- `and(A119879(n), A141679(n+1))` -/
def P2445627771542397622.Spec : Prop :=
  ∀ n, P2445627771542397622.a n = A129685 n

end A129685

/-! ## A129685.P2391117262601173695

`A106467(n)*A129684(n)`
-/

namespace A129685.P2391117262601173695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106467 n * A129684 n

end

end A129685.P2391117262601173695

namespace A129685

/-- `A106467(n)*A129684(n)` -/
def P2391117262601173695.Spec : Prop :=
  ∀ n, P2391117262601173695.a n = A129685 n

end A129685

/-!
# A129686: Triangle read by rows: row n is 0^(n-3), 1, 0, 1.

The programs for A129686, there is no canonical definition to state claims against.
-/

/-! ## A129686.P3070873023384650850

`Δ[Δ[char[∑[n+2]]]]%2`
-/

namespace A129686.P3070873023384650850
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A129686.P3070873023384650850

/-! ## A129686.P962671212709570889

`and(1, Δ[Δ[char[∑[n+2]]]])`
-/

namespace A129686.P962671212709570889
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A129686.P962671212709570889

/-! ## A129686.P1604441948756328153

`char[∪[∑[n+3], ∑[n]-1]]`
-/

namespace A129686.P1604441948756328153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A129686.P1604441948756328153

/-! ## A129686.P111325681013129280

`char[eq[1, Δ[Δ[char[∑[n+2]]]]]]`
-/

namespace A129686.P111325681013129280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A129686.P111325681013129280

/-! ## A129686.P16506672287847274426

`char[n*Δ[Δ[char[∑[n+2]]]]]`
-/

namespace A129686.P16506672287847274426
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A129686.P16506672287847274426

/-! ## A129686.P226530448706498421

`C(2, C(2, row(n)-col(n)))-1`
-/

namespace A129686.P226530448706498421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 2 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat) : ℤ) - 1

end

end A129686.P226530448706498421

/-! ## A129686.P4952546725487329945

`C(2, 7%(3*(C(comp[∑[n]]-n, 2)-n)-2))`
-/

namespace A129686.P4952546725487329945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.tmod 7 (3 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 2)).toNat

end

end A129686.P4952546725487329945

/-! ## A129686.P604330966769943465

`abs(A185018(n)%2)`
-/

namespace A129686.P604330966769943465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A185018 n) 2|

end

end A129686.P604330966769943465

/-! ## A129686.P10505160768893319108

`(A097591(n)%2)²`
-/

namespace A129686.P10505160768893319108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097591 n) 2 ^ 2

end

end A129686.P10505160768893319108

/-! ## A129686.P6807333124938722875

`(A100749(n)%2)²`
-/

namespace A129686.P6807333124938722875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100749 n) 2 ^ 2

end

end A129686.P6807333124938722875

/-!
# A129687: A129686 * A007318.

The programs for A129687, the canonical program `A129687.P13165777011487155989` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129687 has offset 0).

The definition of A129687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129687.P13165777011487155989

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129687

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P13165777011487155989.Spec : Prop :=
  ∀ n, (P13165777011487155989.a n : ℤ) = A129687 n

theorem P13165777011487155989.correct : P13165777011487155989.Spec := by
  intro n
  simp only [A129687]

end A129687

/-! ## A129687.P7691896745853695891

`T(n-2,k-1)+T(n-2,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=1, a(6)=2`
-/

namespace A129687.P7691896745853695891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 1, 2] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUpLeft a n

end

end A129687.P7691896745853695891

namespace A129687

/-- `T(n-2,k-1)+T(n-2,k)+T(n-1,k-1)` -/
def P7691896745853695891.Spec : Prop :=
  ∀ n, (P7691896745853695891.a n : ℤ) = A129687 n

end A129687

/-! ## A129687.P877114814214914933

`A028326(n)-A131084(n+1)`
-/

namespace A129687.P877114814214914933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131084 (n + 1)

end

end A129687.P877114814214914933

namespace A129687

/-- `A028326(n)-A131084(n+1)` -/
def P877114814214914933.Spec : Prop :=
  ∀ n, P877114814214914933.a n = A129687 n

end A129687

/-! ## A129687.P7607234512131307510

`(A159853(n)+A093560(n))/2`
-/

namespace A129687.P7607234512131307510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159853 n + A093560 n : ℚ) / 2

end

end A129687.P7607234512131307510

namespace A129687

/-- `(A159853(n)+A093560(n))/2` -/
def P7607234512131307510.Spec : Prop :=
  ∀ n, P7607234512131307510.a n = (A129687 n : ℚ)

end A129687

/-! ## A129687.P17387870988245757681

`2*A097805(n)-A159855(n)`
-/

namespace A129687.P17387870988245757681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 n - A159855 n

end

end A129687.P17387870988245757681

namespace A129687

/-- `2*A097805(n)-A159855(n)` -/
def P17387870988245757681.Spec : Prop :=
  ∀ n, P17387870988245757681.a n = A129687 n

end A129687

/-! ## A129687.P11639440027704790111

`2*A007318(n)-A131084(n+1)`
-/

namespace A129687.P11639440027704790111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A131084 (n + 1)

end

end A129687.P11639440027704790111

namespace A129687

/-- `2*A007318(n)-A131084(n+1)` -/
def P11639440027704790111.Spec : Prop :=
  ∀ n, P11639440027704790111.a n = A129687 n

end A129687

/-! ## A129687.P15811744904775481884

`A029653(n)+A097805(n)-A131084(n+1)`
-/

namespace A129687.P15811744904775481884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A097805 n - A131084 (n + 1))

end

end A129687.P15811744904775481884

namespace A129687

/-- `A029653(n)+A097805(n)-A131084(n+1)` -/
def P15811744904775481884.Spec : Prop :=
  ∀ n, P15811744904775481884.a n = A129687 n

end A129687

/-! ## A129687.P9304242158012614195

`A097805(n+1)+A159854(n)+A097805(n+1)`
-/

namespace A129687.P9304242158012614195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + (A159854 n + A097805 (n + 1))

end

end A129687.P9304242158012614195

namespace A129687

/-- `A097805(n+1)+A159854(n)+A097805(n+1)` -/
def P9304242158012614195.Spec : Prop :=
  ∀ n, P9304242158012614195.a n = A129687 n

end A129687

/-! ## A129687.P1823217510712784044

`A028262(n+1)+A007318(n)-A007318(n+1)`
-/

namespace A129687.P1823217510712784044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (n + 1) + (A007318 n - A007318 (n + 1))

end

end A129687.P1823217510712784044

namespace A129687

/-- `A028262(n+1)+A007318(n)-A007318(n+1)` -/
def P1823217510712784044.Spec : Prop :=
  ∀ n, P1823217510712784044.a n = A129687 n

end A129687

/-! ## A129687.P81268185897994729

`A028262(n)+Δ[A323211(n)]`
-/

namespace A129687.P81268185897994729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + (f1 (n + 1) - f1 n)

end

end A129687.P81268185897994729

namespace A129687

/-- `A028262(n)+Δ[A323211(n)]` -/
def P81268185897994729.Spec : Prop :=
  ∀ n, P81268185897994729.a n = A129687 n

end A129687

/-! ## A129687.P10487891484230844565

`A323211(n+1)+A014473(n)`
-/

namespace A129687.P10487891484230844565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 (n + 1) + A014473 n

end

end A129687.P10487891484230844565

namespace A129687

/-- `A323211(n+1)+A014473(n)` -/
def P10487891484230844565.Spec : Prop :=
  ∀ n, P10487891484230844565.a n = A129687 n

end A129687

/-! ## A129687.P527033175294653122

`A144225(n+2)+A007318(n)`
-/

namespace A129687.P527033175294653122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 2) + A007318 n

end

end A129687.P527033175294653122

namespace A129687

/-- `A144225(n+2)+A007318(n)` -/
def P527033175294653122.Spec : Prop :=
  ∀ n, P527033175294653122.a n = A129687 n

end A129687

/-! ## A129687.P4573223017437034279

`A007318(n+1)+A007318(n)-A072405(n+1)`
-/

namespace A129687.P4573223017437034279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 n - A072405 (n + 1))

end

end A129687.P4573223017437034279

namespace A129687

/-- `A007318(n+1)+A007318(n)-A072405(n+1)` -/
def P4573223017437034279.Spec : Prop :=
  ∀ n, P4573223017437034279.a n = A129687 n

end A129687

/-! ## A129687.P8928788347550910968

`A173075(n+1)+A007318(n)-A132044(n+1)`
-/

namespace A129687.P8928788347550910968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 (n + 1) + (A007318 n - A132044 (n + 1))

end

end A129687.P8928788347550910968

namespace A129687

/-- `A173075(n+1)+A007318(n)-A132044(n+1)` -/
def P8928788347550910968.Spec : Prop :=
  ∀ n, P8928788347550910968.a n = A129687 n

end A129687

/-! ## A129687.P15018320565668170389

`A005843(A097805(n))-A159855(n)`
-/

namespace A129687.P15018320565668170389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A097805 n).toNat - A159855 n

end

end A129687.P15018320565668170389

namespace A129687

/-- `A005843(A097805(n))-A159855(n)` -/
def P15018320565668170389.Spec : Prop :=
  ∀ n, P15018320565668170389.a n = A129687 n

end A129687

/-! ## A129687.P3166383283777284139

`A159854(n)+A005843(A097805(n+1))`
-/

namespace A129687.P3166383283777284139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 n + A005843 (A097805 (n + 1)).toNat

end

end A129687.P3166383283777284139

namespace A129687

/-- `A159854(n)+A005843(A097805(n+1))` -/
def P3166383283777284139.Spec : Prop :=
  ∀ n, P3166383283777284139.a n = A129687 n

end A129687

/-! ## A129687.P1249871639601569422

`A159853(n)+A001281(A093560(n)-A159853(n))`
-/

namespace A129687.P1249871639601569422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 n + A001281 (A093560 n - A159853 n).toNat

end

end A129687.P1249871639601569422

namespace A129687

/-- `A159853(n)+A001281(A093560(n)-A159853(n))` -/
def P1249871639601569422.Spec : Prop :=
  ∀ n, P1249871639601569422.a n = A129687 n

end A129687

/-! ## A129687.P4599394590181250628

`A159853(n)+A004525(A093560(n)-A159853(n))`
-/

namespace A129687.P4599394590181250628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 n + A004525 (A093560 n - A159853 n).toNat

end

end A129687.P4599394590181250628

namespace A129687

/-- `A159853(n)+A004525(A093560(n)-A159853(n))` -/
def P4599394590181250628.Spec : Prop :=
  ∀ n, P4599394590181250628.a n = A129687 n

end A129687

/-! ## A129687.P10062745494118808839

`A093560(n)-A004526(A093560(n)-A159853(n))`
-/

namespace A129687.P10062745494118808839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n - A004526 (A093560 n - A159853 n).toNat

end

end A129687.P10062745494118808839

namespace A129687

/-- `A093560(n)-A004526(A093560(n)-A159853(n))` -/
def P10062745494118808839.Spec : Prop :=
  ∀ n, P10062745494118808839.a n = A129687 n

end A129687

/-! ## A129687.P4562072588995344806

`A001281(A159853(n)+A093560(n))`
-/

namespace A129687.P4562072588995344806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A159853 n + A093560 n).toNat

end

end A129687.P4562072588995344806

namespace A129687

/-- `A001281(A159853(n)+A093560(n))` -/
def P4562072588995344806.Spec : Prop :=
  ∀ n, P4562072588995344806.a n = A129687 n

end A129687

/-!
# A129688: A129686 * A128174.

The programs for A129688, the canonical program `A129688.P1941488576816125634` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129688 has offset 1).

The definition of A129688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129688.P9131554315676837893

`(3-T(n-1,k+1))*T(n-1,k+1)+(2-T(n-1,k-1))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A129688.P9131554315676837893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 - SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triUpRight a n + (2 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUpLeft a n

end

end A129688.P9131554315676837893

namespace A129688

/-- `(3-T(n-1,k+1))*T(n-1,k+1)+(2-T(n-1,k-1))*T(n-1,k-1)` -/
def P9131554315676837893.Spec : Prop :=
  ∀ n, P9131554315676837893.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P2502620223113418579

`(2-T(n-1,k-1))*T(n-1,k-1)-(T(n-1,k+1)-3)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A129688.P2502620223113418579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpRight a n - 3) * SequenceMachineLib.triUpRight a n

end

end A129688.P2502620223113418579

namespace A129688

/-- `(2-T(n-1,k-1))*T(n-1,k-1)-(T(n-1,k+1)-3)*T(n-1,k+1)` -/
def P2502620223113418579.Spec : Prop :=
  ∀ n, P2502620223113418579.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P16342926138021271293

`2*comp[∑[4*n]]%2-char[∑[n-1]]`
-/

namespace A129688.P16342926138021271293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129688.P16342926138021271293

namespace A129688

/-- `2*comp[∑[4*n]]%2-char[∑[n-1]]` -/
def P16342926138021271293.Spec : Prop :=
  ∀ n, P16342926138021271293.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P6300230215920570480

`val((2^(C(comp[∑[n]]-n, 2)-n)+4)², 12)`
-/

namespace A129688.P6300230215920570480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) + 4) ^ 2)).toNat 12

end

end A129688.P6300230215920570480

namespace A129688

/-- `val((2^(C(comp[∑[n]]-n, 2)-n)+4)², 12)` -/
def P6300230215920570480.Spec : Prop :=
  ∀ n, (P6300230215920570480.a n : ℤ) = A129688 (n + 1)

end A129688

/-! ## A129688.P7140985616860366326

`char[comp[∑[n-1]]]+and(2, comp[∑[n]]+n)-1`
-/

namespace A129688.P7140985616860366326
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1)

end

end A129688.P7140985616860366326

namespace A129688

/-- `char[comp[∑[n-1]]]+and(2, comp[∑[n]]+n)-1` -/
def P7140985616860366326.Spec : Prop :=
  ∀ n, P7140985616860366326.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P6550271182140611838

`or(1, 2^(C(comp[∑[n]]-n, 2)-(n+1)))%3`
-/

namespace A129688.P6550271182140611838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)))) 3

end

end A129688.P6550271182140611838

namespace A129688

/-- `or(1, 2^(C(comp[∑[n]]-n, 2)-(n+1)))%3` -/
def P6550271182140611838.Spec : Prop :=
  ∀ n, P6550271182140611838.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P16032474614921565393

`((2^(C(comp[∑[n]]-n, 2)-(n+1)))²%10)%4`
-/

namespace A129688.P16032474614921565393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway (((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2)) 10) 4

end

end A129688.P16032474614921565393

namespace A129688

/-- `((2^(C(comp[∑[n]]-n, 2)-(n+1)))²%10)%4` -/
def P16032474614921565393.Spec : Prop :=
  ∀ n, P16032474614921565393.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P18218522475754722514

`lcm(2-gcd(2, comp[∑[4*n]]), 3*char[∑[n-1]]-2)`
-/

namespace A129688.P18218522475754722514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) (((3 * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2)

end

end A129688.P18218522475754722514

namespace A129688

/-- `lcm(2-gcd(2, comp[∑[4*n]]), 3*char[∑[n-1]]-2)` -/
def P18218522475754722514.Spec : Prop :=
  ∀ n, (P18218522475754722514.a n : ℤ) = A129688 (n + 1)

end A129688

/-! ## A129688.P16313643862381302843

`((n²+1+n)%(comp[C(n, 2)]+1)+1-char[∑[n-1]])%4`
-/

namespace A129688.P16313643862381302843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℕ) : ℤ) + (1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))) 4

end

end A129688.P16313643862381302843

namespace A129688

/-- `((n²+1+n)%(comp[C(n, 2)]+1)+1-char[∑[n-1]])%4` -/
def P16313643862381302843.Spec : Prop :=
  ∀ n, P16313643862381302843.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P4483140199709112813

`A134234(n+1)%4`
-/

namespace A129688.P4483140199709112813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134234 (n + 1)) 4

end

end A129688.P4483140199709112813

namespace A129688

/-- `A134234(n+1)%4` -/
def P4483140199709112813.Spec : Prop :=
  ∀ n, P4483140199709112813.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P12960098284186554293

`A143432(A099375(n))`
-/

namespace A129688.P12960098284186554293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143432 (A099375 n).toNat

end

end A129688.P12960098284186554293

namespace A129688

/-- `A143432(A099375(n))` -/
def P12960098284186554293.Spec : Prop :=
  ∀ n, P12960098284186554293.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P4626311089050022087

`A224317(A104568(n))`
-/

namespace A129688.P4626311089050022087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224317 (A104568 n).toNat

end

end A129688.P4626311089050022087

namespace A129688

/-- `A224317(A104568(n))` -/
def P4626311089050022087.Spec : Prop :=
  ∀ n, P4626311089050022087.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P1941488576816125634

`1-A062157(A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129688

/-- `1-A062157(A025581(n))` -/
def P1941488576816125634.Spec : Prop :=
  ∀ n, P1941488576816125634.a n = A129688 (n + 1)

theorem P1941488576816125634.correct : P1941488576816125634.Spec := by
  intro n
  simp only [A129688, Nat.add_sub_cancel]

end A129688

/-! ## A129688.P12472654861523678333

`1-A062157(A051933(n))`
-/

namespace A129688.P12472654861523678333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062157 (A051933 n).toNat

end

end A129688.P12472654861523678333

namespace A129688

/-- `1-A062157(A051933(n))` -/
def P12472654861523678333.Spec : Prop :=
  ∀ n, P12472654861523678333.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P7094481092830933692

`A097807(n)+A023532(n)`
-/

namespace A129688.P7094481092830933692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + A023532 n

end

end A129688.P7094481092830933692

namespace A129688

/-- `A097807(n)+A023532(n)` -/
def P7094481092830933692.Spec : Prop :=
  ∀ n, P7094481092830933692.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P13329913812541442680

`A135221(n)-A014473(n)`
-/

namespace A129688.P13329913812541442680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135221 n - A014473 n

end

end A129688.P13329913812541442680

namespace A129688

/-- `A135221(n)-A014473(n)` -/
def P13329913812541442680.Spec : Prop :=
  ∀ n, P13329913812541442680.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P2558004742789991691

`lcm(A113680(n), A369736(n))`
-/

namespace A129688.P2558004742789991691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113680 n) (A369736 n)

end

end A129688.P2558004742789991691

namespace A129688

/-- `lcm(A113680(n), A369736(n))` -/
def P2558004742789991691.Spec : Prop :=
  ∀ n, (P2558004742789991691.a n : ℤ) = A129688 (n + 1)

end A129688

/-! ## A129688.P12328768294096450840

`A105812(A004736(n+1))+1`
-/

namespace A129688.P12328768294096450840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A004736 (n + 1)).toNat + 1

end

end A129688.P12328768294096450840

namespace A129688

/-- `A105812(A004736(n+1))+1` -/
def P12328768294096450840.Spec : Prop :=
  ∀ n, P12328768294096450840.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P15002220449136875111

`and(A122553(n), A134234(n+1))`
-/

namespace A129688.P15002220449136875111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A134234 (n + 1))

end

end A129688.P15002220449136875111

namespace A129688

/-- `and(A122553(n), A134234(n+1))` -/
def P15002220449136875111.Spec : Prop :=
  ∀ n, P15002220449136875111.a n = A129688 (n + 1)

end A129688

/-! ## A129688.P15571929348019128301

`and(A134234(n+1), A158799(n))`
-/

namespace A129688.P15571929348019128301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134234 (n + 1)) (A158799 n)

end

end A129688.P15571929348019128301

namespace A129688

/-- `and(A134234(n+1), A158799(n))` -/
def P15571929348019128301.Spec : Prop :=
  ∀ n, P15571929348019128301.a n = A129688 (n + 1)

end A129688

/-!
# A129689: A007318 * A129688.

The programs for A129689, the canonical program `A129689.P16579253702323434123` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129689 has offset 1).

The definition of A129689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129689.P3962705423000970537

`A055248(n)-A097805(n+1)`
-/

namespace A129689.P3962705423000970537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n - A097805 (n + 1)

end

end A129689.P3962705423000970537

namespace A129689

/-- `A055248(n)-A097805(n+1)` -/
def P3962705423000970537.Spec : Prop :=
  ∀ n, P3962705423000970537.a n = A129689 (n + 1)

end A129689

/-! ## A129689.P16579253702323434123

`2*A128175(n+1)-A007318(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129689

/-- `2*A128175(n+1)-A007318(n)` -/
def P16579253702323434123.Spec : Prop :=
  ∀ n, P16579253702323434123.a n = A129689 (n + 1)

theorem P16579253702323434123.correct : P16579253702323434123.Spec := by
  intro n
  simp only [A129689, Nat.add_sub_cancel]

end A129689

/-! ## A129689.P1939903035241696502

`A007318(n)+A055248(n)-A029653(n)`
-/

namespace A129689.P1939903035241696502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A055248 n - A029653 n)

end

end A129689.P1939903035241696502

namespace A129689

/-- `A007318(n)+A055248(n)-A029653(n)` -/
def P1939903035241696502.Spec : Prop :=
  ∀ n, P1939903035241696502.a n = A129689 (n + 1)

end A129689

/-! ## A129689.P18185819827806778811

`A029653(n)+A055248(n)-A093560(n)`
-/

namespace A129689.P18185819827806778811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A055248 n - A093560 n)

end

end A129689.P18185819827806778811

namespace A129689

/-- `A029653(n)+A055248(n)-A093560(n)` -/
def P18185819827806778811.Spec : Prop :=
  ∀ n, P18185819827806778811.a n = A129689 (n + 1)

end A129689

/-! ## A129689.P11482809987189633219

`A055248(n)+A093560(n)-A093561(n)`
-/

namespace A129689.P11482809987189633219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A093560 n - A093561 n)

end

end A129689.P11482809987189633219

namespace A129689

/-- `A055248(n)+A093560(n)-A093561(n)` -/
def P11482809987189633219.Spec : Prop :=
  ∀ n, P11482809987189633219.a n = A129689 (n + 1)

end A129689

/-! ## A129689.P5520332853054639123

`A055248(n)+A093561(n)-A093562(n)`
-/

namespace A129689.P5520332853054639123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A093561 n - A093562 n)

end

end A129689.P5520332853054639123

namespace A129689

/-- `A055248(n)+A093561(n)-A093562(n)` -/
def P5520332853054639123.Spec : Prop :=
  ∀ n, P5520332853054639123.a n = A129689 (n + 1)

end A129689

/-! ## A129689.P11168501493102318892

`A055248(n)+A093562(n)-A093563(n)`
-/

namespace A129689.P11168501493102318892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A093562 n - A093563 n)

end

end A129689.P11168501493102318892

namespace A129689

/-- `A055248(n)+A093562(n)-A093563(n)` -/
def P11168501493102318892.Spec : Prop :=
  ∀ n, P11168501493102318892.a n = A129689 (n + 1)

end A129689

/-! ## A129689.P4955689774883322452

`A007318(n+1)+A055248(n)-A029635(n+1)`
-/

namespace A129689.P4955689774883322452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A055248 n - A029635 (n + 1))

end

end A129689.P4955689774883322452

namespace A129689

/-- `A007318(n+1)+A055248(n)-A029635(n+1)` -/
def P4955689774883322452.Spec : Prop :=
  ∀ n, P4955689774883322452.a n = A129689 (n + 1)

end A129689

/-!
# A129690: A129688 * A007318.

The programs for A129690, the canonical program `A129690.P14713627052820705592` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129690 has offset 1).

The definition of A129690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129690.P9441438847428589495

`(A112465(n)+A110813(n))/2`
-/

namespace A129690.P9441438847428589495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112465 n + A110813 n : ℚ) / 2

end

end A129690.P9441438847428589495

namespace A129690

/-- `(A112465(n)+A110813(n))/2` -/
def P9441438847428589495.Spec : Prop :=
  ∀ n, P9441438847428589495.a n = (A129690 (n + 1) : ℚ)

end A129690

/-! ## A129690.P10046000338018335880

`2*A128176(n+1)-A007318(n)`
-/

namespace A129690.P10046000338018335880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128176 (n + 1) - A007318 n

end

end A129690.P10046000338018335880

namespace A129690

/-- `2*A128176(n+1)-A007318(n)` -/
def P10046000338018335880.Spec : Prop :=
  ∀ n, P10046000338018335880.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P14713627052820705592

`A007318(n+1)+A135230(n)-A103451(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129690

/-- `A007318(n+1)+A135230(n)-A103451(n)` -/
def P14713627052820705592.Spec : Prop :=
  ∀ n, P14713627052820705592.a n = A129690 (n + 1)

theorem P14713627052820705592.correct : P14713627052820705592.Spec := by
  intro n
  simp only [A129690, Nat.add_sub_cancel]

end A129690

/-! ## A129690.P14865276700860762153

`A206735(n+1)+A059260(n)`
-/

namespace A129690.P14865276700860762153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A059260 n

end

end A129690.P14865276700860762153

namespace A129690

/-- `A206735(n+1)+A059260(n)` -/
def P14865276700860762153.Spec : Prop :=
  ∀ n, P14865276700860762153.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P12308904846438978690

`2*A035317(A061579(n))-A007318(n)`
-/

namespace A129690.P12308904846438978690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035317 (A061579 n).toNat - A007318 n

end

end A129690.P12308904846438978690

namespace A129690

/-- `2*A035317(A061579(n))-A007318(n)` -/
def P12308904846438978690.Spec : Prop :=
  ∀ n, P12308904846438978690.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P206339635917019237

`A005843(A128176(n+1))-A007318(n)`
-/

namespace A129690.P206339635917019237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A128176 (n + 1)).toNat - A007318 n

end

end A129690.P206339635917019237

namespace A129690

/-- `A005843(A128176(n+1))-A007318(n)` -/
def P206339635917019237.Spec : Prop :=
  ∀ n, P206339635917019237.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P1543511256539651332

`A001281(A112465(n)+A110813(n))`
-/

namespace A129690.P1543511256539651332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A112465 n + A110813 n).toNat

end

end A129690.P1543511256539651332

namespace A129690

/-- `A001281(A112465(n)+A110813(n))` -/
def P1543511256539651332.Spec : Prop :=
  ∀ n, P1543511256539651332.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P10463353360028809750

`A004526(A112465(n)+A110813(n))`
-/

namespace A129690.P10463353360028809750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112465 n + A110813 n).toNat

end

end A129690.P10463353360028809750

namespace A129690

/-- `A004526(A112465(n)+A110813(n))` -/
def P10463353360028809750.Spec : Prop :=
  ∀ n, P10463353360028809750.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P1554171957052986984

`A006370(A112465(n)+A110813(n))`
-/

namespace A129690.P1554171957052986984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A112465 n + A110813 n).toNat

end

end A129690.P1554171957052986984

namespace A129690

/-- `A006370(A112465(n)+A110813(n))` -/
def P1554171957052986984.Spec : Prop :=
  ∀ n, P1554171957052986984.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P16724374322331218352

`A065033(A112465(n)+A110813(n))`
-/

namespace A129690.P16724374322331218352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A112465 n + A110813 n).toNat

end

end A129690.P16724374322331218352

namespace A129690

/-- `A065033(A112465(n)+A110813(n))` -/
def P16724374322331218352.Spec : Prop :=
  ∀ n, P16724374322331218352.a n = A129690 (n + 1)

end A129690

/-! ## A129690.P12350582449801621410

`A065033(A110813(n)-(1-A112465(n)))`
-/

namespace A129690.P12350582449801621410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A110813 n - (1 - A112465 n)).toNat

end

end A129690.P12350582449801621410

namespace A129690

/-- `A065033(A110813(n)-(1-A112465(n)))` -/
def P12350582449801621410.Spec : Prop :=
  ∀ n, P12350582449801621410.a n = A129690 (n + 1)

end A129690

/-!
# A129691: Inverse of A054523.

The programs for A129691, the canonical program `A129691.P5534431629163071465` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129691 has offset 1).

The definition of A129691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129691.P5534431629163071465

`∑{d}[A126988(n+1), A055615(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129691

/-- `∑{d}[A126988(n+1), A055615(#)]` -/
def P5534431629163071465.Spec : Prop :=
  ∀ n, P5534431629163071465.a n = A129691 (n + 1)

theorem P5534431629163071465.correct : P5534431629163071465.Spec := by
  intro n
  simp only [A129691, Nat.add_sub_cancel]

end A129691

/-! ## A129691.P15797978322373289571

`A366445(n+1)/A054526(n+1)`
-/

namespace A129691.P15797978322373289571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366445 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A129691.P15797978322373289571

namespace A129691

/-- `A366445(n+1)/A054526(n+1)` -/
def P15797978322373289571.Spec : Prop :=
  ∀ n, P15797978322373289571.a n = (A129691 (n + 1) : ℚ)

end A129691

/-! ## A129691.P1741947443832706677

`A366445(n+1)/A372673(n+1)`
-/

namespace A129691.P1741947443832706677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366445 (n + 1) : ℚ) / (A372673 (n + 1) : ℚ)

end

end A129691.P1741947443832706677

namespace A129691

/-- `A366445(n+1)/A372673(n+1)` -/
def P1741947443832706677.Spec : Prop :=
  ∀ n, P1741947443832706677.a n = (A129691 (n + 1) : ℚ)

end A129691

/-! ## A129691.P17680383211144680158

`∑{d}[A126988(n+1), #*A008683(#)]`
-/

namespace A129691.P17680383211144680158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A008683 d

end

end A129691.P17680383211144680158

namespace A129691

/-- `∑{d}[A126988(n+1), #*A008683(#)]` -/
def P17680383211144680158.Spec : Prop :=
  ∀ n, P17680383211144680158.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P3190511334812671737

`A023900(A010766(n+1))*A051731(n+1)`
-/

namespace A129691.P3190511334812671737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A129691.P3190511334812671737

namespace A129691

/-- `A023900(A010766(n+1))*A051731(n+1)` -/
def P3190511334812671737.Spec : Prop :=
  ∀ n, P3190511334812671737.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P14332708580113709551

`A023900(A049834(n+1))*A051731(n+1)`
-/

namespace A129691.P14332708580113709551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A129691.P14332708580113709551

namespace A129691

/-- `A023900(A049834(n+1))*A051731(n+1)` -/
def P14332708580113709551.Spec : Prop :=
  ∀ n, P14332708580113709551.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P7588130927119960695

`A023900(A051537(n+1))*A051731(n+1)`
-/

namespace A129691.P7588130927119960695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A129691.P7588130927119960695

namespace A129691

/-- `A023900(A051537(n+1))*A051731(n+1)` -/
def P7588130927119960695.Spec : Prop :=
  ∀ n, P7588130927119960695.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P14068951735570035070

`A023900(A054531(n+1))*A051731(n+1)`
-/

namespace A129691.P14068951735570035070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A129691.P14068951735570035070

namespace A129691

/-- `A023900(A054531(n+1))*A051731(n+1)` -/
def P14068951735570035070.Spec : Prop :=
  ∀ n, P14068951735570035070.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P8041972647801941813

`A023900(A010766(n+1))*A057427(A126988(n+1))`
-/

namespace A129691.P8041972647801941813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A010766 (n + 1)).toNat * A057427 (A126988 (n + 1)).toNat

end

end A129691.P8041972647801941813

namespace A129691

/-- `A023900(A010766(n+1))*A057427(A126988(n+1))` -/
def P8041972647801941813.Spec : Prop :=
  ∀ n, P8041972647801941813.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P13052822028578899670

`A023900(A010766(n+1))*A057427(A127093(n+1))`
-/

namespace A129691.P13052822028578899670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A010766 (n + 1)).toNat * A057427 (A127093 (n + 1)).toNat

end

end A129691.P13052822028578899670

namespace A129691

/-- `A023900(A010766(n+1))*A057427(A127093(n+1))` -/
def P13052822028578899670.Spec : Prop :=
  ∀ n, P13052822028578899670.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P4745580330540967597

`A023900(A010766(n+1))*A057427(A127446(n+1))`
-/

namespace A129691.P4745580330540967597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A010766 (n + 1)).toNat * A057427 (A127446 (n + 1)).toNat

end

end A129691.P4745580330540967597

namespace A129691

/-- `A023900(A010766(n+1))*A057427(A127446(n+1))` -/
def P4745580330540967597.Spec : Prop :=
  ∀ n, P4745580330540967597.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P1455826545206074287

`A023900(A051537(n+1))%A000124(A127446(n+1))`
-/

namespace A129691.P1455826545206074287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023900 (A051537 (n + 1)).toNat) (A000124 (A127446 (n + 1)).toNat)

end

end A129691.P1455826545206074287

namespace A129691

/-- `A023900(A051537(n+1))%A000124(A127446(n+1))` -/
def P1455826545206074287.Spec : Prop :=
  ∀ n, P1455826545206074287.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P842403350352466963

`A023900(A010766(n+1))*A057427(A130540(n+1))`
-/

namespace A129691.P842403350352466963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A010766 (n + 1)).toNat * A057427 (A130540 (n + 1)).toNat

end

end A129691.P842403350352466963

namespace A129691

/-- `A023900(A010766(n+1))*A057427(A130540(n+1))` -/
def P842403350352466963.Spec : Prop :=
  ∀ n, P842403350352466963.a n = A129691 (n + 1)

end A129691

/-! ## A129691.P3841206189008026413

`A023900(A010766(n+1))*A057427(A181117(n+1))`
-/

namespace A129691.P3841206189008026413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A010766 (n + 1)).toNat * A057427 (A181117 (n + 1)).toNat

end

end A129691.P3841206189008026413

namespace A129691

/-- `A023900(A010766(n+1))*A057427(A181117(n+1))` -/
def P3841206189008026413.Spec : Prop :=
  ∀ n, P3841206189008026413.a n = A129691 (n + 1)

end A129691

/-!
# A129692: Right truncatable primes in base 8 (written in decimal form).

The programs for A129692, there is no canonical definition to state claims against.
-/

/-! ## A129692.P13776186801808747074

`A028903(A024768(n+1))`
-/

namespace A129692.P13776186801808747074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A024768 (n + 1)).toNat

end

end A129692.P13776186801808747074

/-! ## A129692.P17530969749563519874

`A000040(lt[A334437(n), A289283(n+1)])`
-/

namespace A129692.P17530969749563519874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129692.P17530969749563519874

/-! ## A129692.P13386155552529821903

`A069679(lt[A334437(n), A289283(n+1)])`
-/

namespace A129692.P13386155552529821903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129692.P13386155552529821903

/-! ## A129692.P8769627976136599626

`A042990(lt[A260327(2*(n+2)), A101821(2*(n+1))])`
-/

namespace A129692.P8769627976136599626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260327 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101821 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129692.P8769627976136599626

/-! ## A129692.P10962776794358179466

`A178209(A106000(n+1))`
-/

namespace A129692.P10962776794358179466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178209 (A106000 (n + 1)).toNat

end

end A129692.P10962776794358179466

/-!
# A129693: Right truncatable primes in base 9 (written in decimal form).

The programs for A129693, there is no canonical definition to state claims against.
-/

/-! ## A129693.P4752456603767250244

`A028904(A024769(n+1))`
-/

namespace A129693.P4752456603767250244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A024769 (n + 1)).toNat

end

end A129693.P4752456603767250244

/-! ## A129693.P4914579781305806735

`p?[∑[A060500(A144254(n+1))]]`
-/

namespace A129693.P4914579781305806735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A144254 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129693.P4914579781305806735

/-! ## A129693.P13779632718819594349

`p?[C(A228086(n), A228098(3*n+5))]`
-/

namespace A129693.P13779632718819594349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228086 n).toNat (A228098 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129693.P13779632718819594349

/-! ## A129693.P17853498172785609238

`A000040(lt[A001272(n+1), A001269(2*n+3)])`
-/

namespace A129693.P17853498172785609238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001269 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129693.P17853498172785609238

/-! ## A129693.P2507179540290385374

`p?[∑[gcd(11, A111820(n))]]`
-/

namespace A129693.P2507179540290385374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A111820 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129693.P2507179540290385374

/-!
# A129694: a(0)=0. a(n) = a(n-1) + sum of positive integers which are <= n and not part of the sequence.

The programs for A129694, there is no canonical definition to state claims against.
-/

/-! ## A129694.P10739621480428163163

`A212484(n)-A008683(A180140(n))`
-/

namespace A129694.P10739621480428163163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212484 n - A008683 (A180140 n).toNat

end

end A129694.P10739621480428163163

/-! ## A129694.P3668260834438936250

`A000196(A064934(n)*A161336(n))`
-/

namespace A129694.P3668260834438936250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A064934 n * A161336 n).toNat

end

end A129694.P3668260834438936250

/-! ## A129694.P3237177001125589994

`A000196(lcm(A064934(n), A161336(n)))`
-/

namespace A129694.P3237177001125589994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (A064934 n) (A161336 n))

end

end A129694.P3237177001125589994

/-! ## A129694.P8579698031478475476

`A000194(A195072(n+1)*A327594(n))`
-/

namespace A129694.P8579698031478475476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A195072 (n + 1) * A327594 n).toNat

end

end A129694.P8579698031478475476

/-! ## A129694.P7148849131321292595

`A000194(A000194(2*n)*A327594(n))`
-/

namespace A129694.P7148849131321292595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (2 * n) * A327594 n).toNat

end

end A129694.P7148849131321292595

/-!
# A129695: Laguerre transform of the Jacobsthal numbers.

The programs for A129695, the canonical program `A129695.P7652742004178643006` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129695 has offset 0).

The definition of A129695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129695.P7652742004178643006

`∑{#}[n, C(n, #)*n!*A001045(#)/#!]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129695

/-- `∑{#}[n, C(n, #)*n!*A001045(#)/#!]` -/
def P7652742004178643006.Spec : Prop :=
  ∀ n, P7652742004178643006.a n = (A129695 n : ℚ)

end A129695

/-! ## A129695.P15701814273672673865

`(A087912(n)-A009940(n))/3`
-/

namespace A129695.P15701814273672673865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087912 n - A009940 n : ℚ) / 3

end

end A129695.P15701814273672673865

namespace A129695

/-- `(A087912(n)-A009940(n))/3` -/
def P15701814273672673865.Spec : Prop :=
  ∀ n, P15701814273672673865.a n = (A129695 n : ℚ)

end A129695

/-!
# A129696: Antidiagonal sums of triangular array T defined in A014430: T(j,k) = binomial(j+1, k) - 1 for 1 <= k <= j.

The programs for A129696, the canonical program `A129696.P6126593257956802507` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129696 has offset 1).

The definition of A129696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129696.P7381937277709562199

`ogf(1/(1-2x-x^2+3x^3-x^5))`
-/

namespace A129696.P7381937277709562199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, 3, 0, -1] n

end

end A129696.P7381937277709562199

namespace A129696

/-- `ogf(1/(1-2x-x^2+3x^3-x^5))` -/
def P7381937277709562199.Spec : Prop :=
  ∀ n, P7381937277709562199.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P6126593257956802507

`a(n-1)+a(n-2)+(n+1+(n+1)%2)/2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129696

/-- `a(n-1)+a(n-2)+(n+1+(n+1)%2)/2` -/
def P6126593257956802507.Spec : Prop :=
  ∀ n, P6126593257956802507.a n = (A129696 (n + 1) : ℚ)

end A129696

/-! ## A129696.P7052808891476146520

`A000045(n+4)-2-floor((n+1)/2)`
-/

namespace A129696.P7052808891476146520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - 2 - ⌊(n + 1 : ℚ) / 2⌋

end

end A129696.P7052808891476146520

namespace A129696

/-- `A000045(n+4)-2-floor((n+1)/2)` -/
def P7052808891476146520.Spec : Prop :=
  ∀ n, P7052808891476146520.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P8101142272969344572

`∑{#}[floor(n/2), A000071(n-2*#+3)]`
-/

namespace A129696.P8101142272969344572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000071 ((n : ℤ) - (2 * k : ℤ) + 3).toNat

end

end A129696.P8101142272969344572

namespace A129696

/-- `∑{#}[floor(n/2), A000071(n-2*#+3)]` -/
def P8101142272969344572.Spec : Prop :=
  ∀ n, P8101142272969344572.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P15152359203424277597

`∑[ogf(1/(1-x-2x^2+x^3+x^4))]`
-/

namespace A129696.P15152359203424277597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P15152359203424277597

namespace A129696

/-- `∑[ogf(1/(1-x-2x^2+x^3+x^4))]` -/
def P15152359203424277597.Spec : Prop :=
  ∀ n, P15152359203424277597.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P13737339530147011864

`∑[∑[a(n-3)+2*a(n-2)]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A129696.P13737339530147011864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 3) + 2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P13737339530147011864

namespace A129696

/-- `∑[∑[a(n-3)+2*a(n-2)]]` -/
def P13737339530147011864.Spec : Prop :=
  ∀ n, (P13737339530147011864.a n : ℤ) = A129696 (n + 1)

end A129696

/-! ## A129696.P4723993517636602678

`2*a(n-2)+a(n-3)+n+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A129696.P4723993517636602678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 2) + (a (n - 3) + (n + 1))

end

end A129696.P4723993517636602678

namespace A129696

/-- `2*a(n-2)+a(n-3)+n+1` -/
def P4723993517636602678.Spec : Prop :=
  ∀ n, (P4723993517636602678.a n : ℤ) = A129696 (n + 1)

end A129696

/-! ## A129696.P17337738795702442204

`∑[(n+1)%2+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A129696.P17337738795702442204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1) % 2 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P17337738795702442204

namespace A129696

/-- `∑[(n+1)%2+a(n-1)+a(n-2)]` -/
def P17337738795702442204.Spec : Prop :=
  ∀ n, (P17337738795702442204.a n : ℤ) = A129696 (n + 1)

end A129696

/-! ## A129696.P8348003424782602288

`∑[∑[a(n-1)+a(n-2)]-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A129696.P8348003424782602288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P8348003424782602288

namespace A129696

/-- `∑[∑[a(n-1)+a(n-2)]-a(n-1)]` -/
def P8348003424782602288.Spec : Prop :=
  ∀ n, P8348003424782602288.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P7695253523652632467

`n+1+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A129696.P7695253523652632467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  n + 1 + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A129696.P7695253523652632467

namespace A129696

/-- `n+1+a(n-2)+a(n-2)+a(n-3)` -/
def P7695253523652632467.Spec : Prop :=
  ∀ n, (P7695253523652632467.a n : ℤ) = A129696 (n + 1)

end A129696

/-! ## A129696.P2196732796236145309

`∑[A052952(n)]`
-/

namespace A129696.P2196732796236145309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P2196732796236145309

namespace A129696

/-- `∑[A052952(n)]` -/
def P2196732796236145309.Spec : Prop :=
  ∀ n, P2196732796236145309.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P4502809335677582121

`∑[∑[A008346(n)]]`
-/

namespace A129696.P4502809335677582121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P4502809335677582121

namespace A129696

/-- `∑[∑[A008346(n)]]` -/
def P4502809335677582121.Spec : Prop :=
  ∀ n, P4502809335677582121.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P10056154495765753575

`∑[A074331(n+1)]`
-/

namespace A129696.P10056154495765753575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P10056154495765753575

namespace A129696

/-- `∑[A074331(n+1)]` -/
def P10056154495765753575.Spec : Prop :=
  ∀ n, P10056154495765753575.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P2697483267694987097

`∑[∑[abs(A355020(n))]]`
-/

namespace A129696.P2697483267694987097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355020 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P2697483267694987097

namespace A129696

/-- `∑[∑[abs(A355020(n))]]` -/
def P2697483267694987097.Spec : Prop :=
  ∀ n, P2697483267694987097.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P10134890098083175066

`∑[∑[∑[A078024(n)]]]`
-/

namespace A129696.P10134890098083175066
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P10134890098083175066

namespace A129696

/-- `∑[∑[∑[A078024(n)]]]` -/
def P10134890098083175066.Spec : Prop :=
  ∀ n, P10134890098083175066.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P3553571448687336529

`A215006(n+2)-1`
-/

namespace A129696.P3553571448687336529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (n + 2) - 1

end

end A129696.P3553571448687336529

namespace A129696

/-- `A215006(n+2)-1` -/
def P3553571448687336529.Spec : Prop :=
  ∀ n, P3553571448687336529.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P9006180603532128036

`∑[A127968(n+1)-1]`
-/

namespace A129696.P9006180603532128036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P9006180603532128036

namespace A129696

/-- `∑[A127968(n+1)-1]` -/
def P9006180603532128036.Spec : Prop :=
  ∀ n, P9006180603532128036.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P9602290415735158610

`∑[∑[abs(A119282(n+1))]]`
-/

namespace A129696.P9602290415735158610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P9602290415735158610

namespace A129696

/-- `∑[∑[abs(A119282(n+1))]]` -/
def P9602290415735158610.Spec : Prop :=
  ∀ n, P9602290415735158610.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P10779210509283665841

`A167270(n+2)-(n+3)`
-/

namespace A129696.P10779210509283665841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167270 (n + 2) - (n + 3 : ℤ)

end

end A129696.P10779210509283665841

namespace A129696

/-- `A167270(n+2)-(n+3)` -/
def P10779210509283665841.Spec : Prop :=
  ∀ n, P10779210509283665841.a n = A129696 (n + 1)

end A129696

/-! ## A129696.P4223161636297816120

`∑[A000045(n+2)-n%2]`
-/

namespace A129696.P4223161636297816120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129696.P4223161636297816120

namespace A129696

/-- `∑[A000045(n+2)-n%2]` -/
def P4223161636297816120.Spec : Prop :=
  ∀ n, P4223161636297816120.a n = A129696 (n + 1)

end A129696

/-!
# A129697: Sum of isolated primes < 10^n.

The programs for A129697, there is no canonical definition to state claims against.
-/

/-! ## A129697.P5005321628295535439

`A046731(n+1)-A118552(n+1)+5`
-/

namespace A129697.P5005321628295535439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046731 (n + 1) - A118552 (n + 1) + 5

end

end A129697.P5005321628295535439

/-!
# A129698: Arises in patience sorting and its generalizations.

The programs for A129698, there is no canonical definition to state claims against.
-/

/-! ## A129698.P10158330442142098542

`A156689(A065515(n!))`
-/

namespace A129698.P10158330442142098542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A065515 (Nat.factorial n)).toNat

end

end A129698.P10158330442142098542

/-! ## A129698.P2466143227209510720

`A117427(C(A073789(n), 2))`
-/

namespace A129698.P2466143227209510720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (Nat.choose (A073789 n).toNat 2)

end

end A129698.P2466143227209510720

/-! ## A129698.P1264849313587899703

`A117427(C(A171644(n), 2))`
-/

namespace A129698.P1264849313587899703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117427 (Nat.choose (A171644 n).toNat 2)

end

end A129698.P1264849313587899703

/-! ## A129698.P1586538897122855487

`A054404(A071716(n)+1+n)`
-/

namespace A129698.P1586538897122855487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A071716 n + 1 + (n : ℤ)).toNat

end

end A129698.P1586538897122855487

