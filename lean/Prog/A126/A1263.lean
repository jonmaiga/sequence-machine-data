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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
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
# A126302: a(n) = Sum of peak heights of the n-th Dyck-path encoded by A014486(n).

The programs for A126302, there is no canonical definition to state claims against.
-/

/-! ## A126302.P9620643292933562217

`A196048(A127301(n))`
-/

namespace A126302.P9620643292933562217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A127301 n).toNat

end

end A126302.P9620643292933562217

/-! ## A126302.P11063880812404575260

`A196048(A243491(n)-A243492(n))`
-/

namespace A126302.P11063880812404575260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A243491 n - A243492 n).toNat

end

end A126302.P11063880812404575260

/-! ## A126302.P14003539918072773878

`A064097(A127301(n)%A050414(3*n+4))`
-/

namespace A126302.P14003539918072773878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (Int.tmod (A127301 n) (A050414 (3 * n + 4))).toNat

end

end A126302.P14003539918072773878

/-! ## A126302.P6823517716355859150

`A003313(A127301(n))^A007318(A339972(n))`
-/

namespace A126302.P6823517716355859150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003313 (A127301 n).toNat : ℚ) ^ (A007318 (A339972 n).toNat : ℤ)

end

end A126302.P6823517716355859150

/-!
# A126303: a(n) = number of nodes with odd distance to the root in the n-th plane general tree encoded by A014486(n). Both internal and terminal nodes (leaves) are counted.

The programs for A126303, there is no canonical definition to state claims against.
-/

/-! ## A126303.P16435401802422530725

`∑{digits}[A085185(n), floor(#/2)]`
-/

namespace A126303.P16435401802422530725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊(x : ℚ) / 2⌋).sum

end

end A126303.P16435401802422530725

/-! ## A126303.P13181804693713530762

`round(log(log(2*(2*n+1)²))²)-(A126305(n)-1)`
-/

namespace A126303.P13181804693713530762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (2 * (2 * n + 1) ^ 2 : ℝ)) ^ 2) - (A126305 n - 1)

end

end A126303.P13181804693713530762

/-! ## A126303.P13513628407629612888

`A057514(A057117(n))`
-/

namespace A126303.P13513628407629612888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A057117 n).toNat

end

end A126303.P13513628407629612888

/-! ## A126303.P10720648036239483168

`A057514(A082356(n))`
-/

namespace A126303.P10720648036239483168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A082356 n).toNat

end

end A126303.P10720648036239483168

/-! ## A126303.P670994704328478660

`A057514(A082360(n))`
-/

namespace A126303.P670994704328478660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A082360 n).toNat

end

end A126303.P670994704328478660

/-! ## A126303.P8708511115108658351

`A057514(A085169(n))`
-/

namespace A126303.P8708511115108658351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 (A085169 n).toNat

end

end A126303.P8708511115108658351

/-! ## A126303.P8367618432124462116

`A139352(A014486(n))`
-/

namespace A126303.P8367618432124462116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A014486 n).toNat

end

end A126303.P8367618432124462116

/-! ## A126303.P3682142753332389357

`A139351(A057520(n))`
-/

namespace A126303.P3682142753332389357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A057520 n).toNat

end

end A126303.P3682142753332389357

/-! ## A126303.P11025462924358465338

`A139351(A072800(n))`
-/

namespace A126303.P11025462924358465338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A072800 n).toNat

end

end A126303.P11025462924358465338

/-! ## A126303.P14385717826280475827

`A139351(A194045(n))`
-/

namespace A126303.P14385717826280475827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A194045 n).toNat

end

end A126303.P14385717826280475827

/-! ## A126303.P5293332496512964938

`A139351(2*A014486(n))`
-/

namespace A126303.P5293332496512964938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A014486 n).toNat

end

end A126303.P5293332496512964938

/-! ## A126303.P13256637379419509363

`A139352(2*A057520(n))`
-/

namespace A126303.P13256637379419509363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A057520 n).toNat

end

end A126303.P13256637379419509363

/-! ## A126303.P9304167004644144409

`A139352(2*A072800(n))`
-/

namespace A126303.P9304167004644144409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A072800 n).toNat

end

end A126303.P9304167004644144409

/-! ## A126303.P6925833764268017514

`A139351(A014486(n)/2)`
-/

namespace A126303.P6925833764268017514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A126303.P6925833764268017514

/-! ## A126303.P18337314375591258093

`A139352(A057547(n)/2)`
-/

namespace A126303.P18337314375591258093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((A057547 n : ℚ) / 2)).toNat

end

end A126303.P18337314375591258093

/-! ## A126303.P10540598953925629544

`A139352(A194045(n)/2)`
-/

namespace A126303.P10540598953925629544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A126303.P10540598953925629544

/-! ## A126303.P14781140055716707146

`A072643(n)-A126304(n)`
-/

namespace A126303.P14781140055716707146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n - A126304 n

end

end A126303.P14781140055716707146

/-! ## A126303.P17739581335952092938

`dr(A063171(n)-A126304(n))`
-/

namespace A126303.P17739581335952092938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A063171 n - A126304 n)

end

end A126303.P17739581335952092938

/-! ## A126303.P17473846065932112065

`A358551(n+1)-A126305(n)`
-/

namespace A126303.P17473846065932112065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358551 (n + 1) - A126305 n

end

end A126303.P17473846065932112065

/-!
# A126304: a(n) = number of nodes with nonzero even distance to the root in the n-th plane general tree encoded by A014486(n).

The programs for A126304, there is no canonical definition to state claims against.
-/

/-! ## A126304.P10818745947516228028

`A126305(n)-1`
-/

namespace A126304.P10818745947516228028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 n - 1

end

end A126304.P10818745947516228028

/-! ## A126304.P5494729234487861903

`∑{digits}[A085185(n), #%2]`
-/

namespace A126304.P5494729234487861903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x % 2).sum

end

end A126304.P5494729234487861903

/-! ## A126304.P5459526612037475981

`A139351(A014486(n))`
-/

namespace A126304.P5459526612037475981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A014486 n).toNat

end

end A126304.P5459526612037475981

/-! ## A126304.P9564211477932302055

`A126306(A057117(n))`
-/

namespace A126304.P9564211477932302055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057117 n).toNat

end

end A126304.P9564211477932302055

/-! ## A126304.P11163089635252485309

`A139352(A057520(n))`
-/

namespace A126304.P11163089635252485309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A057520 n).toNat

end

end A126304.P11163089635252485309

/-! ## A126304.P764923818239707658

`A127284(A074684(n))`
-/

namespace A126304.P764923818239707658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A074684 n).toNat

end

end A126304.P764923818239707658

/-! ## A126304.P4400190843845259746

`A126306(A082356(n))`
-/

namespace A126304.P4400190843845259746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A082356 n).toNat

end

end A126304.P4400190843845259746

/-! ## A126304.P2237751278357633934

`A126306(A082360(n))`
-/

namespace A126304.P2237751278357633934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A082360 n).toNat

end

end A126304.P2237751278357633934

/-! ## A126304.P4240200466802308885

`A127284(A082358(n))`
-/

namespace A126304.P4240200466802308885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A082358 n).toNat

end

end A126304.P4240200466802308885

/-! ## A126304.P14546645477142717174

`A126306(A085169(n))`
-/

namespace A126304.P14546645477142717174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A085169 n).toNat

end

end A126304.P14546645477142717174

/-! ## A126304.P2717247718945376107

`A139352(A072800(n))`
-/

namespace A126304.P2717247718945376107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A072800 n).toNat

end

end A126304.P2717247718945376107

/-! ## A126304.P14558590374214215422

`A127284(A086425(n))`
-/

namespace A126304.P14558590374214215422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A086425 n).toNat

end

end A126304.P14558590374214215422

/-! ## A126304.P10779860988346647408

`A127284(A125982(n))`
-/

namespace A126304.P10779860988346647408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A125982 n).toNat

end

end A126304.P10779860988346647408

/-! ## A126304.P5235549862653241145

`A139352(A194045(n))`
-/

namespace A126304.P5235549862653241145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A194045 n).toNat

end

end A126304.P5235549862653241145

/-! ## A126304.P15800379024418947552

`A139352(2*A014486(n))`
-/

namespace A126304.P15800379024418947552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A014486 n).toNat

end

end A126304.P15800379024418947552

/-! ## A126304.P14474493548198099346

`A139351(2*A057520(n))`
-/

namespace A126304.P14474493548198099346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A057520 n).toNat

end

end A126304.P14474493548198099346

/-! ## A126304.P12252167067576610522

`A139351(2*A072800(n))`
-/

namespace A126304.P12252167067576610522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A072800 n).toNat

end

end A126304.P12252167067576610522

/-! ## A126304.P12120113340407480755

`A139352(A014486(n)/2)`
-/

namespace A126304.P12120113340407480755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A126304.P12120113340407480755

/-! ## A126304.P16003316545100404206

`A139351(A194045(n)/2)`
-/

namespace A126304.P16003316545100404206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A126304.P16003316545100404206

/-! ## A126304.P16110584758091942425

`A072643(n)-A126303(n)`
-/

namespace A126304.P16110584758091942425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n - A126303 n

end

end A126304.P16110584758091942425

/-!
# A126305: a(n) = number of nodes with even distance to the root in the n-th plane general tree encoded by A014486(n). The root node itself is also included.

The programs for A126305, there is no canonical definition to state claims against.
-/

/-! ## A126305.P7876700237289314005

`A126304(n)+1`
-/

namespace A126305.P7876700237289314005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 n + 1

end

end A126305.P7876700237289314005

/-! ## A126305.P17363049100203161047

`∑{digits}[A085185(n), #%2]+1`
-/

namespace A126305.P17363049100203161047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x % 2).sum + 1

end

end A126305.P17363049100203161047

/-! ## A126305.P5517742191371949218

`A139351(A014486(n)+1)`
-/

namespace A126305.P5517742191371949218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A014486 n + 1).toNat

end

end A126305.P5517742191371949218

/-! ## A126305.P11772291756145333626

`A126306(A057117(n))+1`
-/

namespace A126305.P11772291756145333626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A057117 n).toNat + 1

end

end A126305.P11772291756145333626

/-! ## A126305.P14530201770876404600

`A139352(A057520(n))+1`
-/

namespace A126305.P14530201770876404600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A057520 n).toNat + 1

end

end A126305.P14530201770876404600

/-! ## A126305.P4864823932963499961

`A127284(A074684(n))+1`
-/

namespace A126305.P4864823932963499961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A074684 n).toNat + 1

end

end A126305.P4864823932963499961

/-! ## A126305.P5833847881909600867

`A139352(A072800(n))+1`
-/

namespace A126305.P5833847881909600867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A072800 n).toNat + 1

end

end A126305.P5833847881909600867

/-! ## A126305.P16206132815133957880

`A127284(A125982(n))+1`
-/

namespace A126305.P16206132815133957880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A125982 n).toNat + 1

end

end A126305.P16206132815133957880

/-! ## A126305.P18398629077858949805

`A139352(A194045(n))+1`
-/

namespace A126305.P18398629077858949805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A194045 n).toNat + 1

end

end A126305.P18398629077858949805

/-! ## A126305.P9330241009383306913

`A139351(A057547(n)/2)`
-/

namespace A126305.P9330241009383306913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A057547 n : ℚ) / 2)).toNat

end

end A126305.P9330241009383306913

/-! ## A126305.P7976414983063378875

`A139351(or(1, A014486(n)))`
-/

namespace A126305.P7976414983063378875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.lor 1 (A014486 n)).toNat

end

end A126305.P7976414983063378875

/-! ## A126305.P4135944794919314377

`A139351(xor(1, A014486(n)))`
-/

namespace A126305.P4135944794919314377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.xor 1 (A014486 n)).toNat

end

end A126305.P4135944794919314377

/-! ## A126305.P10962837994627173966

`A139352(2*(A014486(n)+1))`
-/

namespace A126305.P10962837994627173966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * (A014486 n + 1)).toNat

end

end A126305.P10962837994627173966

/-! ## A126305.P7042099478551084723

`A139351(2*A057520(n)+1)`
-/

namespace A126305.P7042099478551084723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A057520 n + 1).toNat

end

end A126305.P7042099478551084723

/-! ## A126305.P16562159400655103915

`A139351(2*A072800(n)+1)`
-/

namespace A126305.P16562159400655103915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A072800 n + 1).toNat

end

end A126305.P16562159400655103915

/-! ## A126305.P14233278040192080581

`A139352(A014486(n)/2)+1`
-/

namespace A126305.P14233278040192080581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat + 1

end

end A126305.P14233278040192080581

/-! ## A126305.P14135513331868984410

`A139351(A194045(n)/2+1)`
-/

namespace A126305.P14135513331868984410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2 + 1)).toNat

end

end A126305.P14135513331868984410

/-! ## A126305.P2054962171613011301

`A072643(n)+1-A126303(n)`
-/

namespace A126305.P2054962171613011301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n + (1 - A126303 n)

end

end A126305.P2054962171613011301

/-! ## A126305.P14153306234490447358

`A358551(n+1)-A126303(n)`
-/

namespace A126305.P14153306234490447358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358551 (n + 1) - A126303 n

end

end A126305.P14153306234490447358

/-! ## A126305.P8697384891343457702

`∑{digits}[A085185(n)+1, A000035(#)]`
-/

namespace A126305.P8697384891343457702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085185 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A126305.P8697384891343457702

/-!
# A126306: a(n) = number of double-rises (UU-subsequences) in the n-th Dyck path encoded by A014486(n).

The programs for A126306, there is no canonical definition to state claims against.
-/

/-! ## A126306.P16291477845527983784

`A014081(A014486(n))`
-/

namespace A126306.P16291477845527983784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A014486 n).toNat

end

end A126306.P16291477845527983784

/-! ## A126306.P17556345318441746939

`A072643(n)-A057514(n)`
-/

namespace A126306.P17556345318441746939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n - A057514 n

end

end A126306.P17556345318441746939

/-! ## A126306.P4950782440319752360

`∑[char[A014137(n)]]-A057514(n)`
-/

namespace A126306.P4950782440319752360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057514 n

end

end A126306.P4950782440319752360

/-! ## A126306.P13683373146550686756

`A127284(A057163(n))`
-/

namespace A126306.P13683373146550686756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A057163 n).toNat

end

end A126306.P13683373146550686756

/-! ## A126306.P13670182167666024198

`A127284(A057505(n))`
-/

namespace A126306.P13670182167666024198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A057505 n).toNat

end

end A126306.P13670182167666024198

/-! ## A126306.P15330934077512602668

`A127284(A057506(n))`
-/

namespace A126306.P15330934077512602668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A057506 n).toNat

end

end A126306.P15330934077512602668

/-! ## A126306.P14649976603721186270

`A127284(A071663(n))`
-/

namespace A126306.P14649976603721186270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A071663 n).toNat

end

end A126306.P14649976603721186270

/-! ## A126306.P305678397280750670

`A127284(A071664(n))`
-/

namespace A126306.P305678397280750670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A071664 n).toNat

end

end A126306.P305678397280750670

/-! ## A126306.P5158450661503221734

`A127284(A071667(n))`
-/

namespace A126306.P5158450661503221734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A071667 n).toNat

end

end A126306.P5158450661503221734

/-! ## A126306.P3024784642982642497

`A127284(A071668(n))`
-/

namespace A126306.P3024784642982642497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A071668 n).toNat

end

end A126306.P3024784642982642497

/-! ## A126306.P13948455157142811353

`A127284(A073282(n))`
-/

namespace A126306.P13948455157142811353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A073282 n).toNat

end

end A126306.P13948455157142811353

/-! ## A126306.P1208698215884331475

`A127284(A073283(n))`
-/

namespace A126306.P1208698215884331475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A073283 n).toNat

end

end A126306.P1208698215884331475

/-! ## A126306.P9005548268597328687

`A127284(A125976(n))`
-/

namespace A126306.P9005548268597328687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A125976 n).toNat

end

end A126306.P9005548268597328687

/-! ## A126306.P7555119509836486916

`A127284(A125986(n))`
-/

namespace A126306.P7555119509836486916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A125986 n).toNat

end

end A126306.P7555119509836486916

/-! ## A126306.P14877128176848290631

`A000120(and(A014486(n), A057520(n))/2)`
-/

namespace A126306.P14877128176848290631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((Int.land (A014486 n) (A057520 n) : ℚ) / 2)).toNat

end

end A126306.P14877128176848290631

/-! ## A126306.P3328380816382635705

`A000120(and(A014486(n), A057520(n)))`
-/

namespace A126306.P3328380816382635705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A014486 n) (A057520 n)).toNat

end

end A126306.P3328380816382635705

/-! ## A126306.P6175958603835568782

`A000120(and(2*A057520(n), A057520(n)))`
-/

namespace A126306.P6175958603835568782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (2 * A057520 n) (A057520 n)).toNat

end

end A126306.P6175958603835568782

/-! ## A126306.P10021698192265796228

`A000120(and(A014486(n)/2, A014486(n)))`
-/

namespace A126306.P10021698192265796228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)) (A014486 n)).toNat

end

end A126306.P10021698192265796228

/-! ## A126306.P13757834754322514067

`A000120(and(A194045(n)/2, A057520(n)))`
-/

namespace A126306.P13757834754322514067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)) (A057520 n)).toNat

end

end A126306.P13757834754322514067

/-! ## A126306.P10206100741254693377

`A014081(A057520(n))`
-/

namespace A126306.P10206100741254693377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A057520 n).toNat

end

end A126306.P10206100741254693377

/-!
# A126307: a(n) is the length of the leftmost ascent (i.e., height of the first peak) in the n-th Dyck path encoded by A014486(n).

The programs for A126307, there is no canonical definition to state claims against.
-/

/-! ## A126307.P15691173524911552131

`A090996(A014486(n))`
-/

namespace A126307.P15691173524911552131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A014486 n).toNat

end

end A126307.P15691173524911552131

/-! ## A126307.P5890971071036974139

`∑{e}[A395051(n), #]`
-/

namespace A126307.P5890971071036974139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A126307.P5890971071036974139

/-! ## A126307.P18366460105331954395

`val(A072800(n)+1, 2)`
-/

namespace A126307.P18366460105331954395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072800 n + 1).toNat 2

end

end A126307.P18366460105331954395

/-! ## A126307.P9369310541483815930

`A057515(A057161(n))`
-/

namespace A126307.P9369310541483815930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057161 n).toNat

end

end A126307.P9369310541483815930

/-! ## A126307.P17558963898082476719

`A057515(A057163(n))`
-/

namespace A126307.P17558963898082476719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057163 n).toNat

end

end A126307.P17558963898082476719

/-! ## A126307.P5336489367091203068

`A057515(A057505(n))`
-/

namespace A126307.P5336489367091203068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057505 n).toNat

end

end A126307.P5336489367091203068

/-! ## A126307.P9688648350057619196

`A057515(A069767(n))`
-/

namespace A126307.P9688648350057619196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A069767 n).toNat

end

end A126307.P9688648350057619196

/-! ## A126307.P280260608847209561

`A057515(A073282(n))`
-/

namespace A126307.P280260608847209561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A073282 n).toNat

end

end A126307.P280260608847209561

/-! ## A126307.P11160083497689098167

`A057515(A082347(n))`
-/

namespace A126307.P11160083497689098167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A082347 n).toNat

end

end A126307.P11160083497689098167

/-! ## A126307.P17288737170397349482

`A057515(A082348(n))`
-/

namespace A126307.P17288737170397349482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A082348 n).toNat

end

end A126307.P17288737170397349482

/-! ## A126307.P7926864824509321899

`A057515(A086426(n))`
-/

namespace A126307.P7926864824509321899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A086426 n).toNat

end

end A126307.P7926864824509321899

/-! ## A126307.P3572617309239241444

`A057515(A086428(n))`
-/

namespace A126307.P3572617309239241444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A086428 n).toNat

end

end A126307.P3572617309239241444

/-! ## A126307.P16542454466976685904

`A090996(A057520(n))`
-/

namespace A126307.P16542454466976685904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A057520 n).toNat

end

end A126307.P16542454466976685904

/-! ## A126307.P4764532863209547067

`A099563(A059985(n))`
-/

namespace A126307.P4764532863209547067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A059985 n).toNat

end

end A126307.P4764532863209547067

/-! ## A126307.P17397245509416130155

`A089309(A072800(n))`
-/

namespace A126307.P17397245509416130155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A072800 n).toNat

end

end A126307.P17397245509416130155

/-! ## A126307.P17246563320915748899

`A099563(A071156(n))`
-/

namespace A126307.P17246563320915748899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A071156 n).toNat

end

end A126307.P17246563320915748899

/-! ## A126307.P16502959057680244541

`A057515(A125985(n))`
-/

namespace A126307.P16502959057680244541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A125985 n).toNat

end

end A126307.P16502959057680244541

/-! ## A126307.P9785352482802397194

`A236859(∑[A057515(n)])`
-/

namespace A126307.P9785352482802397194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126307.P9785352482802397194

/-! ## A126307.P14083631140824678843

`A007814(A072800(n)+1)`
-/

namespace A126307.P14083631140824678843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A072800 n + 1).toNat

end

end A126307.P14083631140824678843

/-! ## A126307.P8732384822750457050

`A090996(eq[1, A080116(n)])`
-/

namespace A126307.P8732384822750457050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126307.P8732384822750457050

/-!
# A126308: Delete '10'-substrings in the binary expansion of n.

The programs for A126308, there is no canonical definition to state claims against.
-/

/-! ## A126308.P6367391040017048102

`A318921(Δ[n²])`
-/

namespace A126308.P6367391040017048102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126308.P6367391040017048102

/-! ## A126308.P11215500114270034451

`A318921(8*n+4)/2`
-/

namespace A126308.P11215500114270034451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318921 (8 * n + 4) : ℚ) / 2

end

end A126308.P11215500114270034451

/-! ## A126308.P6661338141806376201

`A318921(2*n+1)%64`
-/

namespace A126308.P6661338141806376201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318921 (2 * n + 1)) 64

end

end A126308.P6661338141806376201

/-! ## A126308.P5751517427618782200

`n-A319409(and(n, n+1))`
-/

namespace A126308.P5751517427618782200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A319409 (Nat.land n (n + 1))

end

end A126308.P5751517427618782200

/-! ## A126308.P8319554457677172423

`Δ[n²]-A319409(Δ[n²])`
-/

namespace A126308.P8319554457677172423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A319409 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A126308.P8319554457677172423

/-! ## A126308.P12584647784949533428

`or(char[1], A318921(8*n+5))`
-/

namespace A126308.P12584647784949533428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A318921 (8 * n + 5))

end

end A126308.P12584647784949533428

/-! ## A126308.P12313551671217579654

`A319419(32*(2*n+1))/16`
-/

namespace A126308.P12313551671217579654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319419 (32 * (2 * n + 1)) : ℚ) / 16

end

end A126308.P12313551671217579654

/-! ## A126308.P10645144066073934948

`filter[A318921(2*n+1), A236861(#)]`
-/

namespace A126308.P10645144066073934948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A126308.P10645144066073934948

/-! ## A126308.P1298757550560630013

`filter[A318921(2*n+1), A322674(#)]`
-/

namespace A126308.P1298757550560630013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322674 (f1 j).toNat = 1) n)

end

end A126308.P1298757550560630013

/-!
# A126309: A014486-index for the Dyck path "compressed" from the n-th Dyck path encoded by A014486(n).

The programs for A126309, there is no canonical definition to state claims against.
-/

/-! ## A126309.P5314331272377644092

`A125985(A126310(A125986(n)))`
-/

namespace A126309.P5314331272377644092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125985 (A126310 (A125986 n).toNat).toNat

end

end A126309.P5314331272377644092

/-! ## A126309.P11151442056045406343

`A343006(A127301(n))%A005518(n+1)`
-/

namespace A126309.P11151442056045406343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343006 (A127301 n).toNat) (A005518 (n + 1))

end

end A126309.P11151442056045406343

/-! ## A126309.P1033619342724456841

