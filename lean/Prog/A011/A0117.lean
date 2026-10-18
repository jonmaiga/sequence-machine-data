import SequenceMachineLib
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A011700: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^3+x+1.

The programs for A011700, there is no canonical definition to state claims against.
-/

/-! ## A011700.P10600442562236867490

`A011701(A004275(n)+4*n)`
-/

namespace A011700.P10600442562236867490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011701 (A004275 n + (4 * n : ℤ)).toNat

end

end A011700.P10600442562236867490

/-!
# A011701: A binary m-sequence: expansion of reciprocal of x^8+x^5+x^4+x^3+x^2+x+1.

The programs for A011701, there is no canonical definition to state claims against.
-/

/-! ## A011701.P15698926540297084836

`A011702(3*n+2)`
-/

namespace A011701.P15698926540297084836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011702 (3 * n + 2)

end

end A011701.P15698926540297084836

/-!
# A011702: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^5+x^4+x^3+x^2+1.

The programs for A011702, there is no canonical definition to state claims against.
-/

/-! ## A011702.P6801324541249329079

`A011698(A016777(n)+25)`
-/

namespace A011702.P6801324541249329079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011698 (A016777 n + 25).toNat

end

end A011702.P6801324541249329079

/-!
# A011703: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^4+x^3+x^2+1.

The programs for A011703, there is no canonical definition to state claims against.
-/

/-! ## A011703.P4219681100932910892

`A011700(A008458(abs(2-n)))`
-/

namespace A011703.P4219681100932910892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011700 (A008458 |2 - (n : ℤ)|.toNat).toNat

end

end A011703.P4219681100932910892

/-!
# A011704: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^3+x^2+1.

The programs for A011704, there is no canonical definition to state claims against.
-/

/-! ## A011704.P6307699629208149425

`A011717(A017053(n))`
-/

namespace A011704.P6307699629208149425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011717 (A017053 n).toNat

end

end A011704.P6307699629208149425

/-!
# A011705: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^3+x^2+1.

The programs for A011705, there is no canonical definition to state claims against.
-/

/-! ## A011705.P3683713482488942018

`A011706(A017437(n))`
-/

namespace A011705.P3683713482488942018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011706 (A017437 n).toNat

end

end A011705.P3683713482488942018

/-!
# A011706: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x^2+1.

The programs for A011706, there is no canonical definition to state claims against.
-/

/-! ## A011706.P10105310108851932343

`A293498(n+4)%2`
-/

namespace A011706.P10105310108851932343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293498 (n + 4)) 2

end

end A011706.P10105310108851932343

/-!
# A011707: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^4+x^2+x+1.

The programs for A011707, there is no canonical definition to state claims against.
-/

/-! ## A011707.P3405386867905523126

`A011716(A008486(n)+20)`
-/

namespace A011707.P3405386867905523126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011716 (A008486 n + 20).toNat

end

end A011707.P3405386867905523126

/-!
# A011708: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^3+x^2+x+1.

The programs for A011708, there is no canonical definition to state claims against.
-/

/-! ## A011708.P12198016498169537590

`A011704(A017053(n+6)+3)`
-/

namespace A011708.P12198016498169537590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011704 (A017053 (n + 6) + 3).toNat

end

end A011708.P12198016498169537590

/-!
# A011709: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^2+x+1.

The programs for A011709, there is no canonical definition to state claims against.
-/

/-! ## A011709.P18283263676141324356

`A011721(A017413(n)+79)`
-/

namespace A011709.P18283263676141324356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011721 (A017413 n + 79).toNat

end

end A011709.P18283263676141324356

/-!
# A011710: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x+1.

The programs for A011710, there is no canonical definition to state claims against.
-/

/-! ## A011710.P7560889195647409268

`A011708(A017617(n)+2*n+1)`
-/

namespace A011710.P7560889195647409268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011708 (A017617 n + (2 * n + 1 : ℤ)).toNat

end

end A011710.P7560889195647409268

/-!
# A011711: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^5+x^2+x+1.

The programs for A011711, there is no canonical definition to state claims against.
-/

/-! ## A011711.P9491444154340586868

`A200250(n+1)%2`
-/

namespace A011711.P9491444154340586868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200250 (n + 1)) 2

end

end A011711.P9491444154340586868

/-!
# A011712: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^5+x^4+1.

The programs for A011712, there is no canonical definition to state claims against.
-/

/-! ## A011712.P106707747986143613

`A011711(A017377(n))`
-/

namespace A011712.P106707747986143613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011711 (A017377 n).toNat

end

end A011712.P106707747986143613

/-!
# A011713: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x+1.

The programs for A011713, there is no canonical definition to state claims against.
-/

/-! ## A011713.P6388134661411468102

`A011710(A008589(n)+19)`
-/

namespace A011713.P6388134661411468102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A008589 n + 19).toNat

end

end A011713.P6388134661411468102

/-!
# A011714: A binary m-sequence: expansion of reciprocal of x^8+x^4+x^3+x+1.

The programs for A011714, there is no canonical definition to state claims against.
-/

/-! ## A011714.P155065334235434951

`A011695(record[A184418(n)])`
-/

namespace A011714.P155065334235434951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A011714.P155065334235434951

/-!
# A011715: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x^4+1.

The programs for A011715, there is no canonical definition to state claims against.
-/

/-! ## A011715.P5152643005551545856

`A011719(A144619(2*n+1))`
-/

namespace A011715.P5152643005551545856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011719 (A144619 (2 * n + 1)).toNat

end

end A011715.P5152643005551545856

/-!
# A011716: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^5+x^4+x+1.

The programs for A011716, there is no canonical definition to state claims against.
-/

/-! ## A011716.P12677825657444520732

`A011709(A000124(n+6)+7-A000096(n))`
-/

namespace A011716.P12677825657444520732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011709 (A000124 (n + 6) + 7 - A000096 n).toNat

end

end A011716.P12677825657444520732

/-!
# A011717: A binary m-sequence: expansion of reciprocal of x^8+x^5+x^3+x^2+1.

The programs for A011717, there is no canonical definition to state claims against.
-/

/-! ## A011717.P12242161465727066106

`A011711(A008607(n)+3+n)`
-/

namespace A011717.P12242161465727066106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011711 (A008607 n + 3 + (n : ℤ)).toNat

end

end A011717.P12242161465727066106

/-!
# A011718: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x^4+x^3+x+1.

The programs for A011718, there is no canonical definition to state claims against.
-/

/-! ## A011718.P15608598972243674444

`A011703(A016777(n)+46)`
-/

namespace A011718.P15608598972243674444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011703 (A016777 n + 46).toNat

end

end A011718.P15608598972243674444

/-!
# A011719: A binary m-sequence: expansion of reciprocal of x^8+x^5+x^3+x+1.

The programs for A011719, there is no canonical definition to state claims against.
-/

/-! ## A011719.P4735724463882808984

`A011713(7*n+27)`
-/

namespace A011719.P4735724463882808984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011713 (7 * n + 27)

end

end A011719.P4735724463882808984

/-!
# A011720: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^4+x^3+x^2+x+1.

The programs for A011720, there is no canonical definition to state claims against.
-/

/-! ## A011720.P14986846634546280868

`A011706(A113127(n)+n)`
-/

namespace A011720.P14986846634546280868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011706 (A113127 n + (n : ℤ)).toNat

end

end A011720.P14986846634546280868

/-!
# A011721: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x^3+1.

The programs for A011721, there is no canonical definition to state claims against.
-/

/-! ## A011721.P7253713802513832081

`A011697(Δ[A033572(n)])`
-/

namespace A011721.P7253713802513832081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011697 (f1 (n + 1) - f1 n).toNat

end

end A011721.P7253713802513832081

/-!
# A011722: A binary m-sequence: expansion of reciprocal of x^9+x^4+1.

The programs for A011722, there is no canonical definition to state claims against.
-/

/-! ## A011722.P14373042723350008336

`val(A273016(floor(n/(xor(n, n+1)+1))+1), 9)`
-/

namespace A011722.P14373042723350008336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A273016 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat 9

end

end A011722.P14373042723350008336

/-!
# A011723: A binary m-sequence: expansion of reciprocal of x^10+x^3+1.

The programs for A011723, there is no canonical definition to state claims against.
-/

/-! ## A011723.P3721786720188291020

`A001606(2*n+1)%A055642(A078181(n+1))`
-/

namespace A011723.P3721786720188291020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001606 (2 * n + 1)) (A055642 (A078181 (n + 1)).toNat)

end

end A011723.P3721786720188291020

/-!
# A011724: A binary m-sequence: expansion of reciprocal of x^11 + x^2 + 1 (mod 2, shifted by 10 initial 0's).

The programs for A011724, there is no canonical definition to state claims against.
-/

/-! ## A011724.P7090346618373795026

`A155877(n+1)%A055642(A086450(n))`
-/

namespace A011724.P7090346618373795026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155877 (n + 1)) (A055642 (A086450 n).toNat)

end

end A011724.P7090346618373795026

/-!
# A011725: A binary m-sequence: expansion of reciprocal of x^12+x^7+x^4+x^3+1.

The programs for A011725, there is no canonical definition to state claims against.
-/

/-! ## A011725.P7748972914172248883

`A273005(A346741(3*n+1)+A091818(2*n+3))%A055642(n)`
-/

namespace A011725.P7748972914172248883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273005 (A346741 (3 * n + 1) + A091818 (2 * n + 3)).toNat) (A055642 n)

end

end A011725.P7748972914172248883

/-! ## A011725.P16340996480564349755

`A066531(A133848(n+1))%3`
-/

namespace A011725.P16340996480564349755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066531 (A133848 (n + 1)).toNat) 3

end

end A011725.P16340996480564349755

/-!
# A011726: A binary m-sequence: expansion of reciprocal of x^13+x^4+x^3+x+1.

The programs for A011726, there is no canonical definition to state claims against.
-/

/-! ## A011726.P902582694286827199

`A011732(A007092(n)%A335703(n))`
-/

namespace A011726.P902582694286827199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011732 (Int.tmod (A007092 n) (A335703 n)).toNat

end

end A011726.P902582694286827199

/-! ## A011726.P16419841821237873256

`A011739(∑[∑[A308902(n)]])`
-/

namespace A011726.P16419841821237873256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011739 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011726.P16419841821237873256

/-! ## A011726.P14310870266663829623

`A267417(A341923(n+1)+A000041(n))`
-/

namespace A011726.P14310870266663829623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A341923 (n + 1) + A000041 n).toNat

end

end A011726.P14310870266663829623

/-! ## A011726.P11533433038828683929

`A267417(A341923(n+1)+∑[A002865(n)])`
-/

namespace A011726.P11533433038828683929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A341923 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011726.P11533433038828683929

/-!
# A011727: A binary m-sequence: expansion of reciprocal of x^14 + x^12 + x^11 + x + 1 (mod 2, shifted by 13 initial 0's).

The programs for A011727, there is no canonical definition to state claims against.
-/

/-! ## A011727.P1260212092257830317

`A011745(A306111(n+1)%A141214(n))`
-/

namespace A011727.P1260212092257830317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 (Int.tmod (A306111 (n + 1)) (A141214 n)).toNat

end

end A011727.P1260212092257830317

/-! ## A011727.P11688470385721283211

`A124760(A280750(n)+A270039(n+4))`
-/

namespace A011727.P11688470385721283211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A280750 n + A270039 (n + 4)).toNat

end

end A011727.P11688470385721283211

/-! ## A011727.P6692846907758381512

`A011745(A093555(3*(n+1))+A013634(n))`
-/

namespace A011727.P6692846907758381512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 (A093555 (3 * (n + 1)) + A013634 n).toNat

end

end A011727.P6692846907758381512

/-! ## A011727.P5852723968380097207

`A283777(A251736(n+1)+2)%A083952(n)`
-/

namespace A011727.P5852723968380097207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283777 (A251736 (n + 1) + 2).toNat) (A083952 n)

end

end A011727.P5852723968380097207

/-! ## A011727.P13716264086791914794

`A011745(A306111(n+1))+A000007(A251736(n+1))`
-/

namespace A011727.P13716264086791914794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011745 (A306111 (n + 1)).toNat + A000007 (A251736 (n + 1)).toNat

end

end A011727.P13716264086791914794

/-!
# A011728: A binary m-sequence: expansion of reciprocal of x^15+x+1.

The programs for A011728, there is no canonical definition to state claims against.
-/

/-! ## A011728.P11185482639634133663

`A017909(n+1)%2`
-/

namespace A011728.P11185482639634133663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017909 (n + 1)) 2

end

end A011728.P11185482639634133663

/-! ## A011728.P12108437767532367772

`and(A017909(n+1), A057427(n))`
-/

namespace A011728.P12108437767532367772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017909 (n + 1)) (A057427 n)

end

end A011728.P12108437767532367772

/-! ## A011728.P3741090856502410180

`A017909(val(A017909(n+1)+2, 2))`
-/

namespace A011728.P3741090856502410180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (SequenceMachineLib.valuation (A017909 (n + 1) + 2).toNat 2)

end

end A011728.P3741090856502410180

/-! ## A011728.P3439788115175841714

`A017909(and(1, 1-A017909(n+1)))`
-/

namespace A011728.P3439788115175841714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017909 (Int.land 1 (1 - A017909 (n + 1))).toNat

end

end A011728.P3439788115175841714

/-! ## A011728.P791833954242434881

`and(1, A089257(n+1)+A017909(n+1))`
-/

namespace A011728.P791833954242434881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A089257 (n + 1) + A017909 (n + 1))

end

end A011728.P791833954242434881

/-! ## A011728.P15709893605034571683

`A000035(A017909(n+1))`
-/

namespace A011728.P15709893605034571683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A017909 (n + 1)).toNat

end

end A011728.P15709893605034571683

/-! ## A011728.P1343795551310004254

`A089013(A017909(n+1)+A017909(n+1)+1)`
-/

namespace A011728.P1343795551310004254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (A017909 (n + 1) + (A017909 (n + 1) + 1)).toNat

end

end A011728.P1343795551310004254

/-!
# A011729: A binary m-sequence: expansion of reciprocal of x^16+x^5+x^3+x^2+1.

The programs for A011729, there is no canonical definition to state claims against.
-/

/-! ## A011729.P1843988508421762830

`A179081(A034440(n+1)+A034416(n+1))`
-/

namespace A011729.P1843988508421762830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A034440 (n + 1) + A034416 (n + 1)).toNat

end

end A011729.P1843988508421762830

/-! ## A011729.P15534758884391432724

`A305253(n+1)%A305254(A304714(n+1))`
-/

namespace A011729.P15534758884391432724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305253 (n + 1)) (A305254 (A304714 (n + 1)).toNat)

end

end A011729.P15534758884391432724

/-! ## A011729.P16371166155933726877

`A232991(A171182(n+4)+A000330(n))`
-/

namespace A011729.P16371166155933726877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 (A171182 (n + 4) + A000330 n).toNat

end

end A011729.P16371166155933726877

/-! ## A011729.P3595000900082054960

`A333750(A103221(n+3))^A383974(n)`
-/

namespace A011729.P3595000900082054960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333750 (A103221 (n + 3)).toNat : ℚ) ^ (A383974 n : ℤ)

end

end A011729.P3595000900082054960

/-!
# A011730: A binary m-sequence: expansion of reciprocal of x^17+x^3+1.

The programs for A011730, there is no canonical definition to state claims against.
-/

/-! ## A011730.P1477046834475414039

`A167964(Δ[n²])-A015046(A078182(n+1))`
-/

namespace A011730.P1477046834475414039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A015046 (A078182 (n + 1)).toNat

end

end A011730.P1477046834475414039

/-! ## A011730.P13148097553487378528

`A061347(A069099(n+1))-A015046(A078182(n+1))`
-/

namespace A011730.P13148097553487378528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A069099 (n + 1)).toNat - A015046 (A078182 (n + 1)).toNat

end

end A011730.P13148097553487378528

/-! ## A011730.P5643905197351936832

`A001222(A154498(n+1))-A015046(A078182(n+1))`
-/

namespace A011730.P5643905197351936832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154498 (n + 1)).toNat - A015046 (A078182 (n + 1)).toNat

end

end A011730.P5643905197351936832

/-! ## A011730.P241301820232822023

`A061347(A291636(n+3))-A015046(A078182(n+1))`
-/

namespace A011730.P241301820232822023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A291636 (n + 3)).toNat - A015046 (A078182 (n + 1)).toNat

end

end A011730.P241301820232822023

/-! ## A011730.P16107247354247910848

`A261424(A082937(n+1))^A015216(A078182(n+1))`
-/

namespace A011730.P16107247354247910848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261424 (A082937 (n + 1)).toNat : ℚ) ^ (A015216 (A078182 (n + 1)).toNat : ℤ)

end

end A011730.P16107247354247910848

/-! ## A011730.P17093412127980175797

`A167964(2*n+3)-A015216(A078182(n+1))`
-/

namespace A011730.P17093412127980175797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (2 * n + 3) - A015216 (A078182 (n + 1)).toNat

end

end A011730.P17093412127980175797

/-! ## A011730.P9731949543820979344

`A000007(A015216(A078182(n+1))^A101385(n+1))`
-/

namespace A011730.P9731949543820979344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.roundAway ((A015216 (A078182 (n + 1)).toNat : ℚ) ^ (A101385 (n + 1) : ℤ))).toNat

end

end A011730.P9731949543820979344

/-!
# A011731: A binary m-sequence: expansion of reciprocal of x^18 + x^7 + 1 (mod 2, shifted by 17 initial 0's).

The programs for A011731, there is no canonical definition to state claims against.
-/

/-! ## A011731.P13422659072892745544

`A298183(n+3)%A167965(A284099(2*(n+1)))`
-/

namespace A011731.P13422659072892745544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298183 (n + 3)) (A167965 (A284099 (2 * (n + 1))).toNat)

end

end A011731.P13422659072892745544

/-! ## A011731.P15491923746022502723

`and(A147781(A004277(n+3)), A276861(n+1))`
-/

namespace A011731.P15491923746022502723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147781 (A004277 (n + 3)).toNat) (A276861 (n + 1))

end

end A011731.P15491923746022502723

/-! ## A011731.P13736549403458441657

`A027861(A130272(n+1))%A320001(n+4)`
-/

namespace A011731.P13736549403458441657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027861 (A130272 (n + 1)).toNat) (A320001 (n + 4))

end

end A011731.P13736549403458441657

/-! ## A011731.P15179618605640393125

`A252976(A366522(3*n+5))^A000041(n)`
-/

namespace A011731.P15179618605640393125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252976 (A366522 (3 * n + 5)).toNat : ℚ) ^ (A000041 n : ℤ)

end

end A011731.P15179618605640393125

/-! ## A011731.P9268018712888152481

`val(A321346(A321346(n+4)), 8)`
-/

namespace A011731.P9268018712888152481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321346 (A321346 (n + 4)).toNat).toNat 8

end

end A011731.P9268018712888152481

/-!
# A011732: A binary m-sequence: expansion of reciprocal of x^19 + x^6 + x^5 + x + 1 (mod 2, shifted by 18 initial 0's).

The programs for A011732, there is no canonical definition to state claims against.
-/

/-! ## A011732.P16441653812327922151

`A011740(A047314(n+1)%A099108(n+1))`
-/

namespace A011732.P16441653812327922151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (Int.tmod (A047314 (n + 1)) (A099108 (n + 1))).toNat

end

end A011732.P16441653812327922151

/-! ## A011732.P3371974916375323947

`A023973(A023893(n))*A023974(n+1)`
-/

