import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A289600: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 427).

The programs for A289600, there is no canonical definition to state claims against.
-/

/-! ## A289600.P4455776985919830482

`A289601(n)-A051904(A289601(n))`
-/

namespace A289600.P4455776985919830482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289601 n - A051904 (A289601 n).toNat

end

end A289600.P4455776985919830482

/-! ## A289600.P12861385271815227317

`A066182(A289601(n))`
-/

namespace A289600.P12861385271815227317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A289601 n).toNat

end

end A289600.P12861385271815227317

/-! ## A289600.P10612688946253769264

`A233583(A289601(n)+1)-1`
-/

namespace A289600.P10612688946253769264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A289601 n + 1).toNat - 1

end

end A289600.P10612688946253769264

/-! ## A289600.P5600447702487776897

`A289601(n)-A079978(A001710(n))`
-/

namespace A289600.P5600447702487776897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289601 n - A079978 (A001710 n).toNat

end

end A289600.P5600447702487776897

/-!
# A289601: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 431) or the same sequence for the mesh pattern (12, 491).

The programs for A289601, there is no canonical definition to state claims against.
-/

/-! ## A289601.P30873116384008935

`A289595(n)+A289598(n)-A289590(n)`
-/

namespace A289601.P30873116384008935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289595 n + A289598 n - A289590 n

end

end A289601.P30873116384008935

/-! ## A289601.P7418656841845754495

`A289600(n)+char[A127301(n+2)]`
-/

namespace A289601.P7418656841845754495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127301 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289600 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289601.P7418656841845754495

/-! ## A289601.P15308976175958474074

`A065475(A289600(n))`
-/

namespace A289601.P15308976175958474074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A289600 n).toNat

end

end A289601.P15308976175958474074

/-! ## A289601.P6214158510610217995

`A289600(n)+A020987(n!)`
-/

namespace A289601.P6214158510610217995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289600 n + A020987 (Nat.factorial n)

end

end A289601.P6214158510610217995

/-!
# A289602: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (21, 257) or the same sequence for the mesh patterns (21, 261), (21, 273), (21, 277), (21, 321), (21, 325), (21, 337), (21, 341).

The programs for A289602, there is no canonical definition to state claims against.
-/

/-! ## A289602.P8907086944159508040

`A000108(n)-A062110(A133263(n))`
-/

namespace A289602.P8907086944159508040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A062110 (A133263 n).toNat

end

end A289602.P8907086944159508040

/-! ## A289602.P8738529585065046683

`A034008(n)+abs(A168491(n))-A034007(n)`
-/

namespace A289602.P8738529585065046683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + (|A168491 n| - A034007 n)

end

end A289602.P8738529585065046683

/-! ## A289602.P16819771593748674072

`A028304(2*n)-(A034007(n)-A034008(n))`
-/

namespace A289602.P16819771593748674072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - (A034007 n - A034008 n)

end

end A289602.P16819771593748674072

/-! ## A289602.P18044451467411619719

`A126120(2*n)-(A034007(n)-A034008(n))`
-/

namespace A289602.P18044451467411619719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - (A034007 n - A034008 n)

end

end A289602.P18044451467411619719

/-! ## A289602.P288805649080744691

`A208355(2*n)-(A034007(n)-A034008(n))`
-/

namespace A289602.P288805649080744691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - (A034007 n - A034008 n)

end

end A289602.P288805649080744691

/-!
# A289604: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 277) or the same sequence for the mesh pattern (12, 337).

The programs for A289604, there is no canonical definition to state claims against.
-/

/-! ## A289604.P15008124419626351549

`floor((A289603(n)+A289605(n))/2)`
-/

namespace A289604.P15008124419626351549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289603 n + A289605 n : ℚ) / 2⌋

end

end A289604.P15008124419626351549

/-! ## A289604.P16656293184736390854

`A289607(n)+A289610(n)-A289614(n)`
-/

namespace A289604.P16656293184736390854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289607 n + A289610 n - A289614 n

end

end A289604.P16656293184736390854

/-! ## A289604.P10715560859950075116

`A058094(n)-A135661(A287804(n))`
-/

namespace A289604.P10715560859950075116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058094 n - A135661 (A287804 n).toNat

end

end A289604.P10715560859950075116

/-!
# A289605: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 341).

The programs for A289605, there is no canonical definition to state claims against.
-/

/-! ## A289605.P16128712698288816471

`A162229(A148892(n))`
-/

namespace A289605.P16128712698288816471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A148892 n).toNat

end

end A289605.P16128712698288816471

/-! ## A289605.P17401846377668211116

`A162229(A148903(n))`
-/

namespace A289605.P17401846377668211116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A148903 n).toNat

end

end A289605.P17401846377668211116

/-! ## A289605.P11512177319020165658

`A111706(A202261(n))`
-/

namespace A289605.P11512177319020165658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A202261 n).toNat

end

end A289605.P11512177319020165658

/-!
# A289606: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 275) or the same sequence for the mesh patterns (12, 281), (12, 305), (12, 401).

The programs for A289606, there is no canonical definition to state claims against.
-/

/-! ## A289606.P5000258544910728593

`A289607(n)-A289610(n)+A289608(n)`
-/

namespace A289606.P5000258544910728593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289607 n - A289610 n + A289608 n

end

end A289606.P5000258544910728593

/-! ## A289606.P12208175877834894815

`A289607(n+1)+A289608(n)-A289609(n+1)`
-/

namespace A289606.P12208175877834894815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289607 (n + 1) + (A289608 n - A289609 (n + 1))

end

end A289606.P12208175877834894815

/-! ## A289606.P2731238951034917905

`A028310(A359998(n+1)+A121868(n))`
-/

namespace A289606.P2731238951034917905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A359998 (n + 1) + A121868 n).toNat

end

end A289606.P2731238951034917905

/-!
# A289607: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 279) or the same sequence for the mesh patterns (12, 309), (12, 345), (12, 465).

The programs for A289607, there is no canonical definition to state claims against.
-/

/-! ## A289607.P8883310745430275021

`A289604(n)+A289614(n)-A289610(n)`
-/

namespace A289607.P8883310745430275021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289604 n + A289614 n - A289610 n

end

end A289607.P8883310745430275021

/-! ## A289607.P1066893179342498272

`A289606(n)+A289610(n)-A289608(n)`
-/

namespace A289607.P1066893179342498272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289606 n + A289610 n - A289608 n

end

end A289607.P1066893179342498272

/-! ## A289607.P11468996015741780302

`A076798(A107590(n))`
-/

namespace A289607.P11468996015741780302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076798 (A107590 n).toNat

end

end A289607.P11468996015741780302

/-!
# A289608: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 313) or the same sequence for the mesh pattern (12, 403).

The programs for A289608, there is no canonical definition to state claims against.
-/

/-! ## A289608.P14223174770662136062

`A289606(n)+A289610(n)-A289607(n)`
-/

namespace A289608.P14223174770662136062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289606 n + (A289610 n - A289607 n)

end

end A289608.P14223174770662136062

/-! ## A289608.P20242045281629517

`A316975(A049154(n))`
-/

namespace A289608.P20242045281629517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316975 (A049154 n).toNat

end

end A289608.P20242045281629517

/-! ## A289608.P1557850743625865732

`A391070(A150947(n))`
-/

namespace A289608.P1557850743625865732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391070 (A150947 n).toNat

end

end A289608.P1557850743625865732

/-!
# A289609: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 285) or the same sequence for the mesh patterns (12, 339), (12, 369), (12, 405).

The programs for A289609, there is no canonical definition to state claims against.
-/

/-! ## A289609.P11023558744222187748

`A289611(n)-A289207(n)`
-/

namespace A289609.P11023558744222187748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289611 n - A289207 n

end

end A289609.P11023558744222187748

/-! ## A289609.P6895200349967292389

`A289611(n)+A289616(n)-A289654(n+1)`
-/

namespace A289609.P6895200349967292389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289611 n + (A289616 n - A289654 (n + 1))

end

end A289609.P6895200349967292389

/-! ## A289609.P8215955076616691862

`A289611(n+1)+A289611(n)-A289612(n)`
-/

namespace A289609.P8215955076616691862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289611 (n + 1) + (A289611 n - A289612 n)

end

end A289609.P8215955076616691862

/-!
# A289610: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 317) or the same sequence for the mesh patterns (12, 377), (12, 407), (12, 467).

The programs for A289610, there is no canonical definition to state claims against.
-/

/-! ## A289610.P1956942295692188117

`A289611(n)-A000520(n+1)`
-/

namespace A289610.P1956942295692188117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289611 n - A000520 (n + 1)

end

end A289610.P1956942295692188117

/-! ## A289610.P7155179358287989476

`A289611(n)-char[A065620(n+3)]`
-/

namespace A289610.P7155179358287989476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289611 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289610.P7155179358287989476

/-! ## A289610.P12238888695190366035

`A289604(n)+A289614(n)-A289607(n)`
-/

namespace A289610.P12238888695190366035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289604 n + (A289614 n - A289607 n)

end

end A289610.P12238888695190366035

/-! ## A289610.P17606959495669487785

`A289607(n)+A289608(n)-A289606(n)`
-/

namespace A289610.P17606959495669487785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289607 n + (A289608 n - A289606 n)

end

end A289610.P17606959495669487785

/-! ## A289610.P15826435901254366708

`A289609(n+1)+A289607(n)-A289607(n+1)`
-/

namespace A289610.P15826435901254366708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289609 (n + 1) + (A289607 n - A289607 (n + 1))

end

end A289610.P15826435901254366708

/-!
# A289611: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 343) or the same sequence for the mesh patterns (12, 349), (12, 373), (12, 469).

The programs for A289611, there is no canonical definition to state claims against.
-/

/-! ## A289611.P7327390201457565921

`A289609(n)+A289207(n)`
-/

namespace A289611.P7327390201457565921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289609 n + A289207 n

end

end A289611.P7327390201457565921

/-! ## A289611.P8853553229269371806

`A289610(n)+A000520(n+1)`
-/

namespace A289611.P8853553229269371806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289610 n + A000520 (n + 1)

end

end A289611.P8853553229269371806

/-! ## A289611.P11021039020136022298

`A289610(n)+char[A059893(n+3)]`
-/

namespace A289611.P11021039020136022298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289610 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289611.P11021039020136022298

/-! ## A289611.P18104902920843428438

`A289610(n)+char[A366385(n+5)]`
-/

namespace A289611.P18104902920843428438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366385 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289610 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289611.P18104902920843428438

/-! ## A289611.P16066399572022449312

`A289654(n+1)+A289609(n)-A289616(n)`
-/

namespace A289611.P16066399572022449312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) + (A289609 n - A289616 n)

end

end A289611.P16066399572022449312

/-!
# A289612: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 381) or the same sequence for the mesh pattern (12, 471).

The programs for A289612, there is no canonical definition to state claims against.
-/

/-! ## A289612.P12332616974773122755

`Δ[A014137(n)]-floor(2^(n-1))`
-/

namespace A289612.P12332616974773122755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A289612.P12332616974773122755

/-! ## A289612.P6232582427700391215

`Δ[A014138(n)]-floor(2^(n-1))`
-/

namespace A289612.P6232582427700391215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A289612.P6232582427700391215

/-! ## A289612.P1776472492537775477

`record[A288386(n)]-floor(2^(n-1))`
-/

namespace A289612.P1776472492537775477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A289612.P1776472492537775477

/-! ## A289612.P15728292390392538009

`A000108(n+1)-floor(2^(n-1))`
-/

namespace A289612.P15728292390392538009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A289612.P15728292390392538009

/-! ## A289612.P4011526419522233264

`A125107(n)+A071724(n)`
-/

namespace A289612.P4011526419522233264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n + A071724 n

end

end A289612.P4011526419522233264

/-!
# A289613: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 307) or the same sequence for the mesh pattern (12, 409).

The programs for A289613, there is no canonical definition to state claims against.
-/

/-! ## A289613.P9385292923237209974

`A166686(A301308(n))`
-/

namespace A289613.P9385292923237209974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166686 (A301308 n).toNat

end

end A289613.P9385292923237209974

/-! ## A289613.P10509149370669118099

`A217755(A229884(n+1))`
-/

namespace A289613.P10509149370669118099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217755 (A229884 (n + 1)).toNat

end

end A289613.P10509149370669118099

/-! ## A289613.P773323397237940530

`A277192(A219756(n+1))`
-/

namespace A289613.P773323397237940530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A219756 (n + 1)).toNat

end

end A289613.P773323397237940530

/-!
# A289614: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 283) or the same sequence for the mesh pattern (12, 433).

The programs for A289614, the canonical program `A289614.P14969575610608167341` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289614 has offset 0).

The definition of A289614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289615, A289616, A289652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289614.P14969575610608167341

