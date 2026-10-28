import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256200: Number of permutations in S_n that avoid the pattern 42351.

The programs for A256200, there is no canonical definition to state claims against.
-/

/-! ## A256200.P17581981774317362569

`xor(A034432(A133263(n)), A256199(n))`
-/

namespace A256200.P17581981774317362569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034432 (A133263 n).toNat) (A256199 n)

end

end A256200.P17581981774317362569

/-! ## A256200.P822928204278223216

`A014682(2*A256199(n))`
-/

namespace A256200.P822928204278223216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A256199 n).toNat

end

end A256200.P822928204278223216

/-! ## A256200.P17639245210086497021

`A256199(n*A238352(n))`
-/

namespace A256200.P17639245210086497021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256199 ((n : ℤ) * A238352 n).toNat

end

end A256200.P17639245210086497021

/-!
# A256201: Number of permutations in S_n that avoid the pattern 35241.

The programs for A256201, there is no canonical definition to state claims against.
-/

/-! ## A256201.P3890956462521078300

`A256199(n)+A037800(A011815(n))`
-/

namespace A256201.P3890956462521078300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256199 n + A037800 (A011815 n).toNat

end

end A256201.P3890956462521078300

/-! ## A256201.P13494655325108481558

`A256200(n)+A037800(A011815(n))`
-/

namespace A256201.P13494655325108481558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256200 n + A037800 (A011815 n).toNat

end

end A256201.P13494655325108481558

/-! ## A256201.P9835574671708223031

`A014682(A256195(n)+A047889(n))`
-/

namespace A256201.P9835574671708223031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256195 n + A047889 n).toNat

end

end A256201.P9835574671708223031

/-!
# A256202: Number of permutations in S_n that avoid the pattern 53241.

The programs for A256202, there is no canonical definition to state claims against.
-/

/-! ## A256202.P9178628175633153977

`A256201(n)+A037800(A011815(n))`
-/

namespace A256202.P9178628175633153977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256201 n + A037800 (A011815 n).toNat

end

end A256202.P9178628175633153977

/-! ## A256202.P16979120453983735314

`A256199(n)+A091009(A127986(n))`
-/

namespace A256202.P16979120453983735314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256199 n + A091009 (A127986 n).toNat

end

end A256202.P16979120453983735314

/-! ## A256202.P16004147296047007974

`A256201(n)+A018843(A291896(n))`
-/

namespace A256202.P16004147296047007974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256201 n + A018843 (A291896 n).toNat

end

end A256202.P16004147296047007974

/-! ## A256202.P16247084859612299093

`A256201(n)+A037801(A273695(n))`
-/

namespace A256202.P16247084859612299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256201 n + A037801 (A273695 n).toNat

end

end A256202.P16247084859612299093

/-!
# A256203: Number of permutations in S_n that avoid the pattern 43251.

The programs for A256203, there is no canonical definition to state claims against.
-/

/-! ## A256203.P12069029539350154040

`A256205(A004848(n+1))-char[8]-char[8]`
-/

namespace A256203.P12069029539350154040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 (A004848 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256203.P12069029539350154040

/-! ## A256203.P16210055523799043330

`A256204(n)+A178798(A165655(n))`
-/

namespace A256203.P16210055523799043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256204 n + A178798 (A165655 n).toNat

end

end A256203.P16210055523799043330

/-! ## A256203.P17098772762683554548

`A256204(n)-A023969(A011815(n))`
-/

namespace A256203.P17098772762683554548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256204 n - A023969 (A011815 n).toNat

end

end A256203.P17098772762683554548

/-! ## A256203.P12161017715412177580

`A256205(n)-A037800(A011815(n))`
-/

namespace A256203.P12161017715412177580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 n - A037800 (A011815 n).toNat

end

end A256203.P12161017715412177580

/-! ## A256203.P3861079620417305352

`A116485(n)-A167688(A071731(n))`
-/

namespace A256203.P3861079620417305352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116485 n - A167688 (A071731 n).toNat

end

end A256203.P3861079620417305352

/-!
# A256204: Number of permutations in S_n that avoid the pattern 32541.

The programs for A256204, there is no canonical definition to state claims against.
-/

/-! ## A256204.P16513825806873641200

`A256205(A004848(n+1))-char[8]`
-/

namespace A256204.P16513825806873641200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 (A004848 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256204.P16513825806873641200

/-! ## A256204.P6229156931232360633

`A256203(n)+A023969(A011815(n))`
-/

namespace A256204.P6229156931232360633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256203 n + A023969 (A011815 n).toNat

end

end A256204.P6229156931232360633

/-! ## A256204.P8478732475654350007

`A256203(n)+A023969(A084057(n))`
-/

namespace A256204.P8478732475654350007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256203 n + A023969 (A084057 n).toNat

end

end A256204.P8478732475654350007

/-! ## A256204.P3161261828298666522

`A256202(n)+A112689(A011815(n))`
-/

namespace A256204.P3161261828298666522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256202 n + A112689 (A011815 n).toNat

end

end A256204.P3161261828298666522

/-! ## A256204.P12155267657114993520

`A256203(n)+A107846(A024718(n))`
-/

namespace A256204.P12155267657114993520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256203 n + A107846 (A024718 n).toNat

end

end A256204.P12155267657114993520

/-!
# A256205: Number of permutations in S_n that avoid the pattern 34215.

The programs for A256205, there is no canonical definition to state claims against.
-/

/-! ## A256205.P4008782678720636960

`A256204(n)+A023969(A011815(n))`
-/

namespace A256205.P4008782678720636960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256204 n + A023969 (A011815 n).toNat

end

end A256205.P4008782678720636960

/-! ## A256205.P10861009414332213601

`A256203(n)+A037800(A011815(n))`
-/

namespace A256205.P10861009414332213601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256203 n + A037800 (A011815 n).toNat

end

end A256205.P10861009414332213601

/-! ## A256205.P9741156330109883861

`A256204(n)+A023969(A084057(n))`
-/

namespace A256205.P9741156330109883861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256204 n + A023969 (A084057 n).toNat

end

end A256205.P9741156330109883861

/-! ## A256205.P5105159202120273101

`A116485(n)-A023969(A011815(n))`
-/

namespace A256205.P5105159202120273101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116485 n - A023969 (A011815 n).toNat

end

end A256205.P5105159202120273101

/-! ## A256205.P5089271106242615935

`A116485(n)-A275451(A008279(2*(n+1)))`
-/

namespace A256205.P5089271106242615935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116485 n - A275451 (A008279 (2 * (n + 1))).toNat

end

end A256205.P5089271106242615935

/-!
# A256206: Number of permutations in S_n that avoid the pattern 42315.

The programs for A256206, there is no canonical definition to state claims against.
-/

/-! ## A256206.P11060666219712078432

`char[8]+A256205(A004848(n+1))+char[8]`
-/

namespace A256206.P11060666219712078432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A256205 (A004848 (n + 1)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A256206.P11060666219712078432

/-! ## A256206.P17903930638264511180

`A116485(n)+A023969(A011815(n))`
-/

namespace A256206.P17903930638264511180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116485 n + A023969 (A011815 n).toNat

end

end A256206.P17903930638264511180

/-! ## A256206.P174997771473428420

`A116485(n)+A023969(A084057(n))`
-/

namespace A256206.P174997771473428420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116485 n + A023969 (A084057 n).toNat

end

end A256206.P174997771473428420

/-! ## A256206.P16054272130403077338

`A122840(A000110(n))+A116485(n)`
-/

namespace A256206.P16054272130403077338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A000110 n).toNat + A116485 n

end

end A256206.P16054272130403077338

/-! ## A256206.P10708847077188488964

`A116485(n)+A007814(A130463(n))`
-/

namespace A256206.P10708847077188488964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116485 n + A007814 (A130463 n).toNat

end

end A256206.P10708847077188488964

/-!
# A256207: Number of permutations in S_n that avoid the pattern 53421.

The programs for A256207, there is no canonical definition to state claims against.
-/

/-! ## A256207.P2789633548594007743

`A256208(n)-A010894(A291896(n))`
-/

namespace A256207.P2789633548594007743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256208 n - A010894 ((A291896 n).toNat + 21)

end

end A256207.P2789633548594007743

/-! ## A256207.P3979627507541474471

`A256208(n)-A010894(A266400(n+1))`
-/

namespace A256207.P3979627507541474471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256208 n - A010894 ((A266400 (n + 1)).toNat + 21)

end

end A256207.P3979627507541474471

/-! ## A256207.P18421989546460567256

`A256208(n)-A305212(A055523(n+3))`
-/

namespace A256207.P18421989546460567256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256208 n - A305212 (A055523 (n + 3)).toNat

end

end A256207.P18421989546460567256

/-!
# A256208: Number of permutations in S_n that avoid the pattern 52341.

The programs for A256208, there is no canonical definition to state claims against.
-/

/-! ## A256208.P6552506175497572201

`A256207(n)+A010894(A291896(n))`
-/

namespace A256208.P6552506175497572201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256207 n + A010894 ((A291896 n).toNat + 21)

end

end A256208.P6552506175497572201

/-! ## A256208.P7307712340929161924

`A256207(n)+A010894(A266400(n+1))`
-/

namespace A256208.P7307712340929161924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256207 n + A010894 ((A266400 (n + 1)).toNat + 21)

end

end A256208.P7307712340929161924

/-! ## A256208.P10388262136256947113

`A256207(A004848(n+1))`
-/

namespace A256208.P10388262136256947113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256207 (A004848 (n + 1)).toNat

end

end A256208.P10388262136256947113

/-! ## A256208.P4252880731116375836

`A256207(n*A238352(n))`
-/

namespace A256208.P4252880731116375836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256207 ((n : ℤ) * A238352 n).toNat

end

end A256208.P4252880731116375836

/-!
# A256209: Coefficients of mock modular form H_2^(4) (divided by 16).

The programs for A256209, there is no canonical definition to state claims against.
-/

/-! ## A256209.P1953850674643246421

`A256052(n)/8`
-/

namespace A256209.P1953850674643246421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256052 n : ℚ) / 8

end

end A256209.P1953850674643246421

/-! ## A256209.P8027356076089614414

`A000005(A238501(n+1))*A153176(4*n+3)/8`
-/

namespace A256209.P8027356076089614414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A238501 (n + 1)).toNat * A153176 (4 * n + 3) : ℚ) / 8

end

end A256209.P8027356076089614414

/-! ## A256209.P14408136386910120890

`A117358(A256052(n))`
-/

namespace A256209.P14408136386910120890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A256052 n).toNat

end

end A256209.P14408136386910120890

/-! ## A256209.P927582319619103167

`A006085(A256052(n))`
-/

namespace A256209.P927582319619103167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A256052 n).toNat

end

end A256209.P927582319619103167

/-!
# A256212: Indices of prime terms in A255004.

The programs for A256212, there is no canonical definition to state claims against.
-/

/-! ## A256212.P10812247560757701822

`eq[1, A001222(A255004(n+1))]+1`
-/

namespace A256212.P10812247560757701822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255004 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256212.P10812247560757701822

/-! ## A256212.P7828786107565656557

`record[(n+2)/A001222(A255004(n+2))]`
-/

namespace A256212.P7828786107565656557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A255004 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256212.P7828786107565656557

/-! ## A256212.P10210707461506214017

`eq[1, A304465(A255004(A028310(n)))]`
-/

namespace A256212.P10210707461506214017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A255004 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256212.P10210707461506214017

/-!
# A256213: Indices of prime terms in A254077.

The programs for A256213, there is no canonical definition to state claims against.
-/

/-! ## A256213.P14723375677201496272

`eq[2, A000005(A254077(n+1))]+1`
-/

namespace A256213.P14723375677201496272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254077 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256213.P14723375677201496272

/-! ## A256213.P6604857600661227644

`eq[1, A056595(A254077(n+1)²)]+1`
-/

namespace A256213.P6604857600661227644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A254077 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256213.P6604857600661227644

/-!
# A256214: Indices of prime terms in A255582.

The programs for A256214, there is no canonical definition to state claims against.
-/

/-! ## A256214.P16122574656228156692

`A255479(p?[comp[n²]])`
-/

namespace A256214.P16122574656228156692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A256214.P16122574656228156692

/-! ## A256214.P4532509111857158287

`A255479(A255483(∑[n]))`
-/

namespace A256214.P4532509111857158287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (A255483 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A256214.P4532509111857158287

/-! ## A256214.P560955289064753097

`A255479(Δ[A007504(n)])`
-/

namespace A256214.P560955289064753097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (f1 (n + 1) - f1 n).toNat

end

end A256214.P560955289064753097

/-! ## A256214.P12782751921119723810

`A255479(record[A051698(n)])`
-/

namespace A256214.P12782751921119723810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256214.P12782751921119723810

/-! ## A256214.P1986768539883272601

`A255479(A000040(n+1))`
-/

namespace A256214.P1986768539883272601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (A000040 (n + 1)).toNat

end

end A256214.P1986768539883272601

/-! ## A256214.P3502044690354799739

`A255479(A095320(n+1))`
-/

namespace A256214.P3502044690354799739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (A095320 (n + 1)).toNat

end

end A256214.P3502044690354799739

/-! ## A256214.P3504732764774646569

`A255479(A216883(n+1))`
-/

namespace A256214.P3504732764774646569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (A216883 (n + 1)).toNat

end

end A256214.P3504732764774646569

/-! ## A256214.P13096365424443010908

`A255479(A216884(n+1))`
-/

namespace A256214.P13096365424443010908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (A216884 (n + 1)).toNat

end

end A256214.P13096365424443010908

/-! ## A256214.P17622390209789799811

`A255479(A216885(n+1))`
-/

namespace A256214.P17622390209789799811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (A216885 (n + 1)).toNat

end

end A256214.P17622390209789799811

/-!
# A256215: Triangle read by rows: T(n,k) = (n-1)!*n^(k-1)*binomial(n,k)/(k-1)!.

The programs for A256215, the canonical program `A256215.P13305516235373946351` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256215 has offset 1).

The definition of A256215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256215.P13305516235373946351

`row(n)!*(row(n)+1)^col(n)*C(row(n)+1, col(n)+1)/col(n)!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256215

/-- `row(n)!*(row(n)+1)^col(n)*C(row(n)+1, col(n)+1)/col(n)!` -/
def P13305516235373946351.Spec : Prop :=
  ∀ n, P13305516235373946351.a n = (A256215 (n + 1) : ℚ)

end A256215

/-! ## A256215.P7009847997766909287

`abs(A066667(n)*A076112(n+1))`
-/

namespace A256215.P7009847997766909287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n * A076112 (n + 1)|

end

end A256215.P7009847997766909287

namespace A256215

/-- `abs(A066667(n)*A076112(n+1))` -/
def P7009847997766909287.Spec : Prop :=
  ∀ n, P7009847997766909287.a n = A256215 (n + 1)

end A256215

/-! ## A256215.P18128019948333343211

`A076112(n+1)*A105278(n+1)`
-/

namespace A256215.P18128019948333343211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A105278 (n + 1)

end

end A256215.P18128019948333343211

namespace A256215

/-- `A076112(n+1)*A105278(n+1)` -/
def P18128019948333343211.Spec : Prop :=
  ∀ n, P18128019948333343211.a n = A256215 (n + 1)

end A256215

/-! ## A256215.P5797491651800268560

`A139526(n+2)*A173333(n+1)`
-/

namespace A256215.P5797491651800268560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139526 (n + 2) * A173333 (n + 1)

end

end A256215.P5797491651800268560

namespace A256215

/-- `A139526(n+2)*A173333(n+1)` -/
def P5797491651800268560.Spec : Prop :=
  ∀ n, P5797491651800268560.a n = A256215 (n + 1)

end A256215

/-! ## A256215.P13727710143295636911

`A049323(n)*A094587(A007401(n+1))`
-/

namespace A256215.P13727710143295636911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049323 n * A094587 (A007401 (n + 1)).toNat

end

end A256215.P13727710143295636911

namespace A256215

/-- `A049323(n)*A094587(A007401(n+1))` -/
def P13727710143295636911.Spec : Prop :=
  ∀ n, P13727710143295636911.a n = A256215 (n + 1)

end A256215

/-!
# A256216: a(n) = A053656(n) - A000011(n).

The programs for A256216, the canonical program `A256216.P6411215166490644162` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256216 has offset 1).

The definition of A256216 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, A053656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256216.P6411215166490644162

`A053656(n+1)-A000011(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A256216

/-- `A053656(n+1)-A000011(n+1)` -/
def P6411215166490644162.Spec : Prop :=
  ∀ n, P6411215166490644162.a n = A256216 (n + 1)

theorem P6411215166490644162.correct : P6411215166490644162.Spec := by
  intro n
  simp only [A256216, Nat.add_sub_cancel]

end A256216

/-! ## A256216.P280371862893549029

`A007147(n+1)-A016116(n)`
-/

namespace A256216.P280371862893549029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 1) - A016116 n

end

end A256216.P280371862893549029

namespace A256216

/-- `A007147(n+1)-A016116(n)` -/
def P280371862893549029.Spec : Prop :=
  ∀ n, P280371862893549029.a n = A256216 (n + 1)

end A256216

/-! ## A256216.P16231094082560459187

`A000011(n+1)-A256217(n+1)`
-/

namespace A256216.P16231094082560459187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) - A256217 (n + 1)

end

end A256216.P16231094082560459187

namespace A256216

/-- `A000011(n+1)-A256217(n+1)` -/
def P16231094082560459187.Spec : Prop :=
  ∀ n, P16231094082560459187.a n = A256216 (n + 1)

theorem P16231094082560459187.correct : P16231094082560459187.Spec := by
  intro n
  simp only [A256216, Nat.add_sub_cancel, A256216.P16231094082560459187.a, A256216.P6411215166490644162.a, A000011, A000011.P276434732339544012.a, A053656, A053656.P15777476116109761211.a, A256217, A256217.P4640912278790756071.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A029744, A029744.P1115822501332250061.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256216

/-! ## A256216.P7368066925110562993

`A000016(n+1)-A007147(n+1)`
-/

namespace A256216.P7368066925110562993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) - A007147 (n + 1)

end

end A256216.P7368066925110562993

namespace A256216

/-- `A000016(n+1)-A007147(n+1)` -/
def P7368066925110562993.Spec : Prop :=
  ∀ n, P7368066925110562993.a n = A256216 (n + 1)

end A256216

/-! ## A256216.P6754251657436055450

`A059076(n+1)-A059053(n+1)`
-/

namespace A256216.P6754251657436055450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) - A059053 (n + 1)

end

end A256216.P6754251657436055450

namespace A256216

/-- `A059076(n+1)-A059053(n+1)` -/
def P6754251657436055450.Spec : Prop :=
  ∀ n, P6754251657436055450.a n = A256216 (n + 1)

end A256216

/-! ## A256216.P12354862748814984392

`A000011(n+1)+A000016(n+1)-A000029(n+1)`
-/

namespace A256216.P12354862748814984392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A000016 (n + 1) - A000029 (n + 1))

end

end A256216.P12354862748814984392

namespace A256216

/-- `A000011(n+1)+A000016(n+1)-A000029(n+1)` -/
def P12354862748814984392.Spec : Prop :=
  ∀ n, P12354862748814984392.a n = A256216 (n + 1)

end A256216

/-! ## A256216.P4032411587406150299

`A000011(n+1)+A059076(n+1)-A000013(n+1)`
-/

namespace A256216.P4032411587406150299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A059076 (n + 1) - A000013 (n + 1))

end

end A256216.P4032411587406150299

namespace A256216

/-- `A000011(n+1)+A059076(n+1)-A000013(n+1)` -/
def P4032411587406150299.Spec : Prop :=
  ∀ n, P4032411587406150299.a n = A256216 (n + 1)

end A256216

/-! ## A256216.P11881963373681068022

`A000031(n+1)-(A007147(n+1)+A000013(n+1))`
-/

namespace A256216.P11881963373681068022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A007147 (n + 1) + A000013 (n + 1))

end

end A256216.P11881963373681068022

namespace A256216

/-- `A000031(n+1)-(A007147(n+1)+A000013(n+1))` -/
def P11881963373681068022.Spec : Prop :=
  ∀ n, P11881963373681068022.a n = A256216 (n + 1)

end A256216

/-!
# A256217: a(n) = A000011(n) - A256216(n).

The programs for A256217, the canonical program `A256217.P4640912278790756071` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256217 has offset 1).

The definition of A256217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, A256216, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256217.P4640912278790756071

`A000011(n+1)-A256216(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A256217

/-- `A000011(n+1)-A256216(n+1)` -/
def P4640912278790756071.Spec : Prop :=
  ∀ n, P4640912278790756071.a n = A256217 (n + 1)

theorem P4640912278790756071.correct : P4640912278790756071.Spec := by
  intro n
  simp only [A256217, Nat.add_sub_cancel]

end A256217

/-! ## A256217.P1386707433449537384

`A000029(n+1)-A000016(n+1)`
-/

namespace A256217.P1386707433449537384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A000016 (n + 1)

end

end A256217.P1386707433449537384

namespace A256217

/-- `A000029(n+1)-A000016(n+1)` -/
def P1386707433449537384.Spec : Prop :=
  ∀ n, P1386707433449537384.a n = A256217 (n + 1)

end A256217

/-! ## A256217.P2836567805185172022

`A000013(n+1)-A059076(n+1)`
-/

namespace A256217.P2836567805185172022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) - A059076 (n + 1)

end

end A256217.P2836567805185172022

namespace A256217

/-- `A000013(n+1)-A059076(n+1)` -/
def P2836567805185172022.Spec : Prop :=
  ∀ n, P2836567805185172022.a n = A256217 (n + 1)

end A256217

/-! ## A256217.P15837753213352577847

`A053656(n+1)-2*A256216(n+1)`
-/

namespace A256217.P15837753213352577847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 (n + 1) - 2 * A256216 (n + 1)

end

end A256217.P15837753213352577847

namespace A256217

/-- `A053656(n+1)-2*A256216(n+1)` -/
def P15837753213352577847.Spec : Prop :=
  ∀ n, P15837753213352577847.a n = A256217 (n + 1)

theorem P15837753213352577847.correct : P15837753213352577847.Spec := by
  intro n
  simp only [A256217, Nat.add_sub_cancel, A256217.P15837753213352577847.a, A256217.P4640912278790756071.a, A000011, A000011.P276434732339544012.a, A053656, A053656.P15777476116109761211.a, A256216, A256216.P6411215166490644162.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A029744, A029744.P1115822501332250061.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256217

/-! ## A256217.P2374730986450182982

`A000011(n+1)+A000011(n+1)-A053656(n+1)`
-/

namespace A256217.P2374730986450182982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A000011 (n + 1) - A053656 (n + 1))

end

end A256217.P2374730986450182982

namespace A256217

/-- `A000011(n+1)+A000011(n+1)-A053656(n+1)` -/
def P2374730986450182982.Spec : Prop :=
  ∀ n, P2374730986450182982.a n = A256217 (n + 1)

theorem P2374730986450182982.correct : P2374730986450182982.Spec := by
  intro n
  simp only [A256217, Nat.add_sub_cancel, A256217.P2374730986450182982.a, A256217.P4640912278790756071.a, A000011, A000011.P276434732339544012.a, A053656, A053656.P15777476116109761211.a, A256216, A256216.P6411215166490644162.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000029, A000029.P13945956715463538310.a, A016116, A016116.P661627231399665482.a, A029744, A029744.P1115822501332250061.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256217

/-! ## A256217.P1325358544291025336

`A000011(n+1)+A059053(n+1)-A059076(n+1)`
-/

namespace A256217.P1325358544291025336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A059053 (n + 1) - A059076 (n + 1))

end

end A256217.P1325358544291025336

namespace A256217

/-- `A000011(n+1)+A059053(n+1)-A059076(n+1)` -/
def P1325358544291025336.Spec : Prop :=
  ∀ n, P1325358544291025336.a n = A256217 (n + 1)

end A256217

/-! ## A256217.P3174831204322885932

`A000013(n+1)+A000029(n+1)-A000031(n+1)`
-/

namespace A256217.P3174831204322885932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) + (A000029 (n + 1) - A000031 (n + 1))

end

end A256217.P3174831204322885932

namespace A256217

/-- `A000013(n+1)+A000029(n+1)-A000031(n+1)` -/
def P3174831204322885932.Spec : Prop :=
  ∀ n, P3174831204322885932.a n = A256217 (n + 1)

end A256217

/-!
# A256218: The sequence Q(10^n) arising in connection with the study of a generalized Benford's law for squarefree integer powers.

The programs for A256218, there is no canonical definition to state claims against.
-/

/-! ## A256218.P6949680668816581264

`A013928(A066557(n+1))-A000203(n+1)`
-/

namespace A256218.P6949680668816581264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A066557 (n + 1)).toNat - A000203 (n + 1)

end

end A256218.P6949680668816581264

/-!
# A256219: Indices of prime terms in A121216.

The programs for A256219, there is no canonical definition to state claims against.
-/

/-! ## A256219.P5001934336738901546

`A256399(n)+a(n-1)` with `a(0)=2`
-/

namespace A256219.P5001934336738901546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A256399 n + a (n - 1)

end

end A256219.P5001934336738901546

/-! ## A256219.P7170211582431998016

`A225047(Δ[A007504(n)])`
-/

namespace A256219.P7170211582431998016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (n + 1) - f1 n).toNat

end

end A256219.P7170211582431998016

/-! ## A256219.P6935075835386062058

`A225047(A000040(n+1))`
-/

namespace A256219.P6935075835386062058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A000040 (n + 1)).toNat

end

end A256219.P6935075835386062058

/-! ## A256219.P5348173599672452212

`A225047(A008578(n+2))`
-/

namespace A256219.P5348173599672452212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A008578 (n + 2)).toNat

end

end A256219.P5348173599672452212

/-! ## A256219.P7132930897492624363

`A225047(A182986(n+2))`
-/

namespace A256219.P7132930897492624363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A182986 (n + 2)).toNat

end

end A256219.P7132930897492624363

/-! ## A256219.P763746791087789758

`A225047(sqrt(A001248(n+1)))`
-/

namespace A256219.P763746791087789758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A256219.P763746791087789758

/-! ## A256219.P17956647136175872022

`A225047(record[A006530(n+2)])`
-/

namespace A256219.P17956647136175872022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256219.P17956647136175872022

/-! ## A256219.P6300345848114104993

`A225047(record[A014963(n+2)])`
-/

namespace A256219.P6300345848114104993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256219.P6300345848114104993

/-! ## A256219.P15963920453530880780

`A225047(record[A020639(n+2)])`
-/

namespace A256219.P15963920453530880780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256219.P15963920453530880780

/-! ## A256219.P9445236193131168598

`A225047(A006093(n+1)+1)`
-/

namespace A256219.P9445236193131168598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A006093 (n + 1) + 1).toNat

end

end A256219.P9445236193131168598

/-! ## A256219.P4246089904501253536

`A225047(root(A001248(n+1), 2))`
-/

namespace A256219.P4246089904501253536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (SequenceMachineLib.roundAway ((A001248 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A256219.P4246089904501253536

/-! ## A256219.P12931603817501017402

`A225047(record[A000010(n+1)+1])`
-/

namespace A256219.P12931603817501017402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256219.P12931603817501017402

/-! ## A256219.P603000356741484454

`A225047(A007504(n+1)-A007504(n))`
-/

namespace A256219.P603000356741484454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A007504 (n + 1) - A007504 n).toNat

end

end A256219.P603000356741484454

/-! ## A256219.P11793824806460749568

`A225047(p?[A001057(n)])`
-/

namespace A256219.P11793824806460749568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256219.P11793824806460749568

/-!
# A256224: a(n) = n if n <= 3, otherwise a(n) is the smallest number not occurring earlier such that gcd(a(n-2), a(n)) is a prime or a power of a prime (but not 1) and gcd(a(n-1), a(n))=1.

The programs for A256224, there is no canonical definition to state claims against.
-/

/-! ## A256224.P394818348156171098

`A349798(A000041(n))+A098550(n+1)`
-/

namespace A256224.P394818348156171098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A000041 n).toNat + A098550 (n + 1)

end

end A256224.P394818348156171098

/-! ## A256224.P14874865147170137331

`A349798(A104502(n))+A098550(n+1)`
-/

namespace A256224.P14874865147170137331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A104502 n).toNat + A098550 (n + 1)

end

end A256224.P14874865147170137331

/-! ## A256224.P7749825155313478932

`A366076(A279474(n))+A098550(n+1)`
-/

namespace A256224.P7749825155313478932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366076 (A279474 n).toNat + A098550 (n + 1)

end

end A256224.P7749825155313478932

/-! ## A256224.P13132286665792169965

`A098550(n+1)-A256974(A097331(n))`
-/

namespace A256224.P13132286665792169965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1) - A256974 (A097331 n).toNat

end

end A256224.P13132286665792169965

/-! ## A256224.P4813768341854790606

`A335585(n+1)-A256974(A097331(n))`
-/

namespace A256224.P4813768341854790606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335585 (n + 1) - A256974 (A097331 n).toNat

end

end A256224.P4813768341854790606

/-!
# A256225: Number of partitions of 5n into 5 parts.

The programs for A256225, the canonical program `A256225.P2382752457233259509` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256225 has offset 0).

The definition of A256225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256225.P2382752457233259509

`ogf((x+5x^2+16x^3+25x^4+31x^5+25x^6+16x^7+5x^8+x^9)/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256225

/-- `ogf((x+5x^2+16x^3+25x^4+31x^5+25x^6+16x^7+5x^8+x^9)/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))` -/
def P2382752457233259509.Spec : Prop :=
  ∀ n, P2382752457233259509.a n = A256225 n

theorem P2382752457233259509.correct : P2382752457233259509.Spec := by
  intro n
  simp only [A256225]

end A256225

/-! ## A256225.P12887090846163917711

`A256235(n)/A008706(n)`
-/

namespace A256225.P12887090846163917711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256235 n : ℚ) / (A008706 n : ℚ)

