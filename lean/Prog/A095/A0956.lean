import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A095603: a(n) = 106 written in base 11 - n.

The programs for A095603, there is no canonical definition to state claims against.
-/

/-! ## A095603.P5125120880824532507

`A095605(n)-1`
-/

namespace A095603.P5125120880824532507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095605 n - 1

end

end A095603.P5125120880824532507

/-! ## A095603.P3307105035611761887

`A321800(n)+A095605(n)`
-/

namespace A095603.P3307105035611761887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A095605 n

end

end A095603.P3307105035611761887

/-! ## A095603.P13853441652094883787

`A321804(n)+A095605(n)`
-/

namespace A095603.P13853441652094883787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A095605 n

end

end A095603.P13853441652094883787

/-! ## A095603.P8961668319864525746

`abs(xor(-A095605(n), A033999(n)))`
-/

namespace A095603.P8961668319864525746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-A095605 n) (A033999 n)|

end

end A095603.P8961668319864525746

/-! ## A095603.P11332282104816365778

`xor(-A095605(n), A321800(2*n))`
-/

namespace A095603.P11332282104816365778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A095605 n) (A321800 (2 * n))

end

end A095603.P11332282104816365778

/-!
# A095605: a(n) = 107 written in base 11 - n.

The programs for A095605, there is no canonical definition to state claims against.
-/

/-! ## A095605.P119093928397574587

`A095603(n)+1`
-/

namespace A095605.P119093928397574587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095603 n + 1

end

end A095605.P119093928397574587

/-! ## A095605.P13546342883188259048

`abs(A095603(n)-A321800(n))`
-/

namespace A095605.P13546342883188259048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095603 n - A321800 n|

end

end A095605.P13546342883188259048

/-! ## A095605.P8068900933179074290

`abs(A095603(n)-A321804(n))`
-/

namespace A095605.P8068900933179074290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095603 n - A321804 n|

end

end A095605.P8068900933179074290

/-! ## A095605.P17280023337868841646

`1-(A185284(n)-A095603(n))`
-/

namespace A095605.P17280023337868841646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A185284 n - A095603 n)

end

end A095605.P17280023337868841646

/-! ## A095605.P13501387727533294588

`1-(A326590(n)-A095603(n))`
-/

namespace A095605.P13501387727533294588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A326590 n - A095603 n)

end

end A095605.P13501387727533294588

/-!
# A095607: a(n) = 108 written in base 13 - n.

The programs for A095607, there is no canonical definition to state claims against.
-/

/-! ## A095607.P7006873010670072926

`A080533(A000110(n))+A080517(2*(n+1))`
-/

namespace A095607.P7006873010670072926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080533 (A000110 n).toNat + A080517 (2 * (n + 1))

end

end A095607.P7006873010670072926

/-!
# A095609: a(n) = 109 written in base 10 - n.

The programs for A095609, there is no canonical definition to state claims against.
-/

/-! ## A095609.P14037852356153823088

`A095607(n+3)+1`
-/

namespace A095609.P14037852356153823088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095607 (n + 3) + 1

end

end A095609.P14037852356153823088

/-! ## A095609.P3565103514019819160

`A153152(A095607(n+3))`
-/

namespace A095609.P3565103514019819160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A095607 (n + 3)).toNat

end

end A095609.P3565103514019819160

/-! ## A095609.P16671550013658247931

`A095611(n)-A319421(A056355(n))`
-/

namespace A095609.P16671550013658247931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095611 n - A319421 (A056355 n).toNat

end

end A095609.P16671550013658247931

/-!
# A095611: a(n) = 110 written in base 10 - n.

The programs for A095611, there is no canonical definition to state claims against.
-/

/-! ## A095611.P2436080577834798927

`A095613(n)-A008834(n+1)`
-/

namespace A095611.P2436080577834798927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095613 n - A008834 (n + 1)

end

end A095611.P2436080577834798927

/-! ## A095611.P5838612705636933061

`A095613(n)-A051340(A008958(n))`
-/

namespace A095611.P5838612705636933061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095613 n - A051340 (A008958 n).toNat

end

end A095611.P5838612705636933061

/-! ## A095611.P7606809587089743656

`A095613(n)-A316576(A001316(n))`
-/

namespace A095611.P7606809587089743656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095613 n - A316576 (A001316 n).toNat

end

end A095611.P7606809587089743656

/-! ## A095611.P6062186940334915395

`A095613(n)-A331572(A004731(n))`
-/

namespace A095611.P6062186940334915395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095613 n - A331572 (A004731 n).toNat

end

end A095611.P6062186940334915395

/-! ## A095611.P1031645250292156092

`A095613(n)-A000045(A130675(n+1))`
-/

namespace A095611.P1031645250292156092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095613 n - A000045 (A130675 (n + 1)).toNat

end

end A095611.P1031645250292156092

/-!
# A095613: a(n) = 111 written in base 10 - n.

The programs for A095613, there is no canonical definition to state claims against.
-/

/-! ## A095613.P16641650447584165022

`A095611(n)+A008834(n+1)`
-/

namespace A095613.P16641650447584165022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095611 n + A008834 (n + 1)

end

end A095613.P16641650447584165022

/-! ## A095613.P16062140033526666014

`A095611(n)+A051340(A008958(n))`
-/

namespace A095613.P16062140033526666014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095611 n + A051340 (A008958 n).toNat

end

end A095613.P16062140033526666014

/-! ## A095613.P2304795009861778930

`A316576(A001316(n))+A095611(n)`
-/

namespace A095613.P2304795009861778930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A001316 n).toNat + A095611 n

end

end A095613.P2304795009861778930

/-! ## A095613.P12633181191847074818

`A331572(A004731(n))+A095611(n)`
-/

namespace A095613.P12633181191847074818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331572 (A004731 n).toNat + A095611 n

end

end A095613.P12633181191847074818

/-! ## A095613.P5402290378928350497

`A095611(n)+A000045(A130675(n+1))`
-/

namespace A095613.P5402290378928350497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095611 n + A000045 (A130675 (n + 1)).toNat

end

end A095613.P5402290378928350497

/-!
# A095615: a(n) = 112 written in base 10 - n.

The programs for A095615, there is no canonical definition to state claims against.
-/

/-! ## A095615.P16828996902990902374

`A095617(n)-1`
-/

namespace A095615.P16828996902990902374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095617 n - 1

end

end A095615.P16828996902990902374

/-! ## A095615.P8452197246716337850

`A321804(n)+A095617(n)`
-/

namespace A095615.P8452197246716337850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A095617 n

end

end A095615.P8452197246716337850

/-! ## A095615.P8489032728556144075

`A260196(n+2)+A095617(n)`
-/

namespace A095615.P8489032728556144075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A095617 n

end

end A095615.P8489032728556144075

/-! ## A095615.P504051230187418761

`A106400(2^n)+A095617(n)`
-/

namespace A095615.P504051230187418761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (2 ^ n) + A095617 n

end

end A095615.P504051230187418761

/-! ## A095615.P11890403356571145588

`xor(A095617(n), A280704(n+1))`
-/

namespace A095615.P11890403356571145588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A095617 n) (A280704 (n + 1))

end

end A095615.P11890403356571145588

/-!
# A095617: a(n) = 113 written in base 10 - n.

The programs for A095617, there is no canonical definition to state claims against.
-/

/-! ## A095617.P11384281126945384269

`A095615(n)+1`
-/

namespace A095617.P11384281126945384269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095615 n + 1

end

end A095617.P11384281126945384269

/-! ## A095617.P7360020895185552569

`abs(A095615(n)-A321804(n))`
-/

namespace A095617.P7360020895185552569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095615 n - A321804 n|

end

end A095617.P7360020895185552569

/-! ## A095617.P3357511468557338555

`abs(xor(A033999(n), A095615(n)))`
-/

namespace A095617.P3357511468557338555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A095615 n)|

end

end A095617.P3357511468557338555

/-! ## A095617.P62368233735220461

`abs(xor(A057077(n), A095615(n)))`
-/

namespace A095617.P62368233735220461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A057077 n) (A095615 n)|

end

end A095617.P62368233735220461

/-! ## A095617.P18343998385034736242

`abs(xor(A095615(n), A106400(n)))`
-/

namespace A095617.P18343998385034736242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A095615 n) (A106400 n)|

end

end A095617.P18343998385034736242

/-!
# A095619: a(n) = 114 written in base 10 - n.

The programs for A095619, there is no canonical definition to state claims against.
-/

/-! ## A095619.P3255156046420188118

`A095621(n)-A183092(n+1)`
-/

namespace A095619.P3255156046420188118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095621 n - A183092 (n + 1)

end

end A095619.P3255156046420188118

/-! ## A095619.P13648994623861902524

`A095621(n)-A052125(n+1)!`
-/

namespace A095619.P13648994623861902524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095621 n - (Nat.factorial (A052125 (n + 1)).toNat : ℤ)

end

end A095619.P13648994623861902524

/-! ## A095619.P13704845684371016111

`A095621(n)-A119288(n+1)!`
-/

namespace A095619.P13704845684371016111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095621 n - (Nat.factorial (A119288 (n + 1)).toNat : ℤ)

end

end A095619.P13704845684371016111

/-! ## A095619.P12386413294001647306

`A095621(n)-A344876(n+1)!`
-/

namespace A095619.P12386413294001647306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095621 n - (Nat.factorial (A344876 (n + 1)).toNat : ℤ)

end

end A095619.P12386413294001647306

/-! ## A095619.P5231433303892411816

`A095621(n)-A112610(A318875(n+1))`
-/

namespace A095619.P5231433303892411816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095621 n - A112610 (A318875 (n + 1)).toNat

end

end A095619.P5231433303892411816

/-!
# A095621: a(n) = 115 written in base 10 - n.

The programs for A095621, there is no canonical definition to state claims against.
-/

/-! ## A095621.P9246949282686904203

`A183092(n+1)+A095619(n)`
-/

namespace A095621.P9246949282686904203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183092 (n + 1) + A095619 n

end

end A095621.P9246949282686904203

/-! ## A095621.P2206255153214670651

`A345948(n+1)+A095619(n)`
-/

namespace A095621.P2206255153214670651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345948 (n + 1) + A095619 n

end

end A095621.P2206255153214670651

/-! ## A095621.P11373507400617512357

`A095619(n)+A052125(n+1)!`
-/

namespace A095621.P11373507400617512357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095619 n + (Nat.factorial (A052125 (n + 1)).toNat : ℤ)

end

end A095621.P11373507400617512357

/-! ## A095621.P14847697486109862569

`A095619(n)+A119288(n+1)!`
-/

namespace A095621.P14847697486109862569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095619 n + (Nat.factorial (A119288 (n + 1)).toNat : ℤ)

end

end A095621.P14847697486109862569

/-! ## A095621.P679523541055796178

`A095619(n)+A344876(n+1)!`
-/

namespace A095621.P679523541055796178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095619 n + (Nat.factorial (A344876 (n + 1)).toNat : ℤ)

end

end A095621.P679523541055796178

/-!
# A095623: a(n) = 116 written in base 10 - n.

The programs for A095623, there is no canonical definition to state claims against.
-/

/-! ## A095623.P13571839062182713468

`A268354(A095619(n))+A095621(n)`
-/

namespace A095623.P13571839062182713468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A095619 n).toNat + A095621 n

end

end A095623.P13571839062182713468

/-! ## A095623.P9260124489060741960

`A304042(A325115(n+1))+A095621(n)`
-/

namespace A095623.P9260124489060741960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A325115 (n + 1)).toNat + A095621 n

end

end A095623.P9260124489060741960

/-! ## A095623.P2364190556042921456

`A268354(A095621(n)-1)+A095621(n)`
-/

namespace A095623.P2364190556042921456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A095621 n - 1).toNat + A095621 n

end

end A095623.P2364190556042921456

/-!
# A095625: a(n) = 117 written in base 10 - n.

The programs for A095625, there is no canonical definition to state claims against.
-/

/-! ## A095625.P15876710099472192043

`A095627(n)-A049164(n)²`
-/

namespace A095625.P15876710099472192043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n - A049164 n ^ 2

end

end A095625.P15876710099472192043

/-! ## A095625.P18066746315366050525

`A095627(n)-A049586(n)²`
-/

namespace A095625.P18066746315366050525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n - A049586 n ^ 2

end

end A095625.P18066746315366050525

/-! ## A095625.P4538110272592668168

`A095627(n)-A102480(n)²`
-/

namespace A095625.P4538110272592668168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n - A102480 n ^ 2

end

end A095625.P4538110272592668168

/-! ## A095625.P17582904184637971086

`A095627(n)-A293012(n)²`
-/

namespace A095625.P17582904184637971086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n - A293012 n ^ 2

end

end A095625.P17582904184637971086

/-! ## A095625.P6627169978712388373

`A095627(n)-A293669(n)²`
-/

namespace A095625.P6627169978712388373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n - A293669 n ^ 2

end

end A095625.P6627169978712388373

/-!
# A095627: a(n) = 118 written in base 10 - n.

The programs for A095627, there is no canonical definition to state claims against.
-/

/-! ## A095627.P17210292363461861264

`A095625(n)+A049164(n)²`
-/

namespace A095627.P17210292363461861264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095625 n + A049164 n ^ 2

end

end A095627.P17210292363461861264

/-! ## A095627.P17180628361944654888

`A095625(n)+A049586(n)²`
-/

namespace A095627.P17180628361944654888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095625 n + A049586 n ^ 2

end

end A095627.P17180628361944654888

/-! ## A095627.P9228452671517730477

`A095625(n)+A102480(n)²`
-/

namespace A095627.P9228452671517730477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095625 n + A102480 n ^ 2

end

end A095627.P9228452671517730477

/-! ## A095627.P2840123243019084000

`A095625(n)+A293012(n)²`
-/

namespace A095627.P2840123243019084000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095625 n + A293012 n ^ 2

end

end A095627.P2840123243019084000

/-! ## A095627.P6422453872875127671

`A095625(n)+A293669(n)²`
-/

namespace A095627.P6422453872875127671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095625 n + A293669 n ^ 2

end

end A095627.P6422453872875127671

/-!
# A095629: a(n) = 119 written in base 10 - n.

The programs for A095629, there is no canonical definition to state claims against.
-/

/-! ## A095629.P14741458154496094598

`A095627(n)+A030379(n+1)²`
-/

namespace A095629.P14741458154496094598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n + A030379 (n + 1) ^ 2

end

end A095629.P14741458154496094598

/-! ## A095629.P14507492473887622123

`A095627(n)+A347456(2*n+3)²`
-/

namespace A095629.P14507492473887622123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n + A347456 (2 * n + 3) ^ 2

end

end A095629.P14507492473887622123

/-! ## A095629.P1739594054619386438

`A095627(n)+A353841(2*n+3)²`
-/

namespace A095629.P1739594054619386438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n + A353841 (2 * n + 3) ^ 2

end

end A095629.P1739594054619386438

/-! ## A095629.P399733233105673183

`A095627(n)+A019425(A028920(n))`
-/

namespace A095629.P399733233105673183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095627 n + A019425 (A028920 n).toNat

end

end A095629.P399733233105673183

/-!
# A095631: a(n) = 120 written in base 10 - n.

The programs for A095631, there is no canonical definition to state claims against.
-/

/-! ## A095631.P152660756130613264

`A095633(n+1)-1`
-/

namespace A095631.P152660756130613264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 (n + 1) - 1

end

end A095631.P152660756130613264

/-! ## A095631.P6661237521748130191

`Δ[∑[A095633(n)]-n]`
-/

namespace A095631.P6661237521748130191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095631.P6661237521748130191

/-! ## A095631.P7861746684271850648

`record[A095633(A008611(n))-1]`
-/

namespace A095631.P7861746684271850648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 (A008611 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095631.P7861746684271850648

/-! ## A095631.P8713531330427871484

`record[A095633(A057979(n))-1]`
-/

namespace A095631.P8713531330427871484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 (A057979 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095631.P8713531330427871484

/-! ## A095631.P11212510045012034281

`record[A095633(A152271(n))-1]`
-/

namespace A095631.P11212510045012034281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095631.P11212510045012034281

/-!
# A095633: a(n) = 121 written in base 11 - n.

The programs for A095633, there is no canonical definition to state claims against.
-/

/-! ## A095633.P12420689540679549392

`A095635(n)-and(9, A006723(n))`
-/

namespace A095633.P12420689540679549392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n - Int.land 9 (A006723 n)

end

end A095633.P12420689540679549392

/-! ## A095633.P8451085374455939654

`A095635(n)-A046534(n+1)²`
-/

namespace A095633.P8451085374455939654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n - A046534 (n + 1) ^ 2

end

end A095633.P8451085374455939654

/-! ## A095633.P13774591746727723391

`A095635(n)-A109842(n+1)²`
-/

namespace A095633.P13774591746727723391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n - A109842 (n + 1) ^ 2

end

end A095633.P13774591746727723391

/-! ## A095633.P4827603850294353062

`A095635(n)-A162235(n+1)²`
-/

namespace A095633.P4827603850294353062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n - A162235 (n + 1) ^ 2

end

end A095633.P4827603850294353062

/-! ## A095633.P16657190334518644064

`A095635(n)-∑[and(9, A000010(n+2))]`
-/

namespace A095633.P16657190334518644064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A000010 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095633.P16657190334518644064

/-!
# A095635: a(n) = 122 written in base 11 - n.

The programs for A095635, there is no canonical definition to state claims against.
-/

/-! ## A095635.P17064991355501936219

`A095633(n)+and(9, A006723(n))`
-/

namespace A095635.P17064991355501936219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 n + Int.land 9 (A006723 n)

end

end A095635.P17064991355501936219

/-! ## A095635.P17050069208386297715

`A095633(n)+A046534(n+1)²`
-/

namespace A095635.P17050069208386297715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 n + A046534 (n + 1) ^ 2

end

end A095635.P17050069208386297715

/-! ## A095635.P17605546812597208645

`A095633(n)+A109842(n+1)²`
-/

namespace A095635.P17605546812597208645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 n + A109842 (n + 1) ^ 2

end

end A095635.P17605546812597208645

/-! ## A095635.P323794916462251769

`A095633(n)+A162235(n+1)²`
-/

namespace A095635.P323794916462251769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 n + A162235 (n + 1) ^ 2

end

end A095635.P323794916462251769

/-! ## A095635.P12598148782537278388

`A095633(n)+A006723(A006723(n))`
-/

namespace A095635.P12598148782537278388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095633 n + A006723 (A006723 n).toNat

end

end A095635.P12598148782537278388

/-!
# A095637: a(n) = 123 written in base 11 - n.

The programs for A095637, there is no canonical definition to state claims against.
-/

/-! ## A095637.P763116271705119614

`A095635(n)+A072169(A008615(n))`
-/

namespace A095637.P763116271705119614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n + A072169 (A008615 n).toNat

end

end A095637.P763116271705119614

/-! ## A095637.P10590597009968968852

`A095635(n)+A008412(A165091(n))`
-/

namespace A095637.P10590597009968968852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n + A008412 (A165091 n).toNat

end

end A095637.P10590597009968968852

/-! ## A095637.P8856030105381112475

`A095635(n)+A085298(A095666(n))`
-/

namespace A095637.P8856030105381112475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n + A085298 (A095666 n).toNat

end

end A095637.P8856030105381112475

/-! ## A095637.P14890753084728694637

`A095635(n)+A063489(A144150(n))`
-/

namespace A095637.P14890753084728694637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095635 n + A063489 (A144150 n).toNat

end

end A095637.P14890753084728694637

/-!
# A095639: a(n) = 124 written in base 11 - n.

The programs for A095639, there is no canonical definition to state claims against.
-/

/-! ## A095639.P14161814126038994567

`A258009(A095637(n)+1)`
-/

namespace A095639.P14161814126038994567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258009 (A095637 n + 1).toNat

end

end A095639.P14161814126038994567

/-! ## A095639.P14966680173471091593

`A258009(A095635(n)+2)`
-/

namespace A095639.P14966680173471091593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258009 (A095635 n + 2).toNat

end

end A095639.P14966680173471091593

/-! ## A095639.P5684386059923168756

`A095637(A007093(n))+1`
-/

namespace A095639.P5684386059923168756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095637 (A007093 n).toNat + 1

end

end A095639.P5684386059923168756

/-!
# A095641: a(n) = 125 written in base 11 - n.

The programs for A095641, there is no canonical definition to state claims against.
-/

/-! ## A095641.P4989199841704267294

`A095639(A007092(n))+1`
-/

namespace A095641.P4989199841704267294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095639 (A007092 n).toNat + 1

end

end A095641.P4989199841704267294

/-! ## A095641.P9745808079929552595

`A095639(A171593(n))+1`
-/

namespace A095641.P9745808079929552595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095639 (A171593 n).toNat + 1

end

end A095641.P9745808079929552595

/-!
# A095643: a(n) = 126 written in base 11 - n.

The programs for A095643, there is no canonical definition to state claims against.
-/

/-! ## A095643.P1780337674161212878

`A095645(n)-1`
-/

namespace A095643.P1780337674161212878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095645 n - 1

end

end A095643.P1780337674161212878

/-! ## A095643.P6250717127939181094

`A321804(n)+A095645(n)`
-/

namespace A095643.P6250717127939181094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A095645 n

end

end A095643.P6250717127939181094

/-! ## A095643.P15789681012682801143

`A260196(n+2)+A095645(n)`
-/

namespace A095643.P15789681012682801143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A095645 n

end

end A095643.P15789681012682801143

/-! ## A095643.P15695788690716604899

`A163747(gcd(n, n+1))+A095645(n)`
-/

namespace A095643.P15695788690716604899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (Nat.gcd n (n + 1)) + A095645 n

end

end A095643.P15695788690716604899

/-! ## A095643.P3685903429542192472

`A176740(∑{digits}[n, #%2])+A095645(n)`
-/

namespace A095643.P3685903429542192472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176740 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum + A095645 n

end

end A095643.P3685903429542192472

/-!
# A095645: a(n) = 127 written in base 11 - n.

The programs for A095645, there is no canonical definition to state claims against.
-/

/-! ## A095645.P14692130279891050638

`A095643(n)+1`
-/

namespace A095645.P14692130279891050638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095643 n + 1

end

end A095645.P14692130279891050638

/-! ## A095645.P2427579243385686643

`1-(A035930(n)-A095643(n))`
-/

namespace A095645.P2427579243385686643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A035930 n - A095643 n)

end

end A095645.P2427579243385686643

/-! ## A095645.P5042969676343803782

`1-(A185284(n)-A095643(n))`
-/

namespace A095645.P5042969676343803782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A185284 n - A095643 n)