namespace A011732.P3371974916375323947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023973 (A023893 n).toNat * A023974 (n + 1)

end

end A011732.P3371974916375323947

/-! ## A011732.P24218821274880154

`A011740(A111660(2*n)+A111660(n))`
-/

namespace A011732.P24218821274880154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (A111660 (2 * n) + A111660 n).toNat

end

end A011732.P24218821274880154

/-! ## A011732.P12229467121306959221

`and(A023973(A023893(n)), A023977(n+1))`
-/

namespace A011732.P12229467121306959221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023973 (A023893 n).toNat) (A023977 (n + 1))

end

end A011732.P12229467121306959221

/-! ## A011732.P2373617950643501425

`A254379(A366727(2*n+1)+2)`
-/

namespace A011732.P2373617950643501425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A366727 (2 * n + 1) + 2).toNat

end

end A011732.P2373617950643501425

/-!
# A011733: A binary m-sequence: expansion of reciprocal of x^20 + x^3 + 1 (mod 2, shifted by 19 initial 0's).

The programs for A011733, there is no canonical definition to state claims against.
-/

/-! ## A011733.P3469590105176057283

`A293810(A011756(n+1))-A016240(A078182(n+1))`
-/

namespace A011733.P3469590105176057283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (A011756 (n + 1)).toNat - A016240 (A078182 (n + 1)).toNat

end

end A011733.P3469590105176057283

/-! ## A011733.P1767161828729398636

`A033999(A325042(n+1))-A016240(A078182(n+1))`
-/

namespace A011733.P1767161828729398636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A325042 (n + 1)).toNat - A016240 (A078182 (n + 1)).toNat

end

end A011733.P1767161828729398636

/-! ## A011733.P809033610419959721

`A001221(A133277(n+1))-A016240(A078182(n+1))`
-/

namespace A011733.P809033610419959721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A133277 (n + 1)).toNat - A016240 (A078182 (n + 1)).toNat

end

end A011733.P809033610419959721

/-! ## A011733.P14542271373767213388

`A000038(A335481(n+1))^A016240(A078182(n+1))`
-/

namespace A011733.P14542271373767213388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A335481 (n + 1)).toNat : ℚ) ^ (A016240 (A078182 (n + 1)).toNat : ℤ)

end

end A011733.P14542271373767213388

/-! ## A011733.P13997997950696946948

`and(A011730(n), A145866(n+1))`
-/

namespace A011733.P13997997950696946948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011730 n) (A145866 (n + 1))

end

end A011733.P13997997950696946948

/-!
# A011734: A binary m-sequence: expansion of reciprocal of x^21 + x^2 + 1 (mod 2, shifted by 20 initial 0's).

The programs for A011734, there is no canonical definition to state claims against.
-/

/-! ## A011734.P5867451409015250757

`A056926(A192237(A003602(n+1)%A003963(n+1)))`
-/

namespace A011734.P5867451409015250757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A192237 (Int.tmod (A003602 (n + 1)) (A003963 (n + 1))).toNat).toNat

end

end A011734.P5867451409015250757

/-! ## A011734.P5058914020736884899

`val(A276334(∑{d}[n+1, (#*#%2)²]), 40)`
-/

namespace A011734.P5058914020736884899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276334 (∑ d ∈ Nat.divisors (f1 n), (d * (d % 2)) ^ 2)).toNat 40

end

end A011734.P5058914020736884899

/-! ## A011734.P6612273216939383873

`floor(atan(A210717((n+1)/2^val(n+1, 2))))`
-/

namespace A011734.P6612273216939383873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A210717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℝ)⌋

end

end A011734.P6612273216939383873

/-! ## A011734.P3567309706304062599

`A241917(A025793(floor(n/(xor(n, n+1)+1)))!)`
-/

namespace A011734.P3567309706304062599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (Nat.factorial (A025793 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat).toNat)

end

end A011734.P3567309706304062599

/-! ## A011734.P6337951744861300306

`A043545(A247301(A025480(n))²)`
-/

namespace A011734.P6337951744861300306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A247301 (A025480 n).toNat ^ 2).toNat

end

end A011734.P6337951744861300306

/-!
# A011735: A binary m-sequence: expansion of reciprocal of x^22 + x + 1 (mod 2, shifted by 21 initial 0's).

The programs for A011735, there is no canonical definition to state claims against.
-/

/-! ## A011735.P6471497995613640945

`A141727(or(30, A047227(n+1)))`
-/

namespace A011735.P6471497995613640945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141727 (Int.lor 30 (A047227 (n + 1))).toNat

end

end A011735.P6471497995613640945

/-! ## A011735.P7308875664517150608

`A064727(lcm(A283895(2*(n+1)), A283896(2*(n+1))))`
-/

namespace A011735.P7308875664517150608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (Int.lcm (A283895 (2 * (n + 1))) (A283896 (2 * (n + 1))))

end

end A011735.P7308875664517150608

/-! ## A011735.P13606611762700028028

`A243840(A187185(n+1))^p?[A246208(n)]`
-/

namespace A011735.P13606611762700028028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246208 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243840 (A187185 (n + 1)).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A011735.P13606611762700028028

/-! ## A011735.P17041081916196178685

`A243840(A187185(n+1))^A088707(A109404(n+1))`
-/

namespace A011735.P17041081916196178685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243840 (A187185 (n + 1)).toNat : ℚ) ^ (A088707 (A109404 (n + 1)).toNat : ℤ)

end

end A011735.P17041081916196178685

/-! ## A011735.P11703934513164208260

`A243840(A187185(n+1))^A042983(A200443(n+1))`
-/

namespace A011735.P11703934513164208260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243840 (A187185 (n + 1)).toNat : ℚ) ^ (A042983 (A200443 (n + 1)).toNat : ℤ)

end

end A011735.P11703934513164208260

/-! ## A011735.P963369431537236178

`A243840(A187185(n+1))^A135710(A000217(n+6)+7)`
-/

namespace A011735.P963369431537236178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243840 (A187185 (n + 1)).toNat : ℚ) ^ (A135710 (A000217 (n + 6) + 7).toNat : ℤ)

end

end A011735.P963369431537236178

/-!
# A011736: A binary m-sequence: expansion of reciprocal of x^23 + x^5 + 1 (mod 2, shifted by 22 initial 0's).

The programs for A011736, there is no canonical definition to state claims against.
-/

/-! ## A011736.P2672601928286801931

`A165766(lt[A022166(n), A206692(n+4)])`
-/

namespace A011736.P2672601928286801931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206692 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165766 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A011736.P2672601928286801931

/-! ## A011736.P13759852779699515153

`and(1, A225187(A334464(2*n+1))-1)`
-/

namespace A011736.P13759852779699515153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A225187 (A334464 (2 * n + 1)).toNat - 1)

end

end A011736.P13759852779699515153

/-! ## A011736.P14373427226484307685

`A225150(3*n+5)%A225187(A334464(2*n+1))`
-/

namespace A011736.P14373427226484307685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225150 (3 * n + 5)) (A225187 (A334464 (2 * n + 1)).toNat)

end

end A011736.P14373427226484307685

/-! ## A011736.P18062239020292870901

`A079275(A016754(n))%A049710(2*n+3)`
-/

namespace A011736.P18062239020292870901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079275 (A016754 n).toNat) (A049710 (2 * n + 3))

end

end A011736.P18062239020292870901

/-! ## A011736.P11697547149548004955

`A064911(A346103(2*n+1)%A239724(2*n+1))`
-/

namespace A011736.P11697547149548004955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (Int.tmod (A346103 (2 * n + 1)) (A239724 (2 * n + 1))).toNat

end

end A011736.P11697547149548004955

/-! ## A011736.P6346238953491014825

`and(A064911(A346103(2*n+1)), A239724(2*(n+1)))`
-/

namespace A011736.P6346238953491014825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064911 (A346103 (2 * n + 1)).toNat) (A239724 (2 * (n + 1)))

end

end A011736.P6346238953491014825

/-!
# A011737: A binary m-sequence: expansion of reciprocal of x^24 + x^4 + x^3 + x + 1 (mod 2, shifted by 23 initial 0's).

The programs for A011737, there is no canonical definition to state claims against.
-/

/-! ## A011737.P17995980716347255440

`round(n/29)%A167964(A267211(n)+n)`
-/

namespace A011737.P17995980716347255440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) / 29)) (A167964 (A267211 n + (n : ℤ)).toNat)

end

end A011737.P17995980716347255440

/-! ## A011737.P5976959557522799037

`A277153(A002264(n+1))^A114742(n+1)`
-/

namespace A011737.P5976959557522799037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277153 (A002264 (n + 1)).toNat : ℚ) ^ (A114742 (n + 1) : ℤ)

end

end A011737.P5976959557522799037

/-! ## A011737.P8843986004538795708

`A167964(A267211(n)+n)-A167964(n+1)`
-/

namespace A011737.P8843986004538795708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (A267211 n + (n : ℤ)).toNat - A167964 (n + 1)

end

end A011737.P8843986004538795708

/-! ## A011737.P7720133202817288502

`abs(Δ[A139551(A042951(n))])`
-/

namespace A011737.P7720133202817288502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 (A042951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A011737.P7720133202817288502

/-! ## A011737.P14740932540343073550

`A156731(or(77, A156351(n+1)))`
-/

namespace A011737.P14740932540343073550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156731 (Int.lor 77 (A156351 (n + 1))).toNat

end

end A011737.P14740932540343073550

/-!
# A011738: A binary m-sequence: expansion of reciprocal of x^25 + x^3 + 1 (mod 2, shifted by 24 initial 0's).

The programs for A011738, there is no canonical definition to state claims against.
-/

/-! ## A011738.P3944673437965282658

`val(A258198(A103637(n+1)), 5)`
-/

namespace A011738.P3944673437965282658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A258198 (A103637 (n + 1)).toNat).toNat 5

end

end A011738.P3944673437965282658

/-! ## A011738.P10548443033707830067

`C(A258198(A103637(C(n+1, n))), 5)`
-/

namespace A011738.P10548443033707830067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A258198 (A103637 (Nat.choose (n + 1) n)).toNat).toNat 5

end

end A011738.P10548443033707830067

/-! ## A011738.P1349118404841059221

`A179833(3*n+2)%A152846(n+1)`
-/

namespace A011738.P1349118404841059221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179833 (3 * n + 2)) (A152846 (n + 1))

end

end A011738.P1349118404841059221

/-! ## A011738.P8277851765276075413

`and(A098357(n+1), A239799(n+1))`
-/

namespace A011738.P8277851765276075413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098357 (n + 1)) (A239799 (n + 1))

end

end A011738.P8277851765276075413

/-!
# A011739: A binary m-sequence: expansion of reciprocal of x^26 + x^8 + x^7 + x + 1 (mod 2, shifted by 25 initial 0's).

The programs for A011739, there is no canonical definition to state claims against.
-/

/-! ## A011739.P2781518827678434127

`A011740(comp[A012094(n)+1])`
-/

namespace A011739.P2781518827678434127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012094 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A011739.P2781518827678434127

/-! ## A011739.P3460516788392509445

`A011740(comp[A012206(n)+1])`
-/

namespace A011739.P3460516788392509445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012206 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A011739.P3460516788392509445

/-! ## A011739.P32026353978708908

`A011740(comp[A002179(3*(n+1))])`
-/

namespace A011739.P32026353978708908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002179 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A011739.P32026353978708908

/-! ## A011739.P15843352074222733852

`A011740(A044923(n+1)%A158844(n+1))`
-/

namespace A011739.P15843352074222733852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (Int.tmod (A044923 (n + 1)) (A158844 (n + 1))).toNat

end

end A011739.P15843352074222733852

/-! ## A011739.P4477608425265607724

`A011740(comp[A012094(n)])`
-/

namespace A011739.P4477608425265607724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012094 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A011739.P4477608425265607724

/-! ## A011739.P2340713492176928233

`A011740(comp[A012206(n)])`
-/

namespace A011739.P2340713492176928233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012206 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A011739.P2340713492176928233

/-! ## A011739.P3663948006344290579

`A011740((n+1)%A114576(n))`
-/

namespace A011739.P3663948006344290579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (Int.tmod (n + 1 : ℤ) (A114576 n)).toNat

end

end A011739.P3663948006344290579

/-! ## A011739.P18353155823771878221

`A011740(comp[A100645(3*n+4)])`
-/

namespace A011739.P18353155823771878221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100645 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011740 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A011739.P18353155823771878221

/-! ## A011739.P417130826658504761

`and(A011740(n+1), A086522(n+1))`
-/

namespace A011739.P417130826658504761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011740 (n + 1)) (A086522 (n + 1))

end

end A011739.P417130826658504761

/-!
# A011740: A binary m-sequence: expansion of reciprocal of x^27 + x^8 + x^7 + x + 1 (mod 2, shifted by 26 initial 0's).

The programs for A011740, there is no canonical definition to state claims against.
-/

/-! ## A011740.P7196411933583852440

`and(A011732(A248183(n+1)), A336413(n+1))`
-/

namespace A011740.P7196411933583852440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011732 (A248183 (n + 1)).toNat) (A336413 (n + 1))

end

end A011740.P7196411933583852440

/-! ## A011740.P11074326365834468589

`ceil(A011732(A248183(n+1))/A196038(n+1))`
-/

namespace A011740.P11074326365834468589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011732 (A248183 (n + 1)).toNat : ℚ) / (A196038 (n + 1) : ℚ)⌉

end

end A011740.P11074326365834468589

/-! ## A011740.P17556061712799311414

`Δ[A127307(n+1)]*A011732(A248183(n+1))`
-/

namespace A011740.P17556061712799311414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011732 (A248183 (n + 1)).toNat

end

end A011740.P17556061712799311414

/-! ## A011740.P1789215861418587361

`and(p?[A221881(n+1)], A011732(A248183(n+1)))`
-/

namespace A011740.P1789215861418587361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A011732 (A248183 (n + 1)).toNat)

end

end A011740.P1789215861418587361

/-! ## A011740.P15858091397655692687

`A011732(A248183(n+1))+A000007(A028330(n))`
-/

namespace A011740.P15858091397655692687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011732 (A248183 (n + 1)).toNat + A000007 (A028330 n).toNat

end

end A011740.P15858091397655692687

/-! ## A011740.P488794427224565735

`A011732(A248183(n+1))+A000007(A341270(n))`
-/

namespace A011740.P488794427224565735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011732 (A248183 (n + 1)).toNat + A000007 (A341270 n).toNat

end

end A011740.P488794427224565735

/-! ## A011740.P746540221706102351

`A011732(A248183(n+1))+A000007(A341262(n+1))`
-/

namespace A011740.P746540221706102351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011732 (A248183 (n + 1)).toNat + A000007 (A341262 (n + 1)).toNat

end

end A011740.P746540221706102351

/-! ## A011740.P8529269210684809610

`A001222(A119570(n+1))*A011732(A248183(n+1))`
-/

namespace A011740.P8529269210684809610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119570 (n + 1)).toNat * A011732 (A248183 (n + 1)).toNat

end

end A011740.P8529269210684809610

/-!
# A011741: A binary m-sequence: expansion of reciprocal of x^28 + x^3 + 1 (mod 2, shifted by 27 initial 0's).

The programs for A011741, there is no canonical definition to state claims against.
-/

/-! ## A011741.P15570605782207699871

`round(A225644(n)/A022144(A028920(2*n+1)))`
-/

namespace A011741.P15570605782207699871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A225644 n : ℚ) / (A022144 (A028920 (2 * n + 1)).toNat : ℚ))

end

end A011741.P15570605782207699871

/-! ## A011741.P10162950909357126714

`A011738(n)*A250211(A360327(n+1))`
-/

namespace A011741.P10162950909357126714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011738 n * A250211 (A360327 (n + 1)).toNat

end

end A011741.P10162950909357126714

/-! ## A011741.P15808755364405632361

`and(A011738(n), A051904(A340579(n+1)))`
-/

namespace A011741.P15808755364405632361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011738 n) (A051904 (A340579 (n + 1)).toNat)

end

end A011741.P15808755364405632361

/-! ## A011741.P9628234762041358435

`and(A000045(A325183(n+1)), A011738(n))`
-/

namespace A011741.P9628234762041358435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A325183 (n + 1)).toNat) (A011738 n)

end

end A011741.P9628234762041358435

/-! ## A011741.P6689909662037027560

`and(A011738(n), A189150(A064989(n+1)))`
-/

namespace A011741.P6689909662037027560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011738 n) (A189150 (A064989 (n + 1)).toNat)

end

end A011741.P6689909662037027560

/-! ## A011741.P11101625811515244799

`A316569(A011738(n)*A183104(n+1))`
-/

namespace A011741.P11101625811515244799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (A011738 n * A183104 (n + 1)).toNat

end

end A011741.P11101625811515244799

/-! ## A011741.P17223532853246242247

`and(A011738(n), A190356(n+1))`
-/

namespace A011741.P17223532853246242247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011738 n) (A190356 (n + 1))

end

end A011741.P17223532853246242247

/-! ## A011741.P11200146840094457694

`and(A008683(A250119(n+1)), A011738(n))`
-/

namespace A011741.P11200146840094457694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A250119 (n + 1)).toNat) (A011738 n)

end

end A011741.P11200146840094457694

/-! ## A011741.P5070237977186978917

`A167966(A078689(n+1))-1`
-/

namespace A011741.P5070237977186978917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167966 (A078689 (n + 1)).toNat - 1

end

end A011741.P5070237977186978917

/-! ## A011741.P15305996652121708357

`4%A167966(2*n+1)`
-/

namespace A011741.P15305996652121708357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A167966 (2 * n + 1))

end

end A011741.P15305996652121708357

/-!
# A011742: A binary m-sequence: expansion of reciprocal of x^29 + x^2 + 1 (mod 2, shifted by 28 initial 0's).

The programs for A011742, there is no canonical definition to state claims against.
-/

/-! ## A011742.P4383455477532525355

`val(A077006(A336934(n+1)), 7)`
-/

namespace A011742.P4383455477532525355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077006 (A336934 (n + 1)).toNat).toNat 7

end

end A011742.P4383455477532525355

/-! ## A011742.P8251269131221971531

`A031346(A003963(n+1)%A151897(n))`
-/

namespace A011742.P8251269131221971531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (Int.tmod (A003963 (n + 1)) (A151897 n)).toNat

end

end A011742.P8251269131221971531

/-! ## A011742.P6190760628469656686

`A004216(A003963(n+1))^A336424(n+1)`
-/

namespace A011742.P6190760628469656686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (A003963 (n + 1)).toNat : ℚ) ^ (A336424 (n + 1) : ℤ)

end

end A011742.P6190760628469656686

/-! ## A011742.P9861568808883146847

`A004216(A003963(n+1))^A232242(n+2)`
-/

namespace A011742.P9861568808883146847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (A003963 (n + 1)).toNat : ℚ) ^ (A232242 (n + 2) : ℤ)

end

end A011742.P9861568808883146847

/-! ## A011742.P4777645673651072655

`A004216(A003963(n+1))^A014963(A152977(n))`
-/

namespace A011742.P4777645673651072655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (A003963 (n + 1)).toNat : ℚ) ^ (A014963 (A152977 n).toNat : ℤ)

end

end A011742.P4777645673651072655

/-! ## A011742.P11948056492009964654

`A167965(n+3)-A167964(2*n+1)`
-/

namespace A011742.P11948056492009964654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (n + 3) - A167964 (2 * n + 1)

end

end A011742.P11948056492009964654

/-!
# A011743: A binary m-sequence: expansion of reciprocal of x^30 + x^16 + x^15 + x + 1 (mod 2, shifted by 29 initial 0's).