end

end A256225.P12887090846163917711

namespace A256225

/-- `A256235(n)/A008706(n)` -/
def P12887090846163917711.Spec : Prop :=
  ∀ n, P12887090846163917711.a n = (A256225 n : ℚ)

end A256225

/-! ## A256225.P8559253772674360462

`A026811(5*n)`
-/

namespace A256225.P8559253772674360462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (5 * n)

end

end A256225.P8559253772674360462

namespace A256225

/-- `A026811(5*n)` -/
def P8559253772674360462.Spec : Prop :=
  ∀ n, P8559253772674360462.a n = A256225 n

end A256225

/-! ## A256225.P13271293819429123962

`record[A026811(gcd(5, n+1)+n+1)]`
-/

namespace A256225.P13271293819429123962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (Nat.gcd 5 (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256225.P13271293819429123962

namespace A256225

/-- `record[A026811(gcd(5, n+1)+n+1)]` -/
def P13271293819429123962.Spec : Prop :=
  ∀ n, P13271293819429123962.a n = A256225 n

end A256225

/-! ## A256225.P636631820041869293

`∑[A026810(A008706(n)-1)]`
-/

namespace A256225.P636631820041869293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008706 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256225.P636631820041869293

namespace A256225

/-- `∑[A026810(A008706(n)-1)]` -/
def P636631820041869293.Spec : Prop :=
  ∀ n, P636631820041869293.a n = A256225 n

end A256225

/-! ## A256225.P2875159827858942939

`∑[A026810(A008458(n)-(n+1))]`
-/

namespace A256225.P2875159827858942939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008458 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256225.P2875159827858942939

namespace A256225

/-- `∑[A026810(A008458(n)-(n+1))]` -/
def P2875159827858942939.Spec : Prop :=
  ∀ n, P2875159827858942939.a n = A256225 n

end A256225

/-! ## A256225.P10983566022235603826

`∑[A026810(A008458(n)-1-n)]`
-/

namespace A256225.P10983566022235603826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008458 n - 1 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256225.P10983566022235603826

namespace A256225

/-- `∑[A026810(A008458(n)-1-n)]` -/
def P10983566022235603826.Spec : Prop :=
  ∀ n, P10983566022235603826.a n = A256225 n

end A256225

/-! ## A256225.P9625122454449751605

`A266768(A370532(n+1))`
-/

namespace A256225.P9625122454449751605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (A370532 (n + 1)).toNat

end

end A256225.P9625122454449751605

namespace A256225

/-- `A266768(A370532(n+1))` -/
def P9625122454449751605.Spec : Prop :=
  ∀ n, P9625122454449751605.a n = A256225 n

end A256225

/-! ## A256225.P15431373799465041598

`A288166(20*n)`
-/

namespace A256225.P15431373799465041598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (20 * n)

end

end A256225.P15431373799465041598

namespace A256225

/-- `A288166(20*n)` -/
def P15431373799465041598.Spec : Prop :=
  ∀ n, P15431373799465041598.a n = A256225 n

end A256225

/-! ## A256225.P9731510998286668298

`record[A288166(A195140(n))]`
-/

namespace A256225.P9731510998286668298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (A195140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256225.P9731510998286668298

namespace A256225

/-- `record[A288166(A195140(n))]` -/
def P9731510998286668298.Spec : Prop :=
  ∀ n, P9731510998286668298.a n = A256225 n

end A256225

/-!
# A256226: Number of partitions of 6n into 6 parts.

The programs for A256226, the canonical program `A256226.P14852475774241246882` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256226 has offset 0).

The definition of A256226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256226.P14852475774241246882

`ogf((x+7x^2+19x^3+22x^4+21x^5+21x^6+14x^7+3x^8)/(1-4x+5x^2-5x^4+3x^5+3x^6-5x^7+5x^9-4x^10+x^11))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256226

/-- `ogf((x+7x^2+19x^3+22x^4+21x^5+21x^6+14x^7+3x^8)/(1-4x+5x^2-5x^4+3x^5+3x^6-5x^7+5x^9-4x^10+x^11))` -/
def P14852475774241246882.Spec : Prop :=
  ∀ n, P14852475774241246882.a n = A256226 n

theorem P14852475774241246882.correct : P14852475774241246882.Spec := by
  intro n
  simp only [A256226]

end A256226

/-! ## A256226.P12218525599016582465

`A256239(n)/A008458(n)`
-/

namespace A256226.P12218525599016582465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256239 n : ℚ) / (A008458 n : ℚ)

end

end A256226.P12218525599016582465

namespace A256226

/-- `A256239(n)/A008458(n)` -/
def P12218525599016582465.Spec : Prop :=
  ∀ n, P12218525599016582465.a n = (A256226 n : ℚ)

end A256226

/-! ## A256226.P5516758041017410339

`A256315(2*n)`
-/

namespace A256226.P5516758041017410339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 (2 * n)

end

end A256226.P5516758041017410339

namespace A256226

/-- `A256315(2*n)` -/
def P5516758041017410339.Spec : Prop :=
  ∀ n, P5516758041017410339.a n = A256226 n

end A256226

/-! ## A256226.P30857254482921298

`record[A256315(and(n, n+1))]`
-/

namespace A256226.P30857254482921298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256226.P30857254482921298

namespace A256226

/-- `record[A256315(and(n, n+1))]` -/
def P30857254482921298.Spec : Prop :=
  ∀ n, P30857254482921298.a n = A256226 n

end A256226

/-! ## A256226.P5476580691161814419

`record[A256315(gcd(n, A000982(n)))]`
-/

namespace A256226.P5476580691161814419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 (Int.gcd (n : ℤ) (A000982 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256226.P5476580691161814419

namespace A256226

/-- `record[A256315(gcd(n, A000982(n)))]` -/
def P5476580691161814419.Spec : Prop :=
  ∀ n, P5476580691161814419.a n = A256226 n

end A256226

/-! ## A256226.P17111759333727438485

`A256310(3*n)`
-/

namespace A256226.P17111759333727438485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256310 (3 * n)

end

end A256226.P17111759333727438485

namespace A256226

/-- `A256310(3*n)` -/
def P17111759333727438485.Spec : Prop :=
  ∀ n, P17111759333727438485.a n = A256226 n

end A256226

/-! ## A256226.P3087778384635070977

`A026812(6*n)`
-/

namespace A256226.P3087778384635070977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (6 * n)

end

end A256226.P3087778384635070977

namespace A256226

/-- `A026812(6*n)` -/
def P3087778384635070977.Spec : Prop :=
  ∀ n, P3087778384635070977.a n = A256226 n

end A256226

/-!
# A256227: Naught-y numbers (A011540) that after removing all zeros become zeroless primes (A038618).

The programs for A256227, there is no canonical definition to state claims against.
-/

/-! ## A256227.P5448452558984238708

`A057169(p?[A056819(n+1)])`
-/

namespace A256227.P5448452558984238708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256227.P5448452558984238708

/-! ## A256227.P3347763813695555715

`A209932(p?[A210040(n+1)])`
-/

namespace A256227.P3347763813695555715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256227.P3347763813695555715

/-! ## A256227.P4898079066579129624

`filter[A111347(n+1), A217096(#)]`
-/

namespace A256227.P4898079066579129624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A256227.P4898079066579129624

/-! ## A256227.P15115627398836091504

`∩[A011540(n+1), A111347(n+1)]`
-/

namespace A256227.P15115627398836091504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256227.P15115627398836091504

/-!
# A256228: Numbers k such that 4*10^k - 21 is prime.

The programs for A256228, there is no canonical definition to state claims against.
-/

/-! ## A256228.P1287384835362699168

`record[A326764(A100953(n))]`
-/

namespace A256228.P1287384835362699168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326764 (A100953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256228.P1287384835362699168

/-! ## A256228.P8768091907762927378

`record[A319608(n+1)/A174435(n+1)]`
-/

namespace A256228.P8768091907762927378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319608 (n + 1) : ℚ) / (A174435 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256228.P8768091907762927378

/-! ## A256228.P7516340201917655324

`eq[A020985(n), A105700(A007387(n+1))]`
-/

namespace A256228.P7516340201917655324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256228.P7516340201917655324

/-!
# A256229: 

The programs for A256229, there is no canonical definition to state claims against.
-/

/-! ## A256229.P17934221077046958641

`and(A075877(n+1), A164291(n+2))`
-/

namespace A256229.P17934221077046958641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075877 (n + 1)) (A164291 (n + 2))

end

end A256229.P17934221077046958641

/-! ## A256229.P12773075074663863383

`A171386(A320892(n+1))+A075877(n+1)`
-/

namespace A256229.P12773075074663863383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (A320892 (n + 1)).toNat + A075877 (n + 1)

end

end A256229.P12773075074663863383

/-! ## A256229.P6583262382164328711

`A075877(n+1)+A008966(A068997(3*n+5))`
-/

namespace A256229.P6583262382164328711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (n + 1) + A008966 (A068997 (3 * n + 5)).toNat

end

end A256229.P6583262382164328711

/-! ## A256229.P6092740076391748758

`or(A000007(A352105(n+1)), A075877(n+1))`
-/

namespace A256229.P6092740076391748758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A352105 (n + 1)).toNat) (A075877 (n + 1))

end

end A256229.P6092740076391748758

/-! ## A256229.P14846167115842788803

`and(A060160(n+1), A075877(n+1))`
-/

namespace A256229.P14846167115842788803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A075877 (n + 1))

end

end A256229.P14846167115842788803

/-! ## A256229.P12821264309983369229

`A075877(n+1)*A174965(A007372(n+1))`
-/

namespace A256229.P12821264309983369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (n + 1) * A174965 (A007372 (n + 1)).toNat

end

end A256229.P12821264309983369229

/-! ## A256229.P4294774473772325153

`A075877(n+1)+A063962(A051635(3*n+2))`
-/

namespace A256229.P4294774473772325153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (n + 1) + A063962 (A051635 (3 * n + 2)).toNat

end

end A256229.P4294774473772325153

/-! ## A256229.P1548970200889558354

`A075877(n+1)-A010051(A075867(n+1))`
-/

namespace A256229.P1548970200889558354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (n + 1) - A010051 (A075867 (n + 1)).toNat

end

end A256229.P1548970200889558354

/-! ## A256229.P9915647574257586509

`A075877(n+1)%A003347(A244378(n+1))`
-/

namespace A256229.P9915647574257586509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075877 (n + 1)) (A003347 (A244378 (n + 1)).toNat)

end

end A256229.P9915647574257586509

/-! ## A256229.P6586627971267694194

`A001221(A038580(n+1))*A075877(n+1)`
-/

namespace A256229.P6586627971267694194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038580 (n + 1)).toNat * A075877 (n + 1)

end

end A256229.P6586627971267694194

/-! ## A256229.P11202096982338123948

`A075877(n+1)+A000007(A352105(n+5))`
-/

namespace A256229.P11202096982338123948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (n + 1) + A000007 (A352105 (n + 5)).toNat

end

end A256229.P11202096982338123948

/-! ## A256229.P3280398058073953965

`A075877(n+1)%A006497(n)`
-/

namespace A256229.P3280398058073953965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075877 (n + 1)) (A006497 n)

end

end A256229.P3280398058073953965

/-! ## A256229.P758837947660523362

`or(A000007(A005382(n+1)), A075877(n+1))`
-/

namespace A256229.P758837947660523362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A005382 (n + 1)).toNat) (A075877 (n + 1))

end

end A256229.P758837947660523362

/-! ## A256229.P12409146278272514040

`A075877(n+1)/A326976(A068211(n+3))`
-/

namespace A256229.P12409146278272514040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075877 (n + 1) : ℚ) / (A326976 (A068211 (n + 3)).toNat : ℚ)

end

end A256229.P12409146278272514040

/-! ## A256229.P3821757924831130472

`A075877(n+1)%A002317(n)`
-/

namespace A256229.P3821757924831130472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075877 (n + 1)) (A002317 n)

end

end A256229.P3821757924831130472

/-! ## A256229.P14826174960952803538

`A075877(n+1)%A000980(n)`
-/

namespace A256229.P14826174960952803538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075877 (n + 1)) (A000980 n)

end

end A256229.P14826174960952803538

/-! ## A256229.P9438736613182143427

`and(A075877(n+1), A103454(n))`
-/

namespace A256229.P9438736613182143427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075877 (n + 1)) (A103454 n)

end

end A256229.P9438736613182143427

/-! ## A256229.P10551081433481579399

`and(A075877(n+1), A263806(n))`
-/

namespace A256229.P10551081433481579399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075877 (n + 1)) (A263806 n)

end

end A256229.P10551081433481579399

/-! ## A256229.P2039407880316658094

`and(A075877(n+1), A267596(n))`
-/

namespace A256229.P2039407880316658094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075877 (n + 1)) (A267596 n)

end

end A256229.P2039407880316658094

/-! ## A256229.P17086407313514689874

`and(A075877(n+1), A083420(n))`
-/

namespace A256229.P17086407313514689874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075877 (n + 1)) (A083420 n)

end

end A256229.P17086407313514689874

/-!
# A256230: Numbers n such that neither n nor 2*n is representable as x*y+x+y, where x>=y>1.

The programs for A256230, there is no canonical definition to state claims against.
-/

/-! ## A256230.P14546657006865388571

`lt[n², A245486(2*n+1)]`
-/

namespace A256230.P14546657006865388571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245486 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256230.P14546657006865388571

/-! ## A256230.P13583498777319701750

`eq[A037288(n), A255361(n)]`
-/

namespace A256230.P13583498777319701750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P13583498777319701750

/-! ## A256230.P10784128727368106590

`eq[A037288(n), A285726(n+1)]`
-/

namespace A256230.P10784128727368106590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P10784128727368106590

/-! ## A256230.P1218329325751199673

`eq[A037288(n), A339895(n+1)]`
-/

namespace A256230.P1218329325751199673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P1218329325751199673

/-! ## A256230.P7025814251573791259

`eq[A193773(n), A378544(n+1)]`
-/

namespace A256230.P7025814251573791259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P7025814251573791259

/-! ## A256230.P13965649743706225580

`eq[A235140(n), A339895(n+1)]`
-/

namespace A256230.P13965649743706225580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P13965649743706225580

/-! ## A256230.P17537296257348387864

`eq[A281680(n), A319694(n+1)]`
-/

namespace A256230.P17537296257348387864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P17537296257348387864

/-! ## A256230.P1061882531466108277

`eq[A255361(n), A346879(n+1)]`
-/

namespace A256230.P1061882531466108277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P1061882531466108277

/-! ## A256230.P8390332248659025728

`eq[A281680(n), A378544(n+1)]`
-/

namespace A256230.P8390332248659025728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P8390332248659025728

/-! ## A256230.P14377040363296176080

`eq[A340101(n), A378544(n+1)]`
-/

namespace A256230.P14377040363296176080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256230.P14377040363296176080

/-!
# A256231: Inverse of permutation in A185969.

The programs for A256231, there is no canonical definition to state claims against.
-/

/-! ## A256231.P9925853390157444654

`A299237(A375375(n+1))`
-/

namespace A256231.P9925853390157444654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299237 (A375375 (n + 1)).toNat

end

end A256231.P9925853390157444654

/-! ## A256231.P14156496693825529631

`A375375(A081241(n+1))`
-/

namespace A256231.P14156496693825529631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375375 (A081241 (n + 1)).toNat

end

end A256231.P14156496693825529631

/-!
# A256232: Multiplicative with a(2^e) = 1-e, a(3^e) = 1, a(p^e) = e+1 if p>3.

The programs for A256232, the canonical program `A256232.P8506005336050273228` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256232 has offset 1).

The definition of A256232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256232.P8506005336050273228

`∑{d}[n+1, A092220(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256232

/-- `∑{d}[n+1, A092220(#)]` -/
def P8506005336050273228.Spec : Prop :=
  ∀ n, P8506005336050273228.a n = A256232 (n + 1)

theorem P8506005336050273228.correct : P8506005336050273228.Spec := by
  intro n
  simp only [A256232, Nat.add_sub_cancel]

end A256232

/-! ## A256232.P5260536731053051660

`A048272((n+1)/3^val(n+1, 3))`
-/

namespace A256232.P5260536731053051660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A256232.P5260536731053051660

namespace A256232

/-- `A048272((n+1)/3^val(n+1, 3))` -/
def P5260536731053051660.Spec : Prop :=
  ∀ n, P5260536731053051660.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P1193658887830394617

`A048272(A038502(n+1))`
-/

namespace A256232.P1193658887830394617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A038502 (n + 1)).toNat

end

end A256232.P1193658887830394617

namespace A256232

/-- `A048272(A038502(n+1))` -/
def P1193658887830394617.Spec : Prop :=
  ∀ n, P1193658887830394617.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P3154290445163515485

`A033999(n)*A099751(n+1)`
-/

namespace A256232.P3154290445163515485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099751 (n + 1)

end

end A256232.P3154290445163515485

namespace A256232

/-- `A033999(n)*A099751(n+1)` -/
def P3154290445163515485.Spec : Prop :=
  ∀ n, P3154290445163515485.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P8807773263569924010

`A364205(n+1)+A364204(n+1)`
-/

namespace A256232.P8807773263569924010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364205 (n + 1) + A364204 (n + 1)

end

end A256232.P8807773263569924010

namespace A256232

/-- `A364205(n+1)+A364204(n+1)` -/
def P8807773263569924010.Spec : Prop :=
  ∀ n, P8807773263569924010.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P5691656340150159151

`A364011(n+1)-A364014(n+1)`
-/

namespace A256232.P5691656340150159151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - A364014 (n + 1)

end

end A256232.P5691656340150159151

namespace A256232

/-- `A364011(n+1)-A364014(n+1)` -/
def P5691656340150159151.Spec : Prop :=
  ∀ n, P5691656340150159151.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P16973097739201948918

`A048272(n+1)/A051064(n+1)`
-/

namespace A256232.P16973097739201948918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048272 (n + 1) : ℚ) / (A051064 (n + 1) : ℚ)

end

end A256232.P16973097739201948918

namespace A256232

/-- `A048272(n+1)/A051064(n+1)` -/
def P16973097739201948918.Spec : Prop :=
  ∀ n, P16973097739201948918.a n = (A256232 (n + 1) : ℚ)

end A256232

/-! ## A256232.P4368426084523585502

`Δ[A000120(n)]*A320015(2*(n+1))`
-/

namespace A256232.P4368426084523585502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A320015 (2 * (n + 1))

end

end A256232.P4368426084523585502

namespace A256232

/-- `Δ[A000120(n)]*A320015(2*(n+1))` -/
def P4368426084523585502.Spec : Prop :=
  ∀ n, P4368426084523585502.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P18141800459084568064

`A122860(n+1)+2*A364205(n+1)`
-/

namespace A256232.P18141800459084568064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122860 (n + 1) + 2 * A364205 (n + 1)

end

end A256232.P18141800459084568064

namespace A256232

/-- `A122860(n+1)+2*A364205(n+1)` -/
def P18141800459084568064.Spec : Prop :=
  ∀ n, P18141800459084568064.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P17738822358258441629

`(2-A001511(n+1))*A035218(n+1)`
-/

namespace A256232.P17738822358258441629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001511 (n + 1)) * A035218 (n + 1)

end

end A256232.P17738822358258441629

namespace A256232

/-- `(2-A001511(n+1))*A035218(n+1)` -/
def P17738822358258441629.Spec : Prop :=
  ∀ n, P17738822358258441629.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P10716123433533875760

`2*A035218(n+1)-A035191(n+1)`
-/

namespace A256232.P10716123433533875760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035218 (n + 1) - A035191 (n + 1)

end

end A256232.P10716123433533875760

namespace A256232

/-- `2*A035218(n+1)-A035191(n+1)` -/
def P10716123433533875760.Spec : Prop :=
  ∀ n, P10716123433533875760.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P12218757238610901406

`2*A364204(n+1)-A122860(n+1)`
-/

namespace A256232.P12218757238610901406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364204 (n + 1) - A122860 (n + 1)

end

end A256232.P12218757238610901406

namespace A256232

/-- `2*A364204(n+1)-A122860(n+1)` -/
def P12218757238610901406.Spec : Prop :=
  ∀ n, P12218757238610901406.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P15263408244554239427

`2*A364011(n+1)-A123331(n+1)`
-/

namespace A256232.P15263408244554239427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364011 (n + 1) - A123331 (n + 1)

end

end A256232.P15263408244554239427

namespace A256232

/-- `2*A364011(n+1)-A123331(n+1)` -/
def P15263408244554239427.Spec : Prop :=
  ∀ n, P15263408244554239427.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P11062628953463601475

`A123331(n+1)-2*A364014(n+1)`
-/

namespace A256232.P11062628953463601475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) - 2 * A364014 (n + 1)

end

end A256232.P11062628953463601475

namespace A256232

/-- `A123331(n+1)-2*A364014(n+1)` -/
def P11062628953463601475.Spec : Prop :=
  ∀ n, P11062628953463601475.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P397751708891495836

`∑{d}[n+1, A023900(#)*A121443((n+1)/#)]`
-/

namespace A256232.P397751708891495836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A121443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256232.P397751708891495836

namespace A256232

/-- `∑{d}[n+1, A023900(#)*A121443((n+1)/#)]` -/
def P397751708891495836.Spec : Prop :=
  ∀ n, P397751708891495836.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P2623767879306977157

`∑{d}[n+1, A078708(#)*A117212((n+1)/#)]`
-/

namespace A256232.P2623767879306977157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078708 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256232.P2623767879306977157

namespace A256232

/-- `∑{d}[n+1, A078708(#)*A117212((n+1)/#)]` -/
def P2623767879306977157.Spec : Prop :=
  ∀ n, P2623767879306977157.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P14469441649723285042

`∑{d}[n+1, A121450(#)*A374366((n+1)/#)]`
-/

namespace A256232.P14469441649723285042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121450 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256232.P14469441649723285042

namespace A256232

/-- `∑{d}[n+1, A121450(#)*A374366((n+1)/#)]` -/
def P14469441649723285042.Spec : Prop :=
  ∀ n, P14469441649723285042.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P16860858057388362658

`∑{d}[n+1, A214295(#)*A317528((n+1)/#)]`
-/

namespace A256232.P16860858057388362658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A214295 d * A317528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256232.P16860858057388362658

namespace A256232

/-- `∑{d}[n+1, A214295(#)*A317528((n+1)/#)]` -/
def P16860858057388362658.Spec : Prop :=
  ∀ n, P16860858057388362658.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P8924282471251054622

`A325937(A004767(n)-n)-A325937(n+1)`
-/

namespace A256232.P8924282471251054622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A004767 n - (n : ℤ)).toNat - A325937 (n + 1)

end

end A256232.P8924282471251054622

namespace A256232

/-- `A325937(A004767(n)-n)-A325937(n+1)` -/
def P8924282471251054622.Spec : Prop :=
  ∀ n, P8924282471251054622.a n = A256232 (n + 1)

end A256232

/-! ## A256232.P8393250751571831731

`2*A035191(A000265(n+1))-A035191(n+1)`
-/

namespace A256232.P8393250751571831731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035191 (A000265 (n + 1)).toNat - A035191 (n + 1)

end

end A256232.P8393250751571831731

namespace A256232

/-- `2*A035191(A000265(n+1))-A035191(n+1)` -/
def P8393250751571831731.Spec : Prop :=
  ∀ n, P8393250751571831731.a n = A256232 (n + 1)

end A256232

/-!
# A256233: a(n) = L(2*n+1) - 2, where L is A000032.

The programs for A256233, the canonical program `A256233.P2388139567687269400` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256233 has offset 0).

The definition of A256233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256233.P3483452431029030223

`ogf((-1+6x-3x^2)/(1-4x+4x^2-x^3))`
-/

namespace A256233.P3483452431029030223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6, -3] [1, -4, 4, -1] n

end

end A256233.P3483452431029030223

namespace A256233

/-- `ogf((-1+6x-3x^2)/(1-4x+4x^2-x^3))` -/
def P3483452431029030223.Spec : Prop :=
  ∀ n, P3483452431029030223.a n = A256233 n

end A256233

/-! ## A256233.P2388139567687269400

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256233

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P2388139567687269400.Spec : Prop :=
  ∀ n, P2388139567687269400.a n = A256233 n

theorem P2388139567687269400.correct : P2388139567687269400.Spec := by
  intro n
  simp only [A256233]

end A256233

/-! ## A256233.P12166647937436528686

`Δ[floor((ϕ^n)²)]-2`
-/

namespace A256233.P12166647937436528686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A256233.P12166647937436528686

namespace A256233

/-- `Δ[floor((ϕ^n)²)]-2` -/
def P12166647937436528686.Spec : Prop :=
  ∀ n, P12166647937436528686.a n = A256233 n

end A256233

/-! ## A256233.P13438855956022804597

`Δ[A248924(2*n)]`
-/

namespace A256233.P13438855956022804597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256233.P13438855956022804597

namespace A256233

/-- `Δ[A248924(2*n)]` -/
def P13438855956022804597.Spec : Prop :=
  ∀ n, P13438855956022804597.a n = A256233 n

end A256233

/-! ## A256233.P1159179707227050282

`record[A075193(n)-2]`
-/

namespace A256233.P1159179707227050282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P1159179707227050282

namespace A256233

/-- `record[A075193(n)-2]` -/
def P1159179707227050282.Spec : Prop :=
  ∀ n, P1159179707227050282.a n = A256233 n

end A256233

/-! ## A256233.P14164437361310514832

`record[A154699(n)-2]`
-/

namespace A256233.P14164437361310514832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P14164437361310514832

namespace A256233

/-- `record[A154699(n)-2]` -/
def P14164437361310514832.Spec : Prop :=
  ∀ n, P14164437361310514832.a n = A256233 n

end A256233

/-! ## A256233.P300258336790447462

`Δ[A033550(n)-n]`
-/

namespace A256233.P300258336790447462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033550 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256233.P300258336790447462

namespace A256233

/-- `Δ[A033550(n)-n]` -/
def P300258336790447462.Spec : Prop :=
  ∀ n, P300258336790447462.a n = A256233 n

end A256233

/-! ## A256233.P5792584558550164058

`∑[record[A061084(n+2)]]`
-/

namespace A256233.P5792584558550164058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256233.P5792584558550164058

namespace A256233

/-- `∑[record[A061084(n+2)]]` -/
def P5792584558550164058.Spec : Prop :=
  ∀ n, P5792584558550164058.a n = A256233 n

end A256233

/-! ## A256233.P15083396997248845074

`record[∑[A244213(n+2)]]`
-/

namespace A256233.P15083396997248845074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244213 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P15083396997248845074

namespace A256233

/-- `record[∑[A244213(n+2)]]` -/
def P15083396997248845074.Spec : Prop :=
  ∀ n, P15083396997248845074.a n = A256233 n

end A256233

/-! ## A256233.P15108405734400327729

`Δ[A000032(2*n)-2*n]`
-/

namespace A256233.P15108405734400327729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256233.P15108405734400327729

namespace A256233

/-- `Δ[A000032(2*n)-2*n]` -/
def P15108405734400327729.Spec : Prop :=
  ∀ n, P15108405734400327729.a n = A256233 n

end A256233

/-! ## A256233.P14040284532438219646

`2*(A000032(2*n+1)/2-1)`
-/

namespace A256233.P14040284532438219646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000032 (2 * n + 1) : ℚ) / 2 - 1)

end

end A256233.P14040284532438219646

namespace A256233

/-- `2*(A000032(2*n+1)/2-1)` -/
def P14040284532438219646.Spec : Prop :=
  ∀ n, P14040284532438219646.a n = (A256233 n : ℚ)

end A256233

/-! ## A256233.P2775507009724011261

`record[A000032(A093178(n))-2]`
-/

namespace A256233.P2775507009724011261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A093178 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P2775507009724011261

namespace A256233

/-- `record[A000032(A093178(n))-2]` -/
def P2775507009724011261.Spec : Prop :=
  ∀ n, P2775507009724011261.a n = A256233 n

end A256233

/-! ## A256233.P8546520006677918703

`record[A000032(A188146(n))-2]`
-/

namespace A256233.P8546520006677918703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A188146 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P8546520006677918703

namespace A256233

/-- `record[A000032(A188146(n))-2]` -/
def P8546520006677918703.Spec : Prop :=
  ∀ n, P8546520006677918703.a n = A256233 n

end A256233

/-! ## A256233.P5299609216441344839

`floor(A188378(n)-ratio[A188378(n)])`
-/

namespace A256233.P5299609216441344839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188378 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A256233.P5299609216441344839

namespace A256233

/-- `floor(A188378(n)-ratio[A188378(n)])` -/
def P5299609216441344839.Spec : Prop :=
  ∀ n, P5299609216441344839.a n = A256233 n

end A256233

/-! ## A256233.P7933859654687572618

`(A000032(2*n+1)-2)%A000108(n+2)`
-/

namespace A256233.P7933859654687572618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (2 * n + 1) - 2) (A000108 (n + 2))

end

end A256233.P7933859654687572618

namespace A256233

/-- `(A000032(2*n+1)-2)%A000108(n+2)` -/
def P7933859654687572618.Spec : Prop :=
  ∀ n, P7933859654687572618.a n = A256233 n

end A256233

/-! ## A256233.P12967321726216914987

`record[A000032(n+1)-A000032(A131742(2*n))]`
-/