`A289615(n)+A289616(n)-A289652(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A289614

/-- `A289615(n)+A289616(n)-A289652(n)` -/
def P14969575610608167341.Spec : Prop :=
  ∀ n, P14969575610608167341.a n = A289614 n

theorem P14969575610608167341.correct : P14969575610608167341.Spec := by
  intro n
  simp only [A289614]

end A289614

/-! ## A289614.P9098404832783409632

`A289607(n)+A289610(n)-A289604(n)`
-/

namespace A289614.P9098404832783409632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289607 n + A289610 n - A289604 n

end

end A289614.P9098404832783409632

namespace A289614

/-- `A289607(n)+A289610(n)-A289604(n)` -/
def P9098404832783409632.Spec : Prop :=
  ∀ n, P9098404832783409632.a n = A289614 n

end A289614

/-! ## A289614.P5216799322866249777

`A103354(A000108(n)-A194220(n+1))`
-/

namespace A289614.P5216799322866249777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (A000108 n - A194220 (n + 1)).toNat

end

end A289614.P5216799322866249777

namespace A289614

/-- `A103354(A000108(n)-A194220(n+1))` -/
def P5216799322866249777.Spec : Prop :=
  ∀ n, P5216799322866249777.a n = A289614 n

end A289614

/-! ## A289614.P10805865139253445611

`A000108(n)-A000523(A001764(n))`
-/

namespace A289614.P10805865139253445611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000523 (A001764 n).toNat

end

end A289614.P10805865139253445611

namespace A289614

/-- `A000108(n)-A000523(A001764(n))` -/
def P10805865139253445611.Spec : Prop :=
  ∀ n, P10805865139253445611.a n = A289614 n

end A289614

/-!
# A289615: A246604 (Catalan(n)-n) with initial terms 1,0,0,2 changed to 1,1,1,3.

The programs for A289615, the canonical program `A289615.P7136354491060648403` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289615 has offset 0).

The definition of A289615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289615.P6283127347120900490

`or(char[A009496(n)], A246604(n))`
-/

namespace A289615.P6283127347120900490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009496 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A246604 n)

end

end A289615.P6283127347120900490

namespace A289615

/-- `or(char[A009496(n)], A246604(n))` -/
def P6283127347120900490.Spec : Prop :=
  ∀ n, P6283127347120900490.a n = A289615 n

end A289615

/-! ## A289615.P7136354491060648403

`or(char[A055228(n)], A246604(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A289615

/-- `or(char[A055228(n)], A246604(n))` -/
def P7136354491060648403.Spec : Prop :=
  ∀ n, P7136354491060648403.a n = A289615 n

theorem P7136354491060648403.correct : P7136354491060648403.Spec := by
  intro n
  simp only [A289615]

end A289615

/-! ## A289615.P3402105115344420287

`A289653(n+1)-A289207(n)`
-/

namespace A289615.P3402105115344420287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289653 (n + 1) - A289207 n

end

end A289615.P3402105115344420287

namespace A289615

/-- `A289653(n+1)-A289207(n)` -/
def P3402105115344420287.Spec : Prop :=
  ∀ n, P3402105115344420287.a n = A289615 n

end A289615

/-! ## A289615.P11925759549127161409

`A289614(n)+A289652(n)-A289616(n)`
-/

namespace A289615.P11925759549127161409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289614 n + (A289652 n - A289616 n)

end

end A289615.P11925759549127161409

namespace A289615

/-- `A289614(n)+A289652(n)-A289616(n)` -/
def P11925759549127161409.Spec : Prop :=
  ∀ n, P11925759549127161409.a n = A289615 n

theorem P11925759549127161409.correct : P11925759549127161409.Spec := by
  intro n
  simp only [A289615, Nat.add_sub_cancel, A289615.P11925759549127161409.a, A289615.P7136354491060648403.f1, A289615.P7136354491060648403.a, A055228, A055228.P5197048720928582146.a, A246604, A246604.P5603396420743086449.a, A289614, A289614.P14969575610608167341.a, A289616, A289616.P6968600782892435759.a, A289652, A289652.P1856319461731628592.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, A289207, A289207.P4353291363742306282.a, A289654, A289654.P3590409810907321973.a, A185014, A185014.P14310411706898602348.a, A185114, A185114.P1795733170275167192.a, A185115, A185115.P11194374675298673512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A289615

/-!
# A289616: A246604 (Catalan(n)-n) with initial terms 1,0,0,2,10 changed to 1,1,1,2,11.

The programs for A289616, the canonical program `A289616.P6968600782892435759` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289616 has offset 0).

The definition of A289616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289616.P6968600782892435759

`A289654(n+1)-A289207(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A289616

/-- `A289654(n+1)-A289207(n)` -/
def P6968600782892435759.Spec : Prop :=
  ∀ n, P6968600782892435759.a n = A289616 n

theorem P6968600782892435759.correct : P6968600782892435759.Spec := by
  intro n
  simp only [A289616]

end A289616

/-! ## A289616.P11620031828857616968

`A289654(n+1)+A289609(n)-A289611(n)`
-/

namespace A289616.P11620031828857616968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) + (A289609 n - A289611 n)

end

end A289616.P11620031828857616968

namespace A289616

/-- `A289654(n+1)+A289609(n)-A289611(n)` -/
def P11620031828857616968.Spec : Prop :=
  ∀ n, P11620031828857616968.a n = A289616 n

end A289616

/-! ## A289616.P5720610093756422867

`A289609(n+1)+A289654(n+1)-A289610(n+1)`
-/

namespace A289616.P5720610093756422867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289609 (n + 1) + (A289654 (n + 1) - A289610 (n + 1))

end

end A289616.P5720610093756422867

namespace A289616

/-- `A289609(n+1)+A289654(n+1)-A289610(n+1)` -/
def P5720610093756422867.Spec : Prop :=
  ∀ n, P5720610093756422867.a n = A289616 n

end A289616

/-! ## A289616.P5101842178304478052

`xor(A100995(A000105(n)), A289615(n))`
-/

namespace A289616.P5101842178304478052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100995 (A000105 n).toNat) (A289615 n)

end

end A289616.P5101842178304478052

namespace A289616

/-- `xor(A100995(A000105(n)), A289615(n))` -/
def P5101842178304478052.Spec : Prop :=
  ∀ n, P5101842178304478052.a n = A289616 n

end A289616

/-! ## A289616.P3558390163030612118

`A065040(n)+A028310(A246604(n))`
-/

namespace A289616.P3558390163030612118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n + A028310 (A246604 n).toNat

end

end A289616.P3558390163030612118

namespace A289616

/-- `A065040(n)+A028310(A246604(n))` -/
def P3558390163030612118.Spec : Prop :=
  ∀ n, P3558390163030612118.a n = A289616 n

end A289616

/-!
# A289617: a(n) = A005187(A001222(n)).

The programs for A289617, the canonical program `A289617.P15823535542355820827` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289617 has offset 1).

The definition of A289617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289617.P15823535542355820827

`A005187(A001222(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A289617

/-- `A005187(A001222(n+1))` -/
def P15823535542355820827.Spec : Prop :=
  ∀ n, P15823535542355820827.a n = A289617 (n + 1)

theorem P15823535542355820827.correct : P15823535542355820827.Spec := by
  intro n
  simp only [A289617, Nat.add_sub_cancel]

end A289617

/-! ## A289617.P9759758757778478377

`val((2*∑{e}[n+1, #])!, 2)`
-/

namespace A289617.P9759758757778478377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))) 2

end

end A289617.P9759758757778478377

namespace A289617

/-- `val((2*∑{e}[n+1, #])!, 2)` -/
def P9759758757778478377.Spec : Prop :=
  ∀ n, (P9759758757778478377.a n : ℤ) = A289617 (n + 1)

end A289617

/-! ## A289617.P16687791242644933155

`A005187(∑{e}[n+1, #])`
-/

namespace A289617.P16687791242644933155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A289617.P16687791242644933155

namespace A289617

/-- `A005187(∑{e}[n+1, #])` -/
def P16687791242644933155.Spec : Prop :=
  ∀ n, P16687791242644933155.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P10005434443934045966

`A011371(2*∑{e}[n+1, #])`
-/

namespace A289617.P10005434443934045966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A289617.P10005434443934045966

namespace A289617

/-- `A011371(2*∑{e}[n+1, #])` -/
def P10005434443934045966.Spec : Prop :=
  ∀ n, P10005434443934045966.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P1514894727158580655

`A318315(2^∑{e}[n+1, #])`
-/

namespace A289617.P1514894727158580655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A289617.P1514894727158580655

namespace A289617

/-- `A318315(2^∑{e}[n+1, #])` -/
def P1514894727158580655.Spec : Prop :=
  ∀ n, P1514894727158580655.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P18310127574766670676

`A318455(2^∑{e}[n+1, #])`
-/

namespace A289617.P18310127574766670676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318455 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A289617.P18310127574766670676

namespace A289617

/-- `A318455(2^∑{e}[n+1, #])` -/
def P18310127574766670676.Spec : Prop :=
  ∀ n, P18310127574766670676.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P4633332738986113704

`val(A046161(∑{e}[n+1, #]), 2)`
-/

namespace A289617.P4633332738986113704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046161 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat 2

end

end A289617.P4633332738986113704

namespace A289617

/-- `val(A046161(∑{e}[n+1, #]), 2)` -/
def P4633332738986113704.Spec : Prop :=
  ∀ n, (P4633332738986113704.a n : ℤ) = A289617 (n + 1)

end A289617

/-! ## A289617.P9740315450577170297

`val(A052277(∑{e}[n+1, #]), 2)`
-/

namespace A289617.P9740315450577170297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052277 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat 2

end

end A289617.P9740315450577170297

namespace A289617

/-- `val(A052277(∑{e}[n+1, #]), 2)` -/
def P9740315450577170297.Spec : Prop :=
  ∀ n, (P9740315450577170297.a n : ℤ) = A289617 (n + 1)

end A289617

/-! ## A289617.P9725837118884454474

`A005187(∑{p}[n+1, val(n+1, #)])`
-/

namespace A289617.P9725837118884454474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A289617.P9725837118884454474

namespace A289617

/-- `A005187(∑{p}[n+1, val(n+1, #)])` -/
def P9725837118884454474.Spec : Prop :=
  ∀ n, P9725837118884454474.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P3558096714657031403

`A011371(∑{e}[n+1, #])+∑{e}[n+1, #]`
-/

namespace A289617.P3558096714657031403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A289617.P3558096714657031403

namespace A289617

/-- `A011371(∑{e}[n+1, #])+∑{e}[n+1, #]` -/
def P3558096714657031403.Spec : Prop :=
  ∀ n, P3558096714657031403.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P3649463738240144756

`A046645(A061142(n+1))`
-/

namespace A289617.P3649463738240144756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A061142 (n + 1)).toNat

end

end A289617.P3649463738240144756

namespace A289617

/-- `A046645(A061142(n+1))` -/
def P3649463738240144756.Spec : Prop :=
  ∀ n, P3649463738240144756.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P2344809090055243723

`A046645(A068794(n+1))`
-/

namespace A289617.P2344809090055243723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A068794 (n + 1)).toNat

end

end A289617.P2344809090055243723

namespace A289617

/-- `A046645(A068794(n+1))` -/
def P2344809090055243723.Spec : Prop :=
  ∀ n, P2344809090055243723.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P1904983158024395452

`A011371(A255201(n+1))`
-/

namespace A289617.P1904983158024395452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A255201 (n + 1)).toNat

end

end A289617.P1904983158024395452

namespace A289617

/-- `A011371(A255201(n+1))` -/
def P1904983158024395452.Spec : Prop :=
  ∀ n, P1904983158024395452.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P15572091108797806386

`A318455(A124508(n+1))`
-/

namespace A289617.P15572091108797806386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318455 (A124508 (n + 1)).toNat

end

end A289617.P15572091108797806386

namespace A289617

/-- `A318455(A124508(n+1))` -/
def P15572091108797806386.Spec : Prop :=
  ∀ n, P15572091108797806386.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P14399008844121888234

`A011371(2*A001222(n+1))`
-/

namespace A289617.P14399008844121888234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * A001222 (n + 1)).toNat

end

end A289617.P14399008844121888234

namespace A289617

/-- `A011371(2*A001222(n+1))` -/
def P14399008844121888234.Spec : Prop :=
  ∀ n, P14399008844121888234.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P3752925225096350109

`A005187(val(A165825(n+1), 4))`
-/

namespace A289617.P3752925225096350109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4)

end

end A289617.P3752925225096350109

namespace A289617

/-- `A005187(val(A165825(n+1), 4))` -/
def P3752925225096350109.Spec : Prop :=
  ∀ n, P3752925225096350109.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P13140495524407039651

`A005187(log2(sqrt(A165825(n+1))))`
-/

namespace A289617.P13140495524407039651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (A165825 (n + 1) : ℝ)))).toNat

end

end A289617.P13140495524407039651

namespace A289617

/-- `A005187(log2(sqrt(A165825(n+1))))` -/
def P13140495524407039651.Spec : Prop :=
  ∀ n, P13140495524407039651.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P8879333756469205959

`A005187(log2(A165825(n+1))/2)`
-/

namespace A289617.P8879333756469205959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway (Real.logb 2 (A165825 (n + 1) : ℝ) / 2)).toNat

end

end A289617.P8879333756469205959

namespace A289617

/-- `A005187(log2(A165825(n+1))/2)` -/
def P8879333756469205959.Spec : Prop :=
  ∀ n, P8879333756469205959.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P7992302150182577464

`A289618(n+1)+A046645(n+1)`
-/

namespace A289617.P7992302150182577464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (n + 1) + A046645 (n + 1)

end

end A289617.P7992302150182577464

namespace A289617

/-- `A289618(n+1)+A046645(n+1)` -/
def P7992302150182577464.Spec : Prop :=
  ∀ n, P7992302150182577464.a n = A289617 (n + 1)

end A289617

/-! ## A289617.P309748388717971582

`A005187(A048675(A293442(n+1)))`
-/

namespace A289617.P309748388717971582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A048675 (A293442 (n + 1)).toNat).toNat

end

end A289617.P309748388717971582

namespace A289617

/-- `A005187(A048675(A293442(n+1)))` -/
def P309748388717971582.Spec : Prop :=
  ∀ n, P309748388717971582.a n = A289617 (n + 1)

end A289617

/-!
# A289618: a(n) = A289617(n) - A046645(n) = A005187(A001222(n)) - A046645(n).

The programs for A289618, the canonical program `A289618.P14878026680756617388` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289618 has offset 1).

The definition of A289618 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A289617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289618.P14878026680756617388

`A289617(n+1)-A046645(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289618

/-- `A289617(n+1)-A046645(n+1)` -/
def P14878026680756617388.Spec : Prop :=
  ∀ n, P14878026680756617388.a n = A289618 (n + 1)

theorem P14878026680756617388.correct : P14878026680756617388.Spec := by
  intro n
  simp only [A289618, Nat.add_sub_cancel]

end A289618

/-! ## A289618.P17038476104047960241

`A005187(A001222(n+1))-A046645(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289618.P17038476104047960241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A001222 (n + 1)).toNat - A046645 (n + 1)

end

end A289618.P17038476104047960241

namespace A289618

/-- `A005187(A001222(n+1))-A046645(n+1)` -/
def P17038476104047960241.Spec : Prop :=
  ∀ n, P17038476104047960241.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P5897685790618825592

`val(∑{e}[n+1, #]!/∏{e}[n+1, #!], 2)`
-/

namespace A289618.P5897685790618825592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat 2

end

end A289618.P5897685790618825592

namespace A289618

/-- `val(∑{e}[n+1, #]!/∏{e}[n+1, #!], 2)` -/
def P5897685790618825592.Spec : Prop :=
  ∀ n, (P5897685790618825592.a n : ℤ) = A289618 (n + 1)

end A289618

/-! ## A289618.P14446883949685577196

`val(A008480(n+1), 2)`
-/

namespace A289618.P14446883949685577196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008480 (n + 1)).toNat 2

end

end A289618.P14446883949685577196

namespace A289618

/-- `val(A008480(n+1), 2)` -/
def P14446883949685577196.Spec : Prop :=
  ∀ n, (P14446883949685577196.a n : ℤ) = A289618 (n + 1)

end A289618

/-! ## A289618.P16030576978116391176

`val(A168324(ceil(sqrt(n²+4))), 2)`
-/

namespace A289618.P16030576978116391176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A168324 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat).toNat 2

end

end A289618.P16030576978116391176

namespace A289618

/-- `val(A168324(ceil(sqrt(n²+4))), 2)` -/
def P16030576978116391176.Spec : Prop :=
  ∀ n, (P16030576978116391176.a n : ℤ) = A289618 (n + 1)

end A289618

/-! ## A289618.P9444244940148883521

`A007814(A008480(n+1))`
-/

namespace A289618.P9444244940148883521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008480 (n + 1)).toNat

end

end A289618.P9444244940148883521

namespace A289618

/-- `A007814(A008480(n+1))` -/
def P9444244940148883521.Spec : Prop :=
  ∀ n, P9444244940148883521.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P16074135875736037697

`A064547(n+1)-A000120(A001222(n+1))`
-/

namespace A289618.P16074135875736037697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A000120 (A001222 (n + 1)).toNat

end

end A289618.P16074135875736037697

namespace A289618

/-- `A064547(n+1)-A000120(A001222(n+1))` -/
def P16074135875736037697.Spec : Prop :=
  ∀ n, P16074135875736037697.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P5050929557998697346

`A046645(A061142(n+1))-A046645(n+1)`
-/

namespace A289618.P5050929557998697346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A061142 (n + 1)).toNat - A046645 (n + 1)

end

end A289618.P5050929557998697346

namespace A289618

/-- `A046645(A061142(n+1))-A046645(n+1)` -/
def P5050929557998697346.Spec : Prop :=
  ∀ n, P5050929557998697346.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P1026086383558568101

`A046645(A068794(n+1))-A046645(n+1)`
-/

namespace A289618.P1026086383558568101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A068794 (n + 1)).toNat - A046645 (n + 1)

end

end A289618.P1026086383558568101

namespace A289618

/-- `A046645(A068794(n+1))-A046645(n+1)` -/
def P1026086383558568101.Spec : Prop :=
  ∀ n, P1026086383558568101.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P6358023476426889731

`A001222(gcd(A008480(n+1), A318307(n+1)))`
-/

namespace A289618.P6358023476426889731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A008480 (n + 1)) (A318307 (n + 1)))

end

end A289618.P6358023476426889731

namespace A289618

/-- `A001222(gcd(A008480(n+1), A318307(n+1)))` -/
def P6358023476426889731.Spec : Prop :=
  ∀ n, P6358023476426889731.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P12298565008229104785

`A257090(A061142(n+1))-A257090(n+1)`
-/

namespace A289618.P12298565008229104785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257090 (A061142 (n + 1)).toNat - A257090 (n + 1)

end

end A289618.P12298565008229104785

namespace A289618

/-- `A257090(A061142(n+1))-A257090(n+1)` -/
def P12298565008229104785.Spec : Prop :=
  ∀ n, P12298565008229104785.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P1422638621792149977

`A289617(n+1)-A007814(A046644(n+1))`
-/

namespace A289618.P1422638621792149977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289617 (n + 1) - A007814 (A046644 (n + 1)).toNat

end

end A289618.P1422638621792149977

namespace A289618

/-- `A289617(n+1)-A007814(A046644(n+1))` -/
def P1422638621792149977.Spec : Prop :=
  ∀ n, P1422638621792149977.a n = A289618 (n + 1)

end A289618

/-! ## A289618.P13222779677520459096

`val(A168324(n+1)+2-A020639(A025487(n+1)), 2)`
-/

namespace A289618.P13222779677520459096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A168324 (n + 1) + 2 - A020639 (A025487 (n + 1)).toNat).toNat 2

end

end A289618.P13222779677520459096

namespace A289618

/-- `val(A168324(n+1)+2-A020639(A025487(n+1)), 2)` -/
def P13222779677520459096.Spec : Prop :=
  ∀ n, (P13222779677520459096.a n : ℤ) = A289618 (n + 1)

end A289618

/-!
# A289619: Positions of ones in A289618.

The programs for A289619, the canonical program `A289619.P12021313668545143991` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289619 has offset 1).

The definition of A289619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4940 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289619.P12046448781967962549

`eq[1, A289618(n+1)]+1`
-/

namespace A289619.P12046448781967962549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289619.P12046448781967962549

namespace A289619

/-- `eq[1, A289618(n+1)]+1` -/
def P12046448781967962549.Spec : Prop :=
  ∀ n, (P12046448781967962549.a n : ℤ) = A289619 (n + 1)

end A289619

/-! ## A289619.P10075734977671397049

`eq[n, n-a(A289618(n))]` with `a(0)=1`
-/

namespace A289619.P10075734977671397049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A289618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289619.P10075734977671397049

namespace A289619

/-- `eq[n, n-a(A289618(n))]` -/
def P10075734977671397049.Spec : Prop :=
  ∀ n, (P10075734977671397049.a n : ℤ) = A289619 (n + 1)

end A289619

/-! ## A289619.P11549770439219176360

`eq[2, A008480(n+1)%4]+1`
-/

namespace A289619.P11549770439219176360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289619.P11549770439219176360

namespace A289619

/-- `eq[2, A008480(n+1)%4]+1` -/
def P11549770439219176360.Spec : Prop :=
  ∀ n, (P11549770439219176360.a n : ℤ) = A289619 (n + 1)

end A289619

/-! ## A289619.P2026917199816883202

`eq[2, and(3, A008480(n+2))]+2`
-/

namespace A289619.P2026917199816883202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A008480 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A289619.P2026917199816883202

namespace A289619

/-- `eq[2, and(3, A008480(n+2))]+2` -/
def P2026917199816883202.Spec : Prop :=
  ∀ n, (P2026917199816883202.a n : ℤ) = A289619 (n + 1)

end A289619

/-! ## A289619.P12021313668545143991