The programs for A011743, there is no canonical definition to state claims against.
-/

/-! ## A011743.P3056430164062043366

`val(A003056(A028829(n)), 4)`
-/

namespace A011743.P3056430164062043366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003056 (A028829 n).toNat).toNat 4

end

end A011743.P3056430164062043366

/-! ## A011743.P16501024355600215128

`A025926(ceil(sqrt(A160718(n))))`
-/

namespace A011743.P16501024355600215128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 ⌈Real.sqrt (A160718 n : ℝ)⌉.toNat

end

end A011743.P16501024355600215128

/-! ## A011743.P6403428526327625661

`A099475(Δ[A048340(n+1)])`
-/

namespace A011743.P6403428526327625661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (f1 (n + 1) - f1 n).toNat

end

end A011743.P6403428526327625661

/-! ## A011743.P12391619329445480018

`4%A055642(∑[A263414(n)])`
-/

namespace A011743.P12391619329445480018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A011743.P12391619329445480018

/-! ## A011743.P13232445179116723179

`val(A127321(A333309(n+1)), 5)`
-/

namespace A011743.P13232445179116723179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A127321 (A333309 (n + 1)).toNat).toNat 5

end

end A011743.P13232445179116723179

/-! ## A011743.P6343733251406908551

`val(A057944(A028785(n+1)), 9)`
-/

namespace A011743.P6343733251406908551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057944 (A028785 (n + 1)).toNat).toNat 9

end

end A011743.P6343733251406908551

/-! ## A011743.P18223472597602391031

`A025480(or(63, A279585(n+1)))`
-/

namespace A011743.P18223472597602391031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 63 (A279585 (n + 1))).toNat

end

end A011743.P18223472597602391031

/-! ## A011743.P3799384545293849563

`A153727(Δ[A048340(n+1)])%2`
-/

namespace A011743.P3799384545293849563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153727 (f1 (n + 1) - f1 n).toNat) 2

end

end A011743.P3799384545293849563

/-! ## A011743.P11013203928082458773

`A397559(A390084(n+1))`
-/

namespace A011743.P11013203928082458773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397559 (A390084 (n + 1)).toNat

end

end A011743.P11013203928082458773

/-! ## A011743.P2533653931529357788

`A064834(A070939(A095748(n+1)+n))`
-/

namespace A011743.P2533653931529357788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A070939 (A095748 (n + 1) + (n : ℤ)).toNat).toNat

end

end A011743.P2533653931529357788

/-!
# A011744: A binary m-sequence: expansion of reciprocal of x^31 + x^3 + 1 (mod 2, shifted by 30 initial 0's).

The programs for A011744, there is no canonical definition to state claims against.
-/

/-! ## A011744.P126710843808051360

`and(A011741(n), A055396(A036355(n)))`
-/

namespace A011744.P126710843808051360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011741 n) (A055396 (A036355 n).toNat)

end

end A011744.P126710843808051360

/-! ## A011744.P13013768602812671112

`A011741(A101224(n+1))*A011741(n)`
-/

namespace A011744.P13013768602812671112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011741 (A101224 (n + 1)).toNat * A011741 n

end

end A011744.P13013768602812671112

/-! ## A011744.P13389310538972562312

`and(A011738(n), A025864(A335999(n+1)))`
-/

namespace A011744.P13389310538972562312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011738 n) (A025864 (A335999 (n + 1)).toNat)

end

end A011744.P13389310538972562312

/-! ## A011744.P1060710515352732512

`A152910(n+1)%A152848(n+1)`
-/

namespace A011744.P1060710515352732512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152910 (n + 1)) (A152848 (n + 1))

end

end A011744.P1060710515352732512

/-! ## A011744.P12163600455178348937

`A110359(A028310(n))%A152848(n+1)`
-/

namespace A011744.P12163600455178348937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110359 (A028310 n).toNat) (A152848 (n + 1))

end

end A011744.P12163600455178348937

/-! ## A011744.P11763965580255561882

`A218483(A218506(n))%A152848(n+1)`
-/

namespace A011744.P11763965580255561882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218483 (A218506 n).toNat) (A152848 (n + 1))

end

end A011744.P11763965580255561882

/-! ## A011744.P7118665904900815799

`A144595(A076311(A008599(n))²)`
-/

namespace A011744.P7118665904900815799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (A076311 (A008599 n).toNat ^ 2).toNat

end

end A011744.P7118665904900815799

/-! ## A011744.P14347475595871793115

`and(A011741(n), A066618(n+1))`
-/

namespace A011744.P14347475595871793115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011741 n) (A066618 (n + 1))

end

end A011744.P14347475595871793115

/-! ## A011744.P15556643517735709545

`A393713(A394740((2*n)²))`
-/

namespace A011744.P15556643517735709545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393713 (A394740 ((2 * n) ^ 2)).toNat

end

end A011744.P15556643517735709545

/-! ## A011744.P1532238045488389189

`A393713(A394741((2*n)²))`
-/

namespace A011744.P1532238045488389189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393713 (A394741 ((2 * n) ^ 2)).toNat

end

end A011744.P1532238045488389189

/-!
# A011745: A binary m-sequence: expansion of reciprocal of x^32 + x^28 + x^27 + x + 1 (mod 2, shifted by 31 initial 0's).

The programs for A011745, there is no canonical definition to state claims against.
-/

/-! ## A011745.P8588800526989356176

`val(A054429(n+1)!, 37)`
-/

namespace A011745.P8588800526989356176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A054429 (n + 1)).toNat) 37

end

end A011745.P8588800526989356176

/-! ## A011745.P4365464160513636941

`val(A096111(A331912(n+1)), 7)`
-/

namespace A011745.P4365464160513636941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A096111 (A331912 (n + 1)).toNat).toNat 7

end

end A011745.P4365464160513636941

/-! ## A011745.P199108300470840800

`A181153(ceil(sqrt(A054429(n+1))))`
-/

namespace A011745.P199108300470840800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 ⌈Real.sqrt (A054429 (n + 1) : ℝ)⌉.toNat

end

end A011745.P199108300470840800

/-! ## A011745.P12227015458584334294

`floor(A216345(n+1)/A185179(n+6))`
-/

namespace A011745.P12227015458584334294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216345 (n + 1) : ℚ) / (A185179 (n + 6) : ℚ)⌋

end

end A011745.P12227015458584334294

/-! ## A011745.P8252865331595252532

`∑[A256865(A374736(3*(n+1)))]%2`
-/

namespace A011745.P8252865331595252532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256865 (A374736 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A011745.P8252865331595252532

/-! ## A011745.P7887043214782113310

`floor(A334965(n+1)/A079254(n+5))`
-/

namespace A011745.P7887043214782113310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334965 (n + 1) : ℚ) / (A079254 (n + 5) : ℚ)⌋

end

end A011745.P7887043214782113310

/-! ## A011745.P12217552506358739549

`round(A333696(round(A357864(n+1)/12)+1)/12)`
-/

namespace A011745.P12217552506358739549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A333696 (SequenceMachineLib.roundAway ((A357864 (n + 1) : ℚ) / 12) + 1).toNat : ℚ) / 12)

end

end A011745.P12217552506358739549

/-! ## A011745.P5665384228760090127

`round(comp[2*(n+1)]/A379398(n+1))`
-/

namespace A011745.P5665384228760090127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / (A379398 (n + 1) : ℚ))

end

end A011745.P5665384228760090127

/-! ## A011745.P11279387763914804668

`∑[val(A363727(n+4), 6)]`
-/

namespace A011745.P11279387763914804668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A363727 (n + 4)).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011745.P11279387763914804668

/-! ## A011745.P16316969249426602075

`∑[val(A364346(n+1), 2*(n+1))]`
-/

namespace A011745.P16316969249426602075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A364346 (n + 1)).toNat (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011745.P16316969249426602075

/-!
# A011746: Expansion of (1 + x^2)/(1 + x^2 + x^5) mod 2.

The programs for A011746, the canonical program `A011746.P18378703684162298528` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011746 has offset 0).

The definition of A011746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011746.P18378703684162298528

`xor(a(n-2), a(n-5))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011746

/-- `xor(a(n-2), a(n-5))` -/
def P18378703684162298528.Spec : Prop :=
  ∀ n, (P18378703684162298528.a n : ℤ) = A011746 n

theorem P18378703684162298528.correct : P18378703684162298528.Spec := by
  intro n
  simp only [A011746]

end A011746

/-!
# A011747: Expansion of (1 + x^2 + x^4)/(1 + x^2 + x^3 + x^4 + x^5) mod 2.

The programs for A011747, there is no canonical definition to state claims against.
-/

/-! ## A011747.P17527616037141428681

`(a(n-1)-A011665(n+3))²` with `a(0)=1`
-/

namespace A011747.P17527616037141428681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A011665 (n + 3)) ^ 2

end

end A011747.P17527616037141428681

/-!
# A011748: Expansion of (1 + x^2 + x^4)/(1 + x + x^2 + x^4 + x^5) mod 2.

The programs for A011748, there is no canonical definition to state claims against.
-/

/-! ## A011748.P16599544400131419708

`(A011660(n+1)-a(n-1))²` with `a(0)=1`
-/

namespace A011748.P16599544400131419708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A011660 (n + 1) - a (n - 1)) ^ 2

end

end A011748.P16599544400131419708

/-!
# A011749: Expansion of 1/(1 + x^3 + x^5) mod 2.

The programs for A011749, the canonical program `A011749.P12811053246633955507` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011749 has offset 0).

The definition of A011749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011749.P12811053246633955507

`xor(a(n-3), a(n-5))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011749

/-- `xor(a(n-3), a(n-5))` -/
def P12811053246633955507.Spec : Prop :=
  ∀ n, (P12811053246633955507.a n : ℤ) = A011749 n

theorem P12811053246633955507.correct : P12811053246633955507.Spec := by
  intro n
  simp only [A011749]

end A011749

/-!
# A011750: Expansion of (1 + x^2)/(1 + x + x^2 + x^3 + x^5) mod 2.

The programs for A011750, there is no canonical definition to state claims against.
-/

/-! ## A011750.P13552706745078801341

`(a(n-1)-A011661(n-1))²` with `a(0)=1`
-/

namespace A011750.P13552706745078801341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A011661 (n - 1)) ^ 2

end

end A011750.P13552706745078801341

/-!
# A011751: Expansion of (1 + x^4)/(1 + x + x^3 + x^4 + x^5) mod 2.

The programs for A011751, there is no canonical definition to state claims against.
-/

/-! ## A011751.P2445622581551114210

`(A011663(n+1)-a(n-1))²` with `a(0)=1`
-/

namespace A011751.P2445622581551114210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A011663 (n + 1) - a (n - 1)) ^ 2

end

end A011751.P2445622581551114210

/-!
# A011753: Smallest number beginning with n and having n different prime divisors (which may be repeated).

The programs for A011753, there is no canonical definition to state claims against.
-/

/-! ## A011753.P3958235781830747247

`A129650(a(n-2)+2)` with `a(0)=11, a(1)=20`
-/

namespace A011753.P3958235781830747247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 20] fun n a =>
  A129650 (a (n - 2) + 2).toNat

end

end A011753.P3958235781830747247

/-!
# A011754: Number of ones in the binary expansion of 3^n.

The programs for A011754, there is no canonical definition to state claims against.
-/

/-! ## A011754.P4450375843054654924

`A020914(n)-A118736(n)`
-/

namespace A011754.P4450375843054654924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - A118736 n

end

end A011754.P4450375843054654924

/-! ## A011754.P6360009037096832499

`A056576(n)+1-A118736(n)`
-/

namespace A011754.P6360009037096832499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + (1 - A118736 n)

end

end A011754.P6360009037096832499

/-! ## A011754.P11052005377670516898

`A122437(n+1)-(A118736(n)+n)`
-/

namespace A011754.P11052005377670516898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) - (A118736 n + (n : ℤ))

end

end A011754.P11052005377670516898

/-! ## A011754.P6568971013281683220

`A028310(ceil(n*log2(3))-A118736(n))`
-/

namespace A011754.P6568971013281683220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈(n : ℝ) * Real.logb 2 (3 : ℝ)⌉ - A118736 n).toNat

end

end A011754.P6568971013281683220

/-! ## A011754.P13741620713761929094

`A056576(n)+A024000(A118736(n))`
-/

namespace A011754.P13741620713761929094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + A024000 (A118736 n).toNat

end

end A011754.P13741620713761929094

/-! ## A011754.P4890499883196271747

`2-A024000(A056576(n)-A118736(n))`
-/

namespace A011754.P4890499883196271747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A056576 n - A118736 n).toNat

end

end A011754.P4890499883196271747

/-! ## A011754.P3070442808283549890

`(A204399(n)-A118736(n))^A062157(n)²`
-/

namespace A011754.P3070442808283549890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204399 n - A118736 n : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A011754.P3070442808283549890

/-! ## A011754.P7890513441619773357

`∑{digits}[A004658(n), A000045(#)]`
-/

namespace A011754.P7890513441619773357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A011754.P7890513441619773357

/-! ## A011754.P12154764067109313818

`∑{digits}[A004658(n), A000120(#)]`
-/

namespace A011754.P12154764067109313818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A011754.P12154764067109313818

/-! ## A011754.P6730021935055957114

`∑{digits}[A004658(n), A112310(#)]`
-/

namespace A011754.P6730021935055957114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A112310 x).sum

end

end A011754.P6730021935055957114

/-!
# A011755: a(n) = Sum_{k=1..n} k*phi(k).

The programs for A011755, the canonical program `A011755.P6342629275534871755` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011755 has offset 1).

The definition of A011755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011755.P9802816082009003081

`∑[(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]`
-/

namespace A011755.P9802816082009003081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P9802816082009003081

namespace A011755

/-- `∑[(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]` -/
def P9802816082009003081.Spec : Prop :=
  ∀ n, P9802816082009003081.a n = (A011755 (n + 1) : ℚ)

end A011755

/-! ## A011755.P16228567237368338770

`∑[A002618(n+1)]`
-/

namespace A011755.P16228567237368338770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P16228567237368338770

namespace A011755

/-- `∑[A002618(n+1)]` -/
def P16228567237368338770.Spec : Prop :=
  ∀ n, P16228567237368338770.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P13876074502218226536

`∑[abs(Δ[A240877(n)])]`
-/

namespace A011755.P13876074502218226536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P13876074502218226536

namespace A011755

/-- `∑[abs(Δ[A240877(n)])]` -/
def P13876074502218226536.Spec : Prop :=
  ∀ n, P13876074502218226536.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P3924053609868880278

`A240877(n+1)-1`
-/

namespace A011755.P3924053609868880278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 (n + 1) - 1

end

end A011755.P3924053609868880278

namespace A011755

/-- `A240877(n+1)-1` -/
def P3924053609868880278.Spec : Prop :=
  ∀ n, P3924053609868880278.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P3558281350968341748

`∑[A046151(n+1)+1]`
-/

namespace A011755.P3558281350968341748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P3558281350968341748

namespace A011755

/-- `∑[A046151(n+1)+1]` -/
def P3558281350968341748.Spec : Prop :=
  ∀ n, P3558281350968341748.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P12342800782213293318

`∑[A046152(n+1)-1]`
-/

namespace A011755.P12342800782213293318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P12342800782213293318

namespace A011755

/-- `∑[A046152(n+1)-1]` -/
def P12342800782213293318.Spec : Prop :=
  ∀ n, P12342800782213293318.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P14084072990707925755

`∑[A071118(n+1)/2]`
-/

namespace A011755.P14084072990707925755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P14084072990707925755

namespace A011755

/-- `∑[A071118(n+1)/2]` -/
def P14084072990707925755.Spec : Prop :=
  ∀ n, P14084072990707925755.a n = (A011755 (n + 1) : ℚ)

end A011755

/-! ## A011755.P1233848436921338872

`∑[A064400(n+1)/3]`
-/

namespace A011755.P1233848436921338872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P1233848436921338872

namespace A011755

/-- `∑[A064400(n+1)/3]` -/
def P1233848436921338872.Spec : Prop :=
  ∀ n, P1233848436921338872.a n = (A011755 (n + 1) : ℚ)

end A011755

/-! ## A011755.P5565805287182255625

`2*A213544(n+1)-1`
-/

namespace A011755.P5565805287182255625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213544 (n + 1) - 1

end

end A011755.P5565805287182255625

namespace A011755

/-- `2*A213544(n+1)-1` -/
def P5565805287182255625.Spec : Prop :=
  ∀ n, P5565805287182255625.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P6342629275534871755

`∑[2*A023896(n+1)]-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011755

/-- `∑[2*A023896(n+1)]-1` -/
def P6342629275534871755.Spec : Prop :=
  ∀ n, P6342629275534871755.a n = A011755 (n + 1)

theorem P6342629275534871755.correct : P6342629275534871755.Spec := by
  intro n
  simp only [A011755, Nat.add_sub_cancel]

end A011755

/-! ## A011755.P8685688762552496719

`∑[(n+1)*A000010(n+1)]`
-/

namespace A011755.P8685688762552496719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P8685688762552496719

namespace A011755

/-- `∑[(n+1)*A000010(n+1)]` -/
def P8685688762552496719.Spec : Prop :=
  ∀ n, P8685688762552496719.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P9463580529222728634

`∑[A053191(n+1)/(n+1)]`
-/

namespace A011755.P9463580529222728634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P9463580529222728634

namespace A011755

/-- `∑[A053191(n+1)/(n+1)]` -/
def P9463580529222728634.Spec : Prop :=
  ∀ n, P9463580529222728634.a n = (A011755 (n + 1) : ℚ)

end A011755

/-! ## A011755.P7169885368820677086

`∑[(n+1)²-A053650(n+1)]`
-/

namespace A011755.P7169885368820677086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A053650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P7169885368820677086

namespace A011755

/-- `∑[(n+1)²-A053650(n+1)]` -/
def P7169885368820677086.Spec : Prop :=
  ∀ n, P7169885368820677086.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P15778468862947451791

`∑[(A109606(n+1)+1)*(n+1)]`
-/

namespace A011755.P15778468862947451791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P15778468862947451791

namespace A011755

/-- `∑[(A109606(n+1)+1)*(n+1)]` -/
def P15778468862947451791.Spec : Prop :=
  ∀ n, P15778468862947451791.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P11352550367827262664

`∑[(n+1)*(A039649(n+1)-1)]`
-/

namespace A011755.P11352550367827262664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P11352550367827262664

namespace A011755

/-- `∑[(n+1)*(A039649(n+1)-1)]` -/
def P11352550367827262664.Spec : Prop :=
  ∀ n, P11352550367827262664.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P6004897438256449712

`∑[(n+1)*A349137(2*n+1)]`
-/

namespace A011755.P6004897438256449712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A349137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P6004897438256449712

namespace A011755

/-- `∑[(n+1)*A349137(2*n+1)]` -/
def P6004897438256449712.Spec : Prop :=
  ∀ n, P6004897438256449712.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P3898089024498062827

`a(n-1)+(n+1)*A000010(C(n+1, n))` with `a(0)=1`
-/

namespace A011755.P3898089024498062827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000010 (Nat.choose (n + 1) n)

end

end A011755.P3898089024498062827

namespace A011755

/-- `a(n-1)+(n+1)*A000010(C(n+1, n))` -/
def P3898089024498062827.Spec : Prop :=
  ∀ n, P3898089024498062827.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P18428226786270274192

`a(n-1)+(n+1)*A000010(2*n+1-n)` with `a(0)=1`
-/

namespace A011755.P18428226786270274192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000010 (2 * n + 1 - n)

end

end A011755.P18428226786270274192

namespace A011755

/-- `a(n-1)+(n+1)*A000010(2*n+1-n)` -/
def P18428226786270274192.Spec : Prop :=
  ∀ n, P18428226786270274192.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P15537510796871221307

`A143270(n+1)-A103116(n)`
-/

namespace A011755.P15537510796871221307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143270 (n + 1) - A103116 n

end

end A011755.P15537510796871221307

namespace A011755

/-- `A143270(n+1)-A103116(n)` -/
def P15537510796871221307.Spec : Prop :=
  ∀ n, P15537510796871221307.a n = A011755 (n + 1)

end A011755

/-! ## A011755.P1643850566095713068

`∑[A082473(A327173(n+1))]`
-/

namespace A011755.P1643850566095713068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082473 (A327173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011755.P1643850566095713068

namespace A011755

/-- `∑[A082473(A327173(n+1))]` -/
def P1643850566095713068.Spec : Prop :=
  ∀ n, P1643850566095713068.a n = A011755 (n + 1)

end A011755

/-!
# A011756: a(n) = prime(n*(n+1)/2).

The programs for A011756, the canonical program `A011756.P11118433525924746524` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011756 has offset 1).

The definition of A011756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A011756.P11118433525924746524

`A000040(A000217(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011756

/-- `A000040(A000217(n+1))` -/
def P11118433525924746524.Spec : Prop :=
  ∀ n, P11118433525924746524.a n = A011756 (n + 1)

theorem P11118433525924746524.correct : P11118433525924746524.Spec := by
  intro n
  simp only [A011756, Nat.add_sub_cancel]

end A011756

/-! ## A011756.P12908500683716034467

`∑[A138383(n)]-A123907(n+1)`
-/

namespace A011756.P12908500683716034467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123907 (n + 1)

end

end A011756.P12908500683716034467

namespace A011756

/-- `∑[A138383(n)]-A123907(n+1)` -/
def P12908500683716034467.Spec : Prop :=
  ∀ n, P12908500683716034467.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P15240130144081347251

`A034953(n+1)-A123907(n+1)`
-/

namespace A011756.P15240130144081347251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A123907 (n + 1)

end

end A011756.P15240130144081347251

namespace A011756

/-- `A034953(n+1)-A123907(n+1)` -/
def P15240130144081347251.Spec : Prop :=
  ∀ n, P15240130144081347251.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P13528026821459770265

`ceil(A319597(n+1)/2)-A123907(n+1)`
-/

namespace A011756.P13528026821459770265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319597 (n + 1) : ℚ) / 2⌉ - A123907 (n + 1)

end

end A011756.P13528026821459770265

namespace A011756

/-- `ceil(A319597(n+1)/2)-A123907(n+1)` -/
def P13528026821459770265.Spec : Prop :=
  ∀ n, P13528026821459770265.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P15677276343470547191

`C(∑[A125266(n+1)], 2)-A123907(n+1)`
-/

namespace A011756.P15677276343470547191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ) - A123907 (n + 1)