namespace A256233.P12967321726216914987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A000032 (A131742 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P12967321726216914987

namespace A256233

/-- `record[A000032(n+1)-A000032(A131742(2*n))]` -/
def P12967321726216914987.Spec : Prop :=
  ∀ n, P12967321726216914987.a n = A256233 n

end A256233

/-! ## A256233.P13519508373227419405

`record[A000032(A099375(n))-2]`
-/

namespace A256233.P13519508373227419405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A099375 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P13519508373227419405

namespace A256233

/-- `record[A000032(A099375(n))-2]` -/
def P13519508373227419405.Spec : Prop :=
  ∀ n, P13519508373227419405.a n = A256233 n

end A256233

/-! ## A256233.P17517395674105933511

`record[A000032(A131032(n+1))-2]`
-/

namespace A256233.P17517395674105933511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A131032 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P17517395674105933511

namespace A256233

/-- `record[A000032(A131032(n+1))-2]` -/
def P17517395674105933511.Spec : Prop :=
  ∀ n, P17517395674105933511.a n = A256233 n

end A256233

/-! ## A256233.P2020675906093023750

`record[A000032(A171232(n+1))-2]`
-/

namespace A256233.P2020675906093023750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A171232 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256233.P2020675906093023750

namespace A256233

/-- `record[A000032(A171232(n+1))-2]` -/
def P2020675906093023750.Spec : Prop :=
  ∀ n, P2020675906093023750.a n = A256233 n

end A256233

/-! ## A256233.P10288752653583064965

`A254884(2*n+1)/A001519(n+1)`
-/

namespace A256233.P10288752653583064965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254884 (2 * n + 1) : ℚ) / (A001519 (n + 1) : ℚ)

end

end A256233.P10288752653583064965

namespace A256233

/-- `A254884(2*n+1)/A001519(n+1)` -/
def P10288752653583064965.Spec : Prop :=
  ∀ n, P10288752653583064965.a n = (A256233 n : ℚ)

end A256233

/-!
# A256235: Sum of all the parts in the partitions of 5n into 5 parts.

The programs for A256235, the canonical program `A256235.P5589260957768457315` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256235 has offset 0).

The definition of A256235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256235.P5589260957768457315

`5*n*A256225(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256235

/-- `5*n*A256225(n)` -/
def P5589260957768457315.Spec : Prop :=
  ∀ n, P5589260957768457315.a n = A256235 n

theorem P5589260957768457315.correct : P5589260957768457315.Spec := by
  intro n
  simp only [A256235]

end A256235

/-! ## A256235.P15193020364880533214

`5*n*A026811(5*n)`
-/

namespace A256235.P15193020364880533214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * A026811 (5 * n))

end

end A256235.P15193020364880533214

namespace A256235

/-- `5*n*A026811(5*n)` -/
def P15193020364880533214.Spec : Prop :=
  ∀ n, P15193020364880533214.a n = A256235 n

end A256235

/-! ## A256235.P6438671208749336070

`A308822(5*n)`
-/

namespace A256235.P6438671208749336070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 (5 * n)

end

end A256235.P6438671208749336070

namespace A256235

/-- `A308822(5*n)` -/
def P6438671208749336070.Spec : Prop :=
  ∀ n, P6438671208749336070.a n = A256235 n

end A256235

/-! ## A256235.P6175667023029789290

`5*n*record[A288166(A195140(n))]`
-/

namespace A256235.P6175667023029789290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (A195140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A256235.P6175667023029789290

namespace A256235

/-- `5*n*record[A288166(A195140(n))]` -/
def P6175667023029789290.Spec : Prop :=
  ∀ n, P6175667023029789290.a n = A256235 n

end A256235

/-! ## A256235.P13143732684212282644

`A008587(n)*A288166(A008602(n))`
-/

namespace A256235.P13143732684212282644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n * A288166 (A008602 n).toNat

end

end A256235.P13143732684212282644

namespace A256235

/-- `A008587(n)*A288166(A008602(n))` -/
def P13143732684212282644.Spec : Prop :=
  ∀ n, P13143732684212282644.a n = A256235 n

end A256235

/-!
# A256236: Smallest b > 1 such that the first n primes p (i.e., A000040(1)-A000040(n)) all satisfy b^(p-1) == 1 (mod p^2), i.e., smallest base b larger than 1 such that any member of the set of first n primes is a base-b Wieferich prime.

The programs for A256236, there is no canonical definition to state claims against.
-/

/-! ## A256236.P8923677163907116771

`A258787(∑[n+1])`
-/

namespace A256236.P8923677163907116771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258787 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256236.P8923677163907116771

/-! ## A256236.P16510456038502502391

`A286816(∑[n]+1)`
-/

namespace A256236.P16510456038502502391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256236.P16510456038502502391

/-! ## A256236.P3756771716645922422

`record[A286816(n+1)]`
-/

namespace A256236.P3756771716645922422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256236.P3756771716645922422

/-! ## A256236.P15897829963388141319

`record[A258787(comp[∑[n-1]])]`
-/

namespace A256236.P15897829963388141319
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258787 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256236.P15897829963388141319

/-! ## A256236.P43159528413660473

`or(1, A258787(A000217(n+1)))`
-/

namespace A256236.P43159528413660473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A258787 (A000217 (n + 1)).toNat)

end

end A256236.P43159528413660473

/-!
# A256237: Primes p such that for all 2^k < p the numbers p + 2^k, p - 2^k, p*2^k + 1, and p*2^k - 1 are composite.

The programs for A256237, there is no canonical definition to state claims against.
-/

/-! ## A256237.P15849582964491137027

`p?[A256163(n+1)]`
-/

namespace A256237.P15849582964491137027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256237.P15849582964491137027

/-! ## A256237.P10254947864928832528

`p?[record[A256163(A133310(n))]]`
-/

namespace A256237.P10254947864928832528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256163 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256237.P10254947864928832528

/-! ## A256237.P7428006932374737012

`p?[record[A256163(A286544(n))]]`
-/

namespace A256237.P7428006932374737012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256163 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256237.P7428006932374737012

/-! ## A256237.P1670684288107213983

`p?[record[A256163(A291769(n))]]`
-/

namespace A256237.P1670684288107213983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256163 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256237.P1670684288107213983

/-! ## A256237.P10182036788581057154

`p?[record[A256163(A292266(n))]]`
-/

namespace A256237.P10182036788581057154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256163 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256237.P10182036788581057154

/-!
# A256238: Number of primes in A256237 less than 10^n.

The programs for A256238, there is no canonical definition to state claims against.
-/

/-! ## A256238.P9900596741102466975

`A000720(floor(n*sqrt(6))^n)`
-/

namespace A256238.P9900596741102466975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ ^ n).toNat

end

end A256238.P9900596741102466975

/-!
# A256239: Sum of all the parts in the partitions of 6n into 6 parts.

The programs for A256239, the canonical program `A256239.P12780554241417040292` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256239 has offset 0).

The definition of A256239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256239.P12780554241417040292

`6*n*A256226(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256239

/-- `6*n*A256226(n)` -/
def P12780554241417040292.Spec : Prop :=
  ∀ n, P12780554241417040292.a n = A256239 n

theorem P12780554241417040292.correct : P12780554241417040292.Spec := by
  intro n
  simp only [A256239]

end A256239

/-! ## A256239.P17228054377170258948

`A008458(n)*A256315(2*n)`
-/

namespace A256239.P17228054377170258948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A256315 (2 * n)

end

end A256239.P17228054377170258948

namespace A256239

/-- `A008458(n)*A256315(2*n)` -/
def P17228054377170258948.Spec : Prop :=
  ∀ n, P17228054377170258948.a n = A256239 n

end A256239

/-! ## A256239.P4294093417714749487

`6*n*A256310(A008585(n))`
-/

namespace A256239.P4294093417714749487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) * A256310 (A008585 n).toNat

end

end A256239.P4294093417714749487

namespace A256239

/-- `6*n*A256310(A008585(n))` -/
def P4294093417714749487.Spec : Prop :=
  ∀ n, P4294093417714749487.a n = A256239 n

end A256239

/-! ## A256239.P2235639616216743363

`A008486(2*n)*A256310(A008486(n))`
-/

namespace A256239.P2235639616216743363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) * A256310 (A008486 n).toNat

end

end A256239.P2235639616216743363

namespace A256239

/-- `A008486(2*n)*A256310(A008486(n))` -/
def P2235639616216743363.Spec : Prop :=
  ∀ n, P2235639616216743363.a n = A256239 n

end A256239

/-! ## A256239.P10217812786401666262

`6*n*A026812(6*n)`
-/

namespace A256239.P10217812786401666262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) * A026812 (6 * n))

end

end A256239.P10217812786401666262

namespace A256239

/-- `6*n*A026812(6*n)` -/
def P10217812786401666262.Spec : Prop :=
  ∀ n, P10217812786401666262.a n = A256239 n

end A256239

/-! ## A256239.P10662337688639836600

`A308867(6*n)`
-/

namespace A256239.P10662337688639836600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308867 (6 * n)

end

end A256239.P10662337688639836600

namespace A256239

/-- `A308867(6*n)` -/
def P10662337688639836600.Spec : Prop :=
  ∀ n, P10662337688639836600.a n = A256239 n

end A256239

/-!
# A256241: Numbers n whose Euler's totient function phi(n), divided by two, plus one, p = (phi(n) / 2) + 1, is a divisor of n.

The programs for A256241, there is no canonical definition to state claims against.
-/

/-! ## A256241.P18036282290384140634

`A176206(A299284(2*(n+1)))+4*n`
-/

namespace A256241.P18036282290384140634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176206 (A299284 (2 * (n + 1))).toNat + (4 * n : ℤ)

end

end A256241.P18036282290384140634

/-! ## A256241.P13484312895134724882

`A286728(n+1)+A002117(A361753(n))`
-/

namespace A256241.P13484312895134724882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286728 (n + 1) + A002117 (A361753 n).toNat

end

end A256241.P13484312895134724882

/-! ## A256241.P7449807726136683937

`A184161(A210394(n+1))+A010055(3*(n+1))`
-/

namespace A256241.P7449807726136683937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (A210394 (n + 1)).toNat + A010055 (3 * (n + 1))

end

end A256241.P7449807726136683937

/-!
# A256242: Numbers having digits in nondecreasing order and repeatedly setting n := A066308(n) yields a constant nonzero n.

The programs for A256242, there is no canonical definition to state claims against.
-/

/-! ## A256242.P3870564018297678057

`∩[A009994(n+1), A256240(n+1)]`
-/

namespace A256242.P3870564018297678057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256242.P3870564018297678057

/-! ## A256242.P8303511821859066434

`∩[A256240(n+1), A179239(n)]`
-/

namespace A256242.P8303511821859066434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256242.P8303511821859066434

/-! ## A256242.P14253080530005571395

`record[A004185(A256240(n+1))]`
-/

namespace A256242.P14253080530005571395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A256240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256242.P14253080530005571395

/-! ## A256242.P8748368509447178491

`∩[A256240(n+1), A355222(a(n-1)+1)]` with `a(0)=0`
-/

namespace A256242.P8748368509447178491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A355222 (f2 (n - 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256242.P8748368509447178491

/-!
# A256243: Smallest positive integer m such that n + 2m is a square.

The programs for A256243, the canonical program `A256243.P16588352687810024248` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256243 has offset 1).

The definition of A256243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256243.P16588352687810024248

`(A256244(n+1)²-(n+1))/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A256243

/-- `(A256244(n+1)²-(n+1))/2` -/
def P16588352687810024248.Spec : Prop :=
  ∀ n, P16588352687810024248.a n = (A256243 (n + 1) : ℚ)

end A256243

/-! ## A256243.P15073476310533961468

`A004524(A256244(n+1)²-n)`
-/

namespace A256243.P15073476310533961468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A256244 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A256243.P15073476310533961468

namespace A256243

/-- `A004524(A256244(n+1)²-n)` -/
def P15073476310533961468.Spec : Prop :=
  ∀ n, P15073476310533961468.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P11813358426845398934

`A004526(A256244(n+1)²-n)`
-/

namespace A256243.P11813358426845398934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256244 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A256243.P11813358426845398934

namespace A256243

/-- `A004526(A256244(n+1)²-n)` -/
def P11813358426845398934.Spec : Prop :=
  ∀ n, P11813358426845398934.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P8985182786447340705

`A028242(A256244(n+1)²-n)`
-/

namespace A256243.P8985182786447340705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A256244 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A256243.P8985182786447340705

namespace A256243

/-- `A028242(A256244(n+1)²-n)` -/
def P8985182786447340705.Spec : Prop :=
  ∀ n, P8985182786447340705.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P13681996238790475546

`A057979(A256244(n+1)²-n)`
-/

namespace A256243.P13681996238790475546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A256244 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A256243.P13681996238790475546

namespace A256243

/-- `A057979(A256244(n+1)²-n)` -/
def P13681996238790475546.Spec : Prop :=
  ∀ n, P13681996238790475546.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P3220097245173168988

`A252759(A256244(n+1)²-(n+1))`
-/

namespace A256243.P3220097245173168988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A256244 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A256243.P3220097245173168988

namespace A256243

/-- `A252759(A256244(n+1)²-(n+1))` -/
def P3220097245173168988.Spec : Prop :=
  ∀ n, P3220097245173168988.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P17183031533553259297

`A253515(a(n-3)+n)` with `a(0)=4, a(1)=1, a(2)=3`
-/

namespace A256243.P17183031533553259297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 3] fun n a =>
  A253515 (a (n - 3) + (n : ℤ)).toNat

end

end A256243.P17183031533553259297

namespace A256243

/-- `A253515(a(n-3)+n)` -/
def P17183031533553259297.Spec : Prop :=
  ∀ n, P17183031533553259297.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P16439348706234196714

`(A253203(n+1)-(n+1))/2`
-/

namespace A256243.P16439348706234196714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253203 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A256243.P16439348706234196714

namespace A256243

/-- `(A253203(n+1)-(n+1))/2` -/
def P16439348706234196714.Spec : Prop :=
  ∀ n, P16439348706234196714.a n = (A256243 (n + 1) : ℚ)

end A256243

/-! ## A256243.P6820590897758585533

`A004524(A253203(n+1)-n)`
-/

namespace A256243.P6820590897758585533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A253203 (n + 1) - (n : ℤ)).toNat

end

end A256243.P6820590897758585533

namespace A256243

/-- `A004524(A253203(n+1)-n)` -/
def P6820590897758585533.Spec : Prop :=
  ∀ n, P6820590897758585533.a n = A256243 (n + 1)

end A256243

/-! ## A256243.P3685238278865174230

`A004526(A253203(n+1)-n)`
-/

namespace A256243.P3685238278865174230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A253203 (n + 1) - (n : ℤ)).toNat

end

end A256243.P3685238278865174230

namespace A256243

/-- `A004526(A253203(n+1)-n)` -/
def P3685238278865174230.Spec : Prop :=
  ∀ n, P3685238278865174230.a n = A256243 (n + 1)

end A256243

/-!
# A256244: a(n) = sqrt(n + 2*A256243(n)).

The programs for A256244, the canonical program `A256244.P8227914721066336132` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256244 has offset 1).

The definition of A256244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256244.P1139077453194879890

`sqrt(n+1+2*A256243(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256244.P1139077453194879890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) + 2 * A256243 (n + 1) : ℝ)

end

end A256244.P1139077453194879890

namespace A256244

/-- `sqrt(n+1+2*A256243(n+1))` -/
def P1139077453194879890.Spec : Prop :=
  ∀ n, P1139077453194879890.a n = (A256244 (n + 1) : ℝ)

end A256244

/-! ## A256244.P8227914721066336132

`A000196(n+2)-A071028(n+2)+2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256244

/-- `A000196(n+2)-A071028(n+2)+2` -/
def P8227914721066336132.Spec : Prop :=
  ∀ n, P8227914721066336132.a n = A256244 (n + 1)

theorem P8227914721066336132.correct : P8227914721066336132.Spec := by
  intro n
  simp only [A256244, Nat.add_sub_cancel]

end A256244

/-! ## A256244.P2135229950089793352

`or(1, comp[2*(C(n, 2)-1)]+1)-n`
-/

namespace A256244.P2135229950089793352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose n 2 : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ) - (n : ℤ)

end

end A256244.P2135229950089793352

namespace A256244

/-- `or(1, comp[2*(C(n, 2)-1)]+1)-n` -/
def P2135229950089793352.Spec : Prop :=
  ∀ n, P2135229950089793352.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P4412789741258286194

`or(1, A028392(n+1))-n`
-/

namespace A256244.P4412789741258286194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028392 (n + 1)) - (n : ℤ)

end

end A256244.P4412789741258286194

namespace A256244

/-- `or(1, A028392(n+1))-n` -/
def P4412789741258286194.Spec : Prop :=
  ∀ n, P4412789741258286194.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P15171257471353442430

`A000122(n+1)+a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A256244.P15171257471353442430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A000122 (n + 1) + a (n - 2)

end

end A256244.P15171257471353442430

namespace A256244

/-- `A000122(n+1)+a(n-2)` -/
def P15171257471353442430.Spec : Prop :=
  ∀ n, P15171257471353442430.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P5864669525204473300

`A000096(Δ[A000196(n)])+a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A256244.P5864669525204473300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A000096 (f1 (n + 1) - f1 n).toNat + a (n - 2)

end

end A256244.P5864669525204473300

namespace A256244

/-- `A000096(Δ[A000196(n)])+a(n-2)` -/
def P5864669525204473300.Spec : Prop :=
  ∀ n, P5864669525204473300.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P5218952250992997751

`or(1, comp[A000567(n)-A000217(2*n)]+1)-n`
-/

namespace A256244.P5218952250992997751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - A000217 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ) - (n : ℤ)

end

end A256244.P5218952250992997751

namespace A256244

/-- `or(1, comp[A000567(n)-A000217(2*n)]+1)-n` -/
def P5218952250992997751.Spec : Prop :=
  ∀ n, P5218952250992997751.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P16911755273705078832

`A079578(2*A000196(n+1)+1)-a(n-1)` with `a(0)=3`
-/

namespace A256244.P16911755273705078832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A079578 (2 * A000196 (n + 1) + 1).toNat - a (n - 1)

end

end A256244.P16911755273705078832

namespace A256244

/-- `A079578(2*A000196(n+1)+1)-a(n-1)` -/
def P16911755273705078832.Spec : Prop :=
  ∀ n, P16911755273705078832.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P10906255127420612716

`A197702(or(2, n+1))`
-/

namespace A256244.P10906255127420612716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (Nat.lor 2 (n + 1))

end

end A256244.P10906255127420612716

namespace A256244

/-- `A197702(or(2, n+1))` -/
def P10906255127420612716.Spec : Prop :=
  ∀ n, P10906255127420612716.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P6556801400238836653

`abs(Δ[A256243(n+1)])`
-/

namespace A256244.P6556801400238836653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A256244.P6556801400238836653

namespace A256244

/-- `abs(Δ[A256243(n+1)])` -/
def P6556801400238836653.Spec : Prop :=
  ∀ n, P6556801400238836653.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P3915645360204246951

`A267654(n+1)/2+1`
-/

namespace A256244.P3915645360204246951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267654 (n + 1) : ℚ) / 2 + 1

end

end A256244.P3915645360204246951

namespace A256244

/-- `A267654(n+1)/2+1` -/
def P3915645360204246951.Spec : Prop :=
  ∀ n, P3915645360204246951.a n = (A256244 (n + 1) : ℚ)

end A256244

/-! ## A256244.P4716200762041173526

`round(sqrt(A170950(n+2)))+1`
-/

namespace A256244.P4716200762041173526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A170950 (n + 2) : ℝ)) + 1

end

end A256244.P4716200762041173526

namespace A256244

/-- `round(sqrt(A170950(n+2)))+1` -/
def P4716200762041173526.Spec : Prop :=
  ∀ n, P4716200762041173526.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P17986001903536071349

`A197702(A174091(n+1))`
-/

namespace A256244.P17986001903536071349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (A174091 (n + 1)).toNat

end

end A256244.P17986001903536071349

namespace A256244

/-- `A197702(A174091(n+1))` -/
def P17986001903536071349.Spec : Prop :=
  ∀ n, P17986001903536071349.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P3098040297314608760

`A014682(A267654(n+1))+1`
-/

namespace A256244.P3098040297314608760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A267654 (n + 1)).toNat + 1

end

end A256244.P3098040297314608760

namespace A256244

/-- `A014682(A267654(n+1))+1` -/
def P3098040297314608760.Spec : Prop :=
  ∀ n, P3098040297314608760.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P13215052914092448548

`A064455(A267654(n+1)+1)`
-/

namespace A256244.P13215052914092448548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A267654 (n + 1) + 1).toNat

end

end A256244.P13215052914092448548

namespace A256244

/-- `A064455(A267654(n+1)+1)` -/
def P13215052914092448548.Spec : Prop :=
  ∀ n, P13215052914092448548.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P8792844860850564475

`A071028(n+1)+A003059(n+2)`
-/

namespace A256244.P8792844860850564475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (n + 1) + A003059 (n + 2)

end

end A256244.P8792844860850564475

namespace A256244

/-- `A071028(n+1)+A003059(n+2)` -/
def P8792844860850564475.Spec : Prop :=
  ∀ n, P8792844860850564475.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P7777913690976301336

`A000196(n+1)+A071028(n+1)+1`
-/

namespace A256244.P7777913690976301336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A071028 (n + 1) + 1)

end

end A256244.P7777913690976301336

namespace A256244

/-- `A000196(n+1)+A071028(n+1)+1` -/
def P7777913690976301336.Spec : Prop :=
  ∀ n, P7777913690976301336.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P17138452744272549194

`A368941(A170950(n+2))`
-/

namespace A256244.P17138452744272549194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (A170950 (n + 2)).toNat

end

end A256244.P17138452744272549194

namespace A256244

/-- `A368941(A170950(n+2))` -/
def P17138452744272549194.Spec : Prop :=
  ∀ n, P17138452744272549194.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P11820819449785193245

`A086520(n+3)+1`
-/

namespace A256244.P11820819449785193245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (n + 3) + 1

end

end A256244.P11820819449785193245

namespace A256244

/-- `A086520(n+3)+1` -/
def P11820819449785193245.Spec : Prop :=
  ∀ n, P11820819449785193245.a n = A256244 (n + 1)

end A256244

/-! ## A256244.P4497048658519975851

`A259361(A127366(n+1))+2`
-/

namespace A256244.P4497048658519975851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A127366 (n + 1)).toNat + 2

end

end A256244.P4497048658519975851

namespace A256244

/-- `A259361(A127366(n+1))+2` -/
def P4497048658519975851.Spec : Prop :=
  ∀ n, P4497048658519975851.a n = A256244 (n + 1)

end A256244

/-!
# A256247: a(n) = sqrt(2*A256246(n) + prime(A256246(n))).

The programs for A256247, there is no canonical definition to state claims against.
-/

/-! ## A256247.P14371396816569054341

`sqrt(2*A256246(n+1)+A000040(A256246(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256247.P14371396816569054341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A256246 (n + 1) + A000040 (A256246 (n + 1)).toNat : ℝ)

end

end A256247.P14371396816569054341

/-!
# A256248: Indices of powers of two in A055744 (the sequence of n that have the same prime power set as phi(n)).

The programs for A256248, there is no canonical definition to state claims against.
-/

/-! ## A256248.P14346577191011758827

`eq[2, A054844(A055744(n+1))]+1`
-/

namespace A256248.P14346577191011758827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A055744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256248.P14346577191011758827

/-! ## A256248.P68025129317642498

`A002024(A011955(n+2)+A011929(n))`
-/

namespace A256248.P68025129317642498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A011955 (n + 2) + A011929 n).toNat

end

end A256248.P68025129317642498

/-! ## A256248.P5714105119449516864

`A003059((n+1)*A351013(n))`
-/

namespace A256248.P5714105119449516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((n + 1 : ℤ) * A351013 n).toNat

end

end A256248.P5714105119449516864

/-! ## A256248.P2556240797716975910

`A000196(A329739(2*n+1)+2)`
-/

namespace A256248.P2556240797716975910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A329739 (2 * n + 1) + 2).toNat

end

end A256248.P2556240797716975910

/-! ## A256248.P17282198992493637575

`A000196(A083318(n)+A026011(n))`
-/

namespace A256248.P17282198992493637575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A083318 n + A026011 n).toNat

end

end A256248.P17282198992493637575

/-!
# A256249: Partial sums of A006257 (Josephus problem).

The programs for A256249, the canonical program `A256249.P7203839828233111331` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256249 has offset 0).

The definition of A256249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256249.P37133342676011171

`(A256250(n+1)-1)/4`
-/

namespace A256249.P37133342676011171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256250 (n + 1) - 1 : ℚ) / 4

end

end A256249.P37133342676011171

namespace A256249

/-- `(A256250(n+1)-1)/4` -/
def P37133342676011171.Spec : Prop :=
  ∀ n, P37133342676011171.a n = (A256249 n : ℚ)

theorem P37133342676011171.correct : P37133342676011171.Spec := by
  intro n
  simp only [A256249, Nat.add_sub_cancel, A256249.P37133342676011171.a, A256249.P7203839828233111331.f1, A256249.P7203839828233111331.a, A256250, A256250.P13481025996559427497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256249

/-! ## A256249.P7203839828233111331

`∑[(a(n-1)+2)%n]+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256249

/-- `∑[(a(n-1)+2)%n]+n` -/
def P7203839828233111331.Spec : Prop :=
  ∀ n, (P7203839828233111331.a n : ℤ) = A256249 n

theorem P7203839828233111331.correct : P7203839828233111331.Spec := by
  intro n
  simp only [A256249]

end A256249

/-! ## A256249.P12714390753030137141

`n-∑[(a(n-1)-2)%n]` with `a(0)=0`
-/

namespace A256249.P12714390753030137141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (f1 (n - 1) - 2) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256249.P12714390753030137141

namespace A256249

/-- `n-∑[(a(n-1)-2)%n]` -/
def P12714390753030137141.Spec : Prop :=
  ∀ n, P12714390753030137141.a n = A256249 n

end A256249

/-! ## A256249.P17580336248544225840

`∑[Δ[n²]-2^ceil(log2(n+1))]`
-/

namespace A256249.P17580336248544225840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256249.P17580336248544225840

namespace A256249

/-- `∑[Δ[n²]-2^ceil(log2(n+1))]` -/
def P17580336248544225840.Spec : Prop :=
  ∀ n, P17580336248544225840.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P12134982508244893039

`-∑[-(Δ[n²]%(2^ceil(log2(n+1))))]`
-/

namespace A256249.P12134982508244893039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256249.P12134982508244893039

namespace A256249

/-- `-∑[-(Δ[n²]%(2^ceil(log2(n+1))))]` -/
def P12134982508244893039.Spec : Prop :=
  ∀ n, P12134982508244893039.a n = A256249 n

end A256249

/-! ## A256249.P2189311496692498432

`∑[2*(a(floor(n/2))-(-1)^n)]/2` with `a(0)=0`
-/

namespace A256249.P2189311496692498432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * (f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A256249.P2189311496692498432

namespace A256249

/-- `∑[2*(a(floor(n/2))-(-1)^n)]/2` -/
def P2189311496692498432.Spec : Prop :=
  ∀ n, P2189311496692498432.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P10142735209927358355

`a(n-1)+Δ[n²]-2^ceil(log2(n+1))` with `a(0)=0`
-/

namespace A256249.P10142735209927358355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))

end

end A256249.P10142735209927358355

namespace A256249

/-- `a(n-1)+Δ[n²]-2^ceil(log2(n+1))` -/
def P10142735209927358355.Spec : Prop :=
  ∀ n, P10142735209927358355.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P6802708615792450754

`A266538(n)/2`
-/

namespace A256249.P6802708615792450754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266538 n : ℚ) / 2

end

end A256249.P6802708615792450754

namespace A256249

/-- `A266538(n)/2` -/
def P6802708615792450754.Spec : Prop :=
  ∀ n, P6802708615792450754.a n = (A256249 n : ℚ)

theorem P6802708615792450754.correct : P6802708615792450754.Spec := by
  intro n
  simp only [A256249, Nat.add_sub_cancel, A256249.P6802708615792450754.a, A256249.P7203839828233111331.f1, A256249.P7203839828233111331.a, A266538, A266538.P9526590751429487404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256249

/-! ## A256249.P18154777179583221717

`2*∑[A006257(n)/2]`
-/

namespace A256249.P18154777179583221717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006257 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256249.P18154777179583221717

namespace A256249

/-- `2*∑[A006257(n)/2]` -/
def P18154777179583221717.Spec : Prop :=
  ∀ n, P18154777179583221717.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P13759749743347000266

`∑[n-A035327(n)]+1`
-/

namespace A256249.P13759749743347000266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256249.P13759749743347000266

namespace A256249

/-- `∑[n-A035327(n)]+1` -/
def P13759749743347000266.Spec : Prop :=
  ∀ n, P13759749743347000266.a n = A256249 n

end A256249

/-! ## A256249.P14049303547890999238

`(n+1)²-∑[A062383(n)]`
-/

namespace A256249.P14049303547890999238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256249.P14049303547890999238

namespace A256249

/-- `(n+1)²-∑[A062383(n)]` -/
def P14049303547890999238.Spec : Prop :=
  ∀ n, P14049303547890999238.a n = A256249 n

end A256249

/-! ## A256249.P11268645397476103993

`(n+1)²-A181497(n+1)`
-/

namespace A256249.P11268645397476103993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A181497 (n + 1)

end

end A256249.P11268645397476103993

namespace A256249

/-- `(n+1)²-A181497(n+1)` -/
def P11268645397476103993.Spec : Prop :=
  ∀ n, P11268645397476103993.a n = A256249 n

end A256249

/-! ## A256249.P13362563525449423917

`(A266535(n)+A006257(n))/2`
-/

namespace A256249.P13362563525449423917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266535 n + A006257 n : ℚ) / 2

end

end A256249.P13362563525449423917

namespace A256249

/-- `(A266535(n)+A006257(n))/2` -/
def P13362563525449423917.Spec : Prop :=
  ∀ n, P13362563525449423917.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P7530182198433916893

`∑[A006257(n+1)]-A006257(n+1)`
-/

namespace A256249.P7530182198433916893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006257 (n + 1)

end

end A256249.P7530182198433916893

namespace A256249

/-- `∑[A006257(n+1)]-A006257(n+1)` -/
def P7530182198433916893.Spec : Prop :=
  ∀ n, P7530182198433916893.a n = A256249 n

end A256249

/-! ## A256249.P17807993685370028090

`(n+1)²-∑[a(n-1)*A014963(2*n)]` with `a(0)=1`
-/

namespace A256249.P17807993685370028090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A014963 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256249.P17807993685370028090

namespace A256249

/-- `(n+1)²-∑[a(n-1)*A014963(2*n)]` -/
def P17807993685370028090.Spec : Prop :=
  ∀ n, P17807993685370028090.a n = A256249 n

end A256249

/-! ## A256249.P10414666510402246198

`∑[(2*n)%∏[A014963(A004277(n))]+1]-1`
-/

namespace A256249.P10414666510402246198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A256249.P10414666510402246198

namespace A256249

/-- `∑[(2*n)%∏[A014963(A004277(n))]+1]-1` -/
def P10414666510402246198.Spec : Prop :=
  ∀ n, P10414666510402246198.a n = A256249 n

end A256249

/-! ## A256249.P9418986857585112346

`A266540(2*(n+1))/2`
-/

namespace A256249.P9418986857585112346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266540 (2 * (n + 1)) : ℚ) / 2

end

end A256249.P9418986857585112346

namespace A256249

/-- `A266540(2*(n+1))/2` -/
def P9418986857585112346.Spec : Prop :=
  ∀ n, P9418986857585112346.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P3583225246874548180

`(A236305(n)-1)/3`
-/

namespace A256249.P3583225246874548180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236305 n - 1 : ℚ) / 3

end

end A256249.P3583225246874548180

namespace A256249

/-- `(A236305(n)-1)/3` -/
def P3583225246874548180.Spec : Prop :=
  ∀ n, P3583225246874548180.a n = (A256249 n : ℚ)

end A256249

/-! ## A256249.P17140521594359633742

`A256250(n+1)-A236305(n)`
-/

namespace A256249.P17140521594359633742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256250 (n + 1) - A236305 n

end

end A256249.P17140521594359633742

namespace A256249

/-- `A256250(n+1)-A236305(n)` -/
def P17140521594359633742.Spec : Prop :=
  ∀ n, P17140521594359633742.a n = A256249 n

end A256249

/-! ## A256249.P8344478797733432602

`∑[A115379(2*n)]+n`
-/

namespace A256249.P8344478797733432602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115379 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A256249.P8344478797733432602

namespace A256249

/-- `∑[A115379(2*n)]+n` -/
def P8344478797733432602.Spec : Prop :=
  ∀ n, P8344478797733432602.a n = A256249 n

end A256249

/-!
# A256250: Total number of ON states after n generations of a cellular automaton on the square grid.

The programs for A256250, the canonical program `A256250.P13481025996559427497` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256250 has offset 1).

The definition of A256250 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256250.P13481025996559427497

`1+4*A256249(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256250

/-- `1+4*A256249(n)` -/
def P13481025996559427497.Spec : Prop :=
  ∀ n, P13481025996559427497.a n = A256250 (n + 1)

theorem P13481025996559427497.correct : P13481025996559427497.Spec := by
  intro n
  simp only [A256250, Nat.add_sub_cancel]

end A256250

/-! ## A256250.P11219798728681485118

`∑[4*(Δ[n²]-2^ceil(log2(n+1)))]+1`
-/

namespace A256250.P11219798728681485118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256250.P11219798728681485118

namespace A256250

/-- `∑[4*(Δ[n²]-2^ceil(log2(n+1)))]+1` -/
def P11219798728681485118.Spec : Prop :=
  ∀ n, P11219798728681485118.a n = (A256250 (n + 1) : ℚ)

end A256250

/-! ## A256250.P3551302267893852514

`∑[A256251(n)]`
-/

namespace A256250.P3551302267893852514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256250.P3551302267893852514

namespace A256250

/-- `∑[A256251(n)]` -/
def P3551302267893852514.Spec : Prop :=
  ∀ n, P3551302267893852514.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P15652064722910912107

`(A256534(n+1)-1)/3`
-/

namespace A256250.P15652064722910912107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256534 (n + 1) - 1 : ℚ) / 3

end

end A256250.P15652064722910912107

namespace A256250

/-- `(A256534(n+1)-1)/3` -/
def P15652064722910912107.Spec : Prop :=
  ∀ n, P15652064722910912107.a n = (A256250 (n + 1) : ℚ)

end A256250

/-! ## A256250.P12979597360398402354

`∑[A008574(A006257(n))]`
-/

namespace A256250.P12979597360398402354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256250.P12979597360398402354

namespace A256250

/-- `∑[A008574(A006257(n))]` -/
def P12979597360398402354.Spec : Prop :=
  ∀ n, P12979597360398402354.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P11033114208090113705

`∑[A006257(2*n+1)+A006257(2*n)]`
-/

namespace A256250.P11033114208090113705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 1) + A006257 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256250.P11033114208090113705