`eq[2, A010873(A135323(n+1)/(n+1))]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A289619

/-- `eq[2, A010873(A135323(n+1)/(n+1))]+1` -/
def P12021313668545143991.Spec : Prop :=
  ∀ n, (P12021313668545143991.a n : ℤ) = A289619 (n + 1)

theorem P12021313668545143991.correct : P12021313668545143991.Spec := by
  intro n
  simp only [A289619, Nat.add_sub_cancel]

end A289619

/-!
# A289621: Compound filter (omega & bigomega): a(1) = 0, for n > 1, a(n) = P(A001221(n), A001222(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A289621, there is no canonical definition to state claims against.
-/

/-! ## A289621.P5051707362681284732

`A224458(A110654(∏{e}[n+1, 3*2^#]))`
-/

namespace A289621.P5051707362681284732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (A110654 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p)).toNat

end

end A289621.P5051707362681284732

/-! ## A289621.P4707193174628737913

`A224458(abs(A001057(∏{e}[n+1, 3*2^#])))`
-/

namespace A289621.P4707193174628737913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 |A001057 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p)|.toNat

end

end A289621.P4707193174628737913

/-! ## A289621.P9444891533852625451

`A018892(∏{d}[n+1, #]/(n+1))%∏{e}[n+1, 2*#+1]`
-/

namespace A289621.P9444891533852625451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018892 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat) ((∏ p ∈ Nat.primeFactors (f2 n), (2 * Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A289621.P9444891533852625451

/-! ## A289621.P2749703896423944490

`A001222(A098311(A181819(n+1))!)`
-/

namespace A289621.P2749703896423944490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A098311 (A181819 (n + 1)).toNat).toNat)

end

end A289621.P2749703896423944490

/-! ## A289621.P4345309317185824196

`A378603(n+1)-A057077(A001638(n))`
-/

namespace A289621.P4345309317185824196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378603 (n + 1) - A057077 (A001638 n).toNat

end

end A289621.P4345309317185824196

/-!
# A289622: Compound filter (prime signature & Carmichael's lambda): a(n) = P(A046523(n), A002322(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A289622, there is no canonical definition to state claims against.
-/

/-! ## A289622.P7272210022006023439

`1/2*(2+(A046523(n+1)+A002322(n+1))²-A046523(n+1)-3*A002322(n+1))`
-/

namespace A289622.P7272210022006023439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A002322 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A002322 (n + 1) : ℚ)

end

end A289622.P7272210022006023439

/-!
# A289623: a(n) = A055396(A048673(n)).

The programs for A289623, there is no canonical definition to state claims against.
-/

/-! ## A289623.P15966715226080582258

`A055396(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289623.P15966715226080582258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A048673 (n + 1)).toNat

end

end A289623.P15966715226080582258

/-! ## A289623.P17379775299236765742

`A055396(A249810(2*(n+1)))`
-/

namespace A289623.P17379775299236765742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A249810 (2 * (n + 1))).toNat

end

end A289623.P17379775299236765742

/-! ## A289623.P17007962231828869050

`A055396(A283464(2*(n+1)))`
-/

namespace A289623.P17007962231828869050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A283464 (2 * (n + 1))).toNat

end

end A289623.P17007962231828869050

/-! ## A289623.P1824813162960416734

`A055396(A243501(n+1)/2)`
-/

namespace A289623.P1824813162960416734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A289623.P1824813162960416734

/-! ## A289623.P4325066980584981219

`A055396(A253885(n)/2+1)`
-/

namespace A289623.P4325066980584981219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A289623.P4325066980584981219

/-! ## A289623.P11590758706001297638

`A055396((A003961(n+1)+1)/2)`
-/

namespace A289623.P11590758706001297638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A289623.P11590758706001297638

/-! ## A289623.P4494996263425887003

`A286471(A243501(n+1))`
-/

namespace A289623.P4494996263425887003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (A243501 (n + 1)).toNat

end

end A289623.P4494996263425887003

/-! ## A289623.P7325903865984124067

`A286471(2*A048673(n+1))`
-/

namespace A289623.P7325903865984124067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A048673 (n + 1)).toNat

end

end A289623.P7325903865984124067

/-! ## A289623.P559933467410758731

`A055396(A266646(2*(n+1))/2)`
-/

namespace A289623.P559933467410758731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A266646 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A289623.P559933467410758731

/-! ## A289623.P5779110127236650495

`A055396(A003602(A003961(n+1)))`
-/

namespace A289623.P5779110127236650495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A289623.P5779110127236650495

/-! ## A289623.P16578552882440101838

`A055396(A078898(A003961(2*(n+1))))`
-/

namespace A289623.P16578552882440101838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A078898 (A003961 (2 * (n + 1))).toNat).toNat

end

end A289623.P16578552882440101838

/-!
# A289624: a(n) = A002322(n)/A007947(A034380(n)).

The programs for A289624, there is no canonical definition to state claims against.
-/

/-! ## A289624.P12519519782276984538

`A002322(n+1)/A007947(A034380(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289624.P12519519782276984538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A007947 (A034380 (n + 1)).toNat : ℚ)

end

end A289624.P12519519782276984538

/-! ## A289624.P7658673025595791080

`A002322(n+1)/A007947(A000010(n+1)/A002322(n+1))`
-/

namespace A289624.P7658673025595791080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat : ℚ)

end

end A289624.P7658673025595791080

/-! ## A289624.P597792844599396750

`A000010(n+1)/A064549(A034380(n+1))`
-/

namespace A289624.P597792844599396750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A064549 (A034380 (n + 1)).toNat : ℚ)

end

end A289624.P597792844599396750

/-! ## A289624.P9893573406273163885

`(1-A277127(n+1)+n)/A007947(A034380(n+1))`
-/

namespace A289624.P9893573406273163885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A277127 (n + 1) + (n : ℤ) : ℚ) / (A007947 (A034380 (n + 1)).toNat : ℚ)

end

end A289624.P9893573406273163885

/-! ## A289624.P817057424437124167

`A002322(n+1)/gcd(A034380(n+1), A080400(n+1))`
-/

namespace A289624.P817057424437124167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (Int.gcd (A034380 (n + 1)) (A080400 (n + 1)) : ℚ)

end

end A289624.P817057424437124167

/-! ## A289624.P11031299866436243914

`(A134198(n+1)-A051903(n+1))/A007947(A034380(n+1))`
-/

namespace A289624.P11031299866436243914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134198 (n + 1) - A051903 (n + 1) : ℚ) / (A007947 (A034380 (n + 1)).toNat : ℚ)

end

end A289624.P11031299866436243914

/-!
# A289625: a(n) = prime factorization encoding of the structure of the multiplicative group of integers modulo n.

The programs for A289625, there is no canonical definition to state claims against.
-/

/-! ## A289625.P3287406687268979353

`A061283(A321351(3*(n+1))+A289626(n+1))`
-/

namespace A289625.P3287406687268979353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061283 (A321351 (3 * (n + 1)) + A289626 (n + 1)).toNat

end

end A289625.P3287406687268979353

/-! ## A289625.P4258422092745112621

`A061283(A290076(n)+A146888(2*(n+1)))`
-/

namespace A289625.P4258422092745112621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061283 (A290076 n + A146888 (2 * (n + 1))).toNat

end

end A289625.P4258422092745112621

/-! ## A289625.P17710499031276165445

`A086375(A005578(n))²`
-/

namespace A289625.P17710499031276165445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086375 (A005578 n).toNat ^ 2

end

end A289625.P17710499031276165445

/-! ## A289625.P7752379270995568229

`A038702(A339782(n+1))`
-/

namespace A289625.P7752379270995568229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038702 (A339782 (n + 1)).toNat

end

end A289625.P7752379270995568229

/-! ## A289625.P5245158763218880268

`A000005(A325382(n!))²`
-/

namespace A289625.P5245158763218880268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A325382 (Nat.factorial n)).toNat ^ 2

end

end A289625.P5245158763218880268

/-!
# A289626: Restricted growth sequence transform of A289625, related to the structure of multiplicative group of integers modulo n.

The programs for A289626, there is no canonical definition to state claims against.
-/

/-! ## A289626.P3468343532539647784

`A002260(A289628(n+1))`
-/

namespace A289626.P3468343532539647784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A289628 (n + 1)).toNat

end

end A289626.P3468343532539647784

/-! ## A289626.P11616806301321902971

`A144328(A289628(n+1)+1)`
-/

namespace A289626.P11616806301321902971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A289628 (n + 1) + 1).toNat

end

end A289626.P11616806301321902971

/-! ## A289626.P4239848951114484308

`A193738(A289628(n+1)-1)`
-/

namespace A289626.P4239848951114484308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (A289628 (n + 1) - 1).toNat

end

end A289626.P4239848951114484308

/-! ## A289626.P6981824801835083257

`A002262(A289628(n+1)-1)+1`
-/

namespace A289626.P6981824801835083257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A289628 (n + 1) - 1).toNat + 1

end

end A289626.P6981824801835083257

/-! ## A289626.P11295640344549776229

`A002262(A289628(n+1)+A000007(n))`
-/

namespace A289626.P11295640344549776229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A289628 (n + 1) + A000007 n).toNat

end

end A289626.P11295640344549776229

/-! ## A289626.P4728882826930282780

`A003991(A289628(n+1))/A101296(n+1)`
-/

namespace A289626.P4728882826930282780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A289628 (n + 1)).toNat : ℚ) / (A101296 (n + 1) : ℚ)

end

end A289626.P4728882826930282780

/-! ## A289626.P18271795238375229721

`A003991(A289628(n+1))/(A320110(2*(n+1))-1)`
-/

namespace A289626.P18271795238375229721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A289628 (n + 1)).toNat : ℚ) / (A320110 (2 * (n + 1)) - 1 : ℚ)

end

end A289626.P18271795238375229721

/-! ## A289626.P8710372719443401183

`A003991(A289628(n+1)+A101296(n+1))-A101296(n+1)`
-/

namespace A289626.P8710372719443401183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A289628 (n + 1) + A101296 (n + 1)).toNat - A101296 (n + 1)

end

end A289626.P8710372719443401183

/-!
# A289627: a(n) = Sum_{d|n} mu(phi(d))*n/d.

The programs for A289627, the canonical program `A289627.P718813259004262468` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289627 has offset 1).

The definition of A289627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289627.P718813259004262468

`∑{d}[n+1, A008683(A000010(#))*(n+1)/#]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A289627

/-- `∑{d}[n+1, A008683(A000010(#))*(n+1)/#]` -/
def P718813259004262468.Spec : Prop :=
  ∀ n, P718813259004262468.a n = (A289627 (n + 1) : ℚ)

end A289627

/-! ## A289627.P11844618084417932984

`∑{d}[n+1, #*A343910((n+1)/#)]`
-/

namespace A289627.P11844618084417932984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A343910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A289627.P11844618084417932984

namespace A289627

/-- `∑{d}[n+1, #*A343910((n+1)/#)]` -/
def P11844618084417932984.Spec : Prop :=
  ∀ n, P11844618084417932984.a n = A289627 (n + 1)

end A289627

/-!
# A289628: Compound filter (for the structure of the multiplicative group of integers modulo n & prime signature of n): a(n) = P(A289626(n), A101296(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A289628, there is no canonical definition to state claims against.
-/

/-! ## A289628.P3703808727901662817

`1/2*(2+(A289626(n+1)+A101296(n+1))²-A289626(n+1)-3*A101296(n+1))`
-/

namespace A289628.P3703808727901662817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A289626 (n + 1) + A101296 (n + 1)) ^ 2 - A289626 (n + 1) - 3 * A101296 (n + 1) : ℚ)

end

end A289628.P3703808727901662817

/-!
# A289630: Number of modulo n residues among sums of two sixth powers.

The programs for A289630, there is no canonical definition to state claims against.
-/

/-! ## A289630.P212042771128980409

`A046530(A187829(n+1)+A104488(n+1))`
-/

namespace A289630.P212042771128980409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A187829 (n + 1) + A104488 (n + 1)).toNat

end

end A289630.P212042771128980409

/-! ## A289630.P14257041024814605301

`A085312(A187829(n+1)+A104488(n+1))`
-/

namespace A289630.P14257041024814605301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085312 (A187829 (n + 1) + A104488 (n + 1)).toNat

end

end A289630.P14257041024814605301

/-! ## A289630.P457646847823318637

`A046530(n+1)-A000122(A128369(n+1))`
-/

namespace A289630.P457646847823318637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A000122 (A128369 (n + 1)).toNat

end

end A289630.P457646847823318637

/-! ## A289630.P8915053458150852371

`A046530(n+1)-A003131(A147129(n+1))`
-/

namespace A289630.P8915053458150852371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A003131 ((A147129 (n + 1)).toNat + 54)

end

end A289630.P8915053458150852371

/-! ## A289630.P11738857684937996759

`A085312(n+1)-A000122(A128369(n+1))`
-/

namespace A289630.P11738857684937996759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085312 (n + 1) - A000122 (A128369 (n + 1)).toNat

end

end A289630.P11738857684937996759

/-!
# A289631: Prime powers P for which the number of modulo P residues among sums of two sixth powers is less than P.

The programs for A289631, there is no canonical definition to state claims against.
-/

/-! ## A289631.P8374348112025911189

`A155900(A155939(n+4)%A155903(3*n+1))`
-/

namespace A289631.P8374348112025911189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155900 (Int.tmod (A155939 (n + 4)) (A155903 (3 * n + 1))).toNat

end

end A289631.P8374348112025911189

/-! ## A289631.P994523721147301606

`A155900(A155939(n+4))%A155948(3*n+2)`
-/

namespace A289631.P994523721147301606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155900 (A155939 (n + 4)).toNat) (A155948 (3 * n + 2))

end

end A289631.P994523721147301606

/-! ## A289631.P7464234676168910847

`lt[A226535(A249576(n)), A033716(n)]`
-/

namespace A289631.P7464234676168910847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 (A249576 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289631.P7464234676168910847

/-! ## A289631.P11015601078074841128

`A117167(A232543(n+1))+A087370(n+3)`
-/

namespace A289631.P11015601078074841128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117167 (A232543 (n + 1)).toNat + A087370 (n + 3)

end

end A289631.P11015601078074841128

/-! ## A289631.P13525031379743606690

`A333764(2*(n+2))-A106490(A135588(n))`
-/

namespace A289631.P13525031379743606690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (2 * (n + 2)) - A106490 (A135588 n).toNat

end

end A289631.P13525031379743606690

/-!
# A289632: Triangle read by rows: T(n-1,k), where n >= 2 and 1 <= k <= floor(n/2), is the number of permutations of (1, 2, ..., n) having k consecutive pairs but no consecutive sequences of length greater than 2.

The programs for A289632, there is no canonical definition to state claims against.
-/

/-! ## A289632.P18254283947384891779

`A180185(comp[floor((n/2)²)])`
-/

namespace A289632.P18254283947384891779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180185 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A289632.P18254283947384891779

/-! ## A289632.P15952401655357296021

`A000166(∑{e}[A002982(n+1), A019515(#)])`
-/

namespace A289632.P15952401655357296021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A019515 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A289632.P15952401655357296021

/-! ## A289632.P2971805567215173308

`A000166(∑{e}[A002982(n+1), A100015(#)])`
-/

namespace A289632.P2971805567215173308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A100015 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A289632.P2971805567215173308

/-!
# A289633: a(n) = 6 * Sum_{d|n} d * A110163(d).

The programs for A289633, there is no canonical definition to state claims against.
-/

/-! ## A289633.P3192885516097271114

`3*A289638(n+1)`
-/

namespace A289633.P3192885516097271114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A289638 (n + 1)

end

end A289633.P3192885516097271114

/-! ## A289633.P9893302245334982738

`6*A289636(n+1)`
-/

namespace A289633.P9893302245334982738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A289636 (n + 1)

end

end A289633.P9893302245334982738

/-!
# A289634: Primes of the form k!3-3, where k!3 is the triple factorial number (A007661).

The programs for A289634, there is no canonical definition to state claims against.
-/

/-! ## A289634.P17596182195387897955

`A007661(A242994(n+1))-3`
-/

namespace A289634.P17596182195387897955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (A242994 (n + 1)).toNat - 3

end

end A289634.P17596182195387897955

/-!
# A289635: Coefficients in expansion of -q*E'_2/E_2 where E_2 is the Eisenstein Series (A006352).

The programs for A289635, there is no canonical definition to state claims against.
-/

/-! ## A289635.P15470318275119992245

`A288877(n+1)/12+2*A000203(n+1)`
-/

namespace A289635.P15470318275119992245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288877 (n + 1) : ℚ) / 12 + (2 * A000203 (n + 1) : ℚ)

end

end A289635.P15470318275119992245

/-!
# A289636: Coefficients in expansion of -q*E'_4/E_4 where E_4 is the Eisenstein Series (A004009).

The programs for A289636, there is no canonical definition to state claims against.
-/

/-! ## A289636.P12961345449974681385

`A289633(n+1)/6`
-/

namespace A289636.P12961345449974681385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289633 (n + 1) : ℚ) / 6

end

end A289636.P12961345449974681385

/-! ## A289636.P15571944978798536093

`A289638(n+1)/2`
-/

namespace A289636.P15571944978798536093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289638 (n + 1) : ℚ) / 2

end

end A289636.P15571944978798536093

/-! ## A289636.P8722673748578817437

`8*A300147(n+1)`
-/

namespace A289636.P8722673748578817437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A300147 (n + 1)

end

end A289636.P8722673748578817437

/-! ## A289636.P9879441969426200297