end

end A011756.P15677276343470547191

namespace A011756

/-- `C(∑[A125266(n+1)], 2)-A123907(n+1)` -/
def P15677276343470547191.Spec : Prop :=
  ∀ n, P15677276343470547191.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P4505563008062559460

`C(Δ[A007504(n)]+1, 2)-A123907(n+1)`
-/

namespace A011756.P4505563008062559460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 : ℤ) - A123907 (n + 1)

end

end A011756.P4505563008062559460

namespace A011756

/-- `C(Δ[A007504(n)]+1, 2)-A123907(n+1)` -/
def P4505563008062559460.Spec : Prop :=
  ∀ n, P4505563008062559460.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P7831548040030786805

`C(A052147(n+1)-1, 2)-A123907(n+1)`
-/

namespace A011756.P7831548040030786805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A052147 (n + 1) - 1).toNat 2 : ℤ) - A123907 (n + 1)

end

end A011756.P7831548040030786805

namespace A011756

/-- `C(A052147(n+1)-1, 2)-A123907(n+1)` -/
def P7831548040030786805.Spec : Prop :=
  ∀ n, P7831548040030786805.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P13755717812229903958

`C(A089241(n+1)/2, 2)-A123907(n+1)`
-/

namespace A011756.P13755717812229903958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat 2 : ℤ) - A123907 (n + 1)

end

end A011756.P13755717812229903958

namespace A011756

/-- `C(A089241(n+1)/2, 2)-A123907(n+1)` -/
def P13755717812229903958.Spec : Prop :=
  ∀ n, P13755717812229903958.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P15725029957400410290

`A247665(A248387(∑[n+1]))`
-/

namespace A011756.P15725029957400410290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A011756.P15725029957400410290

namespace A011756

/-- `A247665(A248387(∑[n+1]))` -/
def P15725029957400410290.Spec : Prop :=
  ∀ n, P15725029957400410290.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P13876639303046352063

`A001748(∑[n+1])/3`
-/

namespace A011756.P13876639303046352063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A011756.P13876639303046352063

namespace A011756

/-- `A001748(∑[n+1])/3` -/
def P13876639303046352063.Spec : Prop :=
  ∀ n, P13876639303046352063.a n = (A011756 (n + 1) : ℚ)

end A011756

/-! ## A011756.P15786872214542257324

`A001749(∑[n+1])/4`
-/

namespace A011756.P15786872214542257324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A011756.P15786872214542257324

namespace A011756

/-- `A001749(∑[n+1])/4` -/
def P15786872214542257324.Spec : Prop :=
  ∀ n, P15786872214542257324.a n = (A011756 (n + 1) : ℚ)

end A011756

/-! ## A011756.P16849732506285182072

`p?[A242422(n+1)]`
-/

namespace A011756.P16849732506285182072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A011756.P16849732506285182072

namespace A011756

/-- `p?[A242422(n+1)]` -/
def P16849732506285182072.Spec : Prop :=
  ∀ n, P16849732506285182072.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P13075336893575575478

`∩[A242422(n+1), A333242(n+1)]`
-/

namespace A011756.P13075336893575575478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A011756.P13075336893575575478

namespace A011756

/-- `∩[A242422(n+1), A333242(n+1)]` -/
def P13075336893575575478.Spec : Prop :=
  ∀ n, (P13075336893575575478.a n : ℤ) = A011756 (n + 1)

end A011756

/-! ## A011756.P3613941315467262265

`A156037(∑[n+1])+1`
-/

namespace A011756.P3613941315467262265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A011756.P3613941315467262265

namespace A011756

/-- `A156037(∑[n+1])+1` -/
def P3613941315467262265.Spec : Prop :=
  ∀ n, P3613941315467262265.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P1259848742635912356

`∩[A216884(n+1), A242422(n+1)]`
-/

namespace A011756.P1259848742635912356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A011756.P1259848742635912356

namespace A011756

/-- `∩[A216884(n+1), A242422(n+1)]` -/
def P1259848742635912356.Spec : Prop :=
  ∀ n, (P1259848742635912356.a n : ℤ) = A011756 (n + 1)

end A011756

/-! ## A011756.P12181918609310824063

`A091265(∑[n]+1)`
-/

namespace A011756.P12181918609310824063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A011756.P12181918609310824063

namespace A011756

/-- `A091265(∑[n]+1)` -/
def P12181918609310824063.Spec : Prop :=
  ∀ n, P12181918609310824063.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P14703582264547695966

`record[A091265(n+1)]`
-/

namespace A011756.P14703582264547695966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011756.P14703582264547695966

namespace A011756

/-- `record[A091265(n+1)]` -/
def P14703582264547695966.Spec : Prop :=
  ∀ n, P14703582264547695966.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P7057993733024586998

`A000040(∑[n+1])`
-/

namespace A011756.P7057993733024586998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011756.P7057993733024586998

namespace A011756

/-- `A000040(∑[n+1])` -/
def P7057993733024586998.Spec : Prop :=
  ∀ n, P7057993733024586998.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P4197338696155597202

`abs(A273960(∑[n+1]))`
-/

namespace A011756.P4197338696155597202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A011756.P4197338696155597202

namespace A011756

/-- `abs(A273960(∑[n+1]))` -/
def P4197338696155597202.Spec : Prop :=
  ∀ n, P4197338696155597202.a n = A011756 (n + 1)

end A011756

/-! ## A011756.P10757931939369165546

`sqrt(A001248(∑[n+1]))`
-/

namespace A011756.P10757931939369165546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A011756.P10757931939369165546

namespace A011756

/-- `sqrt(A001248(∑[n+1]))` -/
def P10757931939369165546.Spec : Prop :=
  ∀ n, P10757931939369165546.a n = (A011756 (n + 1) : ℝ)

end A011756

/-!
# A011757: a(n) = prime(n^2).

The programs for A011757, the canonical program `A011757.P11703475201892443194` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011757 has offset 1).

The definition of A011757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011757.P11703475201892443194

`A001248(n+1)-A123914(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011757

/-- `A001248(n+1)-A123914(n+1)` -/
def P11703475201892443194.Spec : Prop :=
  ∀ n, P11703475201892443194.a n = A011757 (n + 1)

theorem P11703475201892443194.correct : P11703475201892443194.Spec := by
  intro n
  simp only [A011757, Nat.add_sub_cancel]

end A011757

/-! ## A011757.P289399172693200048

`A000040(n+1)²-A123914(n+1)`
-/

namespace A011757.P289399172693200048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A123914 (n + 1)

end

end A011757.P289399172693200048

namespace A011757

/-- `A000040(n+1)²-A123914(n+1)` -/
def P289399172693200048.Spec : Prop :=
  ∀ n, P289399172693200048.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P15565884294109019826

`A036689(n+1)-A123914(n+1)+A006093(n+1)+1`
-/

namespace A011757.P15565884294109019826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A123914 (n + 1) + (A006093 (n + 1) + 1)

end

end A011757.P15565884294109019826

namespace A011757

/-- `A036689(n+1)-A123914(n+1)+A006093(n+1)+1` -/
def P15565884294109019826.Spec : Prop :=
  ∀ n, P15565884294109019826.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P7775457705175283568

`A036689(n+1)-A123914(n+1)+A052147(n+1)-2`
-/

namespace A011757.P7775457705175283568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A123914 (n + 1) + (A052147 (n + 1) - 2)

end

end A011757.P7775457705175283568

namespace A011757

/-- `A036689(n+1)-A123914(n+1)+A052147(n+1)-2` -/
def P7775457705175283568.Spec : Prop :=
  ∀ n, P7775457705175283568.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P15849511117298686289

`A036689(n+1)-A123914(n+1)+A086801(n+1)+3`
-/

namespace A011757.P15849511117298686289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A123914 (n + 1) + (A086801 (n + 1) + 3)

end

end A011757.P15849511117298686289

namespace A011757

/-- `A036689(n+1)-A123914(n+1)+A086801(n+1)+3` -/
def P15849511117298686289.Spec : Prop :=
  ∀ n, P15849511117298686289.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P4041743240655126042

`A036689(n+1)-A123914(n+1)+A113935(n+1)-3`
-/

namespace A011757.P4041743240655126042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A123914 (n + 1) + (A113935 (n + 1) - 3)

end

end A011757.P4041743240655126042

namespace A011757

/-- `A036689(n+1)-A123914(n+1)+A113935(n+1)-3` -/
def P4041743240655126042.Spec : Prop :=
  ∀ n, P4041743240655126042.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P15729191318987730361

`sqrt(A049001(n+1)+2)+A036689(n+1)-A123914(n+1)`
-/

namespace A011757.P15729191318987730361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049001 (n + 1) + 2 : ℝ) + (A036689 (n + 1) - A123914 (n + 1) : ℝ)

end

end A011757.P15729191318987730361

namespace A011757

/-- `sqrt(A049001(n+1)+2)+A036689(n+1)-A123914(n+1)` -/
def P15729191318987730361.Spec : Prop :=
  ∀ n, P15729191318987730361.a n = (A011757 (n + 1) : ℝ)

end A011757

/-! ## A011757.P9632899708099721080

`A213926(n+1)+A000040(n+1)`
-/

namespace A011757.P9632899708099721080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (n + 1) + A000040 (n + 1)

end

end A011757.P9632899708099721080

namespace A011757

/-- `A213926(n+1)+A000040(n+1)` -/
def P9632899708099721080.Spec : Prop :=
  ∀ n, P9632899708099721080.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P15805296207464277315

`A092504(n+1)-A000040(n+1)`
-/

namespace A011757.P15805296207464277315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - A000040 (n + 1)

end

end A011757.P15805296207464277315

namespace A011757

/-- `A092504(n+1)-A000040(n+1)` -/
def P15805296207464277315.Spec : Prop :=
  ∀ n, P15805296207464277315.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P16566149043788885658

`A092504(n+1)-(A006093(n+1)+1)`
-/

namespace A011757.P16566149043788885658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - (A006093 (n + 1) + 1)

end

end A011757.P16566149043788885658

namespace A011757

/-- `A092504(n+1)-(A006093(n+1)+1)` -/
def P16566149043788885658.Spec : Prop :=
  ∀ n, P16566149043788885658.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P4841076954873835896

`A063076(n)+a(n-1)` with `a(0)=2`
-/

namespace A011757.P4841076954873835896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063076 n + a (n - 1)

end

end A011757.P4841076954873835896

namespace A011757

/-- `A063076(n)+a(n-1)` -/
def P4841076954873835896.Spec : Prop :=
  ∀ n, P4841076954873835896.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P4371378737567682614

`A323526(n+2)`
-/

namespace A011757.P4371378737567682614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2)

end

end A011757.P4371378737567682614

namespace A011757

/-- `A323526(n+2)` -/
def P4371378737567682614.Spec : Prop :=
  ∀ n, P4371378737567682614.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P7948422237926059987

`A296857(A000040(n+1))`
-/

namespace A011757.P7948422237926059987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A000040 (n + 1)).toNat

end

end A011757.P7948422237926059987

namespace A011757

/-- `A296857(A000040(n+1))` -/
def P7948422237926059987.Spec : Prop :=
  ∀ n, P7948422237926059987.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P2728876976318503805

`A296857(A008578(n+2))`
-/

namespace A011757.P2728876976318503805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A008578 (n + 2)).toNat

end

end A011757.P2728876976318503805

namespace A011757

/-- `A296857(A008578(n+2))` -/
def P2728876976318503805.Spec : Prop :=
  ∀ n, P2728876976318503805.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P10835618547222098624

`A296857(A182986(n+2))`
-/

namespace A011757.P10835618547222098624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A182986 (n + 2)).toNat

end

end A011757.P10835618547222098624

namespace A011757

/-- `A296857(A182986(n+2))` -/
def P10835618547222098624.Spec : Prop :=
  ∀ n, P10835618547222098624.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P13014800929542670199

`A296857(record[A006530(n+2)])`
-/

namespace A011757.P13014800929542670199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A011757.P13014800929542670199

namespace A011757

/-- `A296857(record[A006530(n+2)])` -/
def P13014800929542670199.Spec : Prop :=
  ∀ n, P13014800929542670199.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P10735199516327351019

`A296857(record[A014963(n+2)])`
-/

namespace A011757.P10735199516327351019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A011757.P10735199516327351019

namespace A011757

/-- `A296857(record[A014963(n+2)])` -/
def P10735199516327351019.Spec : Prop :=
  ∀ n, P10735199516327351019.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P11384614709989994578

`A296857(record[A020639(n+2)])`
-/

namespace A011757.P11384614709989994578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A011757.P11384614709989994578

namespace A011757

/-- `A296857(record[A020639(n+2)])` -/
def P11384614709989994578.Spec : Prop :=
  ∀ n, P11384614709989994578.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P4843666852550410700

`p?[A064517(n+1)]`
-/

namespace A011757.P4843666852550410700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A011757.P4843666852550410700

namespace A011757

/-- `p?[A064517(n+1)]` -/
def P4843666852550410700.Spec : Prop :=
  ∀ n, P4843666852550410700.a n = A011757 (n + 1)

end A011757

/-! ## A011757.P1974330653649792013

`p?[A323528(n+1)]`
-/

namespace A011757.P1974330653649792013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A011757.P1974330653649792013

namespace A011757

/-- `p?[A323528(n+1)]` -/
def P1974330653649792013.Spec : Prop :=
  ∀ n, P1974330653649792013.a n = A011757 (n + 1)

end A011757

/-!
# A011760: Elevator buttons in U.S.A.: Positive integers except 13.

The programs for A011760, the canonical program `A011760.P15438312798106817372` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011760 has offset 1).

The definition of A011760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011760.P15438312798106817372

`round(atan(n+3)+n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011760

/-- `round(atan(n+3)+n)` -/
def P15438312798106817372.Spec : Prop :=
  ∀ n, P15438312798106817372.a n = A011760 (n + 1)

theorem P15438312798106817372.correct : P15438312798106817372.Spec := by
  intro n
  simp only [A011760, Nat.add_sub_cancel]

end A011760

/-!
# A011761: a(n) = a(n-1) + a(n-3), with a(0) = a(1) = 1, a(2) = 5.

The programs for A011761, the canonical program `A011761.P3339590217443871285` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011761 has offset 0).

The definition of A011761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A011761.P3339590217443871285`, by `A011761.P3339590217443871285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011761.P3339590217443871285

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011761

/-- `a(n-1)+a(n-3)` -/
def P3339590217443871285.Spec : Prop :=
  ∀ n, (P3339590217443871285.a n : ℤ) = A011761 n

theorem P3339590217443871285.correct : P3339590217443871285.Spec := by
  intro n
  simp only [A011761]

end A011761

/-! ## A011761.P17851086819624928419

`ogf((1+4x^2)/(1-x-x^3))`
-/

namespace A011761.P17851086819624928419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 4] [1, -1, 0, -1] n

end

end A011761.P17851086819624928419

namespace A011761

/-- `ogf((1+4x^2)/(1-x-x^3))` -/
def P17851086819624928419.Spec : Prop :=
  ∀ n, P17851086819624928419.a n = A011761 n

end A011761

/-! ## A011761.P13702089335380126110

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A011761.P13702089335380126110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A011761.P13702089335380126110

namespace A011761

/-- `a(n-1)-floor(-a(n-3))` -/
def P13702089335380126110.Spec : Prop :=
  ∀ n, P13702089335380126110.a n = A011761 n

end A011761

/-! ## A011761.P17159717144644116793

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A011761.P17159717144644116793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A011761.P17159717144644116793

namespace A011761

/-- `a(n-1)-ceil(-a(n-3))` -/
def P17159717144644116793.Spec : Prop :=
  ∀ n, P17159717144644116793.a n = A011761 n

end A011761

/-! ## A011761.P561698811199285192

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=5`

`round` is left out, it is the identity on integers.
-/

namespace A011761.P561698811199285192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A011761.P561698811199285192

namespace A011761

/-- `a(n-1)-round(-a(n-3))` -/
def P561698811199285192.Spec : Prop :=
  ∀ n, P561698811199285192.a n = A011761 n

end A011761

/-! ## A011761.P10722812274479738683

`2*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A011761.P10722812274479738683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A011761.P10722812274479738683

namespace A011761

/-- `2*a(n-1)-(a(n-1)-a(n-3))` -/
def P10722812274479738683.Spec : Prop :=
  ∀ n, P10722812274479738683.a n = A011761 n

end A011761

/-! ## A011761.P16548696765149367820

`A078012(n+1)+A001609(n+1)`
-/

namespace A011761.P16548696765149367820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + A001609 (n + 1)

end

end A011761.P16548696765149367820

namespace A011761