`A343006(A243491(n)-A243492(n))%(A302641(n+1)+A063775(A184628(n+1)))`
-/

namespace A126309.P1033619342724456841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343006 (A243491 n - A243492 n).toNat) (A302641 (n + 1) + A063775 (A184628 (n + 1)).toNat)

end

end A126309.P1033619342724456841

/-! ## A126309.P9881410647943841620

`A126302(A126306(n)^A055177(n+1))`
-/

namespace A126309.P9881410647943841620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (SequenceMachineLib.roundAway ((A126306 n : ℚ) ^ (A055177 (n + 1) : ℤ))).toNat

end

end A126309.P9881410647943841620

/-!
# A126310: A014486-index for the Dyck path "derived" from the n-th Dyck path encoded by A014486(n).

The programs for A126310, there is no canonical definition to state claims against.
-/

/-! ## A126310.P1707506418523545772

`A125986(A126309(A125985(n)))`
-/

namespace A126310.P1707506418523545772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125986 (A126309 (A125985 n).toNat).toNat

end

end A126310.P1707506418523545772

/-! ## A126310.P18006180349541812342

`A125986(A126309(A125987(A125986(n))))`
-/

namespace A126310.P18006180349541812342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125986 (A126309 (A125987 (A125986 n).toNat).toNat).toNat

end

end A126310.P18006180349541812342

/-! ## A126310.P6608671708628922719

`A127284(n)+A055641(A017914(n))`
-/

namespace A126310.P6608671708628922719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 n + A055641 (A017914 n).toNat

end

end A126310.P6608671708628922719

/-! ## A126310.P11952036589698090232

`A057514(n)-A267683(A200204(n+1))`
-/

namespace A126310.P11952036589698090232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057514 n - A267683 (A200204 (n + 1)).toNat

end

end A126310.P11952036589698090232

/-!
# A126312: Fixed points of permutation A071661/A071662.

The programs for A126312, there is no canonical definition to state claims against.
-/

/-! ## A126312.P1236486731334065458

`∩[A061856(n), A243490(n)]`
-/

namespace A126312.P1236486731334065458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061856 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126312.P1236486731334065458

/-! ## A126312.P8823187930736953216

`eq[n, A057506(A057506(n))]`
-/

namespace A126312.P8823187930736953216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126312.P8823187930736953216

/-! ## A126312.P15843846387754985225

`eq[n, A071661(n)]`
-/

namespace A126312.P15843846387754985225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126312.P15843846387754985225

/-! ## A126312.P17785872993294546888

`eq[n, A071662(n)]`
-/

namespace A126312.P17785872993294546888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126312.P17785872993294546888

/-! ## A126312.P12083513193951699129

`eq[A057505(n), A057506(n)]`
-/

namespace A126312.P12083513193951699129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126312.P12083513193951699129

/-!
# A126313: Signature-permutation of a Catalan automorphism: composition of A069772 and A125976.

The programs for A126313, there is no canonical definition to state claims against.
-/

/-! ## A126313.P11765125001450587501

`A126315(A057164(n))`
-/

namespace A126313.P11765125001450587501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A057164 n).toNat

end

end A126313.P11765125001450587501

/-! ## A126313.P8351634840820170374

`A069772(A125976(n))`
-/

namespace A126313.P8351634840820170374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A125976 n).toNat

end

end A126313.P8351634840820170374

/-! ## A126313.P15393648741593406597

`A126315(A057502(A069888(n)))`
-/

namespace A126313.P15393648741593406597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A057502 (A069888 n).toNat).toNat

end

end A126313.P15393648741593406597

/-! ## A126313.P16702811445088471963

`A126315(A069772(A069771(n)))`
-/

namespace A126313.P16702811445088471963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A069772 (A069771 n).toNat).toNat

end

end A126313.P16702811445088471963

/-! ## A126313.P8071072499396143730

`A126315(A057505(A125976(A125978(n))))`
-/

namespace A126313.P8071072499396143730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 (A057505 (A125976 (A125978 n).toNat).toNat).toNat

end

end A126313.P8071072499396143730

/-! ## A126313.P16367487209410333640

`A069771(A125979(n))`
-/

namespace A126313.P16367487209410333640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A125979 n).toNat

end

end A126313.P16367487209410333640

/-! ## A126313.P4344127045775421899

`A126290(A069772(n))`
-/

namespace A126313.P4344127045775421899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (A069772 n).toNat

end

end A126313.P4344127045775421899

/-! ## A126313.P15528968029669001600

`A126290(A057164(A069771(n)))`
-/

namespace A126313.P15528968029669001600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (A057164 (A069771 n).toNat).toNat

end

end A126313.P15528968029669001600

/-! ## A126313.P3218140766179554094

`A126290(A125976(A126314(n)))`
-/

namespace A126313.P3218140766179554094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (A125976 (A126314 n).toNat).toNat

end

end A126313.P3218140766179554094

/-! ## A126313.P6280967778506426782

`A126290(A069888(A069771(A057501(n))))`
-/

namespace A126313.P6280967778506426782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (A069888 (A069771 (A057501 n).toNat).toNat).toNat

end

end A126313.P6280967778506426782

/-!
# A126314: Signature-permutation of a Catalan automorphism: composition of A125976 and A069772.

The programs for A126314, there is no canonical definition to state claims against.
-/

/-! ## A126314.P13070932162838934842

`A057164(A126316(n))`
-/

namespace A126314.P13070932162838934842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A126316 n).toNat

end

end A126314.P13070932162838934842

/-! ## A126314.P8721667655620207923

`A125976(A069772(n))`
-/

namespace A126314.P8721667655620207923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069772 n).toNat

end

end A126314.P8721667655620207923

/-! ## A126314.P2979648115843188553

`A069772(A126290(n))`
-/

namespace A126314.P2979648115843188553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A126290 n).toNat

end

end A126314.P2979648115843188553

/-! ## A126314.P11937958225575771931

`A125976(A069771(A057164(n)))`
-/

namespace A126314.P11937958225575771931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069771 (A057164 n).toNat).toNat

end

end A126314.P11937958225575771931

/-! ## A126314.P9864531536191906221

`A069771(A126313(A069771(n)))`
-/

namespace A126314.P9864531536191906221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A126313 (A069771 n).toNat).toNat

end

end A126314.P9864531536191906221

/-! ## A126314.P17927488527189477075

`A125976(A126313(A125976(n)))`
-/

namespace A126314.P17927488527189477075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A126313 (A125976 n).toNat).toNat

end

end A126314.P17927488527189477075

/-! ## A126314.P11758535258025705804

`A125976(A126315(A125979(n)))`
-/

namespace A126314.P11758535258025705804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A126315 (A125979 n).toNat).toNat

end

end A126314.P11758535258025705804

/-! ## A126314.P15180723796467474432

`A125976(A069771(A057501(A069889(n))))`
-/

namespace A126314.P15180723796467474432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069771 (A057501 (A069889 n).toNat).toNat).toNat

end

end A126314.P15180723796467474432

/-! ## A126314.P15083931019686731534

`A125976(A126315(A057505(A125977(n))))`
-/

namespace A126314.P15083931019686731534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A126315 (A057505 (A125977 n).toNat).toNat).toNat

end

end A126314.P15083931019686731534

/-! ## A126314.P3361439209497463057

`A069772(A126313(A069772(A069766(A069766(n)))))`
-/

namespace A126314.P3361439209497463057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A126313 (A069772 (A069766 (A069766 n).toNat).toNat).toNat).toNat

end

end A126314.P3361439209497463057

/-!
# A126315: Signature-permutation of a Catalan automorphism: composition of A069771 and A125976.

The programs for A126315, there is no canonical definition to state claims against.
-/

/-! ## A126315.P11737757731615946373

`A126313(A057164(n))`
-/

namespace A126315.P11737757731615946373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A057164 n).toNat

end

end A126315.P11737757731615946373

/-! ## A126315.P1792103412464664050

`A069771(A125976(n))`
-/

namespace A126315.P1792103412464664050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A125976 n).toNat

end

end A126315.P1792103412464664050

/-! ## A126315.P2229131730690684044

`A126313(A069888(A057501(n)))`
-/

namespace A126315.P2229131730690684044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A069888 (A057501 n).toNat).toNat

end

end A126315.P2229131730690684044

/-! ## A126315.P9498670546825781636

`A126313(A057502(A069888(n)))`
-/

namespace A126315.P9498670546825781636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A057502 (A069888 n).toNat).toNat

end

end A126315.P9498670546825781636

/-! ## A126315.P14506561651265459809

`A126313(A057501(A069889(n)))`
-/

namespace A126315.P14506561651265459809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A057501 (A069889 n).toNat).toNat

end

end A126315.P14506561651265459809

/-! ## A126315.P2054053918729864144

`A126313(A069772(A069771(n)))`
-/

namespace A126315.P2054053918729864144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A069772 (A069771 n).toNat).toNat

end

end A126315.P2054053918729864144

/-! ## A126315.P15581568259143317208

`A069772(A125979(n))`
-/

namespace A126315.P15581568259143317208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A125979 n).toNat

end

end A126315.P15581568259143317208

/-! ## A126315.P6109332227236437332

`A057164(A126290(A069772(n)))`
-/

namespace A126315.P6109332227236437332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A126290 (A069772 n).toNat).toNat

end

end A126315.P6109332227236437332

/-! ## A126315.P76630435467714941

`A126313(A126313(A126316(n)))`
-/

namespace A126315.P76630435467714941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 (A126313 (A126316 n).toNat).toNat

end

end A126315.P76630435467714941

/-! ## A126315.P16084344013359333278

`A069772(A126316(A125976(A126314(n))))`
-/

namespace A126315.P16084344013359333278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (A126316 (A125976 (A126314 n).toNat).toNat).toNat

end

end A126315.P16084344013359333278

/-!
# A126316: Signature-permutation of a Catalan automorphism: composition of A125976 and A069771.

The programs for A126316, there is no canonical definition to state claims against.
-/

/-! ## A126316.P6749304531487752891

`A057164(A126314(n))`
-/

namespace A126316.P6749304531487752891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A126314 n).toNat

end

end A126316.P6749304531487752891

/-! ## A126316.P6305434056711672745

`A125976(A069771(n))`
-/

namespace A126316.P6305434056711672745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069771 n).toNat

end

end A126316.P6305434056711672745

/-! ## A126316.P16817078486712118882

`A125979(A069772(n))`
-/

namespace A126316.P16817078486712118882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125979 (A069772 n).toNat

end

end A126316.P16817078486712118882

/-! ## A126316.P18260542825560241766

`A069771(A126290(n))`
-/

namespace A126316.P18260542825560241766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 (A126290 n).toNat

end

end A126316.P18260542825560241766

/-! ## A126316.P12514557665362163282

`A125976(A069772(A057164(n)))`
-/

namespace A126316.P12514557665362163282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A069772 (A057164 n).toNat).toNat

end

end A126316.P12514557665362163282

/-! ## A126316.P7729869098102537466

`A125976(A126315(A125976(n)))`
-/

namespace A126316.P7729869098102537466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A126315 (A125976 n).toNat).toNat

end

end A126316.P7729869098102537466

/-! ## A126316.P17772161495586324591

`A125979(A126315(A125979(n)))`
-/

namespace A126316.P17772161495586324591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125979 (A126315 (A125979 n).toNat).toNat

end

end A126316.P17772161495586324591

/-! ## A126316.P3664809838814482425

`A125976(A126313(A057505(A125977(n))))`
-/

namespace A126316.P3664809838814482425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (A126313 (A057505 (A125977 n).toNat).toNat).toNat

end

end A126316.P3664809838814482425

/-! ## A126316.P5070638930522182419

`A126314(A057164(n))`
-/

namespace A126316.P5070638930522182419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 (A057164 n).toNat

end

end A126316.P5070638930522182419

/-! ## A126316.P6472250598640244932

`A126314(A069888(A057501(n)))`
-/

namespace A126316.P6472250598640244932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 (A069888 (A057501 n).toNat).toNat

end

end A126316.P6472250598640244932

/-!
# A126317: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A125977/A125978.

The programs for A126317, there is no canonical definition to state claims against.
-/

/-! ## A126317.P3012557930535890231

`abs(A216960(2*n+3)-A093371(A014491(3^n+1)+n))`
-/

namespace A126317.P3012557930535890231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A216960 (2 * n + 3) - A093371 (A014491 (3 ^ n + 1) + (n : ℤ)).toNat|

end

end A126317.P3012557930535890231

/-!
# A126320: Signature-permutation of a self-inverse Catalan automorphism: A057163 conjugated by A057164.

The programs for A126320, there is no canonical definition to state claims against.
-/

/-! ## A126320.P11932850901481363287

`A057505(A057164(n))`
-/

namespace A126320.P11932850901481363287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057164 n).toNat

end

end A126320.P11932850901481363287

/-! ## A126320.P6715207027733100535

`A057164(A057506(n))`
-/

namespace A126320.P6715207027733100535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057506 n).toNat

end

end A126320.P6715207027733100535

/-! ## A126320.P13486642318691407292

`A071661(A057163(n))`
-/

namespace A126320.P13486642318691407292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071661 (A057163 n).toNat

end

end A126320.P13486642318691407292

/-! ## A126320.P1279305104991998084

`A057163(A071662(n))`
-/

namespace A126320.P1279305104991998084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A071662 n).toNat

end

end A126320.P1279305104991998084

/-! ## A126320.P9178603285172055633

`A071663(A069787(n))`
-/

namespace A126320.P9178603285172055633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071663 (A069787 n).toNat

end

end A126320.P9178603285172055633

/-! ## A126320.P14013010344989771403

`A069787(A071664(n))`
-/

namespace A126320.P14013010344989771403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A071664 n).toNat

end

end A126320.P14013010344989771403

/-! ## A126320.P4340340671207318664

`A085161(A085173(n))`
-/

namespace A126320.P4340340671207318664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085173 n).toNat

end

end A126320.P4340340671207318664

/-! ## A126320.P6920491161278185179

`A085174(A085161(n))`
-/

namespace A126320.P6920491161278185179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085161 n).toNat

end

end A126320.P6920491161278185179

/-! ## A126320.P5327677135316927008

`A085173(A085175(n))`
-/

namespace A126320.P5327677135316927008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A085175 n).toNat

end

end A126320.P5327677135316927008

/-! ## A126320.P16912630034565752802

`A085175(A085174(n))`
-/

namespace A126320.P16912630034565752802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085174 n).toNat

end

end A126320.P16912630034565752802

/-!
# A126322: Number of hex trees with n edges and no branches of length 1.

The programs for A126322, there is no canonical definition to state claims against.
-/

/-! ## A126322.P18435355562513528821

`A126321(∑[n])`
-/

namespace A126322.P18435355562513528821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126322.P18435355562513528821

/-! ## A126322.P12715376172006592136

`and(-1, A126321(A000217(n)))`
-/

namespace A126322.P12715376172006592136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A126321 (A000217 n).toNat)

end

end A126322.P12715376172006592136

/-! ## A126322.P15369163577492335526

`record[A126321(n)]*A060576(n)`
-/

namespace A126322.P15369163577492335526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A060576 n

end

end A126322.P15369163577492335526

/-! ## A126322.P14190259576581007186

`record[A126321(n)]%Δ[A126323(n)]`
-/

namespace A126322.P14190259576581007186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A126322.P14190259576581007186

/-! ## A126322.P7129480545288848094

`A185203(n)+A126321(A000217(n))`
-/

namespace A126322.P7129480545288848094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + A126321 (A000217 n).toNat

end

end A126322.P7129480545288848094

/-!
# A126323: Number of branches of length 1 in all hex trees with n edges.

The programs for A126323, there is no canonical definition to state claims against.
-/

/-! ## A126323.P5588766823289166834

`A004525(n)*A124459(A000135(n+1))`
-/

namespace A126323.P5588766823289166834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n * A124459 (A000135 (n + 1)).toNat

end

end A126323.P5588766823289166834

/-! ## A126323.P10326837571040223227

`A049083(n)*A124459(A000135(n+1))`
-/

namespace A126323.P10326837571040223227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049083 n * A124459 (A000135 (n + 1)).toNat

end

end A126323.P10326837571040223227

/-!
# A126324: a(2n) = Cat(n), a(2n+1) = 3*Cat(n), where Cat(n) = binomial(2n,n)/(n+1) are the Catalan numbers (A000108).

The programs for A126324, the canonical program `A126324.P3611906249858251984` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126324 has offset 0).

The definition of A126324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126324.P8460825845100991488

`gcd(3*A090192(n), A090192(n+1))`
-/

namespace A126324.P8460825845100991488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A090192 n) (A090192 (n + 1))

end

end A126324.P8460825845100991488

namespace A126324

/-- `gcd(3*A090192(n), A090192(n+1))` -/
def P8460825845100991488.Spec : Prop :=
  ∀ n, (P8460825845100991488.a n : ℤ) = A126324 n

end A126324

/-! ## A126324.P3611906249858251984