end

end A095645.P5042969676343803782

/-! ## A095645.P17603446675597813690

`2-(char[A002262(n)]-A095643(n))`
-/

namespace A095645.P17603446675597813690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A095643 n)

end

end A095645.P17603446675597813690

/-! ## A095645.P16287481091075632912

`2-(A014963(A010006(n))-A095643(n))`
-/

namespace A095645.P16287481091075632912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A014963 (A010006 n).toNat - A095643 n)

end

end A095645.P16287481091075632912

/-!
# A095647: a(n) = 128 written in base 11 - n.

The programs for A095647, there is no canonical definition to state claims against.
-/

/-! ## A095647.P11353943939259633000

`A354366(A105606(3*n+1))+A095645(n)`
-/

namespace A095647.P11353943939259633000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354366 (A105606 (3 * n + 1)).toNat + A095645 n

end

end A095647.P11353943939259633000

/-!
# A095648: Indices of the primes in A095672: A095672(n) = prime(a(n)).

The programs for A095648, there is no canonical definition to state claims against.
-/

/-! ## A095648.P3373285732640297386

`A000720(A095672(n+1))`
-/

namespace A095648.P3373285732640297386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095672 (n + 1)).toNat

end

end A095648.P3373285732640297386

/-! ## A095648.P2517305694360428425

`A003963(p?[A095672(n+1)])`
-/

namespace A095648.P2517305694360428425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095648.P2517305694360428425

/-! ## A095648.P11255852630609224780

`A026233(p?[A095672(n+1)])`
-/

namespace A095648.P11255852630609224780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095648.P11255852630609224780

/-! ## A095648.P6422551254763461919

`A026238(p?[A095672(n+1)])`
-/

namespace A095648.P6422551254763461919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095648.P6422551254763461919

/-! ## A095648.P2456137385798759203

`A049084(p?[A095672(n+1)])`
-/

namespace A095648.P2456137385798759203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095648.P2456137385798759203

/-! ## A095648.P6972033557339431480

`A003963(2*A095672(n+1))`
-/

namespace A095648.P6972033557339431480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A095672 (n + 1)).toNat

end

end A095648.P6972033557339431480

/-! ## A095648.P13669347388394421407

`A003963(lcm(2, A095672(n+1)))`
-/

namespace A095648.P13669347388394421407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A095672 (n + 1)))

end

end A095648.P13669347388394421407

/-! ## A095648.P6560704122666862746

`A003963(or(1, A095672(n+1)))`
-/

namespace A095648.P6560704122666862746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A095672 (n + 1))).toNat

end

end A095648.P6560704122666862746

/-! ## A095648.P16243876963178294019

`A026238(or(1, A095672(n+1)))`
-/

namespace A095648.P16243876963178294019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (Int.lor 1 (A095672 (n + 1))).toNat

end

end A095648.P16243876963178294019

/-! ## A095648.P1000262533380495504

`A009056(eq[2, A036263(n+1)-2])`
-/

namespace A095648.P1000262533380495504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095648.P1000262533380495504

/-!
# A095649: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 8.

The programs for A095649, the canonical program `A095649.P15105114885412916824` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095649 has offset 1).

The definition of A095649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095649.P15105114885412916824

`A004139(eq[8, A036263(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A095649

/-- `A004139(eq[8, A036263(n+1)])` -/
def P15105114885412916824.Spec : Prop :=
  ∀ n, P15105114885412916824.a n = A095649 (n + 1)

theorem P15105114885412916824.correct : P15105114885412916824.Spec := by
  intro n
  simp only [A095649, Nat.add_sub_cancel]

end A095649

/-! ## A095649.P4054779412754479940

`A215848(eq[8, A036263(n+1)])`
-/

namespace A095649.P4054779412754479940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P4054779412754479940

namespace A095649

/-- `A215848(eq[8, A036263(n+1)])` -/
def P4054779412754479940.Spec : Prop :=
  ∀ n, P4054779412754479940.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P17258830429832395781

`A215848(eq[8, A062234(n+1)-A096379(n+1)])`
-/

namespace A095649.P17258830429832395781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P17258830429832395781

namespace A095649

/-- `A215848(eq[8, A062234(n+1)-A096379(n+1)])` -/
def P17258830429832395781.Spec : Prop :=
  ∀ n, P17258830429832395781.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P10735792071873915960

`A215848(eq[8, A093667(n+1)-A065091(n+1)])`
-/

namespace A095649.P10735792071873915960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P10735792071873915960

namespace A095649

/-- `A215848(eq[8, A093667(n+1)-A065091(n+1)])` -/
def P10735792071873915960.Spec : Prop :=
  ∀ n, P10735792071873915960.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P16438810288217548628

`A215848(eq[8, A176246(n+1)-A046933(n+1)])`
-/

namespace A095649.P16438810288217548628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) - A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P16438810288217548628

namespace A095649

/-- `A215848(eq[8, A176246(n+1)-A046933(n+1)])` -/
def P16438810288217548628.Spec : Prop :=
  ∀ n, P16438810288217548628.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P8715927690297030151

`A215848(eq[8, A215848(n+1)-A210497(n+1)])`
-/

namespace A095649.P8715927690297030151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P8715927690297030151

namespace A095649

/-- `A215848(eq[8, A215848(n+1)-A210497(n+1)])` -/
def P8715927690297030151.Spec : Prop :=
  ∀ n, P8715927690297030151.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P10365058377260730951

`A215848(eq[8, A001223(n+2)-A001223(n+1)])`
-/

namespace A095649.P10365058377260730951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P10365058377260730951

namespace A095649

/-- `A215848(eq[8, A001223(n+2)-A001223(n+1)])` -/
def P10365058377260730951.Spec : Prop :=
  ∀ n, P10365058377260730951.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P12042852005248563647

`A215848(eq[8, A000040(n+1)-A062234(n+2)])`
-/

namespace A095649.P12042852005248563647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A062234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P12042852005248563647

namespace A095649

/-- `A215848(eq[8, A000040(n+1)-A062234(n+2)])` -/
def P12042852005248563647.Spec : Prop :=
  ∀ n, P12042852005248563647.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P4861545043540460382

`A215848(eq[8, A093667(n+1)-A000040(n+2)])`
-/

namespace A095649.P4861545043540460382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P4861545043540460382

namespace A095649

/-- `A215848(eq[8, A093667(n+1)-A000040(n+2)])` -/
def P4861545043540460382.Spec : Prop :=
  ∀ n, P4861545043540460382.a n = A095649 (n + 1)

end A095649

/-! ## A095649.P6196694382939508739

`p?[(A036263(n+1)-7)*A000040(n+2)]`
-/

namespace A095649.P6196694382939508739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) - 7) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095649.P6196694382939508739

namespace A095649

/-- `p?[(A036263(n+1)-7)*A000040(n+2)]` -/
def P6196694382939508739.Spec : Prop :=
  ∀ n, P6196694382939508739.a n = A095649 (n + 1)

end A095649

/-!
# A095650: Indices of the primes in A095673: A095673(n) = prime(a(n)).

The programs for A095650, there is no canonical definition to state claims against.
-/

/-! ## A095650.P14187818198518057287

`A000720(A095673(n+1))`
-/

namespace A095650.P14187818198518057287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095673 (n + 1)).toNat

end

end A095650.P14187818198518057287

/-! ## A095650.P5048655098623081389

`A061395(p?[A095673(n+1)])`
-/

namespace A095650.P5048655098623081389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095650.P5048655098623081389

/-! ## A095650.P1368076583458823619

`A066328(p?[A095673(n+1)])`
-/

namespace A095650.P1368076583458823619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095650.P1368076583458823619

/-! ## A095650.P6627948683714749965

`A302039(p?[A095673(n+1)])`
-/

namespace A095650.P6627948683714749965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095650.P6627948683714749965

/-! ## A095650.P12326308981162676622

`A061395(2*A095673(n+1))`
-/

namespace A095650.P12326308981162676622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A095673 (n + 1)).toNat

end

end A095650.P12326308981162676622

/-!
# A095651: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 16.

The programs for A095651, there is no canonical definition to state claims against.
-/

/-! ## A095651.P4442950879887373071

`A000040(A095420(n+1))`
-/

namespace A095651.P4442950879887373071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095420 (n + 1)).toNat

end

end A095651.P4442950879887373071

/-! ## A095651.P15420134004285364083

`A008578(A095420(n+1)+1)`
-/

namespace A095651.P15420134004285364083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095420 (n + 1) + 1).toNat

end

end A095651.P15420134004285364083

/-! ## A095651.P7473911898853061272

`A075643(A095420(n+1)+1)`
-/

namespace A095651.P7473911898853061272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (A095420 (n + 1) + 1).toNat

end

end A095651.P7473911898853061272

/-! ## A095651.P10584760425666139154

`A171525(A095420(n+1)+1)`
-/

namespace A095651.P10584760425666139154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (A095420 (n + 1) + 1).toNat

end

end A095651.P10584760425666139154

/-! ## A095651.P1549132286604562568

`A175787(A095420(n+1)+1)`
-/

namespace A095651.P1549132286604562568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A095420 (n + 1) + 1).toNat

end

end A095651.P1549132286604562568

/-!
# A095652: Fourth column of Salié-triangle A065547.

The programs for A095652, there is no canonical definition to state claims against.
-/

/-! ## A095652.P15855487957298260048

`A065547(∑[n+3]+6)`
-/

namespace A095652.P15855487957298260048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A095652.P15855487957298260048

/-!
# A095653: Fifth column of Salié-triangle A065547.

The programs for A095653, there is no canonical definition to state claims against.
-/

/-! ## A095653.P1777343112189111358

`A065547(C(n+6, 2)-(n+1))`
-/

namespace A095653.P1777343112189111358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (Nat.choose (n + 6) 2 - (n + 1))

end

end A095653.P1777343112189111358

/-! ## A095653.P4502413577814582745

`A065547(eq[4, A002262(n)])`
-/

namespace A095653.P4502413577814582745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095653.P4502413577814582745

/-! ## A095653.P12372055796482102259

`A065547(A000124(n+4)+3)`
-/

namespace A095653.P12372055796482102259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A000124 (n + 4) + 3).toNat

end

end A095653.P12372055796482102259

/-! ## A095653.P10413814047845299849

`A065547(A077169(n+5)-1)`
-/

namespace A095653.P10413814047845299849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A077169 (n + 5) - 1).toNat

end

end A095653.P10413814047845299849

/-! ## A095653.P4608229660784160941

`A065547(eq[5, A002260(n+1)])`
-/

namespace A095653.P4608229660784160941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095653.P4608229660784160941

/-!
# A095654: Sixth column of Salié-triangle A065547.

The programs for A095654, there is no canonical definition to state claims against.
-/

/-! ## A095654.P14528552156980976962

`A065547(A167499(n+4))`
-/

namespace A095654.P14528552156980976962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A167499 (n + 4)).toNat

end

end A095654.P14528552156980976962

/-! ## A095654.P10937520969836166557

`A065547(A166136(n+4)-1)`
-/

namespace A095654.P10937520969836166557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A166136 (n + 4) - 1).toNat

end

end A095654.P10937520969836166557

/-! ## A095654.P2317334918686181467

`A065547(eq[6, A002260(n+1)])`
-/

namespace A095654.P2317334918686181467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095654.P2317334918686181467

/-! ## A095654.P17659842910870666783

`A065547(A077169(n+5)+5+n)`
-/

namespace A095654.P17659842910870666783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A077169 (n + 5) + 5 + (n : ℤ)).toNat

end

end A095654.P17659842910870666783

/-!
# A095655: Seventh column of Salié-triangle A065547.

The programs for A095655, there is no canonical definition to state claims against.
-/

/-! ## A095655.P5184836598574757280

`A065547(A166136(n+5))`
-/

namespace A095655.P5184836598574757280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A166136 (n + 5)).toNat

end

end A095655.P5184836598574757280

/-! ## A095655.P9049635915518143341

`A065547(eq[6, A002262(n)])`
-/

namespace A095655.P9049635915518143341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095655.P9049635915518143341

/-! ## A095655.P17804128290011670829

`A065547(eq[7, A002260(n+1)])`
-/

namespace A095655.P17804128290011670829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095655.P17804128290011670829

/-! ## A095655.P3516671235153939094

`A065547(A061579(C(n+7, 2)+n))`
-/

namespace A095655.P3516671235153939094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A061579 (Nat.choose (n + 7) 2 + n)).toNat

end

end A095655.P3516671235153939094

/-!
# A095656: Eighth column of Salié-triangle A065547.

The programs for A095656, there is no canonical definition to state claims against.
-/

/-! ## A095656.P16218700959285557258

`A065547(eq[7, A002262(n)])`
-/

namespace A095656.P16218700959285557258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095656.P16218700959285557258

/-! ## A095656.P18391424028799122491

`A065547(A000217(n+7)+7)`
-/

namespace A095656.P18391424028799122491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A000217 (n + 7) + 7).toNat

end

end A095656.P18391424028799122491

/-!
# A095657: Ninth column of Salié-triangle A065547.

The programs for A095657, there is no canonical definition to state claims against.
-/

/-! ## A095657.P8000595843878658565

`A065547(eq[8, A002262(n)])`
-/

namespace A095657.P8000595843878658565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095657.P8000595843878658565

/-! ## A095657.P10561334873537790044

`A065547(A061579(C(n+9, 2)+n))`
-/

namespace A095657.P10561334873537790044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A061579 (Nat.choose (n + 9) 2 + n)).toNat

end

end A095657.P10561334873537790044

/-!
# A095658: Tenth column of Salié-triangle A065547.

The programs for A095658, there is no canonical definition to state claims against.
-/

/-! ## A095658.P4578383352226303747

`A065547(eq[9, A002262(n)])`
-/

namespace A095658.P4578383352226303747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095658.P4578383352226303747

/-! ## A095658.P8286175790329595281

`A065547(eq[10, A002260(n+1)])`
-/

namespace A095658.P8286175790329595281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095658.P8286175790329595281

/-!
# A095660: Pascal (1,3) triangle.

The programs for A095660, the canonical program `A095660.P7165856868933140095` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095660 has offset 0).

The definition of A095660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095660.P7165856868933140095

`A097805(n)+A029635(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A095660

/-- `A097805(n)+A029635(n)` -/
def P7165856868933140095.Spec : Prop :=
  ∀ n, P7165856868933140095.a n = A095660 n

theorem P7165856868933140095.correct : P7165856868933140095.Spec := by
  intro n
  simp only [A095660]

end A095660

/-! ## A095660.P5759580400267343668

`A112467(n)+A028326(n)`
-/

namespace A095660.P5759580400267343668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n + A028326 n

end

end A095660.P5759580400267343668

namespace A095660

/-- `A112467(n)+A028326(n)` -/
def P5759580400267343668.Spec : Prop :=
  ∀ n, P5759580400267343668.a n = A095660 n

end A095660

/-! ## A095660.P9095114853911960332

`A095666(n)-A097805(n)`
-/

namespace A095660.P9095114853911960332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 n - A097805 n

end

end A095660.P9095114853911960332

namespace A095660

/-- `A095666(n)-A097805(n)` -/
def P9095114853911960332.Spec : Prop :=
  ∀ n, P9095114853911960332.a n = A095660 n

end A095660

/-! ## A095660.P9011298373134184204

`A028326(n)-Δ[A097805(n)]`
-/

namespace A095660.P9011298373134184204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (f1 (n + 1) - f1 n)

end

end A095660.P9011298373134184204

namespace A095660

/-- `A028326(n)-Δ[A097805(n)]` -/
def P9011298373134184204.Spec : Prop :=
  ∀ n, P9011298373134184204.a n = A095660 n

end A095660

/-! ## A095660.P8860674597954886611

`A007318(n)+2*A097805(n)`
-/

namespace A095660.P8860674597954886611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A097805 n

end

end A095660.P8860674597954886611

namespace A095660

/-- `A007318(n)+2*A097805(n)` -/
def P8860674597954886611.Spec : Prop :=
  ∀ n, P8860674597954886611.a n = A095660 n

end A095660

/-! ## A095660.P5051426972437105706

`A112467(n)+2*A007318(n)`
-/

namespace A095660.P5051426972437105706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n + 2 * A007318 n

end

end A095660.P5051426972437105706

namespace A095660

/-- `A112467(n)+2*A007318(n)` -/
def P5051426972437105706.Spec : Prop :=
  ∀ n, P5051426972437105706.a n = A095660 n

end A095660

/-! ## A095660.P12395835601138019182

`A093560(n)+2*A112467(n)`
-/

namespace A095660.P12395835601138019182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n + 2 * A112467 n

end

end A095660.P12395835601138019182

namespace A095660

/-- `A093560(n)+2*A112467(n)` -/
def P12395835601138019182.Spec : Prop :=
  ∀ n, P12395835601138019182.a n = A095660 n

end A095660

/-! ## A095660.P4145792254915824760

`2*A029635(n)-A007318(n)`
-/

namespace A095660.P4145792254915824760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029635 n - A007318 n

end

end A095660.P4145792254915824760

namespace A095660

/-- `2*A029635(n)-A007318(n)` -/
def P4145792254915824760.Spec : Prop :=
  ∀ n, P4145792254915824760.a n = A095660 n

end A095660

/-! ## A095660.P4051721563927313239

`(A096940(n)+A007318(n))/2`
-/

namespace A095660.P4051721563927313239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096940 n + A007318 n : ℚ) / 2

end

end A095660.P4051721563927313239

namespace A095660

/-- `(A096940(n)+A007318(n))/2` -/
def P4051721563927313239.Spec : Prop :=
  ∀ n, P4051721563927313239.a n = (A095660 n : ℚ)

end A095660

/-! ## A095660.P3817600851005978020

`2*A028326(n)-A093560(n)`
-/

namespace A095660.P3817600851005978020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028326 n - A093560 n

end

end A095660.P3817600851005978020

namespace A095660

/-- `2*A028326(n)-A093560(n)` -/
def P3817600851005978020.Spec : Prop :=
  ∀ n, P3817600851005978020.a n = A095660 n

end A095660

/-! ## A095660.P125506416663316875

`(A095666(n)+A029635(n))/2`
-/

namespace A095660.P125506416663316875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095666 n + A029635 n : ℚ) / 2

end

end A095660.P125506416663316875

namespace A095660

/-- `(A095666(n)+A029635(n))/2` -/
def P125506416663316875.Spec : Prop :=
  ∀ n, P125506416663316875.a n = (A095660 n : ℚ)

end A095660

/-! ## A095660.P364835953840477605

`2*A095666(n)-A096940(n)`
-/

namespace A095660.P364835953840477605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095666 n - A096940 n

end

end A095660.P364835953840477605

namespace A095660

/-- `2*A095666(n)-A096940(n)` -/
def P364835953840477605.Spec : Prop :=
  ∀ n, P364835953840477605.a n = A095660 n

end A095660

/-! ## A095660.P11786206313971849813

`A096940(n)-2*A097805(n)`
-/

namespace A095660.P11786206313971849813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 n - 2 * A097805 n

end

end A095660.P11786206313971849813

namespace A095660

/-- `A096940(n)-2*A097805(n)` -/
def P11786206313971849813.Spec : Prop :=
  ∀ n, P11786206313971849813.a n = A095660 n

end A095660

/-! ## A095660.P16792961929725395131

`A007318(n)+A177767(n)+A135225(n)`
-/

namespace A095660.P16792961929725395131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A177767 n + A135225 n)

end

end A095660.P16792961929725395131

namespace A095660

/-- `A007318(n)+A177767(n)+A135225(n)` -/
def P16792961929725395131.Spec : Prop :=
  ∀ n, P16792961929725395131.a n = A095660 n

end A095660

/-! ## A095660.P5520341574365779502

`A007318(n)+A095666(n)-A029635(n)`
-/

namespace A095660.P5520341574365779502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A095666 n - A029635 n)

end

end A095660.P5520341574365779502

namespace A095660

/-- `A007318(n)+A095666(n)-A029635(n)` -/
def P5520341574365779502.Spec : Prop :=
  ∀ n, P5520341574365779502.a n = A095660 n

end A095660

/-! ## A095660.P12079730495227989528

`A029635(n)+A096940(n)-A095666(n)`
-/

namespace A095660.P12079730495227989528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A096940 n - A095666 n)

end

end A095660.P12079730495227989528

namespace A095660

/-- `A029635(n)+A096940(n)-A095666(n)` -/
def P12079730495227989528.Spec : Prop :=
  ∀ n, P12079730495227989528.a n = A095660 n

end A095660

/-! ## A095660.P369353352969981154

`A029635(n)+A096956(n)-A096940(n)`
-/

namespace A095660.P369353352969981154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A096956 n - A096940 n)

end

end A095660.P369353352969981154

namespace A095660

/-- `A029635(n)+A096956(n)-A096940(n)` -/
def P369353352969981154.Spec : Prop :=
  ∀ n, P369353352969981154.a n = A095660 n

end A095660

/-! ## A095660.P14136575566982019675

`A095666(n)+A096940(n)-A096956(n)`
-/

namespace A095660.P14136575566982019675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 n + (A096940 n - A096956 n)

end

end A095660.P14136575566982019675

namespace A095660

/-- `A095666(n)+A096940(n)-A096956(n)` -/
def P14136575566982019675.Spec : Prop :=
  ∀ n, P14136575566982019675.a n = A095660 n

end A095660

/-! ## A095660.P3995712832692699338

`A097805(n)+A097805(n)+ceil(A134059(n)/3)`
-/

namespace A095660.P3995712832692699338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A097805 n + ⌈(A134059 n : ℚ) / 3⌉)

end

end A095660.P3995712832692699338

namespace A095660