/-- `A078012(n+1)+A001609(n+1)` -/
def P16548696765149367820.Spec : Prop :=
  ∀ n, P16548696765149367820.a n = A011761 n

end A011761

/-! ## A011761.P17364819958341139091

`A179070(n+2)+2*A078012(n+1)`
-/

namespace A011761.P17364819958341139091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) + 2 * A078012 (n + 1)

end

end A011761.P17364819958341139091

namespace A011761

/-- `A179070(n+2)+2*A078012(n+1)` -/
def P17364819958341139091.Spec : Prop :=
  ∀ n, P17364819958341139091.a n = A011761 n

end A011761

/-! ## A011761.P6760326338139161212

`A000930(n+1)+A001609(n+1)-A000930(n)`
-/

namespace A011761.P6760326338139161212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) + (A001609 (n + 1) - A000930 n)

end

end A011761.P6760326338139161212

namespace A011761

/-- `A000930(n+1)+A001609(n+1)-A000930(n)` -/
def P6760326338139161212.Spec : Prop :=
  ∀ n, P6760326338139161212.a n = A011761 n

end A011761

/-! ## A011761.P15685026279708023921

`A179070(n+2)+A179070(n+2)-A000930(n)`
-/

namespace A011761.P15685026279708023921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) + (A179070 (n + 2) - A000930 n)

end

end A011761.P15685026279708023921

namespace A011761

/-- `A179070(n+2)+A179070(n+2)-A000930(n)` -/
def P15685026279708023921.Spec : Prop :=
  ∀ n, P15685026279708023921.a n = A011761 n

end A011761

/-!
# A011762: Number of letters in n (in Spanish).

The programs for A011762, there is no canonical definition to state claims against.
-/

/-! ## A011762.P3979248031492677436

`∑{digits}[A165948(n), gcd(5, #)]`
-/

namespace A011762.P3979248031492677436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.gcd 5 x).sum

end

end A011762.P3979248031492677436

/-! ## A011762.P8172692938421707772

`∑{digits}[A165948(n), A003989(#)]`
-/

namespace A011762.P8172692938421707772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003989 x).sum

end

end A011762.P8172692938421707772

/-! ## A011762.P9900930710606169773

`∑{digits}[A165948(n), A014902(#)]`
-/

namespace A011762.P9900930710606169773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014902 x).sum

end

end A011762.P9900930710606169773

/-! ## A011762.P4027570463686237548

`∑{digits}[A165948(n), A014908(#)]`
-/

namespace A011762.P4027570463686237548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014908 x).sum

end

end A011762.P4027570463686237548

/-! ## A011762.P17662567139610782733

`∑{digits}[A165948(n), A071625(#)]`
-/

namespace A011762.P17662567139610782733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A071625 x).sum

end

end A011762.P17662567139610782733

/-!
# A011763: Days in year in proleptic Gregorian calendar.

The programs for A011763, there is no canonical definition to state claims against.
-/

/-! ## A011763.P12438915115154793613

`Δ[A061251(A008594(n))]`
-/

namespace A011763.P12438915115154793613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061251 (A008594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011763.P12438915115154793613

/-!
# A011764: a(n) = 3^(2^n) (or: write in base 3, read in base 9).

The programs for A011764, the canonical program `A011764.P4379785109130423372` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011764 has offset 0).

The definition of A011764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^2^n` (program `A011764.P4379785109130423372`, by `A011764.P4379785109130423372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011764.P4379785109130423372

`3^2^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011764

/-- `3^2^n` -/
def P4379785109130423372.Spec : Prop :=
  ∀ n, (P4379785109130423372.a n : ℤ) = A011764 n

theorem P4379785109130423372.correct : P4379785109130423372.Spec := by
  intro n
  simp only [A011764]

end A011764

/-!
# A011765: Period 4: repeat [0, 0, 0, 1].

The programs for A011765, the canonical program `A011765.P1093448086306446135` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011765 has offset 1).

The definition of A011765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011765.P1093448086306446135

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011765

/-- `a(n-4)` -/
def P1093448086306446135.Spec : Prop :=
  ∀ n, (P1093448086306446135.a n : ℤ) = A011765 (n + 1)

theorem P1093448086306446135.correct : P1093448086306446135.Spec := by
  intro n
  simp only [A011765, Nat.add_sub_cancel]

end A011765

/-!
# A011767: From studying monochromatic solutions to x3-x2=x2-x1+2n.

The programs for A011767, there is no canonical definition to state claims against.
-/

/-! ## A011767.P9758651881355081408

`A078779(3*n+5)+4`
-/

namespace A011767.P9758651881355081408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (3 * n + 5) + 4

end

end A011767.P9758651881355081408

/-! ## A011767.P17542037990673487673

`floor(log2(A299320(n+4)))-1`
-/

namespace A011767.P17542037990673487673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A299320 (n + 4)).toNat : ℤ) - 1

end

end A011767.P17542037990673487673

/-! ## A011767.P13315442575075665589

`floor(log2(∑[A211578(3*n+5)]))`
-/

namespace A011767.P13315442575075665589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211578 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011767.P13315442575075665589

/-! ## A011767.P12498594231149012322

`∑[∑{e}[A178383(n+2)+1, #]]+5`
-/

namespace A011767.P12498594231149012322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178383 (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A011767.P12498594231149012322

/-! ## A011767.P6773283577319315683

`A205720(A009866(n+1))`
-/

namespace A011767.P6773283577319315683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205720 (A009866 (n + 1)).toNat

end

end A011767.P6773283577319315683

/-!
# A011768: Number of Barlow packings that repeat after exactly n layers.

The programs for A011768, there is no canonical definition to state claims against.
-/

/-! ## A011768.P4575084623242243599

`∑{d}[n+1, A008683(#)*A114438((n+1)/#)]`
-/

namespace A011768.P4575084623242243599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A114438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011768.P4575084623242243599

/-!
# A011769: a(0) = 1, a(n+1) = 3 * a(n) - F(n)*(F(n) + 1), where F(n) = A000045(n) is n-th Fibonacci number.

The programs for A011769, the canonical program `A011769.P1104459669848881241` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011769 has offset 0).

The definition of A011769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011769.P4963853925262314968

`3*a(n-1)-A059727(n-1)` with `a(0)=1`
-/

namespace A011769.P4963853925262314968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A059727 (n - 1)

end

end A011769.P4963853925262314968

namespace A011769

/-- `3*a(n-1)-A059727(n-1)` -/
def P4963853925262314968.Spec : Prop :=
  ∀ n, P4963853925262314968.a n = A011769 n

end A011769

/-! ## A011769.P1104459669848881241

`∑[A098703(n)+A001654(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011769

/-- `∑[A098703(n)+A001654(n)]+1` -/
def P1104459669848881241.Spec : Prop :=
  ∀ n, P1104459669848881241.a n = A011769 n

theorem P1104459669848881241.correct : P1104459669848881241.Spec := by
  intro n
  simp only [A011769]

end A011769

/-! ## A011769.P11772895974425469599

`A099164(n)+A122367(n)-a(n-1)` with `a(0)=1`
-/

namespace A011769.P11772895974425469599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099164 n + (A122367 n - a (n - 1))

end

end A011769.P11772895974425469599

namespace A011769

/-- `A099164(n)+A122367(n)-a(n-1)` -/
def P11772895974425469599.Spec : Prop :=
  ∀ n, P11772895974425469599.a n = A011769 n

end A011769

/-! ## A011769.P2254566650494522205

`A099164(n)+A108362(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A011769.P2254566650494522205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099164 n + (A108362 (2 * n) - a (n - 1))

end

end A011769.P2254566650494522205

namespace A011769

/-- `A099164(n)+A108362(2*n)-a(n-1)` -/
def P2254566650494522205.Spec : Prop :=
  ∀ n, P2254566650494522205.a n = A011769 n

end A011769

/-! ## A011769.P13776855873939394023

`∑[A098703(A028310(n))+A001654(n)]`
-/

namespace A011769.P13776855873939394023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (A028310 n).toNat + A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011769.P13776855873939394023

namespace A011769

/-- `∑[A098703(A028310(n))+A001654(n)]` -/
def P13776855873939394023.Spec : Prop :=
  ∀ n, P13776855873939394023.a n = A011769 n

end A011769

/-!
# A011771: Days per century for Roman calendar from first century, following Gregorian calendar after A.D. 1582.

The programs for A011771, there is no canonical definition to state claims against.
-/

/-! ## A011771.P8656728812315714651

`or(A011731(A011768(n+4)), A011766(n+2))`
-/

namespace A011771.P8656728812315714651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011731 (A011768 (n + 4)).toNat) (A011766 (n + 2))

end

end A011771.P8656728812315714651

/-!
# A011772: Smallest number m such that m(m+1)/2 is divisible by n.

The programs for A011772, there is no canonical definition to state claims against.
-/

/-! ## A011772.P7768459585215990866

`A344005(2*(n+1))`
-/

namespace A011772.P7768459585215990866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * (n + 1))

end

end A011772.P7768459585215990866

/-! ## A011772.P17966489134954059943

`A321366(n+1)-1`
-/

namespace A011772.P17966489134954059943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) - 1

end

end A011772.P17966489134954059943

/-! ## A011772.P8229927207748954576

`∑{d}[n+1, A344767(#)]`
-/

namespace A011772.P8229927207748954576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344767 d

end

end A011772.P8229927207748954576

/-! ## A011772.P14811863163392105996

`A081467(n+1)-(n+1)`
-/

namespace A011772.P14811863163392105996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081467 (n + 1) - (n + 1 : ℤ)

end

end A011772.P14811863163392105996

/-! ## A011772.P6567323984413939096

`1-A344763(n+1)+n`
-/

namespace A011772.P6567323984413939096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344763 (n + 1) + (n : ℤ)

end

end A011772.P6567323984413939096

/-! ## A011772.P1042646615897279680

`round(sqrt(2*A066561(n+1)))`
-/

namespace A011772.P1042646615897279680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A066561 (n + 1) : ℝ))

end

end A011772.P1042646615897279680

/-! ## A011772.P11323980591029079056

`A081469(n+1)-A061782(n+1)`
-/

namespace A011772.P11323980591029079056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081469 (n + 1) - A061782 (n + 1)

end

end A011772.P11323980591029079056

/-! ## A011772.P9478324373990399139

`A000203(n+1)-A344765(n+1)`
-/

namespace A011772.P9478324373990399139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A344765 (n + 1)

end

end A011772.P9478324373990399139

/-! ## A011772.P4750840855283492866

`A005187(n+1)-A344769(n+1)`
-/

namespace A011772.P4750840855283492866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A344769 (n + 1)

end

end A011772.P4750840855283492866

/-! ## A011772.P10759737663558545215

`A047994(n+1)-A344874(n+1)`
-/

namespace A011772.P10759737663558545215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A344874 (n + 1)

end

end A011772.P10759737663558545215

/-! ## A011772.P2829073440334966125

`A343997(n+1)-A343999(n+1)`
-/

namespace A011772.P2829073440334966125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1) - A343999 (n + 1)

end

end A011772.P2829073440334966125

/-! ## A011772.P4868508620882460101

`A344875(n+1)-A344876(n+1)`
-/

namespace A011772.P4868508620882460101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) - A344876 (n + 1)

end

end A011772.P4868508620882460101

/-! ## A011772.P15411835292237098799

`A344878(n+1)-A344976(n+1)`
-/

namespace A011772.P15411835292237098799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) - A344976 (n + 1)

end

end A011772.P15411835292237098799

/-! ## A011772.P13809555705088448638

`A345065(n+1)-A345055(n+1)`
-/

namespace A011772.P13809555705088448638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - A345055 (n + 1)

end

end A011772.P13809555705088448638

/-! ## A011772.P15745680270745439607

`A344969(n+1)*A344970(n+1)`
-/

namespace A011772.P15745680270745439607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (n + 1) * A344970 (n + 1)

end

end A011772.P15745680270745439607

/-! ## A011772.P7466239465032711968

`A088580(n+1)-(A344765(n+1)+1)`
-/

namespace A011772.P7466239465032711968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A344765 (n + 1) + 1)

end

end A011772.P7466239465032711968

/-! ## A011772.P14952216539608338380

`A343996(n+1)+A343999(n+1)-1`
-/

namespace A011772.P14952216539608338380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (n + 1) + (A343999 (n + 1) - 1)

end

end A011772.P14952216539608338380

/-! ## A011772.P8808520880617589126

`A343997(n+1)-A354918(2*(n+1))`
-/

namespace A011772.P8808520880617589126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1) - A354918 (2 * (n + 1))

end

end A011772.P8808520880617589126

/-! ## A011772.P17564547567094505250

`A354876(2*(n+1))-A354875(2*(n+1))`
-/

namespace A011772.P17564547567094505250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (2 * (n + 1)) - A354875 (2 * (n + 1))

end

end A011772.P17564547567094505250

/-! ## A011772.P7961114350795481275

`A354985(2*(n+1))*A354987(2*(n+1))`
-/

namespace A011772.P7961114350795481275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (2 * (n + 1)) * A354987 (2 * (n + 1))

end

end A011772.P7961114350795481275

/-!
# A011773: Variant of Carmichael's lambda function: a(p1^e1*...*pN^eN) = lcm((p1-1)*p1^(e1-1), ..., (pN-1)*pN^(eN-1)).

The programs for A011773, there is no canonical definition to state claims against.
-/

/-! ## A011773.P10147460440439484112

`lcm((n+1)/∏{p}[n+1, #], A002322(n+1))`
-/

namespace A011773.P10147460440439484112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A002322 (n + 1))

end

end A011773.P10147460440439484112

/-! ## A011773.P8895663079879719634

`lcm(A002322(n+1), A003557(n+1))`
-/

namespace A011773.P8895663079879719634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002322 (n + 1)) (A003557 (n + 1))

end

end A011773.P8895663079879719634

/-! ## A011773.P13574205257842518904

`A174824(n+1)/A007947(A174824(n+1)/A002322(n+1))`
-/

namespace A011773.P13574205257842518904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174824 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A174824 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat : ℚ)

end

end A011773.P13574205257842518904

/-! ## A011773.P14269533418392736745

`A002322(A022998(A022998(A026741(n+1))))`
-/

namespace A011773.P14269533418392736745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A022998 (A022998 (A026741 (n + 1)).toNat).toNat).toNat

end

end A011773.P14269533418392736745

/-! ## A011773.P392175973544904440

`A002322((n+1)*A130658(n))`
-/

namespace A011773.P392175973544904440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((n + 1 : ℤ) * A130658 n).toNat

end

end A011773.P392175973544904440

/-! ## A011773.P762198540274599912

`A002322(2*(n+1))-char[1]`
-/

namespace A011773.P762198540274599912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (2 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011773.P762198540274599912

/-! ## A011773.P17547177052676074266

`A002322(comp[n+3-gcd(n, or(1, n))]+1)`
-/

namespace A011773.P17547177052676074266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.gcd n (Nat.lor 1 n) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A011773.P17547177052676074266

/-! ## A011773.P9276700563803919737

`A002322(A057543(n+1))`
-/

namespace A011773.P9276700563803919737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A057543 (n + 1)).toNat

end

end A011773.P9276700563803919737

/-! ## A011773.P1691163327689730822

`A002322(A188167(n+1))`
-/

namespace A011773.P1691163327689730822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A188167 (n + 1)).toNat

end

end A011773.P1691163327689730822

/-! ## A011773.P10424145394885432818

`A002322(A227380(n+1))`
-/

namespace A011773.P10424145394885432818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A227380 (n + 1)).toNat

end

end A011773.P10424145394885432818

/-! ## A011773.P11790345357565269267

`gcd(A000010(n+1), A002322(2*(n+1)))`
-/

namespace A011773.P11790345357565269267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A002322 (2 * (n + 1)))

end

end A011773.P11790345357565269267

/-! ## A011773.P15882647055106602687

`A002322((n+1)*A020639(A002322(n+1)))`
-/

namespace A011773.P15882647055106602687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((n + 1 : ℤ) * A020639 (A002322 (n + 1)).toNat).toNat

end

end A011773.P15882647055106602687

/-! ## A011773.P13947446581850725419

`A002322(2*(n+1))/A326584(A002322(2*n+1))`
-/

namespace A011773.P13947446581850725419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (2 * (n + 1)) : ℚ) / (A326584 (A002322 (2 * n + 1)).toNat : ℚ)

end

end A011773.P13947446581850725419

/-! ## A011773.P9321062829844821677

`A056811(2*n+1)+A002322(2*(n+1))-A056811(2*(n+1))`
-/

namespace A011773.P9321062829844821677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (2 * n + 1) + (A002322 (2 * (n + 1)) - A056811 (2 * (n + 1)))

end

end A011773.P9321062829844821677

/-! ## A011773.P13206468244797394580

`A002322((n+1)*A303757(A046644(n+1)))`
-/

namespace A011773.P13206468244797394580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((n + 1 : ℤ) * A303757 (A046644 (n + 1)).toNat).toNat

end

end A011773.P13206468244797394580

/-! ## A011773.P15122617032248259200

`A002322((n+1)*A080400(A193292(n+1)))`
-/

namespace A011773.P15122617032248259200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((n + 1 : ℤ) * A080400 (A193292 (n + 1)).toNat).toNat

end

end A011773.P15122617032248259200

/-! ## A011773.P10858973480095035773

`A002322(2*(n+1)-A014963(∑[n+1])+1)`
-/

namespace A011773.P10858973480095035773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 ((2 * (n + 1) : ℤ) - A014963 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A011773.P10858973480095035773

/-! ## A011773.P1928079503070011841

`A002322(C(n+1, A014963(∑[n+1]))+n+1)`
-/

namespace A011773.P1928079503070011841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Nat.choose (n + 1) (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + n + 1)

end

end A011773.P1928079503070011841

/-! ## A011773.P3529237540849356611

`lcm(A081727(n+1), A356497(n+1))`
-/

namespace A011773.P3529237540849356611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081727 (n + 1)) (A356497 (n + 1))

end

end A011773.P3529237540849356611

/-!
# A011775: Numbers k such that k divides phi(k) * sigma(k).

The programs for A011775, the canonical program `A011775.P3606156875010578652` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011775 has offset 1).

The definition of A011775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011775.P9918183642621297801

`lt[A062354(n+1)%(n+1), 1]+1`
-/

namespace A011775.P9918183642621297801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062354 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A011775.P9918183642621297801

namespace A011775

/-- `lt[A062354(n+1)%(n+1), 1]+1` -/
def P9918183642621297801.Spec : Prop :=
  ∀ n, (P9918183642621297801.a n : ℤ) = A011775 (n + 1)

end A011775

/-! ## A011775.P3606156875010578652