`gcd(3*A097331(n), A097331(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126324

/-- `gcd(3*A097331(n), A097331(n+1))` -/
def P3611906249858251984.Spec : Prop :=
  ∀ n, (P3611906249858251984.a n : ℤ) = A126324 n

theorem P3611906249858251984.correct : P3611906249858251984.Spec := by
  intro n
  simp only [A126324]

end A126324

/-! ## A126324.P1610361200522728159

`gcd(3*A105523(n), A105523(n+1))`
-/

namespace A126324.P1610361200522728159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A105523 n) (A105523 (n + 1))

end

end A126324.P1610361200522728159

namespace A126324

/-- `gcd(3*A105523(n), A105523(n+1))` -/
def P1610361200522728159.Spec : Prop :=
  ∀ n, (P1610361200522728159.a n : ℤ) = A126324 n

end A126324

/-! ## A126324.P1180650319920245080

`A126120(A004442(n))+A089408(n+1)`
-/

namespace A126324.P1180650319920245080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004442 n).toNat + A089408 (n + 1)

end

end A126324.P1180650319920245080

namespace A126324

/-- `A126120(A004442(n))+A089408(n+1)` -/
def P1180650319920245080.Spec : Prop :=
  ∀ n, P1180650319920245080.a n = A126324 n

end A126324

/-! ## A126324.P1839269553359800793

`A089408(n+1)+A097331(n)-A000007(n)`
-/

namespace A126324.P1839269553359800793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (n + 1) + (A097331 n - A000007 n)

end

end A126324.P1839269553359800793

namespace A126324

/-- `A089408(n+1)+A097331(n)-A000007(n)` -/
def P1839269553359800793.Spec : Prop :=
  ∀ n, P1839269553359800793.a n = A126324 n

end A126324

/-! ## A126324.P4641242651342286727

`gcd(3*A063886(n), A050168(n+1))`
-/

namespace A126324.P4641242651342286727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A063886 n) (A050168 (n + 1))

end

end A126324.P4641242651342286727

namespace A126324

/-- `gcd(3*A063886(n), A050168(n+1))` -/
def P4641242651342286727.Spec : Prop :=
  ∀ n, (P4641242651342286727.a n : ℤ) = A126324 n

end A126324

/-! ## A126324.P5219818246293748852

`A141811(A117142(n+1))`
-/

namespace A126324.P5219818246293748852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (A117142 (n + 1)).toNat

end

end A126324.P5219818246293748852

namespace A126324

/-- `A141811(A117142(n+1))` -/
def P5219818246293748852.Spec : Prop :=
  ∀ n, P5219818246293748852.a n = A126324 n

end A126324

/-! ## A126324.P10689747038489055560

`A141811(∑[gcd(n+1, A008619(n))])`
-/

namespace A126324.P10689747038489055560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126324.P10689747038489055560

namespace A126324

/-- `A141811(∑[gcd(n+1, A008619(n))])` -/
def P10689747038489055560.Spec : Prop :=
  ∀ n, P10689747038489055560.a n = A126324 n

end A126324

/-!
# A126325: Triangle read by rows: T(n,k) = binomial(2*n+1, n-k) (1 <= k <= n).

The programs for A126325, the canonical program `A126325.P17287246843163374612` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126325 has offset 1).

The definition of A126325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(row(n)+1)+1, row(n)+1-(col(n)+1))` (program `A126325.P17287246843163374612`, by `A126325.P17287246843163374612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126325.P17287246843163374612

`C(2*(row(n)+1)+1, row(n)+1-(col(n)+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126325

/-- `C(2*(row(n)+1)+1, row(n)+1-(col(n)+1))` -/
def P17287246843163374612.Spec : Prop :=
  ∀ n, (P17287246843163374612.a n : ℤ) = A126325 (n + 1)

theorem P17287246843163374612.correct : P17287246843163374612.Spec := by
  intro n
  simp only [A126325, Nat.add_sub_cancel]

end A126325

/-! ## A126325.P7042037435883600941

`C(2*(row(n)+1)+1, row(n)+1-(col(n)+1))*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126325.P7042037435883600941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (SequenceMachineLib.triRow n + 1) + 1) ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)).toNat * 1

end

end A126325.P7042037435883600941

namespace A126325

/-- `C(2*(row(n)+1)+1, row(n)+1-(col(n)+1))*1` -/
def P7042037435883600941.Spec : Prop :=
  ∀ n, (P7042037435883600941.a n : ℤ) = A126325 (n + 1)

theorem P7042037435883600941.correct : P7042037435883600941.Spec := by
  intro n
  simp only [A126325, Nat.add_sub_cancel, A126325.P7042037435883600941.a, A126325.P17287246843163374612.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A126325

/-! ## A126325.P5784178458865642924

`A111418(comp[∑[n]])`
-/

namespace A126325.P5784178458865642924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A126325.P5784178458865642924

namespace A126325

/-- `A111418(comp[∑[n]])` -/
def P5784178458865642924.Spec : Prop :=
  ∀ n, P5784178458865642924.a n = A126325 (n + 1)

end A126325

/-! ## A126325.P16204222849935672338

`A122366(A004736(n+2)+A004736(n+1)+n)`
-/

namespace A126325.P16204222849935672338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A004736 (n + 2) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A126325.P16204222849935672338

namespace A126325

/-- `A122366(A004736(n+2)+A004736(n+1)+n)` -/
def P16204222849935672338.Spec : Prop :=
  ∀ n, P16204222849935672338.a n = A126325 (n + 1)

end A126325

/-! ## A126325.P3312003219821599772

`C(A005408(A003056(n)+1), A025581(n))`
-/

namespace A126325.P3312003219821599772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 (A003056 n + 1).toNat).toNat (A025581 n).toNat

end

end A126325.P3312003219821599772

namespace A126325

/-- `C(A005408(A003056(n)+1), A025581(n))` -/
def P3312003219821599772.Spec : Prop :=
  ∀ n, (P3312003219821599772.a n : ℤ) = A126325 (n + 1)

end A126325

/-! ## A126325.P1593138290363672881

`C(A099375(A127739(n+1)), A025581(n))`
-/

namespace A126325.P1593138290363672881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099375 (A127739 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A126325.P1593138290363672881

namespace A126325

/-- `C(A099375(A127739(n+1)), A025581(n))` -/
def P1593138290363672881.Spec : Prop :=
  ∀ n, (P1593138290363672881.a n : ℤ) = A126325 (n + 1)

end A126325

/-! ## A126325.P15419884153156215090

`A014413(A063657(n+1)+1)`
-/

namespace A126325.P15419884153156215090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A063657 (n + 1) + 1).toNat

end

end A126325.P15419884153156215090

namespace A126325

/-- `A014413(A063657(n+1)+1)` -/
def P15419884153156215090.Spec : Prop :=
  ∀ n, P15419884153156215090.a n = A126325 (n + 1)

end A126325

/-! ## A126325.P11921980299377719833

`A008311(A189151(n+1))`
-/

namespace A126325.P11921980299377719833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A189151 (n + 1)).toNat

end

end A126325.P11921980299377719833

namespace A126325

/-- `A008311(A189151(n+1))` -/
def P11921980299377719833.Spec : Prop :=
  ∀ n, P11921980299377719833.a n = A126325 (n + 1)

end A126325

/-! ## A126325.P14505940532218575492

`A117178(A185871(n+1))`
-/

namespace A126325.P14505940532218575492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 (A185871 (n + 1)).toNat

end

end A126325.P14505940532218575492

namespace A126325

/-- `A117178(A185871(n+1))` -/
def P14505940532218575492.Spec : Prop :=
  ∀ n, P14505940532218575492.a n = A126325 (n + 1)

end A126325

/-! ## A126325.P3774646303200652173

`A077228(A292565(n+1))`
-/

namespace A126325.P3774646303200652173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077228 (A292565 (n + 1)).toNat

end

end A126325.P3774646303200652173

namespace A126325

/-- `A077228(A292565(n+1))` -/
def P3774646303200652173.Spec : Prop :=
  ∀ n, P3774646303200652173.a n = A126325 (n + 1)

end A126325

/-! ## A126325.P6836021381935641968

`A007318(lt[A056011(n+1), n])`
-/

namespace A126325.P6836021381935641968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A126325.P6836021381935641968

namespace A126325

/-- `A007318(lt[A056011(n+1), n])` -/
def P6836021381935641968.Spec : Prop :=
  ∀ n, P6836021381935641968.a n = A126325 (n + 1)

end A126325

/-!
# A126326: a(1) = 1; for n>1, a(n) = smallest number which is not a sum or product or power of any subset of the numbers a(1) to a(n-1).

The programs for A126326, there is no canonical definition to state claims against.
-/

/-! ## A126326.P6173585022441800825

`A331809(A043315(n+1))`
-/

namespace A126326.P6173585022441800825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331809 (A043315 (n + 1)).toNat

end

end A126326.P6173585022441800825

/-! ## A126326.P2516932709330017743

`A331809(A044912(n+1))`
-/

namespace A126326.P2516932709330017743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331809 (A044912 (n + 1)).toNat

end

end A126326.P2516932709330017743

/-! ## A126326.P10945455165822295239

`A331809(A055649(n+1))`
-/

namespace A126326.P10945455165822295239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331809 (A055649 (n + 1)).toNat

end

end A126326.P10945455165822295239

/-! ## A126326.P16567069263945715841

`A331809(A061378(n+1))`
-/

namespace A126326.P16567069263945715841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331809 (A061378 (n + 1)).toNat

end

end A126326.P16567069263945715841

/-! ## A126326.P10136757595360614806

`A331809(A062399(n+1))`
-/

namespace A126326.P10136757595360614806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331809 (A062399 (n + 1)).toNat

end

end A126326.P10136757595360614806

/-!
# A126328: Rounded value of n!/(n(n+1)/2); A000142(n)/A000217(n).

The programs for A126328, there is no canonical definition to state claims against.
-/

/-! ## A126328.P4977452422138348652

`round(2/(n+2)*n!)`
-/

namespace A126328.P4977452422138348652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (n + 2 : ℚ) * (Nat.factorial n : ℚ))

end

end A126328.P4977452422138348652

/-! ## A126328.P13109309032348580891

`char[1]+floor(2*n!/(n+2))`
-/

namespace A126328.P13109309032348580891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊2 * ((Nat.factorial n : ℚ) / (n + 2 : ℚ))⌋

end

end A126328.P13109309032348580891

/-! ## A126328.P9199353645028752712

`round((n+1)!/∑[n+1])`
-/

namespace A126328.P9199353645028752712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A126328.P9199353645028752712

/-! ## A126328.P7125763651017536091

`floor(((n+1)!+n)/∑[n+1])`
-/

namespace A126328.P7125763651017536091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) + n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A126328.P7125763651017536091

/-!
# A126329: Primes of the form 6p+5 where p is a prime.

The programs for A126329, the canonical program `A126329.P10461060411431134265` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126329 has offset 1).

The definition of A126329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126329.P10461060411431134265

`p?[6*A008864(n+1)-1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126329

/-- `p?[6*A008864(n+1)-1]` -/
def P10461060411431134265.Spec : Prop :=
  ∀ n, P10461060411431134265.a n = A126329 (n + 1)

theorem P10461060411431134265.correct : P10461060411431134265.Spec := by
  intro n
  simp only [A126329, Nat.add_sub_cancel]

end A126329

/-! ## A126329.P15906614266895596837

`p?[6*A000040(n+1)+5]`
-/

namespace A126329.P15906614266895596837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000040 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P15906614266895596837

namespace A126329

/-- `p?[6*A000040(n+1)+5]` -/
def P15906614266895596837.Spec : Prop :=
  ∀ n, P15906614266895596837.a n = A126329 (n + 1)

theorem P15906614266895596837.correct : P15906614266895596837.Spec := by
  intro n
  simp only [A126329, Nat.add_sub_cancel, A126329.P15906614266895596837.f1, A126329.P15906614266895596837.a, A126329.P10461060411431134265.f1, A126329.P10461060411431134265.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126329

/-! ## A126329.P5347192984039651512

`p?[6*A008578(n+2)+5]`
-/

namespace A126329.P5347192984039651512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008578 (n + 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P5347192984039651512

namespace A126329

/-- `p?[6*A008578(n+2)+5]` -/
def P5347192984039651512.Spec : Prop :=
  ∀ n, P5347192984039651512.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P7062688799404348776

`∩[A003627(n+1), A168447(n+1)]`
-/

namespace A126329.P7062688799404348776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P7062688799404348776

namespace A126329

/-- `∩[A003627(n+1), A168447(n+1)]` -/
def P7062688799404348776.Spec : Prop :=
  ∀ n, (P7062688799404348776.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P13988254563730853753

`∩[A007528(n+1), A168447(n+1)]`
-/

namespace A126329.P13988254563730853753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P13988254563730853753

namespace A126329

/-- `∩[A007528(n+1), A168447(n+1)]` -/
def P13988254563730853753.Spec : Prop :=
  ∀ n, (P13988254563730853753.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P11431419482202690016

`∩[A045309(n+1), A168447(n+1)]`
-/

namespace A126329.P11431419482202690016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P11431419482202690016

namespace A126329

/-- `∩[A045309(n+1), A168447(n+1)]` -/
def P11431419482202690016.Spec : Prop :=
  ∀ n, (P11431419482202690016.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P17382207709286263049

`∩[A045410(n+1), A168447(n+1)]`
-/

namespace A126329.P17382207709286263049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P17382207709286263049

namespace A126329

/-- `∩[A045410(n+1), A168447(n+1)]` -/
def P17382207709286263049.Spec : Prop :=
  ∀ n, (P17382207709286263049.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P2935078924567994834

`∩[A056955(n+1), A168447(n+1)]`
-/

namespace A126329.P2935078924567994834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P2935078924567994834

namespace A126329

/-- `∩[A056955(n+1), A168447(n+1)]` -/
def P2935078924567994834.Spec : Prop :=
  ∀ n, (P2935078924567994834.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P8188790854343507066

`∩[A066501(n+1), A168447(n+1)]`
-/

namespace A126329.P8188790854343507066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P8188790854343507066

namespace A126329

/-- `∩[A066501(n+1), A168447(n+1)]` -/
def P8188790854343507066.Spec : Prop :=
  ∀ n, (P8188790854343507066.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P15069467352763869033

`∩[A168447(n+1), A259548(n+1)]`
-/

namespace A126329.P15069467352763869033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P15069467352763869033

namespace A126329

/-- `∩[A168447(n+1), A259548(n+1)]` -/
def P15069467352763869033.Spec : Prop :=
  ∀ n, (P15069467352763869033.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P17543855972113656668

`∩[A082406(n+1), A168447(n+1)]`
-/

namespace A126329.P17543855972113656668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P17543855972113656668

namespace A126329

/-- `∩[A082406(n+1), A168447(n+1)]` -/
def P17543855972113656668.Spec : Prop :=
  ∀ n, (P17543855972113656668.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P4412721268593671170

`record[A006530(6*A000040(n+1)+5)]`
-/

namespace A126329.P4412721268593671170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * A000040 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126329.P4412721268593671170

namespace A126329

/-- `record[A006530(6*A000040(n+1)+5)]` -/
def P4412721268593671170.Spec : Prop :=
  ∀ n, P4412721268593671170.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P6405935171751968235

`∩[A167409(n+1), A168447(n+1)]`
-/

namespace A126329.P6405935171751968235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P6405935171751968235

namespace A126329

/-- `∩[A167409(n+1), A168447(n+1)]` -/
def P6405935171751968235.Spec : Prop :=
  ∀ n, (P6405935171751968235.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P15135018161344507777

`p?[6*(n+1)-A105700(n)]`
-/

namespace A126329.P15135018161344507777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P15135018161344507777

namespace A126329

/-- `p?[6*(n+1)-A105700(n)]` -/
def P15135018161344507777.Spec : Prop :=
  ∀ n, P15135018161344507777.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P854778449828776358

`A016969(A023221(n+1))`
-/

namespace A126329.P854778449828776358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A023221 (n + 1)).toNat

end

end A126329.P854778449828776358

namespace A126329

/-- `A016969(A023221(n+1))` -/
def P854778449828776358.Spec : Prop :=
  ∀ n, P854778449828776358.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P6477850995140926461

`p?[A016969(A000040(n+1))]`
-/

namespace A126329.P6477850995140926461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P6477850995140926461

namespace A126329

/-- `p?[A016969(A000040(n+1))]` -/
def P6477850995140926461.Spec : Prop :=
  ∀ n, P6477850995140926461.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P3517510505727396087

`A016969(p?[A059325(n+1)])`
-/

namespace A126329.P3517510505727396087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A126329.P3517510505727396087

namespace A126329

/-- `A016969(p?[A059325(n+1)])` -/
def P3517510505727396087.Spec : Prop :=
  ∀ n, P3517510505727396087.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P12622431236316942619

`∩[A168447(n+1), A016969(n)]`
-/

namespace A126329.P12622431236316942619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P12622431236316942619

namespace A126329

/-- `∩[A168447(n+1), A016969(n)]` -/
def P12622431236316942619.Spec : Prop :=
  ∀ n, (P12622431236316942619.a n : ℤ) = A126329 (n + 1)

end A126329

/-! ## A126329.P14945868200518600500

`p?[A016969(record[A006530(n+2)])]`
-/

namespace A126329.P14945868200518600500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126329.P14945868200518600500

namespace A126329

/-- `p?[A016969(record[A006530(n+2)])]` -/
def P14945868200518600500.Spec : Prop :=
  ∀ n, P14945868200518600500.a n = A126329 (n + 1)

end A126329

/-! ## A126329.P17687328219978476352

`∩[A168447(n+1), A101328(n+2)]`
-/

namespace A126329.P17687328219978476352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126329.P17687328219978476352

namespace A126329

/-- `∩[A168447(n+1), A101328(n+2)]` -/
def P17687328219978476352.Spec : Prop :=
  ∀ n, (P17687328219978476352.a n : ℤ) = A126329 (n + 1)

end A126329

/-!
# A126330: Primes of the form 4p+3 where p is a prime.

The programs for A126330, there is no canonical definition to state claims against.
-/

/-! ## A126330.P17988382104487853714

`2*A372113(n+1)+1`
-/

namespace A126330.P17988382104487853714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372113 (n + 1) + 1

end

end A126330.P17988382104487853714

/-! ## A126330.P7137686072252592998

`4*A023213(n+1)+3`
-/

namespace A126330.P7137686072252592998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023213 (n + 1) + 3

end

end A126330.P7137686072252592998

/-! ## A126330.P13420252346112887525

`∩[A075519(n+1), A266233(n+1)]`
-/

namespace A126330.P13420252346112887525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P13420252346112887525

/-! ## A126330.P10693762282060216662

`p?[2*A072055(n+1)+1]`
-/

namespace A126330.P10693762282060216662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072055 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P10693762282060216662

/-! ## A126330.P8858348596433868083

`p?[2*A089241(n+1)-1]`
-/

namespace A126330.P8858348596433868083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089241 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P8858348596433868083

/-! ## A126330.P9500610141665108376

`p?[2*A100484(n+1)+3]`
-/

namespace A126330.P9500610141665108376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P9500610141665108376

/-! ## A126330.P15275509876492985054

`p?[4*A000040(n+1)+3]`
-/

namespace A126330.P15275509876492985054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P15275509876492985054

/-! ## A126330.P955803251079444736

`p?[A001748(n+1)+A052147(n+1)+1]`
-/

namespace A126330.P955803251079444736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A052147 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P955803251079444736

/-! ## A126330.P6479849763761759188

`p?[A001748(n+1)+A008864(n+1)+2]`
-/

namespace A126330.P6479849763761759188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A008864 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P6479849763761759188

/-! ## A126330.P17992185394316899350

`p?[A001750(n+1)+2-A006093(n+1)]`
-/

namespace A126330.P17992185394316899350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + (2 - A006093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P17992185394316899350

/-! ## A126330.P6382161163011721784

`p?[A008864(n+1)+A072055(n+1)+A008864(n+1)]`
-/

namespace A126330.P6382161163011721784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A072055 (n + 1) + A008864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P6382161163011721784

/-! ## A126330.P9513049731153657471

`p?[2*A033945(n+1)+5]`
-/

namespace A126330.P9513049731153657471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033945 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126330.P9513049731153657471

/-! ## A126330.P11316357923235596192

`4*p?[A095278(n+1)]+3`
-/

namespace A126330.P11316357923235596192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A126330.P11316357923235596192

/-! ## A126330.P5150132017092892282

`∩[A002145(n+1), A075519(n+1)]`
-/

namespace A126330.P5150132017092892282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P5150132017092892282

/-! ## A126330.P14620291535832642767

`∩[A045326(n+1), A075519(n+1)]`
-/

namespace A126330.P14620291535832642767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P14620291535832642767

/-! ## A126330.P5274985977997516222

`∩[A075519(n+1), A085760(n+1)]`
-/

namespace A126330.P5274985977997516222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P5274985977997516222

/-! ## A126330.P5001459003473799519

`∩[A075519(n+1), A197504(n+1)]`
-/

namespace A126330.P5001459003473799519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P5001459003473799519

/-! ## A126330.P4572889368859983269

`∩[A075519(n+1), A332555(n+1)]`
-/

namespace A126330.P4572889368859983269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P4572889368859983269

/-! ## A126330.P2676654813681314130

`∩[A075519(n+1), A292762(n+1)]`
-/

namespace A126330.P2676654813681314130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P2676654813681314130

/-! ## A126330.P14434024677293099071

`∩[A075519(n+1), A385221(n+1)]`
-/

namespace A126330.P14434024677293099071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126330.P14434024677293099071

/-!
# A126332: Numbers k such that 10k + 13 is prime.

The programs for A126332, the canonical program `A126332.P1973723424677393430` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126332 has offset 1).

The definition of A126332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126332.P1973723424677393430

`floor(A111225(n+1)/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126332

/-- `floor(A111225(n+1)/2)` -/
def P1973723424677393430.Spec : Prop :=
  ∀ n, P1973723424677393430.a n = A126332 (n + 1)

theorem P1973723424677393430.correct : P1973723424677393430.Spec := by
  intro n
  simp only [A126332, Nat.add_sub_cancel]

end A126332

/-! ## A126332.P17164079365060000207

`A102338(n+2)-1`
-/

namespace A126332.P17164079365060000207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 2) - 1

end

end A126332.P17164079365060000207

namespace A126332

/-- `A102338(n+2)-1` -/
def P17164079365060000207.Spec : Prop :=
  ∀ n, P17164079365060000207.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P11929360305236823487

`A024913(n+2)-2`
-/

namespace A126332.P11929360305236823487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 2) - 2

end

end A126332.P11929360305236823487

namespace A126332

/-- `A024913(n+2)-2` -/
def P11929360305236823487.Spec : Prop :=
  ∀ n, P11929360305236823487.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P14037659109544421208

`A087505(n+2)/2-1`
-/

namespace A126332.P14037659109544421208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087505 (n + 2) : ℚ) / 2 - 1

end

end A126332.P14037659109544421208

namespace A126332

/-- `A087505(n+2)/2-1` -/
def P14037659109544421208.Spec : Prop :=
  ∀ n, P14037659109544421208.a n = (A126332 (n + 1) : ℚ)

end A126332

/-! ## A126332.P5891277657063931035

`A107304(n+2)/2-2`
-/

namespace A126332.P5891277657063931035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107304 (n + 2) : ℚ) / 2 - 2

end

end A126332.P5891277657063931035

namespace A126332

/-- `A107304(n+2)/2-2` -/
def P5891277657063931035.Spec : Prop :=
  ∀ n, P5891277657063931035.a n = (A126332 (n + 1) : ℚ)

end A126332

/-! ## A126332.P10718613732853708151

`(A024896(n+2)-3)/2`
-/

namespace A126332.P10718613732853708151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024896 (n + 2) - 3 : ℚ) / 2

end

end A126332.P10718613732853708151

namespace A126332

/-- `(A024896(n+2)-3)/2` -/
def P10718613732853708151.Spec : Prop :=
  ∀ n, P10718613732853708151.a n = (A126332 (n + 1) : ℚ)

end A126332

/-! ## A126332.P8955499658353692257

`A185322(A049508(n+2))-2`
-/

namespace A126332.P8955499658353692257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049508 (n + 2)).toNat - 2

end

end A126332.P8955499658353692257

namespace A126332

/-- `A185322(A049508(n+2))-2` -/
def P8955499658353692257.Spec : Prop :=
  ∀ n, P8955499658353692257.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P14891546812723742993

`eq[3, A096915(n+1)]`
-/

namespace A126332.P14891546812723742993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126332.P14891546812723742993

namespace A126332

/-- `eq[3, A096915(n+1)]` -/
def P14891546812723742993.Spec : Prop :=
  ∀ n, (P14891546812723742993.a n : ℤ) = A126332 (n + 1)

end A126332

/-! ## A126332.P9604731707153842727

`A004483(A102338(n+2))`
-/

namespace A126332.P9604731707153842727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A102338 (n + 2)).toNat

end

end A126332.P9604731707153842727

namespace A126332

/-- `A004483(A102338(n+2))` -/
def P9604731707153842727.Spec : Prop :=
  ∀ n, P9604731707153842727.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P2663974433054694523

`A004483(A087505(n+2)/2)`
-/

namespace A126332.P2663974433054694523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (SequenceMachineLib.roundAway ((A087505 (n + 2) : ℚ) / 2)).toNat

end

end A126332.P2663974433054694523

namespace A126332

/-- `A004483(A087505(n+2)/2)` -/
def P2663974433054694523.Spec : Prop :=
  ∀ n, P2663974433054694523.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P10262156201331707404

`lt[n*A096915(n+1), A016777(n)]`
-/

namespace A126332.P10262156201331707404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A096915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126332.P10262156201331707404

namespace A126332

/-- `lt[n*A096915(n+1), A016777(n)]` -/
def P10262156201331707404.Spec : Prop :=
  ∀ n, (P10262156201331707404.a n : ℤ) = A126332 (n + 1)

end A126332

/-! ## A126332.P16440230166604454418

`eq[1, A001222(10*n+13)]`
-/

namespace A126332.P16440230166604454418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126332.P16440230166604454418

namespace A126332

/-- `eq[1, A001222(10*n+13)]` -/
def P16440230166604454418.Spec : Prop :=
  ∀ n, (P16440230166604454418.a n : ℤ) = A126332 (n + 1)

end A126332

/-! ## A126332.P9286814256653668336

`eq[2, A000005(10*n+13)]`
-/

namespace A126332.P9286814256653668336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126332.P9286814256653668336

namespace A126332

/-- `eq[2, A000005(10*n+13)]` -/
def P9286814256653668336.Spec : Prop :=
  ∀ n, (P9286814256653668336.a n : ℤ) = A126332 (n + 1)

end A126332

/-! ## A126332.P495228558813013456

`record[n/A001222(10*(n+1)+3)]`
-/

namespace A126332.P495228558813013456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A001222 (10 * (n + 1) + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126332.P495228558813013456

namespace A126332

/-- `record[n/A001222(10*(n+1)+3)]` -/
def P495228558813013456.Spec : Prop :=
  ∀ n, P495228558813013456.a n = (A126332 (n + 1) : ℚ)

end A126332

/-! ## A126332.P18426780174420028882

`A023444(A024913(n+2))`
-/

namespace A126332.P18426780174420028882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A024913 (n + 2)).toNat

end

end A126332.P18426780174420028882

namespace A126332

/-- `A023444(A024913(n+2))` -/
def P18426780174420028882.Spec : Prop :=
  ∀ n, P18426780174420028882.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P14954953286797261271

`A023444(A107304(n+2)/2)`
-/

namespace A126332.P14954953286797261271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.roundAway ((A107304 (n + 2) : ℚ) / 2)).toNat

end

end A126332.P14954953286797261271

namespace A126332

/-- `A023444(A107304(n+2)/2)` -/
def P14954953286797261271.Spec : Prop :=
  ∀ n, P14954953286797261271.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P3787828701863057705

`lt[2, A020639(A008592(n+1)+3)-n]`
-/

namespace A126332.P3787828701863057705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008592 (n + 1) + 3).toNat - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126332.P3787828701863057705

namespace A126332

/-- `lt[2, A020639(A008592(n+1)+3)-n]` -/
def P3787828701863057705.Spec : Prop :=
  ∀ n, (P3787828701863057705.a n : ℤ) = A126332 (n + 1)

end A126332

/-! ## A126332.P11158597924013949888

`lt[A016969(n), A020639(10*n+3)]-1`
-/

namespace A126332.P11158597924013949888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A126332.P11158597924013949888

namespace A126332

/-- `lt[A016969(n), A020639(10*n+3)]-1` -/
def P11158597924013949888.Spec : Prop :=
  ∀ n, P11158597924013949888.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P15484718418293048685

`A023453(A108584(n+2))`
-/

namespace A126332.P15484718418293048685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A108584 (n + 2)).toNat

end

end A126332.P15484718418293048685

namespace A126332

/-- `A023453(A108584(n+2))` -/
def P15484718418293048685.Spec : Prop :=
  ∀ n, P15484718418293048685.a n = A126332 (n + 1)

end A126332

/-! ## A126332.P600967656775940413

`A023456(A108854(n+2))`
-/

namespace A126332.P600967656775940413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A108854 (n + 2)).toNat

end

end A126332.P600967656775940413

namespace A126332

/-- `A023456(A108854(n+2))` -/
def P600967656775940413.Spec : Prop :=
  ∀ n, P600967656775940413.a n = A126332 (n + 1)

end A126332

/-!
# A126333: Ackermann's function A(n,0).

The programs for A126333, there is no canonical definition to state claims against.
-/

/-! ## A126333.P3724289170491871819

`A067652(n)-3`
-/

namespace A126333.P3724289170491871819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067652 n - 3

end

end A126333.P3724289170491871819

/-!
# A126334: Lesser of twin primes (p,q=p+2) such that p*q-p-q and p*q+p+q are primes.

The programs for A126334, there is no canonical definition to state claims against.
-/

/-! ## A126334.P16585233754208520544

`∩[A054799(n+1), A128548(n+1)]`
-/

namespace A126334.P16585233754208520544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126334.P16585233754208520544

/-! ## A126334.P13081053146635562590

`∩[A128548(n+1), A280590(n+1)]`
-/

namespace A126334.P13081053146635562590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126334.P13081053146635562590

/-! ## A126334.P10249815233844724116

`∩[A128548(n+1), A128550(n+1)]`
-/

namespace A126334.P10249815233844724116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126334.P10249815233844724116

/-! ## A126334.P4807089089809571766

`∩[A128548(n+1), A128551(n+1)]`
-/

namespace A126334.P4807089089809571766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126334.P4807089089809571766

/-! ## A126334.P15922339045572199681

`∩[A128550(n+1), A128551(n+1)]`
-/

namespace A126334.P15922339045572199681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126334.P15922339045572199681

/-! ## A126334.P15082746184981161360

`∩[A001838(n+1), A128548(n+1)]`
-/

namespace A126334.P15082746184981161360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126334.P15082746184981161360

/-!
# A126335: a(n) = n*(4*n^2+5*n-3)/2.

The programs for A126335, the canonical program `A126335.P1242209479722622000` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126335 has offset 1).

The definition of A126335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(4*(n+1)²+5*(n+1)-3)/2` (program `A126335.P10520645972313677138`, by `A126335.P10520645972313677138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126335.P15860828918707053959

`ogf((3+11x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A126335.P15860828918707053959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 11, -2] [1, -4, 6, -4, 1] n

end

end A126335.P15860828918707053959

namespace A126335

/-- `ogf((3+11x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15860828918707053959.Spec : Prop :=
  ∀ n, P15860828918707053959.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P10520645972313677138

`(n+1)*(4*(n+1)²+5*(n+1)-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126335.P10520645972313677138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((4 * (n + 1) ^ 2 + 5 * (n + 1) : ℤ) - 3) : ℚ) / 2

end

end A126335.P10520645972313677138

namespace A126335

/-- `(n+1)*(4*(n+1)²+5*(n+1)-3)/2` -/
def P10520645972313677138.Spec : Prop :=
  ∀ n, P10520645972313677138.a n = (A126335 (n + 1) : ℚ)

theorem P10520645972313677138.correct : P10520645972313677138.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A126335, Nat.add_sub_cancel, A126335.P10520645972313677138.a, A126335.P1242209479722622000.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A126335, Nat.add_sub_cancel, A126335.P10520645972313677138.a, A126335.P1242209479722622000.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A126335

/-! ## A126335.P1242209479722622000

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=23, a(2)=72, a(3)=162`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126335

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1242209479722622000.Spec : Prop :=
  ∀ n, P1242209479722622000.a n = A126335 (n + 1)

theorem P1242209479722622000.correct : P1242209479722622000.Spec := by
  intro n
  simp only [A126335, Nat.add_sub_cancel]

end A126335

/-! ## A126335.P18027763492532400961

`∑[∑[a(n-1)+12]]` with `a(0)=3, a(1)=17`
-/

namespace A126335.P18027763492532400961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 17] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126335.P18027763492532400961

namespace A126335

/-- `∑[∑[a(n-1)+12]]` -/
def P18027763492532400961.Spec : Prop :=
  ∀ n, (P18027763492532400961.a n : ℤ) = A126335 (n + 1)

end A126335

/-! ## A126335.P2308602705711593829

`Δ[C((n+1)², 2)]-∑[n+3]`
-/

namespace A126335.P2308602705711593829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A126335.P2308602705711593829

namespace A126335

/-- `Δ[C((n+1)², 2)]-∑[n+3]` -/
def P2308602705711593829.Spec : Prop :=
  ∀ n, P2308602705711593829.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P3747310186325939671

`(n+3)*lcm(2*n+1, n+1)-∑[n]`
-/

namespace A126335.P3747310186325939671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.lcm (2 * n + 1) (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A126335.P3747310186325939671

namespace A126335

/-- `(n+3)*lcm(2*n+1, n+1)-∑[n]` -/
def P3747310186325939671.Spec : Prop :=
  ∀ n, P3747310186325939671.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P12712432763870154193

`(2*n+1)*(n+1)*(n+3)-C(n+1, 2)`
-/

namespace A126335.P12712432763870154193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * ((n + 1) * (n + 3)) : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A126335.P12712432763870154193

namespace A126335

/-- `(2*n+1)*(n+1)*(n+3)-C(n+1, 2)` -/
def P12712432763870154193.Spec : Prop :=
  ∀ n, P12712432763870154193.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P398101151518642668

`A048395(n+1)+∑[n-2]`
-/

namespace A126335.P398101151518642668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126335.P398101151518642668

namespace A126335

/-- `A048395(n+1)+∑[n-2]` -/
def P398101151518642668.Spec : Prop :=
  ∀ n, P398101151518642668.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P1397957038946553593

`∑[(2*n+3)*A016777(n)]`
-/

namespace A126335.P1397957038946553593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126335.P1397957038946553593

namespace A126335

/-- `∑[(2*n+3)*A016777(n)]` -/
def P1397957038946553593.Spec : Prop :=
  ∀ n, P1397957038946553593.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P15109440714452444654

`A162256(n+1)+(n+1)^3`
-/

namespace A126335.P15109440714452444654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A126335.P15109440714452444654

namespace A126335

/-- `A162256(n+1)+(n+1)^3` -/
def P15109440714452444654.Spec : Prop :=
  ∀ n, P15109440714452444654.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P12661732551509581739

`A269342(n)-A016061(n)`
-/

namespace A126335.P12661732551509581739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269342 n - A016061 n

end

end A126335.P12661732551509581739

namespace A126335

/-- `A269342(n)-A016061(n)` -/
def P12661732551509581739.Spec : Prop :=
  ∀ n, P12661732551509581739.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P2278688140424843555

`A024394(n+1)-A069778(n)`
-/

namespace A126335.P2278688140424843555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024394 (n + 1) - A069778 n

end

end A126335.P2278688140424843555

namespace A126335

/-- `A024394(n+1)-A069778(n)` -/
def P2278688140424843555.Spec : Prop :=
  ∀ n, P2278688140424843555.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P458353200743969697

`A142962(n+1)-A064808(n)`
-/

namespace A126335.P458353200743969697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142962 (n + 1) - A064808 n

end

end A126335.P458353200743969697

namespace A126335

/-- `A142962(n+1)-A064808(n)` -/
def P458353200743969697.Spec : Prop :=
  ∀ n, P458353200743969697.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P7707311768416122221

`A213823(n+1)-A139757(n)`
-/

namespace A126335.P7707311768416122221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213823 (n + 1) - A139757 n

end

end A126335.P7707311768416122221

namespace A126335

/-- `A213823(n+1)-A139757(n)` -/
def P7707311768416122221.Spec : Prop :=
  ∀ n, P7707311768416122221.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P13110507778698468972

`Δ[A000292(n)]+2*A081437(n)`
-/

namespace A126335.P13110507778698468972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A081437 n

end

end A126335.P13110507778698468972

namespace A126335

/-- `Δ[A000292(n)]+2*A081437(n)` -/
def P13110507778698468972.Spec : Prop :=
  ∀ n, P13110507778698468972.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P2829152837858182884

`A290631(n+1)+A069099(n+1)`
-/

namespace A126335.P2829152837858182884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290631 (n + 1) + A069099 (n + 1)

end

end A126335.P2829152837858182884

namespace A126335

/-- `A290631(n+1)+A069099(n+1)` -/
def P2829152837858182884.Spec : Prop :=
  ∀ n, P2829152837858182884.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P7927078018134296157

`A219054(n+1)+A192023(n+1)`
-/

namespace A126335.P7927078018134296157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (n + 1) + A192023 (n + 1)

end

end A126335.P7927078018134296157

namespace A126335

/-- `A219054(n+1)+A192023(n+1)` -/
def P7927078018134296157.Spec : Prop :=
  ∀ n, P7927078018134296157.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P15190291385771553971

`A363288(n+1)+A229013(n+1)`
-/

namespace A126335.P15190291385771553971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363288 (n + 1) + A229013 (n + 1)

end

end A126335.P15190291385771553971

namespace A126335

/-- `A363288(n+1)+A229013(n+1)` -/
def P15190291385771553971.Spec : Prop :=
  ∀ n, P15190291385771553971.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P11661181363682448728

`A228887(n+1)-A006564(n+1)`
-/

namespace A126335.P11661181363682448728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228887 (n + 1) - A006564 (n + 1)

end

end A126335.P11661181363682448728

namespace A126335

/-- `A228887(n+1)-A006564(n+1)` -/
def P11661181363682448728.Spec : Prop :=
  ∀ n, P11661181363682448728.a n = A126335 (n + 1)

end A126335

/-! ## A126335.P1350862418634878096

`A000217(n+1)+2*A081437(n)`
-/

namespace A126335.P1350862418634878096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + 2 * A081437 n

end

end A126335.P1350862418634878096

namespace A126335

/-- `A000217(n+1)+2*A081437(n)` -/
def P1350862418634878096.Spec : Prop :=
  ∀ n, P1350862418634878096.a n = A126335 (n + 1)

end A126335

/-!
# A126339: a(n) = denominator of sum of the reciprocals of all terms in rows 1 through n of table A126336.

The programs for A126339, there is no canonical definition to state claims against.
-/

/-! ## A126339.P17290802129108078336

`lcm(A000224(A090338(n)), A116417(n))`
-/

namespace A126339.P17290802129108078336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000224 (A090338 n).toNat) (A116417 n)

end

end A126339.P17290802129108078336

/-! ## A126339.P14169109353079474401

`A000224(A099517(n)+A001253(n+1))`
-/

namespace A126339.P14169109353079474401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (A099517 n + A001253 (n + 1)).toNat

end

end A126339.P14169109353079474401

/-! ## A126339.P9781161764562261613

`A110656(A052186(n))+floor(A238756(3*n+2)/2)`
-/

namespace A126339.P9781161764562261613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A052186 n).toNat + ⌊(A238756 (3 * n + 2) : ℚ) / 2⌋

end

end A126339.P9781161764562261613

/-!
# A126340: Largest coefficient of q in { [x^n] W(x,q) } where W(x,q) = exp( q*x*W(q*x,q) ); largest term in rows of triangle A126265.

The programs for A126340, there is no canonical definition to state claims against.
-/

/-! ## A126340.P11921451844122693974

`n*A180348(a(n-1))` with `a(0)=1`
-/

namespace A126340.P11921451844122693974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A180348 (a (n - 1)).toNat

end

end A126340.P11921451844122693974

/-! ## A126340.P15911537242204135432

`n*A267303(a(n-1))` with `a(0)=1`
-/

namespace A126340.P15911537242204135432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A267303 (a (n - 1)).toNat

end

end A126340.P15911537242204135432

/-!
# A126341: Numerators of the limit of coefficients of q in { [x^n] W(x,q) } when read backward from [q^(n*(n-1)/2)] to [q^(n*(n-1)/2 - (n-1))], where W satisfies: W(x,q) = exp( q*x*W(q*x,q) ).

The programs for A126341, there is no canonical definition to state claims against.
-/

/-! ## A126341.P13202716813317506824

`A090395(A126343(n+1))%A126343(3*n+5)`
-/

namespace A126341.P13202716813317506824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090395 (A126343 (n + 1)).toNat) (A126343 (3 * n + 5))

end

end A126341.P13202716813317506824

/-! ## A126341.P4357800682459060360

`A090395(A126343(n+1)%A090382(n+3))`
-/

namespace A126341.P4357800682459060360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (Int.tmod (A126343 (n + 1)) (A090382 (n + 3))).toNat

end

end A126341.P4357800682459060360

/-! ## A126341.P1754452705578021459

`A090395(A287287(3*(n+1))+A126343(n+1))`
-/

namespace A126341.P1754452705578021459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A287287 (3 * (n + 1)) + A126343 (n + 1)).toNat

end

end A126341.P1754452705578021459

/-!
# A126344: Column 1 of triangle A126343.

The programs for A126344, there is no canonical definition to state claims against.
-/

/-! ## A126344.P1854863424333460910

`A126343(∑[n]+1)`
-/

namespace A126344.P1854863424333460910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126344.P1854863424333460910

/-! ## A126344.P17964487583613380786

`A126343(A000124(n))+char[9]`
-/

namespace A126344.P17964487583613380786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126343 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A126344.P17964487583613380786

/-! ## A126344.P2555521721197636766

`A025451(n)*A126343(A000124(n))`
-/

namespace A126344.P2555521721197636766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n * A126343 (A000124 n).toNat

end

end A126344.P2555521721197636766

/-! ## A126344.P18038263288195175904

`A025452(n)*A126343(A000124(n))`
-/

namespace A126344.P18038263288195175904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n * A126343 (A000124 n).toNat

end

end A126344.P18038263288195175904

/-!
# A126345: Main diagonal of triangle A126343.

The programs for A126345, there is no canonical definition to state claims against.
-/

/-! ## A126345.P3908412351960303576

`A126343(∑[n+1])`
-/

namespace A126345.P3908412351960303576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126343 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126345.P3908412351960303576

/-! ## A126345.P17005120551182236206

`record[A126343(A038722(n+1))]`
-/

namespace A126345.P17005120551182236206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126343 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126345.P17005120551182236206

/-! ## A126345.P5046723209279978540

`record[A126343(A066182(n+1))]`
-/

namespace A126345.P5046723209279978540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126343 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126345.P5046723209279978540

/-! ## A126345.P7023985153964029593

`record[A126343(A115017(n+1))]`
-/

namespace A126345.P7023985153964029593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126343 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126345.P7023985153964029593

/-!
# A126348: Limit of reversed rows of triangle A126347, in which row sums equal Bell numbers (A000110).

The programs for A126348, there is no canonical definition to state claims against.
-/

/-! ## A126348.P7872165690859325519

`A126347(∑[∑[n]]+1)`
-/

namespace A126348.P7872165690859325519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126348.P7872165690859325519

/-! ## A126348.P5179959736462231580

`A126347(A035597(n))^ceil(acot(n))`
-/

namespace A126348.P5179959736462231580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126347 (A035597 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A126348.P5179959736462231580

/-! ## A126348.P14483495166872058991

`A126347(A035597(n))%A121503(n)`
-/

namespace A126348.P14483495166872058991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126347 (A035597 n).toNat) (A121503 n)

end

end A126348.P14483495166872058991

/-! ## A126348.P18440381069050395201

`A002865(2*n)-A108611(A000094(n+1))`
-/

namespace A126348.P18440381069050395201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n) - A108611 (A000094 (n + 1)).toNat

end

end A126348.P18440381069050395201

/-! ## A126348.P18074972619274491096

`A363743(A279710(n+1))`
-/

namespace A126348.P18074972619274491096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363743 (A279710 (n + 1)).toNat

end

end A126348.P18074972619274491096

/-!
# A126349: Largest term in rows of triangle A126347, in which row sums equal Bell numbers (A000110).

The programs for A126349, there is no canonical definition to state claims against.
-/

/-! ## A126349.P8792582832830179085

`A157271(floor(sqrt(A158095(n))))`
-/

namespace A126349.P8792582832830179085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.sqrt (A158095 n)).toNat

end

end A126349.P8792582832830179085

/-! ## A126349.P8130108379941697935

`A187184(A204064(n))+A111133(n)`
-/

namespace A126349.P8130108379941697935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (A204064 n).toNat + A111133 n

end

end A126349.P8130108379941697935

/-! ## A126349.P2224556691228327934

`A341949(ceil(3*2^(n-3))+5)`
-/

namespace A126349.P2224556691228327934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341949 (⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉ + 5).toNat

end

end A126349.P2224556691228327934

/-! ## A126349.P16505829452189067576

`A121528(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A126349.P16505829452189067576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A121528 (a (n - 1) + 3).toNat

end

end A126349.P16505829452189067576

/-!
# A126350: Triangle read by rows: matrix product of the binomial coefficients with the Stirling numbers of the second kind.

The programs for A126350, the canonical program `A126350.P4758540228161552645` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126350 has offset 1).

The definition of A126350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126350.P6405120276023352200

`A137597(∑[char[∑[n]]]²-n)`
-/

namespace A126350.P6405120276023352200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137597 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A126350.P6405120276023352200

namespace A126350

/-- `A137597(∑[char[∑[n]]]²-n)` -/
def P6405120276023352200.Spec : Prop :=
  ∀ n, P6405120276023352200.a n = A126350 (n + 1)

end A126350

/-! ## A126350.P2356577071510290341

`or(char[1], A137597(A038722(n+1)))`
-/

namespace A126350.P2356577071510290341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A137597 (A038722 (n + 1)).toNat)

end

end A126350.P2356577071510290341

namespace A126350

/-- `or(char[1], A137597(A038722(n+1)))` -/
def P2356577071510290341.Spec : Prop :=
  ∀ n, P2356577071510290341.a n = A126350 (n + 1)

end A126350

/-! ## A126350.P13935069621109951612

`A137597(A038722(n+1))^A007318(C(2, n))`
-/

namespace A126350.P13935069621109951612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137597 (A038722 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A126350.P13935069621109951612

namespace A126350

/-- `A137597(A038722(n+1))^A007318(C(2, n))` -/
def P13935069621109951612.Spec : Prop :=
  ∀ n, P13935069621109951612.a n = (A126350 (n + 1) : ℚ)

end A126350

/-! ## A126350.P4758540228161552645

`A137597(A038722(n+1))+2%A008836(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126350

/-- `A137597(A038722(n+1))+2%A008836(n+1)` -/
def P4758540228161552645.Spec : Prop :=
  ∀ n, P4758540228161552645.a n = A126350 (n + 1)

theorem P4758540228161552645.correct : P4758540228161552645.Spec := by
  intro n
  simp only [A126350, Nat.add_sub_cancel]

end A126350

/-! ## A126350.P16410077400957392654

`A000041(C(2, n+2))*A137597(A038722(n+1))`
-/

namespace A126350.P16410077400957392654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A137597 (A038722 (n + 1)).toNat

end

end A126350.P16410077400957392654

namespace A126350

/-- `A000041(C(2, n+2))*A137597(A038722(n+1))` -/
def P16410077400957392654.Spec : Prop :=
  ∀ n, P16410077400957392654.a n = A126350 (n + 1)

end A126350

/-! ## A126350.P1480182886117615840

`A001222(A084126(n+1))+A137597(A038722(n+1))-1`
-/

namespace A126350.P1480182886117615840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084126 (n + 1)).toNat + (A137597 (A038722 (n + 1)).toNat - 1)

end

end A126350.P1480182886117615840

namespace A126350

/-- `A001222(A084126(n+1))+A137597(A038722(n+1))-1` -/
def P1480182886117615840.Spec : Prop :=
  ∀ n, P1480182886117615840.a n = A126350 (n + 1)

end A126350

/-! ## A126350.P6192438390969909847

`A001222(A014754(n+1))+A137597(A038722(n+1))-1`
-/

namespace A126350.P6192438390969909847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014754 (n + 1)).toNat + (A137597 (A038722 (n + 1)).toNat - 1)

end

end A126350.P6192438390969909847

namespace A126350

/-- `A001222(A014754(n+1))+A137597(A038722(n+1))-1` -/
def P6192438390969909847.Spec : Prop :=
  ∀ n, P6192438390969909847.a n = A126350 (n + 1)

end A126350

/-! ## A126350.P3076946409905807949

`A007318(∑[n])*A137597(A038722(n+1))`
-/

namespace A126350.P3076946409905807949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A137597 (A038722 (n + 1)).toNat

end

end A126350.P3076946409905807949

namespace A126350

/-- `A007318(∑[n])*A137597(A038722(n+1))` -/
def P3076946409905807949.Spec : Prop :=
  ∀ n, P3076946409905807949.a n = A126350 (n + 1)

end A126350

/-!
# A126351: Triangle read by rows: matrix product of the Stirling numbers of the second kind with the binomial coefficients.

The programs for A126351, the canonical program `A126351.P15461548847100663170` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126351 has offset 1).

The definition of A126351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126351.P15461548847100663170

`(row(n)-col(n)+2)*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126351

/-- `(row(n)-col(n)+2)*T(n-1,k-1)+T(n-1,k)` -/
def P15461548847100663170.Spec : Prop :=
  ∀ n, P15461548847100663170.a n = A126351 (n + 1)

theorem P15461548847100663170.correct : P15461548847100663170.Spec := by
  intro n
  simp only [A126351, Nat.add_sub_cancel]

end A126351

/-! ## A126351.P12441425213740597825

`A143494(A061579(n)+2)`
-/

namespace A126351.P12441425213740597825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (A061579 n + 2).toNat

end

end A126351.P12441425213740597825

namespace A126351

/-- `A143494(A061579(n)+2)` -/
def P12441425213740597825.Spec : Prop :=
  ∀ n, P12441425213740597825.a n = A126351 (n + 1)

end A126351

/-! ## A126351.P12939069168604764757

`A143494(A038722(n+1)+1)`
-/

namespace A126351.P12939069168604764757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (A038722 (n + 1) + 1).toNat

end

end A126351.P12939069168604764757

namespace A126351

/-- `A143494(A038722(n+1)+1)` -/
def P12939069168604764757.Spec : Prop :=
  ∀ n, P12939069168604764757.a n = A126351 (n + 1)

end A126351

/-! ## A126351.P14747279552668967871

`A143494(A114327(n)+2+n)`
-/

namespace A126351.P14747279552668967871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (A114327 n + 2 + (n : ℤ)).toNat

end

end A126351.P14747279552668967871

namespace A126351

/-- `A143494(A114327(n)+2+n)` -/
def P14747279552668967871.Spec : Prop :=
  ∀ n, P14747279552668967871.a n = A126351 (n + 1)

end A126351

/-! ## A126351.P2707141466626426840

`A143494(A265129(n+1)-n)`
-/

namespace A126351.P2707141466626426840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (A265129 (n + 1) - (n : ℤ)).toNat

end

end A126351.P2707141466626426840

namespace A126351

/-- `A143494(A265129(n+1)-n)` -/
def P2707141466626426840.Spec : Prop :=
  ∀ n, P2707141466626426840.a n = A126351 (n + 1)

end A126351

/-! ## A126351.P15521696961662838381

`A143494(∑[A198954(n)-1]+2)`
-/

namespace A126351.P15521696961662838381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A126351.P15521696961662838381

namespace A126351

/-- `A143494(∑[A198954(n)-1]+2)` -/
def P15521696961662838381.Spec : Prop :=
  ∀ n, P15521696961662838381.a n = A126351 (n + 1)

end A126351

/-! ## A126351.P444010706724103448

`A143494(A093995(n+1)+1-n)`
-/

namespace A126351.P444010706724103448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (A093995 (n + 1) + (1 - (n : ℤ))).toNat

end

end A126351.P444010706724103448

namespace A126351

/-- `A143494(A093995(n+1)+1-n)` -/
def P444010706724103448.Spec : Prop :=
  ∀ n, P444010706724103448.a n = A126351 (n + 1)

end A126351

/-! ## A126351.P12501128397737902504

`A143494(A002024(n+1)²+1-n)`
-/

namespace A126351.P12501128397737902504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (A002024 (n + 1) ^ 2 + (1 - (n : ℤ))).toNat

end

end A126351.P12501128397737902504

namespace A126351

/-- `A143494(A002024(n+1)²+1-n)` -/
def P12501128397737902504.Spec : Prop :=
  ∀ n, P12501128397737902504.a n = A126351 (n + 1)

end A126351

/-!
# A126352: Denominator of z-sequence for the Sheffer (Appell type) triangle A134832 (circular succession numbers).

The programs for A126352, there is no canonical definition to state claims against.
-/

/-! ## A126352.P15879738617838870989

`A348173(n+1)%A095804(A004151(n+1))`
-/

namespace A126352.P15879738617838870989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348173 (n + 1)) (A095804 (A004151 (n + 1)).toNat)

end

end A126352.P15879738617838870989

/-! ## A126352.P15966605563222019517

`(n+1)/gcd(n+1, A331711(n))`
-/

namespace A126352.P15966605563222019517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A331711 n) : ℚ)

end

end A126352.P15966605563222019517

/-! ## A126352.P16697673899740540539

`lcm(n+1, A331711(n))/A331711(n)`
-/

namespace A126352.P16697673899740540539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A331711 n) : ℚ) / (A331711 n : ℚ)

end

end A126352.P16697673899740540539

/-! ## A126352.P8245129519668185585

`gcd(A026741(A236364(n+1)), A199343(n))`
-/

namespace A126352.P8245129519668185585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A236364 (n + 1)).toNat) (A199343 n)

end

end A126352.P8245129519668185585

/-! ## A126352.P2308564903171214796

`gcd(A178312(A071568(n)), A199343(n))`
-/

namespace A126352.P2308564903171214796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178312 (A071568 n).toNat) (A199343 n)

end

end A126352.P2308564903171214796

/-!
# A126353: Triangle read by rows: matrix product of the Stirling numbers of the first kind with the binomial coefficients.

The programs for A126353, there is no canonical definition to state claims against.
-/

/-! ## A126353.P13545520967864507117

`A015435(A002262(n))*A094791(n)`
-/

namespace A126353.P13545520967864507117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015435 (A002262 n).toNat * A094791 n

end

end A126353.P13545520967864507117

/-! ## A126353.P10570515825527362208

`A008836(A059268(n))*A094791(n)`
-/

namespace A126353.P10570515825527362208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A094791 n

end

end A126353.P10570515825527362208

/-! ## A126353.P489215759774267649

`A016327(A060511(n))*A094791(n)`
-/

namespace A126353.P489215759774267649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (A060511 n).toNat * A094791 n

end

end A126353.P489215759774267649

/-! ## A126353.P9270842298614967754

`A033999(A061885(n))*A094791(n)`
-/

namespace A126353.P9270842298614967754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A094791 n

end

end A126353.P9270842298614967754

/-! ## A126353.P1323150444888507858

`A016327(A025690(n+1))*A094791(n)`
-/

namespace A126353.P1323150444888507858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (A025690 (n + 1)).toNat * A094791 n

end

end A126353.P1323150444888507858

/-!
# A126354: a(n) = 6*a(n-2) - a(n-4) for n > 4, with a(1)=1, a(2)=0, a(3)=3, a(4)=2.

The programs for A126354, the canonical program `A126354.P1283488276151876874` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126354 has offset 1).

The definition of A126354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)-a(n-4)` (program `A126354.P1283488276151876874`, by `A126354.P1283488276151876874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126354.P17065551412795938600

`ogf((1-3x^2+2x^3)/(1-6x^2+x^4))`
-/

namespace A126354.P17065551412795938600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 2] [1, 0, -6, 0, 1] n

end

end A126354.P17065551412795938600

namespace A126354

/-- `ogf((1-3x^2+2x^3)/(1-6x^2+x^4))` -/
def P17065551412795938600.Spec : Prop :=
  ∀ n, P17065551412795938600.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P1283488276151876874

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126354

/-- `6*a(n-2)-a(n-4)` -/
def P1283488276151876874.Spec : Prop :=
  ∀ n, P1283488276151876874.a n = A126354 (n + 1)

theorem P1283488276151876874.correct : P1283488276151876874.Spec := by
  intro n
  simp only [A126354, Nat.add_sub_cancel]

end A126354

/-! ## A126354.P15587101854724146870

`A116560(A146512(n+1))`
-/

namespace A126354.P15587101854724146870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A146512 (n + 1)).toNat

end

end A126354.P15587101854724146870

namespace A126354

/-- `A116560(A146512(n+1))` -/
def P15587101854724146870.Spec : Prop :=
  ∀ n, P15587101854724146870.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P7535793463921747572

`A116560(A228137(n+1))`
-/

namespace A126354.P7535793463921747572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A228137 (n + 1)).toNat

end

end A126354.P7535793463921747572

namespace A126354

/-- `A116560(A228137(n+1))` -/
def P7535793463921747572.Spec : Prop :=
  ∀ n, P7535793463921747572.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P14895970258132842956

`A116560(2*A047225(n+1)+1)`
-/

namespace A126354.P14895970258132842956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (2 * A047225 (n + 1) + 1).toNat

end

end A126354.P14895970258132842956

namespace A126354

/-- `A116560(2*A047225(n+1)+1)` -/
def P14895970258132842956.Spec : Prop :=
  ∀ n, P14895970258132842956.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P11012868992615446867

`A116560(A047225(n+1)+A047225(n+1)+1)`
-/

namespace A126354.P11012868992615446867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A047225 (n + 1) + (A047225 (n + 1) + 1)).toNat

end

end A126354.P11012868992615446867

namespace A126354

/-- `A116560(A047225(n+1)+A047225(n+1)+1)` -/
def P11012868992615446867.Spec : Prop :=
  ∀ n, P11012868992615446867.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P6641505063315439078

`Δ[Δ[A204512(n+2)]]`
-/

namespace A126354.P6641505063315439078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126354.P6641505063315439078

namespace A126354

/-- `Δ[Δ[A204512(n+2)]]` -/
def P6641505063315439078.Spec : Prop :=
  ∀ n, P6641505063315439078.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P8847930250241071731

`A104683(n)-A000129(n)`
-/

namespace A126354.P8847930250241071731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 n - A000129 n

end

end A126354.P8847930250241071731

namespace A126354

/-- `A104683(n)-A000129(n)` -/
def P8847930250241071731.Spec : Prop :=
  ∀ n, P8847930250241071731.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P16740749770520097136

`Δ[Δ[A002965(n)*A119016(n)]]`
-/

namespace A126354.P16740749770520097136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 n * A119016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126354.P16740749770520097136

namespace A126354

/-- `Δ[Δ[A002965(n)*A119016(n)]]` -/
def P16740749770520097136.Spec : Prop :=
  ∀ n, P16740749770520097136.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P4843850022408976803

`A084068(n+1)-A163271(n+1)`
-/

namespace A126354.P4843850022408976803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) - A163271 (n + 1)

end

end A126354.P4843850022408976803

namespace A126354

/-- `A084068(n+1)-A163271(n+1)` -/
def P4843850022408976803.Spec : Prop :=
  ∀ n, P4843850022408976803.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P371460409672597827

`A084068(n+1)-2*A000129(n)`
-/

namespace A126354.P371460409672597827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) - 2 * A000129 n