/-- `A097805(n)+A097805(n)+ceil(A134059(n)/3)` -/
def P3995712832692699338.Spec : Prop :=
  ∀ n, P3995712832692699338.a n = A095660 n

end A095660

/-! ## A095660.P12719701538934236280

`A097805(n)+A097805(n)+A285118(n)+A285116(n)`
-/

namespace A095660.P12719701538934236280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A097805 n + (A285118 n + A285116 n))

end

end A095660.P12719701538934236280

namespace A095660

/-- `A097805(n)+A097805(n)+A285118(n)+A285116(n)` -/
def P12719701538934236280.Spec : Prop :=
  ∀ n, P12719701538934236280.a n = A095660 n

end A095660

/-!
# A095661: Fifth column (m=4) of (1,3)-Pascal triangle A095660.

The programs for A095661, the canonical program `A095661.P15964922975957918055` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095661 has offset 0).

The definition of A095661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095661.P15964922975957918055

`(n+12)*C(n+3, 3)/4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095661

/-- `(n+12)*C(n+3, 3)/4` -/
def P15964922975957918055.Spec : Prop :=
  ∀ n, P15964922975957918055.a n = (A095661 n : ℚ)

end A095661

/-! ## A095661.P13867903499089103124

`∑[∑[∑[3+n]]]`
-/

namespace A095661.P13867903499089103124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095661.P13867903499089103124

namespace A095661

/-- `∑[∑[∑[3+n]]]` -/
def P13867903499089103124.Spec : Prop :=
  ∀ n, (P13867903499089103124.a n : ℤ) = A095661 n

end A095661

/-! ## A095661.P5125894388203456700

`A005701(n)-∑[∑[∑[n]]]`
-/

namespace A095661.P5125894388203456700
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A095661.P5125894388203456700

namespace A095661

/-- `A005701(n)-∑[∑[∑[n]]]` -/
def P5125894388203456700.Spec : Prop :=
  ∀ n, P5125894388203456700.a n = A095661 n

end A095661

/-! ## A095661.P12250054605580428815

`A095667(n)-C(n+3, 3)`
-/

namespace A095661.P12250054605580428815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n - (Nat.choose (n + 3) 3 : ℤ)

end

end A095661.P12250054605580428815

namespace A095661

/-- `A095667(n)-C(n+3, 3)` -/
def P12250054605580428815.Spec : Prop :=
  ∀ n, P12250054605580428815.a n = A095661 n

end A095661

/-! ## A095661.P5052167185573013389

`(n+3)/4*A060488(n+3)`
-/

namespace A095661.P5052167185573013389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 4 * (A060488 (n + 3) : ℚ)

end

end A095661.P5052167185573013389

namespace A095661

/-- `(n+3)/4*A060488(n+3)` -/
def P5052167185573013389.Spec : Prop :=
  ∀ n, P5052167185573013389.a n = (A095661 n : ℚ)

end A095661

/-! ## A095661.P14561914712556880486

`A022815(n+1)+(n+1)*(n+2)`
-/

namespace A095661.P14561914712556880486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A095661.P14561914712556880486

namespace A095661

/-- `A022815(n+1)+(n+1)*(n+2)` -/
def P14561914712556880486.Spec : Prop :=
  ∀ n, P14561914712556880486.a n = A095661 n

end A095661

/-! ## A095661.P3512969249180308165

`A024191(n+1)-(n+1)*(n+2)`
-/

namespace A095661.P3512969249180308165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) - ((n + 1) * (n + 2) : ℤ)

end

end A095661.P3512969249180308165

namespace A095661

/-- `A024191(n+1)-(n+1)*(n+2)` -/
def P3512969249180308165.Spec : Prop :=
  ∀ n, P3512969249180308165.a n = A095661 n

end A095661

/-! ## A095661.P1396840648570120255

`A005718(n)+A000292(n)`
-/

namespace A095661.P1396840648570120255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + A000292 n

end

end A095661.P1396840648570120255

namespace A095661

/-- `A005718(n)+A000292(n)` -/
def P1396840648570120255.Spec : Prop :=
  ∀ n, P1396840648570120255.a n = A095661 n

end A095661

/-! ## A095661.P8171496125191383955

`A055795(n+1)+A037236(n)`
-/

namespace A095661.P8171496125191383955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + A037236 n

end

end A095661.P8171496125191383955

namespace A095661

/-- `A055795(n+1)+A037236(n)` -/
def P8171496125191383955.Spec : Prop :=
  ∀ n, P8171496125191383955.a n = A095661 n

end A095661

/-! ## A095661.P12050659200450522330

`A166805(n+1)+A005581(n)`
-/

namespace A095661.P12050659200450522330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + A005581 n

end

end A095661.P12050659200450522330

namespace A095661

/-- `A166805(n+1)+A005581(n)` -/
def P12050659200450522330.Spec : Prop :=
  ∀ n, P12050659200450522330.a n = A095661 n

end A095661

/-! ## A095661.P15039610854587417491

`A223764(n+1)+A108766(n)`
-/

namespace A095661.P15039610854587417491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (n + 1) + A108766 n

end

end A095661.P15039610854587417491

namespace A095661

/-- `A223764(n+1)+A108766(n)` -/
def P15039610854587417491.Spec : Prop :=
  ∀ n, P15039610854587417491.a n = A095661 n

end A095661

/-! ## A095661.P918423548435664370

`A095667(n)-A000292(n+1)`
-/

namespace A095661.P918423548435664370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n - A000292 (n + 1)

end

end A095661.P918423548435664370

namespace A095661

/-- `A095667(n)-A000292(n+1)` -/
def P918423548435664370.Spec : Prop :=
  ∀ n, P918423548435664370.a n = A095661 n

end A095661

/-! ## A095661.P6461108697279150976

`A145126(n)+A117560(n+2)`
-/

namespace A095661.P6461108697279150976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + A117560 (n + 2)

end

end A095661.P6461108697279150976

namespace A095661

/-- `A145126(n)+A117560(n+2)` -/
def P6461108697279150976.Spec : Prop :=
  ∀ n, P6461108697279150976.a n = A095661 n

end A095661

/-! ## A095661.P13758595399372408377

`A127407(n+2)-A005582(n)`
-/

namespace A095661.P13758595399372408377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127407 (n + 2) - A005582 n

end

end A095661.P13758595399372408377

namespace A095661

/-- `A127407(n+2)-A005582(n)` -/
def P13758595399372408377.Spec : Prop :=
  ∀ n, P13758595399372408377.a n = A095661 n

end A095661

/-! ## A095661.P3838038615509590493

`A005582(n+1)+A000292(n+1)`
-/

namespace A095661.P3838038615509590493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + A000292 (n + 1)

end

end A095661.P3838038615509590493

namespace A095661

/-- `A005582(n+1)+A000292(n+1)` -/
def P3838038615509590493.Spec : Prop :=
  ∀ n, P3838038615509590493.a n = A095661 n

end A095661

/-! ## A095661.P4111864516635873766

`A162260(n+1)+A116699(n+1)`
-/

namespace A095661.P4111864516635873766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) + A116699 (n + 1)

end

end A095661.P4111864516635873766

namespace A095661

/-- `A162260(n+1)+A116699(n+1)` -/
def P4111864516635873766.Spec : Prop :=
  ∀ n, P4111864516635873766.a n = A095661 n

end A095661

/-! ## A095661.P4560921373756756919

`A223718(n+1)+A168559(n+1)`
-/

namespace A095661.P4560921373756756919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) + A168559 (n + 1)

end

end A095661.P4560921373756756919

namespace A095661

/-- `A223718(n+1)+A168559(n+1)` -/
def P4560921373756756919.Spec : Prop :=
  ∀ n, P4560921373756756919.a n = A095661 n

end A095661

/-! ## A095661.P5322455149688143855

`A006504(n+1)-(A005286(n)+1)`
-/

namespace A095661.P5322455149688143855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - (A005286 n + 1)

end

end A095661.P5322455149688143855

namespace A095661

/-- `A006504(n+1)-(A005286(n)+1)` -/
def P5322455149688143855.Spec : Prop :=
  ∀ n, P5322455149688143855.a n = A095661 n

end A095661

/-! ## A095661.P5006203770849393616

`A000439(n+1)-A023545(n+1)`
-/

namespace A095661.P5006203770849393616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000439 (n + 1) - A023545 (n + 1)

end

end A095661.P5006203770849393616

namespace A095661

/-- `A000439(n+1)-A023545(n+1)` -/
def P5006203770849393616.Spec : Prop :=
  ∀ n, P5006203770849393616.a n = A095661 n

end A095661

/-!
# A095662: Seventh column (m=6) of (1,3)-Pascal triangle A095660.

The programs for A095662, the canonical program `A095662.P14050702563703744993` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095662 has offset 0).

The definition of A095662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095662.P14050702563703744993

`C(n+5, 5)*(n+18)/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095662

/-- `C(n+5, 5)*(n+18)/6` -/
def P14050702563703744993.Spec : Prop :=
  ∀ n, P14050702563703744993.a n = (A095662 n : ℚ)

end A095662

/-! ## A095662.P9837488028632929701

`∑[∑[∑[∑[∑[3+n]]]]]`
-/

namespace A095662.P9837488028632929701
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

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

end A095662.P9837488028632929701

namespace A095662

/-- `∑[∑[∑[∑[∑[3+n]]]]]` -/
def P9837488028632929701.Spec : Prop :=
  ∀ n, (P9837488028632929701.a n : ℤ) = A095662 n

end A095662

/-! ## A095662.P4073410615032247767

`A000574(n+3)+a(n-1)` with `a(0)=3`
-/

namespace A095662.P4073410615032247767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000574 (n + 3) + a (n - 1)

end

end A095662.P4073410615032247767

namespace A095662

/-- `A000574(n+3)+a(n-1)` -/
def P4073410615032247767.Spec : Prop :=
  ∀ n, P4073410615032247767.a n = A095662 n

end A095662

/-! ## A095662.P2079657188030006113

`A253946(n+5)-A112459(n+3)`
-/

namespace A095662.P2079657188030006113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253946 (n + 5) - A112459 (n + 3)

end

end A095662.P2079657188030006113

namespace A095662

/-- `A253946(n+5)-A112459(n+3)` -/
def P2079657188030006113.Spec : Prop :=
  ∀ n, P2079657188030006113.a n = A095662 n

end A095662

/-! ## A095662.P7094173639808899841

`A000217(n+1)+A005714(n+3)+A005712(n+2)`
-/

namespace A095662.P7094173639808899841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A005714 (n + 3) + A005712 (n + 2))

end

end A095662.P7094173639808899841

namespace A095662

/-- `A000217(n+1)+A005714(n+3)+A005712(n+2)` -/
def P7094173639808899841.Spec : Prop :=
  ∀ n, P7094173639808899841.a n = A095662 n

end A095662

/-! ## A095662.P5047647114009630045

`A095663(n+1)-(A095663(n)+A000574(n+4))`
-/

namespace A095662.P5047647114009630045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095663 (n + 1) - (A095663 n + A000574 (n + 4))

end

end A095662.P5047647114009630045

namespace A095662

/-- `A095663(n+1)-(A095663(n)+A000574(n+4))` -/
def P5047647114009630045.Spec : Prop :=
  ∀ n, P5047647114009630045.a n = A095662 n

end A095662

/-! ## A095662.P12829526968091385108

`A097297(n)-A253942(n+4)`
-/

namespace A095662.P12829526968091385108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097297 n - A253942 (n + 4)

end

end A095662.P12829526968091385108

namespace A095662

/-- `A097297(n)-A253942(n+4)` -/
def P12829526968091385108.Spec : Prop :=
  ∀ n, P12829526968091385108.a n = A095662 n

end A095662

/-! ## A095662.P12702704900373910954

`A027968(n+6)-A027966(n+5)`
-/

namespace A095662.P12702704900373910954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027968 (n + 6) - A027966 (n + 5)

end

end A095662.P12702704900373910954

namespace A095662

/-- `A027968(n+6)-A027966(n+5)` -/
def P12702704900373910954.Spec : Prop :=
  ∀ n, P12702704900373910954.a n = A095662 n

end A095662

/-! ## A095662.P2785760544254800429

`A299336(2*n+1)+A299338(2*n)-A299336(2*n)`
-/

namespace A095662.P2785760544254800429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 (2 * n + 1) + (A299338 (2 * n) - A299336 (2 * n))

end

end A095662.P2785760544254800429

namespace A095662

/-- `A299336(2*n+1)+A299338(2*n)-A299336(2*n)` -/
def P2785760544254800429.Spec : Prop :=
  ∀ n, P2785760544254800429.a n = A095662 n

end A095662

/-! ## A095662.P14350350228034250772

`A095660(A000096(n+5)+7)`
-/

namespace A095662.P14350350228034250772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000096 (n + 5) + 7).toNat

end

end A095662.P14350350228034250772

namespace A095662

/-- `A095660(A000096(n+5)+7)` -/
def P14350350228034250772.Spec : Prop :=
  ∀ n, P14350350228034250772.a n = A095662 n

end A095662

/-! ## A095662.P5532023785024334772

`A095660(A000217(n+6)+6)`
-/

namespace A095662.P5532023785024334772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000217 (n + 6) + 6).toNat

end

end A095662.P5532023785024334772

namespace A095662

/-- `A095660(A000217(n+6)+6)` -/
def P5532023785024334772.Spec : Prop :=
  ∀ n, P5532023785024334772.a n = A095662 n

end A095662

/-! ## A095662.P8162983960627008893

`A093560(A055999(n+4)-1)`
-/

namespace A095662.P8162983960627008893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A055999 (n + 4) - 1).toNat

end

end A095662.P8162983960627008893

namespace A095662

/-- `A093560(A055999(n+4)-1)` -/
def P8162983960627008893.Spec : Prop :=
  ∀ n, P8162983960627008893.a n = A095662 n

end A095662

/-! ## A095662.P9474074586727359282

`A093560(A000217(n+7)-7)`
-/

namespace A095662.P9474074586727359282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000217 (n + 7) - 7).toNat

end

end A095662.P9474074586727359282

namespace A095662

/-- `A093560(A000217(n+7)-7)` -/
def P9474074586727359282.Spec : Prop :=
  ∀ n, P9474074586727359282.a n = A095662 n

end A095662

/-! ## A095662.P13837980846157733883

`A093560(A000124(n+7)-8)`
-/

namespace A095662.P13837980846157733883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000124 (n + 7) - 8).toNat

end

end A095662.P13837980846157733883

namespace A095662

/-- `A093560(A000124(n+7)-8)` -/
def P13837980846157733883.Spec : Prop :=
  ∀ n, P13837980846157733883.a n = A095662 n

end A095662

/-! ## A095662.P16710934476342528624

`A093560(Δ[A023551(n+2)]-1)`
-/

namespace A095662.P16710934476342528624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (f1 (n + 1) - f1 n - 1).toNat

end

end A095662.P16710934476342528624

namespace A095662

/-- `A093560(Δ[A023551(n+2)]-1)` -/
def P16710934476342528624.Spec : Prop :=
  ∀ n, P16710934476342528624.a n = A095662 n

end A095662

/-! ## A095662.P15644934378713557871

`A093560(Δ[A026054(n+4)]-1)`
-/

namespace A095662.P15644934378713557871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (f1 (n + 1) - f1 n - 1).toNat

end

end A095662.P15644934378713557871

namespace A095662

/-- `A093560(Δ[A026054(n+4)]-1)` -/
def P15644934378713557871.Spec : Prop :=
  ∀ n, P15644934378713557871.a n = A095662 n

end A095662

/-!
# A095663: Eighth column (m=7) of (1,3)-Pascal triangle A095660.

The programs for A095663, the canonical program `A095663.P1950674703550899156` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095663 has offset 0).

The definition of A095663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095663.P1950674703550899156

`C(n+6, 6)*(n+21)/7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095663

/-- `C(n+6, 6)*(n+21)/7` -/
def P1950674703550899156.Spec : Prop :=
  ∀ n, P1950674703550899156.a n = (A095663 n : ℚ)

end A095663

/-! ## A095663.P6840506123231740486

`∑[∑[∑[∑[∑[∑[3+n]]]]]]`
-/

namespace A095663.P6840506123231740486
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

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

end A095663.P6840506123231740486

namespace A095663

/-- `∑[∑[∑[∑[∑[∑[3+n]]]]]]` -/
def P6840506123231740486.Spec : Prop :=
  ∀ n, (P6840506123231740486.a n : ℤ) = A095663 n

end A095663

/-! ## A095663.P1413586352632072157

`A095662(n)+a(n-1)` with `a(0)=3`
-/

namespace A095663.P1413586352632072157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095662 n + a (n - 1)

end

end A095663.P1413586352632072157

namespace A095663

/-- `A095662(n)+a(n-1)` -/
def P1413586352632072157.Spec : Prop :=
  ∀ n, P1413586352632072157.a n = A095663 n

end A095663

/-! ## A095663.P6366757257219521560

`∑[A095662(n)]%A095670(n)`
-/

namespace A095663.P6366757257219521560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095670 n)

end

end A095663.P6366757257219521560

namespace A095663

/-- `∑[A095662(n)]%A095670(n)` -/
def P6366757257219521560.Spec : Prop :=
  ∀ n, P6366757257219521560.a n = A095663 n

end A095663

/-! ## A095663.P12266533578320790640

`lcm(∑[A095662(n)], A000034(n))`
-/

namespace A095663.P12266533578320790640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A095663.P12266533578320790640

namespace A095663

/-- `lcm(∑[A095662(n)], A000034(n))` -/
def P12266533578320790640.Spec : Prop :=
  ∀ n, (P12266533578320790640.a n : ℤ) = A095663 n

end A095663

/-! ## A095663.P12253891250032511955

`or(∑[A095662(n)], A000007(n))`
-/

namespace A095663.P12253891250032511955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A095663.P12253891250032511955

namespace A095663

/-- `or(∑[A095662(n)], A000007(n))` -/
def P12253891250032511955.Spec : Prop :=
  ∀ n, P12253891250032511955.a n = A095663 n

end A095663

/-! ## A095663.P11915681616502461407

`or(∑[A095662(n)], A000038(n))`
-/

namespace A095663.P11915681616502461407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A095663.P11915681616502461407

namespace A095663

/-- `or(∑[A095662(n)], A000038(n))` -/
def P11915681616502461407.Spec : Prop :=
  ∀ n, P11915681616502461407.a n = A095663 n

end A095663

/-! ## A095663.P10355561906449245274

`2*A095670(n)-A096945(n)`
-/

namespace A095663.P10355561906449245274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095670 n - A096945 n

end

end A095663.P10355561906449245274

namespace A095663

/-- `2*A095670(n)-A096945(n)` -/
def P10355561906449245274.Spec : Prop :=
  ∀ n, P10355561906449245274.a n = A095663 n

end A095663

/-! ## A095663.P16538750533529840882

`A097298(n)-A253943(n+5)`
-/

namespace A095663.P16538750533529840882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 n - A253943 (n + 5)

end

end A095663.P16538750533529840882

namespace A095663

/-- `A097298(n)-A253943(n+5)` -/
def P16538750533529840882.Spec : Prop :=
  ∀ n, P16538750533529840882.a n = A095663 n

end A095663

/-! ## A095663.P998389169073262012

`A097298(n)-A253946(n+5)/2`
-/

namespace A095663.P998389169073262012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097298 n : ℚ) - (A253946 (n + 5) : ℚ) / 2

end

end A095663.P998389169073262012

namespace A095663

/-- `A097298(n)-A253946(n+5)/2` -/
def P998389169073262012.Spec : Prop :=
  ∀ n, P998389169073262012.a n = (A095663 n : ℚ)

end A095663

/-! ## A095663.P2778191259504388297

`A000580(n+7)+A097298(n)-A095670(n)`
-/

namespace A095663.P2778191259504388297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + (A097298 n - A095670 n)

end

end A095663.P2778191259504388297

namespace A095663

/-- `A000580(n+7)+A097298(n)-A095670(n)` -/
def P2778191259504388297.Spec : Prop :=
  ∀ n, P2778191259504388297.a n = A095663 n

end A095663

/-! ## A095663.P8074449736952743967

`A027818(n+1)-(A050494(n+1)+A050494(n))`
-/

namespace A095663.P8074449736952743967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 (n + 1) - (A050494 (n + 1) + A050494 n)

end

end A095663.P8074449736952743967

namespace A095663

/-- `A027818(n+1)-(A050494(n+1)+A050494(n))` -/
def P8074449736952743967.Spec : Prop :=
  ∀ n, P8074449736952743967.a n = A095663 n

end A095663

/-! ## A095663.P2487430488938720628

`A095664(n+1)-(A095664(n)+A095662(n+1))`
-/

namespace A095663.P2487430488938720628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 (n + 1) - (A095664 n + A095662 (n + 1))

end

end A095663.P2487430488938720628

namespace A095663

/-- `A095664(n+1)-(A095664(n)+A095662(n+1))` -/
def P2487430488938720628.Spec : Prop :=
  ∀ n, P2487430488938720628.a n = A095663 n

end A095663

/-! ## A095663.P14646402480131468154

`A001919(n+3)-A253942(n+4)`
-/

namespace A095663.P14646402480131468154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - A253942 (n + 4)

end

end A095663.P14646402480131468154

namespace A095663

/-- `A001919(n+3)-A253942(n+4)` -/
def P14646402480131468154.Spec : Prop :=
  ∀ n, P14646402480131468154.a n = A095663 n

end A095663

/-! ## A095663.P4143912086068398484

`A027969(n+7)-A027967(n+6)`
-/

namespace A095663.P4143912086068398484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027969 (n + 7) - A027967 (n + 6)

end

end A095663.P4143912086068398484

namespace A095663

/-- `A027969(n+7)-A027967(n+6)` -/
def P4143912086068398484.Spec : Prop :=
  ∀ n, P4143912086068398484.a n = A095663 n

end A095663

/-! ## A095663.P16580997438075331073

`A095660(A000217(n+7)+7)`
-/

namespace A095663.P16580997438075331073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000217 (n + 7) + 7).toNat

end

end A095663.P16580997438075331073

namespace A095663

/-- `A095660(A000217(n+7)+7)` -/
def P16580997438075331073.Spec : Prop :=
  ∀ n, P16580997438075331073.a n = A095663 n

end A095663

/-! ## A095663.P6790721379134429333

`A093560(A000217(n+8)-8)`
-/

namespace A095663.P6790721379134429333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000217 (n + 8) - 8).toNat

end

end A095663.P6790721379134429333

namespace A095663

/-- `A093560(A000217(n+8)-8)` -/
def P6790721379134429333.Spec : Prop :=
  ∀ n, P6790721379134429333.a n = A095663 n

end A095663

/-! ## A095663.P8399752613407808044

`A093560(A055998(n+5)+n+3)`
-/

namespace A095663.P8399752613407808044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A055998 (n + 5) + (n + 3 : ℤ)).toNat

end

end A095663.P8399752613407808044

namespace A095663

/-- `A093560(A055998(n+5)+n+3)` -/
def P8399752613407808044.Spec : Prop :=
  ∀ n, P8399752613407808044.a n = A095663 n

end A095663

/-! ## A095663.P4423365630788026897

`A093560(A167487(n+5)+2*n)`
-/

namespace A095663.P4423365630788026897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A167487 (n + 5) + (2 * n : ℤ)).toNat

end

end A095663.P4423365630788026897

namespace A095663

/-- `A093560(A167487(n+5)+2*n)` -/
def P4423365630788026897.Spec : Prop :=
  ∀ n, P4423365630788026897.a n = A095663 n

end A095663

/-! ## A095663.P7496522755288804941

`A093560(2*n+A166136(n+5)+1)`
-/

namespace A095663.P7496522755288804941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 ((2 * n : ℤ) + (A166136 (n + 5) + 1)).toNat

end

end A095663.P7496522755288804941

namespace A095663

/-- `A093560(2*n+A166136(n+5)+1)` -/
def P7496522755288804941.Spec : Prop :=
  ∀ n, P7496522755288804941.a n = A095663 n

end A095663

/-!
# A095664: Ninth column (m=8) of (1,3)-Pascal triangle A095660.

The programs for A095664, the canonical program `A095664.P3700318015653717203` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095664 has offset 0).

The definition of A095664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095664.P3700318015653717203

`C(n+7, 7)*(n+24)/8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095664