`eq[A056100(n+1), A057427(n)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A011775

/-- `eq[A056100(n+1), A057427(n)]+1` -/
def P3606156875010578652.Spec : Prop :=
  ∀ n, (P3606156875010578652.a n : ℤ) = A011775 (n + 1)

theorem P3606156875010578652.correct : P3606156875010578652.Spec := by
  intro n
  simp only [A011775, Nat.add_sub_cancel]

end A011775

/-! ## A011775.P9665559429726174538

`record[A048671(gcd(n+1, A069249(n+1)))]`
-/

namespace A011775.P9665559429726174538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (Int.gcd (n + 1 : ℤ) (A069249 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011775.P9665559429726174538

namespace A011775

/-- `record[A048671(gcd(n+1, A069249(n+1)))]` -/
def P9665559429726174538.Spec : Prop :=
  ∀ n, P9665559429726174538.a n = A011775 (n + 1)

end A011775

/-!
# A011776: a(1) = 1; for n > 1, a(n) is defined by the property that n^a(n) divides n! but n^(a(n)+1) does not.

The programs for A011776, there is no canonical definition to state claims against.
-/

/-! ## A011776.P12003479805491368296

`A071637(floor(acot(n)+n))+1`
-/

namespace A011776.P12003479805491368296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071637 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A011776.P12003479805491368296

/-! ## A011776.P9275255975582935681

`A071637(round(acot(n)+n))+1`
-/

namespace A011776.P9275255975582935681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071637 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A011776.P9275255975582935681

/-! ## A011776.P16784882439469572644

`A071637(abs(1-n)+1)+1`
-/

namespace A011776.P16784882439469572644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071637 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A011776.P16784882439469572644

/-! ## A011776.P14583740138233705493

`A071638(a((n-1)%4))+A071637(n)` with `a(0)=1`
-/

namespace A011776.P14583740138233705493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071638 (a (Int.tmod ((n : ℤ) - 1) 4).toNat).toNat + A071637 n

end

end A011776.P14583740138233705493

/-! ## A011776.P12511752187530081757

`A071638(a(A000038(n)))+A071637(n)` with `a(0)=1`
-/

namespace A011776.P12511752187530081757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071638 (a (A000038 n).toNat).toNat + A071637 n

end

end A011776.P12511752187530081757

/-! ## A011776.P12631923063965401164

`A071638(a(A191265(n)))+A071637(n)` with `a(0)=1`
-/

namespace A011776.P12631923063965401164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071638 (a (A191265 n).toNat).toNat + A071637 n

end

end A011776.P12631923063965401164

/-! ## A011776.P14731439709769450967

`A118402(a(A191265(n)))+A071637(n)` with `a(0)=1`
-/

namespace A011776.P14731439709769450967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118402 (a (A191265 n).toNat).toNat + A071637 n

end

end A011776.P14731439709769450967

/-! ## A011776.P3342450097915113798

`A071637(A137734(n²))-or(1, A010054(n))+2`
-/

namespace A011776.P3342450097915113798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071637 (A137734 (n ^ 2)).toNat - Int.lor 1 (A010054 n) + 2

end

end A011776.P3342450097915113798

/-! ## A011776.P13973597133746704852

`A090622(A051890(n))`
-/

namespace A011776.P13973597133746704852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090622 (A051890 n).toNat

end

end A011776.P13973597133746704852

/-! ## A011776.P586031238939638025

`A090622(A245766(n))`
-/

namespace A011776.P586031238939638025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090622 (A245766 n).toNat

end

end A011776.P586031238939638025

/-!
# A011777: a(n) = least k>1 such that k^n divides k!.

The programs for A011777, there is no canonical definition to state claims against.
-/

/-! ## A011777.P14225852960550590223

`A181440(A133481(n+1))`
-/

namespace A011777.P14225852960550590223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A133481 (n + 1)).toNat

end

end A011777.P14225852960550590223

/-! ## A011777.P1251777029071022551

`A133481(n+1)+A000007(n)`
-/

namespace A011777.P1251777029071022551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + A000007 n

end

end A011777.P1251777029071022551

/-! ## A011777.P7119627337520998313

`A054977(n)*A133481(n+1)`
-/

namespace A011777.P7119627337520998313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A133481 (n + 1)

end

end A011777.P7119627337520998313

/-! ## A011777.P4837426584836310684

`A133481(n+1)+A057428(n)+1`
-/

namespace A011777.P4837426584836310684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + (A057428 n + 1)

end

end A011777.P4837426584836310684

/-! ## A011777.P4376282749116215775

`A133481(n+1)+1-A057427(n)`
-/

namespace A011777.P4376282749116215775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + (1 - A057427 n)

end

end A011777.P4376282749116215775

/-! ## A011777.P4132371616645327797

`A133481(n+1)+and(1, A074845(n+3))`
-/

namespace A011777.P4132371616645327797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + Int.land 1 (A074845 (n + 3))

end

end A011777.P4132371616645327797

/-! ## A011777.P2939787299578766242

`A133481(n+1)+∑{d}[n+1, A008683(#)]`
-/

namespace A011777.P2939787299578766242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A011777.P2939787299578766242

/-! ## A011777.P5066515267982362195

`A133481(n+1)+1-A069010(A053644(n))`
-/

namespace A011777.P5066515267982362195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + (1 - A069010 (A053644 n).toNat)

end

end A011777.P5066515267982362195

/-! ## A011777.P14361869546965790706

`A133481(n+1)*A217467(A074845(n+2))`
-/

namespace A011777.P14361869546965790706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) * A217467 (A074845 (n + 2)).toNat

end

end A011777.P14361869546965790706

/-! ## A011777.P17916896076972932388

`A060151(n+2)+A133481(n+1)-A074184(n+2)`
-/

namespace A011777.P17916896076972932388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (n + 2) + (A133481 (n + 1) - A074184 (n + 2))

end

end A011777.P17916896076972932388

/-! ## A011777.P9589894392086498047

`A133481(n+1)+A008683((n+1)²)`
-/

namespace A011777.P9589894392086498047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A011777.P9589894392086498047

/-! ## A011777.P15064917360937180387

`A133481(n+1)+1-A157458(A000217(n))`
-/

namespace A011777.P15064917360937180387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) + (1 - A157458 (A000217 n).toNat)

end

end A011777.P15064917360937180387

/-!
# A011778: Numbers k where A011776(k) grows.

The programs for A011778, there is no canonical definition to state claims against.
-/

/-! ## A011778.P18109025547957878909

`A061769(n)+1`
-/

namespace A011778.P18109025547957878909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061769 n + 1

end

end A011778.P18109025547957878909

/-! ## A011778.P10068473840269773911

`A092427(A061770(n))`
-/

namespace A011778.P10068473840269773911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092427 (A061770 n).toNat

end

end A011778.P10068473840269773911

/-! ## A011778.P12701410058929950945

`A103391(2*A061769(n))`
-/

namespace A011778.P12701410058929950945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (2 * A061769 n).toNat

end

end A011778.P12701410058929950945

/-! ## A011778.P15250959841785659427

`n-(A023443(n)-A061769(n))`
-/

namespace A011778.P15250959841785659427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A061769 n)

end

end A011778.P15250959841785659427

/-! ## A011778.P14828384532066297600

`2-(char[A061579(n)]-A061769(n))`
-/

namespace A011778.P14828384532066297600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A061769 n)

end

end A011778.P14828384532066297600

/-!
# A011779: Expansion of 1/((1-x)^3*(1-x^3)^2).

The programs for A011779, the canonical program `A011779.P10657322919692634109` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011779 has offset 0).

The definition of A011779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-3x^3+6x^4-6x^5+3x^6-3x^7+3x^8-x^9))` (program `A011779.P10657322919692634109`, by `A011779.P10657322919692634109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011779.P10657322919692634109

`ogf(1/(1-3x+3x^2-3x^3+6x^4-6x^5+3x^6-3x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011779

/-- `ogf(1/(1-3x+3x^2-3x^3+6x^4-6x^5+3x^6-3x^7+3x^8-x^9))` -/
def P10657322919692634109.Spec : Prop :=
  ∀ n, P10657322919692634109.a n = A011779 n

theorem P10657322919692634109.correct : P10657322919692634109.Spec := by
  intro n
  simp only [A011779]

end A011779

/-! ## A011779.P16048483211210522936

`∑[∑[C(ceil((n+1)/3)+1, 2)]]`
-/

namespace A011779.P16048483211210522936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(n + 1 : ℚ) / 3⌉ + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P16048483211210522936

namespace A011779

/-- `∑[∑[C(ceil((n+1)/3)+1, 2)]]` -/
def P16048483211210522936.Spec : Prop :=
  ∀ n, (P16048483211210522936.a n : ℤ) = A011779 n

end A011779

/-! ## A011779.P14110752662472347569

`∑[∑[∑[∑[∑[n+1]]%(n+3)]]]`
-/

namespace A011779.P14110752662472347569
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) % (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P14110752662472347569

namespace A011779

/-- `∑[∑[∑[∑[∑[n+1]]%(n+3)]]]` -/
def P14110752662472347569.Spec : Prop :=
  ∀ n, (P14110752662472347569.a n : ℤ) = A011779 n

end A011779

/-! ## A011779.P13550552224002885142

`∑[∑[∑[n+3-(n+3)/gcd(3, n)]]]/2`
-/

namespace A011779.P13550552224002885142
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (n + 3 : ℚ) / (Nat.gcd 3 n : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A011779.P13550552224002885142

namespace A011779

/-- `∑[∑[∑[n+3-(n+3)/gcd(3, n)]]]/2` -/
def P13550552224002885142.Spec : Prop :=
  ∀ n, P13550552224002885142.a n = (A011779 n : ℚ)

end A011779

/-! ## A011779.P11877732700219559908

`∑[A144677(n)]`
-/

namespace A011779.P11877732700219559908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P11877732700219559908

namespace A011779

/-- `∑[A144677(n)]` -/
def P11877732700219559908.Spec : Prop :=
  ∀ n, P11877732700219559908.a n = A011779 n

end A011779

/-! ## A011779.P15786314976013639945

`∑[A382819(n)+n]`
-/

namespace A011779.P15786314976013639945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382819 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P15786314976013639945

namespace A011779

/-- `∑[A382819(n)+n]` -/
def P15786314976013639945.Spec : Prop :=
  ∀ n, P15786314976013639945.a n = A011779 n

end A011779

/-! ## A011779.P1335783856431107147

`∑[A225566(n+1)/2]`
-/

namespace A011779.P1335783856431107147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225566 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P1335783856431107147

namespace A011779

/-- `∑[A225566(n+1)/2]` -/
def P1335783856431107147.Spec : Prop :=
  ∀ n, P1335783856431107147.a n = (A011779 n : ℚ)

end A011779

/-! ## A011779.P3789095508134569595

`∑[∑[A000217(ceil((n+1)/3))]]`
-/

namespace A011779.P3789095508134569595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(n + 1 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P3789095508134569595

namespace A011779

/-- `∑[∑[A000217(ceil((n+1)/3))]]` -/
def P3789095508134569595.Spec : Prop :=
  ∀ n, P3789095508134569595.a n = A011779 n

end A011779

/-! ## A011779.P4184318870379486058

`A014125(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A011779.P4184318870379486058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A014125 n + a (n - 3)

end

end A011779.P4184318870379486058

namespace A011779

/-- `A014125(n)+a(n-3)` -/
def P4184318870379486058.Spec : Prop :=
  ∀ n, P4184318870379486058.a n = A011779 n

end A011779

/-! ## A011779.P3122874472198234300

`∑[∑[A008805(A004396(n))]]`
-/

namespace A011779.P3122874472198234300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A004396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P3122874472198234300

namespace A011779

/-- `∑[∑[A008805(A004396(n))]]` -/
def P3122874472198234300.Spec : Prop :=
  ∀ n, P3122874472198234300.a n = A011779 n

end A011779

/-! ## A011779.P12162660793374243984

`∑[∑[A001972(2*A002264(n))]]`
-/

namespace A011779.P12162660793374243984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P12162660793374243984

namespace A011779

/-- `∑[∑[A001972(2*A002264(n))]]` -/
def P12162660793374243984.Spec : Prop :=
  ∀ n, P12162660793374243984.a n = A011779 n

end A011779

/-! ## A011779.P9047801209352236442

`∑[∑[A008795(2*A002264(n))]]`
-/

namespace A011779.P9047801209352236442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P9047801209352236442

namespace A011779

/-- `∑[∑[A008795(2*A002264(n))]]` -/
def P9047801209352236442.Spec : Prop :=
  ∀ n, P9047801209352236442.a n = A011779 n

end A011779

/-! ## A011779.P17264335059258549773

`∑[∑[A002378(A008620(n))/2]]`
-/

namespace A011779.P17264335059258549773
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A008620 n).toNat : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P17264335059258549773

namespace A011779

/-- `∑[∑[A002378(A008620(n))/2]]` -/
def P17264335059258549773.Spec : Prop :=
  ∀ n, P17264335059258549773.a n = (A011779 n : ℚ)

end A011779

/-! ## A011779.P1634287648639409489

`∑[2*A028289(n)]-A028289(n)`
-/

namespace A011779.P1634287648639409489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028289 n

end

end A011779.P1634287648639409489

namespace A011779

/-- `∑[2*A028289(n)]-A028289(n)` -/
def P1634287648639409489.Spec : Prop :=
  ∀ n, P1634287648639409489.a n = A011779 n

end A011779

/-! ## A011779.P9925375909945024292

`∑[∑[A000124(A002264(n)+1)-1]]`
-/

namespace A011779.P9925375909945024292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002264 n + 1).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P9925375909945024292

namespace A011779

/-- `∑[∑[A000124(A002264(n)+1)-1]]` -/
def P9925375909945024292.Spec : Prop :=
  ∀ n, P9925375909945024292.a n = A011779 n

end A011779

/-! ## A011779.P10416304066725383695

`∑[∑[∑[A175676(n+3)]]]`
-/

namespace A011779.P10416304066725383695
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P10416304066725383695

namespace A011779

/-- `∑[∑[∑[A175676(n+3)]]]` -/
def P10416304066725383695.Spec : Prop :=
  ∀ n, P10416304066725383695.a n = A011779 n

end A011779

/-! ## A011779.P8734791956394048012

`∑[∑[A025796(2*n)]]`
-/

namespace A011779.P8734791956394048012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P8734791956394048012

namespace A011779

/-- `∑[∑[A025796(2*n)]]` -/
def P8734791956394048012.Spec : Prop :=
  ∀ n, P8734791956394048012.a n = A011779 n

end A011779

/-! ## A011779.P2472421925722175034

`∑[∑[A008805(A008611(2*n))]]`
-/

namespace A011779.P2472421925722175034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A008611 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P2472421925722175034

namespace A011779

/-- `∑[∑[A008805(A008611(2*n))]]` -/
def P2472421925722175034.Spec : Prop :=
  ∀ n, P2472421925722175034.a n = A011779 n

end A011779

/-! ## A011779.P15322072140820164368

`∑[A008670(Δ[n²])]`
-/

namespace A011779.P15322072140820164368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P15322072140820164368

namespace A011779

/-- `∑[A008670(Δ[n²])]` -/
def P15322072140820164368.Spec : Prop :=
  ∀ n, P15322072140820164368.a n = A011779 n

end A011779

/-! ## A011779.P2778389215212065643

`∑[∑[A161680(A026806(2*(n+1)))]]`
-/

namespace A011779.P2778389215212065643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026806 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011779.P2778389215212065643

namespace A011779

/-- `∑[∑[A161680(A026806(2*(n+1)))]]` -/
def P2778389215212065643.Spec : Prop :=
  ∀ n, P2778389215212065643.a n = A011779 n

end A011779

/-!
# A011780: Expansion of 1/((1-2*x)^3*(1-x^2)^2).

The programs for A011780, the canonical program `A011780.P13756664392879792417` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011780 has offset 0).

The definition of A011780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+10x^2+4x^3-23x^4+10x^5+12x^6-8x^7))` (program `A011780.P13756664392879792417`, by `A011780.P13756664392879792417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011780.P13756664392879792417

`ogf(1/(1-6x+10x^2+4x^3-23x^4+10x^5+12x^6-8x^7))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011780

/-- `ogf(1/(1-6x+10x^2+4x^3-23x^4+10x^5+12x^6-8x^7))` -/
def P13756664392879792417.Spec : Prop :=
  ∀ n, P13756664392879792417.a n = A011780 n

theorem P13756664392879792417.correct : P13756664392879792417.Spec := by
  intro n
  simp only [A011780]

end A011780

/-! ## A011780.P13837279464539169186

`A061017(A047859(n)*A104249(n))`
-/

namespace A011780.P13837279464539169186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A047859 n * A104249 n).toNat

end

end A011780.P13837279464539169186

namespace A011780

/-- `A061017(A047859(n)*A104249(n))` -/
def P13837279464539169186.Spec : Prop :=
  ∀ n, P13837279464539169186.a n = A011780 n

end A011780

/-!
# A011781: Sextuple factorial numbers: a(n) = Product_{k=0..n-1} (6*k+3).

The programs for A011781, the canonical program `A011781.P5036587846108745549` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011781 has offset 0).

The definition of A011781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011781.P5036587846108745549

`(3/2)^n*(2*n)!/n!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011781

/-- `(3/2)^n*(2*n)!/n!` -/
def P5036587846108745549.Spec : Prop :=
  ∀ n, P5036587846108745549.a n = (A011781 n : ℚ)

end A011781

/-! ## A011781.P2848401222552981554

`∏[a(n-1)+6]` with `a(0)=1, a(1)=3`
-/

namespace A011781.P2848401222552981554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P2848401222552981554

namespace A011781

/-- `∏[a(n-1)+6]` -/
def P2848401222552981554.Spec : Prop :=
  ∀ n, (P2848401222552981554.a n : ℤ) = A011781 n

end A011781

/-! ## A011781.P9554781710149069209

`(6*n-3)*a(n-1)` with `a(0)=1`
-/

namespace A011781.P9554781710149069209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((6 * n : ℤ) - 3) * a (n - 1)

end

end A011781.P9554781710149069209

namespace A011781

/-- `(6*n-3)*a(n-1)` -/
def P9554781710149069209.Spec : Prop :=
  ∀ n, P9554781710149069209.a n = A011781 n

end A011781

/-! ## A011781.P14884179343890078704

`3^n*∏[abs(1-2*n)]`
-/

namespace A011781.P14884179343890078704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A011781.P14884179343890078704

namespace A011781

/-- `3^n*∏[abs(1-2*n)]` -/
def P14884179343890078704.Spec : Prop :=
  ∀ n, P14884179343890078704.a n = A011781 n

end A011781

/-! ## A011781.P15106310233257676717

`∏[record[lcm(4, n)+1]-2*n]`
-/

namespace A011781.P15106310233257676717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P15106310233257676717

namespace A011781

/-- `∏[record[lcm(4, n)+1]-2*n]` -/
def P15106310233257676717.Spec : Prop :=
  ∀ n, P15106310233257676717.a n = A011781 n

end A011781

/-! ## A011781.P9362542076373777894

`∏[∪[3*(2*n+1), 3^n]]`
-/

namespace A011781.P9362542076373777894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P9362542076373777894

namespace A011781

/-- `∏[∪[3*(2*n+1), 3^n]]` -/
def P9362542076373777894.Spec : Prop :=
  ∀ n, (P9362542076373777894.a n : ℤ) = A011781 n

end A011781

/-! ## A011781.P12365038013598451376

`∏[record[A084060(n)]]`
-/

namespace A011781.P12365038013598451376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P12365038013598451376

namespace A011781

/-- `∏[record[A084060(n)]]` -/
def P12365038013598451376.Spec : Prop :=
  ∀ n, P12365038013598451376.a n = A011781 n

end A011781

/-! ## A011781.P6619307991638280142

`∏[record[A165202(n)]]`
-/

namespace A011781.P6619307991638280142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P6619307991638280142

namespace A011781

/-- `∏[record[A165202(n)]]` -/
def P6619307991638280142.Spec : Prop :=
  ∀ n, P6619307991638280142.a n = A011781 n

end A011781

/-! ## A011781.P11426599889611854580

`∏[record[A294178(n)]]`
-/

namespace A011781.P11426599889611854580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P11426599889611854580

namespace A011781

/-- `∏[record[A294178(n)]]` -/
def P11426599889611854580.Spec : Prop :=
  ∀ n, P11426599889611854580.a n = A011781 n

end A011781

/-! ## A011781.P13044009757374668766