namespace A256250

/-- `∑[A006257(2*n+1)+A006257(2*n)]` -/
def P11033114208090113705.Spec : Prop :=
  ∀ n, P11033114208090113705.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P222913956988324498

`A256249(Δ[n²])`
-/

namespace A256250.P222913956988324498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A256250.P222913956988324498

namespace A256250

/-- `A256249(Δ[n²])` -/
def P222913956988324498.Spec : Prop :=
  ∀ n, P222913956988324498.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P1812081161456453201

`record[A256249(xor(1, n))]`
-/

namespace A256250.P1812081161456453201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256250.P1812081161456453201

namespace A256250

/-- `record[A256249(xor(1, n))]` -/
def P1812081161456453201.Spec : Prop :=
  ∀ n, P1812081161456453201.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P2702524379312602255

`A266538(Δ[n²])/2`
-/

namespace A256250.P2702524379312602255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266538 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A256250.P2702524379312602255

namespace A256250

/-- `A266538(Δ[n²])/2` -/
def P2702524379312602255.Spec : Prop :=
  ∀ n, P2702524379312602255.a n = (A256250 (n + 1) : ℚ)

end A256250

/-! ## A256250.P13142122911176170681

`record[A256249(C(or(1, n), n))]`
-/

namespace A256250.P13142122911176170681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256250.P13142122911176170681

namespace A256250

/-- `record[A256249(C(or(1, n), n))]` -/
def P13142122911176170681.Spec : Prop :=
  ∀ n, P13142122911176170681.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P12276008531088737502

`record[A256249(A006257(n+1))]`
-/

namespace A256250.P12276008531088737502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256250.P12276008531088737502

namespace A256250

/-- `record[A256249(A006257(n+1))]` -/
def P12276008531088737502.Spec : Prop :=
  ∀ n, P12276008531088737502.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P15502264051804704340

`record[A256249(A022998(n+1)-n)]`
-/

namespace A256250.P15502264051804704340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256250.P15502264051804704340

namespace A256250

/-- `record[A256249(A022998(n+1)-n)]` -/
def P15502264051804704340.Spec : Prop :=
  ∀ n, P15502264051804704340.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P14694404355861411126

`filter[A256249(n+1), A373157(#)]`
-/

namespace A256250.P14694404355861411126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A256250.P14694404355861411126

namespace A256250

/-- `filter[A256249(n+1), A373157(#)]` -/
def P14694404355861411126.Spec : Prop :=
  ∀ n, P14694404355861411126.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P17523431374264948526

`filter[A256249(n+1), A379952(#)]`
-/

namespace A256250.P17523431374264948526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A256250.P17523431374264948526

namespace A256250

/-- `filter[A256249(n+1), A379952(#)]` -/
def P17523431374264948526.Spec : Prop :=
  ∀ n, P17523431374264948526.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P4310189799426939720

`filter[A256249(n+1), A035263(#)]`
-/

namespace A256250.P4310189799426939720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A256250.P4310189799426939720

namespace A256250

/-- `filter[A256249(n+1), A035263(#)]` -/
def P4310189799426939720.Spec : Prop :=
  ∀ n, P4310189799426939720.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P3821613798654543310

`filter[A256249(n+1), A152822(#)]`
-/

namespace A256250.P3821613798654543310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A256250.P3821613798654543310

namespace A256250

/-- `filter[A256249(n+1), A152822(#)]` -/
def P3821613798654543310.Spec : Prop :=
  ∀ n, P3821613798654543310.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P4440878180279379473

`A016813(A256249(n))`
-/

namespace A256250.P4440878180279379473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A256249 n).toNat

end

end A256250.P4440878180279379473

namespace A256250

/-- `A016813(A256249(n))` -/
def P4440878180279379473.Spec : Prop :=
  ∀ n, P4440878180279379473.a n = A256250 (n + 1)

end A256250

/-! ## A256250.P3282900248075158379

`∩[A079523(n+1), A256249(n)]`
-/

namespace A256250.P3282900248075158379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256250.P3282900248075158379

namespace A256250

/-- `∩[A079523(n+1), A256249(n)]` -/
def P3282900248075158379.Spec : Prop :=
  ∀ n, (P3282900248075158379.a n : ℤ) = A256250 (n + 1)

end A256250

/-! ## A256250.P15104751208511821426

`∩[A277549(n+1), A256249(n)]`
-/

namespace A256250.P15104751208511821426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256250.P15104751208511821426

namespace A256250

/-- `∩[A277549(n+1), A256249(n)]` -/
def P15104751208511821426.Spec : Prop :=
  ∀ n, (P15104751208511821426.a n : ℤ) = A256250 (n + 1)

end A256250

/-! ## A256250.P14342723055629084314

`∩[A047478(n+1), A256249(n)]`
-/

namespace A256250.P14342723055629084314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256250.P14342723055629084314

namespace A256250

/-- `∩[A047478(n+1), A256249(n)]` -/
def P14342723055629084314.Spec : Prop :=
  ∀ n, (P14342723055629084314.a n : ℤ) = A256250 (n + 1)

end A256250

/-!
# A256251: First differences of A256250.

The programs for A256251, the canonical program `A256251.P8097163011885418650` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256251 has offset 0).

The definition of A256251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256251.P8097163011885418650

`A008574(A006257(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256251

/-- `A008574(A006257(n))` -/
def P8097163011885418650.Spec : Prop :=
  ∀ n, P8097163011885418650.a n = A256251 n

theorem P8097163011885418650.correct : P8097163011885418650.Spec := by
  intro n
  simp only [A256251]

end A256251

/-! ## A256251.P10895621805976431888

`A047461(A006257(n)+1)`
-/

namespace A256251.P10895621805976431888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A006257 n + 1).toNat

end

end A256251.P10895621805976431888

namespace A256251

/-- `A047461(A006257(n)+1)` -/
def P10895621805976431888.Spec : Prop :=
  ∀ n, P10895621805976431888.a n = A256251 n

end A256251

/-! ## A256251.P4340849135839478783

`A006257(2*n+1)+A006257(2*n)`
-/

namespace A256251.P4340849135839478783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 1) + A006257 (2 * n)

end

end A256251.P4340849135839478783

namespace A256251

/-- `A006257(2*n+1)+A006257(2*n)` -/
def P4340849135839478783.Spec : Prop :=
  ∀ n, P4340849135839478783.a n = A256251 n

end A256251

/-! ## A256251.P1905531426762753999

`A008586(A006257(n))+A000007(n)`
-/

namespace A256251.P1905531426762753999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A006257 n).toNat + A000007 n

end

end A256251.P1905531426762753999

namespace A256251

/-- `A008586(A006257(n))+A000007(n)` -/
def P1905531426762753999.Spec : Prop :=
  ∀ n, P1905531426762753999.a n = A256251 n

end A256251

/-! ## A256251.P6223264575575102597

`A047241(A006257(n)+1)+A006257(n)`
-/

namespace A256251.P6223264575575102597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A006257 n + 1).toNat + A006257 n

end

end A256251.P6223264575575102597

namespace A256251

/-- `A047241(A006257(n)+1)+A006257(n)` -/
def P6223264575575102597.Spec : Prop :=
  ∀ n, P6223264575575102597.a n = A256251 n

end A256251

/-! ## A256251.P11129488956276748365

`A006257(A004767(n))-A157532(n+1)`
-/

namespace A256251.P11129488956276748365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004767 n).toNat - A157532 (n + 1)

end

end A256251.P11129488956276748365

namespace A256251

/-- `A006257(A004767(n))-A157532(n+1)` -/
def P11129488956276748365.Spec : Prop :=
  ∀ n, P11129488956276748365.a n = A256251 n

end A256251

/-! ## A256251.P8561075966711143439

`A006257(2*n)+A005408(A006257(n))`
-/

namespace A256251.P8561075966711143439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n) + A005408 (A006257 n).toNat

end

end A256251.P8561075966711143439

namespace A256251

/-- `A006257(2*n)+A005408(A006257(n))` -/
def P8561075966711143439.Spec : Prop :=
  ∀ n, P8561075966711143439.a n = A256251 n

end A256251

/-! ## A256251.P165944261453983868

`A006257(A016825(n))-and(1, A006257(n))`
-/

namespace A256251.P165944261453983868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A016825 n).toNat - Int.land 1 (A006257 n)

end

end A256251.P165944261453983868

namespace A256251

/-- `A006257(A016825(n))-and(1, A006257(n))` -/
def P165944261453983868.Spec : Prop :=
  ∀ n, P165944261453983868.a n = A256251 n

end A256251

/-! ## A256251.P4761843893628611854

`A006257(2*n+1)+A004273(A006257(n))`
-/

namespace A256251.P4761843893628611854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 1) + A004273 (A006257 n).toNat

end

end A256251.P4761843893628611854

namespace A256251

/-- `A006257(2*n+1)+A004273(A006257(n))` -/
def P4761843893628611854.Spec : Prop :=
  ∀ n, P4761843893628611854.a n = A256251 n

end A256251

/-! ## A256251.P7819270943094144538

`A047461(A152423(n+1))`
-/

namespace A256251.P7819270943094144538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A152423 (n + 1)).toNat

end

end A256251.P7819270943094144538

namespace A256251

/-- `A047461(A152423(n+1))` -/
def P7819270943094144538.Spec : Prop :=
  ∀ n, P7819270943094144538.a n = A256251 n

end A256251

/-! ## A256251.P13262837048689550996

`A004277(2*A006257(n))`
-/

namespace A256251.P13262837048689550996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A006257 n).toNat

end

end A256251.P13262837048689550996

namespace A256251

/-- `A004277(2*A006257(n))` -/
def P13262837048689550996.Spec : Prop :=
  ∀ n, P13262837048689550996.a n = A256251 n

end A256251

/-! ## A256251.P18297054330626043839

`A004277(lcm(2, A006257(n)))`
-/

namespace A256251.P18297054330626043839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm 2 (A006257 n))

end

end A256251.P18297054330626043839

namespace A256251

/-- `A004277(lcm(2, A006257(n)))` -/
def P18297054330626043839.Spec : Prop :=
  ∀ n, P18297054330626043839.a n = A256251 n

end A256251

/-! ## A256251.P10299344882261620987

`A004273(2*A006257(n))+1`
-/

namespace A256251.P10299344882261620987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A006257 n).toNat + 1

end

end A256251.P10299344882261620987

namespace A256251

/-- `A004273(2*A006257(n))+1` -/
def P10299344882261620987.Spec : Prop :=
  ∀ n, P10299344882261620987.a n = A256251 n

end A256251

/-! ## A256251.P8786648945989666750

`A014601(A006257(2*n))+1`
-/

namespace A256251.P8786648945989666750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A006257 (2 * n)).toNat + 1

end

end A256251.P8786648945989666750

namespace A256251

/-- `A014601(A006257(2*n))+1` -/
def P8786648945989666750.Spec : Prop :=
  ∀ n, P8786648945989666750.a n = A256251 n

end A256251

/-! ## A256251.P8989224973530523912

`A026185(A006257(2*n)+1)`
-/

namespace A256251.P8989224973530523912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (A006257 (2 * n) + 1).toNat

end

end A256251.P8989224973530523912

namespace A256251

/-- `A026185(A006257(2*n)+1)` -/
def P8989224973530523912.Spec : Prop :=
  ∀ n, P8989224973530523912.a n = A256251 n

end A256251

/-! ## A256251.P1524718274463502162

`A042948(4*n+1-A003817(2*n))`
-/

namespace A256251.P1524718274463502162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ((4 * n + 1 : ℤ) - A003817 (2 * n)).toNat

end

end A256251.P1524718274463502162

namespace A256251

/-- `A042948(4*n+1-A003817(2*n))` -/
def P1524718274463502162.Spec : Prop :=
  ∀ n, P1524718274463502162.a n = A256251 n

end A256251

/-! ## A256251.P14909485914642480128

`Δ[(2*n)²-A181497(2*n)]`
-/

namespace A256251.P14909485914642480128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A181497 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256251.P14909485914642480128

namespace A256251

/-- `Δ[(2*n)²-A181497(2*n)]` -/
def P14909485914642480128.Spec : Prop :=
  ∀ n, P14909485914642480128.a n = A256251 n

end A256251

/-! ## A256251.P372117686440412182

`Δ[A256249(record[A006257(n)])]`
-/

namespace A256251.P372117686440412182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256251.P372117686440412182

namespace A256251

/-- `Δ[A256249(record[A006257(n)])]` -/
def P372117686440412182.Spec : Prop :=
  ∀ n, P372117686440412182.a n = A256251 n

end A256251

/-! ## A256251.P16470157419343620886

`Δ[A256249(A004277(n)-1)]`
-/

namespace A256251.P16470157419343620886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256251.P16470157419343620886

namespace A256251

/-- `Δ[A256249(A004277(n)-1)]` -/
def P16470157419343620886.Spec : Prop :=
  ∀ n, P16470157419343620886.a n = A256251 n

end A256251

/-! ## A256251.P2640175690883001455

`A047461(A053645(2*n+1)+1)`
-/

namespace A256251.P2640175690883001455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A053645 (2 * n + 1) + 1).toNat

end

end A256251.P2640175690883001455

namespace A256251

/-- `A047461(A053645(2*n+1)+1)` -/
def P2640175690883001455.Spec : Prop :=
  ∀ n, P2640175690883001455.a n = A256251 n

end A256251

/-!
# A256255: Triangle read by rows: T(n,k) = 6*k + 1, n>=0, 0<=k<=(2^n-1).

The programs for A256255, the canonical program `A256255.P15214798009081383748` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256255 has offset 0).

The definition of A256255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256255.P15214798009081383748

`(a(n-1)+6)%(3*(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256255

/-- `(a(n-1)+6)%(3*(n+1))` -/
def P15214798009081383748.Spec : Prop :=
  ∀ n, (P15214798009081383748.a n : ℤ) = A256255 n

theorem P15214798009081383748.correct : P15214798009081383748.Spec := by
  intro n
  simp only [A256255]

end A256255

/-! ## A256255.P10053825656650256680

`6*(1-2^floor(log2(n+1))+n)+1`
-/

namespace A256255.P10053825656650256680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (1 - (2 ^ Nat.log 2 (n + 1) : ℤ) + (n : ℤ)) + 1

end

end A256255.P10053825656650256680

namespace A256255

/-- `6*(1-2^floor(log2(n+1))+n)+1` -/
def P10053825656650256680.Spec : Prop :=
  ∀ n, P10053825656650256680.a n = A256255 n

end A256255

/-! ## A256255.P15942301831244521769

`gcd(a(n-1)+6, ∏{p}[n+1, val(#², 2)])` with `a(0)=1`
-/

namespace A256255.P15942301831244521769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (a (n - 1) + 6) (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2) 2)

end

end A256255.P15942301831244521769

namespace A256255

/-- `gcd(a(n-1)+6, ∏{p}[n+1, val(#², 2)])` -/
def P15942301831244521769.Spec : Prop :=
  ∀ n, (P15942301831244521769.a n : ℤ) = A256255 n

end A256255

/-! ## A256255.P674912668784761773

`or(1, 6*A053645(n+1))`
-/

namespace A256255.P674912668784761773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A053645 (n + 1))

end

end A256255.P674912668784761773

namespace A256255

/-- `or(1, 6*A053645(n+1))` -/
def P674912668784761773.Spec : Prop :=
  ∀ n, P674912668784761773.a n = A256255 n

end A256255

/-! ## A256255.P5296889900985439640

`abs(2-3*A006257(n+1))`
-/

namespace A256255.P5296889900985439640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * A006257 (n + 1)|

end

end A256255.P5296889900985439640

namespace A256255

/-- `abs(2-3*A006257(n+1))` -/
def P5296889900985439640.Spec : Prop :=
  ∀ n, P5296889900985439640.a n = A256255 n

end A256255

/-! ## A256255.P2515157888344723530

`A016921(and(2^floor(log2(n+1))+n+1, n+1))`
-/

namespace A256255.P2515157888344723530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (Nat.land (2 ^ Nat.log 2 (n + 1) + (n + 1)) (n + 1))

end

end A256255.P2515157888344723530

namespace A256255

/-- `A016921(and(2^floor(log2(n+1))+n+1, n+1))` -/
def P2515157888344723530.Spec : Prop :=
  ∀ n, P2515157888344723530.a n = A256255 n

end A256255

/-! ## A256255.P10949563859263216385

`A007310(A006257(n+1))`
-/

namespace A256255.P10949563859263216385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A006257 (n + 1)).toNat

end

end A256255.P10949563859263216385

namespace A256255

/-- `A007310(A006257(n+1))` -/
def P10949563859263216385.Spec : Prop :=
  ∀ n, P10949563859263216385.a n = A256255 n

end A256255

/-! ## A256255.P18271127440148746253

`A016921(A053645(n+1))`
-/

namespace A256255.P18271127440148746253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A053645 (n + 1)).toNat

end

end A256255.P18271127440148746253

namespace A256255

/-- `A016921(A053645(n+1))` -/
def P18271127440148746253.Spec : Prop :=
  ∀ n, P18271127440148746253.a n = A256255 n

end A256255

/-! ## A256255.P16997338951953898673

`A016777(A006257(n+1)-1)`
-/

namespace A256255.P16997338951953898673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A006257 (n + 1) - 1).toNat

end

end A256255.P16997338951953898673

namespace A256255

/-- `A016777(A006257(n+1)-1)` -/
def P16997338951953898673.Spec : Prop :=
  ∀ n, P16997338951953898673.a n = A256255 n

end A256255

/-! ## A256255.P1636436863741939809

`A016777(2*A053645(n+1))`
-/

namespace A256255.P1636436863741939809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * A053645 (n + 1)).toNat

end

end A256255.P1636436863741939809

namespace A256255

/-- `A016777(2*A053645(n+1))` -/
def P1636436863741939809.Spec : Prop :=
  ∀ n, P1636436863741939809.a n = A256255 n

end A256255

/-! ## A256255.P15091567879260092981

`A016777(n-A035327(n+1))`
-/

namespace A256255.P15091567879260092981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ((n : ℤ) - A035327 (n + 1)).toNat

end

end A256255.P15091567879260092981

namespace A256255

/-- `A016777(n-A035327(n+1))` -/
def P15091567879260092981.Spec : Prop :=
  ∀ n, P15091567879260092981.a n = A256255 n

end A256255

/-! ## A256255.P251079639041917452

`A047225(A152423(n+2))`
-/

namespace A256255.P251079639041917452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (A152423 (n + 2)).toNat

end

end A256255.P251079639041917452

namespace A256255

/-- `A047225(A152423(n+2))` -/
def P251079639041917452.Spec : Prop :=
  ∀ n, P251079639041917452.a n = A256255 n

end A256255

/-! ## A256255.P10162992436369147220

`A047241(A152423(n+2)-1)`
-/

namespace A256255.P10162992436369147220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A152423 (n + 2) - 1).toNat

end

end A256255.P10162992436369147220

namespace A256255

/-- `A047241(A152423(n+2)-1)` -/
def P10162992436369147220.Spec : Prop :=
  ∀ n, P10162992436369147220.a n = A256255 n

end A256255

/-! ## A256255.P6321526734436402456

`A001651(A006257(2*(n+1)))`
-/

namespace A256255.P6321526734436402456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A006257 (2 * (n + 1))).toNat

end

end A256255.P6321526734436402456

namespace A256255

/-- `A001651(A006257(2*(n+1)))` -/
def P6321526734436402456.Spec : Prop :=
  ∀ n, P6321526734436402456.a n = A256255 n

end A256255

/-! ## A256255.P12940602094358423070

`A032766(A006257(2*n+2))`
-/

namespace A256255.P12940602094358423070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A006257 (2 * n + 2)).toNat

end

end A256255.P12940602094358423070

namespace A256255

/-- `A032766(A006257(2*n+2))` -/
def P12940602094358423070.Spec : Prop :=
  ∀ n, P12940602094358423070.a n = A256255 n

end A256255

/-! ## A256255.P228758442473589556

`xor(1, 3*A053645(2*(n+1)))`
-/

namespace A256255.P228758442473589556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * A053645 (2 * (n + 1)))

end

end A256255.P228758442473589556

namespace A256255

/-- `xor(1, 3*A053645(2*(n+1)))` -/
def P228758442473589556.Spec : Prop :=
  ∀ n, P228758442473589556.a n = A256255 n

end A256255

/-! ## A256255.P17882416252312138700

`(A256258(2*n+3)-3)/2`
-/

namespace A256255.P17882416252312138700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256258 (2 * n + 3) - 3 : ℚ) / 2

end

end A256255.P17882416252312138700

namespace A256255

/-- `(A256258(2*n+3)-3)/2` -/
def P17882416252312138700.Spec : Prop :=
  ∀ n, P17882416252312138700.a n = (A256255 n : ℚ)

end A256255

/-! ## A256255.P4357778724457992055

`A226107(A256251(n+1))`
-/

namespace A256255.P4357778724457992055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A256251 (n + 1)).toNat

end

end A256255.P4357778724457992055

namespace A256255

/-- `A226107(A256251(n+1))` -/
def P4357778724457992055.Spec : Prop :=
  ∀ n, P4357778724457992055.a n = A256255 n

end A256255

/-! ## A256255.P13728511167627765942

`abs(2-Δ[A236305(n)])`
-/

namespace A256255.P13728511167627765942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A256255.P13728511167627765942

namespace A256255

/-- `abs(2-Δ[A236305(n)])` -/
def P13728511167627765942.Spec : Prop :=
  ∀ n, P13728511167627765942.a n = A256255 n

end A256255

/-!
# A256256: Total number of ON cells after n generations of cellular automaton on triangular grid, starting from a node, in which every 60-degree wedge looks like the Sierpiński's triangle.

The programs for A256256, the canonical program `A256256.P16031076571279366178` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256256 has offset 0).

The definition of A256256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256256.P16031076571279366178