end

end A126354.P371460409672597827

namespace A126354

/-- `A084068(n+1)-2*A000129(n)` -/
def P371460409672597827.Spec : Prop :=
  ∀ n, P371460409672597827.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P10348709999909468995

`(A041011(n)-A000129(n))*A000034(n)`
-/

namespace A126354.P10348709999909468995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041011 n - A000129 n) * A000034 n

end

end A126354.P10348709999909468995

namespace A126354

/-- `(A041011(n)-A000129(n))*A000034(n)` -/
def P10348709999909468995.Spec : Prop :=
  ∀ n, P10348709999909468995.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P16008982344469569255

`A002965(A053438(n+1))-A002965(2*n)`
-/

namespace A126354.P16008982344469569255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A053438 (n + 1)).toNat - A002965 (2 * n)

end

end A126354.P16008982344469569255

namespace A126354

/-- `A002965(A053438(n+1))-A002965(2*n)` -/
def P16008982344469569255.Spec : Prop :=
  ∀ n, P16008982344469569255.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P10054471345540872287

`A000129(n+1)-A000034(n)*A000129(n)`
-/

namespace A126354.P10054471345540872287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A000034 n * A000129 n

end

end A126354.P10054471345540872287

namespace A126354

/-- `A000129(n+1)-A000034(n)*A000129(n)` -/
def P10054471345540872287.Spec : Prop :=
  ∀ n, P10054471345540872287.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P14349893201367947027