`∏[record[A001281(n)+1]]`
-/

namespace A011781.P13044009757374668766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011781.P13044009757374668766

namespace A011781

/-- `∏[record[A001281(n)+1]]` -/
def P13044009757374668766.Spec : Prop :=
  ∀ n, P13044009757374668766.a n = A011781 n

end A011781

/-!
# A011782: Coefficients of expansion of (1-x)/(1-2*x) in powers of x.

The programs for A011782, the canonical program `A011782.P7461078519819856082` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011782 has offset 0).

The definition of A011782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011782.P7461078519819856082

`ceil(2^(n-1))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011782

/-- `ceil(2^(n-1))` -/
def P7461078519819856082.Spec : Prop :=
  ∀ n, P7461078519819856082.a n = A011782 n

theorem P7461078519819856082.correct : P7461078519819856082.Spec := by
  intro n
  simp only [A011782]

end A011782

/-! ## A011782.P12143864417244355643

`A000041(n)+A056823(n)`
-/

namespace A011782.P12143864417244355643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A056823 n

end

end A011782.P12143864417244355643

namespace A011782

/-- `A000041(n)+A056823(n)` -/
def P12143864417244355643.Spec : Prop :=
  ∀ n, P12143864417244355643.a n = A011782 n

end A011782

/-! ## A011782.P10848604181738993895

`A000079(n)-A131577(n)`
-/

namespace A011782.P10848604181738993895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A131577 n

end

end A011782.P10848604181738993895

namespace A011782

/-- `A000079(n)-A131577(n)` -/
def P10848604181738993895.Spec : Prop :=
  ∀ n, P10848604181738993895.a n = A011782 n

end A011782

/-! ## A011782.P8744255278549225629

`A173921(A000079(n))`
-/

namespace A011782.P8744255278549225629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173921 (A000079 n).toNat

end

end A011782.P8744255278549225629

namespace A011782

/-- `A173921(A000079(n))` -/
def P8744255278549225629.Spec : Prop :=
  ∀ n, P8744255278549225629.a n = A011782 n

end A011782

/-! ## A011782.P11020492251527654983

`ogf((1-x)/(1-2x))`
-/

namespace A011782.P11020492251527654983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2] n

end

end A011782.P11020492251527654983

namespace A011782

/-- `ogf((1-x)/(1-2x))` -/
def P11020492251527654983.Spec : Prop :=
  ∀ n, P11020492251527654983.a n = A011782 n

end A011782

/-! ## A011782.P15175468510990215704

`2^floor(n*tanh(4))`
-/

namespace A011782.P15175468510990215704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℝ) * Real.tanh (4 : ℝ)⌋ : ℤ)

end

end A011782.P15175468510990215704

namespace A011782

/-- `2^floor(n*tanh(4))` -/
def P15175468510990215704.Spec : Prop :=
  ∀ n, P15175468510990215704.a n = (A011782 n : ℚ)

end A011782

/-! ## A011782.P8407867515175770951

`2*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A011782.P8407867515175770951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1)

end

end A011782.P8407867515175770951

namespace A011782

/-- `2*a(n-1)` -/
def P8407867515175770951.Spec : Prop :=
  ∀ n, (P8407867515175770951.a n : ℤ) = A011782 n

end A011782

/-! ## A011782.P10123459568644569559

`round(2^xor(-1, -n))`
-/

namespace A011782.P10123459568644569559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ))

end

end A011782.P10123459568644569559

namespace A011782

/-- `round(2^xor(-1, -n))` -/
def P10123459568644569559.Spec : Prop :=
  ∀ n, P10123459568644569559.a n = A011782 n

end A011782

/-! ## A011782.P9488420949635431789

`2^floor(n-sin(n)²)`
-/

namespace A011782.P9488420949635431789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℝ) - Real.sin (n : ℝ) ^ 2⌋ : ℤ)

end

end A011782.P9488420949635431789

namespace A011782

/-- `2^floor(n-sin(n)²)` -/
def P9488420949635431789.Spec : Prop :=
  ∀ n, P9488420949635431789.a n = (A011782 n : ℚ)

end A011782

/-! ## A011782.P2306521067420631688

`2^floor(n²*acot(n))`
-/

namespace A011782.P2306521067420631688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A011782.P2306521067420631688

namespace A011782

/-- `2^floor(n²*acot(n))` -/
def P2306521067420631688.Spec : Prop :=
  ∀ n, P2306521067420631688.a n = (A011782 n : ℚ)

end A011782

/-! ## A011782.P5467061341139340509

`2^floor(∑[n*acot(n)])`
-/

namespace A011782.P5467061341139340509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℤ)

end

end A011782.P5467061341139340509

namespace A011782

/-- `2^floor(∑[n*acot(n)])` -/
def P5467061341139340509.Spec : Prop :=
  ∀ n, P5467061341139340509.a n = (A011782 n : ℚ)

end A011782

/-! ## A011782.P11757001091950177851

`2^round(n-atan(atan(n)))`
-/

namespace A011782.P11757001091950177851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) - Real.arctan (Real.arctan (n : ℝ))) : ℤ)

end

end A011782.P11757001091950177851

namespace A011782

/-- `2^round(n-atan(atan(n)))` -/
def P11757001091950177851.Spec : Prop :=
  ∀ n, P11757001091950177851.a n = (A011782 n : ℚ)

end A011782

/-! ## A011782.P7358243235152812037

`2^((n-1)%(n+1))`
-/

namespace A011782.P7358243235152812037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

end

end A011782.P7358243235152812037

namespace A011782

/-- `2^((n-1)%(n+1))` -/
def P7358243235152812037.Spec : Prop :=
  ∀ n, P7358243235152812037.a n = (A011782 n : ℚ)

end A011782

/-! ## A011782.P15873311242593870555

`floor(cos(1)+2^(n-1))`
-/

namespace A011782.P15873311242593870555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A011782.P15873311242593870555

namespace A011782

/-- `floor(cos(1)+2^(n-1))` -/
def P15873311242593870555.Spec : Prop :=
  ∀ n, P15873311242593870555.a n = A011782 n

end A011782

/-! ## A011782.P14138724113773863956

`floor(sin(1)+2^(n-1))`
-/

namespace A011782.P14138724113773863956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A011782.P14138724113773863956

namespace A011782

/-- `floor(sin(1)+2^(n-1))` -/
def P14138724113773863956.Spec : Prop :=
  ∀ n, P14138724113773863956.a n = A011782 n

end A011782

/-! ## A011782.P12137364294632374003

`round(2^(n-1)-cos(2))`
-/

namespace A011782.P12137364294632374003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (2 : ℝ))

end

end A011782.P12137364294632374003

namespace A011782

/-- `round(2^(n-1)-cos(2))` -/
def P12137364294632374003.Spec : Prop :=
  ∀ n, P12137364294632374003.a n = A011782 n

end A011782

/-! ## A011782.P3654791080444459868

`floor(2^(n-1)-cos(4))`
-/

namespace A011782.P3654791080444459868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (4 : ℝ)⌋

end

end A011782.P3654791080444459868

namespace A011782

/-- `floor(2^(n-1)-cos(4))` -/
def P3654791080444459868.Spec : Prop :=
  ∀ n, P3654791080444459868.a n = A011782 n

end A011782

/-! ## A011782.P2959749700872027567

`floor(atan(1)+2^(n-1))`
-/

namespace A011782.P2959749700872027567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A011782.P2959749700872027567

namespace A011782

/-- `floor(atan(1)+2^(n-1))` -/
def P2959749700872027567.Spec : Prop :=
  ∀ n, P2959749700872027567.a n = A011782 n

end A011782

/-! ## A011782.P2531508494673060252

`floor(2^(n-1)-sin(4))`
-/

namespace A011782.P2531508494673060252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (4 : ℝ)⌋

end

end A011782.P2531508494673060252

namespace A011782

/-- `floor(2^(n-1)-sin(4))` -/
def P2531508494673060252.Spec : Prop :=
  ∀ n, P2531508494673060252.a n = A011782 n

end A011782

/-! ## A011782.P10309261743550368192

`round(sin(3)+2^(n-1))`
-/

namespace A011782.P10309261743550368192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (3 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A011782.P10309261743550368192

namespace A011782

/-- `round(sin(3)+2^(n-1))` -/
def P10309261743550368192.Spec : Prop :=
  ∀ n, P10309261743550368192.a n = A011782 n

end A011782

/-!
# A011785: Number of 3 X 3 matrices whose determinant is 1 mod n.

The programs for A011785, the canonical program `A011785.P17990344848790254440` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011785 has offset 1).

The definition of A011785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011785.P11436960465801477982

`A064767(n+1)/Δ[A002088(n)]`
-/

namespace A011785.P11436960465801477982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A011785.P11436960465801477982

namespace A011785

/-- `A064767(n+1)/Δ[A002088(n)]` -/
def P11436960465801477982.Spec : Prop :=
  ∀ n, P11436960465801477982.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P11459388473845851100

`A064767(n+1)/Δ[A005728(n)]`
-/

namespace A011785.P11459388473845851100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A011785.P11459388473845851100

namespace A011785

/-- `A064767(n+1)/Δ[A005728(n)]` -/
def P11459388473845851100.Spec : Prop :=
  ∀ n, P11459388473845851100.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P17990344848790254440

`A000056(n+1)*A115224(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A011785

/-- `A000056(n+1)*A115224(n+1)` -/
def P17990344848790254440.Spec : Prop :=
  ∀ n, P17990344848790254440.a n = A011785 (n + 1)

theorem P17990344848790254440.correct : P17990344848790254440.Spec := by
  intro n
  simp only [A011785, Nat.add_sub_cancel]

end A011785

/-! ## A011785.P6679636572441417838

`A000082(n+1)*A115226(n+1)`
-/

namespace A011785.P6679636572441417838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (n + 1) * A115226 (n + 1)

end

end A011785.P6679636572441417838

namespace A011785

/-- `A000082(n+1)*A115226(n+1)` -/
def P6679636572441417838.Spec : Prop :=
  ∀ n, P6679636572441417838.a n = A011785 (n + 1)

end A011785

/-! ## A011785.P16049725564835910326

`A064767(n+1)/A000010(n+1)`
-/

namespace A011785.P16049725564835910326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A011785.P16049725564835910326

namespace A011785

/-- `A064767(n+1)/A000010(n+1)` -/
def P16049725564835910326.Spec : Prop :=
  ∀ n, P16049725564835910326.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P6504506803447405770

`A064767(n+1)/Δ[A100449(n)/4]`
-/

namespace A011785.P6504506803447405770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (f1 (n + 1) - f1 n)

end

end A011785.P6504506803447405770

namespace A011785

/-- `A064767(n+1)/Δ[A100449(n)/4]` -/
def P6504506803447405770.Spec : Prop :=
  ∀ n, P6504506803447405770.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P16498943362720444141

`A064767(n+1)/(A109606(n+1)+1)`
-/

namespace A011785.P16498943362720444141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ)

end

end A011785.P16498943362720444141

namespace A011785

/-- `A064767(n+1)/(A109606(n+1)+1)` -/
def P16498943362720444141.Spec : Prop :=
  ∀ n, P16498943362720444141.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P5943411454475257286

`A064767(n+1)/(A039649(n+1)-1)`
-/

namespace A011785.P5943411454475257286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) : ℚ) / (A039649 (n + 1) - 1 : ℚ)

end

end A011785.P5943411454475257286

namespace A011785

/-- `A064767(n+1)/(A039649(n+1)-1)` -/
def P5943411454475257286.Spec : Prop :=
  ∀ n, P5943411454475257286.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P18360854594646597222

`A000578(n+1)*A007434(n+1)*A059376(n+1)`
-/

namespace A011785.P18360854594646597222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) * A007434 (n + 1) * A059376 (n + 1)

end

end A011785.P18360854594646597222

namespace A011785

/-- `A000578(n+1)*A007434(n+1)*A059376(n+1)` -/
def P18360854594646597222.Spec : Prop :=
  ∀ n, P18360854594646597222.a n = A011785 (n + 1)

end A011785

/-! ## A011785.P5038283187269527560

`A000010(n+1)*A000082(n+1)*A115224(n+1)`
-/

namespace A011785.P5038283187269527560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000082 (n + 1) * A115224 (n + 1)

end

end A011785.P5038283187269527560

namespace A011785

/-- `A000010(n+1)*A000082(n+1)*A115224(n+1)` -/
def P5038283187269527560.Spec : Prop :=
  ∀ n, P5038283187269527560.a n = A011785 (n + 1)

end A011785

/-! ## A011785.P5314612787197076039

`A000056(n+1)/A000252(n+1)*A064767(n+1)`
-/

namespace A011785.P5314612787197076039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A064767 (n + 1) : ℚ)

end

end A011785.P5314612787197076039

namespace A011785

/-- `A000056(n+1)/A000252(n+1)*A064767(n+1)` -/
def P5314612787197076039.Spec : Prop :=
  ∀ n, P5314612787197076039.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P7639375490532663389

`A000056(n+1)/A000010(n+1)*A115226(n+1)`
-/

namespace A011785.P7639375490532663389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A115226 (n + 1) : ℚ)

end

end A011785.P7639375490532663389

namespace A011785

/-- `A000056(n+1)/A000010(n+1)*A115226(n+1)` -/
def P7639375490532663389.Spec : Prop :=
  ∀ n, P7639375490532663389.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P15046814720212431870

`A000252(n+1)/A000010(n+1)*A115224(n+1)`
-/

namespace A011785.P15046814720212431870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A115224 (n + 1) : ℚ)

end

end A011785.P15046814720212431870

namespace A011785

/-- `A000252(n+1)/A000010(n+1)*A115224(n+1)` -/
def P15046814720212431870.Spec : Prop :=
  ∀ n, P15046814720212431870.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P4890393206479849735

`A064767(n+1)*A115224(n+1)/A115226(n+1)`
-/

namespace A011785.P4890393206479849735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064767 (n + 1) * A115224 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ)

end

end A011785.P4890393206479849735

namespace A011785

/-- `A064767(n+1)*A115224(n+1)/A115226(n+1)` -/
def P4890393206479849735.Spec : Prop :=
  ∀ n, P4890393206479849735.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P16318022134494603143

`A000252(n+1)*A011786(n+1)/A294705(n+1)`
-/

namespace A011785.P16318022134494603143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) * A011786 (n + 1) : ℚ) / (A294705 (n + 1) : ℚ)

end

end A011785.P16318022134494603143

namespace A011785

/-- `A000252(n+1)*A011786(n+1)/A294705(n+1)` -/
def P16318022134494603143.Spec : Prop :=
  ∀ n, P16318022134494603143.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P9097121552854106371

`A011786(n+1)*A064767(n+1)/A305186(n+1)`
-/

namespace A011785.P9097121552854106371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011786 (n + 1) * A064767 (n + 1) : ℚ) / (A305186 (n + 1) : ℚ)

end

end A011785.P9097121552854106371

namespace A011785

/-- `A011786(n+1)*A064767(n+1)/A305186(n+1)` -/
def P9097121552854106371.Spec : Prop :=
  ∀ n, P9097121552854106371.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P9250749620873436605

`A000056(n+1)/A294705(n+1)*A305186(n+1)`
-/

namespace A011785.P9250749620873436605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A294705 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A011785.P9250749620873436605

namespace A011785

/-- `A000056(n+1)/A294705(n+1)*A305186(n+1)` -/
def P9250749620873436605.Spec : Prop :=
  ∀ n, P9250749620873436605.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P12040728602055201262

`A000056(n+1)²/A000252(n+1)*A115226(n+1)`
-/

namespace A011785.P12040728602055201262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) ^ 2 : ℚ) / (A000252 (n + 1) : ℚ) * (A115226 (n + 1) : ℚ)

end

end A011785.P12040728602055201262

namespace A011785

/-- `A000056(n+1)²/A000252(n+1)*A115226(n+1)` -/
def P12040728602055201262.Spec : Prop :=
  ∀ n, P12040728602055201262.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P9985573249859178950

`A000252(n+1)/A115226(n+1)*A115224(n+1)²`
-/

namespace A011785.P9985573249859178950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A115226 (n + 1) : ℚ) * (A115224 (n + 1) ^ 2 : ℚ)

end

end A011785.P9985573249859178950

namespace A011785

/-- `A000252(n+1)/A115226(n+1)*A115224(n+1)²` -/
def P9985573249859178950.Spec : Prop :=
  ∀ n, P9985573249859178950.a n = (A011785 (n + 1) : ℚ)

end A011785

/-! ## A011785.P3711306932494591784

`2*A064767(n+1)/Δ[A049696(n)]`
-/

namespace A011785.P3711306932494591784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A064767 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A011785.P3711306932494591784

namespace A011785

/-- `2*A064767(n+1)/Δ[A049696(n)]` -/
def P3711306932494591784.Spec : Prop :=
  ∀ n, P3711306932494591784.a n = (A011785 (n + 1) : ℚ)

end A011785

/-!
# A011786: Number of 4 X 4 matrices whose determinant is 1 mod n.

The programs for A011786, there is no canonical definition to state claims against.
-/

/-! ## A011786.P17695631324529881536

`A305186(n+1)/Δ[A002088(n)]`
-/

namespace A011786.P17695631324529881536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A011786.P17695631324529881536

/-! ## A011786.P3646486546967289906

`A115224(n+1)*A364771(n+1)`
-/

namespace A011786.P3646486546967289906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115224 (n + 1) * A364771 (n + 1)

end

end A011786.P3646486546967289906

/-! ## A011786.P12150267462825152774

`A305186(n+1)/A000010(n+1)`
-/

namespace A011786.P12150267462825152774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A011786.P12150267462825152774

/-! ## A011786.P10749607653965915517

`A305186(n+1)/sqrt(A127473(n+1))`
-/

namespace A011786.P10749607653965915517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℝ) / Real.sqrt (A127473 (n + 1) : ℝ)

end

end A011786.P10749607653965915517

/-! ## A011786.P11384554109793703414

`A305186(n+1)/A349137(A005408(n))`
-/

namespace A011786.P11384554109793703414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A349137 (A005408 n).toNat : ℚ)

end

end A011786.P11384554109793703414

/-! ## A011786.P17208494449338357232

`A000082(n+1)/A000056(n+1)*A305186(n+1)`
-/

namespace A011786.P17208494449338357232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A000056 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A011786.P17208494449338357232

/-! ## A011786.P13036960182087733945

`A000056(n+1)/A000252(n+1)*A305186(n+1)`
-/

namespace A011786.P13036960182087733945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A011786.P13036960182087733945

/-! ## A011786.P11689709062337450428

`A011785(n+1)/A000252(n+1)*A294705(n+1)`
-/

namespace A011786.P11689709062337450428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ) * (A294705 (n + 1) : ℚ)

end

end A011786.P11689709062337450428

/-! ## A011786.P1949872279910089681

`A011785(n+1)/A064767(n+1)*A305186(n+1)`
-/

namespace A011786.P1949872279910089681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011785 (n + 1) : ℚ) / (A064767 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A011786.P1949872279910089681

/-! ## A011786.P342668591985010239

`A305186(n+1)/(A046073(n+1)*A060594(n+1))`
-/

namespace A011786.P342668591985010239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305186 (n + 1) : ℚ) / (A046073 (n + 1) * A060594 (n + 1) : ℚ)

end

end A011786.P342668591985010239

/-! ## A011786.P18214188230050395210

`A070732(n+1)/A065430(n+1)*A305186(n+1)`
-/

namespace A011786.P18214188230050395210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070732 (n + 1) : ℚ) / (A065430 (n + 1) : ℚ) * (A305186 (n + 1) : ℚ)

end

end A011786.P18214188230050395210

/-!
# A011787: Number of n X n matrices over Z_4 whose determinant is 1.

The programs for A011787, the canonical program `A011787.P10772697605245278222` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011787 has offset 1).

The definition of A011787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011787.P10772697605245278222

`A065128(n+1)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A011787