`6*A006046(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256256

/-- `6*A006046(n)` -/
def P16031076571279366178.Spec : Prop :=
  ∀ n, P16031076571279366178.a n = A256256 n

theorem P16031076571279366178.correct : P16031076571279366178.Spec := by
  intro n
  simp only [A256256]

end A256256

/-! ## A256256.P1788044101577953215

`∑[gcd(2, n)*a(∑[n%2])]` with `a(0)=0, a(1)=6`
-/

namespace A256256.P1788044101577953215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  Nat.gcd 2 n * f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256256.P1788044101577953215

namespace A256256

/-- `∑[gcd(2, n)*a(∑[n%2])]` -/
def P1788044101577953215.Spec : Prop :=
  ∀ n, (P1788044101577953215.a n : ℤ) = A256256 n

end A256256

/-! ## A256256.P2975342132241422268

`3*(A080978(n)-1)`
-/

namespace A256256.P2975342132241422268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A080978 n - 1)

end

end A256256.P2975342132241422268

namespace A256256

/-- `3*(A080978(n)-1)` -/
def P2975342132241422268.Spec : Prop :=
  ∀ n, P2975342132241422268.a n = A256256 n

theorem P2975342132241422268.correct : P2975342132241422268.Spec := by
  intro n
  simp only [A256256, Nat.add_sub_cancel, A256256.P2975342132241422268.a, A256256.P16031076571279366178.a, A006046, A006046.P16130984765599899400.a, A080978, A080978.P8726104547884348525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256256

/-! ## A256256.P15672074322745727502

`3*(A159912(n)+n)`
-/

namespace A256256.P15672074322745727502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A159912 n + (n : ℤ))

end

end A256256.P15672074322745727502

namespace A256256

/-- `3*(A159912(n)+n)` -/
def P15672074322745727502.Spec : Prop :=
  ∀ n, P15672074322745727502.a n = A256256 n

end A256256

/-! ## A256256.P1916992058977191263

`3*(∑[A131136(n)]-1)`
-/

namespace A256256.P1916992058977191263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A256256.P1916992058977191263

namespace A256256

/-- `3*(∑[A131136(n)]-1)` -/
def P1916992058977191263.Spec : Prop :=
  ∀ n, P1916992058977191263.a n = A256256 n

end A256256

/-! ## A256256.P1047307170317388450

`6*(∑[n-A261366(n)]+n)`
-/

namespace A256256.P1047307170317388450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A256256.P1047307170317388450

namespace A256256

/-- `6*(∑[n-A261366(n)]+n)` -/
def P1047307170317388450.Spec : Prop :=
  ∀ n, P1047307170317388450.a n = A256256 n

end A256256

/-! ## A256256.P12612271720172410366

`∑[A256257(n)]-A256257(n)`
-/

namespace A256256.P12612271720172410366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A256257 n

end

end A256256.P12612271720172410366

namespace A256256

/-- `∑[A256257(n)]-A256257(n)` -/
def P12612271720172410366.Spec : Prop :=
  ∀ n, P12612271720172410366.a n = A256256 n

end A256256

/-! ## A256256.P9026657357996810568

`lcm(2, A006046(A005843(n)))`
-/

namespace A256256.P9026657357996810568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A006046 (A005843 n).toNat)

end

end A256256.P9026657357996810568

namespace A256256

/-- `lcm(2, A006046(A005843(n)))` -/
def P9026657357996810568.Spec : Prop :=
  ∀ n, (P9026657357996810568.a n : ℤ) = A256256 n

end A256256

/-! ## A256256.P17072793151840001569

`A006046(n+n)+A006046(n+n)`
-/

namespace A256256.P17072793151840001569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + n) + A006046 (n + n)

end

end A256256.P17072793151840001569

namespace A256256

/-- `A006046(n+n)+A006046(n+n)` -/
def P17072793151840001569.Spec : Prop :=
  ∀ n, P17072793151840001569.a n = A256256 n

end A256256

/-! ## A256256.P907937197872653390

`A080978(2*n)-1`
-/

namespace A256256.P907937197872653390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 (2 * n) - 1

end

end A256256.P907937197872653390

namespace A256256

/-- `A080978(2*n)-1` -/
def P907937197872653390.Spec : Prop :=
  ∀ n, P907937197872653390.a n = A256256 n

end A256256

/-! ## A256256.P11956560538441366804

`A105321(2*n)-(A001316(n)-A173522(2*n))`
-/

namespace A256256.P11956560538441366804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (2 * n) - (A001316 n - A173522 (2 * n))

end

end A256256.P11956560538441366804

namespace A256256

/-- `A105321(2*n)-(A001316(n)-A173522(2*n))` -/
def P11956560538441366804.Spec : Prop :=
  ∀ n, P11956560538441366804.a n = A256256 n

end A256256

/-! ## A256256.P6199404895581132890

`A160744(2*n)`
-/

namespace A256256.P6199404895581132890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160744 (2 * n)

end

end A256256.P6199404895581132890

namespace A256256

/-- `A160744(2*n)` -/
def P6199404895581132890.Spec : Prop :=
  ∀ n, P6199404895581132890.a n = A256256 n

end A256256

/-! ## A256256.P15103828340199864412

`A173522(2*n+1)-A001316(n)`
-/

namespace A256256.P15103828340199864412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (2 * n + 1) - A001316 n

end

end A256256.P15103828340199864412

namespace A256256

/-- `A173522(2*n+1)-A001316(n)` -/
def P15103828340199864412.Spec : Prop :=
  ∀ n, P15103828340199864412.a n = A256256 n

end A256256

/-! ## A256256.P5552577337645522577

`A160742(2*n)+A151566(2*n)`
-/

namespace A256256.P5552577337645522577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160742 (2 * n) + A151566 (2 * n)

end

end A256256.P5552577337645522577

namespace A256256

/-- `A160742(2*n)+A151566(2*n)` -/
def P5552577337645522577.Spec : Prop :=
  ∀ n, P5552577337645522577.a n = A256256 n

end A256256

/-! ## A256256.P2809774642505157844

`A160746(2*n)-A151566(2*n)`
-/

namespace A256256.P2809774642505157844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160746 (2 * n) - A151566 (2 * n)

end

end A256256.P2809774642505157844

namespace A256256

/-- `A160746(2*n)-A151566(2*n)` -/
def P2809774642505157844.Spec : Prop :=
  ∀ n, P2809774642505157844.a n = A256256 n

end A256256

/-! ## A256256.P5799367219401782352

`2*(A267700(2*n)+A048967(2*n))`
-/

namespace A256256.P5799367219401782352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A267700 (2 * n) + A048967 (2 * n))

end

end A256256.P5799367219401782352

namespace A256256

/-- `2*(A267700(2*n)+A048967(2*n))` -/
def P5799367219401782352.Spec : Prop :=
  ∀ n, P5799367219401782352.a n = A256256 n

end A256256

/-! ## A256256.P12461242572213398854

`A173522(2*n+1)-A000079(A000120(n))`
-/

namespace A256256.P12461242572213398854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (2 * n + 1) - A000079 (A000120 n).toNat

end

end A256256.P12461242572213398854

namespace A256256

/-- `A173522(2*n+1)-A000079(A000120(n))` -/
def P12461242572213398854.Spec : Prop :=
  ∀ n, P12461242572213398854.a n = A256256 n

end A256256

/-! ## A256256.P7324761403131256881

`A139250(2*n+1)-(A173454(2*n+1)+A001316(n))`
-/

namespace A256256.P7324761403131256881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (2 * n + 1) - (A173454 (2 * n + 1) + A001316 n)

end

end A256256.P7324761403131256881

namespace A256256

/-- `A139250(2*n+1)-(A173454(2*n+1)+A001316(n))` -/
def P7324761403131256881.Spec : Prop :=
  ∀ n, P7324761403131256881.a n = A256256 n

end A256256

/-! ## A256256.P13005324938280113382

`A151566(4*n)`
-/

namespace A256256.P13005324938280113382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (4 * n)

end

end A256256.P13005324938280113382

namespace A256256

/-- `A151566(4*n)` -/
def P13005324938280113382.Spec : Prop :=
  ∀ n, P13005324938280113382.a n = A256256 n

end A256256

/-! ## A256256.P2843650751091156035

`∩[A151566(n), A160744(n)]`
-/

namespace A256256.P2843650751091156035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256256.P2843650751091156035

namespace A256256

/-- `∩[A151566(n), A160744(n)]` -/
def P2843650751091156035.Spec : Prop :=
  ∀ n, (P2843650751091156035.a n : ℤ) = A256256 n

end A256256

/-!
# A256257: 6 times numbers of Gould's sequence A001316.

The programs for A256257, the canonical program `A256257.P3128146653347024265` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256257 has offset 0).

The definition of A256257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256257.P3128146653347024265

`2*A160713(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256257

/-- `2*A160713(n)` -/
def P3128146653347024265.Spec : Prop :=
  ∀ n, P3128146653347024265.a n = A256257 n

theorem P3128146653347024265.correct : P3128146653347024265.Spec := by
  intro n
  simp only [A256257]

end A256257

/-! ## A256257.P12073768774648499364

`3*A117973(n)`
-/

namespace A256257.P12073768774648499364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A117973 n

end

end A256257.P12073768774648499364

namespace A256257

/-- `3*A117973(n)` -/
def P12073768774648499364.Spec : Prop :=
  ∀ n, P12073768774648499364.a n = A256257 n

theorem P12073768774648499364.correct : P12073768774648499364.Spec := by
  intro n
  simp only [A256257, Nat.add_sub_cancel, A256257.P12073768774648499364.a, A256257.P3128146653347024265.a, A117973, A117973.P11230116199213534894.a, A160713, A160713.P13545516001355508578.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256257

/-! ## A256257.P4983273364061061779

`6*A001316(n)`
-/

namespace A256257.P4983273364061061779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001316 n

end

end A256257.P4983273364061061779

namespace A256257

/-- `6*A001316(n)` -/
def P4983273364061061779.Spec : Prop :=
  ∀ n, P4983273364061061779.a n = A256257 n

theorem P4983273364061061779.correct : P4983273364061061779.Spec := by
  intro n
  simp only [A256257, Nat.add_sub_cancel, A256257.P4983273364061061779.a, A256257.P3128146653347024265.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A160713, A160713.P13545516001355508578.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256257

/-! ## A256257.P5176887700778320106

`2*a(and(n, n-1))` with `a(0)=6`
-/

namespace A256257.P5176887700778320106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A256257.P5176887700778320106

namespace A256257

/-- `2*a(and(n, n-1))` -/
def P5176887700778320106.Spec : Prop :=
  ∀ n, (P5176887700778320106.a n : ℤ) = A256257 n

end A256257

/-! ## A256257.P12178542973746930539

`2*a(n-2^floor(log2(n)))` with `a(0)=6`
-/

namespace A256257.P12178542973746930539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n)

end

end A256257.P12178542973746930539

namespace A256257

/-- `2*a(n-2^floor(log2(n)))` -/
def P12178542973746930539.Spec : Prop :=
  ∀ n, (P12178542973746930539.a n : ℤ) = A256257 n

end A256257

/-! ## A256257.P18429434951545579840

`lcm(2*a(n-1), 3*n)/n` with `a(0)=6`
-/

namespace A256257.P18429434951545579840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (2 * a (n - 1))) (3 * n : ℤ) : ℚ) / (n : ℚ)

end

end A256257.P18429434951545579840

namespace A256257

/-- `lcm(2*a(n-1), 3*n)/n` -/
def P18429434951545579840.Spec : Prop :=
  ∀ n, P18429434951545579840.a n = (A256257 n : ℚ)

end A256257

/-! ## A256257.P9999403304578553357

`3*∏[a(floor(n/2))/a(n-1)]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A256257.P9999403304578553357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A256257.P9999403304578553357

namespace A256257

/-- `3*∏[a(floor(n/2))/a(n-1)]` -/
def P9999403304578553357.Spec : Prop :=
  ∀ n, P9999403304578553357.a n = (A256257 n : ℚ)

end A256257

/-! ## A256257.P2587634663207524657

`6*2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A256257.P2587634663207524657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ)

end

end A256257.P2587634663207524657

namespace A256257

/-- `6*2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P2587634663207524657.Spec : Prop :=
  ∀ n, P2587634663207524657.a n = (A256257 n : ℚ)

end A256257

/-! ## A256257.P17872013554795222841

`Δ[A256256(n)]`
-/

namespace A256257.P17872013554795222841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256257.P17872013554795222841

namespace A256257

/-- `Δ[A256256(n)]` -/
def P17872013554795222841.Spec : Prop :=
  ∀ n, P17872013554795222841.a n = A256257 n

end A256257

/-! ## A256257.P4169739963047409425

`lcm(6, A167275(n))`
-/

namespace A256257.P4169739963047409425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A167275 n)

end

end A256257.P4169739963047409425

namespace A256257

/-- `lcm(6, A167275(n))` -/
def P4169739963047409425.Spec : Prop :=
  ∀ n, (P4169739963047409425.a n : ℤ) = A256257 n

end A256257

/-! ## A256257.P17030979302124499000

`Δ[6*A006046(n)]`
-/

namespace A256257.P17030979302124499000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256257.P17030979302124499000

namespace A256257

/-- `Δ[6*A006046(n)]` -/
def P17030979302124499000.Spec : Prop :=
  ∀ n, P17030979302124499000.a n = A256257 n

end A256257

/-! ## A256257.P6748268441153647725

`6*A060632(2*n)`
-/

namespace A256257.P6748268441153647725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060632 (2 * n)

end

end A256257.P6748268441153647725

namespace A256257

/-- `6*A060632(2*n)` -/
def P6748268441153647725.Spec : Prop :=
  ∀ n, P6748268441153647725.a n = A256257 n

end A256257

/-! ## A256257.P2782492222371376513

`6*2^A000120(n)`
-/

namespace A256257.P2782492222371376513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (2 : ℚ) ^ (A000120 n : ℤ)

end

end A256257.P2782492222371376513

namespace A256257

/-- `6*2^A000120(n)` -/
def P2782492222371376513.Spec : Prop :=
  ∀ n, P2782492222371376513.a n = (A256257 n : ℚ)

end A256257

/-! ## A256257.P7811612225320139450

`2*(A160723(n+1)+2)`
-/

namespace A256257.P7811612225320139450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160723 (n + 1) + 2)

end

end A256257.P7811612225320139450

namespace A256257

/-- `2*(A160723(n+1)+2)` -/
def P7811612225320139450.Spec : Prop :=
  ∀ n, P7811612225320139450.a n = A256257 n

theorem P7811612225320139450.correct : P7811612225320139450.Spec := by
  intro n
  simp only [A256257, Nat.add_sub_cancel, A256257.P7811612225320139450.a, A256257.P3128146653347024265.a, A160713, A160713.P13545516001355508578.a, A160723, A160723.P3417646803809005033.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256257

/-! ## A256257.P13303253028943175002

`3*2^A063787(n+1)`
-/

namespace A256257.P13303253028943175002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A063787 (n + 1) : ℤ)

end

end A256257.P13303253028943175002

namespace A256257

/-- `3*2^A063787(n+1)` -/
def P13303253028943175002.Spec : Prop :=
  ∀ n, P13303253028943175002.a n = (A256257 n : ℚ)

end A256257

/-! ## A256257.P4343512266931787008

`6*A105321(n)-a(n-1)` with `a(0)=6`
-/

namespace A256257.P4343512266931787008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 * A105321 n - a (n - 1)

end

end A256257.P4343512266931787008

namespace A256257

/-- `6*A105321(n)-a(n-1)` -/
def P4343512266931787008.Spec : Prop :=
  ∀ n, P4343512266931787008.a n = A256257 n

end A256257

/-! ## A256257.P6430957436558552141

`A004758(A001316(n))`
-/

namespace A256257.P6430957436558552141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (A001316 n).toNat

end

end A256257.P6430957436558552141

namespace A256257

/-- `A004758(A001316(n))` -/
def P6430957436558552141.Spec : Prop :=
  ∀ n, P6430957436558552141.a n = A256257 n

end A256257

/-! ## A256257.P13280240789907286934

`A007283(A000120(n)+1)`
-/

namespace A256257.P13280240789907286934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A000120 n + 1).toNat

end

end A256257.P13280240789907286934

namespace A256257

/-- `A007283(A000120(n)+1)` -/
def P13280240789907286934.Spec : Prop :=
  ∀ n, P13280240789907286934.a n = A256257 n

end A256257

/-! ## A256257.P6538892181630622011

`A016969(A038573(n))+1`
-/

namespace A256257.P6538892181630622011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A038573 n).toNat + 1

end

end A256257.P6538892181630622011

namespace A256257

/-- `A016969(A038573(n))+1` -/
def P6538892181630622011.Spec : Prop :=
  ∀ n, P6538892181630622011.a n = A256257 n

end A256257

/-! ## A256257.P6424947288329934080

`A007283(A063787(n+1))`
-/

namespace A256257.P6424947288329934080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A063787 (n + 1)).toNat

end

end A256257.P6424947288329934080

namespace A256257

/-- `A007283(A063787(n+1))` -/
def P6424947288329934080.Spec : Prop :=
  ∀ n, P6424947288329934080.a n = A256257 n

end A256257

/-!
# A256258: Triangle read by rows in which the row lengths are the terms of A011782 and row n lists the terms of A016969 except for the right border which gives the positive terms of A000225.

The programs for A256258, the canonical program `A256258.P6821656048221745013` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256258 has offset 1).

The definition of A256258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256258.P2242996256364786617

`Δ[A256249(n)]+2*A006257(n)`
-/

namespace A256258.P2242996256364786617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A006257 n

end

end A256258.P2242996256364786617

namespace A256258

/-- `Δ[A256249(n)]+2*A006257(n)` -/
def P2242996256364786617.Spec : Prop :=
  ∀ n, P2242996256364786617.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P6821656048221745013

`2*A006257(n)+A006257(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256258

/-- `2*A006257(n)+A006257(n+1)` -/
def P6821656048221745013.Spec : Prop :=
  ∀ n, P6821656048221745013.a n = A256258 (n + 1)

theorem P6821656048221745013.correct : P6821656048221745013.Spec := by
  intro n
  simp only [A256258, Nat.add_sub_cancel]

end A256258

/-! ## A256258.P14268822558018011980

`A006257(A006257(n)+A004756(n+1))`
-/

namespace A256258.P14268822558018011980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A006257 n + A004756 (n + 1)).toNat

end

end A256258.P14268822558018011980

namespace A256258

/-- `A006257(A006257(n)+A004756(n+1))` -/
def P14268822558018011980.Spec : Prop :=
  ∀ n, P14268822558018011980.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P17721662402894485688

`A006257(n+1)+A005843(A006257(n))`
-/

namespace A256258.P17721662402894485688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (n + 1) + A005843 (A006257 n).toNat

end

end A256258.P17721662402894485688

namespace A256258

/-- `A006257(n+1)+A005843(A006257(n))` -/
def P17721662402894485688.Spec : Prop :=
  ∀ n, P17721662402894485688.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P4878289247307229642

`A005408(A053645(n+1)+A006257(n))`
-/

namespace A256258.P4878289247307229642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A053645 (n + 1) + A006257 n).toNat

end

end A256258.P4878289247307229642

namespace A256258

/-- `A005408(A053645(n+1)+A006257(n))` -/
def P4878289247307229642.Spec : Prop :=
  ∀ n, P4878289247307229642.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P17686942972042003184

`3*n+2-(A035327(2*n)+A035327(n+1))`
-/

namespace A256258.P17686942972042003184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (A035327 (2 * n) + A035327 (n + 1))

end

end A256258.P17686942972042003184

namespace A256258

/-- `3*n+2-(A035327(2*n)+A035327(n+1))` -/
def P17686942972042003184.Spec : Prop :=
  ∀ n, P17686942972042003184.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P926988189034638064

`A062050(2*(n+1))+2*A053645(2*n+1)`
-/

namespace A256258.P926988189034638064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * (n + 1)) + 2 * A053645 (2 * n + 1)

end

end A256258.P926988189034638064

namespace A256258

/-- `A062050(2*(n+1))+2*A053645(2*n+1)` -/
def P926988189034638064.Spec : Prop :=
  ∀ n, P926988189034638064.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P16382976496398278050

`A005408(A053645(Δ[n²])+A053645(n+1))`
-/

namespace A256258.P16382976496398278050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A053645 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A053645 (n + 1)).toNat

end

end A256258.P16382976496398278050

namespace A256258

/-- `A005408(A053645(Δ[n²])+A053645(n+1))` -/
def P16382976496398278050.Spec : Prop :=
  ∀ n, P16382976496398278050.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P1853112113126325421

`A004754(2*(n+1))-(A080079(2*n+1)+A080079(2*(n+1)))`
-/

namespace A256258.P1853112113126325421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (2 * (n + 1)) - (A080079 (2 * n + 1) + A080079 (2 * (n + 1)))

end

end A256258.P1853112113126325421

namespace A256258

/-- `A004754(2*(n+1))-(A080079(2*n+1)+A080079(2*(n+1)))` -/
def P1853112113126325421.Spec : Prop :=
  ∀ n, P1853112113126325421.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P10293256771792174790

`Δ[A256249(2*n)-A256249(n)]`
-/

namespace A256258.P10293256771792174790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 (2 * n) - A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256258.P10293256771792174790

namespace A256258

/-- `Δ[A256249(2*n)-A256249(n)]` -/
def P10293256771792174790.Spec : Prop :=
  ∀ n, P10293256771792174790.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P3701602059001714010

`A256263(A004760(n+2))`
-/

namespace A256258.P3701602059001714010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A004760 (n + 2)).toNat

end

end A256258.P3701602059001714010

namespace A256258

/-- `A256263(A004760(n+2))` -/
def P3701602059001714010.Spec : Prop :=
  ∀ n, P3701602059001714010.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P12875144291354535393

`A256263(A206332(2*n+1)/2)`
-/

namespace A256258.P12875144291354535393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (SequenceMachineLib.roundAway ((A206332 (2 * n + 1) : ℚ) / 2)).toNat

end

end A256258.P12875144291354535393

namespace A256258

/-- `A256263(A206332(2*n+1)/2)` -/
def P12875144291354535393.Spec : Prop :=
  ∀ n, P12875144291354535393.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P16990861760646821232

`A256263(A053644(2*n+1)+n)`
-/

namespace A256258.P16990861760646821232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A053644 (2 * n + 1) + (n : ℤ)).toNat

end

end A256258.P16990861760646821232

namespace A256258

/-- `A256263(A053644(2*n+1)+n)` -/
def P16990861760646821232.Spec : Prop :=
  ∀ n, P16990861760646821232.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P13855755953323007241

`A256263(A206332(n+1))`
-/

namespace A256258.P13855755953323007241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (A206332 (n + 1)).toNat

end

end A256258.P13855755953323007241

namespace A256258

/-- `A256263(A206332(n+1))` -/
def P13855755953323007241.Spec : Prop :=
  ∀ n, P13855755953323007241.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P9304543093041342602

`A246591(A005843(n+1))+A005843(A246591(A005843(n)))`
-/

namespace A256258.P9304543093041342602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (A005843 (n + 1)).toNat + A005843 (A246591 (A005843 n).toNat).toNat

end

end A256258.P9304543093041342602

namespace A256258

/-- `A246591(A005843(n+1))+A005843(A246591(A005843(n)))` -/
def P9304543093041342602.Spec : Prop :=
  ∀ n, P9304543093041342602.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P14475889697693760656

`A004770(n+1)-A004761(A004754(2*(n+1)))`
-/

namespace A256258.P14475889697693760656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) - A004761 (A004754 (2 * (n + 1))).toNat

end

end A256258.P14475889697693760656

namespace A256258

/-- `A004770(n+1)-A004761(A004754(2*(n+1)))` -/
def P14475889697693760656.Spec : Prop :=
  ∀ n, P14475889697693760656.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P14511244966771701946

`A053645(2*(n+1))+A053645(4*n+3)`
-/

namespace A256258.P14511244966771701946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * (n + 1)) + A053645 (4 * n + 3)

end

end A256258.P14511244966771701946

namespace A256258

/-- `A053645(2*(n+1))+A053645(4*n+3)` -/
def P14511244966771701946.Spec : Prop :=
  ∀ n, P14511244966771701946.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P11655018426922743220

`A053645(A004767(n))+2*A053645(n+1)`
-/

namespace A256258.P11655018426922743220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A004767 n).toNat + 2 * A053645 (n + 1)

end

end A256258.P11655018426922743220

namespace A256258

/-- `A053645(A004767(n))+2*A053645(n+1)` -/
def P11655018426922743220.Spec : Prop :=
  ∀ n, P11655018426922743220.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P3028325069256158486

`A266509(A080565(n+1))`
-/

namespace A256258.P3028325069256158486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 (A080565 (n + 1)).toNat

end

end A256258.P3028325069256158486

namespace A256258

/-- `A266509(A080565(n+1))` -/
def P3028325069256158486.Spec : Prop :=
  ∀ n, P3028325069256158486.a n = A256258 (n + 1)

end A256258

/-! ## A256258.P14364480804826020340

`A266509(A079946(2*n+1)/2)`
-/

namespace A256258.P14364480804826020340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 (SequenceMachineLib.roundAway ((A079946 (2 * n + 1) : ℚ) / 2)).toNat

end

end A256258.P14364480804826020340

namespace A256258

/-- `A266509(A079946(2*n+1)/2)` -/
def P14364480804826020340.Spec : Prop :=
  ∀ n, P14364480804826020340.a n = A256258 (n + 1)

end A256258

/-!
# A256259: Sum of divisors of the minimal numbers (A007416).

The programs for A256259, there is no canonical definition to state claims against.
-/

/-! ## A256259.P7371322699484020632

`A000203(A007416(n+1))`
-/

namespace A256259.P7371322699484020632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007416 (n + 1)).toNat

end

end A256259.P7371322699484020632

/-! ## A256259.P14909245818706759268

`∑{d}[A007416(n+1), #]`
-/

namespace A256259.P14909245818706759268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P14909245818706759268

/-! ## A256259.P80648859289320187

`∑{d}[record[A007416(A133310(n))], #]`
-/

namespace A256259.P80648859289320187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P80648859289320187

/-! ## A256259.P459991147380920916

`∑{d}[record[A007416(A152271(n))], #]`
-/

namespace A256259.P459991147380920916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P459991147380920916

/-! ## A256259.P143627500389329136

`∑{d}[record[A007416(A154958(n))], #]`
-/

namespace A256259.P143627500389329136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P143627500389329136

/-! ## A256259.P12907417484513363534

`∑{d}[record[A007416(A246694(n))], #]`
-/

namespace A256259.P12907417484513363534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P12907417484513363534

/-! ## A256259.P14866563537020243241

`∑{d}[record[A007416(A328396(n))], #]`
-/

namespace A256259.P14866563537020243241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P14866563537020243241

/-! ## A256259.P14942784574408773729

`∑{d}[record[A005179(A000005(n+1))], #]`
-/

namespace A256259.P14942784574408773729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000005 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P14942784574408773729

/-! ## A256259.P9959922075741938158

`A081533(A053212(n+1))`
-/

namespace A256259.P9959922075741938158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081533 (A053212 (n + 1)).toNat

end

end A256259.P9959922075741938158

/-! ## A256259.P6625022432078444083

`∑{d}[A053213(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A256259.P6625022432078444083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053213 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256259.P6625022432078444083

/-!
# A256260: Total number of ON states after n generations of a cellular automaton-like on the square grid.

The programs for A256260, there is no canonical definition to state claims against.
-/

/-! ## A256260.P3163044976240939475

`1+4*A256264(n)`
-/

namespace A256260.P3163044976240939475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A256264 n

end

end A256260.P3163044976240939475

/-! ## A256260.P12105016478491978021

`∑[A256261(n)]`
-/

namespace A256260.P12105016478491978021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256260.P12105016478491978021

/-! ## A256260.P13138919986297542374

`∑[4*A256263(n)]+1`
-/

namespace A256260.P13138919986297542374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256260.P13138919986297542374

/-! ## A256260.P17770381984967529825

`2*A266510(2*(n+1))+1`
-/

namespace A256260.P17770381984967529825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266510 (2 * (n + 1)) + 1

end

end A256260.P17770381984967529825

/-! ## A256260.P2918530215105343091

`A016813(A256264(n))`
-/

namespace A256260.P2918530215105343091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A256264 n).toNat

end

end A256260.P2918530215105343091

/-! ## A256260.P11427690423938937805

`∑[A008574(A256263(n))]`
-/

namespace A256260.P11427690423938937805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A256263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256260.P11427690423938937805

/-! ## A256260.P882991388998321816

`A005408(2*A256264(n))`
-/

namespace A256260.P882991388998321816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A256264 n).toNat

end

end A256260.P882991388998321816

/-! ## A256260.P15709391243565179677

`∑[∏{d}[4*A256263(n), A014963(#)]]`
-/

namespace A256260.P15709391243565179677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A014963 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256260.P15709391243565179677

/-! ## A256260.P2819062778251422078

`A007318(∑[(-1)^n])*or(1, 4*A256264(n))`
-/

namespace A256260.P2819062778251422078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * Int.lor 1 (4 * A256264 n)

end

end A256260.P2819062778251422078

/-! ## A256260.P8640778264741936432

`a(n-1)+1-(A000010(ceil(1/(n+1)))-A256261(n))` with `a(0)=1`
-/

namespace A256260.P8640778264741936432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat - A256261 n)

end

end A256260.P8640778264741936432

/-!
# A256261: First differences of A256260.

The programs for A256261, there is no canonical definition to state claims against.
-/

/-! ## A256261.P14116640392674768098

`floor(2/acot(2*A256263(n)))`
-/

namespace A256261.P14116640392674768098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (2 * A256263 n : ℝ)⌋

end

end A256261.P14116640392674768098

/-! ## A256261.P12402823677714458351

`A008574(A256263(n))`
-/

namespace A256261.P12402823677714458351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A256263 n).toNat

end

end A256261.P12402823677714458351

/-! ## A256261.P2389925500396219630

`A047461(A256263(n)+1)`
-/

namespace A256261.P2389925500396219630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A256263 n + 1).toNat

end

end A256261.P2389925500396219630

/-! ## A256261.P6472238448117885083

`A003485(2*A256263(n))`
-/

namespace A256261.P6472238448117885083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (2 * A256263 n).toNat

end

end A256261.P6472238448117885083

/-! ## A256261.P8310398801907690605

`A004277(2*A256263(n))`
-/

namespace A256261.P8310398801907690605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A256263 n).toNat

end

end A256261.P8310398801907690605

/-! ## A256261.P6896072075386783983

`A003485(lcm(2, A256263(n)))`
-/

namespace A256261.P6896072075386783983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (Int.lcm 2 (A256263 n))

end

end A256261.P6896072075386783983

/-! ## A256261.P4697070019284501115

`A008574(A266509(2*(n+1)))`
-/

namespace A256261.P4697070019284501115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A266509 (2 * (n + 1))).toNat

end

end A256261.P4697070019284501115

/-! ## A256261.P6333335975164026039

`val(A000040(n+1), 2)+4*A256263(n)`
-/

namespace A256261.P6333335975164026039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + 4 * A256263 n

end

end A256261.P6333335975164026039

/-! ## A256261.P1773812608419318995

`4*A256263(n)-A008683(2*(n+1)²)`
-/

namespace A256261.P1773812608419318995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256263 n - A008683 (2 * (n + 1) ^ 2)

end

end A256261.P1773812608419318995

/-! ## A256261.P17785074431932058422

`A008683(4*a(n-1))+4*A256263(n)` with `a(0)=1`
-/

namespace A256261.P17785074431932058422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (4 * a (n - 1)).toNat + 4 * A256263 n

end

end A256261.P17785074431932058422

/-!
# A256262: Number of successive odd numbers that are not twin primes and number of successive twin primes, interleaved.

The programs for A256262, there is no canonical definition to state claims against.
-/

/-! ## A256262.P348286382053672218

`Δ[A008619(A064429(A265760(n+1)))]`
-/

namespace A256262.P348286382053672218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A064429 (A265760 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256262.P348286382053672218

/-! ## A256262.P8170722461677105697

`Δ[A028242(A265760(n+1)+A033999(n))]`
-/

namespace A256262.P8170722461677105697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A265760 (n + 1) + A033999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256262.P8170722461677105697

/-!
# A256263: Triangle read by rows: T(j,k) = 2*k-1 if k is a power of 2, otherwise, between positions that are powers of 2 we have the initial terms of A016969, with j>=0, 1<=k<=A011782(j) and T(0,1) = 0.

The programs for A256263, there is no canonical definition to state claims against.
-/

/-! ## A256263.P9637610682208546867

`A266509(Δ[n²])`
-/

namespace A256263.P9637610682208546867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A256263.P9637610682208546867

/-! ## A256263.P10989187126239649667

`A266509(2*(n+1))%(2*n+1)`
-/

namespace A256263.P10989187126239649667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266509 (2 * (n + 1))) (2 * n + 1 : ℤ)

end

end A256263.P10989187126239649667

/-! ## A256263.P15642598082854100118

`or(n%2, A266509(A005408(n)))`
-/

namespace A256263.P15642598082854100118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A266509 (A005408 n).toNat)

end

end A256263.P15642598082854100118

/-! ## A256263.P3723337237050311635