`A289639(n+1)-A289637(n+1)`
-/

namespace A289636.P9879441969426200297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289639 (n + 1) - A289637 (n + 1)

end

end A289636.P9879441969426200297

/-! ## A289636.P5595479305573441157

`A289640(n+1)-A289639(n+1)`
-/

namespace A289636.P5595479305573441157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289640 (n + 1) - A289639 (n + 1)

end

end A289636.P5595479305573441157

/-!
# A289637: Coefficients in expansion of -q*E'_6/E_6 where E_6 is the Eisenstein Series (A013973).

The programs for A289637, there is no canonical definition to state claims against.
-/

/-! ## A289637.P2351872773878541866

`A288840(n+1)/2+12*A000203(n+1)`
-/

namespace A289637.P2351872773878541866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288840 (n + 1) : ℚ) / 2 + (12 * A000203 (n + 1) : ℚ)

end

end A289637.P2351872773878541866

/-! ## A289637.P1113462130582100651

`A289639(n+1)-A289636(n+1)`
-/

namespace A289637.P1113462130582100651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289639 (n + 1) - A289636 (n + 1)

end

end A289637.P1113462130582100651

/-! ## A289637.P2184404174266529003

`A289640(n+1)-A289638(n+1)`
-/

namespace A289637.P2184404174266529003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289640 (n + 1) - A289638 (n + 1)

end

end A289637.P2184404174266529003

/-! ## A289637.P12519808304922494251

`A289640(n+1)-2*A289636(n+1)`
-/

namespace A289637.P12519808304922494251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289640 (n + 1) - 2 * A289636 (n + 1)

end

end A289637.P12519808304922494251

/-! ## A289637.P2830180547526503058

`12*A299503(n+1)`
-/

namespace A289637.P2830180547526503058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A299503 (n + 1)

end

end A289637.P2830180547526503058

/-!
# A289638: Coefficients in expansion of -q*E'_8/E_8 where E_8 is the Eisenstein Series (A008410).

The programs for A289638, there is no canonical definition to state claims against.
-/

/-! ## A289638.P16624745586430951507

`2*A288261(n+1)/3+16*A000203(n+1)`
-/

namespace A289638.P16624745586430951507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A288261 (n + 1) : ℚ) / 3 + (16 * A000203 (n + 1) : ℚ)

end

end A289638.P16624745586430951507

/-! ## A289638.P7702893083768471587

`2*A289636(n+1)`
-/

namespace A289638.P7702893083768471587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289636 (n + 1)

end

end A289638.P7702893083768471587

/-! ## A289638.P14057806059002681966

`16*A300147(n+1)`
-/

namespace A289638.P14057806059002681966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A300147 (n + 1)

end

end A289638.P14057806059002681966

/-! ## A289638.P14689976475057047605

`A289633(n+1)/3`
-/

namespace A289638.P14689976475057047605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289633 (n + 1) : ℚ) / 3

end

end A289638.P14689976475057047605

/-! ## A289638.P7342380053151705960

`A289640(n+1)-A289637(n+1)`
-/

namespace A289638.P7342380053151705960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289640 (n + 1) - A289637 (n + 1)

end

end A289638.P7342380053151705960

/-!
# A289639: Coefficients in expansion of -q*E'_10/E_10 where E_10 is the Eisenstein Series (A013974).

The programs for A289639, there is no canonical definition to state claims against.
-/

/-! ## A289639.P11556491533172624632

`A288261(n+1)/3+A288840(n+1)/2+20*A000203(n+1)`
-/

namespace A289639.P11556491533172624632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288261 (n + 1) : ℚ) / 3 + (A288840 (n + 1) : ℚ) / 2 + (20 * A000203 (n + 1) : ℚ)

end

end A289639.P11556491533172624632

/-! ## A289639.P1933841882727944656

`A289637(n+1)+A289636(n+1)`
-/

namespace A289639.P1933841882727944656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289637 (n + 1) + A289636 (n + 1)

end

end A289639.P1933841882727944656

/-! ## A289639.P2049792052511858080

`A289640(n+1)-A289636(n+1)`
-/

namespace A289639.P2049792052511858080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289640 (n + 1) - A289636 (n + 1)

end

end A289639.P2049792052511858080

/-! ## A289639.P14059862640185001542

`A289637(n+1)+A289638(n+1)/2`
-/

namespace A289639.P14059862640185001542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289637 (n + 1) : ℚ) + (A289638 (n + 1) : ℚ) / 2

end

end A289639.P14059862640185001542

/-!
# A289640: Coefficients in expansion of -q*E'_14/E_14 where E_14 is the Eisenstein Series (A058550).

The programs for A289640, there is no canonical definition to state claims against.
-/

/-! ## A289640.P13825915354062303266

`2*A288261(n+1)/3+A288840(n+1)/2+28*A000203(n+1)`
-/

namespace A289640.P13825915354062303266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A288261 (n + 1) : ℚ) / 3 + (A288840 (n + 1) : ℚ) / 2 + (28 * A000203 (n + 1) : ℚ)

end

end A289640.P13825915354062303266

/-! ## A289640.P16894313131988632308

`A289638(n+1)+A289637(n+1)`
-/

namespace A289640.P16894313131988632308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289638 (n + 1) + A289637 (n + 1)

end

end A289640.P16894313131988632308

/-! ## A289640.P4185773953262014566

`A289639(n+1)+A289636(n+1)`
-/

namespace A289640.P4185773953262014566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289639 (n + 1) + A289636 (n + 1)

end

end A289640.P4185773953262014566

/-! ## A289640.P14824134343828714090

`A289637(n+1)+2*A289636(n+1)`
-/

namespace A289640.P14824134343828714090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289637 (n + 1) + 2 * A289636 (n + 1)

end

end A289640.P14824134343828714090

/-!
# A289641: a(n) = bigomega(n) - mu(n).

The programs for A289641, the canonical program `A289641.P3974398798159448761` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289641 has offset 1).

The definition of A289641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289641.P3974398798159448761

`A001222(n+1)-A008683(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A289641

/-- `A001222(n+1)-A008683(n+1)` -/
def P3974398798159448761.Spec : Prop :=
  ∀ n, P3974398798159448761.a n = A289641 (n + 1)

theorem P3974398798159448761.correct : P3974398798159448761.Spec := by
  intro n
  simp only [A289641, Nat.add_sub_cancel]

end A289641

/-! ## A289641.P1774893055379398769

`Δ[A022559(n)]-A008683(n+1)`
-/

namespace A289641.P1774893055379398769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (n + 1)

end

end A289641.P1774893055379398769

namespace A289641

/-- `Δ[A022559(n)]-A008683(n+1)` -/
def P1774893055379398769.Spec : Prop :=
  ∀ n, P1774893055379398769.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P9443989013856152793

`A073093(n+1)-A007423(n+1)`
-/

namespace A289641.P9443989013856152793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A007423 (n + 1)

end

end A289641.P9443989013856152793

namespace A289641

/-- `A073093(n+1)-A007423(n+1)` -/
def P9443989013856152793.Spec : Prop :=
  ∀ n, P9443989013856152793.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P13076588976998033701

`A064800(n+1)-A076369(n+1)`
-/

namespace A289641.P13076588976998033701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A076369 (n + 1)

end

end A289641.P13076588976998033701

namespace A289641

/-- `A064800(n+1)-A076369(n+1)` -/
def P13076588976998033701.Spec : Prop :=
  ∀ n, P13076588976998033701.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P15842423595135768081

`A080256(n+1)-A249767(n+1)`
-/

namespace A289641.P15842423595135768081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1) - A249767 (n + 1)

end

end A289641.P15842423595135768081

namespace A289641

/-- `A080256(n+1)-A249767(n+1)` -/
def P15842423595135768081.Spec : Prop :=
  ∀ n, P15842423595135768081.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P6001336351900870485

`A255201(n+1)-A249901(n+1)`
-/

namespace A289641.P6001336351900870485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A249901 (n + 1)

end

end A289641.P6001336351900870485

namespace A289641

/-- `A255201(n+1)-A249901(n+1)` -/
def P6001336351900870485.Spec : Prop :=
  ∀ n, P6001336351900870485.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P3472420165533242450

`A001222(n+1)+1-A007423(n+1)`
-/

namespace A289641.P3472420165533242450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (1 - A007423 (n + 1))

end

end A289641.P3472420165533242450

namespace A289641

/-- `A001222(n+1)+1-A007423(n+1)` -/
def P3472420165533242450.Spec : Prop :=
  ∀ n, P3472420165533242450.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P14376176857644502047

`2*A001222(n+1)-A249901(n+1)`
-/

namespace A289641.P14376176857644502047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A249901 (n + 1)

end

end A289641.P14376176857644502047

namespace A289641

/-- `2*A001222(n+1)-A249901(n+1)` -/
def P14376176857644502047.Spec : Prop :=
  ∀ n, P14376176857644502047.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P6866990055122211560

`A249901(n+1)-2*A008683(n+1)`
-/

namespace A289641.P6866990055122211560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249901 (n + 1) - 2 * A008683 (n + 1)

end

end A289641.P6866990055122211560

namespace A289641

/-- `A249901(n+1)-2*A008683(n+1)` -/
def P6866990055122211560.Spec : Prop :=
  ∀ n, P6866990055122211560.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P17447153983121687629

`A000005(A061142(n+1))-(A008683(n+1)+1)`
-/

namespace A289641.P17447153983121687629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061142 (n + 1)).toNat - (A008683 (n + 1) + 1)

end

end A289641.P17447153983121687629

namespace A289641

/-- `A000005(A061142(n+1))-(A008683(n+1)+1)` -/
def P17447153983121687629.Spec : Prop :=
  ∀ n, P17447153983121687629.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P11793938692530008656

`A022559(n+1)-(A022559(n)+A008683(n+1))`
-/

namespace A289641.P11793938692530008656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - (A022559 n + A008683 (n + 1))

end

end A289641.P11793938692530008656

namespace A289641

/-- `A022559(n+1)-(A022559(n)+A008683(n+1))` -/
def P11793938692530008656.Spec : Prop :=
  ∀ n, P11793938692530008656.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P4367429419642218217

`A001221(n+1)+A046660(n+1)-A008683(n+1)`
-/

namespace A289641.P4367429419642218217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A046660 (n + 1) - A008683 (n + 1))

end

end A289641.P4367429419642218217

namespace A289641

/-- `A001221(n+1)+A046660(n+1)-A008683(n+1)` -/
def P4367429419642218217.Spec : Prop :=
  ∀ n, P4367429419642218217.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P17176969901898091760

`A080256(n+1)-(A008683(n+1)+A001221(n+1))`
-/

namespace A289641.P17176969901898091760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1) - (A008683 (n + 1) + A001221 (n + 1))

end

end A289641.P17176969901898091760

namespace A289641

/-- `A080256(n+1)-(A008683(n+1)+A001221(n+1))` -/
def P17176969901898091760.Spec : Prop :=
  ∀ n, P17176969901898091760.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P10043354892825814402

`A001221(n+1)+A001222(n+1)-A249767(n+1)`
-/

namespace A289641.P10043354892825814402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A001222 (n + 1) - A249767 (n + 1))

end

end A289641.P10043354892825814402

namespace A289641

/-- `A001221(n+1)+A001222(n+1)-A249767(n+1)` -/
def P10043354892825814402.Spec : Prop :=
  ∀ n, P10043354892825814402.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P5716719124194638336

`A001222(n+1)-A008836(n+1)*A008966(n+1)`
-/

namespace A289641.P5716719124194638336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A008836 (n + 1) * A008966 (n + 1)

end

end A289641.P5716719124194638336

namespace A289641

/-- `A001222(n+1)-A008836(n+1)*A008966(n+1)` -/
def P5716719124194638336.Spec : Prop :=
  ∀ n, P5716719124194638336.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P9073284107614128936

`A001222(n+1)-A140664(n+1)/A014963(n+1)`
-/

namespace A289641.P9073284107614128936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) - (A140664 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A289641.P9073284107614128936

namespace A289641

/-- `A001222(n+1)-A140664(n+1)/A014963(n+1)` -/
def P9073284107614128936.Spec : Prop :=
  ∀ n, P9073284107614128936.a n = (A289641 (n + 1) : ℚ)

end A289641

/-! ## A289641.P1589743965306167238

`A001222(n+1)-A226177(n+1)/A000005(n+1)`
-/

namespace A289641.P1589743965306167238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) - (A226177 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A289641.P1589743965306167238

namespace A289641

/-- `A001222(n+1)-A226177(n+1)/A000005(n+1)` -/
def P1589743965306167238.Spec : Prop :=
  ∀ n, P1589743965306167238.a n = (A289641 (n + 1) : ℚ)

end A289641

/-! ## A289641.P9916419536206250680

`A001222(n+1)-A226177(n+1)/A061142(n+1)`
-/

namespace A289641.P9916419536206250680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) - (A226177 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A289641.P9916419536206250680

namespace A289641

/-- `A001222(n+1)-A226177(n+1)/A061142(n+1)` -/
def P9916419536206250680.Spec : Prop :=
  ∀ n, P9916419536206250680.a n = (A289641 (n + 1) : ℚ)

end A289641

/-! ## A289641.P16621351238997367637

`A001222(n+1)-A054535(A000124(n))`
-/

namespace A289641.P16621351238997367637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A054535 (A000124 n).toNat

end

end A289641.P16621351238997367637

namespace A289641

/-- `A001222(n+1)-A054535(A000124(n))` -/
def P16621351238997367637.Spec : Prop :=
  ∀ n, P16621351238997367637.a n = A289641 (n + 1)

end A289641

/-! ## A289641.P6200241931885222926

`A305716(n+1)-A080847(n+1)`
-/

namespace A289641.P6200241931885222926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305716 (n + 1) - A080847 (n + 1)

end

end A289641.P6200241931885222926

namespace A289641

/-- `A305716(n+1)-A080847(n+1)` -/
def P6200241931885222926.Spec : Prop :=
  ∀ n, P6200241931885222926.a n = A289641 (n + 1)

end A289641

/-!
# A289643: a(n) = n*(2*n+1)*binomial(n+2,n)/3.

The programs for A289643, the canonical program `A289643.P1054073898019394777` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289643 has offset 0).

The definition of A289643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289643.P8469612720585063826

`n*(2*n+1)*C(n+2, n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289643.P8469612720585063826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) * Nat.choose (n + 2) n : ℚ) / 3

end

end A289643.P8469612720585063826

namespace A289643

/-- `n*(2*n+1)*C(n+2, n)/3` -/
def P8469612720585063826.Spec : Prop :=
  ∀ n, P8469612720585063826.a n = (A289643 n : ℚ)

end A289643

/-! ## A289643.P1054073898019394777

`3*A000332(n+3)+5*A000332(n+2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A289643

/-- `3*A000332(n+3)+5*A000332(n+2)` -/
def P1054073898019394777.Spec : Prop :=
  ∀ n, P1054073898019394777.a n = A289643 n

theorem P1054073898019394777.correct : P1054073898019394777.Spec := by
  intro n
  simp only [A289643]

end A289643

/-! ## A289643.P18109385499771542581

`(n+2)*∑[n²]`
-/

namespace A289643.P18109385499771542581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289643.P18109385499771542581

namespace A289643

/-- `(n+2)*∑[n²]` -/
def P18109385499771542581.Spec : Prop :=
  ∀ n, (P18109385499771542581.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P2605096549553023955

`∑[∑[C(4*n, 2)/2]]`
-/

namespace A289643.P2605096549553023955
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P2605096549553023955

namespace A289643

/-- `∑[∑[C(4*n, 2)/2]]` -/
def P2605096549553023955.Spec : Prop :=
  ∀ n, P2605096549553023955.a n = (A289643 n : ℚ)

end A289643

/-! ## A289643.P12526085251794918850

`∑[∑[lcm(n, 1-4*n)]]`
-/

namespace A289643.P12526085251794918850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (4 * n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P12526085251794918850

namespace A289643

/-- `∑[∑[lcm(n, 1-4*n)]]` -/
def P12526085251794918850.Spec : Prop :=
  ∀ n, (P12526085251794918850.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P13121677185897341450

`abs(C(n+2, 3)*Δ[n²])`
-/

namespace A289643.P13121677185897341450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 2) 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A289643.P13121677185897341450

namespace A289643

/-- `abs(C(n+2, 3)*Δ[n²])` -/
def P13121677185897341450.Spec : Prop :=
  ∀ n, P13121677185897341450.a n = A289643 n

end A289643

/-! ## A289643.P8985304947502727289

`∑[∑[n*record[xor(3, n-1)]]]`
-/

namespace A289643.P8985304947502727289
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P8985304947502727289

namespace A289643

/-- `∑[∑[n*record[xor(3, n-1)]]]` -/
def P8985304947502727289.Spec : Prop :=
  ∀ n, P8985304947502727289.a n = A289643 n

end A289643

/-! ## A289643.P2592469120896400797

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=0, a(1)=3`
-/

namespace A289643.P2592469120896400797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P2592469120896400797