`A084068(n+1)-A000034(n)*A089499(n)`
-/

namespace A126354.P14349893201367947027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) - A000034 n * A089499 n

end

end A126354.P14349893201367947027

namespace A126354

/-- `A084068(n+1)-A000034(n)*A089499(n)` -/
def P14349893201367947027.Spec : Prop :=
  ∀ n, P14349893201367947027.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P2936103609531166611

`A000129(n+1)+A001333(n)-A079496(n+1)`
-/

namespace A126354.P2936103609531166611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A001333 n - A079496 (n + 1))

end

end A126354.P2936103609531166611

namespace A126354

/-- `A000129(n+1)+A001333(n)-A079496(n+1)` -/
def P2936103609531166611.Spec : Prop :=
  ∀ n, P2936103609531166611.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P8229596508153517067

`A084068(n+1)+A001333(n)-A001333(n+1)`
-/

namespace A126354.P8229596508153517067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) + (A001333 n - A001333 (n + 1))

end

end A126354.P8229596508153517067

namespace A126354

/-- `A084068(n+1)+A001333(n)-A001333(n+1)` -/
def P8229596508153517067.Spec : Prop :=
  ∀ n, P8229596508153517067.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P5240439915164124729

`A266504(2*n+1)-A079496(n+1)`
-/

namespace A126354.P5240439915164124729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n + 1) - A079496 (n + 1)

end

end A126354.P5240439915164124729

namespace A126354

/-- `A266504(2*n+1)-A079496(n+1)` -/
def P5240439915164124729.Spec : Prop :=
  ∀ n, P5240439915164124729.a n = A126354 (n + 1)

end A126354

/-! ## A126354.P9965158179048070295

`A052542(n+1)+A098790(n)-A124124(n+2)`
-/

namespace A126354.P9965158179048070295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) + (A098790 n - A124124 (n + 2))

end

end A126354.P9965158179048070295

namespace A126354

/-- `A052542(n+1)+A098790(n)-A124124(n+2)` -/
def P9965158179048070295.Spec : Prop :=
  ∀ n, P9965158179048070295.a n = A126354 (n + 1)

end A126354

/-!
# A126355: Squares that are equal to the sum of successive primes (with repetition).

The programs for A126355, there is no canonical definition to state claims against.
-/

/-! ## A126355.P10015182197467421296

`A253893(A112529(n+1)²)²`
-/

namespace A126355.P10015182197467421296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253893 (A112529 (n + 1) ^ 2).toNat ^ 2

end

end A126355.P10015182197467421296

/-! ## A126355.P9491162546975199704

`A001222(lcm(3, A234133(n+1)))²`
-/

namespace A126355.P9491162546975199704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A234133 (n + 1))) ^ 2

end

end A126355.P9491162546975199704

/-! ## A126355.P7311501883672533224

`A093995(eq[A112379(n+2), A269246(n)])`
-/

namespace A126355.P7311501883672533224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112379 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A126355.P7311501883672533224

/-! ## A126355.P7702926240483406028

`(A000523(A160777(n+1)*A308708(n+1))+1)²`
-/

namespace A126355.P7702926240483406028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000523 (A160777 (n + 1) * A308708 (n + 1)).toNat + 1) ^ 2

end

end A126355.P7702926240483406028

/-!
# A126356: a(n) is the n-th integer from among the positive integers which are coprime to (n+1).

The programs for A126356, there is no canonical definition to state claims against.
-/

/-! ## A126356.P4571730237202374048

`A077581(∑[n+2])`
-/

namespace A126356.P4571730237202374048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126356.P4571730237202374048

/-! ## A126356.P10864690322727570385

`A083106(∑[n+2])`
-/

namespace A126356.P10864690322727570385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126356.P10864690322727570385

/-! ## A126356.P8602667401860999404

`A083110(C(n+3, 2))`
-/

namespace A126356.P8602667401860999404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083110 (Nat.choose (n + 3) 2)

end

end A126356.P8602667401860999404

/-! ## A126356.P1505997745513453072

`A081500(n+2)-(n+2)`
-/

namespace A126356.P1505997745513453072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081500 (n + 2) - (n + 2 : ℤ)

end

end A126356.P1505997745513453072

/-! ## A126356.P6005038986287235865

`A077664(∑[n+2])-(n+2)`
-/

namespace A126356.P6005038986287235865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 2 : ℤ)

end

end A126356.P6005038986287235865

/-! ## A126356.P13941167156382684747

`A083110(A253145(n+1))`
-/

namespace A126356.P13941167156382684747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083110 (A253145 (n + 1)).toNat

end

end A126356.P13941167156382684747

/-! ## A126356.P3799206926449861966

`or(char[2], A077581(A055998(n)+2))`
-/

namespace A126356.P3799206926449861966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A077581 (A055998 n + 2).toNat)

end

end A126356.P3799206926449861966

/-! ## A126356.P5217070625200324984

`A023444(A077664(∑[n+2])-n)`
-/

namespace A126356.P5217070625200324984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A077664 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)).toNat

end

end A126356.P5217070625200324984

/-! ## A126356.P13845021637343887701

`A077581(A055998(n)+2)%A002146(n)`
-/

namespace A126356.P13845021637343887701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077581 (A055998 n + 2).toNat) (A002146 n)

end

end A126356.P13845021637343887701

/-!
# A126357: a(n) is the (n+1)st integer from among the positive integers which are coprime to n.

The programs for A126357, there is no canonical definition to state claims against.
-/

/-! ## A126357.P13491299619637890990

`A126571(∑[n+2])`
-/

namespace A126357.P13491299619637890990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126357.P13491299619637890990

/-! ## A126357.P11457844354002945153

`or(n%2, A126571(A000096(n+1)))`
-/

namespace A126357.P11457844354002945153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A126571 (A000096 (n + 1)).toNat)

end

end A126357.P11457844354002945153

/-! ## A126357.P13357705306349847618

`A077664(∑[n+1]-A000010(n+1)+1)`
-/

namespace A126357.P13357705306349847618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000010 (n + 1) + 1).toNat

end

end A126357.P13357705306349847618

/-! ## A126357.P7783204434137388349

`A077664(A051953(n+1)+A000124(n))`
-/

namespace A126357.P7783204434137388349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (A051953 (n + 1) + A000124 n).toNat

end

end A126357.P7783204434137388349

/-! ## A126357.P10970532961207271832

`A126571(A000096(n+1))%A000040(n+7)`
-/

namespace A126357.P10970532961207271832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126571 (A000096 (n + 1)).toNat) (A000040 (n + 7))

end

end A126357.P10970532961207271832

/-! ## A126357.P18036014207434556559

`A007318(C(2, n))*A126571(A000096(n+1))`
-/

namespace A126357.P18036014207434556559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A126571 (A000096 (n + 1)).toNat

end

end A126357.P18036014207434556559

/-! ## A126357.P17409691568060803511

`A007318(A000096(2*n))*A126571(A000096(n+1))`
-/

namespace A126357.P17409691568060803511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (2 * n)).toNat * A126571 (A000096 (n + 1)).toNat

end

end A126357.P17409691568060803511

/-!
# A126358: Number of base 4 n-digit numbers with adjacent digits differing by one or less.

The programs for A126358, the canonical program `A126358.P11435136658511100534` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126358 has offset 0).

The definition of A126358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126358.P16753065155911436974

`ogf((1+x-x^2)/(1-3x+x^2))`
-/

namespace A126358.P16753065155911436974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -3, 1] n

end

end A126358.P16753065155911436974

namespace A126358

/-- `ogf((1+x-x^2)/(1-3x+x^2))` -/
def P16753065155911436974.Spec : Prop :=
  ∀ n, P16753065155911436974.a n = A126358 n

end A126358

/-! ## A126358.P11435136658511100534

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126358

/-- `3*a(n-1)-a(n-2)` -/
def P11435136658511100534.Spec : Prop :=
  ∀ n, P11435136658511100534.a n = A126358 n

theorem P11435136658511100534.correct : P11435136658511100534.Spec := by
  intro n
  simp only [A126358]

end A126358

/-! ## A126358.P491636695406665179

`floor(ϕ²*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A126358.P491636695406665179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A126358.P491636695406665179

namespace A126358

/-- `floor(ϕ²*a(n-1))` -/
def P491636695406665179.Spec : Prop :=
  ∀ n, P491636695406665179.a n = A126358 n

end A126358

/-! ## A126358.P12432600653000994951

`round(ϕ²*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A126358.P12432600653000994951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A126358.P12432600653000994951

namespace A126358

/-- `round(ϕ²*a(n-1))` -/
def P12432600653000994951.Spec : Prop :=
  ∀ n, P12432600653000994951.a n = A126358 n

end A126358

/-! ## A126358.P13713259703277745326

`round(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=4`
-/

namespace A126358.P13713259703277745326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio))

end

end A126358.P13713259703277745326

namespace A126358

/-- `round(a(n-1)/(2-ϕ))` -/
def P13713259703277745326.Spec : Prop :=
  ∀ n, P13713259703277745326.a n = A126358 n

end A126358

/-! ## A126358.P15953773945671923900