`Δ[A266510(A028310(2*n))/2]`
-/

namespace A256263.P3723337237050311635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266510 (A028310 (2 * n)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256263.P3723337237050311635

/-! ## A256263.P5971766106897913210

`A057427(n)*A266509(2*(n+1))`
-/

namespace A256263.P5971766106897913210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A266509 (2 * (n + 1))

end

end A256263.P5971766106897913210

/-! ## A256263.P15314138301659868697

`A266510(2*(n+1))-A266510(2*n+1)`
-/

namespace A256263.P15314138301659868697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (2 * (n + 1)) - A266510 (2 * n + 1)

end

end A256263.P15314138301659868697

/-! ## A256263.P10800946973497796798

`A266509(A005408(n))^(A014442(n+1)%4)`
-/

namespace A256263.P10800946973497796798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266509 (A005408 n).toNat : ℚ) ^ (Int.tmod (A014442 (n + 1)) 4 : ℤ)

end

end A256263.P10800946973497796798

/-! ## A256263.P13845021519941178151

`A266510(2*(n+1))+A266510(2*n+1)*A280193(2*n+1)`
-/

namespace A256263.P13845021519941178151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (2 * (n + 1)) + A266510 (2 * n + 1) * A280193 (2 * n + 1)

end

end A256263.P13845021519941178151

/-! ## A256263.P17759764217425971027

`A002265(A256261(n))`
-/

namespace A256263.P17759764217425971027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A256261 n).toNat

end

end A256263.P17759764217425971027

/-!
# A256264: Partial sums of A256263.

The programs for A256264, there is no canonical definition to state claims against.
-/

/-! ## A256264.P16850049401561012649

`(A256260(n+1)-1)/4`
-/

namespace A256264.P16850049401561012649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256260 (n + 1) - 1 : ℚ) / 4

end

end A256264.P16850049401561012649

/-! ## A256264.P9963211978071537541

`∑[A256263(n)]`
-/

namespace A256264.P9963211978071537541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256264.P9963211978071537541

/-! ## A256264.P9134548910269786774

`∑[A266509(Δ[n²])]`
-/

namespace A256264.P9134548910269786774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256264.P9134548910269786774

/-! ## A256264.P1531982393884480608

`A266510(2*(n+1))/2`
-/

namespace A256264.P1531982393884480608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266510 (2 * (n + 1)) : ℚ) / 2

end

end A256264.P1531982393884480608

/-! ## A256264.P10685522419499299927

`record[A266510(n+2)/A280193(n)]`
-/

namespace A256264.P10685522419499299927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266510 (n + 2) : ℚ) / (A280193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256264.P10685522419499299927

/-! ## A256264.P4126326259778708191

`∑[or(n%2, A266509(A005408(n)))]`
-/

namespace A256264.P4126326259778708191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A266509 (A005408 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256264.P4126326259778708191

/-! ## A256264.P10271030901344579823

`∑[A266509(2*(n+1))]*A057427(n)`
-/

namespace A256264.P10271030901344579823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A256264.P10271030901344579823

/-! ## A256264.P11777701542103409016

`∑[A266510(2*(n+1))-A266510(2*n+1)]`
-/

namespace A256264.P11777701542103409016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (2 * (n + 1)) - A266510 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256264.P11777701542103409016

/-! ## A256264.P9507735277798941633

`record[A273943(A266510(n+1))]`
-/

namespace A256264.P9507735277798941633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A266510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256264.P9507735277798941633

/-! ## A256264.P6893169340688949847

`A014682(A266510(2*(n+1)))`
-/

namespace A256264.P6893169340688949847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A266510 (2 * (n + 1))).toNat

end

end A256264.P6893169340688949847

/-! ## A256264.P8780051261982231976

`A026741(lcm(2, A266510(2*(n+1))))`
-/

namespace A256264.P8780051261982231976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm 2 (A266510 (2 * (n + 1))))

end

end A256264.P8780051261982231976

/-!
# A256265: Sums of two successive terms of A256264.

The programs for A256265, there is no canonical definition to state claims against.
-/

/-! ## A256265.P4340469487564336357

`A256264(n+1)+A256264(n)`
-/

namespace A256265.P4340469487564336357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256264 (n + 1) + A256264 n

end

end A256265.P4340469487564336357

/-! ## A256265.P7709582199924965150

`A266510(2*n+3)`
-/

namespace A256265.P7709582199924965150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (2 * n + 3)

end

end A256265.P7709582199924965150

/-! ## A256265.P16235304293944497607

`filter[A266510(n+1), A000035(#)]`
-/

namespace A256265.P16235304293944497607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A256265.P16235304293944497607

/-! ## A256265.P10289106802872131270

`filter[A266510(n+3), A284948(#)]`
-/

namespace A256265.P10289106802872131270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284948 (f1 j).toNat = 1) n)

end

end A256265.P10289106802872131270

/-! ## A256265.P6786602854723625988

`filter[A266510(n+3), A373157(#)]`
-/

namespace A256265.P6786602854723625988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A256265.P6786602854723625988

/-! ## A256265.P9146404205789099872

`∑[A256263(n+1)+A256263(n)]`
-/

namespace A256265.P9146404205789099872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256263 (n + 1) + A256263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256265.P9146404205789099872

/-! ## A256265.P240606230107753690

`∩[A266510(n+2), A005843(n)+1]`
-/

namespace A256265.P240606230107753690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256265.P240606230107753690

/-! ## A256265.P11969827084283919257

`A028310(A266510(record[2-xor(1, -n)]+1))`
-/

namespace A256265.P11969827084283919257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A266510 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat).toNat

end

end A256265.P11969827084283919257

/-!
# A256266: Total number of ON states after n generations of cellular automaton based on triangles (see Comments lines for definition).

The programs for A256266, the canonical program `A256266.P14313882748594932961` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256266 has offset 0).

The definition of A256266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256266.P13355644503095462635

`∑[6*xor(1, 2^ceil(log2(n+1)))%(n+1)]`
-/

namespace A256266.P13355644503095462635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (Int.xor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256266.P13355644503095462635

namespace A256266

/-- `∑[6*xor(1, 2^ceil(log2(n+1)))%(n+1)]` -/
def P13355644503095462635.Spec : Prop :=
  ∀ n, P13355644503095462635.a n = A256266 n

end A256266

/-! ## A256266.P14313882748594932961

`3*(∑[or(2*n, a(n-1))]-n²+n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256266

/-- `3*(∑[or(2*n, a(n-1))]-n²+n)` -/
def P14313882748594932961.Spec : Prop :=
  ∀ n, P14313882748594932961.a n = A256266 n

theorem P14313882748594932961.correct : P14313882748594932961.Spec := by
  intro n
  simp only [A256266]

end A256266

/-! ## A256266.P3976268573079487801

`∑[A262617(n)]`
-/

namespace A256266.P3976268573079487801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256266.P3976268573079487801

namespace A256266

/-- `∑[A262617(n)]` -/
def P3976268573079487801.Spec : Prop :=
  ∀ n, P3976268573079487801.a n = A256266 n

end A256266

/-! ## A256266.P16475938257986370452

`3*(∑[A261693(n)]+n)`
-/

namespace A256266.P16475938257986370452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A256266.P16475938257986370452

namespace A256266

/-- `3*(∑[A261693(n)]+n)` -/
def P16475938257986370452.Spec : Prop :=
  ∀ n, P16475938257986370452.a n = A256266 n

end A256266

/-! ## A256266.P17354261821777851700

`∑[6*and(-n, A003817(n))]`
-/

namespace A256266.P17354261821777851700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.land (-(n : ℤ)) (A003817 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256266.P17354261821777851700

namespace A256266

/-- `∑[6*and(-n, A003817(n))]` -/
def P17354261821777851700.Spec : Prop :=
  ∀ n, P17354261821777851700.a n = A256266 n

end A256266

/-! ## A256266.P14065329322652159400

`∑[6*(A053644(2*n)-n)]`
-/

namespace A256266.P14065329322652159400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A053644 (2 * n) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256266.P14065329322652159400

namespace A256266

/-- `∑[6*(A053644(2*n)-n)]` -/
def P14065329322652159400.Spec : Prop :=
  ∀ n, P14065329322652159400.a n = A256266 n

end A256266

/-! ## A256266.P5610516401868670826

`3*(∑[A080079(2*n+1)]+n-1)`
-/

namespace A256266.P5610516401868670826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1))

end

end A256266.P5610516401868670826

namespace A256266

/-- `3*(∑[A080079(2*n+1)]+n-1)` -/
def P5610516401868670826.Spec : Prop :=
  ∀ n, P5610516401868670826.a n = A256266 n

end A256266

/-! ## A256266.P748895640876150838

`∑[6*(A132226(n+1)-1)]`
-/

namespace A256266.P748895640876150838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A132226 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256266.P748895640876150838

namespace A256266

/-- `∑[6*(A132226(n+1)-1)]` -/
def P748895640876150838.Spec : Prop :=
  ∀ n, P748895640876150838.a n = A256266 n

end A256266

/-! ## A256266.P14754973893600468731

`A008588(A255748(n+1)-A080079(n+1))`
-/

namespace A256266.P14754973893600468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A255748 (n + 1) - A080079 (n + 1)).toNat

end

end A256266.P14754973893600468731

namespace A256266

/-- `A008588(A255748(n+1)-A080079(n+1))` -/
def P14754973893600468731.Spec : Prop :=
  ∀ n, P14754973893600468731.a n = A256266 n

end A256266

/-! ## A256266.P7996995043130723203

`A008588(A255748(n+1))-A262617(n+1)`
-/

namespace A256266.P7996995043130723203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A255748 (n + 1)).toNat - A262617 (n + 1)

end

end A256266.P7996995043130723203

namespace A256266

/-- `A008588(A255748(n+1))-A262617(n+1)` -/
def P7996995043130723203.Spec : Prop :=
  ∀ n, P7996995043130723203.a n = A256266 n

end A256266

/-!
# A256267: a(n) = A256017(n)/n.

The programs for A256267, there is no canonical definition to state claims against.
-/

/-! ## A256267.P13844296197983873526

`A256017(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256267.P13844296197983873526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256017 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A256267.P13844296197983873526

/-! ## A256267.P1378001578099360084

`A006530(A256017(n+1))`
-/

namespace A256267.P1378001578099360084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256017 (n + 1)).toNat

end

end A256267.P1378001578099360084

/-! ## A256267.P14494754062116442118

`A001414(A256017(n+1))-A001414(n+1)`
-/

namespace A256267.P14494754062116442118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A256017 (n + 1)).toNat - A001414 (n + 1)

end

end A256267.P14494754062116442118

/-! ## A256267.P565232120253943115

`A034699(∏{p}[A256017(n+1), #])`
-/

namespace A256267.P565232120253943115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A256267.P565232120253943115

/-! ## A256267.P1030679938030090479

`A088387(lcm(n+1, A256017(n+1)))`
-/

namespace A256267.P1030679938030090479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Int.lcm (n + 1 : ℤ) (A256017 (n + 1)))

end

end A256267.P1030679938030090479

/-! ## A256267.P13718405743122444800

`A088387(2*A256017(n+1))`
-/

namespace A256267.P13718405743122444800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (2 * A256017 (n + 1)).toNat

end

end A256267.P13718405743122444800

/-! ## A256267.P5837773724473957001

`A345941(∏{p}[A256017(n+1), #])`
-/

namespace A256267.P5837773724473957001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A256267.P5837773724473957001

/-! ## A256267.P7491855426731319665

`A304180(∏{p}[A256017(n+1), #])`
-/

namespace A256267.P7491855426731319665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A256267.P7491855426731319665

/-! ## A256267.P16245186493937280371

`A022144(A256017(n+1))%A004771(n)`
-/

namespace A256267.P16245186493937280371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A256017 (n + 1)).toNat) (A004771 n)

end

end A256267.P16245186493937280371

/-! ## A256267.P10353561285890703604

`A085392(2*A256017(n+1))`
-/

namespace A256267.P10353561285890703604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A256017 (n + 1)).toNat

end

end A256267.P10353561285890703604

/-!
# A256268: Table of k-fold factorials, read by antidiagonals.

The programs for A256268, there is no canonical definition to state claims against.
-/

/-! ## A256268.P4971076530443635273

`A142589(A083920(n))`
-/

namespace A256268.P4971076530443635273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A083920 n).toNat

end

end A256268.P4971076530443635273

/-! ## A256268.P283747821544251666

`A142589(A271439(n))`
-/

namespace A256268.P283747821544251666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A271439 n).toNat

end

end A256268.P283747821544251666

/-! ## A256268.P10509761614613247210

`A142589(A133280(n)-n)`
-/

namespace A256268.P10509761614613247210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A133280 n - (n : ℤ)).toNat

end

end A256268.P10509761614613247210

/-! ## A256268.P5531816532898369002

`A142589(n+1-A002024(n+1))`
-/

namespace A256268.P5531816532898369002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 ((n + 1 : ℤ) - A002024 (n + 1)).toNat

end

end A256268.P5531816532898369002

/-! ## A256268.P9201433532590742458

`A142589(∑[A035363(A198954(n))])`
-/

namespace A256268.P9201433532590742458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256268.P9201433532590742458

/-! ## A256268.P3883841331570649357

`A142589(n)/A077028(n)`
-/

namespace A256268.P3883841331570649357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142589 n : ℚ) / (A077028 n : ℚ)

end

end A256268.P3883841331570649357

/-! ## A256268.P6595443677026931612

`A368119(A061579(n))`
-/

namespace A256268.P6595443677026931612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368119 (A061579 n).toNat

end

end A256268.P6595443677026931612

/-! ## A256268.P14624198129202346816

`A368119(A038722(n+1)-1)`
-/

namespace A256268.P14624198129202346816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368119 (A038722 (n + 1) - 1).toNat

end

end A256268.P14624198129202346816

/-! ## A256268.P2540122194521519166

`A368119(A038722(n+2))`
-/

namespace A256268.P2540122194521519166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368119 (A038722 (n + 2)).toNat

end

end A256268.P2540122194521519166

/-!
# A256269: Expansion of psi(-q) * chi(q^3) * phi(q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A256269, there is no canonical definition to state claims against.
-/

/-! ## A256269.P1532764278455646371

`A010892(n)*A256282(n)`
-/

namespace A256269.P1532764278455646371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A256282 n

end

end A256269.P1532764278455646371

/-! ## A256269.P14797353572650064262

`A010892(n)*A258210(n)`
-/

namespace A256269.P14797353572650064262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258210 n

end

end A256269.P14797353572650064262

/-! ## A256269.P1378005337071344024

`A033999(n)*A256279(n)`
-/

namespace A256269.P1378005337071344024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A256279 n

end

end A256269.P1378005337071344024

/-! ## A256269.P910596283949383318

`A049347(n)*A258228(n)`
-/

namespace A256269.P910596283949383318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258228 n

end

end A256269.P910596283949383318

/-! ## A256269.P15376217186706433564

`A049347(n)*A258256(n)`
-/

namespace A256269.P15376217186706433564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258256 n

end

end A256269.P15376217186706433564

/-! ## A256269.P9068495508357143186

`A115714(n)*A256279(n)`
-/

namespace A256269.P9068495508357143186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 n * A256279 n

end

end A256269.P9068495508357143186

/-! ## A256269.P2260508836368879470

`A115953(n)*A256279(n)`
-/

namespace A256269.P2260508836368879470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115953 n * A256279 n

end

end A256269.P2260508836368879470

/-! ## A256269.P4122780736411216965

`A258322(n)/A057079(n)`
-/

namespace A256269.P4122780736411216965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258322 n : ℚ) / (A057079 n : ℚ)

end

end A256269.P4122780736411216965

/-! ## A256269.P4252921090169856944

`A258034(n)/A131713(n)`
-/

namespace A256269.P4252921090169856944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258034 n : ℚ) / (A131713 n : ℚ)

end

end A256269.P4252921090169856944

/-! ## A256269.P16996396368981388339

`A258322(n)/A132954(n)`
-/

namespace A256269.P16996396368981388339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258322 n : ℚ) / (A132954 n : ℚ)

end

end A256269.P16996396368981388339

/-! ## A256269.P3019705736435691787

`A256279(n)*A309873(n+1)`
-/

namespace A256269.P3019705736435691787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256279 n * A309873 (n + 1)

end

end A256269.P3019705736435691787

/-! ## A256269.P2102872275043655138

`A258034(n)/(2-A057079(n)²)`
-/

namespace A256269.P2102872275043655138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258034 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A256269.P2102872275043655138

/-! ## A256269.P7587827058315601853

`A258034(n)/(2-A132954(n)²)`
-/

namespace A256269.P7587827058315601853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258034 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A256269.P7587827058315601853

/-! ## A256269.P8351906463955356912

`A256279(n)/A057079(n+2)`
-/

namespace A256269.P8351906463955356912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256279 n : ℚ) / (A057079 (n + 2) : ℚ)

end

end A256269.P8351906463955356912

/-! ## A256269.P1527309839522096704

`A049347(n)*A256282(2*n)`
-/

namespace A256269.P1527309839522096704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A256282 (2 * n)

end

end A256269.P1527309839522096704

/-! ## A256269.P12448103288234920663

`A057078(2*n)*A258228(n)`
-/

namespace A256269.P12448103288234920663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n) * A258228 n

end

end A256269.P12448103288234920663

/-! ## A256269.P2820378199822816584

`A049347(n)*A258279(2*n)`
-/

namespace A256269.P2820378199822816584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258279 (2 * n)

end

end A256269.P2820378199822816584

/-! ## A256269.P15437967724901948926

`A049347(n)*A258292(2*n)`
-/

namespace A256269.P15437967724901948926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258292 (2 * n)

end

end A256269.P15437967724901948926

/-! ## A256269.P5050337504706695578

`A010892(2*n+1)*A258228(n)`
-/

namespace A256269.P5050337504706695578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A258228 n

end

end A256269.P5050337504706695578

/-! ## A256269.P2131291879527402592

`A010892(2*n+1)*A258256(n)`
-/

namespace A256269.P2131291879527402592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A258256 n

end

end A256269.P2131291879527402592

/-!
# A256270: a(1) = 1; for n > 1, a(n) is the smallest positive integer not already in the sequence such that a(1)^2 + a(2)^2 + ... + a(n)^2 is prime.

The programs for A256270, there is no canonical definition to state claims against.
-/

/-! ## A256270.P12590294175050188980

`sqrt(A073852(n+1))`
-/

namespace A256270.P12590294175050188980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073852 (n + 1) : ℝ)

end

end A256270.P12590294175050188980

/-! ## A256270.P15931186057783497477

`root(A073852(C(n+1, n)), 2)`
-/

namespace A256270.P15931186057783497477
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073852 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A256270.P15931186057783497477

/-! ## A256270.P78011062447913586

`root(A073852(Δ[n²]-n), 2)`
-/

namespace A256270.P78011062447913586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073852 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A256270.P78011062447913586

/-! ## A256270.P18388331760009740191

`A000027(root(A073852(n+1), 2))`
-/

namespace A256270.P18388331760009740191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A073852 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A256270.P18388331760009740191

/-! ## A256270.P6235276338830864246

`A245092(root(A073852(n+1), 2))`
-/

namespace A256270.P6235276338830864246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A073852 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A256270.P6235276338830864246

/-! ## A256270.P15474234702339349204

`A325829(root(A073852(n+1), 2))`
-/

namespace A256270.P15474234702339349204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325829 (SequenceMachineLib.roundAway ((A073852 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A256270.P15474234702339349204

/-! ## A256270.P12371927176129322338

`root(A073852(n+1), 2)%A154609(n)`
-/

namespace A256270.P12371927176129322338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A073852 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A154609 n)

end

end A256270.P12371927176129322338

/-! ## A256270.P18330474506451113127

`A011655(3*n)+root(A073852(n+1), 2)`
-/

namespace A256270.P18330474506451113127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A011655 (3 * n) : ℝ) + (A073852 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A256270.P18330474506451113127

/-! ## A256270.P17701979929968284216

`val(A000032(n), 5)+root(A073852(n+1), 2)`
-/

namespace A256270.P17701979929968284216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000032 n).toNat 5 : ℝ) + (A073852 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A256270.P17701979929968284216

/-!
# A256271: a(1) = 1; for n > 1, a(n) is the smallest number not already in the sequence such that a(n)^2 + a(n-1)^2 is squarefree.

The programs for A256271, there is no canonical definition to state claims against.
-/

/-! ## A256271.P7865687180806127308

`A123882(n+1)%A107275(n+1)`
-/

namespace A256271.P7865687180806127308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123882 (n + 1)) (A107275 (n + 1))

end

end A256271.P7865687180806127308

/-! ## A256271.P13975123128208168994

`A123882(n+1)+A000007(A136225(n))`
-/

namespace A256271.P13975123128208168994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1) + A000007 (A136225 n).toNat

end

end A256271.P13975123128208168994

/-! ## A256271.P8411583574384492810

`A123882(n+1)%A002808(A000032(n))`
-/

namespace A256271.P8411583574384492810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123882 (n + 1)) (A002808 (A000032 n).toNat)

end

end A256271.P8411583574384492810

/-! ## A256271.P17223971651048214092

`A132747(A123910(n+1))+A123882(n+1)`
-/

namespace A256271.P17223971651048214092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A123910 (n + 1)).toNat + A123882 (n + 1)

end

end A256271.P17223971651048214092

/-! ## A256271.P4925773672060396451

`A185255(A247255(n+1))+A123882(n+1)`
-/

namespace A256271.P4925773672060396451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A247255 (n + 1)).toNat + A123882 (n + 1)

end

end A256271.P4925773672060396451

/-!
# A256272: G.f.: Sum_{n>=1} Pell(n+1) * x^n / (1 - x^n), where Pell(n) = A000129(n).

The programs for A256272, the canonical program `A256272.P15422099176850393046` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256272 has offset 1).

The definition of A256272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256272.P15422099176850393046

`∑{d}[n+1, A000129(#+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256272

/-- `∑{d}[n+1, A000129(#+1)]` -/
def P15422099176850393046.Spec : Prop :=
  ∀ n, P15422099176850393046.a n = A256272 (n + 1)

theorem P15422099176850393046.correct : P15422099176850393046.Spec := by
  intro n
  simp only [A256272, Nat.add_sub_cancel]

end A256272

/-! ## A256272.P5082790672211322046

`∑{d}[n+1, A002965(#+2+#)]`
-/

namespace A256272.P5082790672211322046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002965 (d + 2 + d)

end

end A256272.P5082790672211322046

namespace A256272

/-- `∑{d}[n+1, A002965(#+2+#)]` -/
def P5082790672211322046.Spec : Prop :=
  ∀ n, P5082790672211322046.a n = A256272 (n + 1)

end A256272

/-! ## A256272.P17733242541552320765

`∑{d}[n+1, A135153(#+2+#)]`
-/

namespace A256272.P17733242541552320765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A135153 (d + 2 + d)

end

end A256272.P17733242541552320765

namespace A256272

/-- `∑{d}[n+1, A135153(#+2+#)]` -/
def P17733242541552320765.Spec : Prop :=
  ∀ n, P17733242541552320765.a n = A256272 (n + 1)

end A256272

/-! ## A256272.P18340585195581824804

`∑{d}[n+1, A155046(#+2+#)]`
-/

namespace A256272.P18340585195581824804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A155046 (d + 2 + d)

end

end A256272.P18340585195581824804

namespace A256272

/-- `∑{d}[n+1, A155046(#+2+#)]` -/
def P18340585195581824804.Spec : Prop :=
  ∀ n, P18340585195581824804.a n = A256272 (n + 1)

end A256272

/-! ## A256272.P17448664621627314549

`∑{d}[n+1, A024537(#+1)-A024537(#)]`
-/

namespace A256272.P17448664621627314549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A024537 (d + 1) - A024537 d)

end

end A256272.P17448664621627314549

namespace A256272

/-- `∑{d}[n+1, A024537(#+1)-A024537(#)]` -/
def P17448664621627314549.Spec : Prop :=
  ∀ n, P17448664621627314549.a n = A256272 (n + 1)

end A256272

/-!
# A256275: Decimal equivalent of the binary string generated by the negation of the n X n identity matrix.

The programs for A256275, the canonical program `A256275.P11952076230129229254` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256275 has offset 1).

The definition of A256275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256275.P11952076230129229254

`2^(n+1)²-(1+A119408(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256275

/-- `2^(n+1)²-(1+A119408(n+1))` -/
def P11952076230129229254.Spec : Prop :=
  ∀ n, P11952076230129229254.a n = A256275 (n + 1)

theorem P11952076230129229254.correct : P11952076230129229254.Spec := by
  intro n
  simp only [A256275, Nat.add_sub_cancel]

end A256275

/-! ## A256275.P17838994620451829786

`(2^(n+1)²-2)*(1-2^(n+1))/(1-2^(n+2))`
-/

namespace A256275.P17838994620451829786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (n + 1) ^ 2 : ℤ) - 2) * (1 - (2 ^ (n + 1) : ℤ)) : ℚ) / (1 - (2 ^ (n + 2) : ℤ) : ℚ)

end

end A256275.P17838994620451829786

namespace A256275

/-- `(2^(n+1)²-2)*(1-2^(n+1))/(1-2^(n+2))` -/
def P17838994620451829786.Spec : Prop :=
  ∀ n, P17838994620451829786.a n = (A256275 (n + 1) : ℚ)

end A256275

/-! ## A256275.P12588122353148220689

`A350952(A005408(n))-A128889(n+1)`
-/

namespace A256275.P12588122353148220689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350952 (A005408 n).toNat - A128889 (n + 1)

end

end A256275.P12588122353148220689

namespace A256275

/-- `A350952(A005408(n))-A128889(n+1)` -/
def P12588122353148220689.Spec : Prop :=
  ∀ n, P12588122353148220689.a n = A256275 (n + 1)

end A256275

/-! ## A256275.P500110855076219409

`A350952(2*n+1)+A002416(n+1)-A344260(n+1)`
-/

namespace A256275.P500110855076219409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350952 (2 * n + 1) + (A002416 (n + 1) - A344260 (n + 1))

end

end A256275.P500110855076219409

namespace A256275

/-- `A350952(2*n+1)+A002416(n+1)-A344260(n+1)` -/
def P500110855076219409.Spec : Prop :=
  ∀ n, P500110855076219409.a n = A256275 (n + 1)

end A256275

/-! ## A256275.P8299820906026489997

`A350952(2*n)+A212739(n+1)-A350952(2*n+1)`
-/

namespace A256275.P8299820906026489997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350952 (2 * n) + (A212739 (n + 1) - A350952 (2 * n + 1))

end

end A256275.P8299820906026489997

namespace A256275

/-- `A350952(2*n)+A212739(n+1)-A350952(2*n+1)` -/
def P8299820906026489997.Spec : Prop :=
  ∀ n, P8299820906026489997.a n = A256275 (n + 1)

end A256275

/-!
# A256276: Expansion of q * phi(q) * chi(q^3) * psi(-q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A256276, the canonical program `A256276.P17919701624986751523` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256276 has offset 1).

The definition of A256276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256276.P17919701624986751523

`(n+1)%3*A002654(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256276

/-- `(n+1)%3*A002654(n+1)` -/
def P17919701624986751523.Spec : Prop :=
  ∀ n, P17919701624986751523.a n = A256276 (n + 1)

theorem P17919701624986751523.correct : P17919701624986751523.Spec := by
  intro n
  simp only [A256276, Nat.add_sub_cancel]

end A256276

/-! ## A256276.P17457559583398378045

`abs(A129448(n+1))*(n²+1)%3`
-/

namespace A256276.P17457559583398378045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129448 (n + 1)| * (((n ^ 2 + 1) % 3 : ℕ) : ℤ)

end

end A256276.P17457559583398378045

namespace A256276

/-- `abs(A129448(n+1))*(n²+1)%3` -/
def P17457559583398378045.Spec : Prop :=
  ∀ n, P17457559583398378045.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P4128531047167351306

`A129448(n+1)*A131713(n)`
-/

namespace A256276.P4128531047167351306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (n + 1) * A131713 n

end

end A256276.P4128531047167351306

namespace A256276

/-- `A129448(n+1)*A131713(n)` -/
def P4128531047167351306.Spec : Prop :=
  ∀ n, P4128531047167351306.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P858309528135056898

`(A102283(n)+1)*A002654(n+1)`
-/

namespace A256276.P858309528135056898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102283 n + 1) * A002654 (n + 1)

end

end A256276.P858309528135056898

namespace A256276

/-- `(A102283(n)+1)*A002654(n+1)` -/
def P858309528135056898.Spec : Prop :=
  ∀ n, P858309528135056898.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P13504115850000716151

`∑[A061347(n+1)]*A002654(n+1)`
-/

namespace A256276.P13504115850000716151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002654 (n + 1)

end

end A256276.P13504115850000716151

namespace A256276

/-- `∑[A061347(n+1)]*A002654(n+1)` -/
def P13504115850000716151.Spec : Prop :=
  ∀ n, P13504115850000716151.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P6957580207594155450

`A049347(n)*A258228(n+1)`
-/

namespace A256276.P6957580207594155450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258228 (n + 1)

end

end A256276.P6957580207594155450

namespace A256276

/-- `A049347(n)*A258228(n+1)` -/
def P6957580207594155450.Spec : Prop :=
  ∀ n, P6957580207594155450.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P13792393792571133620

`Δ[A130481(n)]*A002654(n+1)`
-/

namespace A256276.P13792393792571133620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002654 (n + 1)

end

end A256276.P13792393792571133620

namespace A256276

/-- `Δ[A130481(n)]*A002654(n+1)` -/
def P13792393792571133620.Spec : Prop :=
  ∀ n, P13792393792571133620.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P2190668467107059290

`A002654(n+1)*A010872(n+1)`
-/

namespace A256276.P2190668467107059290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A010872 (n + 1)

end

end A256276.P2190668467107059290

namespace A256276