namespace A289643

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P2592469120896400797.Spec : Prop :=
  ∀ n, (P2592469120896400797.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P2185093024179205096

`∑[∑[2*C(2*n, 2)+n]]`
-/

namespace A289643.P2185093024179205096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P2185093024179205096

namespace A289643

/-- `∑[∑[2*C(2*n, 2)+n]]` -/
def P2185093024179205096.Spec : Prop :=
  ∀ n, (P2185093024179205096.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P8515316632113693243

`∑[∑[n²]+lcm(n+1, n²)]`
-/

namespace A289643.P8515316632113693243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lcm (n + 1) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P8515316632113693243

namespace A289643

/-- `∑[∑[n²]+lcm(n+1, n²)]` -/
def P8515316632113693243.Spec : Prop :=
  ∀ n, (P8515316632113693243.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P13454110918347032667

`∑[∑[∑[ogf((3x+5x^2)/(1-2x+x^2))]]]`
-/

namespace A289643.P13454110918347032667
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P13454110918347032667

namespace A289643

/-- `∑[∑[∑[ogf((3x+5x^2)/(1-2x+x^2))]]]` -/
def P13454110918347032667.Spec : Prop :=
  ∀ n, P13454110918347032667.a n = A289643 n

end A289643

/-! ## A289643.P17785857062034463908

`∑[∑[5-∑[a(n-1)-8]]]` with `a(0)=5`
-/

namespace A289643.P17785857062034463908
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f3 =>
  f3 (n - 1) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P17785857062034463908

namespace A289643

/-- `∑[∑[5-∑[a(n-1)-8]]]` -/
def P17785857062034463908.Spec : Prop :=
  ∀ n, P17785857062034463908.a n = A289643 n

end A289643

/-! ## A289643.P3853941469964505028

`∑[∑[(2*n)²-gcd(n, 2*n)]]`
-/

namespace A289643.P3853941469964505028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.gcd n (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P3853941469964505028

namespace A289643

/-- `∑[∑[(2*n)²-gcd(n, 2*n)]]` -/
def P3853941469964505028.Spec : Prop :=
  ∀ n, P3853941469964505028.a n = A289643 n

end A289643

/-! ## A289643.P6493432067768688631

`lcm(n+2, (2*n+1)*∑[∑[n]])`
-/

namespace A289643.P6493432067768688631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A289643.P6493432067768688631

namespace A289643

/-- `lcm(n+2, (2*n+1)*∑[∑[n]])` -/
def P6493432067768688631.Spec : Prop :=
  ∀ n, (P6493432067768688631.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P17290042235404619309

`C(n+2, 3)/(2*n+1)^-1`
-/

namespace A289643.P17290042235404619309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℚ) / (2 * n + 1 : ℚ) ^ (-1 : ℤ)

end

end A289643.P17290042235404619309

namespace A289643

/-- `C(n+2, 3)/(2*n+1)^-1` -/
def P17290042235404619309.Spec : Prop :=
  ∀ n, P17290042235404619309.a n = (A289643 n : ℚ)

theorem P17290042235404619309.correct : P17290042235404619309.Spec := by
  intro n
  simp only [A289643, Nat.add_sub_cancel, A289643.P17290042235404619309.a, A289643.P1054073898019394777.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A289643

/-! ## A289643.P1776087826942262699

`sqrt((2*n+1)²*C(n+2, 3)²)`
-/

namespace A289643.P1776087826942262699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * n + 1) ^ 2 * Nat.choose (n + 2) 3 ^ 2 : ℝ)

end

end A289643.P1776087826942262699

namespace A289643

/-- `sqrt((2*n+1)²*C(n+2, 3)²)` -/
def P1776087826942262699.Spec : Prop :=
  ∀ n, P1776087826942262699.a n = (A289643 n : ℝ)

end A289643

/-! ## A289643.P9663666804604935800

`-((2*n+1)*Δ[-C(n+2, 4)])`
-/

namespace A289643.P9663666804604935800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 2) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * (f1 (n + 1) - f1 n))

end

end A289643.P9663666804604935800

namespace A289643

/-- `-((2*n+1)*Δ[-C(n+2, 4)])` -/
def P9663666804604935800.Spec : Prop :=
  ∀ n, P9663666804604935800.a n = A289643 n

theorem P9663666804604935800.correct : P9663666804604935800.Spec := by
  intro n
  simp only [A289643, Nat.add_sub_cancel, A289643.P9663666804604935800.f1, A289643.P9663666804604935800.a, A289643.P1054073898019394777.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A289643

/-! ## A289643.P13755609898165011337

`and(1, 2*n)+(2*n+1)*∑[∑[n]]`
-/

namespace A289643.P13755609898165011337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289643.P13755609898165011337

namespace A289643

/-- `and(1, 2*n)+(2*n+1)*∑[∑[n]]` -/
def P13755609898165011337.Spec : Prop :=
  ∀ n, (P13755609898165011337.a n : ℤ) = A289643 n

end A289643

/-! ## A289643.P10791308350850255424

`(2*n+1)*∑[∑[n]]/gcd(2, 2*n+1)`
-/

namespace A289643.P10791308350850255424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.gcd 2 (2 * n + 1) : ℚ)

end

end A289643.P10791308350850255424

namespace A289643

/-- `(2*n+1)*∑[∑[n]]/gcd(2, 2*n+1)` -/
def P10791308350850255424.Spec : Prop :=
  ∀ n, P10791308350850255424.a n = (A289643 n : ℚ)

end A289643

/-! ## A289643.P5814463105838586062

`∑[A132124(n)]`
-/

namespace A289643.P5814463105838586062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289643.P5814463105838586062

namespace A289643

/-- `∑[A132124(n)]` -/
def P5814463105838586062.Spec : Prop :=
  ∀ n, P5814463105838586062.a n = A289643 n

end A289643

/-!
# A289644: Number of n X n 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289644, there is no canonical definition to state claims against.
-/

/-! ## A289644.P5325735670006303652

`A289651(∑[4*n]+1)`
-/

namespace A289644.P5325735670006303652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A289644.P5325735670006303652

/-! ## A289644.P5309323620864361092

`record[char[2*(n²+n)]*A289651(n+1)]`
-/

namespace A289644.P5309323620864361092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A289651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289644.P5309323620864361092

/-! ## A289644.P7670682639187262274

`A007318(and(1, -n))*A289651(A001844(n))`
-/

namespace A289644.P7670682639187262274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A289651 (A001844 n).toNat

end

end A289644.P7670682639187262274

/-! ## A289644.P17259688232282074609

`(A000041(n)%2)!*A289651(A001844(n))`
-/

namespace A289644.P17259688232282074609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A289651 (A001844 n).toNat

end

end A289644.P17259688232282074609

/-! ## A289644.P12979952292890517228

`A014963(4*n+2)*A289651(A001844(n))`
-/

namespace A289644.P12979952292890517228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A289651 (A001844 n).toNat

end

end A289644.P12979952292890517228

/-!
# A289645: Number of n X 2 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289645, there is no canonical definition to state claims against.
-/

/-! ## A289645.P6776009921887737820

`A289651(∑[n+1]+2)`
-/

namespace A289645.P6776009921887737820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A289645.P6776009921887737820

/-! ## A289645.P847085208661979661

`record[A289651(n+1)/A260876(n)]`
-/

namespace A289645.P847085208661979661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289651 (n + 1) : ℚ) / (A260876 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289645.P847085208661979661

/-! ## A289645.P9998441088397718526

`record[A289651(n+1)%A094527(n)]`
-/

namespace A289645.P9998441088397718526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289651 (n + 1)) (A094527 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289645.P9998441088397718526

/-! ## A289645.P3628397179956627876

`record[gcd(A263764(n+1), A289651(n+1))]`
-/

namespace A289645.P3628397179956627876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263764 (n + 1)) (A289651 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289645.P3628397179956627876

/-! ## A289645.P11629078961930713386

`record[lcm(A167374(n), A289651(n+1))]`
-/

namespace A289645.P11629078961930713386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 n) (A289651 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289645.P11629078961930713386

/-!
# A289646: Number of n X 3 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289646, there is no canonical definition to state claims against.
-/

/-! ## A289646.P14704494796066171172

`A289651(∑[n+2]+4)`
-/

namespace A289646.P14704494796066171172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A289646.P14704494796066171172

/-! ## A289646.P16959251118721561682

`A054977(n)*A289651(A167614(n+1))`
-/

namespace A289646.P16959251118721561682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A289651 (A167614 (n + 1)).toNat

end

end A289646.P16959251118721561682

/-! ## A289646.P10005708507642685232

`A057427(n)*A289651(A167614(n+1))`
-/

namespace A289646.P10005708507642685232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A289651 (A167614 (n + 1)).toNat

end

end A289646.P10005708507642685232

/-! ## A289646.P17758212797113748235

`lcm(A020985(n), A289651(A167614(n+1)))`
-/

namespace A289646.P17758212797113748235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A289651 (A167614 (n + 1)).toNat)

end

end A289646.P17758212797113748235

/-! ## A289646.P9297734454993651608

`A289651(A167614(n+1))%A231540(n+1)`
-/

namespace A289646.P9297734454993651608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289651 (A167614 (n + 1)).toNat) (A231540 (n + 1))

end

end A289646.P9297734454993651608

/-!
# A289647: Number of n X 4 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289647, there is no canonical definition to state claims against.
-/

/-! ## A289647.P9238970615844228626

`A289651(A374004(n+1))`
-/

namespace A289647.P9238970615844228626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A374004 (n + 1)).toNat

end

end A289647.P9238970615844228626

/-! ## A289647.P8726807856682920734

`A289651(A145018(n+4))`
-/

namespace A289647.P8726807856682920734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A145018 (n + 4)).toNat

end

end A289647.P8726807856682920734

/-! ## A289647.P15480947153931423575

`A289651(A141214(n)+7)`
-/

namespace A289647.P15480947153931423575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A141214 n + 7).toNat

end

end A289647.P15480947153931423575

/-! ## A289647.P5739571696957836774

`A289651(A055999(n)+10)`
-/

namespace A289647.P5739571696957836774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A055999 n + 10).toNat

end

end A289647.P5739571696957836774

/-! ## A289647.P8278360942884444927

`A289651(A167614(n+2)+1)`
-/

namespace A289647.P8278360942884444927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A167614 (n + 2) + 1).toNat

end

end A289647.P8278360942884444927

/-!
# A289648: Number of n X 5 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289648, there is no canonical definition to state claims against.
-/

/-! ## A289648.P8925674038214552052

`A289651(A374005(n+1))`
-/

namespace A289648.P8925674038214552052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A374005 (n + 1)).toNat

end

end A289648.P8925674038214552052

/-! ## A289648.P11758403749646225735

`A289651(A167499(n+3))`
-/

namespace A289648.P11758403749646225735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A167499 (n + 3)).toNat

end

end A289648.P11758403749646225735

/-! ## A289648.P14946267058486178964

`A289651(A056000(n)+15)`
-/

namespace A289648.P14946267058486178964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A056000 n + 15).toNat

end

end A289648.P14946267058486178964

/-! ## A289648.P4529519572134287881

`A289651(A141214(n+1)+8)`
-/

namespace A289648.P4529519572134287881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A141214 (n + 1) + 8).toNat

end

end A289648.P4529519572134287881

/-! ## A289648.P17683896580596731838

`A289651(∑[n+5]+6)`
-/

namespace A289648.P17683896580596731838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A289648.P17683896580596731838

/-!
# A289649: Number of n X 6 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289649, there is no canonical definition to state claims against.
-/

/-! ## A289649.P7508179735779345559

`A289651(A374007(n+1))`
-/

namespace A289649.P7508179735779345559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A374007 (n + 1)).toNat

end

end A289649.P7508179735779345559

/-! ## A289649.P11441365838280308

`A289651(A056115(n)+21)`
-/

namespace A289649.P11441365838280308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A056115 n + 21).toNat

end

end A289649.P11441365838280308

/-! ## A289649.P16524997189607261435

`A289651(eq[7, A131818(n+1)])`
-/

namespace A289649.P16524997189607261435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289649.P16524997189607261435

/-! ## A289649.P10786925288610697294

`A289651(A052905(n+3))`
-/

namespace A289649.P10786925288610697294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A052905 (n + 3)).toNat

end

end A289649.P10786925288610697294

/-! ## A289649.P743172834718939757

`A289651(eq[3, A219347(n)])`
-/

namespace A289649.P743172834718939757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289649.P743172834718939757

/-!
# A289650: Number of n X 7 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289650, there is no canonical definition to state claims against.
-/

/-! ## A289650.P17767690923295489879

`A289651(A374008(n+1))`
-/

namespace A289650.P17767690923295489879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A374008 (n + 1)).toNat

end

end A289650.P17767690923295489879

/-! ## A289650.P2959242787777855210

`A289651(A167499(n+5)+2)`
-/

namespace A289650.P2959242787777855210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A167499 (n + 5) + 2).toNat

end

end A289650.P2959242787777855210

/-! ## A289650.P4296570350894120672

`A289651(A000217(n+6)+7)`
-/

namespace A289650.P4296570350894120672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (A000217 (n + 6) + 7).toNat

end

end A289650.P4296570350894120672

/-! ## A289650.P1165204438844148820

`A289651(eq[8, A131818(n+1)])`
-/

namespace A289650.P1165204438844148820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289650.P1165204438844148820

/-! ## A289650.P7250386606449750032

`A289651(eq[4, A219347(n)])`
-/

namespace A289650.P7250386606449750032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289650.P7250386606449750032

/-!
# A289651: T(n,k) = Number of n X k 0..1 arrays with the number of 1's horizontally, antidiagonally or vertically adjacent to some 0 two less than the number of 0's adjacent to some 1.

The programs for A289651, there is no canonical definition to state claims against.
-/

/-! ## A289651.P1106392361057613479

`A010450(A157179(n))`
-/

namespace A289651.P1106392361057613479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010450 (A157179 n).toNat

end

end A289651.P1106392361057613479

/-! ## A289651.P17527105717606877532

`A151863(A022180(n))`
-/

namespace A289651.P17527105717606877532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 (A022180 n).toNat

end

end A289651.P17527105717606877532

/-! ## A289651.P3043729683107368222

`A124196(A128592(n))`
-/

namespace A289651.P3043729683107368222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124196 (A128592 n).toNat

end

end A289651.P3043729683107368222

/-! ## A289651.P13863500222992428708

`A094265(A168290(n))`
-/

namespace A289651.P13863500222992428708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094265 (A168290 n).toNat

end

end A289651.P13863500222992428708

/-! ## A289651.P17991707428485533121

`A254041(A022185(n))`
-/

namespace A289651.P17991707428485533121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254041 (A022185 n).toNat

end

end A289651.P17991707428485533121

/-!
# A289652: Catalan numbers - 2 (A120304) with first three terms changed to 1,1,1.

The programs for A289652, the canonical program `A289652.P1856319461731628592` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289652 has offset 0).

The definition of A289652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289652.P1856319461731628592

`gcd(C(2, n), A120304(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A289652

/-- `gcd(C(2, n), A120304(n))` -/
def P1856319461731628592.Spec : Prop :=
  ∀ n, (P1856319461731628592.a n : ℤ) = A289652 n

theorem P1856319461731628592.correct : P1856319461731628592.Spec := by
  intro n
  simp only [A289652]

end A289652

/-! ## A289652.P6347273008937010686

`abs(A120304(n-char[2]))`
-/

namespace A289652.P6347273008937010686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120304 (n - (if ∃ j, f1 j = n then 1 else 0))|

end

end A289652.P6347273008937010686

namespace A289652

/-- `abs(A120304(n-char[2]))` -/
def P6347273008937010686.Spec : Prop :=
  ∀ n, P6347273008937010686.a n = A289652 n

end A289652

/-! ## A289652.P6942188810146782962

`A289653(n+1)-char[3]`
-/

namespace A289652.P6942188810146782962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289653 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A289652.P6942188810146782962

namespace A289652

/-- `A289653(n+1)-char[3]` -/
def P6942188810146782962.Spec : Prop :=
  ∀ n, P6942188810146782962.a n = A289652 n

end A289652

/-! ## A289652.P15342778666858905757

`abs(char[2]+2-A000108(n))`
-/

namespace A289652.P15342778666858905757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℤ) - A000108 n|

end

end A289652.P15342778666858905757

namespace A289652

/-- `abs(char[2]+2-A000108(n))` -/
def P15342778666858905757.Spec : Prop :=
  ∀ n, P15342778666858905757.a n = A289652 n

end A289652

/-! ## A289652.P804193853788506129

`A000245(n-1)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A289652.P804193853788506129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A000245 (n - 1) + a (n - 1)

end

end A289652.P804193853788506129

namespace A289652

/-- `A000245(n-1)+a(n-1)` -/
def P804193853788506129.Spec : Prop :=
  ∀ n, P804193853788506129.a n = A289652 n

end A289652

/-! ## A289652.P8473431130632795242

`A356114(n)+A004303(n+1)`
-/

namespace A289652.P8473431130632795242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356114 n + A004303 (n + 1)

end

end A289652.P8473431130632795242

namespace A289652

/-- `A356114(n)+A004303(n+1)` -/
def P8473431130632795242.Spec : Prop :=
  ∀ n, P8473431130632795242.a n = A289652 n

end A289652

/-! ## A289652.P11353221994181927568

`A289654(n+1)-A185014(n)`
-/

namespace A289652.P11353221994181927568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) - A185014 n

end

end A289652.P11353221994181927568

namespace A289652

/-- `A289654(n+1)-A185014(n)` -/
def P11353221994181927568.Spec : Prop :=
  ∀ n, P11353221994181927568.a n = A289652 n