`floor(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A126358.P15953773945671923900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A126358.P15953773945671923900

namespace A126358

/-- `floor(ϕ*ϕ*a(n-1))` -/
def P15953773945671923900.Spec : Prop :=
  ∀ n, P15953773945671923900.a n = A126358 n

end A126358

/-! ## A126358.P2115416339773314415

`round(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A126358.P2115416339773314415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A126358.P2115416339773314415

namespace A126358

/-- `round(ϕ*ϕ*a(n-1))` -/
def P2115416339773314415.Spec : Prop :=
  ∀ n, P2115416339773314415.a n = A126358 n

end A126358

/-! ## A126358.P13230196810465189928

`record[a(n-2)-a(n-1)]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A126358.P13230196810465189928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126358.P13230196810465189928

namespace A126358

/-- `record[a(n-2)-a(n-1)]` -/
def P13230196810465189928.Spec : Prop :=
  ∀ n, P13230196810465189928.a n = A126358 n

end A126358

/-! ## A126358.P15786409785087165205

`A128588(Δ[n²])`
-/

namespace A126358.P15786409785087165205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126358.P15786409785087165205

namespace A126358

/-- `A128588(Δ[n²])` -/
def P15786409785087165205.Spec : Prop :=
  ∀ n, P15786409785087165205.a n = A126358 n

end A126358

/-! ## A126358.P1341867958860898323

`A133585(Δ[n²])`
-/

namespace A126358.P1341867958860898323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133585 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126358.P1341867958860898323

namespace A126358

/-- `A133585(Δ[n²])` -/
def P1341867958860898323.Spec : Prop :=
  ∀ n, P1341867958860898323.a n = A126358 n

end A126358

/-! ## A126358.P9902090225167709676

`Δ[A111282(n+1)]`
-/

namespace A126358.P9902090225167709676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126358.P9902090225167709676

namespace A126358

/-- `Δ[A111282(n+1)]` -/
def P9902090225167709676.Spec : Prop :=
  ∀ n, P9902090225167709676.a n = A126358 n

end A126358

/-! ## A126358.P9018939485520040908

`Δ[A055389(2*n)]`
-/

namespace A126358.P9018939485520040908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126358.P9018939485520040908

namespace A126358

/-- `Δ[A055389(2*n)]` -/
def P9018939485520040908.Spec : Prop :=
  ∀ n, P9018939485520040908.a n = A126358 n

end A126358

/-! ## A126358.P7463685522239802366

`record[Δ[A109794(n+2)]]`
-/

namespace A126358.P7463685522239802366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126358.P7463685522239802366

namespace A126358

/-- `record[Δ[A109794(n+2)]]` -/
def P7463685522239802366.Spec : Prop :=
  ∀ n, P7463685522239802366.a n = A126358 n

end A126358

/-! ## A126358.P11787897838133438427

`Δ[A163733(2*(n+1))]`
-/

namespace A126358.P11787897838133438427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126358.P11787897838133438427

namespace A126358

/-- `Δ[A163733(2*(n+1))]` -/
def P11787897838133438427.Spec : Prop :=
  ∀ n, P11787897838133438427.a n = A126358 n

end A126358

/-! ## A126358.P1961294585060647025

`A173388(3*(n+1)+n)`
-/

namespace A126358.P1961294585060647025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (3 * (n + 1) + n)

end

end A126358.P1961294585060647025

namespace A126358

/-- `A173388(3*(n+1)+n)` -/
def P1961294585060647025.Spec : Prop :=
  ∀ n, P1961294585060647025.a n = A126358 n

end A126358

/-! ## A126358.P12409544911480869522

`A055819((n+1)%(2*n+1))`
-/

namespace A126358.P12409544911480869522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 ((n + 1) % (2 * n + 1))

end

end A126358.P12409544911480869522

namespace A126358

/-- `A055819((n+1)%(2*n+1))` -/
def P12409544911480869522.Spec : Prop :=
  ∀ n, P12409544911480869522.a n = A126358 n

end A126358

/-! ## A126358.P6248298669364018748

`ceil(A000045(2*n)+(ϕ^n)²)`
-/

namespace A126358.P6248298669364018748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (2 * n) : ℝ) + (Real.goldenRatio ^ n) ^ 2⌉

end

end A126358.P6248298669364018748

namespace A126358

/-- `ceil(A000045(2*n)+(ϕ^n)²)` -/
def P6248298669364018748.Spec : Prop :=
  ∀ n, P6248298669364018748.a n = A126358 n

end A126358

/-! ## A126358.P17098718516193402576

`round(∑[2/ϕ*A000045(Δ[n²])])`
-/

namespace A126358.P17098718516193402576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.goldenRatio * (A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126358.P17098718516193402576

namespace A126358

/-- `round(∑[2/ϕ*A000045(Δ[n²])])` -/
def P17098718516193402576.Spec : Prop :=
  ∀ n, P17098718516193402576.a n = A126358 n

end A126358

/-! ## A126358.P336866605954768718

`2*A000032(2*n)-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A126358.P336866605954768718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * A000032 (2 * n) - a (n - 1)

end

end A126358.P336866605954768718

namespace A126358

/-- `2*A000032(2*n)-a(n-1)` -/
def P336866605954768718.Spec : Prop :=
  ∀ n, P336866605954768718.a n = A126358 n

end A126358

/-! ## A126358.P6359811519098677053

`A131780(A004277(n))`
-/

namespace A126358.P6359811519098677053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131780 (A004277 n).toNat

end

end A126358.P6359811519098677053

namespace A126358

/-- `A131780(A004277(n))` -/
def P6359811519098677053.Spec : Prop :=
  ∀ n, P6359811519098677053.a n = A126358 n

end A126358

/-!
# A126359: A sequence of prime numbers that can be expressed using only digits 0 and 1 in minimum ascending bases.

The programs for A126359, there is no canonical definition to state claims against.
-/

/-! ## A126359.P7498247940936364845

`p?[lcm(n, A338863(A022998(n)))]`
-/

namespace A126359.P7498247940936364845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A338863 (A022998 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126359.P7498247940936364845

/-! ## A126359.P14339503168333733447

`p?[lcm(A141310(2*n), A338863(2*n+1))]`
-/

namespace A126359.P14339503168333733447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141310 (2 * n)) (A338863 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126359.P14339503168333733447

/-!
# A126360: Number of base 6 n-digit numbers with adjacent digits differing by one or less.

The programs for A126360, the canonical program `A126360.P17553247224143320031` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126360 has offset 0).

The definition of A126360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126360.P17553247224143320031

`ogf((1+2x-5x^2-x^3)/(1-4x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126360

/-- `ogf((1+2x-5x^2-x^3)/(1-4x+3x^2+x^3))` -/
def P17553247224143320031.Spec : Prop :=
  ∀ n, P17553247224143320031.a n = A126360 n

theorem P17553247224143320031.correct : P17553247224143320031.Spec := by
  intro n
  simp only [A126360]

end A126360

/-! ## A126360.P15229943441584371906

`4*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=44`
-/

namespace A126360.P15229943441584371906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 16, 44] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A126360.P15229943441584371906

namespace A126360

/-- `4*a(n-1)-3*a(n-2)-a(n-3)` -/
def P15229943441584371906.Spec : Prop :=
  ∀ n, P15229943441584371906.a n = A126360 n

end A126360

/-! ## A126360.P5242465812244592779

`gcd(6, 2^n)*A121449(n+1)`
-/

namespace A126360.P5242465812244592779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (2 ^ n) : ℤ) * A121449 (n + 1)

end

end A126360.P5242465812244592779

namespace A126360

/-- `gcd(6, 2^n)*A121449(n+1)` -/
def P5242465812244592779.Spec : Prop :=
  ∀ n, P5242465812244592779.a n = A126360 n

end A126360

/-! ## A126360.P11278433067563609221

`(A057427(n)+1)*A121449(n+1)`
-/

namespace A126360.P11278433067563609221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A121449 (n + 1)

end

end A126360.P11278433067563609221

namespace A126360

/-- `(A057427(n)+1)*A121449(n+1)` -/
def P11278433067563609221.Spec : Prop :=
  ∀ n, P11278433067563609221.a n = A126360 n

end A126360

/-! ## A126360.P17288583694515049945

`2*A121449(n+1)-A000007(n)`
-/

namespace A126360.P17288583694515049945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121449 (n + 1) - A000007 n

end

end A126360.P17288583694515049945

namespace A126360

/-- `2*A121449(n+1)-A000007(n)` -/
def P17288583694515049945.Spec : Prop :=
  ∀ n, P17288583694515049945.a n = A126360 n

end A126360

/-! ## A126360.P6892129104399850424

`A000005(A027746(n+1))*A121449(n+1)`
-/

namespace A126360.P6892129104399850424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027746 (n + 1)).toNat * A121449 (n + 1)

end

end A126360.P6892129104399850424

namespace A126360

/-- `A000005(A027746(n+1))*A121449(n+1)` -/
def P6892129104399850424.Spec : Prop :=
  ∀ n, P6892129104399850424.a n = A126360 n

end A126360

/-! ## A126360.P3316743230960522641

`Δ[A085810(n+1)]*A342086(A006530(n+1))`
-/

namespace A126360.P3316743230960522641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A342086 (A006530 (n + 1)).toNat

end

end A126360.P3316743230960522641

namespace A126360

/-- `Δ[A085810(n+1)]*A342086(A006530(n+1))` -/
def P3316743230960522641.Spec : Prop :=
  ∀ n, P3316743230960522641.a n = A126360 n

end A126360

/-! ## A126360.P3883257897483334725

`A011782(n+1)/A011782(n)*A121449(n+1)`
-/

namespace A126360.P3883257897483334725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A011782 n : ℚ) * (A121449 (n + 1) : ℚ)

end

end A126360.P3883257897483334725

namespace A126360

/-- `A011782(n+1)/A011782(n)*A121449(n+1)` -/
def P3883257897483334725.Spec : Prop :=
  ∀ n, P3883257897483334725.a n = (A126360 n : ℚ)

end A126360

/-! ## A126360.P15532198374716397292

`A121449(n+1)+A121449(n+1)%A094789(n+1)`
-/

namespace A126360.P15532198374716397292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 1) + Int.tmod (A121449 (n + 1)) (A094789 (n + 1))

end

end A126360.P15532198374716397292

namespace A126360

/-- `A121449(n+1)+A121449(n+1)%A094789(n+1)` -/
def P15532198374716397292.Spec : Prop :=
  ∀ n, P15532198374716397292.a n = A126360 n

end A126360

/-!
# A126362: Number of base 8 n-digit numbers with adjacent digits differing by one or less.

The programs for A126362, the canonical program `A126362.P7400439624363483873` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126362 has offset 0).

The definition of A126362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126362.P2787736725405649513

`ogf((1+3x-12x^2+x^3+4x^4)/(1-5x+6x^2+x^3-2x^4))`
-/

namespace A126362.P2787736725405649513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -12, 1, 4] [1, -5, 6, 1, -2] n

end

end A126362.P2787736725405649513

namespace A126362

/-- `ogf((1+3x-12x^2+x^3+4x^4)/(1-5x+6x^2+x^3-2x^4))` -/
def P2787736725405649513.Spec : Prop :=
  ∀ n, P2787736725405649513.a n = A126362 n

end A126362

/-! ## A126362.P7400439624363483873

`5*a(n-1)-6*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=8, a(2)=22, a(3)=62, a(4)=176`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126362

/-- `5*a(n-1)-6*a(n-2)-a(n-3)+2*a(n-4)` -/
def P7400439624363483873.Spec : Prop :=
  ∀ n, P7400439624363483873.a n = A126362 n

theorem P7400439624363483873.correct : P7400439624363483873.Spec := by
  intro n
  simp only [A126362]

end A126362

/-! ## A126362.P11797021040030814065

`A000265(A126363(n))-A140429(n)`
-/

namespace A126362.P11797021040030814065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A126363 n).toNat - A140429 n

end

end A126362.P11797021040030814065

namespace A126362

/-- `A000265(A126363(n))-A140429(n)` -/
def P11797021040030814065.Spec : Prop :=
  ∀ n, P11797021040030814065.a n = A126362 n

end A126362

/-! ## A126362.P14029820378320567137

`A126365(n)-A008585(A140429(n))`
-/

namespace A126362.P14029820378320567137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126365 n - A008585 (A140429 n).toNat

end

end A126362.P14029820378320567137

namespace A126362

/-- `A126365(n)-A008585(A140429(n))` -/
def P14029820378320567137.Spec : Prop :=
  ∀ n, P14029820378320567137.a n = A126362 n

end A126362

/-! ## A126362.P578295901015470778

`A000027(A126386(n))%A166468(n+1)`
-/

namespace A126362.P578295901015470778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A126386 n).toNat) (A166468 (n + 1))

end

end A126362.P578295901015470778

namespace A126362

/-- `A000027(A126386(n))%A166468(n+1)` -/
def P578295901015470778.Spec : Prop :=
  ∀ n, P578295901015470778.a n = A126362 n

end A126362

/-!
# A126363: Number of base 9 n-digit numbers with adjacent digits differing by one or less.

The programs for A126363, the canonical program `A126363.P7124881258764336197` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126363 has offset 0).

The definition of A126363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126363.P7124881258764336197

`ogf((1+4x-15x^2-4x^3+13x^4+2x^5)/(1-5x+5x^2+5x^3-5x^4-x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126363

/-- `ogf((1+4x-15x^2-4x^3+13x^4+2x^5)/(1-5x+5x^2+5x^3-5x^4-x^5))` -/
def P7124881258764336197.Spec : Prop :=
  ∀ n, P7124881258764336197.a n = A126363 n

theorem P7124881258764336197.correct : P7124881258764336197.Spec := by
  intro n
  simp only [A126363]

end A126363

/-! ## A126363.P12516708370033184006

`A126365(n)-A300222(A025192(n))`
-/

namespace A126363.P12516708370033184006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126365 n - A300222 (A025192 n).toNat

end

end A126363.P12516708370033184006

namespace A126363

/-- `A126365(n)-A300222(A025192(n))` -/
def P12516708370033184006.Spec : Prop :=
  ∀ n, P12516708370033184006.a n = A126363 n

end A126363

/-! ## A126363.P14437789888382175634

`A126365(A062399(n))-2*A140429(n)`
-/

namespace A126363.P14437789888382175634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126365 (A062399 n).toNat - 2 * A140429 n

end

end A126363.P14437789888382175634

namespace A126363

/-- `A126365(A062399(n))-2*A140429(n)` -/
def P14437789888382175634.Spec : Prop :=
  ∀ n, P14437789888382175634.a n = A126363 n

end A126363

/-! ## A126363.P15121268670812521352

`A126365(A120126(n))-2*A140429(n)`
-/

namespace A126363.P15121268670812521352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126365 (A120126 n).toNat - 2 * A140429 n

end

end A126363.P15121268670812521352

namespace A126363

/-- `A126365(A120126(n))-2*A140429(n)` -/
def P15121268670812521352.Spec : Prop :=
  ∀ n, P15121268670812521352.a n = A126363 n

end A126363

/-! ## A126363.P6866654218226622167

`A000265(A140429(n)+A126362(n))`
-/

namespace A126363.P6866654218226622167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A140429 n + A126362 n).toNat

end

end A126363.P6866654218226622167

namespace A126363

/-- `A000265(A140429(n)+A126362(n))` -/
def P6866654218226622167.Spec : Prop :=
  ∀ n, P6866654218226622167.a n = A126363 n

end A126363

/-!
# A126364: Number of base 10 n-digit numbers with adjacent digits differing by one or less.

The programs for A126364, the canonical program `A126364.P18009390980985765315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126364 has offset 1).

The definition of A126364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126364.P18009390980985765315

`ogf((10-32x+12x^2+20x^3-4x^4)/(1-6x+10x^2-x^3-6x^4+x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126364

/-- `ogf((10-32x+12x^2+20x^3-4x^4)/(1-6x+10x^2-x^3-6x^4+x^5))` -/
def P18009390980985765315.Spec : Prop :=
  ∀ n, P18009390980985765315.a n = A126364 (n + 1)

theorem P18009390980985765315.correct : P18009390980985765315.Spec := by
  intro n
  simp only [A126364, Nat.add_sub_cancel]

end A126364

/-! ## A126364.P130415131536380215

`A188866(C(n+9, 2)+9)`
-/

namespace A126364.P130415131536380215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (Nat.choose (n + 9) 2 + 9)

end

end A126364.P130415131536380215

namespace A126364

/-- `A188866(C(n+9, 2)+9)` -/
def P130415131536380215.Spec : Prop :=
  ∀ n, P130415131536380215.a n = A126364 (n + 1)

end A126364

/-! ## A126364.P8053623700808831701

`A188866(A000124(n+8)+8)`
-/

namespace A126364.P8053623700808831701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (A000124 (n + 8) + 8).toNat

end

end A126364.P8053623700808831701

namespace A126364

/-- `A188866(A000124(n+8)+8)` -/
def P8053623700808831701.Spec : Prop :=
  ∀ n, P8053623700808831701.a n = A126364 (n + 1)

end A126364

/-! ## A126364.P4915740201355885095

`A188866(A000217(n+8)+9)`
-/

namespace A126364.P4915740201355885095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (A000217 (n + 8) + 9).toNat

end

end A126364.P4915740201355885095

namespace A126364

/-- `A188866(A000217(n+8)+9)` -/
def P4915740201355885095.Spec : Prop :=
  ∀ n, P4915740201355885095.a n = A126364 (n + 1)

end A126364

/-! ## A126364.P4678447855897473230

`A188866(A027379(n+6)+12)`
-/

namespace A126364.P4678447855897473230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (A027379 (n + 6) + 12).toNat

end

end A126364.P4678447855897473230

namespace A126364

/-- `A188866(A027379(n+6)+12)` -/
def P4678447855897473230.Spec : Prop :=
  ∀ n, P4678447855897473230.a n = A126364 (n + 1)

end A126364

/-! ## A126364.P8996490822982492158

`A188866(eq[10, A131818(n+1)])`
-/

namespace A126364.P8996490822982492158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126364.P8996490822982492158

namespace A126364

/-- `A188866(eq[10, A131818(n+1)])` -/
def P8996490822982492158.Spec : Prop :=
  ∀ n, P8996490822982492158.a n = A126364 (n + 1)

end A126364

/-! ## A126364.P12118348565447868126

`A188866(eq[8, A144328(n+1)]+1)`
-/

namespace A126364.P12118348565447868126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A126364.P12118348565447868126

namespace A126364

/-- `A188866(eq[8, A144328(n+1)]+1)` -/
def P12118348565447868126.Spec : Prop :=
  ∀ n, P12118348565447868126.a n = A126364 (n + 1)

end A126364

/-!
# A126365: Number of base 11 n-digit numbers with adjacent digits differing by one or less.

The programs for A126365, the canonical program `A126365.P1226949227125582980` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126365 has offset 0).

The definition of A126365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126365.P1226949227125582980

`ogf((1+5x-26x^2+6x^3+34x^4-4x^5-6x^6)/(1-6x+9x^2+4x^3-12x^4+2x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126365

/-- `ogf((1+5x-26x^2+6x^3+34x^4-4x^5-6x^6)/(1-6x+9x^2+4x^3-12x^4+2x^6))` -/
def P1226949227125582980.Spec : Prop :=
  ∀ n, P1226949227125582980.a n = A126365 n

theorem P1226949227125582980.correct : P1226949227125582980.Spec := by
  intro n
  simp only [A126365]

end A126365

/-! ## A126365.P7769933580441363146

`A000027(A126366(n)-A140429(n))`
-/

namespace A126365.P7769933580441363146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126366 n - A140429 n).toNat

end

end A126365.P7769933580441363146

namespace A126365

/-- `A000027(A126366(n)-A140429(n))` -/
def P7769933580441363146.Spec : Prop :=
  ∀ n, P7769933580441363146.a n = A126365 n

end A126365

/-! ## A126365.P12608266322080591169

`A000027(A126367(n)-2*A140429(n))`
-/

namespace A126365.P12608266322080591169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126367 n - 2 * A140429 n).toNat

end

end A126365.P12608266322080591169

namespace A126365

/-- `A000027(A126367(n)-2*A140429(n))` -/
def P12608266322080591169.Spec : Prop :=
  ∀ n, P12608266322080591169.a n = A126365 n

end A126365

/-! ## A126365.P2370462109102369476

`A000027(A126367(n)-A140429(n)-A140429(n))`
-/

namespace A126365.P2370462109102369476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126367 n - A140429 n - A140429 n).toNat

end

end A126365.P2370462109102369476

namespace A126365

/-- `A000027(A126367(n)-A140429(n)-A140429(n))` -/
def P2370462109102369476.Spec : Prop :=
  ∀ n, P2370462109102369476.a n = A126365 n

end A126365

/-! ## A126365.P14694759873861852666

`A126362(n)+A008585(A140429(n))`
-/

namespace A126365.P14694759873861852666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126362 n + A008585 (A140429 n).toNat

end

end A126365.P14694759873861852666

namespace A126365

/-- `A126362(n)+A008585(A140429(n))` -/
def P14694759873861852666.Spec : Prop :=
  ∀ n, P14694759873861852666.a n = A126365 n

end A126365

/-!
# A126366: Number of base 12 n-digit numbers with adjacent digits differing by one or less.

The programs for A126366, the canonical program `A126366.P5033252181561475392` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126366 has offset 0).

The definition of A126366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126366.P5033252181561475392

`ogf((1+5x-35x^2+34x^3+25x^4-22x^5-3x^6)/(1-7x+15x^2-6x^3-11x^4+6x^5+x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126366

/-- `ogf((1+5x-35x^2+34x^3+25x^4-22x^5-3x^6)/(1-7x+15x^2-6x^3-11x^4+6x^5+x^6))` -/
def P5033252181561475392.Spec : Prop :=
  ∀ n, P5033252181561475392.a n = A126366 n

theorem P5033252181561475392.correct : P5033252181561475392.Spec := by
  intro n
  simp only [A126366]

end A126366

/-! ## A126366.P2983206526784157578

`A140429(n)+A000027(A126365(n))`
-/

namespace A126366.P2983206526784157578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A000027 (A126365 n).toNat

end

end A126366.P2983206526784157578

namespace A126366

/-- `A140429(n)+A000027(A126365(n))` -/
def P2983206526784157578.Spec : Prop :=
  ∀ n, P2983206526784157578.a n = A126366 n

end A126366

/-! ## A126366.P2595120078797182591

`A140429(n)+A000027(A126367(n)-2*A140429(n))`
-/

namespace A126366.P2595120078797182591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A000027 (A126367 n - 2 * A140429 n).toNat

end

end A126366.P2595120078797182591

namespace A126366

/-- `A140429(n)+A000027(A126367(n)-2*A140429(n))` -/
def P2595120078797182591.Spec : Prop :=
  ∀ n, P2595120078797182591.a n = A126366 n

end A126366

/-! ## A126366.P14827998448880286156

`A140429(A062399(n))+A126365(n)`
-/

namespace A126366.P14827998448880286156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A062399 n).toNat + A126365 n

end

end A126366.P14827998448880286156

namespace A126366

/-- `A140429(A062399(n))+A126365(n)` -/
def P14827998448880286156.Spec : Prop :=
  ∀ n, P14827998448880286156.a n = A126366 n

end A126366

/-! ## A126366.P11580161312812631624

`A140429(A120126(n))+A126365(n)`
-/

namespace A126366.P11580161312812631624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A120126 n).toNat + A126365 n

end

end A126366.P11580161312812631624

namespace A126366

/-- `A140429(A120126(n))+A126365(n)` -/
def P11580161312812631624.Spec : Prop :=
  ∀ n, P11580161312812631624.a n = A126366 n

end A126366

/-!
# A126367: Number of base 13 n-digit numbers with adjacent digits differing by one or less.

The programs for A126367, the canonical program `A126367.P5847334308352688651` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126367 has offset 0).

The definition of A126367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126367.P5847334308352688651

`ogf((1+6x-40x^2+30x^3+59x^4-38x^5-23x^6+4x^7)/(1-7x+14x^2-21x^4+7x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126367

/-- `ogf((1+6x-40x^2+30x^3+59x^4-38x^5-23x^6+4x^7)/(1-7x+14x^2-21x^4+7x^5+7x^6-x^7))` -/
def P5847334308352688651.Spec : Prop :=
  ∀ n, P5847334308352688651.a n = A126367 n

theorem P5847334308352688651.correct : P5847334308352688651.Spec := by
  intro n
  simp only [A126367]

end A126367

/-! ## A126367.P17533963585065689843

`A000007(A340399(n))+(A126369(n)+A126365(n))/2`
-/

namespace A126367.P17533963585065689843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (A340399 n).toNat : ℚ) + (A126369 n + A126365 n : ℚ) / 2

end

end A126367.P17533963585065689843

namespace A126367

/-- `A000007(A340399(n))+(A126369(n)+A126365(n))/2` -/
def P17533963585065689843.Spec : Prop :=
  ∀ n, P17533963585065689843.a n = (A126367 n : ℚ)

end A126367

/-! ## A126367.P7983975364708745831

`A000027(A126365(n))+2*A140429(n)`
-/

namespace A126367.P7983975364708745831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126365 n).toNat + 2 * A140429 n

end

end A126367.P7983975364708745831

namespace A126367

/-- `A000027(A126365(n))+2*A140429(n)` -/
def P7983975364708745831.Spec : Prop :=
  ∀ n, P7983975364708745831.a n = A126367 n

end A126367

/-! ## A126367.P14444777076067040754

`A000005(A083685(n+1))*A126371(n)-A126375(n)`
-/

namespace A126367.P14444777076067040754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083685 (n + 1)).toNat * A126371 n - A126375 n

end

end A126367.P14444777076067040754

namespace A126367

/-- `A000005(A083685(n+1))*A126371(n)-A126375(n)` -/
def P14444777076067040754.Spec : Prop :=
  ∀ n, P14444777076067040754.a n = A126367 n

end A126367

/-! ## A126367.P14234558320691553586

`A000027(A140429(n)+A126366(n))`
-/

namespace A126367.P14234558320691553586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126366 n).toNat

end

end A126367.P14234558320691553586

namespace A126367

/-- `A000027(A140429(n)+A126366(n))` -/
def P14234558320691553586.Spec : Prop :=
  ∀ n, P14234558320691553586.a n = A126367 n

end A126367

/-!
# A126368: Number of base 14 n-digit numbers with adjacent digits differing by one or less.

The programs for A126368, the canonical program `A126368.P5870258681943983081` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126368 has offset 0).

The definition of A126368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126368.P5870258681943983081

`ogf((1+6x-51x^2+75x^3+25x^4-72x^5+x^6+8x^7)/(1-8x+21x^2-15x^3-15x^4+18x^5+x^6-2x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126368

/-- `ogf((1+6x-51x^2+75x^3+25x^4-72x^5+x^6+8x^7)/(1-8x+21x^2-15x^3-15x^4+18x^5+x^6-2x^7))` -/
def P5870258681943983081.Spec : Prop :=
  ∀ n, P5870258681943983081.a n = A126368 n

theorem P5870258681943983081.correct : P5870258681943983081.Spec := by
  intro n
  simp only [A126368]

end A126368

/-! ## A126368.P4253272988312885296

`A140429(n)+A000027(A126365(n))+2*A140429(n)`
-/

namespace A126368.P4253272988312885296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (A000027 (A126365 n).toNat + 2 * A140429 n)

end

end A126368.P4253272988312885296

namespace A126368

/-- `A140429(n)+A000027(A126365(n))+2*A140429(n)` -/
def P4253272988312885296.Spec : Prop :=
  ∀ n, P4253272988312885296.a n = A126368 n

end A126368

/-! ## A126368.P10563066252182213350

`A000027(A140429(n)+A126367(n))`
-/

namespace A126368.P10563066252182213350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126367 n).toNat

end

end A126368.P10563066252182213350

namespace A126368

/-- `A000027(A140429(n)+A126367(n))` -/
def P10563066252182213350.Spec : Prop :=
  ∀ n, P10563066252182213350.a n = A126368 n

end A126368

/-! ## A126368.P14326074482191174467

`A000027(A126369(n)-A140429(n))`
-/

namespace A126368.P14326074482191174467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126369 n - A140429 n).toNat

end

end A126368.P14326074482191174467

namespace A126368

/-- `A000027(A126369(n)-A140429(n))` -/
def P14326074482191174467.Spec : Prop :=
  ∀ n, P14326074482191174467.a n = A126368 n

end A126368

/-! ## A126368.P16592801816538633890

`A126365(n)+A008585(A140429(n))`
-/

namespace A126368.P16592801816538633890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126365 n + A008585 (A140429 n).toNat

end

end A126368.P16592801816538633890

namespace A126368

/-- `A126365(n)+A008585(A140429(n))` -/
def P16592801816538633890.Spec : Prop :=
  ∀ n, P16592801816538633890.a n = A126368 n

end A126368

/-!
# A126369: Number of base 15 n-digit numbers with adjacent digits differing by one or less.

The programs for A126369, there is no canonical definition to state claims against.
-/

/-! ## A126369.P8715820399898438228

`A000027(A140429(n)+A126368(n))`
-/

namespace A126369.P8715820399898438228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126368 n).toNat

end

end A126369.P8715820399898438228

/-! ## A126369.P11325574286697791534

`A126371(n)-A300222(A025192(n))`
-/

namespace A126369.P11325574286697791534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126371 n - A300222 (A025192 n).toNat

end

end A126369.P11325574286697791534

/-! ## A126369.P13130567345988791753

`A140429(n)+A000027(A140429(n)+A126367(n))`
-/

namespace A126369.P13130567345988791753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A000027 (A140429 n + A126367 n).toNat

end

end A126369.P13130567345988791753

/-! ## A126369.P271796537743618541

`A000265(A140429(n)+A126368(n))`
-/

namespace A126369.P271796537743618541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A140429 n + A126368 n).toNat

end

end A126369.P271796537743618541

/-! ## A126369.P148958766509045657

`A126371(n)-A008343(A115098(n))`
-/

namespace A126369.P148958766509045657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126371 n - A008343 (A115098 n).toNat

end

end A126369.P148958766509045657

/-!
# A126370: Number of base 16 n-digit numbers with adjacent digits differing by one or less.

The programs for A126370, there is no canonical definition to state claims against.
-/

/-! ## A126370.P1475001016671184956

`A000027(A140429(n)+A126369(n))`
-/

namespace A126370.P1475001016671184956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126369 n).toNat

end

end A126370.P1475001016671184956

/-! ## A126370.P17689679992933222490

`A000027(A126371(n)-A140429(n))`
-/

namespace A126370.P17689679992933222490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126371 n - A140429 n).toNat

end

end A126370.P17689679992933222490

/-! ## A126370.P10568428291781895382

`A126367(n)+A008585(A140429(n))`
-/

namespace A126370.P10568428291781895382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126367 n + A008585 (A140429 n).toNat

end

end A126370.P10568428291781895382

/-! ## A126370.P4697389325411070029

`A126383(n)-A008595(A140429(n))`
-/

namespace A126370.P4697389325411070029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126383 n - A008595 (A140429 n).toNat

end

end A126370.P4697389325411070029

/-! ## A126370.P5426527845026347851

`A140429(n)+A000265(A140429(n)+A126368(n))`
-/

namespace A126370.P5426527845026347851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A000265 (A140429 n + A126368 n).toNat

end

end A126370.P5426527845026347851

/-!
# A126371: Number of base 17 n-digit numbers with adjacent digits differing by one or less.

The programs for A126371, there is no canonical definition to state claims against.
-/

/-! ## A126371.P6556268448534186117

`A300222(A025192(n))+A126369(n)`
-/

namespace A126371.P6556268448534186117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126369 n

end

end A126371.P6556268448534186117

/-! ## A126371.P5563743012026262815

`A126373(n)-A300222(A025192(n))`
-/

namespace A126371.P5563743012026262815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126373 n - A300222 (A025192 n).toNat

end

end A126371.P5563743012026262815

/-! ## A126371.P16106133928325526608

`A126369(n)+A005408(floor(3^(n-1)))-1`
-/