/-- `A002654(n+1)*A010872(n+1)` -/
def P2190668467107059290.Spec : Prop :=
  ∀ n, P2190668467107059290.a n = A256276 (n + 1)

theorem P2190668467107059290.correct : P2190668467107059290.Spec := by
  intro n
  simp only [A256276, Nat.add_sub_cancel, A256276.P2190668467107059290.a, A256276.P17919701624986751523.a, A002654, A002654.P11574922253888480122.a, A010872, A010872.P9752549328412734763.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256276

/-! ## A256276.P13240038136887494647

`A010872(n+1)*A113446(n+1)`
-/

namespace A256276.P13240038136887494647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (n + 1) * A113446 (n + 1)

end

end A256276.P13240038136887494647

namespace A256276

/-- `A010872(n+1)*A113446(n+1)` -/
def P13240038136887494647.Spec : Prop :=
  ∀ n, P13240038136887494647.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P16679280969086316134

`(A143097(n+2)-(n+1))*A113446(n+1)`
-/

namespace A256276.P16679280969086316134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143097 (n + 2) - (n + 1 : ℤ)) * A113446 (n + 1)

end

end A256276.P16679280969086316134

namespace A256276

/-- `(A143097(n+2)-(n+1))*A113446(n+1)` -/
def P16679280969086316134.Spec : Prop :=
  ∀ n, P16679280969086316134.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P2012827506941221120

`A049347(A049347(n)+n)/2*A256280(n+1)`
-/

namespace A256276.P2012827506941221120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (A049347 n + (n : ℤ)).toNat : ℚ) / 2 * (A256280 (n + 1) : ℚ)

end

end A256276.P2012827506941221120

namespace A256276

/-- `A049347(A049347(n)+n)/2*A256280(n+1)` -/
def P2012827506941221120.Spec : Prop :=
  ∀ n, P2012827506941221120.a n = (A256276 (n + 1) : ℚ)

end A256276

/-! ## A256276.P95888114388031519

`A057078(2*n)*A258228(n+1)`
-/

namespace A256276.P95888114388031519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n) * A258228 (n + 1)

end

end A256276.P95888114388031519

namespace A256276

/-- `A057078(2*n)*A258228(n+1)` -/
def P95888114388031519.Spec : Prop :=
  ∀ n, P95888114388031519.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P17760512222654799188

`lcm(A057078(2*n), A258210(n+1))`
-/

namespace A256276.P17760512222654799188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057078 (2 * n)) (A258210 (n + 1))

end

end A256276.P17760512222654799188

namespace A256276

/-- `lcm(A057078(2*n), A258210(n+1))` -/
def P17760512222654799188.Spec : Prop :=
  ∀ n, (P17760512222654799188.a n : ℤ) = A256276 (n + 1)

end A256276

/-! ## A256276.P4339402667316544778

`lcm(A258228(n+1), A260190(2*n))`
-/

namespace A256276.P4339402667316544778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A258228 (n + 1)) (A260190 (2 * n))

end

end A256276.P4339402667316544778

namespace A256276

/-- `lcm(A258228(n+1), A260190(2*n))` -/
def P4339402667316544778.Spec : Prop :=
  ∀ n, (P4339402667316544778.a n : ℤ) = A256276 (n + 1)

end A256276

/-! ## A256276.P13697005645428193588

`A010892(2*n+1)*A258228(n+1)`
-/

namespace A256276.P13697005645428193588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A258228 (n + 1)

end

end A256276.P13697005645428193588

namespace A256276

/-- `A010892(2*n+1)*A258228(n+1)` -/
def P13697005645428193588.Spec : Prop :=
  ∀ n, P13697005645428193588.a n = A256276 (n + 1)

end A256276

/-! ## A256276.P16205945354176683936

`lcm(A091338(2*(n+1)), A256014(n+1))/2`
-/

namespace A256276.P16205945354176683936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A091338 (2 * (n + 1))) (A256014 (n + 1)) : ℚ) / 2

end

end A256276.P16205945354176683936

namespace A256276

/-- `lcm(A091338(2*(n+1)), A256014(n+1))/2` -/
def P16205945354176683936.Spec : Prop :=
  ∀ n, P16205945354176683936.a n = (A256276 (n + 1) : ℚ)

end A256276

/-! ## A256276.P16119043729420906708

`lcm(A256280(n+1), A257076(2*n+1))/2`
-/

namespace A256276.P16119043729420906708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A256280 (n + 1)) (A257076 (2 * n + 1)) : ℚ) / 2

end

end A256276.P16119043729420906708

namespace A256276

/-- `lcm(A256280(n+1), A257076(2*n+1))/2` -/
def P16119043729420906708.Spec : Prop :=
  ∀ n, P16119043729420906708.a n = (A256276 (n + 1) : ℚ)

end A256276

/-! ## A256276.P17239002155975946649

`A258034(n+1)-A258292(2*(n+1))`
-/

namespace A256276.P17239002155975946649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 (n + 1) - A258292 (2 * (n + 1))

end

end A256276.P17239002155975946649

namespace A256276

/-- `A258034(n+1)-A258292(2*(n+1))` -/
def P17239002155975946649.Spec : Prop :=
  ∀ n, P17239002155975946649.a n = A256276 (n + 1)

end A256276

/-!
# A256277: C(2*n,n) mod 2*n+1.

The programs for A256277, the canonical program `A256277.P5671983445547233412` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256277 has offset 1).

The definition of A256277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256277.P5671983445547233412

`C(2*(n+1), n+1)%(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256277

/-- `C(2*(n+1), n+1)%(2*(n+1)+1)` -/
def P5671983445547233412.Spec : Prop :=
  ∀ n, (P5671983445547233412.a n : ℤ) = A256277 (n + 1)

theorem P5671983445547233412.correct : P5671983445547233412.Spec := by
  intro n
  simp only [A256277, Nat.add_sub_cancel]

end A256277

/-! ## A256277.P17556872673606824350

`Δ[A006134(n)]%(2*n+3)`
-/

namespace A256277.P17556872673606824350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (2 * n + 3 : ℤ)

end

end A256277.P17556872673606824350

namespace A256277

/-- `Δ[A006134(n)]%(2*n+3)` -/
def P17556872673606824350.Spec : Prop :=
  ∀ n, P17556872673606824350.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P12689751389106813256

`A000984(n+1)%(2*n+3)`
-/

namespace A256277.P12689751389106813256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) (2 * n + 3 : ℤ)

end

end A256277.P12689751389106813256

namespace A256277

/-- `A000984(n+1)%(2*n+3)` -/
def P12689751389106813256.Spec : Prop :=
  ∀ n, P12689751389106813256.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P12816684722318326552

`(A030662(n+1)+1)%(2*n+3)`
-/

namespace A256277.P12816684722318326552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030662 (n + 1) + 1) (2 * n + 3 : ℤ)

end

end A256277.P12816684722318326552

namespace A256277

/-- `(A030662(n+1)+1)%(2*n+3)` -/
def P12816684722318326552.Spec : Prop :=
  ∀ n, P12816684722318326552.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P14188799438282172383

`A001405(2*(n+1))%(floor(2/acot(n))+3)`
-/

namespace A256277.P14188799438282172383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * (n + 1))) (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 3)

end

end A256277.P14188799438282172383

namespace A256277

/-- `A001405(2*(n+1))%(floor(2/acot(n))+3)` -/
def P14188799438282172383.Spec : Prop :=
  ∀ n, P14188799438282172383.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P12049729371528555795

`A337499(Δ[n²])%Δ[A005563(n)]`
-/

namespace A256277.P12049729371528555795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337499 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (f2 (n + 1) - f2 n)

end

end A256277.P12049729371528555795

namespace A256277

/-- `A337499(Δ[n²])%Δ[A005563(n)]` -/
def P12049729371528555795.Spec : Prop :=
  ∀ n, P12049729371528555795.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P13081261451335157529

`record[A081668(n+1)]%A004273(n+2)`
-/

namespace A256277.P13081261451335157529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004273 (n + 2))

end

end A256277.P13081261451335157529

namespace A256277

/-- `record[A081668(n+1)]%A004273(n+2)` -/
def P13081261451335157529.Spec : Prop :=
  ∀ n, P13081261451335157529.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P8417825339614537941

`record[A126869(n+2)]%A004273(n+2)`
-/

namespace A256277.P8417825339614537941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004273 (n + 2))

end

end A256277.P8417825339614537941

namespace A256277

/-- `record[A126869(n+2)]%A004273(n+2)` -/
def P8417825339614537941.Spec : Prop :=
  ∀ n, P8417825339614537941.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P16589077056552486133

`A063886(A103517(n))%A005408(n+1)`
-/

namespace A256277.P16589077056552486133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063886 (A103517 n).toNat) (A005408 (n + 1))

end

end A256277.P16589077056552486133

namespace A256277

/-- `A063886(A103517(n))%A005408(n+1)` -/
def P16589077056552486133.Spec : Prop :=
  ∀ n, P16589077056552486133.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P15948987386515178432

`A337499(A005408(n))%A004273(n+2)`
-/

namespace A256277.P15948987386515178432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337499 (A005408 n).toNat) (A004273 (n + 2))

end

end A256277.P15948987386515178432

namespace A256277

/-- `A337499(A005408(n))%A004273(n+2)` -/
def P15948987386515178432.Spec : Prop :=
  ∀ n, P15948987386515178432.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P15454848568266756390

`A051960(n+1)%(2*n+3)`
-/

namespace A256277.P15454848568266756390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051960 (n + 1)) (2 * n + 3 : ℤ)

end

end A256277.P15454848568266756390

namespace A256277

/-- `A051960(n+1)%(2*n+3)` -/
def P15454848568266756390.Spec : Prop :=
  ∀ n, P15454848568266756390.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P17959158353716263730

`Δ[A274104(n)]%A144396(n+1)`
-/

namespace A256277.P17959158353716263730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A144396 (n + 1))

end

end A256277.P17959158353716263730

namespace A256277

/-- `Δ[A274104(n)]%A144396(n+1)` -/
def P17959158353716263730.Spec : Prop :=
  ∀ n, P17959158353716263730.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P6356257218762494097

`(A005430(n+1)/(n+1))%(2*n+3)`
-/

namespace A256277.P6356257218762494097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A005430 (n + 1) : ℚ) / (n + 1 : ℚ))) (2 * n + 3 : ℤ)

end

end A256277.P6356257218762494097

namespace A256277

/-- `(A005430(n+1)/(n+1))%(2*n+3)` -/
def P6356257218762494097.Spec : Prop :=
  ∀ n, P6356257218762494097.a n = A256277 (n + 1)

end A256277

/-! ## A256277.P1358667004756756392

`A253487(n)%A144396(n+1)`
-/

namespace A256277.P1358667004756756392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253487 n) (A144396 (n + 1))

end

end A256277.P1358667004756756392

namespace A256277

/-- `A253487(n)%A144396(n+1)` -/
def P1358667004756756392.Spec : Prop :=
  ∀ n, P1358667004756756392.a n = A256277 (n + 1)

end A256277

/-!
# A256278: a(0)=1, a(1)=2, a(n) = 31*a(n-1) - 29*a(n-2).

The programs for A256278, the canonical program `A256278.P18343328530315841916` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256278 has offset 0).

The definition of A256278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31*a(n-1)-29*a(n-2)` (program `A256278.P18343328530315841916`, by `A256278.P18343328530315841916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256278.P767739180074580706

`ogf((1-29x)/(1-31x+29x^2))`
-/

namespace A256278.P767739180074580706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -29] [1, -31, 29] n

end

end A256278.P767739180074580706

namespace A256278

/-- `ogf((1-29x)/(1-31x+29x^2))` -/
def P767739180074580706.Spec : Prop :=
  ∀ n, P767739180074580706.a n = A256278 n

end A256278

/-! ## A256278.P18343328530315841916

`31*a(n-1)-29*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256278

/-- `31*a(n-1)-29*a(n-2)` -/
def P18343328530315841916.Spec : Prop :=
  ∀ n, P18343328530315841916.a n = A256278 n

theorem P18343328530315841916.correct : P18343328530315841916.Spec := by
  intro n
  simp only [A256278]

end A256278

/-! ## A256278.P15447174655772398736

`∑[A084330(n)]+1`
-/

namespace A256278.P15447174655772398736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A256278.P15447174655772398736

namespace A256278

/-- `∑[A084330(n)]+1` -/
def P15447174655772398736.Spec : Prop :=
  ∀ n, P15447174655772398736.a n = A256278 n

end A256278

/-! ## A256278.P13719519768896532261

`∑[A084330(A028310(n))]`
-/

namespace A256278.P13719519768896532261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084330 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256278.P13719519768896532261

namespace A256278

/-- `∑[A084330(A028310(n))]` -/
def P13719519768896532261.Spec : Prop :=
  ∀ n, P13719519768896532261.a n = A256278 n

end A256278

/-! ## A256278.P3082182798497965919

`∑[A084330(A301941(n²))]`
-/

namespace A256278.P3082182798497965919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084330 (A301941 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256278.P3082182798497965919

namespace A256278

/-- `∑[A084330(A301941(n²))]` -/
def P3082182798497965919.Spec : Prop :=
  ∀ n, P3082182798497965919.a n = A256278 n

end A256278

/-! ## A256278.P15984175849035512948

`∑[A084330(or(n, A000007(n)))]`
-/

namespace A256278.P15984175849035512948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084330 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256278.P15984175849035512948

namespace A256278

/-- `∑[A084330(or(n, A000007(n)))]` -/
def P15984175849035512948.Spec : Prop :=
  ∀ n, P15984175849035512948.a n = A256278 n

end A256278

/-! ## A256278.P17865845302419935346

`2-∑[A000007(n)-A084330(n)]`
-/

namespace A256278.P17865845302419935346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A084330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256278.P17865845302419935346

namespace A256278

/-- `2-∑[A000007(n)-A084330(n)]` -/
def P17865845302419935346.Spec : Prop :=
  ∀ n, P17865845302419935346.a n = A256278 n

end A256278

/-! ## A256278.P1399073673531112639

`A084330(n+1)-29*A084330(n)`
-/

namespace A256278.P1399073673531112639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084330 (n + 1) - 29 * A084330 n

end

end A256278.P1399073673531112639

namespace A256278

/-- `A084330(n+1)-29*A084330(n)` -/
def P1399073673531112639.Spec : Prop :=
  ∀ n, P1399073673531112639.a n = A256278 n

end A256278

/-!
# A256279: Expansion of psi(q) * chi(-q^3) * phi(-q^9) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A256279, there is no canonical definition to state claims against.
-/

/-! ## A256279.P18107565337634761962

`(-1)^n*A256269(n)`
-/

namespace A256279.P18107565337634761962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256269 n

end

end A256279.P18107565337634761962

/-! ## A256279.P5003986338069374582

`A010892(n)*A258228(n)`
-/

namespace A256279.P5003986338069374582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258228 n

end

end A256279.P5003986338069374582

/-! ## A256279.P10595709763668557125

`A010892(n)*A258256(n)`
-/

namespace A256279.P10595709763668557125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258256 n

end

end A256279.P10595709763668557125

/-! ## A256279.P2267011704977605738

`A049347(n)*A256282(n)`
-/

namespace A256279.P2267011704977605738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A256282 n

end

end A256279.P2267011704977605738

/-! ## A256279.P9571500936570028370

`A049347(n)*A258210(n)`
-/

namespace A256279.P9571500936570028370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A258210 n

end

end A256279.P9571500936570028370

/-! ## A256279.P14550482017709797252

`A258034(n)/A057079(n)`
-/

namespace A256279.P14550482017709797252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258034 n : ℚ) / (A057079 n : ℚ)

end

end A256279.P14550482017709797252

/-! ## A256279.P7164252507097375070

`A258322(n)/A131713(n)`
-/

namespace A256279.P7164252507097375070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258322 n : ℚ) / (A131713 n : ℚ)

end

end A256279.P7164252507097375070

/-! ## A256279.P14885414129699258081

`A258034(n)/A132954(n)`
-/

namespace A256279.P14885414129699258081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258034 n : ℚ) / (A132954 n : ℚ)

end

end A256279.P14885414129699258081

/-! ## A256279.P6973541929299719732

`A256269(n)*A309873(n+1)`
-/

namespace A256279.P6973541929299719732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256269 n * A309873 (n + 1)

end

end A256279.P6973541929299719732

/-! ## A256279.P11105871609845760122

`A258322(n)/(2-A057079(n)²)`
-/

namespace A256279.P11105871609845760122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258322 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A256279.P11105871609845760122

/-! ## A256279.P13562052952296776545

`A258322(n)/(2-A132954(n)²)`
-/

namespace A256279.P13562052952296776545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258322 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A256279.P13562052952296776545

/-! ## A256279.P5617773673162588655

`A256269(n)/A008683(Δ[A001651(n+1)])`
-/

namespace A256279.P5617773673162588655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256269 n : ℚ) / (A008683 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A256279.P5617773673162588655

/-! ## A256279.P16712381353495443106

`A010892(n)*A256282(2*n)`
-/

namespace A256279.P16712381353495443106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A256282 (2 * n)

end

end A256279.P16712381353495443106

/-! ## A256279.P15966121878162180626

`A057078(2*n)*A258210(n)`
-/

namespace A256279.P15966121878162180626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * n) * A258210 n

end

end A256279.P15966121878162180626

/-! ## A256279.P8856795080679385815

`A258228(n)*A260190(2*n)`
-/

namespace A256279.P8856795080679385815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 n * A260190 (2 * n)

end

end A256279.P8856795080679385815

/-! ## A256279.P15365285205201018348

`A010892(n)*A258279(2*n)`
-/

namespace A256279.P15365285205201018348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258279 (2 * n)

end

end A256279.P15365285205201018348

/-! ## A256279.P14002812846537110854

`A010892(n)*A258292(2*n)`
-/

namespace A256279.P14002812846537110854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A258292 (2 * n)

end

end A256279.P14002812846537110854

/-! ## A256279.P3460476727753561222

`A010892(2*n+1)*A258210(n)`
-/

namespace A256279.P3460476727753561222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A258210 n

end

end A256279.P3460476727753561222

/-! ## A256279.P10678321059871293787

`A117441(2*n+1)*A258279(2*n)`
-/

namespace A256279.P10678321059871293787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 (2 * n + 1) * A258279 (2 * n)

end

end A256279.P10678321059871293787

/-! ## A256279.P1375142955983469864

`A258322(n)/A057079(4*n)`
-/

namespace A256279.P1375142955983469864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258322 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A256279.P1375142955983469864

/-!
# A256280: Expansion of phi(q^3)^4 / (phi(q) * phi(q^9)) in powers of q where phi() is a Ramanujan theta function.

The programs for A256280, there is no canonical definition to state claims against.
-/

/-! ## A256280.P15102179944992341739

`A033999(n)*A256014(n)`
-/

namespace A256280.P15102179944992341739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A256014 n

end

end A256280.P15102179944992341739

/-! ## A256280.P11737498052008342621

`A132954(n)*A256282(n)`
-/

namespace A256280.P11737498052008342621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A256282 n

end

end A256280.P11737498052008342621

/-! ## A256280.P7864031939457816423

`A004018(n)/A131713(n)`
-/

namespace A256280.P7864031939457816423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (A131713 n : ℚ)

end

end A256280.P7864031939457816423

/-! ## A256280.P11260809298091577556

`A104794(n)/A057079(n)`
-/

namespace A256280.P11260809298091577556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A057079 n : ℚ)

end

end A256280.P11260809298091577556

/-! ## A256280.P16135100020776104644

`A256014(n)*A309873(n+1)`
-/

namespace A256280.P16135100020776104644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256014 n * A309873 (n + 1)

end

end A256280.P16135100020776104644

/-! ## A256280.P11620762945280786952

`2*A028601(n)-A258034(n)`
-/

namespace A256280.P11620762945280786952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028601 n - A258034 n

end

end A256280.P11620762945280786952

/-! ## A256280.P15233720368638643277

`2*A028601(n)-abs(A258322(n))`
-/

namespace A256280.P15233720368638643277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028601 n - |A258322 n|

end

end A256280.P15233720368638643277

/-! ## A256280.P7371343065262337241

`A004018(n)/(2-A057079(n)²)`
-/

namespace A256280.P7371343065262337241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A256280.P7371343065262337241

/-! ## A256280.P15701599289810030605

`A057079(n+2)²*A258292(n)`
-/

namespace A256280.P15701599289810030605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) ^ 2 * A258292 n

end

end A256280.P15701599289810030605

/-! ## A256280.P8454916376261262180

`A131713(n+2)²*A258292(n)`
-/

namespace A256280.P8454916376261262180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) ^ 2 * A258292 n

end

end A256280.P8454916376261262180

/-! ## A256280.P15210513345104169378

`A104794(2*n)/A131713(n)`
-/

namespace A256280.P15210513345104169378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 (2 * n) : ℚ) / (A131713 n : ℚ)

end

end A256280.P15210513345104169378

/-! ## A256280.P15162499062056488619

`A061347(n+1)²*A258210(2*n)`
-/

namespace A256280.P15162499062056488619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) ^ 2 * A258210 (2 * n)

end

end A256280.P15162499062056488619

/-! ## A256280.P5424487801455424618

`A005843(A258034(2*n))-A258034(n)`
-/

namespace A256280.P5424487801455424618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A258034 (2 * n)).toNat - A258034 n

end

end A256280.P5424487801455424618

/-! ## A256280.P3727461673517948736

`2*A258034(A064680(n))-A258034(n)`
-/

namespace A256280.P3727461673517948736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258034 (A064680 n).toNat - A258034 n

end

end A256280.P3727461673517948736

/-! ## A256280.P7368106363568107690

`(2-A132954(2*n))*A258256(n)`
-/

namespace A256280.P7368106363568107690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 (2 * n)) * A258256 n

end

end A256280.P7368106363568107690

/-! ## A256280.P3251088444030235939

`A061347(n+1)²*A258228(2*n)`
-/

namespace A256280.P3251088444030235939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) ^ 2 * A258228 (2 * n)

end

end A256280.P3251088444030235939

/-! ## A256280.P10901444038042539702

`2*A258322(2*n)-A028601(2*n)`
-/

namespace A256280.P10901444038042539702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258322 (2 * n) - A028601 (2 * n)

end

end A256280.P10901444038042539702

/-! ## A256280.P7445752271963080167

`(A057079(2*n+1)-1)*A258279(2*n)`
-/

namespace A256280.P7445752271963080167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) - 1) * A258279 (2 * n)

end

end A256280.P7445752271963080167

/-! ## A256280.P17294745887999157388

`(A057079(2*n+1)-1)*A258292(2*n)`
-/

namespace A256280.P17294745887999157388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) - 1) * A258292 (2 * n)

end

end A256280.P17294745887999157388

/-! ## A256280.P8209087873568458912

`A256014(4*n)`
-/

namespace A256280.P8209087873568458912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256014 (4 * n)

end

end A256280.P8209087873568458912

/-!
# A256281: Inverse Moebius transform of Pell numbers.

The programs for A256281, the canonical program `A256281.P16115446406874101517` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256281 has offset 1).

The definition of A256281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256281.P16115446406874101517

`∑{d}[n+1, A000129(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256281

/-- `∑{d}[n+1, A000129(#)]` -/
def P16115446406874101517.Spec : Prop :=
  ∀ n, P16115446406874101517.a n = A256281 (n + 1)

theorem P16115446406874101517.correct : P16115446406874101517.Spec := by
  intro n
  simp only [A256281, Nat.add_sub_cancel]

end A256281

/-! ## A256281.P5568439864227093779

`∑{d}[n+1, A215928(#)]`
-/

namespace A256281.P5568439864227093779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215928 d

end

end A256281.P5568439864227093779

namespace A256281

/-- `∑{d}[n+1, A215928(#)]` -/
def P5568439864227093779.Spec : Prop :=
  ∀ n, P5568439864227093779.a n = A256281 (n + 1)

end A256281

/-! ## A256281.P12782886207012477215

`∑{d}[n+1, A174191(#)-1]`
-/

namespace A256281.P12782886207012477215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A174191 d - 1)

end

end A256281.P12782886207012477215

namespace A256281

/-- `∑{d}[n+1, A174191(#)-1]` -/
def P12782886207012477215.Spec : Prop :=
  ∀ n, P12782886207012477215.a n = A256281 (n + 1)

end A256281

/-! ## A256281.P8208000792206923916

`∑{d}[n+1, A002965(2*#)]`
-/

namespace A256281.P8208000792206923916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002965 (2 * d)

end

end A256281.P8208000792206923916

namespace A256281

/-- `∑{d}[n+1, A002965(2*#)]` -/
def P8208000792206923916.Spec : Prop :=
  ∀ n, P8208000792206923916.a n = A256281 (n + 1)

end A256281

/-! ## A256281.P14115529487293602009

`∑{d}[n+1, A135153(#+1+#)]`
-/

namespace A256281.P14115529487293602009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A135153 (d + 1 + d)

end

end A256281.P14115529487293602009

namespace A256281

/-- `∑{d}[n+1, A135153(#+1+#)]` -/
def P14115529487293602009.Spec : Prop :=
  ∀ n, P14115529487293602009.a n = A256281 (n + 1)

end A256281

/-! ## A256281.P680386903800515559

`∑{d}[n+1, A000005(#)*A133726((n+1)/#)]`
-/

namespace A256281.P680386903800515559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A133726 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256281.P680386903800515559

namespace A256281

/-- `∑{d}[n+1, A000005(#)*A133726((n+1)/#)]` -/
def P680386903800515559.Spec : Prop :=
  ∀ n, P680386903800515559.a n = A256281 (n + 1)

end A256281

/-!
# A256282: Expansion of f(-q^3) * psi(q^3)^3 / (psi(q) * psi(q^9)) in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A256282, there is no canonical definition to state claims against.
-/

/-! ## A256282.P6463115934329416608

`(-1)^n*A258256(n)`
-/

namespace A256282.P6463115934329416608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258256 n

end

end A256282.P6463115934329416608

/-! ## A256282.P5005186549033696322

`A258292(n)/A057079(n)`
-/

namespace A256282.P5005186549033696322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258292 n : ℚ) / (A057079 n : ℚ)

end

end A256282.P5005186549033696322

/-! ## A256282.P9452419393490133259

`A256280(n)/A132954(n)`
-/

namespace A256282.P9452419393490133259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256280 n : ℚ) / (A132954 n : ℚ)

end

end A256282.P9452419393490133259

/-! ## A256282.P2631705485712903817

`A258279(n)/A131713(n)`
-/

namespace A256282.P2631705485712903817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258279 n : ℚ) / (A131713 n : ℚ)

end

end A256282.P2631705485712903817

/-! ## A256282.P6264370563827511103

`A259761(n)/A131714(n)`
-/

namespace A256282.P6264370563827511103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259761 n : ℚ) / (A131714 n : ℚ)

end

end A256282.P6264370563827511103

/-! ## A256282.P3655903258213166709

`A104794(n)/A131714(n)²`
-/

namespace A256282.P3655903258213166709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A131714 n ^ 2 : ℚ)

end

end A256282.P3655903258213166709

/-! ## A256282.P2188847805918420261

`A104794(n)/dr(A158638(n))`
-/

namespace A256282.P2188847805918420261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (SequenceMachineLib.digitalRoot (A158638 n) : ℚ)

end

end A256282.P2188847805918420261

/-! ## A256282.P4928259672906123119

`A258256(n)*A309873(n+1)`
-/

namespace A256282.P4928259672906123119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258256 n * A309873 (n + 1)

end

end A256282.P4928259672906123119

/-! ## A256282.P14869249114066677805

`A258210(n)/A061347(n+1)`
-/

namespace A256282.P14869249114066677805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258210 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A256282.P14869249114066677805

/-! ## A256282.P17459734333865597739

`A258279(n)/(2-A057079(n)²)`
-/

namespace A256282.P17459734333865597739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258279 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A256282.P17459734333865597739

/-! ## A256282.P4755554490946623361

`A256014(n)/Δ[A143097(A143097(n+2)+1)]`
-/

namespace A256282.P4755554490946623361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A143097 (n + 2) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256014 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A256282.P4755554490946623361

/-! ## A256282.P1375545420543796728

`A057079(2*n+1)*A258256(n)/A057079(n+1)`
-/

namespace A256282.P1375545420543796728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) * A258256 n : ℚ) / (A057079 (n + 1) : ℚ)

end

end A256282.P1375545420543796728

/-! ## A256282.P15213247190349328099

`A259761(n)/(A132367(2*n+1)*A132367(n+1))`
-/

namespace A256282.P15213247190349328099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259761 n : ℚ) / (A132367 (2 * n + 1) * A132367 (n + 1) : ℚ)

end

end A256282.P15213247190349328099

/-! ## A256282.P13585907977420838347

`A258228(2*n)/(A260190(2*n+1)+A260190(2*n))`
-/

namespace A256282.P13585907977420838347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258228 (2 * n) : ℚ) / (A260190 (2 * n + 1) + A260190 (2 * n) : ℚ)

end

end A256282.P13585907977420838347

/-! ## A256282.P10608813031388509061

`A258279(n)/A057079(4*n)`
-/

namespace A256282.P10608813031388509061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258279 n : ℚ) / (A057079 (4 * n) : ℚ)

end

end A256282.P10608813031388509061

/-! ## A256282.P17673492075699763235

`A133570(2*n)*A258256(n)/A133570(4*n)`
-/

namespace A256282.P17673492075699763235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133570 (2 * n) * A258256 n : ℚ) / (A133570 (4 * n) : ℚ)

end

end A256282.P17673492075699763235

/-! ## A256282.P15720707156562856282

`A104794(n)/A057079(n²)²`
-/

namespace A256282.P15720707156562856282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 n : ℚ) / (A057079 (n ^ 2) ^ 2 : ℚ)

end

end A256282.P15720707156562856282

/-!
# A256287: Number of partitions of 7n into 7 parts.

The programs for A256287, the canonical program `A256287.P1123834805178179916` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256287 has offset 0).