theorem P11353221994181927568.correct : P11353221994181927568.Spec := by
  intro n
  simp only [A289652, Nat.add_sub_cancel, A289652.P11353221994181927568.a, A289652.P1856319461731628592.a, A120304, A120304.P16195813583233364787.a, A185014, A185014.P14310411706898602348.a, A289654, A289654.P3590409810907321973.a, A000108, A000108.P17551949696095299361.a, A185114, A185114.P1795733170275167192.a, A185115, A185115.P11194374675298673512.a, A000007, A000007.P6599383543502402472.a, A130543, A130543.P1727106374851024527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A289652

/-! ## A289652.P5905600650549160101

`A289615(n)+A289616(n)-A289614(n)`
-/

namespace A289652.P5905600650549160101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289615 n + (A289616 n - A289614 n)

end

end A289652.P5905600650549160101

namespace A289652

/-- `A289615(n)+A289616(n)-A289614(n)` -/
def P5905600650549160101.Spec : Prop :=
  ∀ n, P5905600650549160101.a n = A289652 n

theorem P5905600650549160101.correct : P5905600650549160101.Spec := by
  intro n
  simp only [A289652, Nat.add_sub_cancel, A289652.P5905600650549160101.a, A289652.P1856319461731628592.a, A120304, A120304.P16195813583233364787.a, A289614, A289614.P14969575610608167341.a, A289615, A289615.P7136354491060648403.f1, A289615.P7136354491060648403.a, A289616, A289616.P6968600782892435759.a, A000108, A000108.P17551949696095299361.a, A055228, A055228.P5197048720928582146.a, A246604, A246604.P5603396420743086449.a, A289207, A289207.P4353291363742306282.a, A289654, A289654.P3590409810907321973.a, A185014, A185014.P14310411706898602348.a, A185114, A185114.P1795733170275167192.a, A185115, A185115.P11194374675298673512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A289652

/-!
# A289653: Catalan numbers - 2 (A120304) with first four terms changed to 1,1,1,4.

The programs for A289653, the canonical program `A289653.P13128161815598754898` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289653 has offset 1).

The definition of A289653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289653.P10695094344732622748

`floor(A000108(n)-atan(floor(n/2)))`
-/

namespace A289653.P10695094344732622748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 n : ℝ) - Real.arctan (⌊(n : ℚ) / 2⌋ : ℝ)⌋

end

end A289653.P10695094344732622748

namespace A289653

/-- `floor(A000108(n)-atan(floor(n/2)))` -/
def P10695094344732622748.Spec : Prop :=
  ∀ n, P10695094344732622748.a n = A289653 (n + 1)

end A289653

/-! ## A289653.P11786511107593587807

`char[3]+abs(2-A000108(n-char[2]))`
-/

namespace A289653.P11786511107593587807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + |2 - A000108 (n - (if ∃ j, f2 j = n then 1 else 0))|

end

end A289653.P11786511107593587807

namespace A289653

/-- `char[3]+abs(2-A000108(n-char[2]))` -/
def P11786511107593587807.Spec : Prop :=
  ∀ n, P11786511107593587807.a n = A289653 (n + 1)

end A289653

/-! ## A289653.P13128161815598754898

`A289652(n)+A185013(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289653

/-- `A289652(n)+A185013(n)` -/
def P13128161815598754898.Spec : Prop :=
  ∀ n, P13128161815598754898.a n = A289653 (n + 1)

theorem P13128161815598754898.correct : P13128161815598754898.Spec := by
  intro n
  simp only [A289653, Nat.add_sub_cancel]

end A289653

/-! ## A289653.P2412720852614133700

`A289615(n)+A289207(n)`
-/

namespace A289653.P2412720852614133700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289615 n + A289207 n

end

end A289653.P2412720852614133700

namespace A289653

/-- `A289615(n)+A289207(n)` -/
def P2412720852614133700.Spec : Prop :=
  ∀ n, P2412720852614133700.a n = A289653 (n + 1)

end A289653

/-! ## A289653.P10478519987605641289

`A289654(n+1)+A289615(n)-A289616(n)`
-/

namespace A289653.P10478519987605641289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 1) + (A289615 n - A289616 n)

end

end A289653.P10478519987605641289

namespace A289653

/-- `A289654(n+1)+A289615(n)-A289616(n)` -/
def P10478519987605641289.Spec : Prop :=
  ∀ n, P10478519987605641289.a n = A289653 (n + 1)

end A289653

/-! ## A289653.P7255853285659848009

`A289654(n+2)+A289652(n)-A289652(n+1)`
-/

namespace A289653.P7255853285659848009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289654 (n + 2) + (A289652 n - A289652 (n + 1))

end

end A289653.P7255853285659848009

namespace A289653

/-- `A289654(n+2)+A289652(n)-A289652(n+1)` -/
def P7255853285659848009.Spec : Prop :=
  ∀ n, P7255853285659848009.a n = A289653 (n + 1)

end A289653

/-!
# A289654: Related to number of mesh patterns of length 2 that avoid the pattern 321.

The programs for A289654, the canonical program `A289654.P3590409810907321973` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289654 has offset 1).

The definition of A289654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289654.P2039185507749138268

`char[4]+A289653(n+1)-char[3]`
-/

namespace A289654.P2039185507749138268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A289653 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A289654.P2039185507749138268

namespace A289654

/-- `char[4]+A289653(n+1)-char[3]` -/
def P2039185507749138268.Spec : Prop :=
  ∀ n, P2039185507749138268.a n = A289654 (n + 1)

end A289654

/-! ## A289654.P1625302962438766547

`char[4]+abs(2-A000108(n-char[2]))`
-/

namespace A289654.P1625302962438766547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + |2 - A000108 (n - (if ∃ j, f2 j = n then 1 else 0))|

end

end A289654.P1625302962438766547

namespace A289654

/-- `char[4]+abs(2-A000108(n-char[2]))` -/
def P1625302962438766547.Spec : Prop :=
  ∀ n, P1625302962438766547.a n = A289654 (n + 1)

end A289654

/-! ## A289654.P2317764374378318394

`char[4]+A000108(n)-ceil(atan(n-1))`
-/

namespace A289654.P2317764374378318394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A000108 n - ⌈Real.arctan ((n : ℤ) - 1 : ℝ)⌉)

end

end A289654.P2317764374378318394

namespace A289654

/-- `char[4]+A000108(n)-ceil(atan(n-1))` -/
def P2317764374378318394.Spec : Prop :=
  ∀ n, P2317764374378318394.a n = A289654 (n + 1)

end A289654

/-! ## A289654.P3590409810907321973

`A289652(n)+A185014(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289654

/-- `A289652(n)+A185014(n)` -/
def P3590409810907321973.Spec : Prop :=
  ∀ n, P3590409810907321973.a n = A289654 (n + 1)

theorem P3590409810907321973.correct : P3590409810907321973.Spec := by
  intro n
  simp only [A289654, Nat.add_sub_cancel]

end A289654

/-! ## A289654.P6228278525303598371

`A289616(n)+A289207(n)`
-/

namespace A289654.P6228278525303598371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289616 n + A289207 n

end

end A289654.P6228278525303598371

namespace A289654

/-- `A289616(n)+A289207(n)` -/
def P6228278525303598371.Spec : Prop :=
  ∀ n, P6228278525303598371.a n = A289654 (n + 1)

theorem P6228278525303598371.correct : P6228278525303598371.Spec := by
  intro n
  simp only [A289654, Nat.add_sub_cancel, A289654.P6228278525303598371.a, A289654.P3590409810907321973.a, A185014, A185014.P14310411706898602348.a, A289207, A289207.P4353291363742306282.a, A289616, A289616.P6968600782892435759.a, A289652, A289652.P1856319461731628592.a, A120304, A120304.P16195813583233364787.a, A185114, A185114.P1795733170275167192.a, A185115, A185115.P11194374675298673512.a, A000007, A000007.P6599383543502402472.a, A000108, A000108.P17551949696095299361.a, A130543, A130543.P1727106374851024527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A289654

/-! ## A289654.P2115783399063502678

`A289653(n+1)+A289616(n)-A289615(n)`
-/

namespace A289654.P2115783399063502678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289653 (n + 1) + (A289616 n - A289615 n)

end

end A289654.P2115783399063502678

namespace A289654

/-- `A289653(n+1)+A289616(n)-A289615(n)` -/
def P2115783399063502678.Spec : Prop :=
  ∀ n, P2115783399063502678.a n = A289654 (n + 1)

end A289654

/-!
# A289655: Subset of A008989 containing one or more simple loops.

The programs for A289655, there is no canonical definition to state claims against.
-/

/-! ## A289655.P14774863533678544152

`A342696(5*A054099(n))`
-/

namespace A289655.P14774863533678544152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (5 * A054099 n).toNat

end

end A289655.P14774863533678544152

/-! ## A289655.P16061702622926106200

`A342696(lcm(5, A054099(n)))`
-/

namespace A289655.P16061702622926106200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (Int.lcm 5 (A054099 n))

end

end A289655.P16061702622926106200

/-! ## A289655.P141320296374456233

`A111857(A360102(n))+A027193(n)`
-/

namespace A289655.P141320296374456233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (A360102 n).toNat + A027193 n

end

end A289655.P141320296374456233

/-!
# A289656: Triangle read by rows: row n gives the first n terms of the binomial transform of the n-th row of A116672.

The programs for A289656, there is no canonical definition to state claims against.
-/

/-! ## A289656.P12956065474908534276

`or(A040001(A097550(n)), A181511(n+1))`
-/

namespace A289656.P12956065474908534276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A097550 n).toNat) (A181511 (n + 1))

end

end A289656.P12956065474908534276

/-!
# A289657: Number of 3-abelian equivalence classes of words of length n over a binary alphabet.

The programs for A289657, there is no canonical definition to state claims against.
-/

/-! ## A289657.P8205190052350759088

`∑[∑[floor((1-n)²/2)]+A020639(n!)]`
-/

namespace A289657.P8205190052350759088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A020639 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289657.P8205190052350759088

/-! ## A289657.P10662061709935266295

`A328596(A294877(record[2^val(n+1, 2)]))`
-/

namespace A289657.P10662061709935266295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A294877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A289657.P10662061709935266295

/-! ## A289657.P11974591399069827158

`A063772(A122117(n))`
-/

namespace A289657.P11974591399069827158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A122117 n).toNat

end

end A289657.P11974591399069827158

/-! ## A289657.P6464535473317207218

`A187041(A100671(n))`
-/

namespace A289657.P6464535473317207218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187041 (A100671 n).toNat

end

end A289657.P6464535473317207218

/-!
# A289658: Number of 2-Abelian equivalence classes of words of length n over an alphabet of size 3.

The programs for A289658, there is no canonical definition to state claims against.
-/

/-! ## A289658.P12030138952341974523

`A100196(A005408(n)*A116789(n+1))`
-/

namespace A289658.P12030138952341974523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A005408 n * A116789 (n + 1)).toNat

end

end A289658.P12030138952341974523

/-! ## A289658.P6714163754988914635

`∑[A034329(Δ[n²])+1]`
-/

namespace A289658.P6714163754988914635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034329 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289658.P6714163754988914635

/-!
# A289659: "n-Value" of Big Collatz matrix for 2n+1.

The programs for A289659, there is no canonical definition to state claims against.
-/

/-! ## A289659.P7672733695644532730

`Δ[n²]*A002326(n)`
-/

namespace A289659.P7672733695644532730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A002326 n

end

end A289659.P7672733695644532730

/-! ## A289659.P2759032160131051951

`Δ[n²]*A007733(Δ[n²])`
-/

namespace A289659.P2759032160131051951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A007733 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A289659.P2759032160131051951

/-! ## A289659.P13744981106886717085

`Δ[n²]*A054703(Δ[n²])`
-/

namespace A289659.P13744981106886717085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A054703 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A289659.P13744981106886717085

/-! ## A289659.P2826516288009267076

`Δ[n²]*A242595(Δ[n²])`
-/

namespace A289659.P2826516288009267076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A242595 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A289659.P2826516288009267076

/-! ## A289659.P6820171863021677502

`Δ[n²]*A024222(2*(n+1))`
-/

namespace A289659.P6820171863021677502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A024222 (2 * (n + 1))

end

end A289659.P6820171863021677502

/-!
# A289660: a(n) = A037276(n) - n.

The programs for A289660, there is no canonical definition to state claims against.
-/

/-! ## A289660.P1861043826453368698