/-- `A065128(n+1)/2` -/
def P10772697605245278222.Spec : Prop :=
  ∀ n, P10772697605245278222.a n = (A011787 (n + 1) : ℚ)

end A011787

/-! ## A011787.P3932538842673993362

`∏[8^n*A134067(n)]`
-/

namespace A011787.P3932538842673993362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A134067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A011787.P3932538842673993362

namespace A011787

/-- `∏[8^n*A134067(n)]` -/
def P3932538842673993362.Spec : Prop :=
  ∀ n, P3932538842673993362.a n = A011787 (n + 1)

end A011787

/-! ## A011787.P15397617895925753071

`A087540(2*(n+1))/2`
-/

namespace A011787.P15397617895925753071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087540 (2 * (n + 1)) : ℚ) / 2

end

end A011787.P15397617895925753071

namespace A011787

/-- `A087540(2*(n+1))/2` -/
def P15397617895925753071.Spec : Prop :=
  ∀ n, P15397617895925753071.a n = (A011787 (n + 1) : ℚ)

end A011787

/-!
# A011789: Number of directed animals on a certain lattice.

The programs for A011789, there is no canonical definition to state claims against.
-/

/-! ## A011789.P5658584530205801391

`A002264(∑[∑[∑[6^n]]+2])`
-/

namespace A011789.P5658584530205801391
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011789.P5658584530205801391

/-!
# A011790: Number of directed animals on a certain lattice.

The programs for A011790, there is no canonical definition to state claims against.
-/

/-! ## A011790.P14542272952498462553

`A007095(A301421(n+1)-A344654(n))`
-/

namespace A011790.P14542272952498462553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A301421 (n + 1) - A344654 n).toNat

end

end A011790.P14542272952498462553

/-!
# A011791: Number of directed animals on a certain lattice.

The programs for A011791, there is no canonical definition to state claims against.
-/

/-! ## A011791.P12709495638474794675

`A259757(n+1)`
-/

namespace A011791.P12709495638474794675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259757 (n + 1)

end

end A011791.P12709495638474794675

/-! ## A011791.P3129120147873370673

`record[A259757(n)-char[1]]`
-/

namespace A011791.P3129120147873370673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259757 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011791.P3129120147873370673

/-! ## A011791.P889999552394822537

`record[A259757(ceil(xor(1, n)/2))]`
-/

namespace A011791.P889999552394822537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259757 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011791.P889999552394822537

/-! ## A011791.P3696622765953148967

`record[A259757(n-gcd(n, ∑[n]))]`
-/

namespace A011791.P3696622765953148967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259757 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011791.P3696622765953148967

/-! ## A011791.P7587785814963301056

`record[A259757(A000119(n))]`
-/

namespace A011791.P7587785814963301056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259757 (A000119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011791.P7587785814963301056

/-!
# A011792: Number of directed animals on a certain lattice.

The programs for A011792, there is no canonical definition to state claims against.
-/

/-! ## A011792.P13235879044111048038

`A295537(n+1)`
-/

namespace A011792.P13235879044111048038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295537 (n + 1)

end

end A011792.P13235879044111048038

/-! ## A011792.P13657040813812805543

`ratio[-∏[A295537(n)]]`
-/

namespace A011792.P13657040813812805543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A011792.P13657040813812805543

/-! ## A011792.P4389445277070827027

`record[A295537(ceil(xor(1, n)/2))]`
-/

namespace A011792.P4389445277070827027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295537 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011792.P4389445277070827027

/-! ## A011792.P1803763094781036423

`record[A295537(Δ[round(n²/8)])]`
-/

namespace A011792.P1803763094781036423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295537 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011792.P1803763094781036423

/-!
# A011794: Triangle defined by T(n+1, k) = T(n, k-1) + T(n-1, k), T(n,1) = 1, T(1,k) = 1, T(2,k) = min(2,k).

The programs for A011794, the canonical program `A011794.P10538726268991914883` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011794 has offset 1).

The definition of A011794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011794.P10538726268991914883

`A046854(n)+(1-A010054(n))*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A011794

/-- `A046854(n)+(1-A010054(n))*a(n-1)` -/
def P10538726268991914883.Spec : Prop :=
  ∀ n, P10538726268991914883.a n = A011794 (n + 1)

theorem P10538726268991914883.correct : P10538726268991914883.Spec := by
  intro n
  simp only [A011794, Nat.add_sub_cancel]

end A011794

/-! ## A011794.P16602919406979811566

`∑[A046854(n)]-A001911(A003056(n))`
-/

namespace A011794.P16602919406979811566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001911 (A003056 n).toNat

end

end A011794.P16602919406979811566

namespace A011794

/-- `∑[A046854(n)]-A001911(A003056(n))` -/
def P16602919406979811566.Spec : Prop :=
  ∀ n, P16602919406979811566.a n = A011794 (n + 1)

end A011794

/-! ## A011794.P14076070412067311045

`A208245(A245300(n)+A108872(n+1))`
-/

namespace A011794.P14076070412067311045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208245 (A245300 n + A108872 (n + 1)).toNat

end

end A011794.P14076070412067311045

namespace A011794

/-- `A208245(A245300(n)+A108872(n+1))` -/
def P14076070412067311045.Spec : Prop :=
  ∀ n, P14076070412067311045.a n = A011794 (n + 1)

end A011794

/-! ## A011794.P1805108681376944243

`A194055(∑[A046854(n)])`
-/

namespace A011794.P1805108681376944243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011794.P1805108681376944243

namespace A011794

/-- `A194055(∑[A046854(n)])` -/
def P1805108681376944243.Spec : Prop :=
  ∀ n, P1805108681376944243.a n = A011794 (n + 1)

end A011794

/-! ## A011794.P7673309529559573814

`A194055(∑[abs(A066170(n))])`
-/

namespace A011794.P7673309529559573814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066170 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194055 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011794.P7673309529559573814

namespace A011794

/-- `A194055(∑[abs(A066170(n))])` -/
def P7673309529559573814.Spec : Prop :=
  ∀ n, P7673309529559573814.a n = A011794 (n + 1)

end A011794

/-!
# A011795: a(n) = floor(C(n,4)/5).

The programs for A011795, the canonical program `A011795.P12982142309598906818` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011795 has offset 0).

The definition of A011795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 4)/5)` (program `A011795.P12982142309598906818`, by `A011795.P12982142309598906818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011795.P12982142309598906818

`floor(C(n, 4)/5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011795

/-- `floor(C(n, 4)/5)` -/
def P12982142309598906818.Spec : Prop :=
  ∀ n, P12982142309598906818.a n = A011795 n

theorem P12982142309598906818.correct : P12982142309598906818.Spec := by
  intro n
  simp only [A011795]

end A011795

/-! ## A011795.P15999256843046252581

`round(C(n, 4)/5)`
-/

namespace A011795.P15999256843046252581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 4 : ℚ) / 5)

end

end A011795.P15999256843046252581

namespace A011795

/-- `round(C(n, 4)/5)` -/
def P15999256843046252581.Spec : Prop :=
  ∀ n, P15999256843046252581.a n = A011795 n

end A011795

/-! ## A011795.P9631569905957237312

`ceil((C(n, 4)-1)/5)`
-/

namespace A011795.P9631569905957237312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 4 : ℤ) - 1 : ℚ) / 5⌉

end

end A011795.P9631569905957237312

namespace A011795

/-- `ceil((C(n, 4)-1)/5)` -/
def P9631569905957237312.Spec : Prop :=
  ∀ n, P9631569905957237312.a n = A011795 n

end A011795

/-! ## A011795.P6532046948624304642

`A011940(n)/4`
-/

namespace A011795.P6532046948624304642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011940 n : ℚ) / 4

end

end A011795.P6532046948624304642

namespace A011795

/-- `A011940(n)/4` -/
def P6532046948624304642.Spec : Prop :=
  ∀ n, P6532046948624304642.a n = (A011795 n : ℚ)

end A011795

/-! ## A011795.P15644720667962133358

`floor(A000332(n)/5)`
-/

namespace A011795.P15644720667962133358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000332 n : ℚ) / 5⌋

end

end A011795.P15644720667962133358

namespace A011795

/-- `floor(A000332(n)/5)` -/
def P15644720667962133358.Spec : Prop :=
  ∀ n, P15644720667962133358.a n = A011795 n

end A011795

/-! ## A011795.P12880293090857073107

`floor(A011930(n)/6)`
-/

namespace A011795.P12880293090857073107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011930 n : ℚ) / 6⌋

end

end A011795.P12880293090857073107

namespace A011795

/-- `floor(A011930(n)/6)` -/
def P12880293090857073107.Spec : Prop :=
  ∀ n, P12880293090857073107.a n = A011795 n

end A011795

/-! ## A011795.P3155931479643469415

`round(∑{d}[n, A346761(#)]/5)`
-/

namespace A011795.P3155931479643469415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), A346761 d : ℤ) : ℚ) / 5)

end

end A011795.P3155931479643469415

namespace A011795

/-- `round(∑{d}[n, A346761(#)]/5)` -/
def P3155931479643469415.Spec : Prop :=
  ∀ n, P3155931479643469415.a n = A011795 n

end A011795

/-! ## A011795.P1120903976218038016

`round((∑[A050407(n)]-n)/5)`
-/

namespace A011795.P1120903976218038016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 5)

end

end A011795.P1120903976218038016

namespace A011795

/-- `round((∑[A050407(n)]-n)/5)` -/
def P1120903976218038016.Spec : Prop :=
  ∀ n, P1120903976218038016.a n = A011795 n

end A011795

/-! ## A011795.P809413817495515060

`A011930(n)-A000332(n)`
-/

namespace A011795.P809413817495515060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011930 n - A000332 n

end

end A011795.P809413817495515060

namespace A011795

/-- `A011930(n)-A000332(n)` -/
def P809413817495515060.Spec : Prop :=
  ∀ n, P809413817495515060.a n = A011795 n

end A011795

/-! ## A011795.P411513666754853449

`round(Δ[A000389(n)/5])`
-/

namespace A011795.P411513666754853449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000389 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A011795.P411513666754853449

namespace A011795

/-- `round(Δ[A000389(n)/5])` -/
def P411513666754853449.Spec : Prop :=
  ∀ n, P411513666754853449.a n = A011795 n

end A011795

/-! ## A011795.P6402213692948011560

`floor(A000389(n+1)/(n+1))`
-/

namespace A011795.P6402213692948011560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000389 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A011795.P6402213692948011560

namespace A011795

/-- `floor(A000389(n+1)/(n+1))` -/
def P6402213692948011560.Spec : Prop :=
  ∀ n, P6402213692948011560.a n = A011795 n

end A011795

/-! ## A011795.P3561077210539404674

`A277629(n+1)-A277619(n+1)`
-/

namespace A011795.P3561077210539404674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277629 (n + 1) - A277619 (n + 1)

end

end A011795.P3561077210539404674

namespace A011795

/-- `A277629(n+1)-A277619(n+1)` -/
def P3561077210539404674.Spec : Prop :=
  ∀ n, P3561077210539404674.a n = A011795 n

end A011795

/-! ## A011795.P18227330513138558976

`round((A000389(n+1)-A000389(n))/5)`
-/

namespace A011795.P18227330513138558976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000389 (n + 1) - A000389 n : ℚ) / 5)

end

end A011795.P18227330513138558976

namespace A011795

/-- `round((A000389(n+1)-A000389(n))/5)` -/
def P18227330513138558976.Spec : Prop :=
  ∀ n, P18227330513138558976.a n = A011795 n

end A011795

/-! ## A011795.P10194942779218350905

`round(Δ[Δ[A000579(n)]]/5)`
-/

namespace A011795.P10194942779218350905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 5)

end

end A011795.P10194942779218350905

namespace A011795

/-- `round(Δ[Δ[A000579(n)]]/5)` -/
def P10194942779218350905.Spec : Prop :=
  ∀ n, P10194942779218350905.a n = A011795 n

end A011795

/-! ## A011795.P4104671314149430835

`∑[∑[A211535(2*n+1)]-A211535(2*n+1)]`
-/

namespace A011795.P4104671314149430835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211535 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A211535 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011795.P4104671314149430835

namespace A011795

/-- `∑[∑[A211535(2*n+1)]-A211535(2*n+1)]` -/
def P4104671314149430835.Spec : Prop :=
  ∀ n, P4104671314149430835.a n = A011795 n

end A011795

/-! ## A011795.P6699615103629366094

`A211524(∑[abs(2-n)])`
-/

namespace A011795.P6699615103629366094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011795.P6699615103629366094

namespace A011795

/-- `A211524(∑[abs(2-n)])` -/
def P6699615103629366094.Spec : Prop :=
  ∀ n, P6699615103629366094.a n = A011795 n

end A011795

/-! ## A011795.P10764133015586796697

`A011883(∑[n-2]+3)`
-/

namespace A011795.P10764133015586796697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A011795.P10764133015586796697

namespace A011795

/-- `A011883(∑[n-2]+3)` -/
def P10764133015586796697.Spec : Prop :=
  ∀ n, P10764133015586796697.a n = A011795 n

end A011795

/-! ## A011795.P5626563905707232767

`A319973((2-n)²+n+1)`
-/

namespace A011795.P5626563905707232767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 ((2 - (n : ℤ)) ^ 2 + (n + 1 : ℤ)).toNat

end

end A011795.P5626563905707232767

namespace A011795

/-- `A319973((2-n)²+n+1)` -/
def P5626563905707232767.Spec : Prop :=
  ∀ n, P5626563905707232767.a n = A011795 n

end A011795

/-! ## A011795.P13013633682642096202

`A008613((2-n)²+n+3)`
-/

namespace A011795.P13013633682642096202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 ((2 - (n : ℤ)) ^ 2 + (n + 3 : ℤ)).toNat

end

end A011795.P13013633682642096202

namespace A011795

/-- `A008613((2-n)²+n+3)` -/
def P13013633682642096202.Spec : Prop :=
  ∀ n, P13013633682642096202.a n = A011795 n

end A011795

/-!
# A011796: Number of irreducible alternating Euler sums of depth 6 and weight 6+2n.

The programs for A011796, there is no canonical definition to state claims against.
-/

/-! ## A011796.P673503318124659459

`A381289(n+7)-A307985(n+1)`
-/

namespace A011796.P673503318124659459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381289 (n + 7) - A307985 (n + 1)

end

end A011796.P673503318124659459

/-! ## A011796.P2379587107040257982

`A050191(n+7)/(n+7)`
-/

namespace A011796.P2379587107040257982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050191 (n + 7) : ℚ) / (n + 7 : ℚ)

end

end A011796.P2379587107040257982

/-! ## A011796.P14188962408069311197

`A051168(A056121(n)+34)`
-/

namespace A011796.P14188962408069311197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A056121 n + 34).toNat

end

end A011796.P14188962408069311197

/-! ## A011796.P9963643104828303654

`A051168(A000124(n+7)+5)`
-/

namespace A011796.P9963643104828303654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000124 (n + 7) + 5).toNat

end

end A011796.P9963643104828303654

/-! ## A011796.P9237748922817807206

`A051168(A056126(n)+29)`
-/

namespace A011796.P9237748922817807206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A056126 n + 29).toNat

end

end A011796.P9237748922817807206

/-! ## A011796.P5974916622580568698

`A051168(A052905(n+5)-2)`
-/

namespace A011796.P5974916622580568698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A052905 (n + 5) - 2).toNat

end

end A011796.P5974916622580568698

/-! ## A011796.P7347319440379010924

`record[A051168(A155212(n+1)+1)]`
-/

namespace A011796.P7347319440379010924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A155212 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011796.P7347319440379010924

/-! ## A011796.P17812912187245755406

`A051168(A000217(n+7)+n+1)`
-/

namespace A011796.P17812912187245755406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000217 (n + 7) + (n : ℤ) + 1).toNat

end

end A011796.P17812912187245755406

/-! ## A011796.P16742976063248894181

`A011793((n+3)²+5)`
-/

namespace A011796.P16742976063248894181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011793 ((n + 3) ^ 2 + 5)

end

end A011796.P16742976063248894181

/-!
# A011797: a(n) = floor(C(n,6)/7).

The programs for A011797, the canonical program `A011797.P13589315093109291147` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011797 has offset 0).

The definition of A011797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, 6)/7)` (program `A011797.P13589315093109291147`, by `A011797.P13589315093109291147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011797.P13589315093109291147

`floor(C(n, 6)/7)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011797

/-- `floor(C(n, 6)/7)` -/
def P13589315093109291147.Spec : Prop :=
  ∀ n, P13589315093109291147.a n = A011797 n

theorem P13589315093109291147.correct : P13589315093109291147.Spec := by
  intro n
  simp only [A011797]

end A011797

/-! ## A011797.P10756497033139451007

`round(C(n, 6)/7)`
-/

namespace A011797.P10756497033139451007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 6 : ℚ) / 7)

end

end A011797.P10756497033139451007

namespace A011797

/-- `round(C(n, 6)/7)` -/
def P10756497033139451007.Spec : Prop :=
  ∀ n, P10756497033139451007.a n = A011797 n

end A011797

/-! ## A011797.P14088341669453484549

`ceil((C(n, 6)-1)/7)`
-/

namespace A011797.P14088341669453484549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 6 : ℤ) - 1 : ℚ) / 7⌉

end

end A011797.P14088341669453484549

namespace A011797

/-- `ceil((C(n, 6)-1)/7)` -/
def P14088341669453484549.Spec : Prop :=
  ∀ n, P14088341669453484549.a n = A011797 n

end A011797

/-! ## A011797.P9094700832456779309

`floor(A000579(n)/7)`
-/

namespace A011797.P9094700832456779309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000579 n : ℚ) / 7⌋

end

end A011797.P9094700832456779309

namespace A011797

/-- `floor(A000579(n)/7)` -/
def P9094700832456779309.Spec : Prop :=
  ∀ n, P9094700832456779309.a n = A011797 n

end A011797

/-! ## A011797.P6408637263560730491

`floor((∑[A000389(n)]-A000389(n))/7)`
-/

namespace A011797.P6408637263560730491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - A000389 n : ℤ) : ℚ) / 7⌋

end

end A011797.P6408637263560730491

namespace A011797

/-- `floor((∑[A000389(n)]-A000389(n))/7)` -/
def P6408637263560730491.Spec : Prop :=
  ∀ n, P6408637263560730491.a n = A011797 n

end A011797

/-! ## A011797.P11357828442134242172

`round(A000579(n)/7)%A239988(n+1)`
-/

namespace A011797.P11357828442134242172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000579 n : ℚ) / 7)) (A239988 (n + 1))

end

end A011797.P11357828442134242172

namespace A011797

/-- `round(A000579(n)/7)%A239988(n+1)` -/
def P11357828442134242172.Spec : Prop :=
  ∀ n, P11357828442134242172.a n = A011797 n

end A011797

/-! ## A011797.P15682519343072150153

`floor(A007318(∑[n]+6)/7)`
-/

namespace A011797.P15682519343072150153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 6) : ℚ) / 7⌋

end

end A011797.P15682519343072150153

namespace A011797

/-- `floor(A007318(∑[n]+6)/7)` -/
def P15682519343072150153.Spec : Prop :=
  ∀ n, P15682519343072150153.a n = A011797 n

end A011797