/-- `C(n+7, 7)*(n+24)/8` -/
def P3700318015653717203.Spec : Prop :=
  ∀ n, P3700318015653717203.a n = (A095664 n : ℚ)

end A095664

/-! ## A095664.P15803753863637898017

`∑[∑[∑[∑[∑[∑[∑[3+n]]]]]]]`
-/

namespace A095664.P15803753863637898017
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

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

end A095664.P15803753863637898017

namespace A095664

/-- `∑[∑[∑[∑[∑[∑[∑[3+n]]]]]]]` -/
def P15803753863637898017.Spec : Prop :=
  ∀ n, (P15803753863637898017.a n : ℤ) = A095664 n

end A095664

/-! ## A095664.P13353549242715107455

`A095663(n)+a(n-1)` with `a(0)=3`
-/

namespace A095664.P13353549242715107455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095663 n + a (n - 1)

end

end A095664.P13353549242715107455

namespace A095664

/-- `A095663(n)+a(n-1)` -/
def P13353549242715107455.Spec : Prop :=
  ∀ n, P13353549242715107455.a n = A095664 n

end A095664

/-! ## A095664.P3589592969286164058

`A112460(n+4)-A054487(n)`
-/

namespace A095664.P3589592969286164058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112460 (n + 4) - A054487 n

end

end A095664.P3589592969286164058

namespace A095664

/-- `A112460(n+4)-A054487(n)` -/
def P3589592969286164058.Spec : Prop :=
  ∀ n, P3589592969286164058.a n = A095664 n

end A095664

/-! ## A095664.P7021184154746553530

`2*A095671(n)-A096946(n)`
-/

namespace A095664.P7021184154746553530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095671 n - A096946 n

end

end A095664.P7021184154746553530

namespace A095664

/-- `2*A095671(n)-A096946(n)` -/
def P7021184154746553530.Spec : Prop :=
  ∀ n, P7021184154746553530.a n = A095664 n

end A095664

/-! ## A095664.P16747113828446340169

`A097299(n)-A253944(n+6)`
-/

namespace A095664.P16747113828446340169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 n - A253944 (n + 6)

end

end A095664.P16747113828446340169

namespace A095664

/-- `A097299(n)-A253944(n+6)` -/
def P16747113828446340169.Spec : Prop :=
  ∀ n, P16747113828446340169.a n = A095664 n

end A095664

/-! ## A095664.P25371661718410756

`A095671(n)-A000580(n+7)`
-/

namespace A095664.P25371661718410756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n - A000580 (n + 7)

end

end A095664.P25371661718410756

namespace A095664

/-- `A095671(n)-A000580(n+7)` -/
def P25371661718410756.Spec : Prop :=
  ∀ n, P25371661718410756.a n = A095664 n

end A095664

/-! ## A095664.P8306610823591277560

`A027767(n+6)-A112460(n+4)`
-/

namespace A095664.P8306610823591277560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027767 (n + 6) - A112460 (n + 4)

end

end A095664.P8306610823591277560

namespace A095664

/-- `A027767(n+6)-A112460(n+4)` -/
def P8306610823591277560.Spec : Prop :=
  ∀ n, P8306610823591277560.a n = A095664 n

end A095664

/-! ## A095664.P6675068179402791274

`A096946(n)-2*A000580(n+7)`
-/

namespace A095664.P6675068179402791274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n - 2 * A000580 (n + 7)

end

end A095664.P6675068179402791274

namespace A095664

/-- `A096946(n)-2*A000580(n+7)` -/
def P6675068179402791274.Spec : Prop :=
  ∀ n, P6675068179402791274.a n = A095664 n

end A095664

/-! ## A095664.P13196663492748176010

`A000581(n+8)+2*A000580(n+7)`
-/

namespace A095664.P13196663492748176010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + 2 * A000580 (n + 7)

end

end A095664.P13196663492748176010

namespace A095664

/-- `A000581(n+8)+2*A000580(n+7)` -/
def P13196663492748176010.Spec : Prop :=
  ∀ n, P13196663492748176010.a n = A095664 n

end A095664

/-! ## A095664.P1978829999131111696

`A166813(n+1)+A000580(n+7)-A166810(n+1)`
-/

namespace A095664.P1978829999131111696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1) + (A000580 (n + 7) - A166810 (n + 1))

end

end A095664.P1978829999131111696

namespace A095664

/-- `A166813(n+1)+A000580(n+7)-A166810(n+1)` -/
def P1978829999131111696.Spec : Prop :=
  ∀ n, P1978829999131111696.a n = A095664 n

end A095664

/-! ## A095664.P8776650618223490373

`A253944(n+6)+A000581(n+8)-A000580(n+7)`
-/

namespace A095664.P8776650618223490373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253944 (n + 6) + (A000581 (n + 8) - A000580 (n + 7))

end

end A095664.P8776650618223490373

namespace A095664

/-- `A253944(n+6)+A000581(n+8)-A000580(n+7)` -/
def P8776650618223490373.Spec : Prop :=
  ∀ n, P8776650618223490373.a n = A095664 n

end A095664

/-! ## A095664.P14324681107025084827

`A095665(n+1)-(A095665(n)+A095663(n+1))`
-/

namespace A095664.P14324681107025084827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095665 (n + 1) - (A095665 n + A095663 (n + 1))

end

end A095664.P14324681107025084827

namespace A095664

/-- `A095665(n+1)-(A095665(n)+A095663(n+1))` -/
def P14324681107025084827.Spec : Prop :=
  ∀ n, P14324681107025084827.a n = A095664 n

end A095664

/-! ## A095664.P1922220557691576830

`A000580(n+7)+Δ[A000582(n+9)-A000580(n+7)]`
-/

namespace A095664.P1922220557691576830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + (f1 (n + 1) - f1 n)

end

end A095664.P1922220557691576830

namespace A095664

/-- `A000580(n+7)+Δ[A000582(n+9)-A000580(n+7)]` -/
def P1922220557691576830.Spec : Prop :=
  ∀ n, P1922220557691576830.a n = A095664 n

end A095664

/-! ## A095664.P9437119605088414580

`A095660(A000124(n+9)-(n+2))`
-/

namespace A095664.P9437119605088414580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A095664.P9437119605088414580

namespace A095664

/-- `A095660(A000124(n+9)-(n+2))` -/
def P9437119605088414580.Spec : Prop :=
  ∀ n, P9437119605088414580.a n = A095664 n

end A095664

/-! ## A095664.P12102971491674968108

`A093560(A000096(n+8)-8)`
-/

namespace A095664.P12102971491674968108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000096 (n + 8) - 8).toNat

end

end A095664.P12102971491674968108

namespace A095664

/-- `A093560(A000096(n+8)-8)` -/
def P12102971491674968108.Spec : Prop :=
  ∀ n, P12102971491674968108.a n = A095664 n

end A095664

/-! ## A095664.P8786283288557886716

`A093560(A000217(n+9)-9)`
-/

namespace A095664.P8786283288557886716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000217 (n + 9) - 9).toNat

end

end A095664.P8786283288557886716

namespace A095664

/-- `A093560(A000217(n+9)-9)` -/
def P8786283288557886716.Spec : Prop :=
  ∀ n, P8786283288557886716.a n = A095664 n

end A095664

/-!
# A095665: Tenth column (m=9) of (1,3)-Pascal triangle A095660.

The programs for A095665, the canonical program `A095665.P7618862643016815526` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095665 has offset 0).

The definition of A095665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095665.P7618862643016815526

`C(n+8, 8)*(n+27)/9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095665

/-- `C(n+8, 8)*(n+27)/9` -/
def P7618862643016815526.Spec : Prop :=
  ∀ n, P7618862643016815526.a n = (A095665 n : ℚ)

end A095665

/-! ## A095665.P8124640242841663410

`∑[∑[∑[∑[∑[∑[∑[∑[3+n]]]]]]]]`
-/

namespace A095665.P8124640242841663410
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

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

end A095665.P8124640242841663410

namespace A095665

/-- `∑[∑[∑[∑[∑[∑[∑[∑[3+n]]]]]]]]` -/
def P8124640242841663410.Spec : Prop :=
  ∀ n, (P8124640242841663410.a n : ℤ) = A095665 n

end A095665

/-! ## A095665.P17649542612769073973

`A095664(n)+a(n-1)` with `a(0)=3`
-/

namespace A095665.P17649542612769073973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A095664 n + a (n - 1)

end

end A095665.P17649542612769073973

namespace A095665

/-- `A095664(n)+a(n-1)` -/
def P17649542612769073973.Spec : Prop :=
  ∀ n, P17649542612769073973.a n = A095665 n

end A095665

/-! ## A095665.P9233513341279765515

`lcm(∑[A095664(n)], A000034(n))`
-/

namespace A095665.P9233513341279765515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A095665.P9233513341279765515

namespace A095665

/-- `lcm(∑[A095664(n)], A000034(n))` -/
def P9233513341279765515.Spec : Prop :=
  ∀ n, (P9233513341279765515.a n : ℤ) = A095665 n

end A095665

/-! ## A095665.P10376120549314870819

`or(∑[A095664(n)], A000007(n))`
-/

namespace A095665.P10376120549314870819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A095665.P10376120549314870819

namespace A095665

/-- `or(∑[A095664(n)], A000007(n))` -/
def P10376120549314870819.Spec : Prop :=
  ∀ n, P10376120549314870819.a n = A095665 n

end A095665

/-! ## A095665.P4501723181608574317

`2*A095819(n)-A096947(n)`
-/

namespace A095665.P4501723181608574317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095819 n - A096947 n

end

end A095665.P4501723181608574317

namespace A095665

/-- `2*A095819(n)-A096947(n)` -/
def P4501723181608574317.Spec : Prop :=
  ∀ n, P4501723181608574317.a n = A095665 n

end A095665

/-! ## A095665.P8132086194347716612

`A095819(n)-A000581(n+8)`
-/

namespace A095665.P8132086194347716612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 n - A000581 (n + 8)

end

end A095665.P8132086194347716612

namespace A095665

/-- `A095819(n)-A000581(n+8)` -/
def P8132086194347716612.Spec : Prop :=
  ∀ n, P8132086194347716612.a n = A095665 n

end A095665

/-! ## A095665.P15581592232416812022

`∑[A095671(n)]-A000581(n+8)`
-/

namespace A095665.P15581592232416812022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000581 (n + 8)

end

end A095665.P15581592232416812022

namespace A095665

/-- `∑[A095671(n)]-A000581(n+8)` -/
def P15581592232416812022.Spec : Prop :=
  ∀ n, P15581592232416812022.a n = A095665 n

end A095665

/-! ## A095665.P5306553084287666742

`A096947(n)-2*A000581(n+8)`
-/

namespace A095665.P5306553084287666742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096947 n - 2 * A000581 (n + 8)

end

end A095665.P5306553084287666742

namespace A095665

/-- `A096947(n)-2*A000581(n+8)` -/
def P5306553084287666742.Spec : Prop :=
  ∀ n, P5306553084287666742.a n = A095665 n

end A095665

/-! ## A095665.P8527036698899595438

`A000582(n+9)+2*A000581(n+8)`
-/

namespace A095665.P8527036698899595438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + 2 * A000581 (n + 8)

end

end A095665.P8527036698899595438

namespace A095665

/-- `A000582(n+9)+2*A000581(n+8)` -/
def P8527036698899595438.Spec : Prop :=
  ∀ n, P8527036698899595438.a n = A095665 n

end A095665

/-! ## A095665.P5426827188175516597

`A000582(n+9)+A097300(n)-A095819(n)`
-/

namespace A095665.P5426827188175516597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A097300 n - A095819 n)

end

end A095665.P5426827188175516597

namespace A095665

/-- `A000582(n+9)+A097300(n)-A095819(n)` -/
def P5426827188175516597.Spec : Prop :=
  ∀ n, P5426827188175516597.a n = A095665 n

end A095665

/-! ## A095665.P9529571437290023066

`A055994(n+1)-(A053310(n+1)+A053310(n))`
-/

namespace A095665.P9529571437290023066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055994 (n + 1) - (A053310 (n + 1) + A053310 n)

end

end A095665.P9529571437290023066

namespace A095665

/-- `A055994(n+1)-(A053310(n+1)+A053310(n))` -/
def P9529571437290023066.Spec : Prop :=
  ∀ n, P9529571437290023066.a n = A095665 n

end A095665

/-! ## A095665.P5786776465873554796

`A000581(n+8)+Δ[A001287(n)-A000581(n+8)]`
-/

namespace A095665.P5786776465873554796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + (f1 (n + 1) - f1 n)

end

end A095665.P5786776465873554796

namespace A095665

/-- `A000581(n+8)+Δ[A001287(n)-A000581(n+8)]` -/
def P5786776465873554796.Spec : Prop :=
  ∀ n, P5786776465873554796.a n = A095665 n

end A095665

/-! ## A095665.P18135246554240643180

`A035927(n+1)+A000581(n+8)-A124090(n+8)`
-/

namespace A095665.P18135246554240643180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 (n + 1) + (A000581 (n + 8) - A124090 (n + 8))

end

end A095665.P18135246554240643180

namespace A095665

/-- `A035927(n+1)+A000581(n+8)-A124090(n+8)` -/
def P18135246554240643180.Spec : Prop :=
  ∀ n, P18135246554240643180.a n = A095665 n

end A095665

/-! ## A095665.P15746055224479763358

`A095660(A000217(n+9)+9)`
-/

namespace A095665.P15746055224479763358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000217 (n + 9) + 9).toNat

end

end A095665.P15746055224479763358

namespace A095665

/-- `A095660(A000217(n+9)+9)` -/
def P15746055224479763358.Spec : Prop :=
  ∀ n, P15746055224479763358.a n = A095665 n

end A095665

/-! ## A095665.P16615335423000463404

`A095660(A000124(n+10)-(n+2))`
-/

namespace A095665.P16615335423000463404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A095665.P16615335423000463404

namespace A095665

/-- `A095660(A000124(n+10)-(n+2))` -/
def P16615335423000463404.Spec : Prop :=
  ∀ n, P16615335423000463404.a n = A095665 n

end A095665

/-! ## A095665.P17220458404558199898

`A093560(A056000(n+6))`
-/

namespace A095665.P17220458404558199898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A056000 (n + 6)).toNat

end

end A095665.P17220458404558199898

namespace A095665

/-- `A093560(A056000(n+6))` -/
def P17220458404558199898.Spec : Prop :=
  ∀ n, P17220458404558199898.a n = A095665 n

end A095665

/-! ## A095665.P12420004358131606322

`A093560(A000217(n+10)-10)`
-/

namespace A095665.P12420004358131606322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000217 (n + 10) - 10).toNat

end

end A095665.P12420004358131606322

namespace A095665

/-- `A093560(A000217(n+10)-10)` -/
def P12420004358131606322.Spec : Prop :=
  ∀ n, P12420004358131606322.a n = A095665 n

end A095665

/-! ## A095665.P8188774145423562426

`A093560(A000096(n+8)+n+1)`
-/

namespace A095665.P8188774145423562426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A095665.P8188774145423562426

namespace A095665

/-- `A093560(A000096(n+8)+n+1)` -/
def P8188774145423562426.Spec : Prop :=
  ∀ n, P8188774145423562426.a n = A095665 n

end A095665

/-! ## A095665.P13281822870816591315

`A093560(A000124(n+9)+n-1)`
-/

namespace A095665.P13281822870816591315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A000124 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A095665.P13281822870816591315

namespace A095665

/-- `A093560(A000124(n+9)+n-1)` -/
def P13281822870816591315.Spec : Prop :=
  ∀ n, P13281822870816591315.a n = A095665 n

end A095665

/-!
# A095666: Pascal (1,4) triangle.

The programs for A095666, the canonical program `A095666.P3074718101462256715` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095666 has offset 0).

The definition of A095666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095666.P3074718101462256715

`A097805(n)+A095660(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A095666

/-- `A097805(n)+A095660(n)` -/
def P3074718101462256715.Spec : Prop :=
  ∀ n, P3074718101462256715.a n = A095666 n

theorem P3074718101462256715.correct : P3074718101462256715.Spec := by
  intro n
  simp only [A095666]

end A095666

/-! ## A095666.P5535722408535937699

`A096940(n)-A097805(n)`
-/

namespace A095666.P5535722408535937699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 n - A097805 n

end

end A095666.P5535722408535937699

namespace A095666

/-- `A096940(n)-A097805(n)` -/
def P5535722408535937699.Spec : Prop :=
  ∀ n, P5535722408535937699.a n = A095666 n

end A095666

/-! ## A095666.P16269230346211956655

`A029635(n)+2*A097805(n)`
-/

namespace A095666.P16269230346211956655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + 2 * A097805 n

end

end A095666.P16269230346211956655

namespace A095666

/-- `A029635(n)+2*A097805(n)` -/
def P16269230346211956655.Spec : Prop :=
  ∀ n, P16269230346211956655.a n = A095666 n

end A095666

/-! ## A095666.P15159597430776915372

`2*A095660(n)-A029635(n)`
-/

namespace A095666.P15159597430776915372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095660 n - A029635 n

end

end A095666.P15159597430776915372

namespace A095666

/-- `2*A095660(n)-A029635(n)` -/
def P15159597430776915372.Spec : Prop :=
  ∀ n, P15159597430776915372.a n = A095666 n

end A095666

/-! ## A095666.P5177053915303310520

`(A096956(n)+A029635(n))/2`
-/

namespace A095666.P5177053915303310520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096956 n + A029635 n : ℚ) / 2

end

end A095666.P5177053915303310520

namespace A095666

/-- `(A096956(n)+A029635(n))/2` -/
def P5177053915303310520.Spec : Prop :=
  ∀ n, P5177053915303310520.a n = (A095666 n : ℚ)

end A095666

/-! ## A095666.P8642191161036296784

`(A096940(n)+A095660(n))/2`
-/

namespace A095666.P8642191161036296784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096940 n + A095660 n : ℚ) / 2

end

end A095666.P8642191161036296784

namespace A095666

/-- `(A096940(n)+A095660(n))/2` -/
def P8642191161036296784.Spec : Prop :=
  ∀ n, P8642191161036296784.a n = (A095666 n : ℚ)

end A095666

/-! ## A095666.P8555149732197804212

`2*A096940(n)-A096956(n)`
-/

namespace A095666.P8555149732197804212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096940 n - A096956 n

end

end A095666.P8555149732197804212

namespace A095666

/-- `2*A096940(n)-A096956(n)` -/
def P8555149732197804212.Spec : Prop :=
  ∀ n, P8555149732197804212.a n = A095666 n

end A095666

/-! ## A095666.P6292577329849040590

`A096956(n)-2*A097805(n)`
-/

namespace A095666.P6292577329849040590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 n - 2 * A097805 n

end

end A095666.P6292577329849040590

namespace A095666

/-- `A096956(n)-2*A097805(n)` -/
def P6292577329849040590.Spec : Prop :=
  ∀ n, P6292577329849040590.a n = A095666 n

end A095666

/-! ## A095666.P12385245491379230936

`A029635(n)+A095660(n)-A007318(n)`
-/

namespace A095666.P12385245491379230936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A095660 n - A007318 n)

end

end A095666.P12385245491379230936

namespace A095666

/-- `A029635(n)+A095660(n)-A007318(n)` -/
def P12385245491379230936.Spec : Prop :=
  ∀ n, P12385245491379230936.a n = A095666 n

end A095666

/-! ## A095666.P7394982129300966505

`A007318(n)+A096940(n)-A029635(n)`
-/

namespace A095666.P7394982129300966505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A096940 n - A029635 n)

end

end A095666.P7394982129300966505

namespace A095666

/-- `A007318(n)+A096940(n)-A029635(n)` -/
def P7394982129300966505.Spec : Prop :=
  ∀ n, P7394982129300966505.a n = A095666 n

end A095666

/-! ## A095666.P17586585364957162505