`A037276(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289660.P1861043826453368698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (n + 1) - (n + 1 : ℤ)

end

end A289660.P1861043826453368698

/-! ## A289660.P749952112603347723

`abs(A037276(n+1)+A001478(n+1))`
-/

namespace A289660.P749952112603347723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037276 (n + 1) + A001478 (n + 1)|

end

end A289660.P749952112603347723

/-! ## A289660.P3727293097837064168

`abs(A037276(n+1)+A001489(n+1))`
-/

namespace A289660.P3727293097837064168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037276 (n + 1) + A001489 (n + 1)|

end

end A289660.P3727293097837064168

/-! ## A289660.P16332642221540918534

`A130472(Δ[n²])+A037276(n+1)`
-/

namespace A289660.P16332642221540918534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A037276 (n + 1)

end

end A289660.P16332642221540918534

/-! ## A289660.P508034385328090320

`A087712(A064988(n+1))-(n+1)`
-/

namespace A289660.P508034385328090320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A064988 (n + 1)).toNat - (n + 1 : ℤ)

end

end A289660.P508034385328090320

/-! ## A289660.P8705928060034744015

`A104402(A034856(n+1))+A037276(n+1)`
-/

namespace A289660.P8705928060034744015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104402 (A034856 (n + 1)).toNat + A037276 (n + 1)

end

end A289660.P8705928060034744015

/-! ## A289660.P812728351834588124

`A000027(A037276(n-log2(1/2)))-A008619(2*n)`
-/

namespace A289660.P812728351834588124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A037276 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat - A008619 (2 * n)

end

end A289660.P812728351834588124

/-!
# A289664: Number of integers in the interval [2,A289661(n)] whose greatest prime factor is equal to the n-th popular prime A385503(n).

The programs for A289664, there is no canonical definition to state claims against.
-/

/-! ## A289664.P8951435949720046460

`A078899(A289661(n+1))`
-/

namespace A289664.P8951435949720046460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (A289661 (n + 1)).toNat

end

end A289664.P8951435949720046460

/-! ## A289664.P2407228812051762955

`A086553(A002426(n))-A256180(n)`
-/

namespace A289664.P2407228812051762955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086553 (A002426 n).toNat - A256180 n

end

end A289664.P2407228812051762955

/-!
# A289665: Number of integers in the interval [2, A289663(n)] whose greatest prime factor is equal to the n-th popular prime A385503(n).

The programs for A289665, there is no canonical definition to state claims against.
-/

/-! ## A289665.P10439303202750038079

`A385652(A289663(n+1))`
-/

namespace A289665.P10439303202750038079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385652 (A289663 (n + 1)).toNat

end

end A289665.P10439303202750038079

/-!
# A289666: a(n) = number of weakly threshold graphs on n nodes.

The programs for A289666, the canonical program `A289666.P834666497418239956` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289666 has offset 0).

The definition of A289666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289666.P834666497418239956

`4*a(n-1)-3*a(n-2)-a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=9, a(5)=21`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A289666

/-- `4*a(n-1)-3*a(n-2)-a(n-3)-a(n-5)` -/
def P834666497418239956.Spec : Prop :=
  ∀ n, P834666497418239956.a n = A289666 n

theorem P834666497418239956.correct : P834666497418239956.Spec := by
  intro n
  simp only [A289666]

end A289666

/-! ## A289666.P5874245556590420576

`∑[A165190(Δ[A271897(n)])]`
-/

namespace A289666.P5874245556590420576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289666.P5874245556590420576

namespace A289666

/-- `∑[A165190(Δ[A271897(n)])]` -/
def P5874245556590420576.Spec : Prop :=
  ∀ n, P5874245556590420576.a n = A289666 n

end A289666

/-! ## A289666.P14044434502280405981

`A136753(n+1)%A001529(n)`
-/

namespace A289666.P14044434502280405981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136753 (n + 1)) (A001529 n)

end

end A289666.P14044434502280405981

namespace A289666

/-- `A136753(n+1)%A001529(n)` -/
def P14044434502280405981.Spec : Prop :=
  ∀ n, P14044434502280405981.a n = A289666 n

end A289666

/-! ## A289666.P10942178365536452649

`A024417(A191793(∑[n]))-A343380(n)`
-/

namespace A289666.P10942178365536452649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A191793 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A343380 n

end

end A289666.P10942178365536452649

namespace A289666

/-- `A024417(A191793(∑[n]))-A343380(n)` -/
def P10942178365536452649.Spec : Prop :=
  ∀ n, P10942178365536452649.a n = A289666 n

end A289666

/-! ## A289666.P16380684082473745511

`A024417(A191793(∑[n]))%A007018(n)`
-/

namespace A289666.P16380684082473745511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024417 (A191793 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A007018 n)

end

end A289666.P16380684082473745511

namespace A289666

/-- `A024417(A191793(∑[n]))%A007018(n)` -/
def P16380684082473745511.Spec : Prop :=
  ∀ n, P16380684082473745511.a n = A289666 n

end A289666

/-!
# A289670: Consider the Post tag system defined in A284116; a(n) = number of binary words of length n which terminate at the empty word.

The programs for A289670, there is no canonical definition to state claims against.
-/

/-! ## A289670.P11776691331085967394

`2^(n+1)-A289671(n+1)`
-/

namespace A289670.P11776691331085967394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A289671 (n + 1)

end

end A289670.P11776691331085967394

/-! ## A289670.P386398144877530004

`A048578(n)-(A289671(n+1)+1)`
-/

namespace A289670.P386398144877530004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A289671 (n + 1) + 1)

end

end A289670.P386398144877530004

/-! ## A289670.P9006799781522055711

`A289676(n+1)*A291778(n+1)`
-/

namespace A289670.P9006799781522055711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289676 (n + 1) * A291778 (n + 1)

end

end A289670.P9006799781522055711

/-! ## A289670.P10049334775056033393

`A060546(A042965(n+1))*A289676(n+1)`
-/

namespace A289670.P10049334775056033393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A042965 (n + 1)).toNat * A289676 (n + 1)

end

end A289670.P10049334775056033393

/-! ## A289670.P15917984768855599305

`A016116(A184421(n+1))*A289676(n+1)`
-/

namespace A289670.P15917984768855599305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A184421 (n + 1)).toNat * A289676 (n + 1)

end

end A289670.P15917984768855599305

/-! ## A289670.P16849757622878040258

`A291778(n+1)+A291779(n+1)-A289671(n+1)`
-/

namespace A289670.P16849757622878040258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 (n + 1) + (A291779 (n + 1) - A289671 (n + 1))

end

end A289670.P16849757622878040258

/-! ## A289670.P15307110870599243754

`A291780(n+1)+A291781(n+1)-A289671(n+1)`
-/

namespace A289670.P15307110870599243754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291780 (n + 1) + (A291781 (n + 1) - A289671 (n + 1))

end

end A289670.P15307110870599243754

/-!
# A289671: Consider the Post tag system defined in A284116; a(n) = number of binary words of length n which terminate in a cycle.

The programs for A289671, there is no canonical definition to state claims against.
-/

/-! ## A289671.P4273699787161521667

`2^(n+1)-A289670(n+1)`
-/

namespace A289671.P4273699787161521667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A289670 (n + 1)

end

end A289671.P4273699787161521667

/-! ## A289671.P12730067586408561699

`and(-A289670(n+1), A126646(n))`
-/

namespace A289671.P12730067586408561699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289670 (n + 1)) (A126646 n)

end

end A289671.P12730067586408561699

/-! ## A289671.P15516667806598650920

`A173862(2*(n+1)+1)*A289677(n+1)`
-/

namespace A289671.P15516667806598650920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (2 * (n + 1) + 1) * A289677 (n + 1)

end

end A289671.P15516667806598650920

/-! ## A289671.P1415913775668676151

`A291778(n+1)+A291779(n+1)-A289670(n+1)`
-/

namespace A289671.P1415913775668676151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 (n + 1) + (A291779 (n + 1) - A289670 (n + 1))

end

end A289671.P1415913775668676151

/-! ## A289671.P9263919786405415992

`A291780(n+1)+A291781(n+1)-A289670(n+1)`
-/

namespace A289671.P9263919786405415992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291780 (n + 1) + (A291781 (n + 1) - A289670 (n + 1))

end

end A289671.P9263919786405415992

/-! ## A289671.P14312639863454152658

`A289670(n+1)/A289676(n+1)*A289677(n+1)`
-/

namespace A289671.P14312639863454152658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289670 (n + 1) : ℚ) / (A289676 (n + 1) : ℚ) * (A289677 (n + 1) : ℚ)

end

end A289671.P14312639863454152658

/-!
# A289673: Take n-th string over {1,2} in lexicographic order and apply the Post tag system described in A284116 (but adapted to the alphabet {1,2}) just once.

The programs for A289673, there is no canonical definition to state claims against.
-/

/-! ## A289673.P18287800648335518327

`A291073(n+1)-9*A079944(n)`
-/

namespace A289673.P18287800648335518327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291073 (n + 1) - 9 * A079944 n

end

end A289673.P18287800648335518327

/-!
# A289675: Consider the Post tag system described in A284116 (but adapted to the alphabet {1,2}) ; sequence lists the words that terminate in the empty word.

The programs for A289675, there is no canonical definition to state claims against.
-/

/-! ## A289675.P9808871630271548426

`record[A106371(A333948(n+1)+1)]`
-/

namespace A289675.P9808871630271548426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106371 (A333948 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289675.P9808871630271548426

/-! ## A289675.P7561641107656220031

`A007931(∑[A003557(2^(n+5)-17)])`
-/

namespace A289675.P7561641107656220031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 ^ (n + 5) - 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289675.P7561641107656220031

/-! ## A289675.P9146167872939877292

`A334054(A139485(n+1))`
-/

namespace A289675.P9146167872939877292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334054 (A139485 (n + 1)).toNat

end

end A289675.P9146167872939877292

/-! ## A289675.P13054510150595492586

`A344420(A097257(n)+12)`
-/

namespace A289675.P13054510150595492586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A097257 n + 12).toNat

end

end A289675.P13054510150595492586

/-!
# A289676: a(n) = A289670(n)/2^f(n), where f(n) = 2*floor((n-1)/3) + ((n+2) mod 3).

The programs for A289676, there is no canonical definition to state claims against.
-/

/-! ## A289676.P4200885015963094518

`A289670(n+1)/A291778(n+1)`
-/

namespace A289676.P4200885015963094518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289670 (n + 1) : ℚ) / (A291778 (n + 1) : ℚ)

end

end A289676.P4200885015963094518

/-! ## A289676.P14845561535090657098

`A173862(n+4)-A289677(n+1)`
-/

namespace A289676.P14845561535090657098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (n + 4) - A289677 (n + 1)

end

end A289676.P14845561535090657098

/-! ## A289676.P3086756130885663233

`A000079(A008620(n))-A289677(n+1)`
-/

namespace A289676.P3086756130885663233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008620 n).toNat - A289677 (n + 1)

end

end A289676.P3086756130885663233

/-! ## A289676.P1691230991700146355

`A289670(n+1)/A060546(A042965(n+1))`
-/

namespace A289676.P1691230991700146355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289670 (n + 1) : ℚ) / (A060546 (A042965 (n + 1)).toNat : ℚ)

end

end A289676.P1691230991700146355

/-! ## A289676.P5024294249076114092

`A289670(n+1)/A016116(A184421(n+1))`
-/

namespace A289676.P5024294249076114092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289670 (n + 1) : ℚ) / (A016116 (A184421 (n + 1)).toNat : ℚ)

end

end A289676.P5024294249076114092

/-!
# A289677: a(n) = A289671(n)/2^f(n), where f(n) = 2*floor((n-1)/3) + ((n+2) mod 3) = A004523(n).

The programs for A289677, there is no canonical definition to state claims against.
-/

/-! ## A289677.P4166770771418251612

`and(∏[2-n²%3]-1, -A289676(n+1))`
-/

namespace A289677.P4166770771418251612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ j ∈ Finset.range (n + 1), f1 j - 1) (-A289676 (n + 1))

end

end A289677.P4166770771418251612

/-! ## A289677.P13431521652533806334

`A289671(n+1)/A291778(n+1)`
-/

namespace A289677.P13431521652533806334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289671 (n + 1) : ℚ) / (A291778 (n + 1) : ℚ)

end

end A289677.P13431521652533806334

/-! ## A289677.P5656820901115407011

`A173862(n+4)-A289676(n+1)`
-/

namespace A289677.P5656820901115407011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (n + 4) - A289676 (n + 1)

end

end A289677.P5656820901115407011

/-! ## A289677.P4140131845888452916

`A000079(A008620(n))-A289676(n+1)`
-/

namespace A289677.P4140131845888452916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008620 n).toNat - A289676 (n + 1)

end

end A289677.P4140131845888452916

/-! ## A289677.P2400285690455492595

`A289671(n+1)/A060546(A042965(n+1))`
-/

namespace A289677.P2400285690455492595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289671 (n + 1) : ℚ) / (A060546 (A042965 (n + 1)).toNat : ℚ)

end

end A289677.P2400285690455492595

/-! ## A289677.P1532534334816860854

`A289671(n+1)/A289670(n+1)*A289676(n+1)`
-/

namespace A289677.P1532534334816860854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289671 (n + 1) : ℚ) / (A289670 (n + 1) : ℚ) * (A289676 (n + 1) : ℚ)

end

end A289677.P1532534334816860854

/-!
# A289678: Number of hypermaps which are self-equivalent with respect to reversing the colors of the nodes and which have n edges.

The programs for A289678, there is no canonical definition to state claims against.
-/

/-! ## A289678.P2315296446031227993

`2*A234278(n+1)-A057005(n+1)`
-/

namespace A289678.P2315296446031227993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234278 (n + 1) - A057005 (n + 1)

end

end A289678.P2315296446031227993

/-! ## A289678.P11941907665621252940

`A219652(A219653(n)+A129879(n+1))`
-/

namespace A289678.P11941907665621252940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A219653 n + A129879 (n + 1)).toNat

end

end A289678.P11941907665621252940

/-! ## A289678.P7173262350678158640

`A292987(A148107(n))`
-/

namespace A289678.P7173262350678158640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (A148107 n).toNat

end

end A289678.P7173262350678158640

/-!
# A289679: a(n) = Catalan(n-1)*Bell(n).

The programs for A289679, there is no canonical definition to state claims against.
-/

/-! ## A289679.P8684307366745344372

`A000108(n)*A000110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289679.P8684307366745344372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000110 (n + 1)

end

end A289679.P8684307366745344372

/-! ## A289679.P1160475036100859140

`record[A095149(n)]*A000108(n)`
-/

namespace A289679.P1160475036100859140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 n

end

end A289679.P1160475036100859140

/-! ## A289679.P9206327601765759320

`abs(A000110(n+1)*A168491(n))`
-/

namespace A289679.P9206327601765759320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000110 (n + 1) * A168491 n|

end

end A289679.P9206327601765759320

/-! ## A289679.P6133263527125615065

`abs(A292935(n+1))*A000108(n)`
-/

namespace A289679.P6133263527125615065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (n + 1)| * A000108 n

end

end A289679.P6133263527125615065

/-! ## A289679.P2858702311282835643

`Δ[A005001(n+1)]*A000108(n)`
-/

namespace A289679.P2858702311282835643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 n

end

end A289679.P2858702311282835643

/-! ## A289679.P2823508142117546639

`record[A108087(n)]*A120588(n+1)`
-/

namespace A289679.P2823508142117546639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A120588 (n + 1)

end

end A289679.P2823508142117546639

/-! ## A289679.P3228897626072872396

`A000110(n+1)*A120588(n+1)`
-/

namespace A289679.P3228897626072872396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A120588 (n + 1)

end

end A289679.P3228897626072872396

/-! ## A289679.P8360274998424704244

`A000110(n+1)*A028303(2*n)`
-/

namespace A289679.P8360274998424704244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A028303 (2 * n)

end

end A289679.P8360274998424704244

/-! ## A289679.P9301790302327396360

`A000110(n+1)*A028304(2*n)`
-/

namespace A289679.P9301790302327396360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A028304 (2 * n)

end

end A289679.P9301790302327396360

/-! ## A289679.P5481557625206165238

`A000110(n+1)*A057977(2*n)`
-/

namespace A289679.P5481557625206165238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) * A057977 (2 * n)

end

end A289679.P5481557625206165238

/-!
# A289680: a(n) = Catalan(n+1)*Bell(n).

The programs for A289680, there is no canonical definition to state claims against.
-/

/-! ## A289680.P17015432842342554561

`A000108(n+1)*A000110(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289680.P17015432842342554561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000110 n

end

end A289680.P17015432842342554561

/-! ## A289680.P8531048372381992070

`Δ[A014138(n)]*A000110(n)`
-/

namespace A289680.P8531048372381992070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000110 n

end

end A289680.P8531048372381992070

/-! ## A289680.P2224926758202005057

`A000110(n)*A120588(n+2)`
-/

namespace A289680.P2224926758202005057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A120588 (n + 2)

end

end A289680.P2224926758202005057

/-! ## A289680.P848203287425227652

`abs(A168491(n+1))*A000110(n)`
-/

namespace A289680.P848203287425227652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)| * A000110 n

end

end A289680.P848203287425227652

/-! ## A289680.P14206795127585577154

`abs(A000108(n+1)*A292935(n))`
-/

namespace A289680.P14206795127585577154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (n + 1) * A292935 n|

end

end A289680.P14206795127585577154

/-! ## A289680.P4657317262228833922

`A000108(n+1)*A011971(∑[n])`
-/

namespace A289680.P4657317262228833922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289680.P4657317262228833922

/-! ## A289680.P17998194715045871818

`A000108(n+1)*A033306(∑[n])`
-/

namespace A289680.P17998194715045871818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289680.P17998194715045871818

/-! ## A289680.P371490684449458412

`A000108(n+1)*A095149(∑[n])`
-/

namespace A289680.P371490684449458412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289680.P371490684449458412

/-! ## A289680.P7265205419094742577

`A000108(n+1)*A108087(∑[n])`
-/

namespace A289680.P7265205419094742577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289680.P7265205419094742577

/-! ## A289680.P12243139264539567485

`A000108(n+1)*A123081(∑[n])`
-/

namespace A289680.P12243139264539567485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289680.P12243139264539567485

/-!
# A289681: Number of closed simply-typed normal forms of size n.

The programs for A289681, there is no canonical definition to state claims against.
-/

/-! ## A289681.P1841392584576381015

`A008615(4*A084756(n+1))`
-/

namespace A289681.P1841392584576381015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * A084756 (n + 1)).toNat

end

end A289681.P1841392584576381015

/-! ## A289681.P11673177466307108582

`A112689(4*A084756(n+1))`
-/

namespace A289681.P11673177466307108582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (4 * A084756 (n + 1)).toNat

end

end A289681.P11673177466307108582

/-!
# A289682: Catalan numbers read modulo 16.

The programs for A289682, the canonical program `A289682.P3596696072148913468` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289682 has offset 0).

The definition of A289682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289682.P5590128889269898207

`A000108(n)%16`
-/

namespace A289682.P5590128889269898207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 16

end

end A289682.P5590128889269898207

namespace A289682

/-- `A000108(n)%16` -/
def P5590128889269898207.Spec : Prop :=
  ∀ n, P5590128889269898207.a n = A289682 n

end A289682

/-! ## A289682.P3596696072148913468

`(C(2*n, n)/(n+1))%16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A289682

/-- `(C(2*n, n)/(n+1))%16` -/
def P3596696072148913468.Spec : Prop :=
  ∀ n, P3596696072148913468.a n = A289682 n

theorem P3596696072148913468.correct : P3596696072148913468.Spec := by
  intro n
  simp only [A289682]

end A289682

/-! ## A289682.P9778891678261113606

`abs(A168491(n)%16)`
-/

namespace A289682.P9778891678261113606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 16|

end

end A289682.P9778891678261113606

namespace A289682

/-- `abs(A168491(n)%16)` -/
def P9778891678261113606.Spec : Prop :=
  ∀ n, P9778891678261113606.a n = A289682 n

end A289682

/-! ## A289682.P14065648895292345165

`A120588(n+1)%16`
-/

namespace A289682.P14065648895292345165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 16

end

end A289682.P14065648895292345165

namespace A289682

/-- `A120588(n+1)%16` -/
def P14065648895292345165.Spec : Prop :=
  ∀ n, P14065648895292345165.a n = A289682 n

end A289682

/-! ## A289682.P10736109908711534373

`(A120304(n)+2)%16`
-/

namespace A289682.P10736109908711534373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 16

end

end A289682.P10736109908711534373

namespace A289682

/-- `(A120304(n)+2)%16` -/
def P10736109908711534373.Spec : Prop :=
  ∀ n, P10736109908711534373.a n = A289682 n

end A289682

/-! ## A289682.P15070457601142253722

`A028303(2*n)%16`
-/

namespace A289682.P15070457601142253722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 16

end

end A289682.P15070457601142253722

namespace A289682

/-- `A028303(2*n)%16` -/
def P15070457601142253722.Spec : Prop :=
  ∀ n, P15070457601142253722.a n = A289682 n

end A289682

/-! ## A289682.P14560594175143155715

`A126324(2*n)%16`
-/

namespace A289682.P14560594175143155715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) 16

end

end A289682.P14560594175143155715

namespace A289682

/-- `A126324(2*n)%16` -/
def P14560594175143155715.Spec : Prop :=
  ∀ n, P14560594175143155715.a n = A289682 n

end A289682

/-! ## A289682.P5748309319780071486

`A329687(3*n)%16`
-/

namespace A289682.P5748309319780071486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329687 (3 * n)) 16

end

end A289682.P5748309319780071486

namespace A289682

/-- `A329687(3*n)%16` -/
def P5748309319780071486.Spec : Prop :=
  ∀ n, P5748309319780071486.a n = A289682 n

end A289682

/-! ## A289682.P3760805872622977244

`abs(A115140(n+1))%16`
-/

namespace A289682.P3760805872622977244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A115140 (n + 1)| 16

end

end A289682.P3760805872622977244

namespace A289682

/-- `abs(A115140(n+1))%16` -/
def P3760805872622977244.Spec : Prop :=
  ∀ n, P3760805872622977244.a n = A289682 n

end A289682

/-! ## A289682.P10052350911937914123

`and(15, abs(A182492(4*n+3)))`
-/

namespace A289682.P10052350911937914123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 |A182492 (4 * n + 3)|

end

end A289682.P10052350911937914123

namespace A289682