namespace A126371.P16106133928325526608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126369 n + A005408 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - 1

end

end A126371.P16106133928325526608

/-! ## A126371.P9735494402949703246

`A126369(n)+A005843(A140429(n))`
-/

namespace A126371.P9735494402949703246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126369 n + A005843 (A140429 n).toNat

end

end A126371.P9735494402949703246

/-! ## A126371.P1961444073294112254

`A126368(n)+A008585(A140429(n))`
-/

namespace A126371.P1961444073294112254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126368 n + A008585 (A140429 n).toNat

end

end A126371.P1961444073294112254

/-!
# A126372: Number of base 18 n-digit numbers with adjacent digits differing by one or less.

The programs for A126372, there is no canonical definition to state claims against.
-/

/-! ## A126372.P3686756479819551472

`((A126373(n)+A126371(n))/2)^(gcd(2, n+1)^3)^A235919(n+1)`
-/

namespace A126372.P3686756479819551472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A126373 n + A126371 n : ℚ) / 2 : ℝ) ^ ((Nat.gcd 2 (n + 1) ^ 3 : ℚ) ^ (A235919 (n + 1) : ℤ) : ℝ)

end

end A126372.P3686756479819551472

/-! ## A126372.P11252875782339226853

`((A126373(n)+A126371(n))/2)^A001263(n+1)^A235919(n+1)`
-/

namespace A126372.P11252875782339226853
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A126373 n + A126371 n : ℚ) / 2 : ℝ) ^ ((A001263 (n + 1) : ℚ) ^ (A235919 (n + 1) : ℤ) : ℝ)

end

end A126372.P11252875782339226853

/-! ## A126372.P1499944146297506213

`((A126373(n)+A126371(n))/2)^A146641(A004736(n+1))`
-/

namespace A126372.P1499944146297506213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A126373 n + A126371 n : ℚ) / 2) ^ (A146641 (A004736 (n + 1)).toNat : ℤ)

end

end A126372.P1499944146297506213

/-! ## A126372.P6694954047293309246

`A126374(n)-A014963(A000079(n))*A140429(n)`
-/

namespace A126372.P6694954047293309246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126374 n - A014963 (A000079 n).toNat * A140429 n

end

end A126372.P6694954047293309246

/-! ## A126372.P18122344710531586765

`A000027(A140429(n)+A126371(n))`
-/

namespace A126372.P18122344710531586765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126371 n).toNat

end

end A126372.P18122344710531586765

/-!
# A126373: Number of base 19 n-digit numbers with adjacent digits differing by one or less.

The programs for A126373, there is no canonical definition to state claims against.
-/

/-! ## A126373.P15522278139976127449

`(A126375(n)+A126371(n))/A000005(A072828(n+1))`
-/

namespace A126373.P15522278139976127449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126375 n + A126371 n : ℚ) / (A000005 (A072828 (n + 1)).toNat : ℚ)

end

end A126373.P15522278139976127449

/-! ## A126373.P12327052602315111943

`(A126375(n)+A126371(n))/A000005(A083685(n+1))`
-/

namespace A126373.P12327052602315111943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126375 n + A126371 n : ℚ) / (A000005 (A083685 (n + 1)).toNat : ℚ)

end

end A126373.P12327052602315111943

/-! ## A126373.P10743475411195603297

`A300222(A025192(n))+A126371(n)`
-/

namespace A126373.P10743475411195603297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126371 n

end

end A126373.P10743475411195603297

/-! ## A126373.P17614521653313325282

`A000027(A126374(n)-A140429(n))`
-/

namespace A126373.P17614521653313325282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126374 n - A140429 n).toNat

end

end A126373.P17614521653313325282

/-! ## A126373.P8567199396273206352

`A140429(n)+A000027(A140429(n)+A126371(n))`
-/

namespace A126373.P8567199396273206352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A000027 (A140429 n + A126371 n).toNat

end

end A126373.P8567199396273206352

/-!
# A126374: Number of base 20 n-digit numbers with adjacent digits differing by one or less.

The programs for A126374, there is no canonical definition to state claims against.
-/

/-! ## A126374.P13704196412284053742

`A126375(n)-record[and(n, -n)^log2(3)]`
-/

namespace A126374.P13704196412284053742
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A126375 n : ℝ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126374.P13704196412284053742

/-! ## A126374.P7294263479199873431

`(A126377(n)+A126371(n))/A000005(A057775(n))`
-/

namespace A126374.P7294263479199873431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126377 n + A126371 n : ℚ) / (A000005 (A057775 n).toNat : ℚ)

end

end A126374.P7294263479199873431

/-! ## A126374.P7965840325127506379

`A000027(A140429(n)+A126373(n))`
-/

namespace A126374.P7965840325127506379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126373 n).toNat

end

end A126374.P7965840325127506379

/-! ## A126374.P2995557828758251182

`A014682(A126377(n)+A126371(n))`
-/

namespace A126374.P2995557828758251182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A126377 n + A126371 n).toNat

end

end A126374.P2995557828758251182

/-!
# A126375: Number of base 21 n-digit numbers with adjacent digits differing by one or less.

The programs for A126375, there is no canonical definition to state claims against.
-/

/-! ## A126375.P1811282022903276409

`(A126378(n)+A126372(n))/2%A237099(A000124(n))`
-/

namespace A126375.P1811282022903276409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126378 n + A126372 n : ℚ) / (Int.tmod 2 (A237099 (A000124 n).toNat) : ℚ)

end

end A126375.P1811282022903276409

/-! ## A126375.P12078120653080770304

`(A126378(n)+A126374(n))/A014963(A000079(n+1))-A140429(n)`
-/

namespace A126375.P12078120653080770304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126378 n + A126374 n : ℚ) / (A014963 (A000079 (n + 1)).toNat : ℚ) - (A140429 n : ℚ)

end

end A126375.P12078120653080770304

/-! ## A126375.P15388197155627554461

`A000027(A140429(n)+A126374(n))`
-/

namespace A126375.P15388197155627554461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126374 n).toNat

end

end A126375.P15388197155627554461

/-! ## A126375.P6657218634912452939

`A300222(A025192(n))+A126373(n)`
-/

namespace A126375.P6657218634912452939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126373 n

end

end A126375.P6657218634912452939

/-! ## A126375.P4406594263926522778

`A000027(A126376(n)-A140429(n))`
-/

namespace A126375.P4406594263926522778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126376 n - A140429 n).toNat

end

end A126375.P4406594263926522778

/-!
# A126376: Number of base 22 n-digit numbers with adjacent digits differing by one or less.

The programs for A126376, there is no canonical definition to state claims against.
-/

/-! ## A126376.P10895021145865235666

`A126375(n)+record[and(n, -n)^log2(3)]`
-/

namespace A126376.P10895021145865235666
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A126375 n : ℝ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126376.P10895021145865235666

/-! ## A126376.P12394049937784916513

`A126381(n)-A091915(3*n+1)-A140429(n)`
-/

namespace A126376.P12394049937784916513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126381 n - A091915 (3 * n + 1) - A140429 n

end

end A126376.P12394049937784916513

/-! ## A126376.P15703581805021775820

`A126374(n)+A014963(A000079(n))*A140429(n)`
-/

namespace A126376.P15703581805021775820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126374 n + A014963 (A000079 n).toNat * A140429 n

end

end A126376.P15703581805021775820

/-! ## A126376.P919268066633987660

`A126378(n)-A014963(A000079(n))*A140429(n)`
-/

namespace A126376.P919268066633987660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126378 n - A014963 (A000079 n).toNat * A140429 n

end

end A126376.P919268066633987660

/-! ## A126376.P546011899670164619

`(A126378(n)+A126374(n))/A014963(A000079(n+1))`
-/

namespace A126376.P546011899670164619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126378 n + A126374 n : ℚ) / (A014963 (A000079 (n + 1)).toNat : ℚ)

end

end A126376.P546011899670164619

/-!
# A126377: Number of base 23 n-digit numbers with adjacent digits differing by one or less.

The programs for A126377, there is no canonical definition to state claims against.
-/

/-! ## A126377.P8834496813000862369

`A014963(A259037(n+1))*A126378(n)-A140429(n)`
-/

namespace A126377.P8834496813000862369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A259037 (n + 1)).toNat * A126378 n - A140429 n

end

end A126377.P8834496813000862369

/-! ## A126377.P7760598560445314012

`A126381(n)-A091915(3*n+1)`
-/

namespace A126377.P7760598560445314012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126381 n - A091915 (3 * n + 1)

end

end A126377.P7760598560445314012

/-! ## A126377.P7154659220308590706

`A140429(n)+(A126378(n)+A126374(n))/A014963(A000079(n+1))`
-/

namespace A126377.P7154659220308590706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n : ℚ) + (A126378 n + A126374 n : ℚ) / (A014963 (A000079 (n + 1)).toNat : ℚ)

end

end A126377.P7154659220308590706

/-! ## A126377.P18071887445137317386

`A000027(A140429(n)+A126376(n))`
-/

namespace A126377.P18071887445137317386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126376 n).toNat

end

end A126377.P18071887445137317386

/-! ## A126377.P4394544052498340416

`A000027(A126378(n)-A140429(n))`
-/

namespace A126377.P4394544052498340416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126378 n - A140429 n).toNat

end

end A126377.P4394544052498340416

/-!
# A126378: Number of base 24 n-digit numbers with adjacent digits differing by one or less.

The programs for A126378, there is no canonical definition to state claims against.
-/

/-! ## A126378.P15211804907829264845

`A126379(n)*A152391(A000096(n))-A140429(n)`
-/

namespace A126378.P15211804907829264845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126379 n * A152391 (A000096 n).toNat - A140429 n

end

end A126378.P15211804907829264845

/-! ## A126378.P14144329622764936864

`(A140429(n)+A126379(n))%A152388(n+1)²-2*A140429(n)`
-/

namespace A126378.P14144329622764936864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140429 n + A126379 n) (A152388 (n + 1) ^ 2) - 2 * A140429 n

end

end A126378.P14144329622764936864

/-! ## A126378.P8461748318246067989

`(A140429(n)+A126379(n))^(A023931(n)+1)-2*A140429(n)`
-/

namespace A126378.P8461748318246067989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n + A126379 n : ℚ) ^ (A023931 n + 1 : ℤ) - (2 * A140429 n : ℚ)

end

end A126378.P8461748318246067989

/-! ## A126378.P13104675376864794286

`(A140429(n)+A126379(n))*A145088(n)%2-2*A140429(n)`
-/

namespace A126378.P13104675376864794286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140429 n + A126379 n) * Int.tmod (A145088 n) 2 - 2 * A140429 n

end

end A126378.P13104675376864794286

/-! ## A126378.P2516700437698658067

`A140429(n)+A126381(n)-A091915(3*n+1)`
-/

namespace A126378.P2516700437698658067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (A126381 n - A091915 (3 * n + 1))

end

end A126378.P2516700437698658067

/-!
# A126379: Number of base 25 n-digit numbers with adjacent digits differing by one or less.

The programs for A126379, there is no canonical definition to state claims against.
-/

/-! ## A126379.P7226560551891414901

`A126378(n)+A014963(A259037(n+1))*A140429(n)`
-/

namespace A126379.P7226560551891414901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126378 n + A014963 (A259037 (n + 1)).toNat * A140429 n

end

end A126379.P7226560551891414901

/-! ## A126379.P259322167640007220

`A000005(A072828(n+1))*A126375(n)-A126371(n)`
-/

namespace A126379.P259322167640007220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072828 (n + 1)).toNat * A126375 n - A126371 n

end

end A126379.P259322167640007220

/-! ## A126379.P5919850416451697496

`A000005(A083685(n+1))*A126375(n)-A126371(n)`
-/

namespace A126379.P5919850416451697496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083685 (n + 1)).toNat * A126375 n - A126371 n

end

end A126379.P5919850416451697496

/-! ## A126379.P2626968728820334077

`A000027(A140429(n)+A126378(n))`
-/

namespace A126379.P2626968728820334077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126378 n).toNat

end

end A126379.P2626968728820334077

/-! ## A126379.P3611792575197473882

`A300222(A025192(n))+A126377(n)`
-/

namespace A126379.P3611792575197473882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126377 n

end

end A126379.P3611792575197473882

/-!
# A126380: Number of base 26 n-digit numbers with adjacent digits differing by one or less.

The programs for A126380, there is no canonical definition to state claims against.
-/

/-! ## A126380.P17794811006073434089

`(A140429(n)+A126379(n))%A152388(n+1)²`
-/

namespace A126380.P17794811006073434089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140429 n + A126379 n) (A152388 (n + 1) ^ 2)

end

end A126380.P17794811006073434089

/-! ## A126380.P14689048499536987205

`A126379(n)+A140429(n)*A152391(A000096(n))`
-/

namespace A126380.P14689048499536987205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126379 n + A140429 n * A152391 (A000096 n).toNat

end

end A126380.P14689048499536987205

/-! ## A126380.P11681556372604654643

`(A140429(n)+A126379(n))%A152390(A280417(n))`
-/

namespace A126380.P11681556372604654643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140429 n + A126379 n) (A152390 (A280417 n).toNat)

end

end A126380.P11681556372604654643

/-! ## A126380.P3565273605220133534

`(A140429(n)+A126379(n))^(A023931(n)+1)`
-/

namespace A126380.P3565273605220133534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n + A126379 n : ℚ) ^ (A023931 n + 1 : ℤ)

end

end A126380.P3565273605220133534

/-! ## A126380.P8349089415521578218

`(A140429(n)+A126379(n))*A145088(n)%2`
-/

namespace A126380.P8349089415521578218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140429 n + A126379 n) * Int.tmod (A145088 n) 2

end

end A126380.P8349089415521578218

/-!
# A126381: Number of base 27 n-digit numbers with adjacent digits differing by one or less.

The programs for A126381, there is no canonical definition to state claims against.
-/

/-! ## A126381.P949345745377049843

`A140429(n)+(A140429(n)+A126379(n))%A152388(n+1)²`
-/

namespace A126381.P949345745377049843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + Int.tmod (A140429 n + A126379 n) (A152388 (n + 1) ^ 2)

end

end A126381.P949345745377049843

/-! ## A126381.P14238109144935902652

`A140429(n)+(A140429(n)+A126379(n))^(A023931(n)+1)`
-/

namespace A126381.P14238109144935902652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n : ℚ) + (A140429 n + A126379 n : ℚ) ^ (A023931 n + 1 : ℤ)

end

end A126381.P14238109144935902652

/-! ## A126381.P17254881587798622758

`A140429(n)+(A140429(n)+A126379(n))*A145088(n)%2`
-/

namespace A126381.P17254881587798622758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (A140429 n + A126379 n) * Int.tmod (A145088 n) 2

end

end A126381.P17254881587798622758

/-! ## A126381.P8524341884590135222

`A000027(A126382(n)-A140429(n))`
-/

namespace A126381.P8524341884590135222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126382 n - A140429 n).toNat

end

end A126381.P8524341884590135222

/-! ## A126381.P3108477169513001503

`A126383(n)-A300222(A025192(n))`
-/

namespace A126381.P3108477169513001503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126383 n - A300222 (A025192 n).toNat

end

end A126381.P3108477169513001503

/-!
# A126382: Number of base 28 n-digit numbers with adjacent digits differing by one or less.

The programs for A126382, there is no canonical definition to state claims against.
-/

/-! ## A126382.P13567406064908202952

`(A140429(n)+A126379(n))%A152388(n+1)²+2*A140429(n)`
-/

namespace A126382.P13567406064908202952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140429 n + A126379 n) (A152388 (n + 1) ^ 2) + 2 * A140429 n

end

end A126382.P13567406064908202952

/-! ## A126382.P11689930533097495856

`(A140429(n)+A126379(n))^(A023931(n)+1)+2*A140429(n)`
-/

namespace A126382.P11689930533097495856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n + A126379 n : ℚ) ^ (A023931 n + 1 : ℤ) + (2 * A140429 n : ℚ)

end

end A126382.P11689930533097495856

/-! ## A126382.P17120375662921764431

`2*A140429(n)+(A140429(n)+A126379(n))*A145088(n)%2`
-/

namespace A126382.P17120375662921764431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140429 n + (A140429 n + A126379 n) * Int.tmod (A145088 n) 2

end

end A126382.P17120375662921764431

/-! ## A126382.P2853748818046363611

`A000027(A140429(n)+A126381(n))`
-/

namespace A126382.P2853748818046363611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126381 n).toNat

end

end A126382.P2853748818046363611

/-! ## A126382.P11344225235504920878

`A000027(A126383(n)-A140429(n))`
-/

namespace A126382.P11344225235504920878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126383 n - A140429 n).toNat

end

end A126382.P11344225235504920878

/-!
# A126383: Number of base 29 n-digit numbers with adjacent digits differing by one or less.

The programs for A126383, there is no canonical definition to state claims against.
-/

/-! ## A126383.P12807784465657776262

`A000005(A057775(n))*A126377(n)-A126371(n)`
-/

namespace A126383.P12807784465657776262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057775 n).toNat * A126377 n - A126371 n

end

end A126383.P12807784465657776262

/-! ## A126383.P9319203212804828357

`A140429(n)+A000027(A126382(n))`
-/

namespace A126383.P9319203212804828357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A000027 (A126382 n).toNat

end

end A126383.P9319203212804828357

/-! ## A126383.P14952264831033470395

`A300222(A025192(n))+A126381(n)`
-/

namespace A126383.P14952264831033470395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126381 n

end

end A126383.P14952264831033470395

/-! ## A126383.P14222421144362947408

`A126385(n)-A300222(A025192(n))`
-/

namespace A126383.P14222421144362947408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126385 n - A300222 (A025192 n).toNat

end

end A126383.P14222421144362947408

/-! ## A126383.P132392094610076379

`A126386(n)-A140429(n)-A300222(A025192(n))`
-/

namespace A126383.P132392094610076379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126386 n - A140429 n - A300222 (A025192 n).toNat

end

end A126383.P132392094610076379

/-!
# A126384: Number of base 30 n-digit numbers with adjacent digits differing by one or less.

The programs for A126384, there is no canonical definition to state claims against.
-/

/-! ## A126384.P15874614476053520665

`A126381(n)+A091915(3*n+1)-A140429(n)`
-/

namespace A126384.P15874614476053520665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126381 n + A091915 (3 * n + 1) - A140429 n

end

end A126384.P15874614476053520665

/-! ## A126384.P8326090320861554396

`A300222(A025192(n))+A126383(n)-A140429(n)`
-/

namespace A126384.P8326090320861554396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126383 n - A140429 n

end

end A126384.P8326090320861554396

/-! ## A126384.P14558224854101917929

`A000027(A140429(n)+A126383(n))`
-/

namespace A126384.P14558224854101917929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A140429 n + A126383 n).toNat

end

end A126384.P14558224854101917929

/-! ## A126384.P4699024378695368491

`A126382(n)+A005843(A140429(n))`
-/

namespace A126384.P4699024378695368491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126382 n + A005843 (A140429 n).toNat

end

end A126384.P4699024378695368491

/-! ## A126384.P9280447466457649290

`A126386(n)-A008343(A115098(n))`
-/

namespace A126384.P9280447466457649290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126386 n - A008343 (A115098 n).toNat

end

end A126384.P9280447466457649290

/-!
# A126385: Number of base 31 n-digit numbers with adjacent digits differing by one or less.

The programs for A126385, there is no canonical definition to state claims against.
-/

/-! ## A126385.P9493851067987673649

`A126381(n)+A091915(3*n+1)`
-/

namespace A126385.P9493851067987673649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126381 n + A091915 (3 * n + 1)

end

end A126385.P9493851067987673649

/-! ## A126385.P16359911722305282669

`A300222(A025192(n))+A126383(n)`
-/

namespace A126385.P16359911722305282669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A025192 n).toNat + A126383 n

end

end A126385.P16359911722305282669

/-! ## A126385.P9348585079052902379

`A126386(n)-lt[A053735(n), 2]`
-/

namespace A126385.P9348585079052902379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126386 n - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A126385.P9348585079052902379

/-! ## A126385.P2689560712144140338

`A126383(n)+A008343(A115098(n))`
-/

namespace A126385.P2689560712144140338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126383 n + A008343 (A115098 n).toNat

end

end A126385.P2689560712144140338

/-! ## A126385.P11259086496434345422

`A126383(n)+A005843(A140429(n))`
-/

namespace A126385.P11259086496434345422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126383 n + A005843 (A140429 n).toNat

end

end A126385.P11259086496434345422

/-!
# A126386: Number of base 32 n-digit numbers with adjacent digits differing by one or less.

The programs for A126386, there is no canonical definition to state claims against.
-/

/-! ## A126386.P12791238081291903849

`A140429(n)+A126381(n)+A091915(3*n+1)`
-/

namespace A126386.P12791238081291903849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (A126381 n + A091915 (3 * n + 1))

end

end A126386.P12791238081291903849

/-! ## A126386.P16884857407996026748

`A140429(A062399(n))+A126385(n)`
-/

namespace A126386.P16884857407996026748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A062399 n).toNat + A126385 n

end

end A126386.P16884857407996026748

/-! ## A126386.P4281364393710289607

`A140429(A120126(n))+A126385(n)`
-/

namespace A126386.P4281364393710289607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A120126 n).toNat + A126385 n

end

end A126386.P4281364393710289607

/-! ## A126386.P6022856746109546014

`A140429(n)+A300222(A025192(n))+A126383(n)`
-/

namespace A126386.P6022856746109546014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (A300222 (A025192 n).toNat + A126383 n)

end

end A126386.P6022856746109546014

/-! ## A126386.P8232355640571272007

`A140429(n)+A126383(n)+A008343(A115098(n))`
-/

namespace A126386.P8232355640571272007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (A126383 n + A008343 (A115098 n).toNat)

end

end A126386.P8232355640571272007

/-!
# A126387: Read binary expansion of n from the left; keep track of the excess of 1's over 0's that have been seen so far; sequence gives maximum(excess of 1's over 0's).

The programs for A126387, the canonical program `A126387.P1605812594687680599` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126387 has offset 0).

The definition of A126387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126387.P10235600693860380459

`A036989(A030101(n))-1`
-/

namespace A126387.P10235600693860380459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A030101 n).toNat - 1

end

end A126387.P10235600693860380459

namespace A126387

/-- `A036989(A030101(n))-1` -/
def P10235600693860380459.Spec : Prop :=
  ∀ n, P10235600693860380459.a n = A126387 n

end A126387

/-! ## A126387.P16730759314447497182

`A036989(2*A030101(n))%(n+1)`
-/

namespace A126387.P16730759314447497182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036989 (2 * A030101 n).toNat) (n + 1 : ℤ)

end

end A126387.P16730759314447497182

namespace A126387

/-- `A036989(2*A030101(n))%(n+1)` -/
def P16730759314447497182.Spec : Prop :=
  ∀ n, P16730759314447497182.a n = A126387 n

end A126387

/-! ## A126387.P8036923106295315330

`A004870(A036989(A030101(n)))`
-/

namespace A126387.P8036923106295315330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (A036989 (A030101 n).toNat).toNat

end

end A126387.P8036923106295315330

namespace A126387

/-- `A004870(A036989(A030101(n)))` -/
def P8036923106295315330.Spec : Prop :=
  ∀ n, P8036923106295315330.a n = A126387 n

end A126387

/-! ## A126387.P1605812594687680599