The definition of A256287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256287.P2837129133390645434

`A026813(7*n)`
-/

namespace A256287.P2837129133390645434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (7 * n)

end

end A256287.P2837129133390645434

namespace A256287

/-- `A026813(7*n)` -/
def P2837129133390645434.Spec : Prop :=
  ∀ n, P2837129133390645434.a n = A256287 n

end A256287

/-! ## A256287.P17520800159868844226

`Δ[A308927(record[n*(6-5/gcd(2, n))])]`
-/

namespace A256287.P17520800159868844226
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (6 - 5 / (Nat.gcd 2 n : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308927 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256287.P17520800159868844226

namespace A256287

/-- `Δ[A308927(record[n*(6-5/gcd(2, n))])]` -/
def P17520800159868844226.Spec : Prop :=
  ∀ n, P17520800159868844226.a n = A256287 n

end A256287

/-! ## A256287.P16808292789153723405

`record[A026813(A195159(n))]`
-/

namespace A256287.P16808292789153723405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (A195159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256287.P16808292789153723405

namespace A256287

/-- `record[A026813(A195159(n))]` -/
def P16808292789153723405.Spec : Prop :=
  ∀ n, P16808292789153723405.a n = A256287 n

end A256287

/-! ## A256287.P15257742305478489334

`Δ[A308927(record[A195159(n)])]`
-/

namespace A256287.P15257742305478489334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308927 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256287.P15257742305478489334

namespace A256287

/-- `Δ[A308927(record[A195159(n)])]` -/
def P15257742305478489334.Spec : Prop :=
  ∀ n, P15257742305478489334.a n = A256287 n

end A256287

/-! ## A256287.P1123834805178179916

`∑[A026812(A008458(n)-1+n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A256287

/-- `∑[A026812(A008458(n)-1+n)]` -/
def P1123834805178179916.Spec : Prop :=
  ∀ n, P1123834805178179916.a n = A256287 n

theorem P1123834805178179916.correct : P1123834805178179916.Spec := by
  intro n
  simp only [A256287]

end A256287

/-!
# A256288: Sum of all the parts in the partitions of 7n into 7 parts.

The programs for A256288, the canonical program `A256288.P3413659148463275734` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256288 has offset 0).

The definition of A256288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256288.P3413659148463275734

`7*n*A256287(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256288

/-- `7*n*A256287(n)` -/
def P3413659148463275734.Spec : Prop :=
  ∀ n, P3413659148463275734.a n = A256288 n

theorem P3413659148463275734.correct : P3413659148463275734.Spec := by
  intro n
  simp only [A256288]

end A256288

/-! ## A256288.P10768275143447822497

`7*n*A026813(7*n)`
-/

namespace A256288.P10768275143447822497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) * A026813 (7 * n)

end

end A256288.P10768275143447822497

namespace A256288

/-- `7*n*A026813(7*n)` -/
def P10768275143447822497.Spec : Prop :=
  ∀ n, P10768275143447822497.a n = A256288 n

end A256288

/-! ## A256288.P2413091861184959856

`A308926(7*n)`
-/

namespace A256288.P2413091861184959856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 (7 * n)

end

end A256288.P2413091861184959856

namespace A256288

/-- `A308926(7*n)` -/
def P2413091861184959856.Spec : Prop :=
  ∀ n, P2413091861184959856.a n = A256288 n

end A256288

/-! ## A256288.P405954850136661409

`record[A308926(A195159(n))]`
-/

namespace A256288.P405954850136661409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308926 (A195159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256288.P405954850136661409

namespace A256288

/-- `record[A308926(A195159(n))]` -/
def P405954850136661409.Spec : Prop :=
  ∀ n, P405954850136661409.a n = A256288 n

end A256288

/-!
# A256289: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 0 to the digits of n written in base 9; do not convert back to base 10.

The programs for A256289, there is no canonical definition to state claims against.
-/

/-! ## A256289.P7549085080647536414

`A048379(A052421(n+1))`
-/

namespace A256289.P7549085080647536414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A052421 (n + 1)).toNat

end

end A256289.P7549085080647536414

/-! ## A256289.P15596935667558536836

`A048379(record[A004727(n)])`
-/

namespace A256289.P15596935667558536836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256289.P15596935667558536836

/-! ## A256289.P3758362264987607666

`A007095(A256299(n))`
-/

namespace A256289.P3758362264987607666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A256299 n).toNat

end

end A256289.P3758362264987607666

/-! ## A256289.P7539414534508315845

`A048379(record[A004183(n)])`
-/

namespace A256289.P7539414534508315845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256289.P7539414534508315845

/-! ## A256289.P9260711138177380311

`A222218(record[A048379(n)])`
-/

namespace A256289.P9260711138177380311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256289.P9260711138177380311

/-! ## A256289.P14995156502317861834

`A048379(record[A222254(n)])`
-/

namespace A256289.P14995156502317861834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256289.P14995156502317861834

/-! ## A256289.P9263847830764104387

`A222218(record[A222210(n)])`
-/

namespace A256289.P9263847830764104387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256289.P9263847830764104387

/-! ## A256289.P16463906878296014736

`A048379(eq[0, A316869(n)])`
-/

namespace A256289.P16463906878296014736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256289.P16463906878296014736

/-! ## A256289.P2502676154807538785

`A048379(eq[n, A004183(n)])`
-/

namespace A256289.P2502676154807538785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256289.P2502676154807538785

/-!
# A256290: Numbers which have only digits 4 and 5 in base 10.

The programs for A256290, there is no canonical definition to state claims against.
-/

/-! ## A256290.P13901619738662344296

`A032834(n+1)+A256077(n+1)`
-/

namespace A256290.P13901619738662344296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + A256077 (n + 1)

end

end A256290.P13901619738662344296

/-! ## A256290.P49097509155428689

`A007931(n+1)+A002277(A000523(n+2))`
-/

namespace A256290.P49097509155428689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002277 (A000523 (n + 2)).toNat

end

end A256290.P49097509155428689

/-! ## A256290.P2330325150330850495

`A284380(n+1)-A007931(n+1)`
-/

namespace A256290.P2330325150330850495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1) - A007931 (n + 1)

end

end A256290.P2330325150330850495

/-! ## A256290.P3973365053803378433

`A284382(n+1)-A032822(n+1)`
-/

namespace A256290.P3973365053803378433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A032822 (n + 1)

end

end A256290.P3973365053803378433

/-! ## A256290.P14292504793851068719

`A284381(n+1)-A032917(n+1)`
-/

namespace A256290.P14292504793851068719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A032917 (n + 1)

end

end A256290.P14292504793851068719

/-! ## A256290.P15480103067202337232

`A284635(n+1)-A032810(n+1)`
-/

namespace A256290.P15480103067202337232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - A032810 (n + 1)

end

end A256290.P15480103067202337232

/-! ## A256290.P3390932817266590103

`A285011(n+1)-A032834(n+1)`
-/

namespace A256290.P3390932817266590103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A032834 (n + 1)

end

end A256290.P3390932817266590103

/-! ## A256290.P9555970003736442623

`A256291(n+1)-A256077(n+1)`
-/

namespace A256290.P9555970003736442623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) - A256077 (n + 1)

end

end A256290.P9555970003736442623

/-! ## A256290.P11718005752706913127

`A284636(n+1)-A284920(n+1)`
-/

namespace A256290.P11718005752706913127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A284920 (n + 1)

end

end A256290.P11718005752706913127

/-! ## A256290.P7108838137615096127

`A032810(n+1)+2*A256077(n+1)`
-/

namespace A256290.P7108838137615096127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + 2 * A256077 (n + 1)

end

end A256290.P7108838137615096127

/-! ## A256290.P9814454308443667959

`2*A032834(n+1)-A032810(n+1)`
-/

namespace A256290.P9814454308443667959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032834 (n + 1) - A032810 (n + 1)

end

end A256290.P9814454308443667959

/-! ## A256290.P8399276661258761249

`(A256340(n+1)+A007931(n+1))/2`
-/

namespace A256290.P8399276661258761249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256340 (n + 1) + A007931 (n + 1) : ℚ) / 2

end

end A256290.P8399276661258761249

/-! ## A256290.P11777265415999433583

`(A256292(n+1)+A032810(n+1))/2`
-/

namespace A256290.P11777265415999433583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256292 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A256290.P11777265415999433583

/-! ## A256290.P15790409125577049471

`(A256291(n+1)+A032834(n+1))/2`
-/

namespace A256290.P15790409125577049471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256291 (n + 1) + A032834 (n + 1) : ℚ) / 2

end

end A256290.P15790409125577049471

/-! ## A256290.P14080052485680727362

`A284636(n+1)-2*A007931(n+1)`
-/

namespace A256290.P14080052485680727362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - 2 * A007931 (n + 1)

end

end A256290.P14080052485680727362

/-! ## A256290.P12538313216566833293

`2*A284379(n+1)-A072961(n+1)`
-/

namespace A256290.P12538313216566833293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A072961 (n + 1)

end

end A256290.P12538313216566833293

/-! ## A256290.P6620474159623621197

`A256292(n+1)-2*A256077(n+1)`
-/

namespace A256290.P6620474159623621197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1) - 2 * A256077 (n + 1)

end

end A256290.P6620474159623621197

/-! ## A256290.P11483241151330532367

`2*A256291(n+1)-A256292(n+1)`
-/

namespace A256290.P11483241151330532367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256291 (n + 1) - A256292 (n + 1)

end

end A256290.P11483241151330532367

/-! ## A256290.P837687684661824306

`A256077(n+1)+A284635(n+1)/2`
-/

namespace A256290.P837687684661824306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256077 (n + 1) : ℚ) + (A284635 (n + 1) : ℚ) / 2

end

end A256290.P837687684661824306

/-! ## A256290.P7877255540239124423

`(A285011(n+1)+A256077(n+1))/2`
-/

namespace A256290.P7877255540239124423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285011 (n + 1) + A256077 (n + 1) : ℚ) / 2

end

end A256290.P7877255540239124423

/-!
# A256291: Numbers which have only digits 5 and 6 in base 10.

The programs for A256291, there is no canonical definition to state claims against.
-/

/-! ## A256291.P5196064940769348637

`A256290(n+1)+A256077(n+1)`
-/

namespace A256291.P5196064940769348637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + A256077 (n + 1)

end

end A256291.P5196064940769348637

/-! ## A256291.P13925119153834542542

`A007931(n+1)+A002278(A000523(n+2))`
-/

namespace A256291.P13925119153834542542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002278 (A000523 (n + 2)).toNat

end

end A256291.P13925119153834542542

/-! ## A256291.P10302580707475053189

`A284635(n+1)-A007931(n+1)`
-/

namespace A256291.P10302580707475053189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - A007931 (n + 1)

end

end A256291.P10302580707475053189

/-! ## A256291.P7448456579096370877

`A284636(n+1)-A032917(n+1)`
-/

namespace A256291.P7448456579096370877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A032917 (n + 1)

end

end A256291.P7448456579096370877

/-! ## A256291.P1233295692020183740

`A285011(n+1)-A032810(n+1)`
-/

namespace A256291.P1233295692020183740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A032810 (n + 1)

end

end A256291.P1233295692020183740

/-! ## A256291.P12451312126521014224

`A256292(n+1)-A256077(n+1)`
-/

namespace A256291.P12451312126521014224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1) - A256077 (n + 1)

end

end A256291.P12451312126521014224

/-! ## A256291.P9457354014514922649

`A032834(n+1)+2*A256077(n+1)`
-/

namespace A256291.P9457354014514922649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + 2 * A256077 (n + 1)

end

end A256291.P9457354014514922649

/-! ## A256291.P13712623317660568421

`2*A032834(n+1)-A007931(n+1)`
-/

namespace A256291.P13712623317660568421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032834 (n + 1) - A007931 (n + 1)

end

end A256291.P13712623317660568421

/-! ## A256291.P17742061630663868418

`2*A256290(n+1)-A032834(n+1)`
-/

namespace A256291.P17742061630663868418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256290 (n + 1) - A032834 (n + 1)

end

end A256291.P17742061630663868418

/-! ## A256291.P154365340069131978

`(A256341(n+1)+A032810(n+1))/2`
-/

namespace A256291.P154365340069131978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256341 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A256291.P154365340069131978

/-! ## A256291.P13965051396811752234

`(A256340(n+1)+A032834(n+1))/2`
-/

namespace A256291.P13965051396811752234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256340 (n + 1) + A032834 (n + 1) : ℚ) / 2

end

end A256291.P13965051396811752234

/-! ## A256291.P11787959513053130099

`2*A284379(n+1)-A032822(n+1)`
-/

namespace A256291.P11787959513053130099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A032822 (n + 1)

end

end A256291.P11787959513053130099

/-! ## A256291.P10617029691975613472

`A256340(n+1)-2*A256077(n+1)`
-/

namespace A256291.P10617029691975613472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1) - 2 * A256077 (n + 1)

end

end A256291.P10617029691975613472

/-! ## A256291.P15776207707073389271

`(A256292(n+1)+A256290(n+1))/2`
-/

namespace A256291.P15776207707073389271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256292 (n + 1) + A256290 (n + 1) : ℚ) / 2

end

end A256291.P15776207707073389271

/-! ## A256291.P16677225497470615684

`2*A256292(n+1)-A256340(n+1)`
-/

namespace A256291.P16677225497470615684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256292 (n + 1) - A256340 (n + 1)

end

end A256291.P16677225497470615684

/-! ## A256291.P13364373672659470937

`2*A284380(n+1)-A284381(n+1)`
-/

namespace A256291.P13364373672659470937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A284381 (n + 1)

end

end A256291.P13364373672659470937

/-! ## A256291.P10337327317257482983

`2*A284633(n+1)-A284293(n+1)`
-/

namespace A256291.P10337327317257482983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284633 (n + 1) - A284293 (n + 1)

end

end A256291.P10337327317257482983

/-! ## A256291.P16108486893504596418

`2*A284634(n+1)-A284633(n+1)`
-/

namespace A256291.P16108486893504596418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A284633 (n + 1)

end

end A256291.P16108486893504596418

/-! ## A256291.P8245440080869615768

`A284636(n+1)-A284632(n+1)/2`
-/

namespace A256291.P8245440080869615768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284636 (n + 1) : ℚ) - (A284632 (n + 1) : ℚ) / 2

end

end A256291.P8245440080869615768

/-! ## A256291.P12907220104497369442

`A284635(n+1)-floor((A284633(n+1)+1)/3)`
-/

namespace A256291.P12907220104497369442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - ⌊(A284633 (n + 1) + 1 : ℚ) / 3⌋

end

end A256291.P12907220104497369442

/-!
# A256292: Numbers which have only digits 6 and 7 in base 10.

The programs for A256292, there is no canonical definition to state claims against.
-/

/-! ## A256292.P11901007402140861937

`A256291(n+1)+A256077(n+1)`
-/

namespace A256292.P11901007402140861937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + A256077 (n + 1)

end

end A256292.P11901007402140861937

/-! ## A256292.P4786000609997920482

`A007931(n+1)+A002279(A000523(n+2))`
-/

namespace A256292.P4786000609997920482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002279 (A000523 (n + 2)).toNat

end

end A256292.P4786000609997920482

/-! ## A256292.P11364362023186111558

`A285011(n+1)-A007931(n+1)`
-/

namespace A256292.P11364362023186111558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - A007931 (n + 1)

end

end A256292.P11364362023186111558

/-! ## A256292.P1405585561630733401

`A256340(n+1)-A256077(n+1)`
-/

namespace A256292.P1405585561630733401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1) - A256077 (n + 1)

end

end A256292.P1405585561630733401

/-! ## A256292.P14486856260255494500

`A256290(n+1)+2*A256077(n+1)`
-/

namespace A256292.P14486856260255494500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + 2 * A256077 (n + 1)

end

end A256292.P14486856260255494500

/-! ## A256292.P17676961011591027420

`2*A256290(n+1)-A032810(n+1)`
-/

namespace A256292.P17676961011591027420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256290 (n + 1) - A032810 (n + 1)

end

end A256292.P17676961011591027420

/-! ## A256292.P1418365313975486105

`A256341(n+1)-2*A256077(n+1)`
-/

namespace A256292.P1418365313975486105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1) - 2 * A256077 (n + 1)

end

end A256292.P1418365313975486105

/-! ## A256292.P4611663311040694394

`2*A256291(n+1)-A256290(n+1)`
-/

namespace A256292.P4611663311040694394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256291 (n + 1) - A256290 (n + 1)

end

end A256292.P4611663311040694394

/-! ## A256292.P9086421420300792204

`(A256340(n+1)+A256291(n+1))/2`
-/

namespace A256292.P9086421420300792204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256340 (n + 1) + A256291 (n + 1) : ℚ) / 2

end

end A256292.P9086421420300792204

/-! ## A256292.P1102030617993271319

`(A256341(n+1)+A256290(n+1))/2`
-/

namespace A256292.P1102030617993271319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256341 (n + 1) + A256290 (n + 1) : ℚ) / 2

end

end A256292.P1102030617993271319

/-! ## A256292.P349938692563111679

`2*A256340(n+1)-A256341(n+1)`
-/

namespace A256292.P349938692563111679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256340 (n + 1) - A256341 (n + 1)

end

end A256292.P349938692563111679

/-! ## A256292.P9740253841441392260

`2*A284635(n+1)-A284636(n+1)`
-/

namespace A256292.P9740253841441392260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284635 (n + 1) - A284636 (n + 1)

end

end A256292.P9740253841441392260

/-! ## A256292.P17739862164113003971

`2*A284380(n+1)-A284971(n+1)`
-/

namespace A256292.P17739862164113003971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A284971 (n + 1)

end

end A256292.P17739862164113003971

/-! ## A256292.P11304301565247880460

`A032810(n+1)+A256291(n+1)-A007931(n+1)`
-/

namespace A256292.P11304301565247880460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A256291 (n + 1) - A007931 (n + 1))

end

end A256292.P11304301565247880460

/-! ## A256292.P14183246984660732327

`A032834(n+1)+A256290(n+1)-A007931(n+1)`
-/

namespace A256292.P14183246984660732327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256290 (n + 1) - A007931 (n + 1))

end

end A256292.P14183246984660732327

/-! ## A256292.P16688198119470189004

`A007931(n+1)+A256340(n+1)-A032810(n+1)`
-/

namespace A256292.P16688198119470189004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A256340 (n + 1) - A032810 (n + 1))

end

end A256292.P16688198119470189004

/-! ## A256292.P5984622629851696445

`A007931(n+1)+A256341(n+1)-A032834(n+1)`
-/

namespace A256292.P5984622629851696445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A256341 (n + 1) - A032834 (n + 1))

end

end A256292.P5984622629851696445

/-! ## A256292.P12862601909519488907

`A032834(n+1)+A256291(n+1)-A032810(n+1)`
-/

namespace A256292.P12862601909519488907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256291 (n + 1) - A032810 (n + 1))

end

end A256292.P12862601909519488907

/-! ## A256292.P18326890357719055541

`A032810(n+1)+A256340(n+1)-A032834(n+1)`
-/

namespace A256292.P18326890357719055541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A256340 (n + 1) - A032834 (n + 1))

end

end A256292.P18326890357719055541

/-! ## A256292.P12772912109192079438

`A032834(n+1)+A284971(n+1)-A032822(n+1)`
-/

namespace A256292.P12772912109192079438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A284971 (n + 1) - A032822 (n + 1))

end

end A256292.P12772912109192079438

/-!
# A256293: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3, then convert back to base 10.

The programs for A256293, the canonical program `A256293.P2541555998451652213` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256293 has offset 0).

The definition of A256293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256293.P2541555998451652213

`A004488(A171960(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A256293

/-- `A004488(A171960(n))` -/
def P2541555998451652213.Spec : Prop :=
  ∀ n, P2541555998451652213.a n = A256293 n

theorem P2541555998451652213.correct : P2541555998451652213.Spec := by
  intro n
  simp only [A256293]

end A256293

/-! ## A256293.P13868437634429273803

`A004488(3^A081604(n)-(n+1))`
-/

namespace A256293.P13868437634429273803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A081604 n : ℤ) - (n + 1 : ℚ))).toNat

end

end A256293.P13868437634429273803

namespace A256293

/-- `A004488(3^A081604(n)-(n+1))` -/
def P13868437634429273803.Spec : Prop :=
  ∀ n, P13868437634429273803.a n = A256293 n

end A256293

/-! ## A256293.P17594546680868512803

`A004488(A284797(n)-A055947(n))`
-/

namespace A256293.P17594546680868512803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A284797 n - A055947 n).toNat

end

end A256293.P17594546680868512803

namespace A256293

/-- `A004488(A284797(n)-A055947(n))` -/
def P17594546680868512803.Spec : Prop :=
  ∀ n, P17594546680868512803.a n = A256293 n

end A256293

/-! ## A256293.P10343111388851541539

`A117966(n)-A117966(A171960(n)+n)`
-/

namespace A256293.P10343111388851541539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n - A117966 (A171960 n + (n : ℤ)).toNat

end

end A256293.P10343111388851541539

namespace A256293

/-- `A117966(n)-A117966(A171960(n)+n)` -/
def P10343111388851541539.Spec : Prop :=
  ∀ n, P10343111388851541539.a n = A256293 n

end A256293

/-! ## A256293.P6559929329936282345

`A038500(n+1)*A137305(A284797(n))`
-/

namespace A256293.P6559929329936282345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A137305 (A284797 n).toNat

end

end A256293.P6559929329936282345

namespace A256293

/-- `A038500(n+1)*A137305(A284797(n))` -/
def P6559929329936282345.Spec : Prop :=
  ∀ n, P6559929329936282345.a n = A256293 n

end A256293

/-! ## A256293.P15468743858121263128

`A117966(A028310(n))+A004526(A064235(n+1))`
-/

namespace A256293.P15468743858121263128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A028310 n).toNat + A004526 (A064235 (n + 1)).toNat

end

end A256293.P15468743858121263128

namespace A256293

/-- `A117966(A028310(n))+A004526(A064235(n+1))` -/
def P15468743858121263128.Spec : Prop :=
  ∀ n, P15468743858121263128.a n = A256293 n

end A256293

/-! ## A256293.P13554905269318309267

`A371268(A361945(A171960(A338246(A338246(n)))))`
-/

namespace A256293.P13554905269318309267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A361945 (A171960 (A338246 (A338246 n).toNat).toNat).toNat).toNat

end

end A256293.P13554905269318309267

namespace A256293

/-- `A371268(A361945(A171960(A338246(A338246(n)))))` -/
def P13554905269318309267.Spec : Prop :=
  ∀ n, P13554905269318309267.a n = A256293 n

end A256293

/-! ## A256293.P6807047272504676718

`A371268(A361945(A171960(A361945(A361945(n)))))`
-/

namespace A256293.P6807047272504676718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A361945 (A171960 (A361945 (A361945 n).toNat).toNat).toNat).toNat

end

end A256293.P6807047272504676718

namespace A256293

/-- `A371268(A361945(A171960(A361945(A361945(n)))))` -/
def P6807047272504676718.Spec : Prop :=
  ∀ n, P6807047272504676718.a n = A256293 n

end A256293

/-! ## A256293.P9105294781600764632

`A028898(A256303(n))`
-/

namespace A256293.P9105294781600764632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A256303 n).toNat

end

end A256293.P9105294781600764632

namespace A256293

/-- `A028898(A256303(n))` -/
def P9105294781600764632.Spec : Prop :=
  ∀ n, P9105294781600764632.a n = A256293 n

end A256293

/-!
# A256294: Apply the transformation 0 -> 1 -> 2 -> 3 -> 0 to the digits of n written in base 4, then convert back to base 10.

The programs for A256294, there is no canonical definition to state claims against.
-/

/-! ## A256294.P13008747142981046954

`A379578(A004468(n))`
-/

namespace A256294.P13008747142981046954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379578 (A004468 n).toNat

end

end A256294.P13008747142981046954

/-! ## A256294.P9538257373521575285

`A379578(xor(n, A006015(n)))`
-/

namespace A256294.P9538257373521575285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379578 (Int.xor (n : ℤ) (A006015 n)).toNat

end

end A256294.P9538257373521575285

/-! ## A256294.P496174678606696234

`xor(A163241(n), A379578(n))`
-/

namespace A256294.P496174678606696234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163241 n) (A379578 n)

end

end A256294.P496174678606696234

/-! ## A256294.P13545001009653893162

`A379578(or(A063695(2*n+1), A380110(n)))`
-/

namespace A256294.P13545001009653893162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379578 (Int.lor (A063695 (2 * n + 1)) (A380110 n)).toNat

end

end A256294.P13545001009653893162

/-! ## A256294.P6354645915292599088

`xor(A163233(A163238(n)), A379578(n))`
-/

namespace A256294.P6354645915292599088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163233 (A163238 n).toNat) (A379578 n)

end

end A256294.P6354645915292599088

/-! ## A256294.P8069659739862569282

`A028899(A256304(n))`
-/

namespace A256294.P8069659739862569282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A256304 n).toNat

end

end A256294.P8069659739862569282

/-!
# A256295: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 0 to the digits of n written in base 5, then convert back to base 10.

The programs for A256295, there is no canonical definition to state claims against.
-/

/-! ## A256295.P1111499482416323326

`A028900(A256305(n))`
-/

namespace A256295.P1111499482416323326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A256305 n).toNat

end

end A256295.P1111499482416323326

/-! ## A256295.P9037798180901668239

`A081596(A256305(n)%A029932(n+1))`
-/

namespace A256295.P9037798180901668239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (Int.tmod (A256305 n) (A029932 (n + 1))).toNat

end

end A256295.P9037798180901668239

/-! ## A256295.P11174551788038615906

`A081596(A256305(n))%A051965(3*n+4)`
-/

namespace A256295.P11174551788038615906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081596 (A256305 n).toNat) (A051965 (3 * n + 4))

end

end A256295.P11174551788038615906

/-! ## A256295.P4656284322640048807

`A048379(2*n+1)/A020639(A235198(n+2))`
-/

namespace A256295.P4656284322640048807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048379 (2 * n + 1) : ℚ) / (A020639 (A235198 (n + 2)).toNat : ℚ)

end

end A256295.P4656284322640048807

/-! ## A256295.P16082282955007462848

`A048379(2*n+1)/A007906(A005235(2*(n+1)))`
-/

namespace A256295.P16082282955007462848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048379 (2 * n + 1) : ℚ) / (A007906 (A005235 (2 * (n + 1))).toNat : ℚ)

end

end A256295.P16082282955007462848

/-!
# A256296: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 0 to the digits of n written in base 6, then convert back to base 10.

The programs for A256296, there is no canonical definition to state claims against.
-/

/-! ## A256296.P8117214594912599479

`A028901(A256306(n))`
-/

namespace A256296.P8117214594912599479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A256306 n).toNat

end

end A256296.P8117214594912599479

/-!
# A256297: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 0 to the digits of n written in base 7, then convert back to base 10.

The programs for A256297, there is no canonical definition to state claims against.
-/

/-! ## A256297.P2400585085820794138

`A028902(A256307(n))`
-/

namespace A256297.P2400585085820794138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A256307 n).toNat

end

end A256297.P2400585085820794138

/-!
# A256298: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 0 to the digits of n written in base 8, then convert back to base 10.

The programs for A256298, there is no canonical definition to state claims against.
-/

/-! ## A256298.P10771068789799671453

`A028903(A256308(n))`
-/

namespace A256298.P10771068789799671453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A256308 n).toNat

end

end A256298.P10771068789799671453

/-!
# A256299: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 0 to the digits of n written in base 9, then convert back to base 10.

The programs for A256299, there is no canonical definition to state claims against.
-/

/-! ## A256299.P3897287489504929353

`A028904(A256289(n))`
-/

namespace A256299.P3897287489504929353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A256289 n).toNat

end

end A256299.P3897287489504929353

/-! ## A256299.P9606768924145449928

`A081600(A256289(n))%A067340(A014670(n+4))`
-/

namespace A256299.P9606768924145449928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081600 (A256289 n).toNat) (A067340 (A014670 (n + 4)).toNat)

end

end A256299.P9606768924145449928

/-! ## A256299.P2760320112066961537

`A081600(A256289(n))*A166486(A343531(n+1))`
-/

namespace A256299.P2760320112066961537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A256289 n).toNat * A166486 (A343531 (n + 1)).toNat

end

end A256299.P2760320112066961537

/-! ## A256299.P17012357715928842900

`A081600(A256289(n))+A000007(A141885(2*n+1))`
-/

namespace A256299.P17012357715928842900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A256289 n).toNat + A000007 (A141885 (2 * n + 1)).toNat

end

end A256299.P17012357715928842900

/-! ## A256299.P13997423766758405385

`A000034(∑[4*n])*A081600(A256289(n))`
-/

namespace A256299.P13997423766758405385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j) * A081600 (A256289 n).toNat

end

end A256299.P13997423766758405385

/-! ## A256299.P4359177683056111664

`A059841(A046092(n))*A081600(A256289(n))`
-/

namespace A256299.P4359177683056111664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A046092 n).toNat * A081600 (A256289 n).toNat

end

end A256299.P4359177683056111664

/-! ## A256299.P10891882586570747916

`A059841(A139596(n))*A081600(A256289(n))`
-/

namespace A256299.P10891882586570747916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A139596 n).toNat * A081600 (A256289 n).toNat

end

end A256299.P10891882586570747916

/-! ## A256299.P10340486365598371832

`A059841(A009307(n+1))*A081600(A256289(n))`
-/

namespace A256299.P10340486365598371832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A009307 (n + 1)).toNat * A081600 (A256289 n).toNat

end

end A256299.P10340486365598371832

/-! ## A256299.P6794207637390563106

`A081600(A256289(n)%A051965(n+1))`
-/

namespace A256299.P6794207637390563106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (Int.tmod (A256289 n) (A051965 (n + 1))).toNat

end

end A256299.P6794207637390563106