`A029635(n)+A096940(n)-A095660(n)`
-/

namespace A095666.P17586585364957162505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A096940 n - A095660 n)

end

end A095666.P17586585364957162505

namespace A095666

/-- `A029635(n)+A096940(n)-A095660(n)` -/
def P17586585364957162505.Spec : Prop :=
  ∀ n, P17586585364957162505.a n = A095666 n

end A095666

/-! ## A095666.P580139880665080882

`A028326(n)+A097805(n)-Δ[A097805(n)]`
-/

namespace A095666.P580139880665080882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A097805 n - (f1 (n + 1) - f1 n))

end

end A095666.P580139880665080882

namespace A095666

/-- `A028326(n)+A097805(n)-Δ[A097805(n)]` -/
def P580139880665080882.Spec : Prop :=
  ∀ n, P580139880665080882.a n = A095666 n

end A095666

/-! ## A095666.P3554537007545836120

`A093561(A038722(n+2))`
-/

namespace A095666.P3554537007545836120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A038722 (n + 2)).toNat

end

end A095666.P3554537007545836120

namespace A095666

/-- `A093561(A038722(n+2))` -/
def P3554537007545836120.Spec : Prop :=
  ∀ n, P3554537007545836120.a n = A095666 n

end A095666

/-! ## A095666.P12255746555200594655

`A097805(n+1)+A008586(A097805(n))`
-/

namespace A095666.P12255746555200594655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A008586 (A097805 n).toNat

end

end A095666.P12255746555200594655

namespace A095666

/-- `A097805(n+1)+A008586(A097805(n))` -/
def P12255746555200594655.Spec : Prop :=
  ∀ n, P12255746555200594655.a n = A095666 n

end A095666

/-!
# A095667: Fifth column of the (1,4)-Pascal triangle A095666.

The programs for A095667, the canonical program `A095667.P10455680451532581893` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095667 has offset 0).

The definition of A095667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095667.P10455680451532581893

`(n+16)*C(n+3, 3)/4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095667

/-- `(n+16)*C(n+3, 3)/4` -/
def P10455680451532581893.Spec : Prop :=
  ∀ n, P10455680451532581893.a n = (A095667 n : ℚ)

end A095667

/-! ## A095667.P15204375136566822115

`∑[∑[∑[4+n]]]`
-/

namespace A095667.P15204375136566822115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095667.P15204375136566822115

namespace A095667

/-- `∑[∑[∑[4+n]]]` -/
def P15204375136566822115.Spec : Prop :=
  ∀ n, (P15204375136566822115.a n : ℤ) = A095667 n

end A095667

/-! ## A095667.P13169981054914630459

`C(n+4, 4)+3*C(n+3, 3)`
-/

namespace A095667.P13169981054914630459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + 3 * Nat.choose (n + 3) 3

end

end A095667.P13169981054914630459

namespace A095667

/-- `C(n+4, 4)+3*C(n+3, 3)` -/
def P13169981054914630459.Spec : Prop :=
  ∀ n, (P13169981054914630459.a n : ℤ) = A095667 n

end A095667

/-! ## A095667.P10170048424273552219

`A095661(n)+C(n+3, 3)`
-/

namespace A095667.P10170048424273552219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n + (Nat.choose (n + 3) 3 : ℤ)

end

end A095667.P10170048424273552219

namespace A095667

/-- `A095661(n)+C(n+3, 3)` -/
def P10170048424273552219.Spec : Prop :=
  ∀ n, P10170048424273552219.a n = A095667 n

end A095667

/-! ## A095667.P1637566999380819203

`(A200872(n+1)-(n+2))/2`
-/

namespace A095667.P1637566999380819203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200872 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A095667.P1637566999380819203

namespace A095667

/-- `(A200872(n+1)-(n+2))/2` -/
def P1637566999380819203.Spec : Prop :=
  ∀ n, P1637566999380819203.a n = (A095667 n : ℚ)

end A095667

/-! ## A095667.P632966818026576070

`A006504(n+1)-C(n+2, 2)`
-/

namespace A095667.P632966818026576070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - (Nat.choose (n + 2) 2 : ℤ)

end

end A095667.P632966818026576070

namespace A095667

/-- `A006504(n+1)-C(n+2, 2)` -/
def P632966818026576070.Spec : Prop :=
  ∀ n, P632966818026576070.a n = A095667 n

end A095667

/-! ## A095667.P124118429384846320

`A026054(n+2)+a(n-1)` with `a(0)=4`
-/

namespace A095667.P124118429384846320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A026054 (n + 2) + a (n - 1)

end

end A095667.P124118429384846320

namespace A095667

/-- `A026054(n+2)+a(n-1)` -/
def P124118429384846320.Spec : Prop :=
  ∀ n, P124118429384846320.a n = A095667 n

end A095667

/-! ## A095667.P5662420799263188032

`a(n-1)+A023545(n+1)-2*(n+1)` with `a(0)=4`
-/

namespace A095667.P5662420799263188032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (A023545 (n + 1) - (2 * (n + 1) : ℤ))

end

end A095667.P5662420799263188032

namespace A095667

/-- `a(n-1)+A023545(n+1)-2*(n+1)` -/
def P5662420799263188032.Spec : Prop :=
  ∀ n, P5662420799263188032.a n = A095667 n

end A095667

/-! ## A095667.P1236627917372711688

`A095661(n)+A000292(n+1)`
-/

namespace A095667.P1236627917372711688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n + A000292 (n + 1)

end

end A095667.P1236627917372711688

namespace A095667

/-- `A095661(n)+A000292(n+1)` -/
def P1236627917372711688.Spec : Prop :=
  ∀ n, P1236627917372711688.a n = A095667 n

end A095667

/-! ## A095667.P11439347889399246677

`A166805(n+1)+A047732(n)`
-/

namespace A095667.P11439347889399246677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (n + 1) + A047732 n

end

end A095667.P11439347889399246677

namespace A095667

/-- `A166805(n+1)+A047732(n)` -/
def P11439347889399246677.Spec : Prop :=
  ∀ n, P11439347889399246677.a n = A095667 n

end A095667

/-! ## A095667.P7381733660036960571

`A096942(n)-A000292(n+1)`
-/

namespace A095667.P7381733660036960571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - A000292 (n + 1)

end

end A095667.P7381733660036960571

namespace A095667

/-- `A096942(n)-A000292(n+1)` -/
def P7381733660036960571.Spec : Prop :=
  ∀ n, P7381733660036960571.a n = A095667 n

end A095667

/-! ## A095667.P8103223133026669314

`A154286(n)-A002417(n+1)`
-/

namespace A095667.P8103223133026669314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n - A002417 (n + 1)

end

end A095667.P8103223133026669314

namespace A095667

/-- `A154286(n)-A002417(n+1)` -/
def P8103223133026669314.Spec : Prop :=
  ∀ n, P8103223133026669314.a n = A095667 n

end A095667

/-! ## A095667.P10746552921591106189

`A139798(n+1)-A095668(n)`
-/

namespace A095667.P10746552921591106189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139798 (n + 1) - A095668 n

end

end A095667.P10746552921591106189

namespace A095667

/-- `A139798(n+1)-A095668(n)` -/
def P10746552921591106189.Spec : Prop :=
  ∀ n, P10746552921591106189.a n = A095667 n

end A095667

/-! ## A095667.P16316242023737362864

`A006504(n+1)-(A000096(n)+1)`
-/

namespace A095667.P16316242023737362864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - (A000096 n + 1)

end

end A095667.P16316242023737362864

namespace A095667

/-- `A006504(n+1)-(A000096(n)+1)` -/
def P16316242023737362864.Spec : Prop :=
  ∀ n, P16316242023737362864.a n = A095667 n

end A095667

/-! ## A095667.P7250613870988500475

`A006504(n+1)-A000217(n+1)`
-/

namespace A095667.P7250613870988500475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A000217 (n + 1)

end

end A095667.P7250613870988500475

namespace A095667

/-- `A006504(n+1)-A000217(n+1)` -/
def P7250613870988500475.Spec : Prop :=
  ∀ n, P7250613870988500475.a n = A095667 n

end A095667

/-! ## A095667.P6276959569760490203

`A024191(n+1)-A254749(n+1)`
-/

namespace A095667.P6276959569760490203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) - A254749 (n + 1)

end

end A095667.P6276959569760490203

namespace A095667

/-- `A024191(n+1)-A254749(n+1)` -/
def P6276959569760490203.Spec : Prop :=
  ∀ n, P6276959569760490203.a n = A095667 n

end A095667

/-! ## A095667.P12147404654418515208

`A055832(n+5)-A060488(n+3)`
-/

namespace A095667.P12147404654418515208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5) - A060488 (n + 3)

end

end A095667.P12147404654418515208

namespace A095667

/-- `A055832(n+5)-A060488(n+3)` -/
def P12147404654418515208.Spec : Prop :=
  ∀ n, P12147404654418515208.a n = A095667 n

end A095667

/-! ## A095667.P16075549167077688240

`A006504(n+1)-(A000124(n)+n)`
-/

namespace A095667.P16075549167077688240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - (A000124 n + (n : ℤ))

end

end A095667.P16075549167077688240

namespace A095667

/-- `A006504(n+1)-(A000124(n)+n)` -/
def P16075549167077688240.Spec : Prop :=
  ∀ n, P16075549167077688240.a n = A095667 n

end A095667

/-! ## A095667.P13681735939688971167

`A005582(n+1)+2*A000292(n+1)`
-/

namespace A095667.P13681735939688971167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + 2 * A000292 (n + 1)

end

end A095667.P13681735939688971167

namespace A095667

/-- `A005582(n+1)+2*A000292(n+1)` -/
def P13681735939688971167.Spec : Prop :=
  ∀ n, P13681735939688971167.a n = A095667 n

end A095667

/-!
# A095668: Sixth column (m=5) of (1,4)-Pascal triangle A095666.

The programs for A095668, the canonical program `A095668.P16843616593369941245` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095668 has offset 0).

The definition of A095668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095668.P16843616593369941245

`(n+20)*C(n+4, 4)/5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095668

/-- `(n+20)*C(n+4, 4)/5` -/
def P16843616593369941245.Spec : Prop :=
  ∀ n, P16843616593369941245.a n = (A095668 n : ℚ)

end A095668

/-! ## A095668.P14395489791798396254

`∑[∑[∑[∑[4+n]]]]`
-/

namespace A095668.P14395489791798396254
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095668.P14395489791798396254

namespace A095668

/-- `∑[∑[∑[∑[4+n]]]]` -/
def P14395489791798396254.Spec : Prop :=
  ∀ n, (P14395489791798396254.a n : ℤ) = A095668 n

end A095668

/-! ## A095668.P13853096331409550874

`∑[2*A095667(n)]/2`
-/

namespace A095668.P13853096331409550874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095667 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A095668.P13853096331409550874

namespace A095668

/-- `∑[2*A095667(n)]/2` -/
def P13853096331409550874.Spec : Prop :=
  ∀ n, P13853096331409550874.a n = (A095668 n : ℚ)

end A095668

/-! ## A095668.P15476353463403995426

`(n+4)/5*A096942(n)`
-/

namespace A095668.P15476353463403995426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) / 5 * (A096942 n : ℚ)

end

end A095668.P15476353463403995426

namespace A095668

/-- `(n+4)/5*A096942(n)` -/
def P15476353463403995426.Spec : Prop :=
  ∀ n, P15476353463403995426.a n = (A095668 n : ℚ)

end A095668

/-! ## A095668.P16244406642489677165

`A139798(n+1)-A095667(n)`
-/

namespace A095668.P16244406642489677165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139798 (n + 1) - A095667 n

end

end A095668.P16244406642489677165

namespace A095668

/-- `A139798(n+1)-A095667(n)` -/
def P16244406642489677165.Spec : Prop :=
  ∀ n, P16244406642489677165.a n = A095668 n

end A095668

/-! ## A095668.P5762003916694248756

`A253945(n+4)-A006470(n+1)`
-/

namespace A095668.P5762003916694248756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A006470 (n + 1)

end

end A095668.P5762003916694248756

namespace A095668

/-- `A253945(n+4)-A006470(n+1)` -/
def P5762003916694248756.Spec : Prop :=
  ∀ n, P5762003916694248756.a n = A095668 n

end A095668

/-! ## A095668.P5129030955692243760

`2*A000574(n+3)-A005583(n+1)`
-/

namespace A095668.P5129030955692243760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000574 (n + 3) - A005583 (n + 1)

end

end A095668.P5129030955692243760

namespace A095668

/-- `2*A000574(n+3)-A005583(n+1)` -/
def P5129030955692243760.Spec : Prop :=
  ∀ n, P5129030955692243760.a n = A095668 n

end A095668

/-! ## A095668.P9868233535926717420

`A000217(n+1)+A139798(n+1)-A006504(n+1)`
-/

namespace A095668.P9868233535926717420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A139798 (n + 1) - A006504 (n + 1))

end

end A095668.P9868233535926717420

namespace A095668

/-- `A000217(n+1)+A139798(n+1)-A006504(n+1)` -/
def P9868233535926717420.Spec : Prop :=
  ∀ n, P9868233535926717420.a n = A095668 n

end A095668

/-! ## A095668.P13489309322318360975

`A174002(n+1)-A034263(n)`
-/

namespace A095668.P13489309322318360975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 (n + 1) - A034263 n

end

end A095668.P13489309322318360975

namespace A095668

/-- `A174002(n+1)-A034263(n)` -/
def P13489309322318360975.Spec : Prop :=
  ∀ n, P13489309322318360975.a n = A095668 n

end A095668

/-! ## A095668.P2361205849041096924

`Δ[A095669(n)]-A095667(n+1)`
-/

namespace A095668.P2361205849041096924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095667 (n + 1)

end

end A095668.P2361205849041096924

namespace A095668

/-- `Δ[A095669(n)]-A095667(n+1)` -/
def P2361205849041096924.Spec : Prop :=
  ∀ n, P2361205849041096924.a n = A095668 n

end A095668

/-! ## A095668.P1996996396903180799

`A022816(n+2)-A022815(n+2)`
-/

namespace A095668.P1996996396903180799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022816 (n + 2) - A022815 (n + 2)

end

end A095668.P1996996396903180799

namespace A095668

/-- `A022816(n+2)-A022815(n+2)` -/
def P1996996396903180799.Spec : Prop :=
  ∀ n, P1996996396903180799.a n = A095668 n

end A095668

/-! ## A095668.P8599727874213241787

`Δ[A095669(n)-A095667(n)]-A095667(n)`
-/

namespace A095668.P8599727874213241787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A095667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095667 n

end

end A095668.P8599727874213241787

namespace A095668

/-- `Δ[A095669(n)-A095667(n)]-A095667(n)` -/
def P8599727874213241787.Spec : Prop :=
  ∀ n, P8599727874213241787.a n = A095668 n

end A095668

/-! ## A095668.P18393860545444872987

`A051880(n+1)-(A034263(n)+A027800(n+1))`
-/

namespace A095668.P18393860545444872987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) - (A034263 n + A027800 (n + 1))

end

end A095668.P18393860545444872987

namespace A095668

/-- `A051880(n+1)-(A034263(n)+A027800(n+1))` -/
def P18393860545444872987.Spec : Prop :=
  ∀ n, P18393860545444872987.a n = A095668 n

end A095668

/-! ## A095668.P11220902296335903364

`A051879(n+1)-(A271663(n+1)+A005585(n+1))`
-/

namespace A095668.P11220902296335903364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 (n + 1) - (A271663 (n + 1) + A005585 (n + 1))

end

end A095668.P11220902296335903364

namespace A095668

/-- `A051879(n+1)-(A271663(n+1)+A005585(n+1))` -/
def P11220902296335903364.Spec : Prop :=
  ∀ n, P11220902296335903364.a n = A095668 n

end A095668

/-! ## A095668.P14125178909653887235

`A051836(n+1)+A002419(n+2)-A005585(n+2)`
-/

namespace A095668.P14125178909653887235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + (A002419 (n + 2) - A005585 (n + 2))

end

end A095668.P14125178909653887235

namespace A095668

/-- `A051836(n+1)+A002419(n+2)-A005585(n+2)` -/
def P14125178909653887235.Spec : Prop :=
  ∀ n, P14125178909653887235.a n = A095668 n

end A095668

/-! ## A095668.P12063775257072001557

`A056078(n+3)+(n+1)*(n+2)`
-/

namespace A095668.P12063775257072001557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 3) + ((n + 1) * (n + 2) : ℤ)

end

end A095668.P12063775257072001557

namespace A095668

/-- `A056078(n+3)+(n+1)*(n+2)` -/
def P12063775257072001557.Spec : Prop :=
  ∀ n, P12063775257072001557.a n = A095668 n

end A095668

/-! ## A095668.P693390548811377637

`A000574(n+3)+A000332(n+4)`
-/

namespace A095668.P693390548811377637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000574 (n + 3) + A000332 (n + 4)

end

end A095668.P693390548811377637

namespace A095668

/-- `A000574(n+3)+A000332(n+4)` -/
def P693390548811377637.Spec : Prop :=
  ∀ n, P693390548811377637.a n = A095668 n

end A095668

/-! ## A095668.P10745944206925842301

`gcd(A007283(n)%3, ∑[A095667(n)])`
-/

namespace A095668.P10745944206925842301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A007283 n) 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095668.P10745944206925842301

namespace A095668

/-- `gcd(A007283(n)%3, ∑[A095667(n)])` -/
def P10745944206925842301.Spec : Prop :=
  ∀ n, (P10745944206925842301.a n : ℤ) = A095668 n

end A095668

/-! ## A095668.P14508390974815427681

`Δ[A002450(n)]%3*∑[A095667(n)]`
-/

namespace A095668.P14508390974815427681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A095668.P14508390974815427681

namespace A095668

/-- `Δ[A002450(n)]%3*∑[A095667(n)]` -/
def P14508390974815427681.Spec : Prop :=
  ∀ n, P14508390974815427681.a n = A095668 n

end A095668

/-! ## A095668.P18255075440274771426

`A095666(A000217(n+5)+5)`
-/

namespace A095668.P18255075440274771426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A000217 (n + 5) + 5).toNat

end

end A095668.P18255075440274771426

namespace A095668

/-- `A095666(A000217(n+5)+5)` -/
def P18255075440274771426.Spec : Prop :=
  ∀ n, P18255075440274771426.a n = A095668 n

end A095668

/-!
# A095669: Seventh column (m=6) of (1,4)-Pascal triangle A095666.

The programs for A095669, the canonical program `A095669.P11927387255356224771` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095669 has offset 0).

The definition of A095669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095669.P11927387255356224771

`(n+24)*C(n+5, 5)/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095669

/-- `(n+24)*C(n+5, 5)/6` -/
def P11927387255356224771.Spec : Prop :=
  ∀ n, P11927387255356224771.a n = (A095669 n : ℚ)

end A095669

/-! ## A095669.P10512125820304369071

`∑[∑[∑[∑[∑[4+n]]]]]`
-/

namespace A095669.P10512125820304369071
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

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

end A095669.P10512125820304369071

namespace A095669

/-- `∑[∑[∑[∑[∑[4+n]]]]]` -/
def P10512125820304369071.Spec : Prop :=
  ∀ n, (P10512125820304369071.a n : ℤ) = A095669 n

end A095669

/-! ## A095669.P13265879634755574172

`∑[2*A095668(n)]/2`
-/

namespace A095669.P13265879634755574172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A095669.P13265879634755574172

namespace A095669

/-- `∑[2*A095668(n)]/2` -/
def P13265879634755574172.Spec : Prop :=
  ∀ n, P13265879634755574172.a n = (A095669 n : ℚ)

end A095669

/-! ## A095669.P2646604985597979234

`A055796(n)+A006411(n+1)`
-/

namespace A095669.P2646604985597979234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n + A006411 (n + 1)

end

end A095669.P2646604985597979234

namespace A095669

/-- `A055796(n)+A006411(n+1)` -/
def P2646604985597979234.Spec : Prop :=
  ∀ n, P2646604985597979234.a n = A095669 n

end A095669

/-! ## A095669.P7312383486714702408

`A130857(n+1)+A062966(n)`
-/

namespace A095669.P7312383486714702408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130857 (n + 1) + A062966 n

end

end A095669.P7312383486714702408

namespace A095669

/-- `A130857(n+1)+A062966(n)` -/
def P7312383486714702408.Spec : Prop :=
  ∀ n, P7312383486714702408.a n = A095669 n

end A095669

/-! ## A095669.P13261746434023395371

`A257200(n+1)+A059599(n)`
-/

namespace A095669.P13261746434023395371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + A059599 n

end

end A095669.P13261746434023395371

namespace A095669

/-- `A257200(n+1)+A059599(n)` -/
def P13261746434023395371.Spec : Prop :=
  ∀ n, P13261746434023395371.a n = A095669 n

end A095669

/-! ## A095669.P2035028241285719212

`A027765(n+4)-A051946(n)`
-/

namespace A095669.P2035028241285719212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A051946 n

end

end A095669.P2035028241285719212

namespace A095669

/-- `A027765(n+4)-A051946(n)` -/
def P2035028241285719212.Spec : Prop :=
  ∀ n, P2035028241285719212.a n = A095669 n

end A095669

/-! ## A095669.P18202455655254912269

`2*A096944(n)-A097297(n)`
-/

namespace A095669.P18202455655254912269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096944 n - A097297 n

end

end A095669.P18202455655254912269

namespace A095669

/-- `2*A096944(n)-A097297(n)` -/
def P18202455655254912269.Spec : Prop :=
  ∀ n, P18202455655254912269.a n = A095669 n

end A095669

/-! ## A095669.P3585518565680002291

`A093561(A000217(n+7)-7)`
-/

namespace A095669.P3585518565680002291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A000217 (n + 7) - 7).toNat

end

end A095669.P3585518565680002291

namespace A095669

/-- `A093561(A000217(n+7)-7)` -/
def P3585518565680002291.Spec : Prop :=
  ∀ n, P3585518565680002291.a n = A095669 n

end A095669

/-!
# A095670: Eighth column (m=7) of (1,4)-Pascal triangle A095666.

The programs for A095670, the canonical program `A095670.P1531813200720792495` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095670 has offset 0).

The definition of A095670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095670.P1531813200720792495

`(n+28)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095670