`A065770(A253563(n))-A080791(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A126387

/-- `A065770(A253563(n))-A080791(n)` -/
def P1605812594687680599.Spec : Prop :=
  ∀ n, P1605812594687680599.a n = A126387 n

theorem P1605812594687680599.correct : P1605812594687680599.Spec := by
  intro n
  simp only [A126387]

end A126387

/-! ## A126387.P7477497987408383224

`A200748(n)%A036989(A030101(n))`
-/

namespace A126387.P7477497987408383224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A036989 (A030101 n).toNat)

end

end A126387.P7477497987408383224

namespace A126387

/-- `A200748(n)%A036989(A030101(n))` -/
def P7477497987408383224.Spec : Prop :=
  ∀ n, P7477497987408383224.a n = A126387 n

end A126387

/-! ## A126387.P2797643865396077765

`A065770(A005940(n+1))-A080791(n)`
-/

namespace A126387.P2797643865396077765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A005940 (n + 1)).toNat - A080791 n

end

end A126387.P2797643865396077765

namespace A126387

/-- `A065770(A005940(n+1))-A080791(n)` -/
def P2797643865396077765.Spec : Prop :=
  ∀ n, P2797643865396077765.a n = A126387 n

end A126387

/-!
# A126388: Denominators in a series for the "alternating Euler constant" log(4/Pi).

The programs for A126388, there is no canonical definition to state claims against.
-/

/-! ## A126388.P14800368210474802217

`comp[eq[(-1)^n, A037861(n)]]`
-/

namespace A126388.P14800368210474802217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A126388.P14800368210474802217

/-! ## A126388.P2185322422675205546

`lt[2, A099246(or(1, n)+n)]`
-/

namespace A126388.P2185322422675205546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (Nat.lor 1 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126388.P2185322422675205546

/-! ## A126388.P6254818747493196035

`lt[3, lcm(n, A037861(floor(n/2)))²]`
-/

namespace A126388.P6254818747493196035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A037861 ⌊(n : ℚ) / 2⌋.toNat) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126388.P6254818747493196035

/-! ## A126388.P17520475834247218957

`comp[A066879(a(n-1)%((2*n)%a(n-1)-n)+1)]` with `a(0)=0, a(1)=1`
-/

namespace A126388.P17520475834247218957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A066879 (Int.tmod (f1 (n - 1)) (Int.tmod (2 * n : ℤ) (f1 (n - 1)) - (n : ℤ)) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A126388.P17520475834247218957

/-! ## A126388.P8547751348309467957

`lt[0, A145037(A004526(n))²]`
-/

namespace A126388.P8547751348309467957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A004526 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126388.P8547751348309467957

/-! ## A126388.P13775861709438028343

`comp[eq[A062157(n), A145037(n)]]`
-/

namespace A126388.P13775861709438028343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A126388.P13775861709438028343

/-! ## A126388.P3983427431433959018

`comp[eq[A023416(n), A274009(n)]]`
-/

namespace A126388.P3983427431433959018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A126388.P3983427431433959018

/-! ## A126388.P4759579738529068159

`comp[eq[A000007(n)-A145037(n), (-1)^n]]`
-/

namespace A126388.P4759579738529068159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A145037 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A126388.P4759579738529068159

/-! ## A126388.P4922805738132698622

`comp[eq[A070939(n)-2*A000120(n), (-1)^n]]`
-/

namespace A126388.P4922805738132698622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - 2 * A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A126388.P4922805738132698622

/-!
# A126390: a(n) = Sum_{i=0..n} 2^i*B(i)*binomial(n,i) where B(n) = Bell numbers A000110(n).

The programs for A126390, there is no canonical definition to state claims against.
-/

/-! ## A126390.P1276722612006259681

`∑{#}[n, C(n, #)*2^#*A000110(#)]`
-/

namespace A126390.P1276722612006259681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * 2 ^ k : ℤ) * A000110 k

end

end A126390.P1276722612006259681

/-! ## A126390.P8442351468151558873

`abs(Δ[A124311(n)/2])`
-/

namespace A126390.P8442351468151558873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124311 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126390.P8442351468151558873

/-! ## A126390.P9697323963975009990

`Δ[A124311(n)]/A117373(3*n+1)`
-/

namespace A126390.P9697323963975009990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124311 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A117373 (3 * n + 1) : ℚ)

end

end A126390.P9697323963975009990

/-! ## A126390.P17570144140618347035

`lcm(Δ[A124311(n)/2], A154990(n+1))`
-/

namespace A126390.P17570144140618347035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124311 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A154990 (n + 1))

end

end A126390.P17570144140618347035

/-! ## A126390.P324626656782220335

`gcd(n*A000007(n), Δ[A124311(n)/2])`
-/

namespace A126390.P324626656782220335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124311 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A000007 n) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A126390.P324626656782220335

/-! ## A126390.P9880317193037651977

`A355162(n)/A000079(n)`
-/

namespace A126390.P9880317193037651977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355162 n : ℚ) / (A000079 n : ℚ)

end

end A126390.P9880317193037651977

/-!
# A126391: a(1)=1; for n>1: a(n) = sum of all subsets of (a(1),..,a(n-1)).

The programs for A126391, the canonical program `A126391.P14482773085618646563` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126391 has offset 1).

The definition of A126391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126391.P14482773085618646563

`(2^(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126391

/-- `(2^(n-1)+2)*a(n-1)` -/
def P14482773085618646563.Spec : Prop :=
  ∀ n, P14482773085618646563.a n = (A126391 (n + 1) : ℚ)

end A126391

/-! ## A126391.P14462099978805227681

`ceil(A139486(n)/3)`
-/

namespace A126391.P14462099978805227681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139486 n : ℚ) / 3⌉

end

end A126391.P14462099978805227681

namespace A126391

/-- `ceil(A139486(n)/3)` -/
def P14462099978805227681.Spec : Prop :=
  ∀ n, P14462099978805227681.a n = A126391 (n + 1)

end A126391

/-! ## A126391.P7812467854293345703

`A006088(floor(log(cosh(n))))`
-/

namespace A126391.P7812467854293345703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006088 ⌊Real.log (Real.cosh (n : ℝ))⌋.toNat

end

end A126391.P7812467854293345703

namespace A126391

/-- `A006088(floor(log(cosh(n))))` -/
def P7812467854293345703.Spec : Prop :=
  ∀ n, P7812467854293345703.a n = A126391 (n + 1)

end A126391

/-! ## A126391.P16795441718518776547

`A006088(round(log(cosh(n))))`
-/

namespace A126391.P16795441718518776547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006088 (SequenceMachineLib.roundAway (Real.log (Real.cosh (n : ℝ)))).toNat

end

end A126391.P16795441718518776547

namespace A126391

/-- `A006088(round(log(cosh(n))))` -/
def P16795441718518776547.Spec : Prop :=
  ∀ n, P16795441718518776547.a n = A126391 (n + 1)

end A126391

/-! ## A126391.P8153954278033079963

`a(n-1)*A056469(n)` with `a(0)=1, a(1)=1`
-/

namespace A126391.P8153954278033079963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A056469 n

end

end A126391.P8153954278033079963

namespace A126391

/-- `a(n-1)*A056469(n)` -/
def P8153954278033079963.Spec : Prop :=
  ∀ n, P8153954278033079963.a n = A126391 (n + 1)

end A126391

/-!
# A126392: Number of base 5 n-digit numbers with adjacent digits differing by two or less.

The programs for A126392, the canonical program `A126392.P12571633164782560048` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126392 has offset 0).

The definition of A126392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126392.P16496712695226245858

`ogf((1+x-x^2)/(1-4x+x^3))`
-/

namespace A126392.P16496712695226245858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -4, 0, 1] n

end

end A126392.P16496712695226245858

namespace A126392

/-- `ogf((1+x-x^2)/(1-4x+x^3))` -/
def P16496712695226245858.Spec : Prop :=
  ∀ n, P16496712695226245858.a n = A126392 n

end A126392

/-! ## A126392.P12571633164782560048

`4*a(n-1)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=19`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126392

/-- `4*a(n-1)-a(n-3)` -/
def P12571633164782560048.Spec : Prop :=
  ∀ n, P12571633164782560048.a n = A126392 n

theorem P12571633164782560048.correct : P12571633164782560048.Spec := by
  intro n
  simp only [A126392]

end A126392

/-! ## A126392.P13466918921547963897

`Δ[A088132(n)]-A099503(n)`
-/

namespace A126392.P13466918921547963897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099503 n

end

end A126392.P13466918921547963897

namespace A126392

/-- `Δ[A088132(n)]-A099503(n)` -/
def P13466918921547963897.Spec : Prop :=
  ∀ n, P13466918921547963897.a n = A126392 n

end A126392

/-! ## A126392.P1834569592662334626

`record[gcd(A113678(n), A201042(n+1))]`
-/

namespace A126392.P1834569592662334626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113678 n) (A201042 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126392.P1834569592662334626

namespace A126392

/-- `record[gcd(A113678(n), A201042(n+1))]` -/
def P1834569592662334626.Spec : Prop :=
  ∀ n, (P1834569592662334626.a n : ℤ) = A126392 n

end A126392

/-! ## A126392.P211571507955112235

`A285266(∑[n+1]+n+7)`
-/

namespace A126392.P211571507955112235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A126392.P211571507955112235

namespace A126392

/-- `A285266(∑[n+1]+n+7)` -/
def P211571507955112235.Spec : Prop :=
  ∀ n, P211571507955112235.a n = A126392 n

end A126392

/-!
# A126393: Number of base 6 n-digit numbers with adjacent digits differing by two or less.

The programs for A126393, the canonical program `A126393.P4029823463260729574` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126393 has offset 0).

The definition of A126393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126393.P6001733548897100182

`ogf((1+2x-x^2-x^3)/(1-4x-x^2+x^3))`
-/

namespace A126393.P6001733548897100182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, -4, -1, 1] n

end

end A126393.P6001733548897100182

namespace A126393

/-- `ogf((1+2x-x^2-x^3)/(1-4x-x^2+x^3))` -/
def P6001733548897100182.Spec : Prop :=
  ∀ n, P6001733548897100182.a n = A126393 n

end A126393

/-! ## A126393.P4029823463260729574

`4*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=100`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126393

/-- `4*a(n-1)+a(n-2)-a(n-3)` -/
def P4029823463260729574.Spec : Prop :=
  ∀ n, P4029823463260729574.a n = A126393 n

theorem P4029823463260729574.correct : P4029823463260729574.Spec := by
  intro n
  simp only [A126393]

end A126393

/-! ## A126393.P5070465330571545563

`A285266(∑[n+3]+9)`
-/

namespace A126393.P5070465330571545563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A126393.P5070465330571545563

namespace A126393

/-- `A285266(∑[n+3]+9)` -/
def P5070465330571545563.Spec : Prop :=
  ∀ n, P5070465330571545563.a n = A126393 n

end A126393

/-! ## A126393.P3544317937115854107

`gcd(A000038(n), A285266(A166136(n+2)))`
-/

namespace A126393.P3544317937115854107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285266 (A166136 (n + 2)).toNat)

end

end A126393.P3544317937115854107

namespace A126393

/-- `gcd(A000038(n), A285266(A166136(n+2)))` -/
def P3544317937115854107.Spec : Prop :=
  ∀ n, (P3544317937115854107.a n : ℤ) = A126393 n

end A126393

/-!
# A126394: Number of base 7 n-digit numbers with adjacent digits differing by two or less.

The programs for A126394, the canonical program `A126394.P7622832471395050094` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126394 has offset 0).

The definition of A126394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126394.P7622832471395050094

`ogf((1+2x-4x^2-2x^3+2x^4)/(1-5x+2x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126394

/-- `ogf((1+2x-4x^2-2x^3+2x^4)/(1-5x+2x^2+4x^3-2x^4))` -/
def P7622832471395050094.Spec : Prop :=
  ∀ n, P7622832471395050094.a n = A126394 n

theorem P7622832471395050094.correct : P7622832471395050094.Spec := by
  intro n
  simp only [A126394]

end A126394

/-! ## A126394.P1526802758985581998

`A285266(A167487(n+3))`
-/

namespace A126394.P1526802758985581998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A167487 (n + 3)).toNat

end

end A126394.P1526802758985581998

namespace A126394

/-- `A285266(A167487(n+3))` -/
def P1526802758985581998.Spec : Prop :=
  ∀ n, P1526802758985581998.a n = A126394 n

end A126394

/-! ## A126394.P14518253206315141369

`A285266(A155212(n)+15)`
-/

namespace A126394.P14518253206315141369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A155212 n + 15).toNat

end

end A126394.P14518253206315141369

namespace A126394

/-- `A285266(A155212(n)+15)` -/
def P14518253206315141369.Spec : Prop :=
  ∀ n, P14518253206315141369.a n = A126394 n

end A126394

/-! ## A126394.P7003332307871917764

`A285266(A167499(n+3)+2)`
-/

namespace A126394.P7003332307871917764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A167499 (n + 3) + 2).toNat

end

end A126394.P7003332307871917764

namespace A126394

/-- `A285266(A167499(n+3)+2)` -/
def P7003332307871917764.Spec : Prop :=
  ∀ n, P7003332307871917764.a n = A126394 n

end A126394

/-! ## A126394.P5787358694437923202

`A285266(A077169(n+5)+2)`
-/

namespace A126394.P5787358694437923202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A077169 (n + 5) + 2).toNat

end

end A126394.P5787358694437923202

namespace A126394

/-- `A285266(A077169(n+5)+2)` -/
def P5787358694437923202.Spec : Prop :=
  ∀ n, P5787358694437923202.a n = A126394 n

end A126394

/-!
# A126395: Number of base 8 n-digit numbers with adjacent digits differing by two or less.

The programs for A126395, the canonical program `A126395.P11101117082703520152` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126395 has offset 0).

The definition of A126395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126395.P2523415241737213042

`ogf((1+3x-5x^2-6x^3)/(1-5x+x^2+6x^3))`
-/

namespace A126395.P2523415241737213042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -5, -6] [1, -5, 1, 6] n

end

end A126395.P2523415241737213042

namespace A126395

/-- `ogf((1+3x-5x^2-6x^3)/(1-5x+x^2+6x^3))` -/
def P2523415241737213042.Spec : Prop :=
  ∀ n, P2523415241737213042.a n = A126395 n

end A126395

/-! ## A126395.P11101117082703520152

`5*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=8, a(2)=34, a(3)=150`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126395

/-- `5*a(n-1)-a(n-2)-6*a(n-3)` -/
def P11101117082703520152.Spec : Prop :=
  ∀ n, P11101117082703520152.a n = A126395 n

theorem P11101117082703520152.correct : P11101117082703520152.Spec := by
  intro n
  simp only [A126395]

end A126395

/-! ## A126395.P9070976415738444612

`A285266(A000124(n+5)+7)`
-/

namespace A126395.P9070976415738444612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A000124 (n + 5) + 7).toNat

end

end A126395.P9070976415738444612

namespace A126395

/-- `A285266(A000124(n+5)+7)` -/
def P9070976415738444612.Spec : Prop :=
  ∀ n, P9070976415738444612.a n = A126395 n

end A126395

/-! ## A126395.P2498814450577710166

`A285266(A000217(n+5)+8)`
-/

namespace A126395.P2498814450577710166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A000217 (n + 5) + 8).toNat

end

end A126395.P2498814450577710166

namespace A126395

/-- `A285266(A000217(n+5)+8)` -/
def P2498814450577710166.Spec : Prop :=
  ∀ n, P2498814450577710166.a n = A126395 n

end A126395

/-! ## A126395.P17261434791810583884

`A285266(A027379(n+3)+11)`
-/

namespace A126395.P17261434791810583884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A027379 (n + 3) + 11).toNat

end

end A126395.P17261434791810583884

namespace A126395

/-- `A285266(A027379(n+3)+11)` -/
def P17261434791810583884.Spec : Prop :=
  ∀ n, P17261434791810583884.a n = A126395 n

end A126395

/-!
# A126396: Number of base 9 n-digit numbers with adjacent digits differing by two or less.

The programs for A126396, the canonical program `A126396.P10182805606905768093` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126396 has offset 0).

The definition of A126396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126396.P10182805606905768093

`ogf((1+3x-10x^2-6x^3+6x^4+2x^5)/(1-6x+5x^2+8x^3-4x^4-2x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126396

/-- `ogf((1+3x-10x^2-6x^3+6x^4+2x^5)/(1-6x+5x^2+8x^3-4x^4-2x^5))` -/
def P10182805606905768093.Spec : Prop :=
  ∀ n, P10182805606905768093.a n = A126396 n

theorem P10182805606905768093.correct : P10182805606905768093.Spec := by
  intro n
  simp only [A126396]

end A126396

/-! ## A126396.P6975234404551099292

`A285266(A166136(n+5)+3)`
-/

namespace A126396.P6975234404551099292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A166136 (n + 5) + 3).toNat

end

end A126396.P6975234404551099292

namespace A126396

/-- `A285266(A166136(n+5)+3)` -/
def P6975234404551099292.Spec : Prop :=
  ∀ n, P6975234404551099292.a n = A126396 n

end A126396

/-! ## A126396.P7330458532625805530

`A285266(A167499(n+5)+4)`
-/

namespace A126396.P7330458532625805530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A167499 (n + 5) + 4).toNat

end

end A126396.P7330458532625805530

namespace A126396

/-- `A285266(A167499(n+5)+4)` -/
def P7330458532625805530.Spec : Prop :=
  ∀ n, P7330458532625805530.a n = A126396 n

end A126396

/-! ## A126396.P10754605504980371101

`A285266(A167614(n+5)+6)`
-/

namespace A126396.P10754605504980371101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A167614 (n + 5) + 6).toNat

end

end A126396.P10754605504980371101

namespace A126396

/-- `A285266(A167614(n+5)+6)` -/
def P10754605504980371101.Spec : Prop :=
  ∀ n, P10754605504980371101.a n = A126396 n

end A126396

/-! ## A126396.P14030705898887299216

`A285266(A000124(n+6)+8)`
-/

namespace A126396.P14030705898887299216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A000124 (n + 6) + 8).toNat

end

end A126396.P14030705898887299216

namespace A126396

/-- `A285266(A000124(n+6)+8)` -/
def P14030705898887299216.Spec : Prop :=
  ∀ n, P14030705898887299216.a n = A126396 n

end A126396

/-!
# A126397: Number of base 10 n-digit numbers with adjacent digits differing by two or less.

The programs for A126397, the canonical program `A126397.P9118022054391179505` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126397 has offset 0).

The definition of A126397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126397.P3315194129371738139

`ogf((1+3x-15x^2+2x^3+x^4)/(1-7x+11x^2-x^4))`
-/

namespace A126397.P3315194129371738139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -15, 2, 1] [1, -7, 11, 0, -1] n

end

end A126397.P3315194129371738139

namespace A126397

/-- `ogf((1+3x-15x^2+2x^3+x^4)/(1-7x+11x^2-x^4))` -/
def P3315194129371738139.Spec : Prop :=
  ∀ n, P3315194129371738139.a n = A126397 n

end A126397

/-! ## A126397.P9118022054391179505

`7*a(n-1)-11*a(n-2)+a(n-4)` with `a(0)=1, a(1)=10, a(2)=44, a(3)=200, a(4)=918`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126397

/-- `7*a(n-1)-11*a(n-2)+a(n-4)` -/
def P9118022054391179505.Spec : Prop :=
  ∀ n, P9118022054391179505.a n = A126397 n

theorem P9118022054391179505.correct : P9118022054391179505.Spec := by
  intro n
  simp only [A126397]

end A126397

/-! ## A126397.P5886744693594355827

`A285266(A000217(n+7)+10)`
-/

namespace A126397.P5886744693594355827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A000217 (n + 7) + 10).toNat

end

end A126397.P5886744693594355827

namespace A126397

/-- `A285266(A000217(n+7)+10)` -/
def P5886744693594355827.Spec : Prop :=
  ∀ n, P5886744693594355827.a n = A126397 n

end A126397

/-! ## A126397.P7399381108560371216

`A285266(A034856(n+6)+12)`
-/

namespace A126397.P7399381108560371216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A034856 (n + 6) + 12).toNat

end

end A126397.P7399381108560371216

namespace A126397

/-- `A285266(A034856(n+6)+12)` -/
def P7399381108560371216.Spec : Prop :=
  ∀ n, P7399381108560371216.a n = A126397 n

end A126397

/-! ## A126397.P13875228500653053211

`A285266(A055999(n+4)+16)`
-/

namespace A126397.P13875228500653053211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A055999 (n + 4) + 16).toNat

end

end A126397.P13875228500653053211

namespace A126397

/-- `A285266(A055999(n+4)+16)` -/
def P13875228500653053211.Spec : Prop :=
  ∀ n, P13875228500653053211.a n = A126397 n

end A126397

/-!
# A126398: Number of base 11 n-digit numbers with adjacent digits differing by two or less.

The programs for A126398, the canonical program `A126398.P4075226827018226790` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126398 has offset 0).

The definition of A126398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126398.P4075226827018226790

`ogf((1+4x-19x^2-8x^3+19x^4+x^5-2x^6)/(1-7x+9x^2+11x^3-11x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126398

/-- `ogf((1+4x-19x^2-8x^3+19x^4+x^5-2x^6)/(1-7x+9x^2+11x^3-11x^4-2x^5+x^6))` -/
def P4075226827018226790.Spec : Prop :=
  ∀ n, P4075226827018226790.a n = A126398 n

theorem P4075226827018226790.correct : P4075226827018226790.Spec := by
  intro n
  simp only [A126398]

end A126398

/-! ## A126398.P8135956479452860961

`A285266(A167499(n+7)+6)`
-/

namespace A126398.P8135956479452860961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A167499 (n + 7) + 6).toNat

end

end A126398.P8135956479452860961

namespace A126398

/-- `A285266(A167499(n+7)+6)` -/
def P8135956479452860961.Spec : Prop :=
  ∀ n, P8135956479452860961.a n = A126398 n

end A126398

/-! ## A126398.P7376579958828891526

`A126397(n)+A004526(A020699(n))`
-/

namespace A126398.P7376579958828891526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126397 n + A004526 (A020699 n).toNat

end

end A126398.P7376579958828891526

namespace A126398

/-- `A126397(n)+A004526(A020699(n))` -/
def P7376579958828891526.Spec : Prop :=
  ∀ n, P7376579958828891526.a n = A126398 n

end A126398

/-!
# A126399: Number of base 12 n-digit numbers with adjacent digits differing by two or less.

The programs for A126399, the canonical program `A126399.P1899571613054312613` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126399 has offset 0).

The definition of A126399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126399.P1899571613054312613

`ogf((1+5x-22x^2-17x^3+21x^4+7x^5-4x^6)/(1-7x+8x^2+15x^3-9x^4-5x^5+2x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126399

/-- `ogf((1+5x-22x^2-17x^3+21x^4+7x^5-4x^6)/(1-7x+8x^2+15x^3-9x^4-5x^5+2x^6))` -/
def P1899571613054312613.Spec : Prop :=
  ∀ n, P1899571613054312613.a n = A126399 n

theorem P1899571613054312613.correct : P1899571613054312613.Spec := by
  intro n
  simp only [A126399]

end A126399

/-! ## A126399.P17061900180593086219

`A285266(A000096(n+8)+13)`
-/

namespace A126399.P17061900180593086219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A000096 (n + 8) + 13).toNat

end

end A126399.P17061900180593086219

namespace A126399

/-- `A285266(A000096(n+8)+13)` -/
def P17061900180593086219.Spec : Prop :=
  ∀ n, P17061900180593086219.a n = A126399 n

end A126399

/-! ## A126399.P7472665075684750843

`A285266(A000217(n+10)-A023444(n))`
-/

namespace A126399.P7472665075684750843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285266 (A000217 (n + 10) - A023444 n).toNat

end

end A126399.P7472665075684750843

namespace A126399

/-- `A285266(A000217(n+10)-A023444(n))` -/
def P7472665075684750843.Spec : Prop :=
  ∀ n, P7472665075684750843.a n = A126399 n

end A126399

/-! ## A126399.P1062793901059821388

`A000265(A003948(n))+A126402(n)-A003948(n)`
-/

namespace A126399.P1062793901059821388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003948 n).toNat + (A126402 n - A003948 n)

end

end A126399.P1062793901059821388

namespace A126399

/-- `A000265(A003948(n))+A126402(n)-A003948(n)` -/
def P1062793901059821388.Spec : Prop :=
  ∀ n, P1062793901059821388.a n = A126399 n

end A126399