/-- `and(15, abs(A182492(4*n+3)))` -/
def P10052350911937914123.Spec : Prop :=
  ∀ n, P10052350911937914123.a n = A289682 n

end A289682

/-! ## A289682.P4192089382728632315

`and(15, A000108(round(sqrt(n²+1))))`
-/

namespace A289682.P4192089382728632315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A000108 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A289682.P4192089382728632315

namespace A289682

/-- `and(15, A000108(round(sqrt(n²+1))))` -/
def P4192089382728632315.Spec : Prop :=
  ∀ n, P4192089382728632315.a n = A289682 n

end A289682

/-! ## A289682.P17653635122213842341

`A089408(A005408(n))%16`
-/

namespace A289682.P17653635122213842341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 (A005408 n).toNat) 16

end

end A289682.P17653635122213842341

namespace A289682

/-- `A089408(A005408(n))%16` -/
def P17653635122213842341.Spec : Prop :=
  ∀ n, P17653635122213842341.a n = A289682 n

end A289682

/-! ## A289682.P13684387160060884347

`A208355(A004273(n))%16`
-/

namespace A289682.P13684387160060884347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (A004273 n).toNat) 16

end

end A289682.P13684387160060884347

namespace A289682

/-- `A208355(A004273(n))%16` -/
def P13684387160060884347.Spec : Prop :=
  ∀ n, P13684387160060884347.a n = A289682 n

end A289682

/-! ## A289682.P5129230849942601407

`A208355(A005843(n))%16`
-/

namespace A289682.P5129230849942601407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (A005843 n).toNat) 16

end

end A289682.P5129230849942601407

namespace A289682

/-- `A208355(A005843(n))%16` -/
def P5129230849942601407.Spec : Prop :=
  ∀ n, P5129230849942601407.a n = A289682 n

end A289682

/-! ## A289682.P15377218531007596682

`and(15, A028304(A004277(n)))`
-/

namespace A289682.P15377218531007596682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A028304 (A004277 n).toNat)

end

end A289682.P15377218531007596682

namespace A289682

/-- `and(15, A028304(A004277(n)))` -/
def P15377218531007596682.Spec : Prop :=
  ∀ n, P15377218531007596682.a n = A289682 n

end A289682

/-! ## A289682.P14844472693433216956

`and(A000108(n), A268581(A160467(2*n+1)))`
-/

namespace A289682.P14844472693433216956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000108 n) (A268581 (A160467 (2 * n + 1)).toNat)

end

end A289682.P14844472693433216956

namespace A289682

/-- `and(A000108(n), A268581(A160467(2*n+1)))` -/
def P14844472693433216956.Spec : Prop :=
  ∀ n, P14844472693433216956.a n = A289682 n

end A289682

/-! ## A289682.P1917448112877189303

`(A028329(n)/(2*(n+1)))%16`
-/

namespace A289682.P1917448112877189303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028329 n : ℚ) / (2 * (n + 1) : ℚ))) 16

end

end A289682.P1917448112877189303

namespace A289682

/-- `(A028329(n)/(2*(n+1)))%16` -/
def P1917448112877189303.Spec : Prop :=
  ∀ n, P1917448112877189303.a n = A289682 n

end A289682

/-! ## A289682.P8223674483952888746

`A214775(A000217(n))%16`
-/

namespace A289682.P8223674483952888746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214775 (A000217 n).toNat) 16

end

end A289682.P8223674483952888746

namespace A289682

/-- `A214775(A000217(n))%16` -/
def P8223674483952888746.Spec : Prop :=
  ∀ n, P8223674483952888746.a n = A289682 n

end A289682

/-!
# A289683: Mixing moments of the busy period of mean steady-state 1/2 in an M/M/1 waiting process.

The programs for A289683, there is no canonical definition to state claims against.
-/

/-! ## A289683.P14352023549820955905

`A037479(A385426(n))`
-/

namespace A289683.P14352023549820955905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (A385426 n).toNat

end

end A289683.P14352023549820955905

/-! ## A289683.P1098104363138410422

`A280342(A280342(-(4*(a(n-2)-a(n-1)))))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A289683.P1098104363138410422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A280342 (A280342 (-(4 * (a (n - 2) - a (n - 1)))).toNat).toNat

end

end A289683.P1098104363138410422

/-!
# A289684: Mixing moments for the waiting time in an M/G/1 waiting queue.

The programs for A289684, there is no canonical definition to state claims against.
-/

/-! ## A289684.P18035455513838241926

`ceil(A084868(n+1)/4)`
-/

namespace A289684.P18035455513838241926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084868 (n + 1) : ℚ) / 4⌉

end

end A289684.P18035455513838241926

/-! ## A289684.P16246773373503651483

`A391516(n+1)-A391513(n+1)`
-/

namespace A289684.P16246773373503651483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391516 (n + 1) - A391513 (n + 1)

end

end A289684.P16246773373503651483

/-! ## A289684.P10747868649524475710

`record[A084868(n)/A036453(n+1)²]`
-/

namespace A289684.P10747868649524475710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084868 n : ℚ) / (A036453 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289684.P10747868649524475710

/-! ## A289684.P9713987957927408718

`(A084868(n+1)/4)^abs(A062157(n))`
-/

namespace A289684.P9713987957927408718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A084868 (n + 1) : ℚ) / 4) ^ (|A062157 n| : ℤ)

end

end A289684.P9713987957927408718

/-! ## A289684.P9764587924075826340

`A084868(n+1)/(2*A036453(n+1))`
-/

namespace A289684.P9764587924075826340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084868 (n + 1) : ℚ) / (2 * A036453 (n + 1) : ℚ)

end

end A289684.P9764587924075826340

/-! ## A289684.P13414751319582235326

`A084868(n+1)/4*gcd(2, A005061(n))`
-/

namespace A289684.P13414751319582235326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084868 (n + 1) : ℚ) / 4 * (Int.gcd 2 (A005061 n) : ℚ)

end

end A289684.P13414751319582235326

/-! ## A289684.P1329339294064357983

`A391513(n)+A391513(n)-A115141(n)`
-/

namespace A289684.P1329339294064357983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391513 n + (A391513 n - A115141 n)

end

end A289684.P1329339294064357983

/-!
# A289686: Numbers k such that k!6 - 8 is prime, where k!6 is the sextuple factorial number (A085158).

The programs for A289686, there is no canonical definition to state claims against.
-/

/-! ## A289686.P1316734481888535990

`A087695(n+1)+A011626(A243552(n+1))`
-/

namespace A289686.P1316734481888535990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + A011626 (A243552 (n + 1)).toNat

end

end A289686.P1316734481888535990

/-!
# A289689: Numbers k such that k!6 - 16 is prime, where k!6 is the sextuple factorial number (A085158).

The programs for A289689, there is no canonical definition to state claims against.
-/

/-! ## A289689.P1285930096292684446

`A112072(A023182(n+1)+1)`
-/

namespace A289689.P1285930096292684446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112072 (A023182 (n + 1) + 1).toNat

end

end A289689.P1285930096292684446

/-!
# A289691: List of composite numbers n such that the prime decomposition of n contains an initial product of prime powers greater than a later prime, but in which no proper divisor of n is in the sequence.

The programs for A289691, there is no canonical definition to state claims against.
-/

/-! ## A289691.P7244987115757379970

`∩[A282668(n+1), A385096(n+1)]`
-/

namespace A289691.P7244987115757379970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289691.P7244987115757379970

/-!
# A289692: The number of partitions of [n] with exactly 2 blocks without peaks.

The programs for A289692, the canonical program `A289692.P14903550405530179678` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289692 has offset 1).

The definition of A289692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289692.P14903550405530179678

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A289692

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P14903550405530179678.Spec : Prop :=
  ∀ n, P14903550405530179678.a n = A289692 (n + 1)

theorem P14903550405530179678.correct : P14903550405530179678.Spec := by
  intro n
  simp only [A289692, Nat.add_sub_cancel]

end A289692

/-! ## A289692.P17848399282550013771

`ogf((x-x^2+x^3)/(1-3x+3x^2-2x^3+x^4))`
-/

namespace A289692.P17848399282550013771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1] [1, -3, 3, -2, 1] n

end

end A289692.P17848399282550013771

namespace A289692

/-- `ogf((x-x^2+x^3)/(1-3x+3x^2-2x^3+x^4))` -/
def P17848399282550013771.Spec : Prop :=
  ∀ n, P17848399282550013771.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P3237299457470561424

`record[a(n-2)-a(n-3)]-1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A289692.P3237299457470561424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A289692.P3237299457470561424

namespace A289692

/-- `record[a(n-2)-a(n-3)]-1` -/
def P3237299457470561424.Spec : Prop :=
  ∀ n, P3237299457470561424.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P1235652456807394329

`∑[a(n-1)+a(n-2)+a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A289692.P1235652456807394329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289692.P1235652456807394329

namespace A289692

/-- `∑[a(n-1)+a(n-2)+a(n-4)]` -/
def P1235652456807394329.Spec : Prop :=
  ∀ n, (P1235652456807394329.a n : ℤ) = A289692 (n + 1)

end A289692

/-! ## A289692.P4646145584052046628

`record[A124745(n)-1]`
-/

namespace A289692.P4646145584052046628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289692.P4646145584052046628

namespace A289692

/-- `record[A124745(n)-1]` -/
def P4646145584052046628.Spec : Prop :=
  ∀ n, P4646145584052046628.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P1707635313433142713

`A005314(n+1)-1`
-/

namespace A289692.P1707635313433142713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) - 1

end

end A289692.P1707635313433142713

namespace A289692

/-- `A005314(n+1)-1` -/
def P1707635313433142713.Spec : Prop :=
  ∀ n, P1707635313433142713.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P9727551088813543687

`∑[A005251(n+1)]-1`
-/

namespace A289692.P9727551088813543687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289692.P9727551088813543687

namespace A289692

/-- `∑[A005251(n+1)]-1` -/
def P9727551088813543687.Spec : Prop :=
  ∀ n, P9727551088813543687.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P11087332185859708276

`∑[A182097(2*n)]-1`
-/

namespace A289692.P11087332185859708276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289692.P11087332185859708276

namespace A289692

/-- `∑[A182097(2*n)]-1` -/
def P11087332185859708276.Spec : Prop :=
  ∀ n, P11087332185859708276.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P2938926734320020253

`record[A000931(2*n)-1]`
-/

namespace A289692.P2938926734320020253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289692.P2938926734320020253

namespace A289692

/-- `record[A000931(2*n)-1]` -/
def P2938926734320020253.Spec : Prop :=
  ∀ n, P2938926734320020253.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P15117830803037568057

`record[A078027(2*n)-1]`
-/

namespace A289692.P15117830803037568057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289692.P15117830803037568057

namespace A289692

/-- `record[A078027(2*n)-1]` -/
def P15117830803037568057.Spec : Prop :=
  ∀ n, P15117830803037568057.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P12152688016269488882

`∑[∑[abs(A099529(n))]]-1`
-/

namespace A289692.P12152688016269488882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099529 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289692.P12152688016269488882

namespace A289692

/-- `∑[∑[abs(A099529(n))]]-1` -/
def P12152688016269488882.Spec : Prop :=
  ∀ n, P12152688016269488882.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P14568863821161764891

`A134816(2*(n+1))-1`
-/

namespace A289692.P14568863821161764891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) - 1

end

end A289692.P14568863821161764891

namespace A289692

/-- `A134816(2*(n+1))-1` -/
def P14568863821161764891.Spec : Prop :=
  ∀ n, P14568863821161764891.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P10924241482510696138

`A000931(2*(n+3))-1`
-/

namespace A289692.P10924241482510696138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * (n + 3)) - 1

end

end A289692.P10924241482510696138

namespace A289692

/-- `A000931(2*(n+3))-1` -/
def P10924241482510696138.Spec : Prop :=
  ∀ n, P10924241482510696138.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P15205012231016741668

`A182097(2*n+3)-1`
-/

namespace A289692.P15205012231016741668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 3) - 1

end

end A289692.P15205012231016741668

namespace A289692

/-- `A182097(2*n+3)-1` -/
def P15205012231016741668.Spec : Prop :=
  ∀ n, P15205012231016741668.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P6458831754009522931

`A052954(2*n+3)-2`
-/

namespace A289692.P6458831754009522931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (2 * n + 3) - 2

end

end A289692.P6458831754009522931

namespace A289692

/-- `A052954(2*n+3)-2` -/
def P6458831754009522931.Spec : Prop :=
  ∀ n, P6458831754009522931.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P17777745388228295148

`record[abs(A133034(2*n))-1]`
-/

namespace A289692.P17777745388228295148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133034 (2 * n)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289692.P17777745388228295148

namespace A289692

/-- `record[abs(A133034(2*n))-1]` -/
def P17777745388228295148.Spec : Prop :=
  ∀ n, P17777745388228295148.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P10733515173168307990

`record[∑[A133034(2*n+1)]]`
-/

namespace A289692.P10733515173168307990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289692.P10733515173168307990

namespace A289692

/-- `record[∑[A133034(2*n+1)]]` -/
def P10733515173168307990.Spec : Prop :=
  ∀ n, P10733515173168307990.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P7105498397952302387

`a(n-2)+A049853(n)` with `a(0)=0, a(1)=1`
-/

namespace A289692.P7105498397952302387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A049853 n

end

end A289692.P7105498397952302387

namespace A289692

/-- `a(n-2)+A049853(n)` -/
def P7105498397952302387.Spec : Prop :=
  ∀ n, P7105498397952302387.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P9996663560020904868

`A023434(A004273(n))`
-/

namespace A289692.P9996663560020904868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (A004273 n).toNat

end

end A289692.P9996663560020904868

namespace A289692

/-- `A023434(A004273(n))` -/
def P9996663560020904868.Spec : Prop :=
  ∀ n, P9996663560020904868.a n = A289692 (n + 1)

end A289692

/-! ## A289692.P2370938516484779225

`A228361(A004280(n+2))-1`
-/

namespace A289692.P2370938516484779225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A004280 (n + 2)).toNat - 1

end

end A289692.P2370938516484779225

namespace A289692

/-- `A228361(A004280(n+2))-1` -/
def P2370938516484779225.Spec : Prop :=
  ∀ n, P2370938516484779225.a n = A289692 (n + 1)

end A289692

/-!
# A289693: The number of partitions of [n] with exactly 3 blocks without peaks.

The programs for A289693, there is no canonical definition to state claims against.
-/

/-! ## A289693.P6573791906988637435

`A046155(A225617(n+1))`
-/

namespace A289693.P6573791906988637435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A225617 (n + 1)).toNat

end

end A289693.P6573791906988637435

/-! ## A289693.P9805670872102499699

`A166091(C(A219226(n), 2))`
-/

namespace A289693.P9805670872102499699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166091 (Nat.choose (A219226 n).toNat 2)

end

end A289693.P9805670872102499699

/-! ## A289693.P17060200578757520498

`A057960(n)%A318229(n+1)`
-/

namespace A289693.P17060200578757520498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057960 n) (A318229 (n + 1))

end

end A289693.P17060200578757520498

/-! ## A289693.P545251780868848393

`∑[A155020(n)]%A318229(n+1)`
-/

namespace A289693.P545251780868848393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A318229 (n + 1))

end

end A289693.P545251780868848393

/-!
# A289694: The number of partitions of [n] with exactly 4 blocks without peaks.

The programs for A289694, there is no canonical definition to state claims against.
-/

/-! ## A289694.P8404051425621117607

`A340279(∑[(2-n)²]-3)`
-/

namespace A289694.P8404051425621117607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340279 (∑ j ∈ Finset.range (n + 1), f1 j - 3).toNat

end

end A289694.P8404051425621117607

/-! ## A289694.P8084002193495945736

`A194698(A179341(n+1))`
-/

namespace A289694.P8084002193495945736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A179341 (n + 1)).toNat

end

end A289694.P8084002193495945736

/-! ## A289694.P3374703945673177217

`A340280(A331934(n+2))`
-/

namespace A289694.P3374703945673177217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (A331934 (n + 2)).toNat

end

end A289694.P3374703945673177217

/-! ## A289694.P16713510072269002788

`A328607(∑[A014968(n)-n])`
-/

namespace A289694.P16713510072269002788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014968 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289694.P16713510072269002788

/-!
# A289697: Numbers k such that k!6 - 24 is prime, where k!6 is the sextuple factorial number (A085158).

The programs for A289697, there is no canonical definition to state claims against.
-/

/-! ## A289697.P2203590822802591349

`eq[A001285(A206800(n)), A032741(n)]`
-/

namespace A289697.P2203590822802591349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A206800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289697.P2203590822802591349

/-! ## A289697.P8681103722667163758

`A050376(lt[A207901(n+1), A304086(2*(n+1))])`
-/

namespace A289697.P8681103722667163758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304086 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289697.P8681103722667163758

/-! ## A289697.P5017568067939722961

`A305703(A004917(n+4))+3`
-/

namespace A289697.P5017568067939722961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305703 (A004917 (n + 4)).toNat + 3

end

end A289697.P5017568067939722961

/-! ## A289697.P4358991033951001401

`A061345(lt[5, A337107(3*n+2)])`
-/

namespace A289697.P4358991033951001401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337107 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A289697.P4358991033951001401

/-! ## A289697.P1766711079583760266

`lt[∑[A282290(n)], A282289(2*n+3)]`
-/

namespace A289697.P1766711079583760266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282289 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A289697.P1766711079583760266