/-- `(n+28)*C(n+6, 6)/7` -/
def P1531813200720792495.Spec : Prop :=
  ∀ n, P1531813200720792495.a n = (A095670 n : ℚ)

end A095670

/-! ## A095670.P12128641771074600481

`∑[∑[∑[∑[∑[∑[4+n]]]]]]`
-/

namespace A095670.P12128641771074600481
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

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

end A095670.P12128641771074600481

namespace A095670

/-- `∑[∑[∑[∑[∑[∑[4+n]]]]]]` -/
def P12128641771074600481.Spec : Prop :=
  ∀ n, (P12128641771074600481.a n : ℤ) = A095670 n

end A095670

/-! ## A095670.P15835368220392407042

`A095669(n)+a(n-1)` with `a(0)=4`
-/

namespace A095670.P15835368220392407042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A095669 n + a (n - 1)

end

end A095670.P15835368220392407042

namespace A095670

/-- `A095669(n)+a(n-1)` -/
def P15835368220392407042.Spec : Prop :=
  ∀ n, P15835368220392407042.a n = A095670 n

end A095670

/-! ## A095670.P8285028127328107096

`A112459(n+3)+A055797(n)`
-/

namespace A095670.P8285028127328107096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112459 (n + 3) + A055797 n

end

end A095670.P8285028127328107096

namespace A095670

/-- `A112459(n+3)+A055797(n)` -/
def P8285028127328107096.Spec : Prop :=
  ∀ n, P8285028127328107096.a n = A095670 n

end A095670

/-! ## A095670.P235017416835456376

`A057077(n)²*∑[A095669(n)]`
-/

namespace A095670.P235017416835456376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095670.P235017416835456376

namespace A095670

/-- `A057077(n)²*∑[A095669(n)]` -/
def P235017416835456376.Spec : Prop :=
  ∀ n, P235017416835456376.a n = A095670 n

end A095670

/-! ## A095670.P14138139850431939805

`A253943(n+5)+A000580(n+7)`
-/

namespace A095670.P14138139850431939805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253943 (n + 5) + A000580 (n + 7)

end

end A095670.P14138139850431939805

namespace A095670

/-- `A253943(n+5)+A000580(n+7)` -/
def P14138139850431939805.Spec : Prop :=
  ∀ n, P14138139850431939805.a n = A095670 n

end A095670

/-! ## A095670.P12677480241529159215

`A000580(n+7)+A253946(n+5)/2`
-/

namespace A095670.P12677480241529159215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) + (A253946 (n + 5) : ℚ) / 2

end

end A095670.P12677480241529159215

namespace A095670

/-- `A000580(n+7)+A253946(n+5)/2` -/
def P12677480241529159215.Spec : Prop :=
  ∀ n, P12677480241529159215.a n = (A095670 n : ℚ)

end A095670

/-! ## A095670.P8187883886867633830

`Δ[A095671(n)]-A095669(n+1)`
-/

namespace A095670.P8187883886867633830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095669 (n + 1)

end

end A095670.P8187883886867633830

namespace A095670

/-- `Δ[A095671(n)]-A095669(n+1)` -/
def P8187883886867633830.Spec : Prop :=
  ∀ n, P8187883886867633830.a n = A095670 n

end A095670

/-! ## A095670.P6875291530953890708

`2*A095663(n+1)-A001919(n+4)`
-/

namespace A095670.P6875291530953890708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095663 (n + 1) - A001919 (n + 4)

end

end A095670.P6875291530953890708

namespace A095670

/-- `2*A095663(n+1)-A001919(n+4)` -/
def P6875291530953890708.Spec : Prop :=
  ∀ n, P6875291530953890708.a n = A095670 n

end A095670

/-! ## A095670.P6399736372728715124

`Δ[A095671(n)-A095669(n)]-A095669(n)`
-/

namespace A095670.P6399736372728715124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n - A095669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095669 n

end

end A095670.P6399736372728715124

namespace A095670

/-- `Δ[A095671(n)-A095669(n)]-A095669(n)` -/
def P6399736372728715124.Spec : Prop :=
  ∀ n, P6399736372728715124.a n = A095670 n

end A095670

/-! ## A095670.P16706155495582961770

`A095663(n+1)-A253942(n+5)`
-/

namespace A095670.P16706155495582961770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095663 (n + 1) - A253942 (n + 5)

end

end A095670.P16706155495582961770

namespace A095670

/-- `A095663(n+1)-A253942(n+5)` -/
def P16706155495582961770.Spec : Prop :=
  ∀ n, P16706155495582961770.a n = A095670 n

end A095670

/-! ## A095670.P8208189008329967072

`A001919(n+4)-2*A253942(n+5)`
-/

namespace A095670.P8208189008329967072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 4) - 2 * A253942 (n + 5)

end

end A095670.P8208189008329967072

namespace A095670

/-- `A001919(n+4)-2*A253942(n+5)` -/
def P8208189008329967072.Spec : Prop :=
  ∀ n, P8208189008329967072.a n = A095670 n

end A095670

/-! ## A095670.P13335717818032582781

`lcm(∑[A095669(n)], A056594(2*n))`
-/

namespace A095670.P13335717818032582781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A056594 (2 * n))

end

end A095670.P13335717818032582781

namespace A095670

/-- `lcm(∑[A095669(n)], A056594(2*n))` -/
def P13335717818032582781.Spec : Prop :=
  ∀ n, (P13335717818032582781.a n : ℤ) = A095670 n

end A095670

/-! ## A095670.P4871232340656233159

`A095666(A000124(n+7)+6)`
-/

namespace A095670.P4871232340656233159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A000124 (n + 7) + 6).toNat

end

end A095670.P4871232340656233159

namespace A095670

/-- `A095666(A000124(n+7)+6)` -/
def P4871232340656233159.Spec : Prop :=
  ∀ n, P4871232340656233159.a n = A095670 n

end A095670

/-! ## A095670.P4490453047612748907

`A095666(A000217(n+7)+7)`
-/

namespace A095670.P4490453047612748907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A000217 (n + 7) + 7).toNat

end

end A095670.P4490453047612748907

namespace A095670

/-- `A095666(A000217(n+7)+7)` -/
def P4490453047612748907.Spec : Prop :=
  ∀ n, P4490453047612748907.a n = A095670 n

end A095670

/-! ## A095670.P1099314427778671252

`A093561(A034856(n+7)-6)`
-/

namespace A095670.P1099314427778671252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A034856 (n + 7) - 6).toNat

end

end A095670.P1099314427778671252

namespace A095670

/-- `A093561(A034856(n+7)-6)` -/
def P1099314427778671252.Spec : Prop :=
  ∀ n, P1099314427778671252.a n = A095670 n

end A095670

/-! ## A095670.P14955293697666498214

`A093561(A000217(n+8)-8)`
-/

namespace A095670.P14955293697666498214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A000217 (n + 8) - 8).toNat

end

end A095670.P14955293697666498214

namespace A095670

/-- `A093561(A000217(n+8)-8)` -/
def P14955293697666498214.Spec : Prop :=
  ∀ n, P14955293697666498214.a n = A095670 n

end A095670

/-! ## A095670.P15633843013529397781

`A093561(A055998(n+5)+n+3)`
-/

namespace A095670.P15633843013529397781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A055998 (n + 5) + (n + 3 : ℤ)).toNat

end

end A095670.P15633843013529397781

namespace A095670

/-- `A093561(A055998(n+5)+n+3)` -/
def P15633843013529397781.Spec : Prop :=
  ∀ n, P15633843013529397781.a n = A095670 n

end A095670

/-! ## A095670.P2286056675810153864

`A093561(A167487(n+5)+2*n)`
-/

namespace A095670.P2286056675810153864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A167487 (n + 5) + (2 * n : ℤ)).toNat

end

end A095670.P2286056675810153864

namespace A095670

/-- `A093561(A167487(n+5)+2*n)` -/
def P2286056675810153864.Spec : Prop :=
  ∀ n, P2286056675810153864.a n = A095670 n

end A095670

/-! ## A095670.P10662641987282025874

`A093561(2*n+A166136(n+5)+1)`
-/

namespace A095670.P10662641987282025874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 ((2 * n : ℤ) + (A166136 (n + 5) + 1)).toNat

end

end A095670.P10662641987282025874

namespace A095670

/-- `A093561(2*n+A166136(n+5)+1)` -/
def P10662641987282025874.Spec : Prop :=
  ∀ n, P10662641987282025874.a n = A095670 n

end A095670

/-!
# A095671: Ninth column (m=8) of (1,4)-Pascal triangle A095666.

The programs for A095671, the canonical program `A095671.P11558318284765494551` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095671 has offset 0).

The definition of A095671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095671.P11558318284765494551

`(n+32)*C(n+7, 7)/8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095671

/-- `(n+32)*C(n+7, 7)/8` -/
def P11558318284765494551.Spec : Prop :=
  ∀ n, P11558318284765494551.a n = (A095671 n : ℚ)

end A095671

/-! ## A095671.P17568862850067756937

`∑[∑[∑[∑[∑[∑[∑[4+n]]]]]]]`
-/

namespace A095671.P17568862850067756937
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

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

end A095671.P17568862850067756937

namespace A095671

/-- `∑[∑[∑[∑[∑[∑[∑[4+n]]]]]]]` -/
def P17568862850067756937.Spec : Prop :=
  ∀ n, (P17568862850067756937.a n : ℤ) = A095671 n

end A095671

/-! ## A095671.P6907457619712994622

`A095670(n)+a(n-1)` with `a(0)=4`
-/

namespace A095671.P6907457619712994622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A095670 n + a (n - 1)

end

end A095671.P6907457619712994622

namespace A095671

/-- `A095670(n)+a(n-1)` -/
def P6907457619712994622.Spec : Prop :=
  ∀ n, P6907457619712994622.a n = A095671 n

end A095671

/-! ## A095671.P13626145827087434560

`2*A096946(n)-A097299(n)`
-/

namespace A095671.P13626145827087434560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096946 n - A097299 n

end

end A095671.P13626145827087434560

namespace A095671

/-- `2*A096946(n)-A097299(n)` -/
def P13626145827087434560.Spec : Prop :=
  ∀ n, P13626145827087434560.a n = A095671 n

end A095671

/-! ## A095671.P3341110066708673168

`A095664(n)+A000580(n+7)`
-/

namespace A095671.P3341110066708673168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n + A000580 (n + 7)

end

end A095671.P3341110066708673168

namespace A095671

/-- `A095664(n)+A000580(n+7)` -/
def P3341110066708673168.Spec : Prop :=
  ∀ n, P3341110066708673168.a n = A095671 n

end A095671

/-! ## A095671.P3336682392667773497

`A096946(n)-A000580(n+7)`
-/

namespace A095671.P3336682392667773497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n - A000580 (n + 7)

end

end A095671.P3336682392667773497

namespace A095671

/-- `A096946(n)-A000580(n+7)` -/
def P3336682392667773497.Spec : Prop :=
  ∀ n, P3336682392667773497.a n = A095671 n

end A095671

/-! ## A095671.P5139721330273682059

`A097299(n)-2*A000580(n+7)`
-/

namespace A095671.P5139721330273682059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 n - 2 * A000580 (n + 7)

end

end A095671.P5139721330273682059

namespace A095671

/-- `A097299(n)-2*A000580(n+7)` -/
def P5139721330273682059.Spec : Prop :=
  ∀ n, P5139721330273682059.a n = A095671 n

end A095671

/-! ## A095671.P6524160943458883338

`A253944(n+6)+A000581(n+8)`
-/

namespace A095671.P6524160943458883338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253944 (n + 6) + A000581 (n + 8)

end

end A095671.P6524160943458883338

namespace A095671

/-- `A253944(n+6)+A000581(n+8)` -/
def P6524160943458883338.Spec : Prop :=
  ∀ n, P6524160943458883338.a n = A095671 n

end A095671

/-! ## A095671.P15457945182502850172

`A000581(n+8)+A253947(n+6)/2`
-/

namespace A095671.P15457945182502850172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) + (A253947 (n + 6) : ℚ) / 2

end

end A095671.P15457945182502850172

namespace A095671

/-- `A000581(n+8)+A253947(n+6)/2` -/
def P15457945182502850172.Spec : Prop :=
  ∀ n, P15457945182502850172.a n = (A095671 n : ℚ)

end A095671

/-! ## A095671.P9471725183051281635

`A000581(n+8)+3*A000580(n+7)`
-/

namespace A095671.P9471725183051281635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + 3 * A000580 (n + 7)

end

end A095671.P9471725183051281635

namespace A095671

/-- `A000581(n+8)+3*A000580(n+7)` -/
def P9471725183051281635.Spec : Prop :=
  ∀ n, P9471725183051281635.a n = A095671 n

end A095671

/-! ## A095671.P13336978523504512830

`A095819(n+1)-(A095819(n)+A095670(n+1))`
-/

namespace A095671.P13336978523504512830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 (n + 1) - (A095819 n + A095670 (n + 1))

end

end A095671.P13336978523504512830

namespace A095671

/-- `A095819(n+1)-(A095819(n)+A095670(n+1))` -/
def P13336978523504512830.Spec : Prop :=
  ∀ n, P13336978523504512830.a n = A095671 n

end A095671

/-! ## A095671.P16185128781547069582

`A253942(n+4)+A005716(n+4)`
-/

namespace A095671.P16185128781547069582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + A005716 (n + 4)

end

end A095671.P16185128781547069582

namespace A095671

/-- `A253942(n+4)+A005716(n+4)` -/
def P16185128781547069582.Spec : Prop :=
  ∀ n, P16185128781547069582.a n = A095671 n

end A095671

/-! ## A095671.P9449850853829724326

`A095666(A000217(n+9)-(n+1))`
-/

namespace A095671.P9449850853829724326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A095671.P9449850853829724326

namespace A095671

/-- `A095666(A000217(n+9)-(n+1))` -/
def P9449850853829724326.Spec : Prop :=
  ∀ n, P9449850853829724326.a n = A095671 n

end A095671

/-!
# A095672: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 4.

The programs for A095672, the canonical program `A095672.P5355300457214611570` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095672 has offset 1).

The definition of A095672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095672.P5355300457214611570

`p?[A073273(n+3)-1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095672

/-- `p?[A073273(n+3)-1]` -/
def P5355300457214611570.Spec : Prop :=
  ∀ n, P5355300457214611570.a n = A095672 (n + 1)

theorem P5355300457214611570.correct : P5355300457214611570.Spec := by
  intro n
  simp only [A095672, Nat.add_sub_cancel]

end A095672

/-! ## A095672.P14579245472748733519

`p?[A260196(n)+A073273(n+1)]`
-/

namespace A095672.P14579245472748733519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P14579245472748733519

namespace A095672

/-- `p?[A260196(n)+A073273(n+1)]` -/
def P14579245472748733519.Spec : Prop :=
  ∀ n, P14579245472748733519.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P18144228775126625436

`A004139(eq[2, A036263(n+1)-2])`
-/

namespace A095672.P18144228775126625436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095672.P18144228775126625436

namespace A095672

/-- `A004139(eq[2, A036263(n+1)-2])` -/
def P18144228775126625436.Spec : Prop :=
  ∀ n, P18144228775126625436.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P7589812657085034811

`A215848(eq[2, A036263(n+1)-2])`
-/

namespace A095672.P7589812657085034811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095672.P7589812657085034811

namespace A095672

/-- `A215848(eq[2, A036263(n+1)-2])` -/
def P7589812657085034811.Spec : Prop :=
  ∀ n, P7589812657085034811.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P17946065066238312797

`A004139(eq[2, A036263(n+1)/2])`
-/

namespace A095672.P17946065066238312797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A095672.P17946065066238312797

namespace A095672

/-- `A004139(eq[2, A036263(n+1)/2])` -/
def P17946065066238312797.Spec : Prop :=
  ∀ n, P17946065066238312797.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P12162249171737216960

`A215848(eq[2, A036263(n+1)/2])`
-/

namespace A095672.P12162249171737216960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A095672.P12162249171737216960

namespace A095672

/-- `A215848(eq[2, A036263(n+1)/2])` -/
def P12162249171737216960.Spec : Prop :=
  ∀ n, P12162249171737216960.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P5656054131119428164

`p?[A089038(n+1)+A006254(n+4)]`
-/

namespace A095672.P5656054131119428164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) + A006254 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P5656054131119428164

namespace A095672

/-- `p?[A089038(n+1)+A006254(n+4)]` -/
def P5656054131119428164.Spec : Prop :=
  ∀ n, P5656054131119428164.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P10316193035602040259

`p?[A097338(n+4)+A089559(n+1)]`
-/

namespace A095672.P10316193035602040259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 4) + A089559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P10316193035602040259

namespace A095672

/-- `p?[A097338(n+4)+A089559(n+1)]` -/
def P10316193035602040259.Spec : Prop :=
  ∀ n, P10316193035602040259.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P11007461610975940665

`p?[A067076(n+2)+A005097(n+4)]`
-/

namespace A095672.P11007461610975940665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2) + A005097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P11007461610975940665

namespace A095672

/-- `p?[A067076(n+2)+A005097(n+4)]` -/
def P11007461610975940665.Spec : Prop :=
  ∀ n, P11007461610975940665.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P728101535482870926

`p?[A100820(n+4)+A078444(n+3)]`
-/

namespace A095672.P728101535482870926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 4) + A078444 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P728101535482870926

namespace A095672

/-- `p?[A100820(n+4)+A078444(n+3)]` -/
def P728101535482870926.Spec : Prop :=
  ∀ n, P728101535482870926.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P10356645625009774052

`∩[A004139(n+2), A073273(n+2)-1]`
-/

namespace A095672.P10356645625009774052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095672.P10356645625009774052

namespace A095672

/-- `∩[A004139(n+2), A073273(n+2)-1]` -/
def P10356645625009774052.Spec : Prop :=
  ∀ n, (P10356645625009774052.a n : ℤ) = A095672 (n + 1)

end A095672

/-! ## A095672.P5426742706584857719

`∩[A051635(n+2), A073273(n+2)-1]`
-/

namespace A095672.P5426742706584857719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095672.P5426742706584857719

namespace A095672

/-- `∩[A051635(n+2), A073273(n+2)-1]` -/
def P5426742706584857719.Spec : Prop :=
  ∀ n, (P5426742706584857719.a n : ℤ) = A095672 (n + 1)

end A095672

/-! ## A095672.P14422174737257034219

`∩[A065091(n+2), A073273(n+2)-1]`
-/

namespace A095672.P14422174737257034219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095672.P14422174737257034219

namespace A095672

/-- `∩[A065091(n+2), A073273(n+2)-1]` -/
def P14422174737257034219.Spec : Prop :=
  ∀ n, (P14422174737257034219.a n : ℤ) = A095672 (n + 1)

end A095672

/-! ## A095672.P14275451421988569545

`p?[-(A065091(n+1)*A073274(n+1))]`
-/

namespace A095672.P14275451421988569545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A065091 (n + 1) * A073274 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P14275451421988569545

namespace A095672

/-- `p?[-(A065091(n+1)*A073274(n+1))]` -/
def P14275451421988569545.Spec : Prop :=
  ∀ n, P14275451421988569545.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P2690652801350499355

`p?[-(A073274(n+1)*A126990(n+1))]`
-/

namespace A095672.P2690652801350499355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A073274 (n + 1) * A126990 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095672.P2690652801350499355

namespace A095672

/-- `p?[-(A073274(n+1)*A126990(n+1))]` -/
def P2690652801350499355.Spec : Prop :=
  ∀ n, P2690652801350499355.a n = A095672 (n + 1)

end A095672

/-! ## A095672.P2315223346140330016

`∩[A073273(n+2)-1, A105399(n+2)]`
-/

namespace A095672.P2315223346140330016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105399 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095672.P2315223346140330016

namespace A095672

/-- `∩[A073273(n+2)-1, A105399(n+2)]` -/
def P2315223346140330016.Spec : Prop :=
  ∀ n, (P2315223346140330016.a n : ℤ) = A095672 (n + 1)

end A095672

/-!
# A095673: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 12.

The programs for A095673, there is no canonical definition to state claims against.
-/

/-! ## A095673.P8478990668185912303

`p?[A075540(n+1)-4]`
-/

namespace A095673.P8478990668185912303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095673.P8478990668185912303

/-! ## A095673.P9910019426450203871

`p?[A298073(n+1)-3]`
-/

namespace A095673.P9910019426450203871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298073 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095673.P9910019426450203871

/-! ## A095673.P11059592437572305494

`p?[or(1, A298073(A028242(2*n)))-4]`
-/

namespace A095673.P11059592437572305494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298073 (A028242 (2 * n)).toNat) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095673.P11059592437572305494

/-! ## A095673.P15474516007368862383

`A000040(A095650(n+1))`
-/

namespace A095673.P15474516007368862383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095650 (n + 1)).toNat

end

end A095673.P15474516007368862383

/-! ## A095673.P6435887207803256634

`A008578(A095650(n+1)+1)`
-/

namespace A095673.P6435887207803256634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095650 (n + 1) + 1).toNat

end

end A095673.P6435887207803256634

/-!
# A095676: Row sums of A095675.

The programs for A095676, there is no canonical definition to state claims against.
-/

/-! ## A095676.P5727321712274417966

`A062276(Δ[Δ[A094198(n+1)]])`
-/

namespace A095676.P5727321712274417966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094198 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (f1 (n + 1) - f1 n).toNat

end

end A095676.P5727321712274417966

/-!
# A095678: Minimal sequence such that all triples of consecutive numbers have no common divisor greater than 1, but all three pairs within the triples are not coprime.

The programs for A095678, there is no canonical definition to state claims against.
-/

/-! ## A095678.P3895051563998725708

`A361606(A062399(n)+2)`
-/

namespace A095678.P3895051563998725708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361606 (A062399 n + 2).toNat

end

end A095678.P3895051563998725708

/-! ## A095678.P10518733556158245750

`A097751(A361606(n+2))`
-/

namespace A095678.P10518733556158245750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (A361606 (n + 2)).toNat

end

end A095678.P10518733556158245750

/-! ## A095678.P17102317571034171586

`A000194(A361606(n+2)²)`
-/

namespace A095678.P17102317571034171586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A361606 (n + 2) ^ 2).toNat

end

end A095678.P17102317571034171586

/-! ## A095678.P10341426563896479911

`A033677(A361606(n+2)²)`
-/

namespace A095678.P10341426563896479911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A361606 (n + 2) ^ 2).toNat

end

end A095678.P10341426563896479911

/-! ## A095678.P2445985588034538523

`filter[A361606(n+2), A174889(#)]`
-/

namespace A095678.P2445985588034538523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A095678.P2445985588034538523

/-!
# A095679: Numbers k such that k^2 + largest digit of k is prime.

The programs for A095679, there is no canonical definition to state claims against.
-/

/-! ## A095679.P7523302005224234899

`floor(sqrt(p?[A054055(n)+n²]))`
-/

namespace A095679.P7523302005224234899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095679.P7523302005224234899

/-! ## A095679.P1044671650224610586

`A000196(p?[A047813(n)+n²])`
-/

namespace A095679.P1044671650224610586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095679.P1044671650224610586

/-! ## A095679.P11479627695225660686

`eq[1, A032741(A054055(n)+n²)]`
-/

namespace A095679.P11479627695225660686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A054055 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095679.P11479627695225660686

/-! ## A095679.P4076563208599076994

`A003059(p?[A054055(n)+n²])-A206245(n)`
-/

namespace A095679.P4076563208599076994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A206245 n

end

end A095679.P4076563208599076994

/-!
# A095681: Expansion of 1/((1-x)(1-x-x^2)(1-x-x^2-x^3)).

The programs for A095681, the canonical program `A095681.P2715128074099917204` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095681 has offset 0).

The definition of A095681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+2x^3+x^4-x^5-x^6))` (program `A095681.P2715128074099917204`, by `A095681.P2715128074099917204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095681.P2715128074099917204

`ogf(1/(1-3x+x^2+2x^3+x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095681

/-- `ogf(1/(1-3x+x^2+2x^3+x^4-x^5-x^6))` -/
def P2715128074099917204.Spec : Prop :=
  ∀ n, P2715128074099917204.a n = A095681 n

theorem P2715128074099917204.correct : P2715128074099917204.Spec := by
  intro n
  simp only [A095681]

end A095681

/-! ## A095681.P6198139865931610935

`∑[A000100(n+3)]`
-/

namespace A095681.P6198139865931610935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095681.P6198139865931610935

namespace A095681

/-- `∑[A000100(n+3)]` -/
def P6198139865931610935.Spec : Prop :=
  ∀ n, P6198139865931610935.a n = A095681 n

end A095681

/-! ## A095681.P2271613181277277814

`record[A192804(n)-A000045(n)]`
-/

namespace A095681.P2271613181277277814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095681.P2271613181277277814

namespace A095681

/-- `record[A192804(n)-A000045(n)]` -/
def P2271613181277277814.Spec : Prop :=
  ∀ n, P2271613181277277814.a n = A095681 n

end A095681

/-! ## A095681.P5694015495860575326

`A027084(n+4)-A001911(n+3)`
-/

namespace A095681.P5694015495860575326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027084 (n + 4) - A001911 (n + 3)

end

end A095681.P5694015495860575326

namespace A095681

/-- `A027084(n+4)-A001911(n+3)` -/
def P5694015495860575326.Spec : Prop :=
  ∀ n, P5694015495860575326.a n = A095681 n

end A095681

/-! ## A095681.P830094291123467494

`A192804(n+6)-A000045(n+6)`
-/

namespace A095681.P830094291123467494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 6) - A000045 (n + 6)

end

end A095681.P830094291123467494

namespace A095681

/-- `A192804(n+6)-A000045(n+6)` -/
def P830094291123467494.Spec : Prop :=
  ∀ n, P830094291123467494.a n = A095681 n

end A095681

/-! ## A095681.P16006071230282037829

`A062544(n+1)+A356619(n+1)-A001891(n+1)`
-/

namespace A095681.P16006071230282037829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1) + (A356619 (n + 1) - A001891 (n + 1))

end

end A095681.P16006071230282037829

namespace A095681

/-- `A062544(n+1)+A356619(n+1)-A001891(n+1)` -/
def P16006071230282037829.Spec : Prop :=
  ∀ n, P16006071230282037829.a n = A095681 n

end A095681

/-! ## A095681.P11202372160758832125

`A138155(∑[n+2]+4)`
-/

namespace A095681.P11202372160758832125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138155 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A095681.P11202372160758832125

namespace A095681

/-- `A138155(∑[n+2]+4)` -/
def P11202372160758832125.Spec : Prop :=
  ∀ n, P11202372160758832125.a n = A095681 n

end A095681

/-! ## A095681.P9153330354730068721

`∑[A048004(∑[n+2]+3)]`
-/

namespace A095681.P9153330354730068721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095681.P9153330354730068721

namespace A095681

/-- `∑[A048004(∑[n+2]+3)]` -/
def P9153330354730068721.Spec : Prop :=
  ∀ n, P9153330354730068721.a n = A095681 n

end A095681

/-! ## A095681.P5484011787617612436

`or(A000007(n), A138155(A167614(n+1)))`
-/

namespace A095681.P5484011787617612436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A138155 (A167614 (n + 1)).toNat)

end

end A095681.P5484011787617612436

namespace A095681

/-- `or(A000007(n), A138155(A167614(n+1)))` -/
def P5484011787617612436.Spec : Prop :=
  ∀ n, P5484011787617612436.a n = A095681 n

end A095681

/-!
# A095683: Number of prime power divisors of n. If n = product p_i^r_i then d = product {p_i^s_i, 2 <= s_i <= r_i, s_i is prime} is a prime power divisor of n.

The programs for A095683, the canonical program `A095683.P1485054367092641857` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095683 has offset 1).

The definition of A095683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095683.P8594028427775985289

`∏{e}[n+1, A000720(#)]`
-/

namespace A095683.P8594028427775985289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000720 (Nat.factorization (f1 n) p)

end

end A095683.P8594028427775985289

namespace A095683

/-- `∏{e}[n+1, A000720(#)]` -/
def P8594028427775985289.Spec : Prop :=
  ∀ n, P8594028427775985289.a n = A095683 (n + 1)

end A095683

/-! ## A095683.P1485054367092641857

`∏{e}[n+1, A230980(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A095683

/-- `∏{e}[n+1, A230980(#)]` -/
def P1485054367092641857.Spec : Prop :=
  ∀ n, P1485054367092641857.a n = A095683 (n + 1)

theorem P1485054367092641857.correct : P1485054367092641857.Spec := by
  intro n
  simp only [A095683, Nat.add_sub_cancel]

end A095683

/-! ## A095683.P2102076913675164376

`∏{e}[n+1, A255574(#)]`
-/

namespace A095683.P2102076913675164376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A255574 (Nat.factorization (f1 n) p)

end

end A095683.P2102076913675164376

namespace A095683

/-- `∏{e}[n+1, A255574(#)]` -/
def P2102076913675164376.Spec : Prop :=
  ∀ n, P2102076913675164376.a n = A095683 (n + 1)

end A095683

/-! ## A095683.P3332710429696761772

`∏{e}[n+1, A056172(#+#)]`
-/

namespace A095683.P3332710429696761772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056172 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)

end

end A095683.P3332710429696761772

namespace A095683

/-- `∏{e}[n+1, A056172(#+#)]` -/
def P3332710429696761772.Spec : Prop :=
  ∀ n, P3332710429696761772.a n = A095683 (n + 1)

end A095683

/-! ## A095683.P7973009576530565261

`A357984(A181819(n+1))`
-/

namespace A095683.P7973009576530565261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357984 (A181819 (n + 1)).toNat

end

end A095683.P7973009576530565261

namespace A095683

/-- `A357984(A181819(n+1))` -/
def P7973009576530565261.Spec : Prop :=
  ∀ n, P7973009576530565261.a n = A095683 (n + 1)

end A095683

/-! ## A095683.P9955874654851726024

`∏{e}[n+1, A001221(#!)]`
-/

namespace A095683.P9955874654851726024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 (Nat.factorial (Nat.factorization (f1 n) p))

end

end A095683.P9955874654851726024

namespace A095683

/-- `∏{e}[n+1, A001221(#!)]` -/
def P9955874654851726024.Spec : Prop :=
  ∀ n, P9955874654851726024.a n = A095683 (n + 1)

end A095683

/-!
# A095684: Triangle read by rows. There are 2^(m-1) rows of length m, for m = 1, 2, 3, ... The rows are in lexicographic order. The rows have the property that the first entry is 1, the second distinct entry (reading from left to right) is 2, the third distinct entry is 3, etc.

The programs for A095684, there is no canonical definition to state claims against.
-/

/-! ## A095684.P9134209870964158861

`A243067(∑[A030302(n+1)])+1`
-/

namespace A095684.P9134209870964158861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243067 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A095684.P9134209870964158861

/-! ## A095684.P12508294018505053363

`A338411(n+1)+A003982(A136220(n))`
-/

namespace A095684.P12508294018505053363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338411 (n + 1) + A003982 (A136220 n).toNat

end

end A095684.P12508294018505053363

/-! ## A095684.P10374442468775179538

`gcd(A020639(A044647(n+1)), A078778(n+1))`
-/

namespace A095684.P10374442468775179538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A044647 (n + 1)).toNat) (A078778 (n + 1))

end

end A095684.P10374442468775179538

/-! ## A095684.P11904799173793946830

`gcd(A001222(or(2, n)), A050987(n+1))`
-/

namespace A095684.P11904799173793946830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (Nat.lor 2 n)) (A050987 (n + 1))

end

end A095684.P11904799173793946830

/-! ## A095684.P732540610728131965

`A078316(A299474(n)+A270831(n+1))`
-/

namespace A095684.P732540610728131965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078316 (A299474 n + A270831 (n + 1)).toNat

end

end A095684.P732540610728131965

/-!
# A095685: Expansion of (1+x)^4/(1-11*x+11*x^2-x^3).

The programs for A095685, the canonical program `A095685.P13055538633815424618` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095685 has offset 0).

The definition of A095685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+6x^2+4x^3+x^4)/(1-11x+11x^2-x^3))` (program `A095685.P13055538633815424618`, by `A095685.P13055538633815424618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095685.P13055538633815424618

`ogf((1+4x+6x^2+4x^3+x^4)/(1-11x+11x^2-x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095685

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1-11x+11x^2-x^3))` -/
def P13055538633815424618.Spec : Prop :=
  ∀ n, P13055538633815424618.a n = A095685 n

theorem P13055538633815424618.correct : P13055538633815424618.Spec := by
  intro n
  simp only [A095685]

end A095685

/-!
# A095686: Half the number of divisors of nonsquares (A000037).

The programs for A095686, the canonical program `A095686.P4947105074170995595` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095686 has offset 1).

The definition of A095686 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095686.P4947105074170995595

`A000005(A000037(n+1))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095686

/-- `A000005(A000037(n+1))/2` -/
def P4947105074170995595.Spec : Prop :=
  ∀ n, P4947105074170995595.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P11530380268368499422

`∏{e}[comp[n²], #+1]/2`
-/

namespace A095686.P11530380268368499422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A095686.P11530380268368499422

namespace A095686

/-- `∏{e}[comp[n²], #+1]/2` -/
def P11530380268368499422.Spec : Prop :=
  ∀ n, P11530380268368499422.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P181774050541608867

`A152674(n+1)/2`
-/

namespace A095686.P181774050541608867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152674 (n + 1) : ℚ) / 2

end

end A095686.P181774050541608867

namespace A095686

/-- `A152674(n+1)/2` -/
def P181774050541608867.Spec : Prop :=
  ∀ n, P181774050541608867.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P11171177302580029755

`A000005(comp[n²])/2`
-/

namespace A095686.P11171177302580029755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A095686.P11171177302580029755

namespace A095686

/-- `A000005(comp[n²])/2` -/
def P11171177302580029755.Spec : Prop :=
  ∀ n, P11171177302580029755.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P9932173499451524351

`round(A000005(comp[∑[2*n-1]]+1)/2)`
-/

namespace A095686.P9932173499451524351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / 2)

end

end A095686.P9932173499451524351

namespace A095686

/-- `round(A000005(comp[∑[2*n-1]]+1)/2)` -/
def P9932173499451524351.Spec : Prop :=
  ∀ n, P9932173499451524351.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P16725381050004667680

`A060681(A152674(n+1))`
-/

namespace A095686.P16725381050004667680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A152674 (n + 1)).toNat

end

end A095686.P16725381050004667680

namespace A095686

/-- `A060681(A152674(n+1))` -/
def P16725381050004667680.Spec : Prop :=
  ∀ n, P16725381050004667680.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P14349450575838045193

`A292286(A000037(n+1))`
-/

namespace A095686.P14349450575838045193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (A000037 (n + 1)).toNat

end

end A095686.P14349450575838045193

namespace A095686

/-- `A292286(A000037(n+1))` -/
def P14349450575838045193.Spec : Prop :=
  ∀ n, P14349450575838045193.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P17152177084711136115

`A004526(A000005(comp[n²]))`
-/

namespace A095686.P17152177084711136115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A095686.P17152177084711136115

namespace A095686

/-- `A004526(A000005(comp[n²]))` -/
def P17152177084711136115.Spec : Prop :=
  ∀ n, P17152177084711136115.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P11773467612441694888

`A292286(A348005(n+1)/2)`
-/

namespace A095686.P11773467612441694888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (SequenceMachineLib.roundAway ((A348005 (n + 1) : ℚ) / 2)).toNat

end

end A095686.P11773467612441694888

namespace A095686

/-- `A292286(A348005(n+1)/2)` -/
def P11773467612441694888.Spec : Prop :=
  ∀ n, P11773467612441694888.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P5006409117601269266

`A320111(2*A000037(n+1))/2`
-/

namespace A095686.P5006409117601269266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320111 (2 * A000037 (n + 1)).toNat : ℚ) / 2

end

end A095686.P5006409117601269266

namespace A095686

/-- `A320111(2*A000037(n+1))/2` -/
def P5006409117601269266.Spec : Prop :=
  ∀ n, P5006409117601269266.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P6372008570591817278

`A072670(eq[1, A049240(n+1)])+1`
-/

namespace A095686.P6372008570591817278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A095686.P6372008570591817278

namespace A095686

/-- `A072670(eq[1, A049240(n+1)])+1` -/
def P6372008570591817278.Spec : Prop :=
  ∀ n, P6372008570591817278.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P15852828705262721864

`A038548(comp[n²])`
-/

namespace A095686.P15852828705262721864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A095686.P15852828705262721864

namespace A095686

/-- `A038548(comp[n²])` -/
def P15852828705262721864.Spec : Prop :=
  ∀ n, P15852828705262721864.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P12550625187205059994

`A056924(comp[n²])`
-/

namespace A095686.P12550625187205059994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A095686.P12550625187205059994

namespace A095686

/-- `A056924(comp[n²])` -/
def P12550625187205059994.Spec : Prop :=
  ∀ n, P12550625187205059994.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P10583134052186166209

`A188902(comp[n²])`
-/

namespace A095686.P10583134052186166209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188902 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A095686.P10583134052186166209

namespace A095686

/-- `A188902(comp[n²])` -/
def P10583134052186166209.Spec : Prop :=
  ∀ n, P10583134052186166209.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P13014153827040205978

`A161841(comp[n²])/2`
-/

namespace A095686.P13014153827040205978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161841 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A095686.P13014153827040205978

namespace A095686

/-- `A161841(comp[n²])/2` -/
def P13014153827040205978.Spec : Prop :=
  ∀ n, P13014153827040205978.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P891384579350376739

`A211263(A348005(n+1))`
-/

namespace A095686.P891384579350376739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211263 (A348005 (n + 1)).toNat

end

end A095686.P891384579350376739

namespace A095686

/-- `A211263(A348005(n+1))` -/
def P891384579350376739.Spec : Prop :=
  ∀ n, P891384579350376739.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P7513569615481206868

`A183063(2*A000037(n+1))/2`
-/

namespace A095686.P7513569615481206868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (2 * A000037 (n + 1)).toNat : ℚ) / 2

end

end A095686.P7513569615481206868

namespace A095686

/-- `A183063(2*A000037(n+1))/2` -/
def P7513569615481206868.Spec : Prop :=
  ∀ n, P7513569615481206868.a n = (A095686 (n + 1) : ℚ)

end A095686

/-! ## A095686.P18307142488344849071

`A211263(A078633(n+1))`
-/

namespace A095686.P18307142488344849071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211263 (A078633 (n + 1)).toNat

end

end A095686.P18307142488344849071

namespace A095686

/-- `A211263(A078633(n+1))` -/
def P18307142488344849071.Spec : Prop :=
  ∀ n, P18307142488344849071.a n = A095686 (n + 1)

end A095686

/-! ## A095686.P1930693423019703338

`A069291(A030140(n+1))`
-/

namespace A095686.P1930693423019703338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (A030140 (n + 1)).toNat

end

end A095686.P1930693423019703338

namespace A095686

/-- `A069291(A030140(n+1))` -/
def P1930693423019703338.Spec : Prop :=
  ∀ n, P1930693423019703338.a n = A095686 (n + 1)

end A095686

/-!
# A095687: Numbers n such that n-th Pisano number = 6*n.

The programs for A095687, the canonical program `A095687.P17670697872552555818` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095687 has offset 1).

The definition of A095687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095687.P17670697872552555818

`5*a(n-1)` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095687

/-- `5*a(n-1)` -/
def P17670697872552555818.Spec : Prop :=
  ∀ n, (P17670697872552555818.a n : ℤ) = A095687 (n + 1)

theorem P17670697872552555818.correct : P17670697872552555818.Spec := by
  intro n
  simp only [A095687, Nat.add_sub_cancel]

end A095687

/-! ## A095687.P14073852482284626370

`ogf(10x/(1-5x))`
-/

namespace A095687.P14073852482284626370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, -5] n

end

end A095687.P14073852482284626370

namespace A095687

/-- `ogf(10x/(1-5x))` -/
def P14073852482284626370.Spec : Prop :=
  ∀ n, P14073852482284626370.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P2505352632466294486

`10*floor(5^(n-1))`
-/

namespace A095687.P2505352632466294486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A095687.P2505352632466294486

namespace A095687

/-- `10*floor(5^(n-1))` -/
def P2505352632466294486.Spec : Prop :=
  ∀ n, P2505352632466294486.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P7747455351893364575

`lcm(5^n, 2%(n+2))`
-/

namespace A095687.P7747455351893364575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (5 ^ n) (2 % (n + 2))

end

end A095687.P7747455351893364575

namespace A095687

/-- `lcm(5^n, 2%(n+2))` -/
def P7747455351893364575.Spec : Prop :=
  ∀ n, (P7747455351893364575.a n : ℤ) = A095687 (n + 1)

end A095687

/-! ## A095687.P1476847555652711286

`lcm(2, 5*round(5^(n-1)))`
-/

namespace A095687.P1476847555652711286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (5 * SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A095687.P1476847555652711286

namespace A095687

/-- `lcm(2, 5*round(5^(n-1)))` -/
def P1476847555652711286.Spec : Prop :=
  ∀ n, (P1476847555652711286.a n : ℤ) = A095687 (n + 1)

end A095687

/-! ## A095687.P5566657178666481405

`∑{d}[2*n, C(5, #²)^n]`
-/

namespace A095687.P5566657178666481405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 5 (d ^ 2) ^ n

end

end A095687.P5566657178666481405

namespace A095687

/-- `∑{d}[2*n, C(5, #²)^n]` -/
def P5566657178666481405.Spec : Prop :=
  ∀ n, (P5566657178666481405.a n : ℤ) = A095687 (n + 1)

end A095687

/-! ## A095687.P14545060031295006450

`lcm(5, 1-a(n-1))+5` with `a(0)=0`
-/

namespace A095687.P14545060031295006450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm 5 (1 - (a (n - 1) : ℤ)) + 5

end

end A095687.P14545060031295006450

namespace A095687

/-- `lcm(5, 1-a(n-1))+5` -/
def P14545060031295006450.Spec : Prop :=
  ∀ n, (P14545060031295006450.a n : ℤ) = A095687 (n + 1)

end A095687

/-! ## A095687.P8974671251922768372

`a(n-1)/(1-4/5)` with `a(0)=0, a(1)=10`
-/

namespace A095687.P8974671251922768372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A095687.P8974671251922768372

namespace A095687

/-- `a(n-1)/(1-4/5)` -/
def P8974671251922768372.Spec : Prop :=
  ∀ n, P8974671251922768372.a n = (A095687 (n + 1) : ℚ)

end A095687

/-! ## A095687.P9629905434987673757

`Δ[abs(A137410(n))]`
-/

namespace A095687.P9629905434987673757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137410 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095687.P9629905434987673757

namespace A095687

/-- `Δ[abs(A137410(n))]` -/
def P9629905434987673757.Spec : Prop :=
  ∀ n, P9629905434987673757.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P2838355397948358695

`Δ[abs(1-A121177(n+1))]`
-/

namespace A095687.P2838355397948358695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A121177 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095687.P2838355397948358695

namespace A095687

/-- `Δ[abs(1-A121177(n+1))]` -/
def P2838355397948358695.Spec : Prop :=
  ∀ n, P2838355397948358695.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P12185823631622329946

`record[Δ[A056451(n+1)/2]]`
-/

namespace A095687.P12185823631622329946
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056451 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095687.P12185823631622329946

namespace A095687

/-- `record[Δ[A056451(n+1)/2]]` -/
def P12185823631622329946.Spec : Prop :=
  ∀ n, P12185823631622329946.a n = (A095687 (n + 1) : ℚ)

end A095687

/-! ## A095687.P7904524566592382629

`record[2*A090882(2*n+1)]`
-/

namespace A095687.P7904524566592382629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090882 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095687.P7904524566592382629

namespace A095687

/-- `record[2*A090882(2*n+1)]` -/
def P7904524566592382629.Spec : Prop :=
  ∀ n, P7904524566592382629.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P7487474698172427232

`abs(Δ[A083085(A028310(n))])`
-/

namespace A095687.P7487474698172427232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083085 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A095687.P7487474698172427232

namespace A095687

/-- `abs(Δ[A083085(A028310(n))])` -/
def P7487474698172427232.Spec : Prop :=
  ∀ n, P7487474698172427232.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P12169305140945823469

`and(-A057427(n), A020729(n))`
-/

namespace A095687.P12169305140945823469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A057427 n) (A020729 n)

end

end A095687.P12169305140945823469

namespace A095687

/-- `and(-A057427(n), A020729(n))` -/
def P12169305140945823469.Spec : Prop :=
  ∀ n, P12169305140945823469.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P4459985061677644977

`Δ[A056451(record[A029579(n)])/2]`
-/

namespace A095687.P4459985061677644977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056451 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095687.P4459985061677644977

namespace A095687

/-- `Δ[A056451(record[A029579(n)])/2]` -/
def P4459985061677644977.Spec : Prop :=
  ∀ n, P4459985061677644977.a n = (A095687 (n + 1) : ℚ)

end A095687

/-! ## A095687.P6799949252589660243

`A137410(n+1)-abs(A137410(n))`
-/

namespace A095687.P6799949252589660243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 (n + 1) - |A137410 n|

end

end A095687.P6799949252589660243

namespace A095687

/-- `A137410(n+1)-abs(A137410(n))` -/
def P6799949252589660243.Spec : Prop :=
  ∀ n, P6799949252589660243.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P4414468126690043007

`A026395(A065475(2*n+1))-A026395(2*n+1)`
-/

namespace A095687.P4414468126690043007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (A065475 (2 * n + 1)).toNat - A026395 (2 * n + 1)

end

end A095687.P4414468126690043007

namespace A095687

/-- `A026395(A065475(2*n+1))-A026395(2*n+1)` -/
def P4414468126690043007.Spec : Prop :=
  ∀ n, P4414468126690043007.a n = A095687 (n + 1)

end A095687

/-! ## A095687.P2509996925495726420

`A005054(n+1)-A005054(n+1)/A280560(2*n)`
-/

namespace A095687.P2509996925495726420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005054 (n + 1) : ℚ) - (A005054 (n + 1) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A095687.P2509996925495726420

namespace A095687

/-- `A005054(n+1)-A005054(n+1)/A280560(2*n)` -/
def P2509996925495726420.Spec : Prop :=
  ∀ n, P2509996925495726420.a n = (A095687 (n + 1) : ℚ)

end A095687

/-! ## A095687.P9351675073622194181

`A026395(2*n+1)*A040001(2*n)-A026395(2*n+1)`
-/

namespace A095687.P9351675073622194181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (2 * n + 1) * A040001 (2 * n) - A026395 (2 * n + 1)

end

end A095687.P9351675073622194181

namespace A095687

/-- `A026395(2*n+1)*A040001(2*n)-A026395(2*n+1)` -/
def P9351675073622194181.Spec : Prop :=
  ∀ n, P9351675073622194181.a n = A095687 (n + 1)

end A095687

/-!
# A095689: Permutation of natural numbers, inverse permutation to A094870.

The programs for A095689, there is no canonical definition to state claims against.
-/

/-! ## A095689.P9225597108508822136

`A075618(or(n+1, A185293(n)))`
-/

namespace A095689.P9225597108508822136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075618 (Int.lor (n + 1 : ℤ) (A185293 n)).toNat

end

end A095689.P9225597108508822136

/-! ## A095689.P1026297714547292691

`char[10]+(n%4)!%3+n-A178798(round(A153080(n)/2))`
-/

namespace A095689.P1026297714547292691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((Nat.factorial (n % 4) % 3 + n : ℕ) : ℤ) - A178798 (SequenceMachineLib.roundAway ((A153080 n : ℚ) / 2)).toNat)

end

end A095689.P1026297714547292691

/-! ## A095689.P13519940410884493839

`A075618(or(A185293(n), A291769(n)))`
-/

namespace A095689.P13519940410884493839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075618 (Int.lor (A185293 n) (A291769 n)).toNat

end

end A095689.P13519940410884493839

/-! ## A095689.P18229106754130235418

`A364104(n+1)+A332823(A000085(n))`
-/

namespace A095689.P18229106754130235418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364104 (n + 1) + A332823 (A000085 n).toNat

end

end A095689.P18229106754130235418

/-!
# A095690: Permutation of natural numbers inverse to A075618.

The programs for A095690, there is no canonical definition to state claims against.
-/

/-! ## A095690.P16760065843638572990

`xor(A094870(n+1), A194679(A085473(3*n+4)))`
-/

namespace A095690.P16760065843638572990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094870 (n + 1)) (A194679 (A085473 (3 * n + 4)).toNat)

end

end A095690.P16760065843638572990

/-! ## A095690.P5219015279071319256

`A178798(A036469(n))+A094870(n+1)`
-/

namespace A095690.P5219015279071319256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A036469 n).toNat + A094870 (n + 1)

end

end A095690.P5219015279071319256

/-! ## A095690.P4080284866279919732

`2-A093654(A084162(n))+n`
-/

namespace A095690.P4080284866279919732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A093654 (A084162 n).toNat + (n : ℤ)

end

end A095690.P4080284866279919732

/-! ## A095690.P11132190071197226481

`A382771(A229598(n+5))+n`
-/

namespace A095690.P11132190071197226481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382771 (A229598 (n + 5)).toNat + (n : ℤ)

end

end A095690.P11132190071197226481

/-!
# A095691: Multiplicative with a(p^e) = A000720(e)+1.

The programs for A095691, the canonical program `A095691.P1004978988256556663` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095691 has offset 1).

The definition of A095691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095691.P12047360000694151408

`∑{d}[n+1, A293449(#)]`
-/

namespace A095691.P12047360000694151408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A293449 d

end

end A095691.P12047360000694151408

namespace A095691

/-- `∑{d}[n+1, A293449(#)]` -/
def P12047360000694151408.Spec : Prop :=
  ∀ n, P12047360000694151408.a n = A095691 (n + 1)

end A095691

/-! ## A095691.P13070661529537672542

`∏{e}[n+1, A036234(#)]`
-/

namespace A095691.P13070661529537672542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A036234 (Nat.factorization (f1 n) p)

end

end A095691.P13070661529537672542

namespace A095691

/-- `∏{e}[n+1, A036234(#)]` -/
def P13070661529537672542.Spec : Prop :=
  ∀ n, P13070661529537672542.a n = A095691 (n + 1)

end A095691

/-! ## A095691.P4090127778520754967

`∏{e}[n+1, A000720(#)+1]`
-/

namespace A095691.P4090127778520754967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000720 (Nat.factorization (f1 n) p) + 1)

end

end A095691.P4090127778520754967

namespace A095691

/-- `∏{e}[n+1, A000720(#)+1]` -/
def P4090127778520754967.Spec : Prop :=
  ∀ n, P4090127778520754967.a n = A095691 (n + 1)

end A095691

/-! ## A095691.P1004978988256556663

`∏{e}[n+1, A230774(#²+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A095691

/-- `∏{e}[n+1, A230774(#²+1)]` -/
def P1004978988256556663.Spec : Prop :=
  ∀ n, P1004978988256556663.a n = A095691 (n + 1)

theorem P1004978988256556663.correct : P1004978988256556663.Spec := by
  intro n
  simp only [A095691, Nat.add_sub_cancel]

end A095691

/-! ## A095691.P1023180420231917144

`∏{e}[n+1, A090109(A230980(#)+1)]`
-/

namespace A095691.P1023180420231917144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A090109 (A230980 (Nat.factorization (f1 n) p) + 1).toNat

end

end A095691.P1023180420231917144

namespace A095691

/-- `∏{e}[n+1, A090109(A230980(#)+1)]` -/
def P1023180420231917144.Spec : Prop :=
  ∀ n, P1023180420231917144.a n = A095691 (n + 1)

end A095691

/-! ## A095691.P10411683348359342258

`A046951((n+1)*A071773(n+1))`
-/

namespace A095691.P10411683348359342258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A071773 (n + 1)).toNat

end

end A095691.P10411683348359342258

namespace A095691

/-- `A046951((n+1)*A071773(n+1))` -/
def P10411683348359342258.Spec : Prop :=
  ∀ n, P10411683348359342258.a n = A095691 (n + 1)

end A095691

/-! ## A095691.P11758925803698978462

`A046951((n+1)*A007947(A000188(n+1)))`
-/

namespace A095691.P11758925803698978462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A007947 (A000188 (n + 1)).toNat).toNat

end

end A095691.P11758925803698978462

namespace A095691

/-- `A046951((n+1)*A007947(A000188(n+1)))` -/
def P11758925803698978462.Spec : Prop :=
  ∀ n, P11758925803698978462.a n = A095691 (n + 1)

end A095691

/-! ## A095691.P1963021531718858328

`A046951((n+1)*A053166(A000188(n+1)))`
-/

namespace A095691.P1963021531718858328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A053166 (A000188 (n + 1)).toNat).toNat

end

end A095691.P1963021531718858328

namespace A095691

/-- `A046951((n+1)*A053166(A000188(n+1)))` -/
def P1963021531718858328.Spec : Prop :=
  ∀ n, P1963021531718858328.a n = A095691 (n + 1)

end A095691

/-!
# A095692: Primes of the form n^3 + n + 1.

The programs for A095692, there is no canonical definition to state claims against.
-/

/-! ## A095692.P12828480945862203460

`A071568(A049407(n+1))`
-/

namespace A095692.P12828480945862203460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (A049407 (n + 1)).toNat

end

end A095692.P12828480945862203460

/-! ## A095692.P2089618702410591735

`A034262(A049407(n+1))-A057428(n+1)`
-/

namespace A095692.P2089618702410591735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (A049407 (n + 1)).toNat - A057428 (n + 1)

end

end A095692.P2089618702410591735

/-! ## A095692.P12250455464925147658

`A309873(2*n+3)+A034262(A049407(n+1))`
-/

namespace A095692.P12250455464925147658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (2 * n + 3) + A034262 (A049407 (n + 1)).toNat

end

end A095692.P12250455464925147658

/-! ## A095692.P10672121401048319251

`∩[A346156(n+1), A071568(n)]`
-/

namespace A095692.P10672121401048319251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095692.P10672121401048319251

/-! ## A095692.P8061236682209317706

`∩[A266970(n+1), A071568(n)]`
-/

namespace A095692.P8061236682209317706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095692.P8061236682209317706

/-!
# A095693: Triangle read by rows: T(n,k) is the number of multigraphs without loops on n labeled nodes with k edges and maximum degree 2.

The programs for A095693, there is no canonical definition to state claims against.
-/

/-! ## A095693.P18403216116434260345

`A122921(A144089(n)²)`
-/

namespace A095693.P18403216116434260345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A144089 n ^ 2).toNat

end

end A095693.P18403216116434260345

/-! ## A095693.P12542912451594583968

`A122921(A144089(n)^2)`
-/

namespace A095693.P12542912451594583968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A144089 n ^ 2).toNat

end

end A095693.P12542912451594583968

/-! ## A095693.P13228291109692966069

`A122921(A144089(n)*A144089(n))`
-/

namespace A095693.P13228291109692966069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A144089 n * A144089 n).toNat

end

end A095693.P13228291109692966069

/-!
# A095694: T(n,3) diagonal of triangle in A095693.

The programs for A095694, the canonical program `A095694.P10203032588700803544` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095694 has offset 2).

The definition of A095694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095694.P10203032588700803544

`(n+3)*(n+2)*(n+1)*((n+2)^3+3*(n+2)²+2*(n+2)-16)/48`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095694

/-- `(n+3)*(n+2)*(n+1)*((n+2)^3+3*(n+2)²+2*(n+2)-16)/48` -/
def P10203032588700803544.Spec : Prop :=
  ∀ n, P10203032588700803544.a n = (A095694 (n + 2) : ℚ)

end A095694

/-! ## A095694.P5628103100685329826

`A243212(n+2)+A058195(n+1)`
-/

namespace A095694.P5628103100685329826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243212 (n + 2) + A058195 (n + 1)

end

end A095694.P5628103100685329826

namespace A095694

/-- `A243212(n+2)+A058195(n+1)` -/
def P5628103100685329826.Spec : Prop :=
  ∀ n, P5628103100685329826.a n = A095694 (n + 2)

end A095694

/-! ## A095694.P11600825555685753901

`Δ[A051836(n)]+∑[A151974(n)]`
-/

namespace A095694.P11600825555685753901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A095694.P11600825555685753901

namespace A095694

/-- `Δ[A051836(n)]+∑[A151974(n)]` -/
def P11600825555685753901.Spec : Prop :=
  ∀ n, P11600825555685753901.a n = A095694 (n + 2)

end A095694

/-! ## A095694.P4878254878719074360

`∑[A151974(n)+A002411(n+1)]`
-/

namespace A095694.P4878254878719074360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n + A002411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095694.P4878254878719074360

namespace A095694

/-- `∑[A151974(n)+A002411(n+1)]` -/
def P4878254878719074360.Spec : Prop :=
  ∀ n, P4878254878719074360.a n = A095694 (n + 2)

end A095694

/-! ## A095694.P7669537679010045600

`A240440(n+2)+Δ[A051836(n)]`
-/

namespace A095694.P7669537679010045600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 2) + (f1 (n + 1) - f1 n)

end

end A095694.P7669537679010045600

namespace A095694

/-- `A240440(n+2)+Δ[A051836(n)]` -/
def P7669537679010045600.Spec : Prop :=
  ∀ n, P7669537679010045600.a n = A095694 (n + 2)

end A095694

/-! ## A095694.P14875551167842570569

`A053526(n+3)+A002415(n+2)`
-/

namespace A095694.P14875551167842570569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053526 (n + 3) + A002415 (n + 2)

end

end A095694.P14875551167842570569

namespace A095694

/-- `A053526(n+3)+A002415(n+2)` -/
def P14875551167842570569.Spec : Prop :=
  ∀ n, P14875551167842570569.a n = A095694 (n + 2)

end A095694

/-! ## A095694.P5765919373982584260

`A053526(n+3)+∑[A000330(n+1)]`
-/

namespace A095694.P5765919373982584260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053526 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095694.P5765919373982584260

namespace A095694

/-- `A053526(n+3)+∑[A000330(n+1)]` -/
def P5765919373982584260.Spec : Prop :=
  ∀ n, P5765919373982584260.a n = A095694 (n + 2)

end A095694

/-! ## A095694.P18195746513780324663

`A000292(∑[n+2])-A095661(n)`
-/

namespace A095694.P18195746513780324663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j) - A095661 n

end

end A095694.P18195746513780324663

namespace A095694

/-- `A000292(∑[n+2])-A095661(n)` -/
def P18195746513780324663.Spec : Prop :=
  ∀ n, P18195746513780324663.a n = A095694 (n + 2)

end A095694

/-!
# A095695: T(n,4) diagonal of triangle in A095693.

The programs for A095695, there is no canonical definition to state claims against.
-/

/-! ## A095695.P7581238376279410743

`A095693(A056000(n)+14)`
-/

namespace A095695.P7581238376279410743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095693 (A056000 n + 14).toNat

end

end A095695.P7581238376279410743

/-! ## A095695.P236672512767140194

`A095693(eq[4, A002262(n)])`
-/

namespace A095695.P236672512767140194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095695.P236672512767140194

/-! ## A095695.P10132711789709837083

`A095693(A167499(n+3)-1)`
-/

namespace A095695.P10132711789709837083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095693 (A167499 (n + 3) - 1).toNat

end

end A095695.P10132711789709837083

/-! ## A095695.P14132867629374239585

`A095693(eq[5, A002260(n+1)])`
-/

namespace A095695.P14132867629374239585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095695.P14132867629374239585

/-!
# A095697: Primes of the form x^2 + y^2 + z, where x, y and z are three successive numbers.

The programs for A095697, there is no canonical definition to state claims against.
-/

/-! ## A095697.P12752885533445298791

`A033816(A096689(n+1))`
-/

namespace A095697.P12752885533445298791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (A096689 (n + 1)).toNat

end

end A095697.P12752885533445298791

/-! ## A095697.P3836731518900584923

`A033816(2*A096691(n+1))`
-/

namespace A095697.P3836731518900584923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (2 * A096691 (n + 1)).toNat

end

end A095697.P3836731518900584923

/-! ## A095697.P9963213356395449644

`∩[A055472(n+1), A033816(n)]`
-/

namespace A095697.P9963213356395449644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095697.P9963213356395449644

/-! ## A095697.P14829717864535334416

`∩[A055472(n+1), A235088(n+1)]`
-/

namespace A095697.P14829717864535334416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095697.P14829717864535334416

/-! ## A095697.P14956689518931386890

`A033816(A096691(n+1)+A096691(n+1))`
-/

namespace A095697.P14956689518931386890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (A096691 (n + 1) + A096691 (n + 1)).toNat

end

end A095697.P14956689518931386890

/-! ## A095697.P1725477996289103551

`∩[A055472(n+1), A236453(n)]`
-/

namespace A095697.P1725477996289103551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095697.P1725477996289103551

/-! ## A095697.P2718802181073171422

`A033816(eq[2, A174960(2*n+1)])`
-/

namespace A095697.P2718802181073171422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174960 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095697.P2718802181073171422

/-! ## A095697.P10753911763502765116

`A033816(record[n*A174960(4*n+1)])`
-/

namespace A095697.P10753911763502765116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A174960 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095697.P10753911763502765116

/-! ## A095697.P2171428048694908748

`∩[A055472(n+2), A089781(n+2)+1]`
-/

namespace A095697.P2171428048694908748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089781 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095697.P2171428048694908748

/-! ## A095697.P6369021227155688591

`p?[∑[n]+or(3, n)]`
-/

namespace A095697.P6369021227155688591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095697.P6369021227155688591

/-!
# A095698: Number of permutations of {1,2,3,...,n} where, for 1 < i <= n, the i-th number has maximized sum of the i-1 absolute differences from all previous numbers of the permutation.

The programs for A095698, the canonical program `A095698.P10922258953679555537` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095698 has offset 1).

The definition of A095698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095698.P10922258953679555537

`a(or(1, n-2))+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A095698

/-- `a(or(1, n-2))+2*a(n-2)` -/
def P10922258953679555537.Spec : Prop :=
  ∀ n, (P10922258953679555537.a n : ℤ) = A095698 (n + 1)

theorem P10922258953679555537.correct : P10922258953679555537.Spec := by
  intro n
  simp only [A095698, Nat.add_sub_cancel]

end A095698

/-! ## A095698.P3561111622615662912

`5*a(n-2)-6*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A095698.P3561111622615662912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  5 * a (n - 2) - 6 * a (n - 4)

end

end A095698.P3561111622615662912

namespace A095698

/-- `5*a(n-2)-6*a(n-4)` -/
def P3561111622615662912.Spec : Prop :=
  ∀ n, P3561111622615662912.a n = A095698 (n + 1)

end A095698

/-! ## A095698.P17409023155521332167

`a(n-2)+a(or(1, n-2))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A095698.P17409023155521332167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (Int.lor 1 ((n : ℤ) - 2)).toNat + a (n - 2))

end

end A095698.P17409023155521332167

namespace A095698

/-- `a(n-2)+a(or(1, n-2))+a(n-2)` -/
def P17409023155521332167.Spec : Prop :=
  ∀ n, (P17409023155521332167.a n : ℤ) = A095698 (n + 1)

end A095698

/-! ## A095698.P10603970501681837594

`a(n-2)+a(n-2)+a(n-a(n%2))` with `a(0)=1, a(1)=2`
-/

namespace A095698.P10603970501681837594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - a (n % 2)))

end

end A095698.P10603970501681837594

namespace A095698

/-- `a(n-2)+a(n-2)+a(n-a(n%2))` -/
def P10603970501681837594.Spec : Prop :=
  ∀ n, (P10603970501681837594.a n : ℤ) = A095698 (n + 1)

end A095698

/-! ## A095698.P1806368880411737356

`A117855(n+1)-A077957(n)`
-/

namespace A095698.P1806368880411737356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1) - A077957 n

end

end A095698.P1806368880411737356

namespace A095698

/-- `A117855(n+1)-A077957(n)` -/
def P1806368880411737356.Spec : Prop :=
  ∀ n, P1806368880411737356.a n = A095698 (n + 1)

end A095698

/-! ## A095698.P556485504434583565

`∪[Δ[3^n-2^n], Δ[3^n]]`
-/

namespace A095698.P556485504434583565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A095698.P556485504434583565

namespace A095698

/-- `∪[Δ[3^n-2^n], Δ[3^n]]` -/
def P556485504434583565.Spec : Prop :=
  ∀ n, (P556485504434583565.a n : ℤ) = A095698 (n + 1)

end A095698

/-!
# A095699: Number of partitions of n into generalized pentagonal numbers.

The programs for A095699, there is no canonical definition to state claims against.
-/

/-! ## A095699.P2643583975797227182

`A380573(A029012(n))`
-/

namespace A095699.P2643583975797227182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A029012 n).toNat

end

end A095699.P2643583975797227182

/-! ## A095699.P3576780105867708026

`A220104(A245667(n)+A032304(n))`
-/

namespace A095699.P3576780105867708026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A245667 n + A032304 n).toNat

end

end A095699.P3576780105867708026

/-! ## A095699.P8423909888992462187

`A261770(n+3)-A206437(A113340(n))`
-/

namespace A095699.P8423909888992462187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261770 (n + 3) - A206437 (A113340 n).toNat

end

end A095699.P8423909888992462187

/-! ## A095699.P11627327072825570084

`A143824(A355383(n))`
-/

namespace A095699.P11627327072825570084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A355383 n).toNat

end

end A095699.P11627327072825570084

/-! ## A095699.P8424823551829324453

`∑[A109700(2*(n+2))^A065516(A006852(n+4))]`
-/

namespace A095699.P8424823551829324453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109700 (2 * (n + 2)) : ℚ) ^ (A065516 (A006852 (n + 4)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095699.P8424823551829324453

