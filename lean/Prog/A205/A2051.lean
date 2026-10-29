import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C047
import Seq.B001.C000
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A205100: The index j<k such that n divides k!!-j!!, where k is the least index (A204982) for which such j exists.

The programs for A205100, there is no canonical definition to state claims against.
-/

/-! ## A205100.P16948071434645514934

`A002260(A204913(n+1))`
-/

namespace A205100.P16948071434645514934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A204913 (n + 1)).toNat

end

end A205100.P16948071434645514934

/-! ## A205100.P11425391982348551517

`A131818(A204913(n+1)+1)-1`
-/

namespace A205100.P11425391982348551517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A204913 (n + 1) + 1).toNat - 1

end

end A205100.P11425391982348551517

/-! ## A205100.P2318669416542677608

`A204982(n+1)-A004736(A204913(n+1))`
-/

namespace A205100.P2318669416542677608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204982 (n + 1) - A004736 (A204913 (n + 1)).toNat

end

end A205100.P2318669416542677608

/-! ## A205100.P7502180734382538313

`gcd(A131818(A204913(n+1)), A205102(n+1))`
-/

namespace A205100.P7502180734382538313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131818 (A204913 (n + 1)).toNat) (A205102 (n + 1))

end

end A205100.P7502180734382538313

/-! ## A205100.P17669729159683027069

`A003057(A204913(n+1)+1)-A004736(A204913(n+1))`
-/

namespace A205100.P17669729159683027069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A204913 (n + 1) + 1).toNat - A004736 (A204913 (n + 1)).toNat

end

end A205100.P17669729159683027069

/-! ## A205100.P14723095597957407749

`A097285(2*A204913(n+1)-1)`
-/

namespace A205100.P14723095597957407749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A204913 (n + 1) - 1).toNat

end

end A205100.P14723095597957407749

/-! ## A205100.P17522697918105276984

`A097285(A204913(n+1)+A204913(n+1)-1)`
-/

namespace A205100.P17522697918105276984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A204913 (n + 1) + (A204913 (n + 1) - 1)).toNat

end

end A205100.P17522697918105276984

/-! ## A205100.P1656195103532963444

`A002034(A205102(n+1))`
-/

namespace A205100.P1656195103532963444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A205102 (n + 1)).toNat

end

end A205100.P1656195103532963444

/-! ## A205100.P11571251987497698236

`A002034(A205101(n+1)-A205103(n+1))`
-/

namespace A205100.P11571251987497698236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A205101 (n + 1) - A205103 (n + 1)).toNat

end

end A205100.P11571251987497698236

/-!
# A205101: Least k!! such that n divides k!!-j!! for some j<k.

The programs for A205101, there is no canonical definition to state claims against.
-/

/-! ## A205101.P8200136594363647367

`A006882(A204982(n+1))`
-/

namespace A205101.P8200136594363647367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A204982 (n + 1)).toNat

end

end A205101.P8200136594363647367

/-! ## A205101.P15935455254532515637

`A205103(n+1)+A205102(n+1)`
-/

namespace A205101.P15935455254532515637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205103 (n + 1) + A205102 (n + 1)

end

end A205101.P15935455254532515637

/-! ## A205101.P15341360098455755769

`A205102(n+1)+(n+1)*A205104(n+1)`
-/

namespace A205101.P15341360098455755769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205102 (n + 1) + (n + 1 : ℤ) * A205104 (n + 1)

end

end A205101.P15341360098455755769

/-! ## A205101.P8214041046714655125

`A205103(n+1)+A006882(A205100(n+1))`
-/

namespace A205101.P8214041046714655125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205103 (n + 1) + A006882 (A205100 (n + 1)).toNat

end

end A205101.P8214041046714655125

/-! ## A205101.P18190619333437141418

`A205102(n+1)+A204912(A204913(n+1))`
-/

namespace A205101.P18190619333437141418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205102 (n + 1) + A204912 (A204913 (n + 1)).toNat

end

end A205101.P18190619333437141418

/-! ## A205101.P9716586115637892149

`A129116(A204982(n+1)+A000217(A204982(n+1)))`
-/

namespace A205101.P9716586115637892149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A204982 (n + 1) + A000217 (A204982 (n + 1)).toNat).toNat

end

end A205101.P9716586115637892149

/-!
# A205102: The number j!! such that n divides k!!-j!!>0, where k is the least positive integer for which such a j exists.

The programs for A205102, there is no canonical definition to state claims against.
-/

/-! ## A205102.P5660221670020019631

`A006882(A205100(n+1))`
-/

namespace A205102.P5660221670020019631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A205100 (n + 1)).toNat

end

end A205102.P5660221670020019631

/-! ## A205102.P647765060471159978

`A006882(A002260(A204913(n+1)))`
-/

namespace A205102.P647765060471159978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A002260 (A204913 (n + 1)).toNat).toNat

end

end A205102.P647765060471159978

/-! ## A205102.P3456977507688229754

`A205101(n+1)-A205103(n+1)`
-/

namespace A205102.P3456977507688229754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205101 (n + 1) - A205103 (n + 1)

end

end A205102.P3456977507688229754

/-! ## A205102.P2649846350322702582

`A205101(n+1)-(n+1)*A205104(n+1)`
-/

namespace A205102.P2649846350322702582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205101 (n + 1) - (n + 1 : ℤ) * A205104 (n + 1)

end

end A205102.P2649846350322702582

/-! ## A205102.P7652313456292362799

`A006882(A204982(n+1))-A205103(n+1)`
-/

namespace A205102.P7652313456292362799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A204982 (n + 1)).toNat - A205103 (n + 1)

end

end A205102.P7652313456292362799

/-! ## A205102.P7426796891813692569

`A205101(n+1)-A204912(A204913(n+1))`
-/

namespace A205102.P7426796891813692569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205101 (n + 1) - A204912 (A204913 (n + 1)).toNat

end

end A205102.P7426796891813692569

/-!
# A205103: k!!-j!!, where (k!!,j!!) is the least pair of double factorials for which n divides their difference.

The programs for A205103, there is no canonical definition to state claims against.
-/

/-! ## A205103.P11483862450094658672

`(n+1)*A205104(n+1)`
-/

namespace A205103.P11483862450094658672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205104 (n + 1)

end

end A205103.P11483862450094658672

/-! ## A205103.P8556194559296579037

`A204912(A204913(n+1))`
-/

namespace A205103.P8556194559296579037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204912 (A204913 (n + 1)).toNat

end

end A205103.P8556194559296579037

/-! ## A205103.P14100276441882763007

`A205101(n+1)-A205102(n+1)`
-/

namespace A205103.P14100276441882763007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205101 (n + 1) - A205102 (n + 1)

end

end A205103.P14100276441882763007

/-! ## A205103.P11558145165415683477

`A006882(A204982(n+1))-A205102(n+1)`
-/

namespace A205103.P11558145165415683477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A204982 (n + 1)).toNat - A205102 (n + 1)

end

end A205103.P11558145165415683477

/-! ## A205103.P8560335402800128362

`A205101(n+1)-A006882(A205100(n+1))`
-/

namespace A205103.P8560335402800128362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205101 (n + 1) - A006882 (A205100 (n + 1)).toNat

end

end A205103.P8560335402800128362

/-!
# A205104: a(n) = (1/n)*A205103(n).

The programs for A205104, there is no canonical definition to state claims against.
-/

/-! ## A205104.P5878365754583244814

`1/(n+1)*A205103(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205104.P5878365754583244814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205103 (n + 1) : ℚ)

end

end A205104.P5878365754583244814

/-! ## A205104.P6938487695866934557

`A205103(n+1)/(n+1)`
-/

namespace A205104.P6938487695866934557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205103 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205104.P6938487695866934557

/-! ## A205104.P10919658058495690766

`A204912(A204913(n+1))/(n+1)`
-/

namespace A205104.P10919658058495690766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204912 (A204913 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205104.P10919658058495690766

/-! ## A205104.P9004136270367840564

`(A205101(n+1)-A205102(n+1))/(n+1)`
-/

namespace A205104.P9004136270367840564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205101 (n + 1) - A205102 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205104.P9004136270367840564

/-! ## A205104.P16459415392774232411

`(A205101(n+1)-A006882(A205100(n+1)))/(n+1)`
-/

namespace A205104.P16459415392774232411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205101 (n + 1) - A006882 (A205100 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205104.P16459415392774232411

/-!
# A205105: Ordered differences of numbers 3^j-2^j, as in A001047.

The programs for A205105, there is no canonical definition to state claims against.
-/

/-! ## A205105.P7166717765106544325

`A091311(A204985(n+1))`
-/

namespace A205105.P7166717765106544325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091311 (A204985 (n + 1)).toNat

end

end A205105.P7166717765106544325

/-!
# A205107: The least index j < k such that n divides s(k) - s(j), where s(m) = 3^m - 2^m = A001047(m) and k = A205000(n) is the least index for which such j exists.

The programs for A205107, there is no canonical definition to state claims against.
-/

/-! ## A205107.P16097976714502790407

`A020915(floor(log2(A205109(n+1))))`
-/

namespace A205107.P16097976714502790407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Nat.log 2 (A205109 (n + 1)).toNat)

end

end A205107.P16097976714502790407

/-! ## A205107.P4371800195126054708

`A002260(A205106(n+1))`
-/

namespace A205107.P4371800195126054708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205106 (n + 1)).toNat

end

end A205107.P4371800195126054708

/-! ## A205107.P1798289794679201

`A131818(A205106(n+1)+1)-1`
-/

namespace A205107.P1798289794679201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205106 (n + 1) + 1).toNat - 1

end

end A205107.P1798289794679201

/-! ## A205107.P13694154984820715672

`A205000(n+1)-A004736(A205106(n+1))`
-/

namespace A205107.P13694154984820715672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205000 (n + 1) - A004736 (A205106 (n + 1)).toNat

end

end A205107.P13694154984820715672

/-! ## A205107.P15909938566047150996

`A077430((A205109(n+1)+1)/2)`
-/

namespace A205107.P15909938566047150996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (SequenceMachineLib.roundAway ((A205109 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A205107.P15909938566047150996

/-! ## A205107.P16247356840943808483

`A081604((A205109(n+1)+1)/2)`
-/

namespace A205107.P16247356840943808483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.roundAway ((A205109 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A205107.P16247356840943808483

/-!
# A205108: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j) = 3^j-2^j = A001047(j).

The programs for A205108, there is no canonical definition to state claims against.
-/

/-! ## A205108.P13178231296537989771

`A001047(A205000(n+1))`
-/

namespace A205108.P13178231296537989771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A205000 (n + 1)).toNat

end

end A205108.P13178231296537989771

/-! ## A205108.P16043872891862013549

`A205110(n+1)+A205109(n+1)`
-/

namespace A205108.P16043872891862013549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205110 (n + 1) + A205109 (n + 1)

end

end A205108.P16043872891862013549

/-! ## A205108.P120582196384191711

`A205109(n+1)+(n+1)*A205111(n+1)`
-/

namespace A205108.P120582196384191711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205109 (n + 1) + (n + 1 : ℤ) * A205111 (n + 1)

end

end A205108.P120582196384191711

/-! ## A205108.P16944331398420189138

`A205110(n+1)+A001047(A205107(n+1))`
-/

namespace A205108.P16944331398420189138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205110 (n + 1) + A001047 (A205107 (n + 1)).toNat

end

end A205108.P16944331398420189138

/-! ## A205108.P1622159737426847462

`A056182(A205000(n+1))/A000005(A051698(n))`
-/

namespace A205108.P1622159737426847462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (A205000 (n + 1)).toNat : ℚ) / (A000005 (A051698 n).toNat : ℚ)

end

end A205108.P1622159737426847462

/-! ## A205108.P15765454368288609341

`A056182(A205000(n+1))/A000005(A080830(n+1))`
-/

namespace A205108.P15765454368288609341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (A205000 (n + 1)).toNat : ℚ) / (A000005 (A080830 (n + 1)).toNat : ℚ)

end

end A205108.P15765454368288609341

/-! ## A205108.P18379427730854798806

`A205109(n+1)+A205105(A205106(n+1))`
-/

namespace A205108.P18379427730854798806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205109 (n + 1) + A205105 (A205106 (n + 1)).toNat

end

end A205108.P18379427730854798806

/-! ## A205108.P7495339604429431218

`A348507(2^A205000(n+1))`
-/

namespace A205108.P7495339604429431218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A205000 (n + 1) : ℤ))).toNat

end

end A205108.P7495339604429431218

/-!
# A205109: The number s(j) such that n divides s(k)-s(j)>0, where k is the least positive integer for which such a j exists, and s(j)=3^j-2^j.

The programs for A205109, there is no canonical definition to state claims against.
-/

/-! ## A205109.P14571915380003082200

`A001047(A205107(n+1))`
-/

namespace A205109.P14571915380003082200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A205107 (n + 1)).toNat

end

end A205109.P14571915380003082200

/-! ## A205109.P15071584565314774063

`A056182(A205107(n+1))/A020639(2*(n+1))`
-/

namespace A205109.P15071584565314774063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (A205107 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A205109.P15071584565314774063

/-! ## A205109.P10437235135598670525

`A056182(A205107(n+1))/A000034(2*n+1)`
-/

namespace A205109.P10437235135598670525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (A205107 (n + 1)).toNat : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A205109.P10437235135598670525

/-! ## A205109.P1991689982997170155

`A056182(A205107(n+1))/A000005(A002144(n+1))`
-/

namespace A205109.P1991689982997170155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (A205107 (n + 1)).toNat : ℚ) / (A000005 (A002144 (n + 1)).toNat : ℚ)

end

end A205109.P1991689982997170155

/-! ## A205109.P11773629869444879608

`A205108(n+1)-A205110(n+1)`
-/

namespace A205109.P11773629869444879608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205108 (n + 1) - A205110 (n + 1)

end

end A205109.P11773629869444879608

/-! ## A205109.P14977193174687135533

`A001047(A205000(n+1))-A205110(n+1)`
-/

namespace A205109.P14977193174687135533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A205000 (n + 1)).toNat - A205110 (n + 1)

end

end A205109.P14977193174687135533

/-! ## A205109.P357354450971297341

`A205108(n+1)-A205105(A205106(n+1))`
-/

namespace A205109.P357354450971297341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205108 (n + 1) - A205105 (A205106 (n + 1)).toNat

end

end A205109.P357354450971297341

/-! ## A205109.P8980387201164443472

`A348507(2^A205107(n+1))`
-/

namespace A205109.P8980387201164443472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A205107 (n + 1) : ℤ))).toNat

end

end A205109.P8980387201164443472

/-!
# A205110: s(k)-s(j), where (s(k),s(j)) is the least pair of numbers given by s(j)=3^j-2^j which n divides their difference.

The programs for A205110, there is no canonical definition to state claims against.
-/

/-! ## A205110.P3495239411885907172

`(n+1)*A205111(n+1)`
-/

namespace A205110.P3495239411885907172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205111 (n + 1)

end

end A205110.P3495239411885907172

/-! ## A205110.P13496075643345582614

`A205108(n+1)-A205109(n+1)`
-/

namespace A205110.P13496075643345582614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205108 (n + 1) - A205109 (n + 1)

end

end A205110.P13496075643345582614

/-! ## A205110.P5563430410646821034

`A001047(A205000(n+1))-A205109(n+1)`
-/

namespace A205110.P5563430410646821034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A205000 (n + 1)).toNat - A205109 (n + 1)

end

end A205110.P5563430410646821034

/-! ## A205110.P12206002312994020195

`A205108(n+1)-A001047(A205107(n+1))`
-/

namespace A205110.P12206002312994020195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205108 (n + 1) - A001047 (A205107 (n + 1)).toNat

end

end A205110.P12206002312994020195

/-! ## A205110.P12500994426035180817

`A205105(A205106(n+1))`
-/

namespace A205110.P12500994426035180817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205105 (A205106 (n + 1)).toNat

end

end A205110.P12500994426035180817

/-!
# A205111: a(n) = A205110(n)/n.

The programs for A205111, there is no canonical definition to state claims against.
-/

/-! ## A205111.P11896834992010628167

`A205110(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205111.P11896834992010628167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205110 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205111.P11896834992010628167

/-! ## A205111.P2191961159071681780

`(A205108(n+1)-A205109(n+1))/(n+1)`
-/

namespace A205111.P2191961159071681780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205108 (n + 1) - A205109 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205111.P2191961159071681780

/-! ## A205111.P9483614164629267277

`(A001047(A205000(n+1))-A205109(n+1))/(n+1)`
-/

namespace A205111.P9483614164629267277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 (A205000 (n + 1)).toNat - A205109 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205111.P9483614164629267277

/-! ## A205111.P4446097692511306831

`(A205108(n+1)-A001047(A205107(n+1)))/(n+1)`
-/

namespace A205111.P4446097692511306831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205108 (n + 1) - A001047 (A205107 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205111.P4446097692511306831

/-! ## A205111.P3995261108337653833

`A205105(A205106(n+1))/(n+1)`
-/

namespace A205111.P3995261108337653833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205105 (A205106 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205111.P3995261108337653833

/-!
# A205112: Ordered differences of Lucas numbers.

The programs for A205112, the canonical program `A205112.P14616440800244289821` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205112 has offset 1).

The definition of A205112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205112.P6189231653080462799

`A000032(A003056(n)+2)-A104765(n+1)`
-/

namespace A205112.P6189231653080462799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A003056 n + 2).toNat - A104765 (n + 1)

end

end A205112.P6189231653080462799

namespace A205112

/-- `A000032(A003056(n)+2)-A104765(n+1)` -/
def P6189231653080462799.Spec : Prop :=
  ∀ n, P6189231653080462799.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P14616440800244289821

`A000032(A003057(n+2))-A104765(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A205112

/-- `A000032(A003057(n+2))-A104765(n+1)` -/
def P14616440800244289821.Spec : Prop :=
  ∀ n, P14616440800244289821.a n = A205112 (n + 1)

theorem P14616440800244289821.correct : P14616440800244289821.Spec := by
  intro n
  simp only [A205112, Nat.add_sub_cancel]

end A205112

/-! ## A205112.P15947329836798880191

`A000204(A003056(n)+2)-A104765(n+1)`
-/

namespace A205112.P15947329836798880191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A003056 n + 2).toNat - A104765 (n + 1)

end

end A205112.P15947329836798880191

namespace A205112

/-- `A000204(A003056(n)+2)-A104765(n+1)` -/
def P15947329836798880191.Spec : Prop :=
  ∀ n, P15947329836798880191.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P18174625665407305910

`A000032(A002024(n+1)+1)-A104765(n+1)`
-/

namespace A205112.P18174625665407305910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002024 (n + 1) + 1).toNat - A104765 (n + 1)

end

end A205112.P18174625665407305910

namespace A205112

/-- `A000032(A002024(n+1)+1)-A104765(n+1)` -/
def P18174625665407305910.Spec : Prop :=
  ∀ n, P18174625665407305910.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P1166693838387998374

`A001610(A002024(n+1))-A001610(A002262(n))`
-/

namespace A205112.P1166693838387998374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (A002024 (n + 1)).toNat - A001610 (A002262 n).toNat

end

end A205112.P1166693838387998374

namespace A205112

/-- `A001610(A002024(n+1))-A001610(A002262(n))` -/
def P1166693838387998374.Spec : Prop :=
  ∀ n, P1166693838387998374.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P4637318194346052168

`A000032(A003057(n+2))-A000032(A002260(n+1))`
-/

namespace A205112.P4637318194346052168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A003057 (n + 2)).toNat - A000032 (A002260 (n + 1)).toNat

end

end A205112.P4637318194346052168

namespace A205112

/-- `A000032(A003057(n+2))-A000032(A002260(n+1))` -/
def P4637318194346052168.Spec : Prop :=
  ∀ n, P4637318194346052168.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P8558657104524272536

`A067979(A127739(n+1))-A104765(n+1)`
-/

namespace A205112.P8558657104524272536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A127739 (n + 1)).toNat - A104765 (n + 1)

end

end A205112.P8558657104524272536

namespace A205112

/-- `A067979(A127739(n+1))-A104765(n+1)` -/
def P8558657104524272536.Spec : Prop :=
  ∀ n, P8558657104524272536.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P12896797941398053297

`A067979(A127739(n+1))-A000032(A002260(n+1))`
-/

namespace A205112.P12896797941398053297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A127739 (n + 1)).toNat - A000032 (A002260 (n + 1)).toNat

end

end A205112.P12896797941398053297

namespace A205112

/-- `A067979(A127739(n+1))-A000032(A002260(n+1))` -/
def P12896797941398053297.Spec : Prop :=
  ∀ n, P12896797941398053297.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P9257886815146942158

`A000032(A097285(2*(n+1)))-A000032(A097285(2*n+1))`
-/

namespace A205112.P9257886815146942158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A097285 (2 * (n + 1))).toNat - A000032 (A097285 (2 * n + 1)).toNat

end

end A205112.P9257886815146942158

namespace A205112

/-- `A000032(A097285(2*(n+1)))-A000032(A097285(2*n+1))` -/
def P9257886815146942158.Spec : Prop :=
  ∀ n, P9257886815146942158.a n = A205112 (n + 1)

end A205112

/-! ## A205112.P13279632829552957143

`A008486(A204922(n+1))-A193999(n+1)`
-/

namespace A205112.P13279632829552957143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A204922 (n + 1)).toNat - A193999 (n + 1)

end

end A205112.P13279632829552957143

namespace A205112

/-- `A008486(A204922(n+1))-A193999(n+1)` -/
def P13279632829552957143.Spec : Prop :=
  ∀ n, P13279632829552957143.a n = A205112 (n + 1)

end A205112

/-!
# A205114: Least k such that n divides L(k)-L(j) for some j satisfying 1<=j<k, where L(j) is the j-th Lucas number (A000032).

The programs for A205114, there is no canonical definition to state claims against.
-/

/-! ## A205114.P8850335426034872969

`A002024(A205113(n+1))+1`
-/

namespace A205114.P8850335426034872969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205113 (n + 1)).toNat + 1

end

end A205114.P8850335426034872969

/-! ## A205114.P10328967090366173608

`A003057(A205113(n+1)+1)`
-/

namespace A205114.P10328967090366173608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205113 (n + 1) + 1).toNat

end

end A205114.P10328967090366173608

/-! ## A205114.P4106058944524641231

`A205115(n+1)+A004736(A205113(n+1))`
-/

namespace A205114.P4106058944524641231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205115 (n + 1) + A004736 (A205113 (n + 1)).toNat

end

end A205114.P4106058944524641231

/-! ## A205114.P14780852884327162544

`A004736(A205113(n+1)+A004736(A205113(n+1)))`
-/

namespace A205114.P14780852884327162544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205113 (n + 1) + A004736 (A205113 (n + 1)).toNat).toNat

end

end A205114.P14780852884327162544

/-! ## A205114.P12470421041788160937

`A097285(2*A205113(n+1))`
-/

namespace A205114.P12470421041788160937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205113 (n + 1)).toNat

end

end A205114.P12470421041788160937

/-! ## A205114.P5451502221259718451

`A130245(A205118(n+1))`
-/

namespace A205114.P5451502221259718451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A205118 (n + 1)).toNat

end

end A205114.P5451502221259718451

/-! ## A205114.P10560125905045919001

`A130245((n+1)*A205119(n+1))`
-/

namespace A205114.P10560125905045919001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ((n + 1 : ℤ) * A205119 (n + 1)).toNat

end

end A205114.P10560125905045919001

/-! ## A205114.P15882314567072224891

`A130241(A205116(n+1))`
-/

namespace A205114.P15882314567072224891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (A205116 (n + 1)).toNat

end

end A205114.P15882314567072224891

/-! ## A205114.P5603493509857827363

`A205115(2*A205116(n+1))+1`
-/

namespace A205114.P5603493509857827363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205115 (2 * A205116 (n + 1)).toNat + 1

end

end A205114.P5603493509857827363

/-! ## A205114.P4833035735856531376

`A132365(2*A205116(n+1)-A205116(n+1))`
-/

namespace A205114.P4833035735856531376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132365 (2 * A205116 (n + 1) - A205116 (n + 1)).toNat

end

end A205114.P4833035735856531376

/-!
# A205115: The index j<k such that n divides s(k)-s(j), where k is the least index (A205114) for which such j exists, and s=(1,3,4,7,11,18...), the Lucas numbers.

The programs for A205115, there is no canonical definition to state claims against.
-/

/-! ## A205115.P12116728199233313242

`A002260(A205113(n+1))`
-/

namespace A205115.P12116728199233313242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205113 (n + 1)).toNat

end

end A205115.P12116728199233313242

/-! ## A205115.P7545717398252926418

`A144328(A205113(n+1)+1)`
-/

namespace A205115.P7545717398252926418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A205113 (n + 1) + 1).toNat

end

end A205115.P7545717398252926418

/-! ## A205115.P15455890596231516267

`A205114(n+1)-A004736(A205113(n+1))`
-/

namespace A205115.P15455890596231516267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205114 (n + 1) - A004736 (A205113 (n + 1)).toNat

end

end A205115.P15455890596231516267

/-! ## A205115.P9230469806584285144

`A003057(A205113(n+1)+1)-A004736(A205113(n+1))`
-/

namespace A205115.P9230469806584285144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205113 (n + 1) + 1).toNat - A004736 (A205113 (n + 1)).toNat

end

end A205115.P9230469806584285144

/-! ## A205115.P4561599526220171612

`A097285(2*A205113(n+1)-1)`
-/

namespace A205115.P4561599526220171612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205113 (n + 1) - 1).toNat

end

end A205115.P4561599526220171612

/-! ## A205115.P10708784128926580745

`A097285(A205113(n+1)+A205113(n+1)-1)`
-/

namespace A205115.P10708784128926580745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205113 (n + 1) + (A205113 (n + 1) - 1)).toNat

end

end A205115.P10708784128926580745

/-! ## A205115.P7041616214475967217

`A130241(A205117(n+1))`
-/

namespace A205115.P7041616214475967217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (A205117 (n + 1)).toNat

end

end A205115.P7041616214475967217

/-! ## A205115.P3599299547223897897

`A132365(A205117(n+1))%A000040(n+1)`
-/

namespace A205115.P3599299547223897897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132365 (A205117 (n + 1)).toNat) (A000040 (n + 1))

end

end A205115.P3599299547223897897

/-! ## A205115.P1710620687275259093

`A205114(A205117(n+1))-A007318(C(2, n))`
-/

namespace A205115.P1710620687275259093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205114 (A205117 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A205115.P1710620687275259093

/-! ## A205115.P10405706870461876928

`A205114(A205117(n+1))-log2(A020639(2*(n+1)))`
-/

namespace A205115.P10405706870461876928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205114 (A205117 (n + 1)).toNat : ℝ) - Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A205115.P10405706870461876928

/-!
# A205116: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=is the j-th Lucas number.

The programs for A205116, there is no canonical definition to state claims against.
-/

/-! ## A205116.P12492784084055389240

`A000032(A205114(n+1))`
-/

namespace A205116.P12492784084055389240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A205114 (n + 1)).toNat

end

end A205116.P12492784084055389240

/-! ## A205116.P11517488994783810380

`A205118(n+1)+A205117(n+1)`
-/

namespace A205116.P11517488994783810380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205118 (n + 1) + A205117 (n + 1)

end

end A205116.P11517488994783810380

/-! ## A205116.P6934000673586676879

`A000204(A205114(n+1)%(n+3))`
-/

namespace A205116.P6934000673586676879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (Int.tmod (A205114 (n + 1)) (n + 3 : ℤ)).toNat

end

end A205116.P6934000673586676879

/-! ## A205116.P1662701950842757454

`A205117(n+1)+(n+1)*A205119(n+1)`
-/

namespace A205116.P1662701950842757454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205117 (n + 1) + (n + 1 : ℤ) * A205119 (n + 1)

end

end A205116.P1662701950842757454

/-! ## A205116.P8096597895247106532

`A205118(n+1)+A000032(A205115(n+1))`
-/

namespace A205116.P8096597895247106532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205118 (n + 1) + A000032 (A205115 (n + 1)).toNat

end

end A205116.P8096597895247106532

/-! ## A205116.P3619084003164251841

`A205117(n+1)+A205112(A205113(n+1))`
-/

namespace A205116.P3619084003164251841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205117 (n + 1) + A205112 (A205113 (n + 1)).toNat

end

end A205116.P3619084003164251841

/-! ## A205116.P17073055880426096348

`A000032(A130245(A205118(n+1)))`
-/

namespace A205116.P17073055880426096348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130245 (A205118 (n + 1)).toNat).toNat

end

end A205116.P17073055880426096348

/-!
# A205117: The number s(j) such that n divides s(k)-s(j), where s(j) is the j-th Lucas number and k is the least positive integer for which such a j with 0<j<k exists.

The programs for A205117, there is no canonical definition to state claims against.
-/

/-! ## A205117.P3002764237848200658

`A000032(A205115(n+1))`
-/

namespace A205117.P3002764237848200658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A205115 (n + 1)).toNat

end

end A205117.P3002764237848200658

/-! ## A205117.P6222618804806894928

`A000204(A205115(n+1)%(2*n+3))`
-/

namespace A205117.P6222618804806894928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (Int.tmod (A205115 (n + 1)) (2 * n + 3 : ℤ)).toNat

end

end A205117.P6222618804806894928

/-! ## A205117.P8521836701062017749

`A205116(n+1)-A205118(n+1)`
-/

namespace A205117.P8521836701062017749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205116 (n + 1) - A205118 (n + 1)

end

end A205117.P8521836701062017749

/-! ## A205117.P12562447865328228420

`A205116(n+1)-(n+1)*A205119(n+1)`
-/

namespace A205117.P12562447865328228420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205116 (n + 1) - (n + 1 : ℤ) * A205119 (n + 1)

end

end A205117.P12562447865328228420

/-! ## A205117.P8744595869946238270

`A000032(A205114(n+1))-A205118(n+1)`
-/

namespace A205117.P8744595869946238270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A205114 (n + 1)).toNat - A205118 (n + 1)

end

end A205117.P8744595869946238270

/-! ## A205117.P17183188422669023879

`A104765(A205113(n+1))`
-/

namespace A205117.P17183188422669023879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104765 (A205113 (n + 1)).toNat

end

end A205117.P17183188422669023879

/-! ## A205117.P4361863779037822606

`A205116(n+1)-A205112(A205113(n+1))`
-/

namespace A205117.P4361863779037822606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205116 (n + 1) - A205112 (A205113 (n + 1)).toNat

end

end A205117.P4361863779037822606

/-!
# A205118: s(k)-s(j), where (s(k),s(j)) is the least pair of Lucas numbers for which n divides their difference.

The programs for A205118, there is no canonical definition to state claims against.
-/

/-! ## A205118.P11152953098078654883

`(n+1)*A205119(n+1)`
-/

namespace A205118.P11152953098078654883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205119 (n + 1)

end

end A205118.P11152953098078654883

/-! ## A205118.P1688818067628588985

`A205116(n+1)-A205117(n+1)`
-/

namespace A205118.P1688818067628588985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205116 (n + 1) - A205117 (n + 1)

end

end A205118.P1688818067628588985

/-! ## A205118.P4001883245881318077

`A000032(A205114(n+1))-A205117(n+1)`
-/

namespace A205118.P4001883245881318077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A205114 (n + 1)).toNat - A205117 (n + 1)

end

end A205118.P4001883245881318077

/-! ## A205118.P4653927678888123314

`A205116(n+1)-A000032(A205115(n+1))`
-/

namespace A205118.P4653927678888123314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205116 (n + 1) - A000032 (A205115 (n + 1)).toNat

end

end A205118.P4653927678888123314

/-! ## A205118.P12712914839611409880

`A205112(A205113(n+1))`
-/

namespace A205118.P12712914839611409880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205112 (A205113 (n + 1)).toNat

end

end A205118.P12712914839611409880

/-!
# A205119: (1/n)*A205118(n).

The programs for A205119, there is no canonical definition to state claims against.
-/

/-! ## A205119.P3090256049595458611

`1/(n+1)*A205118(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205119.P3090256049595458611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205118 (n + 1) : ℚ)

end

end A205119.P3090256049595458611

/-! ## A205119.P13308647844852991665

`A205118(n+1)/(n+1)`
-/

namespace A205119.P13308647844852991665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205118 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205119.P13308647844852991665

/-! ## A205119.P5683996947583629575

`abs(A205118(A008619(2*n))/xor(n, -1))`
-/

namespace A205119.P5683996947583629575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A205118 (A008619 (2 * n)).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)|

end

end A205119.P5683996947583629575

/-! ## A205119.P10770861869301417528

`(A205116(n+1)-A205117(n+1))/(n+1)`
-/

namespace A205119.P10770861869301417528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205116 (n + 1) - A205117 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205119.P10770861869301417528

/-! ## A205119.P2935453733645555325

`(A000032(A205114(n+1))-A205117(n+1))/(n+1)`
-/

namespace A205119.P2935453733645555325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A205114 (n + 1)).toNat - A205117 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205119.P2935453733645555325

/-! ## A205119.P2365441489076244794

`A205112(A205113(n+1))/(n+1)`
-/

namespace A205119.P2365441489076244794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205112 (A205113 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205119.P2365441489076244794

/-!
# A205120: Ordered differences of distinct numbers k*(2^(k-1)).

The programs for A205120, the canonical program `A205120.P6059773044546605763` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205120 has offset 1).

The definition of A205120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205120.P6059773044546605763

`A087323(A002024(n+1))-A087323(A002262(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205120

/-- `A087323(A002024(n+1))-A087323(A002262(n))` -/
def P6059773044546605763.Spec : Prop :=
  ∀ n, P6059773044546605763.a n = A205120 (n + 1)

theorem P6059773044546605763.correct : P6059773044546605763.Spec := by
  intro n
  simp only [A205120, Nat.add_sub_cancel]

end A205120

/-! ## A205120.P3920619762773148433

`A001787(A003057(n+2))-A001787(A002260(n+1))`
-/

namespace A205120.P3920619762773148433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A003057 (n + 2)).toNat - A001787 (A002260 (n + 1)).toNat

end

end A205120.P3920619762773148433

namespace A205120

/-- `A001787(A003057(n+2))-A001787(A002260(n+1))` -/
def P3920619762773148433.Spec : Prop :=
  ∀ n, P3920619762773148433.a n = A205120 (n + 1)

end A205120

/-! ## A205120.P1663263715918822

`A001787(A003057(n+2))-A038040(A059268(n))`
-/

namespace A205120.P1663263715918822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A003057 (n + 2)).toNat - A038040 (A059268 n).toNat

end

end A205120.P1663263715918822

namespace A205120

/-- `A001787(A003057(n+2))-A038040(A059268(n))` -/
def P1663263715918822.Spec : Prop :=
  ∀ n, P1663263715918822.a n = A205120 (n + 1)

end A205120

/-! ## A205120.P9591160077331120514

`A006520(A204985(n+1))`
-/

namespace A205120.P9591160077331120514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006520 (A204985 (n + 1)).toNat

end

end A205120.P9591160077331120514

namespace A205120

/-- `A006520(A204985(n+1))` -/
def P9591160077331120514.Spec : Prop :=
  ∀ n, P9591160077331120514.a n = A205120 (n + 1)

end A205120

/-! ## A205120.P11242390809042850593

`A000788(A098354(n+1))-A005183(A002260(n+1))`
-/

namespace A205120.P11242390809042850593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (A098354 (n + 1)).toNat - A005183 (A002260 (n + 1)).toNat

end

end A205120.P11242390809042850593

namespace A205120

/-- `A000788(A098354(n+1))-A005183(A002260(n+1))` -/
def P11242390809042850593.Spec : Prop :=
  ∀ n, P11242390809042850593.a n = A205120 (n + 1)

end A205120

/-!
# A205122: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=j*(2^(j-1)).

The programs for A205122, there is no canonical definition to state claims against.
-/

/-! ## A205122.P13611401226777986363

`A002024(A205121(n+1))+1`
-/

namespace A205122.P13611401226777986363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205121 (n + 1)).toNat + 1

end

end A205122.P13611401226777986363

/-! ## A205122.P18155306281783537937

`A003057(A205121(n+1)+1)`
-/

namespace A205122.P18155306281783537937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205121 (n + 1) + 1).toNat

end

end A205122.P18155306281783537937

/-! ## A205122.P2050750057660763628

`A002024(A014132(A205121(n+1)))`
-/

namespace A205122.P2050750057660763628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205121 (n + 1)).toNat).toNat

end

end A205122.P2050750057660763628

/-! ## A205122.P3893985405015432963

`A004736(A205121(n+1)+A004736(A205121(n+1)))`
-/

namespace A205122.P3893985405015432963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205121 (n + 1) + A004736 (A205121 (n + 1)).toNat).toNat

end

end A205122.P3893985405015432963

/-! ## A205122.P13184644575714676252

`A097285(2*A205121(n+1))`
-/

namespace A205122.P13184644575714676252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205121 (n + 1)).toNat

end

end A205122.P13184644575714676252

/-! ## A205122.P12234672162893245208

`A008619(A101776(4*A205121(n+1)))`
-/

namespace A205122.P12234672162893245208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A101776 (4 * A205121 (n + 1)).toNat).toNat

end

end A205122.P12234672162893245208

/-!
# A205123: The index j<k such that n divides s(k)-s(j), where k is the least index (A205122) for which such j exists, and s(k)=k*(2^(k-1)).

The programs for A205123, there is no canonical definition to state claims against.
-/

/-! ## A205123.P9692326937507706911

`A002260(A205121(n+1))`
-/

namespace A205123.P9692326937507706911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205121 (n + 1)).toNat

end

end A205123.P9692326937507706911

/-! ## A205123.P10257114907468170085

`A144328(A205122(n+1)+A205121(n+1))`
-/

namespace A205123.P10257114907468170085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A205122 (n + 1) + A205121 (n + 1)).toNat

end

end A205123.P10257114907468170085

/-! ## A205123.P9352581161707299586

`A003057(A205121(n+1)+1)-A004736(A205121(n+1))`
-/

namespace A205123.P9352581161707299586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205121 (n + 1) + 1).toNat - A004736 (A205121 (n + 1)).toNat

end

end A205123.P9352581161707299586

/-! ## A205123.P12124935635808191520

`A097285(2*A205121(n+1)-1)`
-/

namespace A205123.P12124935635808191520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205121 (n + 1) - 1).toNat

end

end A205123.P12124935635808191520

/-! ## A205123.P16256777753844552337

`A097285(A205121(n+1)+A205121(n+1)-1)`
-/

namespace A205123.P16256777753844552337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205121 (n + 1) + (A205121 (n + 1) - 1)).toNat

end

end A205123.P16256777753844552337

/-! ## A205123.P18207954930801219628

`A290253(A205125(n+1))`
-/

namespace A205123.P18207954930801219628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290253 (A205125 (n + 1)).toNat

end

end A205123.P18207954930801219628

/-! ## A205123.P1350735716229993429

`A163510(A205125(n+1)+1)`
-/

namespace A205123.P1350735716229993429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (A205125 (n + 1) + 1).toNat

end

end A205123.P1350735716229993429

/-!
# A205124: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)= j*(2^(j-1)).

The programs for A205124, there is no canonical definition to state claims against.
-/

/-! ## A205124.P18318380289485285586

`A001787(A205122(n+1))`
-/

namespace A205124.P18318380289485285586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A205122 (n + 1)).toNat

end

end A205124.P18318380289485285586

/-! ## A205124.P1583492078411525476

`A097067(A205122(n+1)+1)`
-/

namespace A205124.P1583492078411525476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A205122 (n + 1) + 1).toNat

end

end A205124.P1583492078411525476

/-! ## A205124.P9924952235893316136

`A139756(A205122(n+1)+1)`
-/

namespace A205124.P9924952235893316136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (A205122 (n + 1) + 1).toNat

end

end A205124.P9924952235893316136

/-! ## A205124.P9803348571543465645

`A205126(n+1)+A205125(n+1)`
-/

namespace A205124.P9803348571543465645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205126 (n + 1) + A205125 (n + 1)

end

end A205124.P9803348571543465645

/-! ## A205124.P14173681605355463683

`A205125(n+1)+(n+1)*A205127(n+1)`
-/

namespace A205124.P14173681605355463683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205125 (n + 1) + (n + 1 : ℤ) * A205127 (n + 1)

end

end A205124.P14173681605355463683

/-! ## A205124.P10972970395214896185

`A205126(n+1)+A001787(A205123(n+1))`
-/

namespace A205124.P10972970395214896185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205126 (n + 1) + A001787 (A205123 (n + 1)).toNat

end

end A205124.P10972970395214896185

/-! ## A205124.P2227067307022296751

`A205125(n+1)+A205120(A205121(n+1))`
-/

namespace A205124.P2227067307022296751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205125 (n + 1) + A205120 (A205121 (n + 1)).toNat

end

end A205124.P2227067307022296751

/-! ## A205124.P3209514371228859798

`A302055(2^A205122(n+1))`
-/

namespace A205124.P3209514371228859798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A205122 (n + 1) : ℤ))).toNat

end

end A205124.P3209514371228859798

/-! ## A205124.P3862442579190874896

`A302055(abs(A120617(A205122(n+1))))`
-/

namespace A205124.P3862442579190874896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 |A120617 (A205122 (n + 1)).toNat|.toNat

end

end A205124.P3862442579190874896

/-!
# A205125: The number s(j) such that n divides s(k)-s(j), where s(j)=j*(2^(j-1)) and k is the least positive integer for which such a j>0 exists.

The programs for A205125, there is no canonical definition to state claims against.
-/

/-! ## A205125.P4987026299898331458

`A001787(A205123(n+1))`
-/

namespace A205125.P4987026299898331458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A205123 (n + 1)).toNat

end

end A205125.P4987026299898331458

/-! ## A205125.P6690186059874671028

`A097067(A205123(n+1)+1)`
-/

namespace A205125.P6690186059874671028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A205123 (n + 1) + 1).toNat

end

end A205125.P6690186059874671028

/-! ## A205125.P8275547281400968655

`A139756(A205123(n+1)+1)`
-/

namespace A205125.P8275547281400968655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (A205123 (n + 1) + 1).toNat

end

end A205125.P8275547281400968655

/-! ## A205125.P3862098809372244967

`A205124(n+1)-A205126(n+1)`
-/

namespace A205125.P3862098809372244967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205124 (n + 1) - A205126 (n + 1)

end

end A205125.P3862098809372244967

/-! ## A205125.P461016442556154144

`A001787(A205122(n+1))-A205126(n+1)`
-/

namespace A205125.P461016442556154144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A205122 (n + 1)).toNat - A205126 (n + 1)

end

end A205125.P461016442556154144

/-! ## A205125.P2894303687660206372

`A205124(A000027(n+1))%A205126(n+1)`
-/

namespace A205125.P2894303687660206372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205124 (A000027 (n + 1)).toNat) (A205126 (n + 1))

end

end A205125.P2894303687660206372

/-! ## A205125.P753861264667209458

`A205124(n+1)-A205120(A205121(n+1))`
-/

namespace A205125.P753861264667209458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205124 (n + 1) - A205120 (A205121 (n + 1)).toNat

end

end A205125.P753861264667209458

/-! ## A205125.P5718440641689790071

`A003415(2^A205123(n+1))`
-/

namespace A205125.P5718440641689790071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A205123 (n + 1) : ℤ))).toNat

end

end A205125.P5718440641689790071

/-! ## A205125.P3236547883291830197

`A203639(2^A205123(n+1))`
-/

namespace A205125.P3236547883291830197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203639 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A205123 (n + 1) : ℤ))).toNat

end

end A205125.P3236547883291830197

/-!
# A205126: s(k)-s(j), where (s(k),s(j)) is the least such pair for which n divides their difference, and s(j)= j*(2^(j-1)).

The programs for A205126, there is no canonical definition to state claims against.
-/

/-! ## A205126.P4036381702542842344

`(n+1)*A205127(n+1)`
-/

namespace A205126.P4036381702542842344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205127 (n + 1)

end

end A205126.P4036381702542842344

/-! ## A205126.P18116718941802174798

`A205124(n+1)-A205125(n+1)`
-/

namespace A205126.P18116718941802174798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205124 (n + 1) - A205125 (n + 1)

end

end A205126.P18116718941802174798

/-! ## A205126.P8859474050822301494

`A001787(A205122(n+1))-A205125(n+1)`
-/

namespace A205126.P8859474050822301494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A205122 (n + 1)).toNat - A205125 (n + 1)

end

end A205126.P8859474050822301494

/-! ## A205126.P4560875216877701023

`A205124(n+1)-A001787(A205123(n+1))`
-/

namespace A205126.P4560875216877701023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205124 (n + 1) - A001787 (A205123 (n + 1)).toNat

end

end A205126.P4560875216877701023

/-! ## A205126.P5864068455665293950

`A205120(A205121(n+1))`
-/

namespace A205126.P5864068455665293950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205120 (A205121 (n + 1)).toNat

end

end A205126.P5864068455665293950

/-!
# A205127: (1/n)*A205126(n).

The programs for A205127, there is no canonical definition to state claims against.
-/

/-! ## A205127.P5181087371520100427

`1/(n+1)*A205126(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205127.P5181087371520100427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205126 (n + 1) : ℚ)

end

end A205127.P5181087371520100427

/-! ## A205127.P2667679319764551906

`A205126(n+1)/(n+1)`
-/

namespace A205127.P2667679319764551906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205126 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205127.P2667679319764551906

/-! ## A205127.P2404959936282625429

`(A205124(n+1)-A205125(n+1))/(n+1)`
-/

namespace A205127.P2404959936282625429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205124 (n + 1) - A205125 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205127.P2404959936282625429

/-! ## A205127.P7102554311670148160

`(A001787(A205122(n+1))-A205125(n+1))/(n+1)`
-/

namespace A205127.P7102554311670148160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (A205122 (n + 1)).toNat - A205125 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205127.P7102554311670148160

/-! ## A205127.P16803847976966243540

`A205120(A205121(n+1))/(n+1)`
-/

namespace A205127.P16803847976966243540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205120 (A205121 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205127.P16803847976966243540

/-!
# A205128: Ordered differences of distinct hexagonal numbers.

The programs for A205128, the canonical program `A205128.P17383454080453045407` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205128 has offset 1).

The definition of A205128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205128.P8134621414419389144

`(row(n)+2)*(2*(row(n)+2)-1)-(col(n)+1)*(2*(col(n)+1)-1)`
-/

namespace A205128.P8134621414419389144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 2 : ℤ) * ((2 * (SequenceMachineLib.triRow n + 2) : ℤ) - 1) - (SequenceMachineLib.triCol n + 1 : ℤ) * ((2 * (SequenceMachineLib.triCol n + 1) : ℤ) - 1)

end

end A205128.P8134621414419389144

namespace A205128

/-- `(row(n)+2)*(2*(row(n)+2)-1)-(col(n)+1)*(2*(col(n)+1)-1)` -/
def P8134621414419389144.Spec : Prop :=
  ∀ n, P8134621414419389144.a n = A205128 (n + 1)

theorem P8134621414419389144.correct : P8134621414419389144.Spec := by
  intro n
  simp only [A205128, Nat.add_sub_cancel, A205128.P8134621414419389144.a, A205128.P17383454080453045407.a, A098352, A098352.P3707437164941693741.a, A103217, A103217.P11841766815847463643.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205128

/-! ## A205128.P18100192733869859415

`A101493(comp[∑[n]])`
-/

namespace A205128.P18100192733869859415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101493 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A205128.P18100192733869859415

namespace A205128

/-- `A101493(comp[∑[n]])` -/
def P18100192733869859415.Spec : Prop :=
  ∀ n, P18100192733869859415.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P17383454080453045407

`A103217(n)+A098352(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A205128

/-- `A103217(n)+A098352(n+1)` -/
def P17383454080453045407.Spec : Prop :=
  ∀ n, P17383454080453045407.a n = A205128 (n + 1)

theorem P17383454080453045407.correct : P17383454080453045407.Spec := by
  intro n
  simp only [A205128, Nat.add_sub_cancel]

end A205128

/-! ## A205128.P13478197470933392589

`A205136(n+1)+A049777(n+1)`
-/

namespace A205128.P13478197470933392589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205136 (n + 1) + A049777 (n + 1)

end

end A205128.P13478197470933392589

namespace A205128

/-- `A205136(n+1)+A049777(n+1)` -/
def P13478197470933392589.Spec : Prop :=
  ∀ n, P13478197470933392589.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P11247251232329859064

`A205016(n+1)+A094728(n+1)`
-/

namespace A205128.P11247251232329859064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205016 (n + 1) + A094728 (n + 1)

end

end A205128.P11247251232329859064

namespace A205128

/-- `A205016(n+1)+A094728(n+1)` -/
def P11247251232329859064.Spec : Prop :=
  ∀ n, P11247251232329859064.a n = A205128 (n + 1)

theorem P11247251232329859064.correct : P11247251232329859064.Spec := by
  intro n
  simp only [A205128, Nat.add_sub_cancel, A205128.P11247251232329859064.a, A205128.P17383454080453045407.a, A094728, A094728.P15119429803493593113.a, A098352, A098352.P3707437164941693741.a, A103217, A103217.P11841766815847463643.a, A205016, A205016.P2286842531164054448.a, A003991, A003991.P6365127437582401781.a, A193974, A193974.P14269232743332111222.a, A131783, A131783.P16711198060458241591.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P8069278756495172327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205128

/-! ## A205128.P15727605993204602045

`A101493(n)+4*A004736(n+1)`
-/

namespace A205128.P15727605993204602045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101493 n + 4 * A004736 (n + 1)

end

end A205128.P15727605993204602045

namespace A205128

/-- `A101493(n)+4*A004736(n+1)` -/
def P15727605993204602045.Spec : Prop :=
  ∀ n, P15727605993204602045.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P3772631953386029111

`A120070(n+2)+2*A049777(n+1)`
-/

namespace A205128.P3772631953386029111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + 2 * A049777 (n + 1)

end

end A205128.P3772631953386029111

namespace A205128

/-- `A120070(n+2)+2*A049777(n+1)` -/
def P3772631953386029111.Spec : Prop :=
  ∀ n, P3772631953386029111.a n = A205128 (n + 1)

theorem P3772631953386029111.correct : P3772631953386029111.Spec := by
  intro n
  simp only [A205128, Nat.add_sub_cancel, A205128.P3772631953386029111.a, A205128.P17383454080453045407.a, A049777, A049777.P8069278756495172327.a, A098352, A098352.P3707437164941693741.a, A103217, A103217.P11841766815847463643.a, A120070, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205128

/-! ## A205128.P2640780224365978960

`A004736(n+1)+4*A049777(n+1)`
-/

namespace A205128.P2640780224365978960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 4 * A049777 (n + 1)

end

end A205128.P2640780224365978960

namespace A205128

/-- `A004736(n+1)+4*A049777(n+1)` -/
def P2640780224365978960.Spec : Prop :=
  ∀ n, P2640780224365978960.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P10927903962812820365

`2*A120070(n+2)-A004736(n+1)`
-/

namespace A205128.P10927903962812820365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120070 (n + 2) - A004736 (n + 1)

end

end A205128.P10927903962812820365

namespace A205128

/-- `2*A120070(n+2)-A004736(n+1)` -/
def P10927903962812820365.Spec : Prop :=
  ∀ n, P10927903962812820365.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P7589804064614745189

`2*A205136(n+1)-A120070(n+2)`
-/

namespace A205128.P7589804064614745189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205136 (n + 1) - A120070 (n + 2)

end

end A205128.P7589804064614745189

namespace A205128

/-- `2*A205136(n+1)-A120070(n+2)` -/
def P7589804064614745189.Spec : Prop :=
  ∀ n, P7589804064614745189.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P227555953170693404

`sqrt(A165447(n+2))+2*A049777(n+1)`
-/

namespace A205128.P227555953170693404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165447 (n + 2) : ℝ) + (2 * A049777 (n + 1) : ℝ)

end

end A205128.P227555953170693404

namespace A205128

/-- `sqrt(A165447(n+2))+2*A049777(n+1)` -/
def P227555953170693404.Spec : Prop :=
  ∀ n, P227555953170693404.a n = (A205128 (n + 1) : ℝ)

end A205128

/-! ## A205128.P9035209638504760159

`2*sqrt(A165447(n+2))-A004736(n+1)`
-/

namespace A205128.P9035209638504760159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A165447 (n + 2) : ℝ) - (A004736 (n + 1) : ℝ)

end

end A205128.P9035209638504760159

namespace A205128

/-- `2*sqrt(A165447(n+2))-A004736(n+1)` -/
def P9035209638504760159.Spec : Prop :=
  ∀ n, P9035209638504760159.a n = (A205128 (n + 1) : ℝ)

end A205128

/-! ## A205128.P2784292994892287685

`A004736(n+1)*A020705(A131421(n+1))`
-/

namespace A205128.P2784292994892287685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A020705 (A131421 (n + 1)).toNat

end

end A205128.P2784292994892287685

namespace A205128

/-- `A004736(n+1)*A020705(A131421(n+1))` -/
def P2784292994892287685.Spec : Prop :=
  ∀ n, P2784292994892287685.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P5722669851265638232

`2*A120070(n+2)-A002260(A038722(n+1))`
-/

namespace A205128.P5722669851265638232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120070 (n + 2) - A002260 (A038722 (n + 1)).toNat

end

end A205128.P5722669851265638232

namespace A205128

/-- `2*A120070(n+2)-A002260(A038722(n+1))` -/
def P5722669851265638232.Spec : Prop :=
  ∀ n, P5722669851265638232.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P8813683456317659271

`A049777(n+1)+A025581(n)+A016777(A049777(n+1))`
-/

namespace A205128.P8813683456317659271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A025581 n + A016777 (A049777 (n + 1)).toNat)

end

end A205128.P8813683456317659271

namespace A205128

/-- `A049777(n+1)+A025581(n)+A016777(A049777(n+1))` -/
def P8813683456317659271.Spec : Prop :=
  ∀ n, P8813683456317659271.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P15974590067005575983

`A049777(A185871(n+1))`
-/

namespace A205128.P15974590067005575983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A185871 (n + 1)).toNat

end

end A205128.P15974590067005575983

namespace A205128

/-- `A049777(A185871(n+1))` -/
def P15974590067005575983.Spec : Prop :=
  ∀ n, P15974590067005575983.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P16762328632999217020

`A049777(A140978(n+1)+2*n+1)`
-/

namespace A205128.P16762328632999217020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A140978 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A205128.P16762328632999217020

namespace A205128

/-- `A049777(A140978(n+1)+2*n+1)` -/
def P16762328632999217020.Spec : Prop :=
  ∀ n, P16762328632999217020.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P14130914683186888435

`A101447(A292565(n+1))`
-/

namespace A205128.P14130914683186888435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 (A292565 (n + 1)).toNat

end

end A205128.P14130914683186888435

namespace A205128

/-- `A101447(A292565(n+1))` -/
def P14130914683186888435.Spec : Prop :=
  ∀ n, P14130914683186888435.a n = A205128 (n + 1)

end A205128

/-! ## A205128.P9185006469422140793

`A101447(A140978(n+1)+A064801(n+1))`
-/

namespace A205128.P9185006469422140793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 (A140978 (n + 1) + A064801 (n + 1)).toNat

end

end A205128.P9185006469422140793

namespace A205128

/-- `A101447(A140978(n+1)+A064801(n+1))` -/
def P9185006469422140793.Spec : Prop :=
  ∀ n, P9185006469422140793.a n = A205128 (n + 1)

end A205128

/-!
# A205130: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=2*j^2-j, the j-th hexagonal number.

The programs for A205130, there is no canonical definition to state claims against.
-/

/-! ## A205130.P10417730147004099110

`1+A002024(A205129(n+1))`
-/

namespace A205130.P10417730147004099110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205129 (n + 1)).toNat

end

end A205130.P10417730147004099110

/-! ## A205130.P16303659343945918765

`A003057(A205129(n+1)+1)`
-/

namespace A205130.P16303659343945918765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205129 (n + 1) + 1).toNat

end

end A205130.P16303659343945918765

/-! ## A205130.P12214755033563373204

`A002024(A080036(A205129(n+1)))`
-/

namespace A205130.P12214755033563373204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A080036 (A205129 (n + 1)).toNat).toNat

end

end A205130.P12214755033563373204

/-! ## A205130.P12567815876398129652

`A205131(n+1)+A004736(A205129(n+1))`
-/

namespace A205130.P12567815876398129652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205131 (n + 1) + A004736 (A205129 (n + 1)).toNat

end

end A205130.P12567815876398129652

/-! ## A205130.P8297592901806778246

`gcd(A140978(A205129(n+1)), A205132(n+1))`
-/

namespace A205130.P8297592901806778246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140978 (A205129 (n + 1)).toNat) (A205132 (n + 1))

end

end A205130.P8297592901806778246

/-! ## A205130.P10770725558391932197

`A010751(A205133(n+1))+A004736(A205129(n+1))`
-/

namespace A205130.P10770725558391932197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A205133 (n + 1)).toNat + A004736 (A205129 (n + 1)).toNat

end

end A205130.P10770725558391932197

/-! ## A205130.P13189656226669665292

`A010751(A205132(n+1))`
-/

namespace A205130.P13189656226669665292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A205132 (n + 1)).toNat

end

end A205130.P13189656226669665292

/-! ## A205130.P10096419208540390588

`A008284(A205132(n+1)+2)`
-/

namespace A205130.P10096419208540390588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A205132 (n + 1) + 2).toNat

end

end A205130.P10096419208540390588

/-!
# A205131: The index j<k such that n divides s(k)-s(j), where k is the least index (A205130) for which such j exists, and s(k)=2*k^2-k, the k-th hexagonal number.

The programs for A205131, there is no canonical definition to state claims against.
-/

/-! ## A205131.P3147394392647761907

`A348888(A205133(n+1))`
-/

namespace A205131.P3147394392647761907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A205133 (n + 1)).toNat

end

end A205131.P3147394392647761907

/-! ## A205131.P9036820185907040219

`A008284(A205133(n+1)+2)`
-/

namespace A205131.P9036820185907040219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A205133 (n + 1) + 2).toNat

end

end A205131.P9036820185907040219

/-! ## A205131.P13125247840254105021

`A008284(A205132(n+1)+2-A205134(n+1))`
-/

namespace A205131.P13125247840254105021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A205132 (n + 1) + (2 - A205134 (n + 1))).toNat

end

end A205131.P13125247840254105021

/-! ## A205131.P5812300994251019503

`A002260(A205129(n+1))`
-/

namespace A205131.P5812300994251019503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205129 (n + 1)).toNat

end

end A205131.P5812300994251019503

/-! ## A205131.P16200135100176740387

`A205130(n+1)-A004736(A205129(n+1))`
-/

namespace A205131.P16200135100176740387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205130 (n + 1) - A004736 (A205129 (n + 1)).toNat

end

end A205131.P16200135100176740387

/-! ## A205131.P13367358003417282944

`A003057(A205129(n+1)+1)-A004736(A205129(n+1))`
-/

namespace A205131.P13367358003417282944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205129 (n + 1) + 1).toNat - A004736 (A205129 (n + 1)).toNat

end

end A205131.P13367358003417282944

/-! ## A205131.P14363342060654619211

`A234575(A205133(n+1)+2)`
-/

namespace A205131.P14363342060654619211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A205133 (n + 1) + 2).toNat

end

end A205131.P14363342060654619211

/-! ## A205131.P8757251724926033880

`A010751(A205133(n+1))`
-/

namespace A205131.P8757251724926033880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A205133 (n + 1)).toNat

end

end A205131.P8757251724926033880

/-! ## A205131.P7374331120548027703

`A010766(A205133(n+1)+2)`
-/

namespace A205131.P7374331120548027703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A205133 (n + 1) + 2).toNat

end

end A205131.P7374331120548027703

/-! ## A205131.P11144838056608333385

`A004736(A205133(n+1)+1)/2`
-/

namespace A205131.P11144838056608333385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A205133 (n + 1) + 1).toNat : ℚ) / 2

end

end A205131.P11144838056608333385

/-! ## A205131.P12961981793080718371

`A205133(n+1)/A008279(A205133(n+1)+1)`
-/

namespace A205131.P12961981793080718371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205133 (n + 1) : ℚ) / (A008279 (A205133 (n + 1) + 1).toNat : ℚ)

end

end A205131.P12961981793080718371

/-!
# A205132: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=2*j^2-j, the j-th hexagonal number.

The programs for A205132, there is no canonical definition to state claims against.
-/

/-! ## A205132.P4127359268258953684

`C(2*A205130(n+1), 2)`
-/

namespace A205132.P4127359268258953684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A205130 (n + 1)).toNat 2

end

end A205132.P4127359268258953684

/-! ## A205132.P17465175729658700657

`A000384(A205130(n+1))`
-/

namespace A205132.P17465175729658700657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A205130 (n + 1)).toNat

end

end A205132.P17465175729658700657

/-! ## A205132.P16277729772535317608

`A000217(2*A205130(n+1)-1)`
-/

namespace A205132.P16277729772535317608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A205130 (n + 1) - 1).toNat

end

end A205132.P16277729772535317608

/-! ## A205132.P789175634044131166

`A205134(n+1)+A205133(n+1)`
-/

namespace A205132.P789175634044131166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205134 (n + 1) + A205133 (n + 1)

end

end A205132.P789175634044131166

/-! ## A205132.P11127341076349301029

`A000217(A205130(n+1)+A205130(n+1)-1)`
-/

namespace A205132.P11127341076349301029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205130 (n + 1) + (A205130 (n + 1) - 1)).toNat

end

end A205132.P11127341076349301029

/-! ## A205132.P7466953986078750017

`A161680(2*A205130(n+1))`
-/

namespace A205132.P7466953986078750017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * A205130 (n + 1)).toNat

end

end A205132.P7466953986078750017

/-! ## A205132.P6262106860625555542

`A179865(2*A205130(n+1))`
-/

namespace A205132.P6262106860625555542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (2 * A205130 (n + 1)).toNat

end

end A205132.P6262106860625555542

/-! ## A205132.P1317420629612437404

`A266304(2*A205130(n+1)-1)`
-/

namespace A205132.P1317420629612437404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 (2 * A205130 (n + 1) - 1).toNat

end

end A205132.P1317420629612437404

/-! ## A205132.P8998888031265702773

`A266304(A205130(n+1)+A205130(n+1)-1)`
-/

namespace A205132.P8998888031265702773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 (A205130 (n + 1) + (A205130 (n + 1) - 1)).toNat

end

end A205132.P8998888031265702773

/-! ## A205132.P13457461753147827860

`A205133(n+1)+A205128(A205129(n+1))`
-/

namespace A205132.P13457461753147827860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205133 (n + 1) + A205128 (A205129 (n + 1)).toNat

end

end A205132.P13457461753147827860

/-! ## A205132.P9449570180838036577

`A007606(A205130(n+1)²)`
-/

namespace A205132.P9449570180838036577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A205130 (n + 1) ^ 2).toNat

end

end A205132.P9449570180838036577

/-!
# A205133: The number s(j) such that n divides s(k)-s(j), where s(j)=j*(2*j-1) and k is the least positive integer for which such a j exists.

The programs for A205133, there is no canonical definition to state claims against.
-/

/-! ## A205133.P12248958254875380280

`C(2*A205131(n+1), 2)`
-/

namespace A205133.P12248958254875380280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A205131 (n + 1)).toNat 2

end

end A205133.P12248958254875380280

/-! ## A205133.P4462474398351692316

`A000384(A205131(n+1))`
-/

namespace A205133.P4462474398351692316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A205131 (n + 1)).toNat

end

end A205133.P4462474398351692316

/-! ## A205133.P10717467468237859806

`A205132(n+1)-A205134(n+1)`
-/

namespace A205133.P10717467468237859806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205132 (n + 1) - A205134 (n + 1)

end

end A205133.P10717467468237859806

/-! ## A205133.P726868994112077326

`A130519(4*A205131(n+1))`
-/

namespace A205133.P726868994112077326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (4 * A205131 (n + 1)).toNat

end

end A205133.P726868994112077326

/-! ## A205133.P10440462644407731548

`A007606(A205131(n+1)²)`
-/

namespace A205133.P10440462644407731548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A205131 (n + 1) ^ 2).toNat

end

end A205133.P10440462644407731548

/-! ## A205133.P3321466480250479714

`A316670(A205131(n+1)²)`
-/

namespace A205133.P3321466480250479714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316670 (A205131 (n + 1) ^ 2).toNat

end

end A205133.P3321466480250479714

/-! ## A205133.P1169595191771449851

`A205132(n+1)-A205128(A205129(n+1))`
-/

namespace A205133.P1169595191771449851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205132 (n + 1) - A205128 (A205129 (n + 1)).toNat

end

end A205133.P1169595191771449851

/-!
# A205134: s(k)-s(j), where (s(k),s(j)) is the least such pair for which n divides their difference, and s(j)=2*j^2-j, the j-th hexagonal number.

The programs for A205134, there is no canonical definition to state claims against.
-/

/-! ## A205134.P15198614559452943409

`A205132(n+1)-A205133(n+1)`
-/

namespace A205134.P15198614559452943409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205132 (n + 1) - A205133 (n + 1)

end

end A205134.P15198614559452943409

/-! ## A205134.P5367418635433728728

`A000384(A205130(n+1))-A205133(n+1)`
-/

namespace A205134.P5367418635433728728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A205130 (n + 1)).toNat - A205133 (n + 1)

end

end A205134.P5367418635433728728

/-! ## A205134.P8462822180516503637

`A205132(n+1)-A000384(A205131(n+1))`
-/

namespace A205134.P8462822180516503637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205132 (n + 1) - A000384 (A205131 (n + 1)).toNat

end

end A205134.P8462822180516503637

/-! ## A205134.P14560666850904311151

`(n+1)*A205135(n+1)`
-/

namespace A205134.P14560666850904311151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205135 (n + 1)

end

end A205134.P14560666850904311151

/-! ## A205134.P3334164940198394463

`A205128(A205129(n+1))`
-/

namespace A205134.P3334164940198394463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205128 (A205129 (n + 1)).toNat

end

end A205134.P3334164940198394463

/-!
# A205135: (1/n)*A205134(n).

The programs for A205135, there is no canonical definition to state claims against.
-/

/-! ## A205135.P5449111486527373455

`1/(n+1)*A205134(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205135.P5449111486527373455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205134 (n + 1) : ℚ)

end

end A205135.P5449111486527373455

/-! ## A205135.P1091132675884938528

`A205134(n+1)/(n+1)`
-/

namespace A205135.P1091132675884938528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205134 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205135.P1091132675884938528

/-! ## A205135.P13553379876042989481

`abs(A205134(1-(n-2*n))/(1-(n-2*n)))`
-/

namespace A205135.P13553379876042989481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A205134 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℚ) / (1 - ((n : ℤ) - (2 * n : ℤ)) : ℚ)|

end

end A205135.P13553379876042989481

/-! ## A205135.P15639689128536805186

`(A205132(n+1)-A205133(n+1))/(n+1)`
-/

namespace A205135.P15639689128536805186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205132 (n + 1) - A205133 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205135.P15639689128536805186

/-! ## A205135.P14086451445708057076

`(A000384(A205130(n+1))-A205133(n+1))/(n+1)`
-/

namespace A205135.P14086451445708057076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000384 (A205130 (n + 1)).toNat - A205133 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205135.P14086451445708057076

/-! ## A205135.P15647622319280559102

`A205128(A205129(n+1))/(n+1)`
-/

namespace A205135.P15647622319280559102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205128 (A205129 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205135.P15647622319280559102

/-!
# A205136: Ordered differences of distinct pentagonal numbers.

The programs for A205136, the canonical program `A205136.P11482582398427600183` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205136 has offset 1).

The definition of A205136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205136.P11212998981885366854

`(row(n)+2)*(3*(row(n)+2)-1)/2-(col(n)+1)*(3*(col(n)+1)-1)/2`
-/

namespace A205136.P11212998981885366854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 2 : ℤ) * ((3 * (SequenceMachineLib.triRow n + 2) : ℤ) - 1) : ℚ) / 2 - ((SequenceMachineLib.triCol n + 1 : ℤ) * ((3 * (SequenceMachineLib.triCol n + 1) : ℤ) - 1) : ℚ) / 2

end

end A205136.P11212998981885366854

namespace A205136

/-- `(row(n)+2)*(3*(row(n)+2)-1)/2-(col(n)+1)*(3*(col(n)+1)-1)/2` -/
def P11212998981885366854.Spec : Prop :=
  ∀ n, P11212998981885366854.a n = (A205136 (n + 1) : ℚ)

end A205136

/-! ## A205136.P11482582398427600183

`A096037(n+1)+A099375(n)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205136

/-- `A096037(n+1)+A099375(n)+1` -/
def P11482582398427600183.Spec : Prop :=
  ∀ n, P11482582398427600183.a n = A205136 (n + 1)

theorem P11482582398427600183.correct : P11482582398427600183.Spec := by
  intro n
  simp only [A205136, Nat.add_sub_cancel]

end A205136

/-! ## A205136.P10570336169298356020

`A212012(n+1)+A096037(n+1)`
-/

namespace A205136.P10570336169298356020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) + A096037 (n + 1)

end

end A205136.P10570336169298356020

namespace A205136

/-- `A212012(n+1)+A096037(n+1)` -/
def P10570336169298356020.Spec : Prop :=
  ∀ n, P10570336169298356020.a n = A205136 (n + 1)

theorem P10570336169298356020.correct : P10570336169298356020.Spec := by
  intro n
  simp only [A205136, Nat.add_sub_cancel, A205136.P10570336169298356020.a, A205136.P11482582398427600183.a, A096037, A096037.P14088750410499945596.a, A099375, A099375.P13700148065993022910.a, A212012, A212012.P10131555541362374622.a, A004736, A004736.P10337537277358081527.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205136

/-! ## A205136.P17767541081820329549

`A120070(n+2)+A049777(n+1)`
-/

namespace A205136.P17767541081820329549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + A049777 (n + 1)

end

end A205136.P17767541081820329549

namespace A205136

/-- `A120070(n+2)+A049777(n+1)` -/
def P17767541081820329549.Spec : Prop :=
  ∀ n, P17767541081820329549.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P11437270394617310316

`A096038(n+1)+A099375(n)+2`
-/

namespace A205136.P11437270394617310316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) + (A099375 n + 2)

end

end A205136.P11437270394617310316

namespace A205136

/-- `A096038(n+1)+A099375(n)+2` -/
def P11437270394617310316.Spec : Prop :=
  ∀ n, P11437270394617310316.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P1697954429301925260

`A205128(n+1)-A049777(n+1)`
-/

namespace A205136.P1697954429301925260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205128 (n + 1) - A049777 (n + 1)

end

end A205136.P1697954429301925260

namespace A205136

/-- `A205128(n+1)-A049777(n+1)` -/
def P1697954429301925260.Spec : Prop :=
  ∀ n, P1697954429301925260.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P14733345061547746971

`A193974(n)+2*A049777(n+1)`
-/

namespace A205136.P14733345061547746971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n + 2 * A049777 (n + 1)

end

end A205136.P14733345061547746971

namespace A205136

/-- `A193974(n)+2*A049777(n+1)` -/
def P14733345061547746971.Spec : Prop :=
  ∀ n, P14733345061547746971.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P9112319701223938073

`2*A120070(n+2)-A193974(n)`
-/

namespace A205136.P9112319701223938073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120070 (n + 2) - A193974 n

end

end A205136.P9112319701223938073

namespace A205136

/-- `2*A120070(n+2)-A193974(n)` -/
def P9112319701223938073.Spec : Prop :=
  ∀ n, P9112319701223938073.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P8186336419698057

`A049777(n+1)+sqrt(A165447(n+2))`
-/

namespace A205136.P8186336419698057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049777 (n + 1) : ℝ) + Real.sqrt (A165447 (n + 2) : ℝ)

end

end A205136.P8186336419698057

namespace A205136

/-- `A049777(n+1)+sqrt(A165447(n+2))` -/
def P8186336419698057.Spec : Prop :=
  ∀ n, P8186336419698057.a n = (A205136 (n + 1) : ℝ)

end A205136

/-! ## A205136.P8169999720458200588

`A096037(n+1)+2*A004736(n+1)`
-/

namespace A205136.P8169999720458200588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + 2 * A004736 (n + 1)

end

end A205136.P8169999720458200588

namespace A205136

/-- `A096037(n+1)+2*A004736(n+1)` -/
def P8169999720458200588.Spec : Prop :=
  ∀ n, P8169999720458200588.a n = A205136 (n + 1)

theorem P8169999720458200588.correct : P8169999720458200588.Spec := by
  intro n
  simp only [A205136, Nat.add_sub_cancel, A205136.P8169999720458200588.a, A205136.P11482582398427600183.a, A004736, A004736.P10337537277358081527.a, A096037, A096037.P14088750410499945596.a, A099375, A099375.P13700148065993022910.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205136

/-! ## A205136.P4340931880012612469

`A101468(n)+A045943(A004736(n+1))`
-/

namespace A205136.P4340931880012612469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 n + A045943 (A004736 (n + 1)).toNat

end

end A205136.P4340931880012612469

namespace A205136

/-- `A101468(n)+A045943(A004736(n+1))` -/
def P4340931880012612469.Spec : Prop :=
  ∀ n, P4340931880012612469.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P1254540839546248017

`A000326(A003057(n+2))-A000326(A002260(n+1))`
-/

namespace A205136.P1254540839546248017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A003057 (n + 2)).toNat - A000326 (A002260 (n + 1)).toNat

end

end A205136.P1254540839546248017

namespace A205136

/-- `A000326(A003057(n+2))-A000326(A002260(n+1))` -/
def P1254540839546248017.Spec : Prop :=
  ∀ n, P1254540839546248017.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P6293080193354010002

`A025581(n)+A016777(A049777(n+1))`
-/

namespace A205136.P6293080193354010002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A016777 (A049777 (n + 1)).toNat

end

end A205136.P6293080193354010002

namespace A205136

/-- `A025581(n)+A016777(A049777(n+1))` -/
def P6293080193354010002.Spec : Prop :=
  ∀ n, P6293080193354010002.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P12720358590832411503

`A008585(A049777(n+1))+A004736(n+1)`
-/

namespace A205136.P12720358590832411503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A049777 (n + 1)).toNat + A004736 (n + 1)

end

end A205136.P12720358590832411503

namespace A205136

/-- `A008585(A049777(n+1))+A004736(n+1)` -/
def P12720358590832411503.Spec : Prop :=
  ∀ n, P12720358590832411503.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P11728688479661987664

`A095871(A080036(n+1))`
-/

namespace A205136.P11728688479661987664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (A080036 (n + 1)).toNat

end

end A205136.P11728688479661987664

namespace A205136

/-- `A095871(A080036(n+1))` -/
def P11728688479661987664.Spec : Prop :=
  ∀ n, P11728688479661987664.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P6308195234460374544

`A049777(A185871(n+1))-A049777(n+1)`
-/

namespace A205136.P6308195234460374544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A185871 (n + 1)).toNat - A049777 (n + 1)

end

end A205136.P6308195234460374544

namespace A205136

/-- `A049777(A185871(n+1))-A049777(n+1)` -/
def P6308195234460374544.Spec : Prop :=
  ∀ n, P6308195234460374544.a n = A205136 (n + 1)

end A205136

/-! ## A205136.P14872546454145667574

`A096037(n+1)+2*A000005(A130321(n))`
-/

namespace A205136.P14872546454145667574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + 2 * A000005 (A130321 n).toNat

end

end A205136.P14872546454145667574

namespace A205136

/-- `A096037(n+1)+2*A000005(A130321(n))` -/
def P14872546454145667574.Spec : Prop :=
  ∀ n, P14872546454145667574.a n = A205136 (n + 1)

end A205136

/-!
# A205138: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=j(3j-1)/2, the j-th pentagonal number.

The programs for A205138, there is no canonical definition to state claims against.
-/

/-! ## A205138.P10658912803749072676

`round(sqrt(2*A205137(n+1)))+1`
-/

namespace A205138.P10658912803749072676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A205137 (n + 1) : ℝ)) + 1

end

end A205138.P10658912803749072676

/-! ## A205138.P10750614809693663780

`round(sqrt(2*A205140(n+1)/3))`
-/

namespace A205138.P10750614809693663780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * ((A205140 (n + 1) : ℚ) / 3) : ℝ))

end

end A205138.P10750614809693663780

/-! ## A205138.P12441891637437030170

`1+A002024(A205137(n+1))`
-/

namespace A205138.P12441891637437030170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205137 (n + 1)).toNat

end

end A205138.P12441891637437030170

/-! ## A205138.P4543834351846785737

`A003057(A205137(n+1)+1)`
-/

namespace A205138.P4543834351846785737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205137 (n + 1) + 1).toNat

end

end A205138.P4543834351846785737

/-! ## A205138.P9751407615852165352

`A097285(2*A205137(n+1))`
-/

namespace A205138.P9751407615852165352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205137 (n + 1)).toNat

end

end A205138.P9751407615852165352

/-! ## A205138.P7089031804087641358

`A003056(A205137(n+1)-1)+2`
-/

namespace A205138.P7089031804087641358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A205137 (n + 1) - 1).toNat + 2

end

end A205138.P7089031804087641358

/-! ## A205138.P3841688207968900279

`A000194(2*A205137(n+1))+1`
-/

namespace A205138.P3841688207968900279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205137 (n + 1)).toNat + 1

end

end A205138.P3841688207968900279

/-! ## A205138.P18268091516585082799

`A002024(A080036(A205137(n+1)))`
-/

namespace A205138.P18268091516585082799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A080036 (A205137 (n + 1)).toNat).toNat

end

end A205138.P18268091516585082799

/-! ## A205138.P12978598378351775240

`A205139(n+1)+A004736(A205137(n+1))`
-/

namespace A205138.P12978598378351775240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205139 (n + 1) + A004736 (A205137 (n + 1)).toNat

end

end A205138.P12978598378351775240

/-! ## A205138.P10519882158688881244

`A000194(A205140(n+1)-A205137(n+1))`
-/

namespace A205138.P10519882158688881244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205140 (n + 1) - A205137 (n + 1)).toNat

end

end A205138.P10519882158688881244

/-! ## A205138.P17930890246518373349

`A123578(A205137(n+1))+A007318(C(2, n))`
-/

namespace A205138.P17930890246518373349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205137 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A205138.P17930890246518373349

/-! ## A205138.P16566986533997831582

`A123578(A205137(n+1))+gcd(n, A020639(n+1))`
-/

namespace A205138.P16566986533997831582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205137 (n + 1)).toNat + (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℤ)

end

end A205138.P16566986533997831582

/-! ## A205138.P9809018068974119873

`A123578(A205137(n+1))-A008683(A020484(n))`
-/

namespace A205138.P9809018068974119873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205137 (n + 1)).toNat - A008683 (A020484 n).toNat

end

end A205138.P9809018068974119873

/-! ## A205138.P10123485270839573390

`A123578(A205137(n+1))+A014963(4*(25*n+11))`
-/

namespace A205138.P10123485270839573390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205137 (n + 1)).toNat + A014963 (4 * (25 * n + 11))

end

end A205138.P10123485270839573390

/-!
# A205139: The index j<k such that n divides s(k)-s(j), where k is the least index (A205138) for which such j exists, and s(k)=k*(3k-1)/2, the k-th pentagonal number.

The programs for A205139, there is no canonical definition to state claims against.
-/

/-! ## A205139.P11143176205527567624

`A002260(A205137(n+1)%A139609(n))`
-/

namespace A205139.P11143176205527567624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A205137 (n + 1)) (A139609 n)).toNat

end

end A205139.P11143176205527567624

/-! ## A205139.P11695536734040055234

`A002260(A205137(n+1))`
-/

namespace A205139.P11695536734040055234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205137 (n + 1)).toNat

end

end A205139.P11695536734040055234

/-! ## A205139.P4630222153250095213

`A002262(A205137(n+1)-1)+1`
-/

namespace A205139.P4630222153250095213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205137 (n + 1) - 1).toNat + 1

end

end A205139.P4630222153250095213

/-! ## A205139.P14129206741282890785

`A097285(2*A205137(n+1)-1)`
-/

namespace A205139.P14129206741282890785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205137 (n + 1) - 1).toNat

end

end A205139.P14129206741282890785

/-! ## A205139.P16759469804993259267

`A205138(n+1)-A004736(A205137(n+1))`
-/

namespace A205139.P16759469804993259267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205138 (n + 1) - A004736 (A205137 (n + 1)).toNat

end

end A205139.P16759469804993259267

/-! ## A205139.P3663920870123641941

`A097285(A205137(n+1)+A205137(n+1)-1)`
-/

namespace A205139.P3663920870123641941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205137 (n + 1) + (A205137 (n + 1) - 1)).toNat

end

end A205139.P3663920870123641941

/-! ## A205139.P4071085036836532996

`A083277(A205141(n+1))`
-/

namespace A205139.P4071085036836532996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A205141 (n + 1)).toNat

end

end A205139.P4071085036836532996

/-! ## A205139.P8199197840569575976

`A073189(A205141(n+1)-1)+1`
-/

namespace A205139.P8199197840569575976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 (A205141 (n + 1) - 1).toNat + 1

end

end A205139.P8199197840569575976

/-! ## A205139.P11929820402210361662

`A085767(A205140(n+1)-A205142(n+1))`
-/

namespace A205139.P11929820402210361662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085767 (A205140 (n + 1) - A205142 (n + 1)).toNat

end

end A205139.P11929820402210361662

/-! ## A205139.P9454399886057922910

`A073189(4*A205141(n+1))`
-/

namespace A205139.P9454399886057922910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 (4 * A205141 (n + 1)).toNat

end

end A205139.P9454399886057922910

/-!
# A205140: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=j(3j-1)/2, the j-th pentagonal number.

The programs for A205140, there is no canonical definition to state claims against.
-/

/-! ## A205140.P14981340223975111525

`A205142(n+1)+A205141(n+1)`
-/

namespace A205140.P14981340223975111525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205142 (n + 1) + A205141 (n + 1)

end

end A205140.P14981340223975111525

/-! ## A205140.P5277065179808849825

`A205141(n+1)+(n+1)*A205143(n+1)`
-/

namespace A205140.P5277065179808849825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205141 (n + 1) + (n + 1 : ℤ) * A205143 (n + 1)

end

end A205140.P5277065179808849825

/-! ## A205140.P11848352516854656358

`A205142(n+1)+A000326(A205139(n+1))`
-/

namespace A205140.P11848352516854656358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205142 (n + 1) + A000326 (A205139 (n + 1)).toNat

end

end A205140.P11848352516854656358

/-! ## A205140.P14875498973547707089

`A000326(A205139(n+1))+(n+1)*A205143(n+1)`
-/

namespace A205140.P14875498973547707089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A205139 (n + 1)).toNat + (n + 1 : ℤ) * A205143 (n + 1)

end

end A205140.P14875498973547707089

/-! ## A205140.P14157060297950836683

`A000326(A205138(n+1))`
-/

namespace A205140.P14157060297950836683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A205138 (n + 1)).toNat

end

end A205140.P14157060297950836683

/-! ## A205140.P7716955876628914338

`A205141(n+1)+A205136(A205137(n+1))`
-/

namespace A205140.P7716955876628914338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205141 (n + 1) + A205136 (A205137 (n + 1)).toNat

end

end A205140.P7716955876628914338

/-!
# A205141: The number s(j) such that n divides s(k)-s(j), where s(j)=j*(3*j-1) and k is the least positive integer for which such a j exists.

The programs for A205141, there is no canonical definition to state claims against.
-/

/-! ## A205141.P1336083919100983796

`A205140(n+1)-A205142(n+1)`
-/

namespace A205141.P1336083919100983796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205140 (n + 1) - A205142 (n + 1)

end

end A205141.P1336083919100983796

/-! ## A205141.P16829226556562777941

`A205140(n+1)+A133574(gcd(n, n+1))*A205142(n+1)`
-/

namespace A205141.P16829226556562777941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205140 (n + 1) + A133574 (Nat.gcd n (n + 1)) * A205142 (n + 1)

end

end A205141.P16829226556562777941

/-! ## A205141.P11900614880505408257

`A000326(A205139(n+1))`
-/

namespace A205141.P11900614880505408257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A205139 (n + 1)).toNat

end

end A205141.P11900614880505408257

/-! ## A205141.P867670057022371433

`A000326(A205138(n+1))-A205142(n+1)`
-/

namespace A205141.P867670057022371433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A205138 (n + 1)).toNat - A205142 (n + 1)

end

end A205141.P867670057022371433

/-! ## A205141.P15668524696588334770

`A000326(A205138(n+1))-(n+1)*A205143(n+1)`
-/

namespace A205141.P15668524696588334770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A205138 (n + 1)).toNat - (n + 1 : ℤ) * A205143 (n + 1)

end

end A205141.P15668524696588334770

/-! ## A205141.P3633246984735772380

`A205140(n+1)-A205136(A205137(n+1))`
-/

namespace A205141.P3633246984735772380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205140 (n + 1) - A205136 (A205137 (n + 1)).toNat

end

end A205141.P3633246984735772380

/-!
# A205142: s(k)-s(j), where (s(k),s(j)) is the least such pair for which n divides their difference, and s(j)=j(3j-1)/2, the j-th pentagonal number.

The programs for A205142, there is no canonical definition to state claims against.
-/

/-! ## A205142.P6062966771503208806

`(n+1)*A205143(n+1)`
-/

namespace A205142.P6062966771503208806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205143 (n + 1)

end

end A205142.P6062966771503208806

/-! ## A205142.P8423393930534253014

`abs((1-(n-2*n))*A205143(1-(n-2*n)))`
-/

namespace A205142.P8423393930534253014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - ((n : ℤ) - (2 * n : ℤ))) * A205143 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat|

end

end A205142.P8423393930534253014

/-! ## A205142.P6517766109245311641

`A205140(n+1)-A205141(n+1)`
-/

namespace A205142.P6517766109245311641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205140 (n + 1) - A205141 (n + 1)

end

end A205142.P6517766109245311641

/-! ## A205142.P5962799806523991450

`A205140(n+1)-A000326(A205139(n+1))`
-/

namespace A205142.P5962799806523991450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205140 (n + 1) - A000326 (A205139 (n + 1)).toNat

end

end A205142.P5962799806523991450

/-! ## A205142.P2543724287087222075

`A000326(A205138(n+1))-A205141(n+1)`
-/

namespace A205142.P2543724287087222075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A205138 (n + 1)).toNat - A205141 (n + 1)

end

end A205142.P2543724287087222075

/-! ## A205142.P15154583620734527519

`A205136(A205137(n+1))`
-/

namespace A205142.P15154583620734527519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205136 (A205137 (n + 1)).toNat

end

end A205142.P15154583620734527519

/-!
# A205143: (1/n)*A205142(n).

The programs for A205143, there is no canonical definition to state claims against.
-/

/-! ## A205143.P17068063279254815574

`1/(n+1)*A205142(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205143.P17068063279254815574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205142 (n + 1) : ℚ)

end

end A205143.P17068063279254815574

/-! ## A205143.P11372888661519692278

`A205142(n+1)/(n+1)`
-/

namespace A205143.P11372888661519692278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205142 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205143.P11372888661519692278

/-! ## A205143.P210828430328492301

`(A205140(n+1)-A205141(n+1))/(n+1)`
-/

namespace A205143.P210828430328492301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205140 (n + 1) - A205141 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205143.P210828430328492301

/-! ## A205143.P16528803376132418162

`(A205140(n+1)-A000326(A205139(n+1)))/(n+1)`
-/

namespace A205143.P16528803376132418162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205140 (n + 1) - A000326 (A205139 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205143.P16528803376132418162

/-! ## A205143.P4592684121296750299

`A205136(A205137(n+1))/(n+1)`
-/

namespace A205143.P4592684121296750299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205136 (A205137 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205143.P4592684121296750299

/-!
# A205144: Ordered differences of distinct binary products of consecutive primes.

The programs for A205144, the canonical program `A205144.P13187989175659215221` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205144 has offset 1).

The definition of A205144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205144.P13187989175659215221

`A006094(A003057(n+2))-A006094(A002260(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A205144

/-- `A006094(A003057(n+2))-A006094(A002260(n+1))` -/
def P13187989175659215221.Spec : Prop :=
  ∀ n, P13187989175659215221.a n = A205144 (n + 1)

theorem P13187989175659215221.correct : P13187989175659215221.Spec := by
  intro n
  simp only [A205144, Nat.add_sub_cancel]

end A205144

/-! ## A205144.P16963923775049468228

`A006094(A002024(n+1)+1)-A006094(A002260(n+1))`
-/

namespace A205144.P16963923775049468228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A002024 (n + 1) + 1).toNat - A006094 (A002260 (n + 1)).toNat

end

end A205144.P16963923775049468228

namespace A205144

/-- `A006094(A002024(n+1)+1)-A006094(A002260(n+1))` -/
def P16963923775049468228.Spec : Prop :=
  ∀ n, P16963923775049468228.a n = A205144 (n + 1)

end A205144

/-!
# A205146: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=prime(j)*prime(j+1).

The programs for A205146, there is no canonical definition to state claims against.
-/

/-! ## A205146.P16947178170804323401

`A000720(floor(sqrt(A205148(n+1))))`
-/

namespace A205146.P16947178170804323401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A205148 (n + 1))).toNat

end

end A205146.P16947178170804323401

/-! ## A205146.P8142829692305707380

`1+A002024(A205145(n+1))`
-/

namespace A205146.P8142829692305707380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205145 (n + 1)).toNat

end

end A205146.P8142829692305707380

/-! ## A205146.P14526190363024326033

`A003057(A205145(n+1)+1)`
-/

namespace A205146.P14526190363024326033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205145 (n + 1) + 1).toNat

end

end A205146.P14526190363024326033

/-! ## A205146.P14226165988960690557

`A123578(A080036(A205145(n+1)))`
-/

namespace A205146.P14226165988960690557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A080036 (A205145 (n + 1)).toNat).toNat

end

end A205146.P14226165988960690557

/-! ## A205146.P12327912540971151936

`A097285(2*A205145(n+1))`
-/

namespace A205146.P12327912540971151936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205145 (n + 1)).toNat

end

end A205146.P12327912540971151936

/-! ## A205146.P14159787106936914925

`A055396(A205148(n+1))`
-/

namespace A205146.P14159787106936914925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205148 (n + 1)).toNat

end

end A205146.P14159787106936914925

/-!
# A205147: The index j<k such that n divides s(k)-s(j), where k is the least index (A205146) for which such j exists, and s(k)=prime(k)*prime(k+1).

The programs for A205147, there is no canonical definition to state claims against.
-/

/-! ## A205147.P11806007057910177853

`A000720(floor(sqrt(A205149(n+1))))`
-/

namespace A205147.P11806007057910177853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.sqrt (A205149 (n + 1))).toNat

end

end A205147.P11806007057910177853

/-! ## A205147.P5078564355423933658

`A230980(floor(sqrt(A205149(n+1))))`
-/

namespace A205147.P5078564355423933658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.sqrt (A205149 (n + 1))).toNat

end

end A205147.P5078564355423933658

/-! ## A205147.P16849036318199257878

`A000720(round(sqrt(A205149(n+1))))`
-/

namespace A205147.P16849036318199257878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A205149 (n + 1) : ℝ))).toNat

end

end A205147.P16849036318199257878

/-! ## A205147.P56817167347978213

`A000720(ceil(sqrt(A205149(n+1)))-1)`
-/

namespace A205147.P56817167347978213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (⌈Real.sqrt (A205149 (n + 1) : ℝ)⌉ - 1).toNat

end

end A205147.P56817167347978213

/-! ## A205147.P7396845686114803677

`A002260(A205145(n+1))`
-/

namespace A205147.P7396845686114803677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205145 (n + 1)).toNat

end

end A205147.P7396845686114803677

/-! ## A205147.P16131289569936821549

`A205146(n+1)-A004736(A205145(n+1))`
-/

namespace A205147.P16131289569936821549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205146 (n + 1) - A004736 (A205145 (n + 1)).toNat

end

end A205147.P16131289569936821549

/-! ## A205147.P3526828465594495253

`A097285(2*A205145(n+1)-1)`
-/

namespace A205147.P3526828465594495253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205145 (n + 1) - 1).toNat

end

end A205147.P3526828465594495253

/-! ## A205147.P13082350336954911234

`A097285(A205145(n+1)+A205145(n+1)-1)`
-/

namespace A205147.P13082350336954911234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205145 (n + 1) + (A205145 (n + 1) - 1)).toNat

end

end A205147.P13082350336954911234

/-! ## A205147.P204047885193492141

`A055396(A205149(n+1))`
-/

namespace A205147.P204047885193492141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205149 (n + 1)).toNat

end

end A205147.P204047885193492141

/-! ## A205147.P8177453211986435773

`A286469(A205149(n+1))%A128468(n)`
-/

namespace A205147.P8177453211986435773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286469 (A205149 (n + 1)).toNat) (A128468 n)

end

end A205147.P8177453211986435773

/-! ## A205147.P7549391113764983453

`A286469(A205149(n+1)%A153873(n))`
-/

namespace A205147.P7549391113764983453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (Int.tmod (A205149 (n + 1)) (A153873 n)).toNat

end

end A205147.P7549391113764983453

/-! ## A205147.P6557016385012710184

`A055396(A205148(n+1)-A205150(n+1))`
-/

namespace A205147.P6557016385012710184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205148 (n + 1) - A205150 (n + 1)).toNat

end

end A205147.P6557016385012710184

/-! ## A205147.P5354987837222478688

`A342655(A205149(n+1))%A001747(n+2)`
-/

namespace A205147.P5354987837222478688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342655 (A205149 (n + 1)).toNat) (A001747 (n + 2))

end

end A205147.P5354987837222478688

/-! ## A205147.P1688781513275231228

`A342655(2*A205149(n+1)-A205149(n+1))`
-/

namespace A205147.P1688781513275231228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (2 * A205149 (n + 1) - A205149 (n + 1)).toNat

end

end A205147.P1688781513275231228

/-! ## A205147.P3360325557324322725

`A257541(A205149(n+1))+A001221(A007918(n))`
-/

namespace A205147.P3360325557324322725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A205149 (n + 1)).toNat + A001221 (A007918 n).toNat

end

end A205147.P3360325557324322725

/-! ## A205147.P1199750896717226856

`A007318(A014963(2*(n+1)))*A286469(A205149(n+1))`
-/

namespace A205147.P1199750896717226856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A286469 (A205149 (n + 1)).toNat

end

end A205147.P1199750896717226856

/-! ## A205147.P2166270551378716935

`A286469(A205149(n+1))^A014963(A187710(n))`
-/

namespace A205147.P2166270551378716935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286469 (A205149 (n + 1)).toNat : ℚ) ^ (A014963 (A187710 n).toNat : ℤ)

end

end A205147.P2166270551378716935

/-!
# A205148: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=prime(j)*prime(j+1).

The programs for A205148, there is no canonical definition to state claims against.
-/

/-! ## A205148.P5694767169022547256

`A006094(A205146(n+1))`
-/

namespace A205148.P5694767169022547256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A205146 (n + 1)).toNat

end

end A205148.P5694767169022547256

/-! ## A205148.P3157061731677163343

`A205150(n+1)+A205149(n+1)`
-/

namespace A205148.P3157061731677163343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205150 (n + 1) + A205149 (n + 1)

end

end A205148.P3157061731677163343

/-! ## A205148.P13317367586122491838

`A205149(n+1)+(n+1)*A205151(n+1)`
-/

namespace A205148.P13317367586122491838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205149 (n + 1) + (n + 1 : ℤ) * A205151 (n + 1)

end

end A205148.P13317367586122491838

/-! ## A205148.P9232558680286507178

`A205150(n+1)+A006094(A205147(n+1))`
-/

namespace A205148.P9232558680286507178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205150 (n + 1) + A006094 (A205147 (n + 1)).toNat

end

end A205148.P9232558680286507178

/-! ## A205148.P17027233525977763724

`A205149(n+1)+A205144(A205145(n+1))`
-/

namespace A205148.P17027233525977763724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205149 (n + 1) + A205144 (A205145 (n + 1)).toNat

end

end A205148.P17027233525977763724

/-!
# A205149: The number s(j) such that n divides s(k)-s(j), where s(j)=prime(j)*prime(j+1) and k is the least positive integer for which such a j exists.

The programs for A205149, there is no canonical definition to state claims against.
-/

/-! ## A205149.P1632817921025671106

`A006094(A205147(n+1))`
-/

namespace A205149.P1632817921025671106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A205147 (n + 1)).toNat

end

end A205149.P1632817921025671106

/-! ## A205149.P17821482267161310796

`A205148(n+1)-A205150(n+1)`
-/

namespace A205149.P17821482267161310796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205148 (n + 1) - A205150 (n + 1)

end

end A205149.P17821482267161310796

/-! ## A205149.P12484390898826527877

`A205148(n+1)-(n+1)*A205151(n+1)`
-/

namespace A205149.P12484390898826527877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205148 (n + 1) - (n + 1 : ℤ) * A205151 (n + 1)

end

end A205149.P12484390898826527877

/-! ## A205149.P2917091707936672323

`A006094(A205146(n+1))-A205150(n+1)`
-/

namespace A205149.P2917091707936672323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A205146 (n + 1)).toNat - A205150 (n + 1)

end

end A205149.P2917091707936672323

/-! ## A205149.P12932498596857541005

`A006094(A205146(n+1))-(n+1)*A205151(n+1)`
-/

namespace A205149.P12932498596857541005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A205146 (n + 1)).toNat - (n + 1 : ℤ) * A205151 (n + 1)

end

end A205149.P12932498596857541005

/-! ## A205149.P17340077824247826374

`A205148(n+1)-A205144(A205145(n+1))`
-/

namespace A205149.P17340077824247826374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205148 (n + 1) - A205144 (A205145 (n + 1)).toNat

end

end A205149.P17340077824247826374

/-! ## A205149.P408819972387920826

`A302033(2^A205147(n+1))`
-/

namespace A205149.P408819972387920826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A205147 (n + 1) : ℤ))).toNat

end

end A205149.P408819972387920826

/-!
# A205150: s(k)-s(j), where (s(k),s(j)) is the least such pair for which n divides their difference, and s(j)=prime(j)*prime(j+1).

The programs for A205150, there is no canonical definition to state claims against.
-/

/-! ## A205150.P12951034466271420890

`(n+1)*A205151(n+1)`
-/

namespace A205150.P12951034466271420890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205151 (n + 1)

end

end A205150.P12951034466271420890

/-! ## A205150.P4482036037590756964

`A205148(n+1)-A205149(n+1)`
-/

namespace A205150.P4482036037590756964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205148 (n + 1) - A205149 (n + 1)

end

end A205150.P4482036037590756964

/-! ## A205150.P16632733096633239744

`A006094(A205146(n+1))-A205149(n+1)`
-/

namespace A205150.P16632733096633239744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A205146 (n + 1)).toNat - A205149 (n + 1)

end

end A205150.P16632733096633239744

/-! ## A205150.P10996051660921693470

`A205148(n+1)-A006094(A205147(n+1))`
-/

namespace A205150.P10996051660921693470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205148 (n + 1) - A006094 (A205147 (n + 1)).toNat

end

end A205150.P10996051660921693470

/-! ## A205150.P15522641973517937973

`A006094(A205146(n+1))-A006094(A205147(n+1))`
-/

namespace A205150.P15522641973517937973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A205146 (n + 1)).toNat - A006094 (A205147 (n + 1)).toNat

end

end A205150.P15522641973517937973

/-! ## A205150.P12009508477719752164

`A205144(A205145(n+1))`
-/

namespace A205150.P12009508477719752164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205144 (A205145 (n + 1)).toNat

end

end A205150.P12009508477719752164

/-!
# A205151: a(n) = A205150(n)/n.

The programs for A205151, there is no canonical definition to state claims against.
-/

/-! ## A205151.P15882581629160637411

`A205150(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205151.P15882581629160637411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205150 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205151.P15882581629160637411

/-! ## A205151.P13999503596073860819

`(A205148(n+1)-A205149(n+1))/(n+1)`
-/

namespace A205151.P13999503596073860819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205148 (n + 1) - A205149 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205151.P13999503596073860819

/-! ## A205151.P12117350191706898289

`(n+1)^A008683(A020483(n))*A205150(n+1)`
-/

namespace A205151.P12117350191706898289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A205150 (n + 1) : ℚ)

end

end A205151.P12117350191706898289

/-! ## A205151.P11134938855028045402

`(A006094(A205146(n+1))-A205149(n+1))/(n+1)`
-/

namespace A205151.P11134938855028045402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (A205146 (n + 1)).toNat - A205149 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205151.P11134938855028045402

/-! ## A205151.P17383876084385993208

`A205144(A205145(n+1))/(n+1)`
-/

namespace A205151.P17383876084385993208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205144 (A205145 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205151.P17383876084385993208

/-!
# A205153: Least k such that n divides s(k)-s(j) for some j<k, where s(j)=(prime(j+1) + prime(j+2))/2.

The programs for A205153, there is no canonical definition to state claims against.
-/

/-! ## A205153.P1485681669511212495

`A000720(A205372(n+1))-1`
-/

namespace A205153.P1485681669511212495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205372 (n + 1)).toNat - 1

end

end A205153.P1485681669511212495

/-! ## A205153.P13995203900026658316

`A084360(or(1, A205372(n+1)))`
-/

namespace A205153.P13995203900026658316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (Int.lor 1 (A205372 (n + 1))).toNat

end

end A205153.P13995203900026658316

/-! ## A205153.P7692064109453672790

`A057428(n+1)+A000720(A205372(n+1))`
-/

namespace A205153.P7692064109453672790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000720 (A205372 (n + 1)).toNat

end

end A205153.P7692064109453672790

/-! ## A205153.P10674407716262680558

`A033270(A205372(n+1))`
-/

namespace A205153.P10674407716262680558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A205372 (n + 1)).toNat

end

end A205153.P10674407716262680558

/-! ## A205153.P5699097621006863996

`A230980(A205372(n+1)-1)-1`
-/

namespace A205153.P5699097621006863996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A205372 (n + 1) - 1).toNat - 1

end

end A205153.P5699097621006863996

/-! ## A205153.P1310446784504455414

`A002024(A205152(n+1))+1`
-/

namespace A205153.P1310446784504455414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205152 (n + 1)).toNat + 1

end

end A205153.P1310446784504455414

/-!
# A205154: The index j<k such that n divides s(k)-s(j) for some j, where s(j)=(prime(j+1) + prime(j+2))/2.

The programs for A205154, there is no canonical definition to state claims against.
-/

/-! ## A205154.P3047144865355483112

`A033270(A205373(n+1))`
-/

namespace A205154.P3047144865355483112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A205373 (n + 1)).toNat

end

end A205154.P3047144865355483112

/-! ## A205154.P10765886061749262897

`A084360(or(1, A205373(n+1)))`
-/

namespace A205154.P10765886061749262897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (Int.lor 1 (A205373 (n + 1))).toNat

end

end A205154.P10765886061749262897

/-! ## A205154.P1641720722536525948

`A214526(A000720(A205373(n+1))²)`
-/

namespace A205154.P1641720722536525948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000720 (A205373 (n + 1)).toNat ^ 2).toNat

end

end A205154.P1641720722536525948

/-! ## A205154.P18046775707718214357

`A000720(A205372(n+1)-A205374(n+1))-1`
-/

namespace A205154.P18046775707718214357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205372 (n + 1) - A205374 (n + 1)).toNat - 1

end

end A205154.P18046775707718214357

/-! ## A205154.P18382108783468189178

`A082551(A014963(n+1))+A000720(A205373(n+1))`
-/

namespace A205154.P18382108783468189178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A014963 (n + 1)).toNat + A000720 (A205373 (n + 1)).toNat

end

end A205154.P18382108783468189178

/-! ## A205154.P10453672069239858084

`A033999(2*n+1)+A000720(A205373(n+1))`
-/

namespace A205154.P10453672069239858084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000720 (A205373 (n + 1)).toNat

end

end A205154.P10453672069239858084

/-! ## A205154.P3667572331420721399

`A002260(A205152(n+1))`
-/

namespace A205154.P3667572331420721399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205152 (n + 1)).toNat

end

end A205154.P3667572331420721399

/-! ## A205154.P6356306294044266801

`A002262(A205152(n+1)-1)+1`
-/

namespace A205154.P6356306294044266801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205152 (n + 1) - 1).toNat + 1

end

end A205154.P6356306294044266801

/-! ## A205154.P6057390496764536339

`A002262(A205152(n+1)+A002024(A205152(n+1)))`
-/

namespace A205154.P6057390496764536339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205152 (n + 1) + A002024 (A205152 (n + 1)).toNat).toNat

end

end A205154.P6057390496764536339

/-!
# A205155: Number of n X n 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A205155, there is no canonical definition to state claims against.
-/

/-! ## A205155.P25730667847826644

`A205161((n+1)²+n²)`
-/

namespace A205155.P25730667847826644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 ((n + 1) ^ 2 + n ^ 2)

end

end A205155.P25730667847826644

/-!
# A205156: Number of n X 3 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A205156, there is no canonical definition to state claims against.
-/

/-! ## A205156.P9348633336251285889

`A205161(∑[n+2]+4)`
-/

namespace A205156.P9348633336251285889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205156.P9348633336251285889

/-! ## A205156.P6254320898178318354

`A205161(A167614(n+1))+A025469(n)`
-/

namespace A205156.P6254320898178318354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A167614 (n + 1)).toNat + A025469 n

end

end A205156.P6254320898178318354

/-! ## A205156.P15608052674442140039

`A205161(A167614(n+1))+A185036(n)`
-/

namespace A205156.P15608052674442140039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A167614 (n + 1)).toNat + A185036 n

end

end A205156.P15608052674442140039

/-! ## A205156.P15978195927468642970

`A205161(A167614(n+1))+A185238(n)`
-/

namespace A205156.P15978195927468642970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A167614 (n + 1)).toNat + A185238 n

end

end A205156.P15978195927468642970

/-! ## A205156.P8701738514881092219

`A205161(A167614(n+1))+A185284(n)`
-/

namespace A205156.P8701738514881092219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A167614 (n + 1)).toNat + A185284 n

end

end A205156.P8701738514881092219

/-!
# A205157: Number of nX4 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A205157, there is no canonical definition to state claims against.
-/

/-! ## A205157.P12876230896003621162

`A205161(A374004(n+1))`
-/

namespace A205157.P12876230896003621162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A374004 (n + 1)).toNat

end

end A205157.P12876230896003621162

/-! ## A205157.P11256587435104682588

`A205161(A052905(n)+9)`
-/

namespace A205157.P11256587435104682588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A052905 n + 9).toNat

end

end A205157.P11256587435104682588

/-! ## A205157.P15873347002460738834

`A205161(A055999(n)+10)`
-/

namespace A205157.P15873347002460738834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A055999 n + 10).toNat

end

end A205157.P15873347002460738834

/-! ## A205157.P14961061576130467584

`A205161(A167614(n+2)+1)`
-/

namespace A205157.P14961061576130467584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A167614 (n + 2) + 1).toNat

end

end A205157.P14961061576130467584

/-! ## A205157.P3768527905286123682

`A205161(A141214(n+1))`
-/

namespace A205157.P3768527905286123682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A141214 (n + 1)).toNat

end

end A205157.P3768527905286123682

/-!
# A205158: Number of n X 5 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A205158, there is no canonical definition to state claims against.
-/

/-! ## A205158.P17143796600645975580

`A205161(A374005(n+1))`
-/

namespace A205158.P17143796600645975580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A374005 (n + 1)).toNat

end

end A205158.P17143796600645975580

/-! ## A205158.P4110777711248020848

`A205161(eq[4, A193592(n)])`
-/

namespace A205158.P4110777711248020848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205158.P4110777711248020848

/-! ## A205158.P8635275880256930355

`A205161(eq[5, A200370(n+1)])`
-/

namespace A205158.P8635275880256930355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205158.P8635275880256930355

/-!
# A205159: Number of n X 6 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..3 introduced in row major order.

The programs for A205159, there is no canonical definition to state claims against.
-/

/-! ## A205159.P3081634586937481937

`A205161(A374007(n+1))`
-/

namespace A205159.P3081634586937481937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A374007 (n + 1)).toNat

end

end A205159.P3081634586937481937

/-! ## A205159.P4804590071943850160

`A205161(eq[5, A193592(n)])`
-/

namespace A205159.P4804590071943850160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205159.P4804590071943850160

/-! ## A205159.P17992529946009169655

`A205161(eq[6, A200370(n+1)])`
-/

namespace A205159.P17992529946009169655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205159.P17992529946009169655

/-!
# A205160: 

The programs for A205160, there is no canonical definition to state claims against.
-/

/-! ## A205160.P4821824302359294760

`A205161(eq[6, A193592(n)])`
-/

namespace A205160.P4821824302359294760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205160.P4821824302359294760

/-!
# A205162: 

The programs for A205162, there is no canonical definition to state claims against.
-/

/-! ## A205162.P9096922529316293372

`A205170((n+1)²+n²)`
-/

namespace A205162.P9096922529316293372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205170 ((n + 1) ^ 2 + n ^ 2)

end

end A205162.P9096922529316293372

/-! ## A205162.P7479414581669278439

`record[A003982(n)*A205170(n+1)]`
-/

namespace A205162.P7479414581669278439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205162.P7479414581669278439

/-! ## A205162.P13642976659936361820

`record[gcd(A003987(n), A205170(n+1))]`
-/

namespace A205162.P13642976659936361820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A205170 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205162.P13642976659936361820

/-!
# A205163: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A205163, there is no canonical definition to state claims against.
-/

/-! ## A205163.P390533584695630956

`ogf((13-75x)/(1-18x+45x^2))`
-/

namespace A205163.P390533584695630956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -75] [1, -18, 45] n

end

end A205163.P390533584695630956

/-! ## A205163.P12908408084129787728

`3^n*(2*5^(n+1)+3)`
-/

namespace A205163.P12908408084129787728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (2 * 5 ^ (n + 1) + 3)

end

end A205163.P12908408084129787728

/-! ## A205163.P7296070780525849192

`18*a(n-1)-45*a(n-2)` with `a(0)=13, a(1)=159`
-/

namespace A205163.P7296070780525849192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 159] fun n a =>
  18 * a (n - 1) - 45 * a (n - 2)

end

end A205163.P7296070780525849192

/-! ## A205163.P9616813649879810834

`A000244(n+1)+A000244(n)*A020729(n+1)`
-/

namespace A205163.P9616813649879810834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) + A000244 n * A020729 (n + 1)

end

end A205163.P9616813649879810834

/-! ## A205163.P11926273024967506462

`A208175(∑[n+2]+3)`
-/

namespace A205163.P11926273024967506462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A205163.P11926273024967506462

/-!
# A205164: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A205164, there is no canonical definition to state claims against.
-/

/-! ## A205164.P13443903007367076048

`A205170(∑[n+1]+2)`
-/

namespace A205164.P13443903007367076048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205170 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205164.P13443903007367076048

/-! ## A205164.P4993863503752389973

`record[A205170(3-A049780(n)+n)]`
-/

namespace A205164.P4993863503752389973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205170 (3 - A049780 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205164.P4993863503752389973

/-! ## A205164.P6164083372231732714

`record[gcd(A205170(n+2), A340666(n))]`
-/

namespace A205164.P6164083372231732714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205170 (n + 2)) (A340666 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205164.P6164083372231732714

/-! ## A205164.P13735565807769968998

`record[A205170(Δ[A003453(n+5)])]`
-/

namespace A205164.P13735565807769968998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205170 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205164.P13735565807769968998

/-!
# A205165: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..3 introduced in row major order.

The programs for A205165, there is no canonical definition to state claims against.
-/

/-! ## A205165.P3605202280081149864

`A205170(∑[n+2]+4)`
-/

namespace A205165.P3605202280081149864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205170 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205165.P3605202280081149864

/-!
# A205167: 

The programs for A205167, there is no canonical definition to state claims against.
-/

/-! ## A205167.P18341399460201745316

`A205170(eq[4, A002262(n)]+1)`
-/

namespace A205167.P18341399460201745316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205167.P18341399460201745316

/-!
# A205171: The lesser of twin primes == 1 (mod 8).

The programs for A205171, there is no canonical definition to state claims against.
-/

/-! ## A205171.P16430615759837988859

`p?[p?[4*(2*n+3)-1]-2]`
-/

namespace A205171.P16430615759837988859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (2 * n + 3) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205171.P16430615759837988859

/-! ## A205171.P4982106896483924087

`p?[A088190(n+1)]`
-/

namespace A205171.P4982106896483924087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205171.P4982106896483924087

/-! ## A205171.P15574412414502092278

`p?[A186298(n+1)]`
-/

namespace A205171.P15574412414502092278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205171.P15574412414502092278

/-! ## A205171.P14240066493860887737

`p?[A007520(n+1)-2]`
-/

namespace A205171.P14240066493860887737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205171.P14240066493860887737

/-! ## A205171.P15975636100477481946

`p?[A045339(n+1)-2]`
-/

namespace A205171.P15975636100477481946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205171.P15975636100477481946

/-!
# A205172: Primes p == 5 (mod 8) such that p + 2 is also prime.

The programs for A205172, the canonical program `A205172.P2675708022056930992` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205172 has offset 1).

The definition of A205172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205172.P2675708022056930992

`∩[A001359(n+1), A107003(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A205172

/-- `∩[A001359(n+1), A107003(n+1)]` -/
def P2675708022056930992.Spec : Prop :=
  ∀ n, (P2675708022056930992.a n : ℤ) = A205172 (n + 1)

theorem P2675708022056930992.correct : P2675708022056930992.Spec := by
  intro n
  simp only [A205172, Nat.add_sub_cancel]

end A205172

/-! ## A205172.P12474652655836650115

`∩[A054799(n+1), A107003(n+1)]`
-/

namespace A205172.P12474652655836650115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P12474652655836650115

namespace A205172

/-- `∩[A054799(n+1), A107003(n+1)]` -/
def P12474652655836650115.Spec : Prop :=
  ∀ n, (P12474652655836650115.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P8789678163457380609

`∩[A063693(n+1), A107003(n+1)]`
-/

namespace A205172.P8789678163457380609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P8789678163457380609

namespace A205172

/-- `∩[A063693(n+1), A107003(n+1)]` -/
def P8789678163457380609.Spec : Prop :=
  ∀ n, (P8789678163457380609.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P5362617769779041227

`∩[A063700(n+1), A107003(n+1)]`
-/

namespace A205172.P5362617769779041227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P5362617769779041227

namespace A205172

/-- `∩[A063700(n+1), A107003(n+1)]` -/
def P5362617769779041227.Spec : Prop :=
  ∀ n, (P5362617769779041227.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P5336392039836818197

`∩[A071695(n+1), A107003(n+1)]`
-/

namespace A205172.P5336392039836818197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P5336392039836818197

namespace A205172

/-- `∩[A071695(n+1), A107003(n+1)]` -/
def P5336392039836818197.Spec : Prop :=
  ∀ n, (P5336392039836818197.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P7916935127868029624

`∩[A073534(n+1), A107003(n+1)]`
-/

namespace A205172.P7916935127868029624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P7916935127868029624

namespace A205172

/-- `∩[A073534(n+1), A107003(n+1)]` -/
def P7916935127868029624.Spec : Prop :=
  ∀ n, (P7916935127868029624.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P10080105076809698954

`∩[A107003(n+1), A111166(n+1)]`
-/

namespace A205172.P10080105076809698954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P10080105076809698954

namespace A205172

/-- `∩[A107003(n+1), A111166(n+1)]` -/
def P10080105076809698954.Spec : Prop :=
  ∀ n, (P10080105076809698954.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P9707278877309710178

`∩[A107003(n+1), A122565(n+1)]`
-/

namespace A205172.P9707278877309710178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P9707278877309710178

namespace A205172

/-- `∩[A107003(n+1), A122565(n+1)]` -/
def P9707278877309710178.Spec : Prop :=
  ∀ n, (P9707278877309710178.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P12679941344818389681

`∩[A107003(n+1), A123079(n+1)]`
-/

namespace A205172.P12679941344818389681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P12679941344818389681

namespace A205172

/-- `∩[A107003(n+1), A123079(n+1)]` -/
def P12679941344818389681.Spec : Prop :=
  ∀ n, (P12679941344818389681.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P6930659432347813826

`∩[A107003(n+1), A124588(n+1)]`
-/

namespace A205172.P6930659432347813826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P6930659432347813826

namespace A205172

/-- `∩[A107003(n+1), A124588(n+1)]` -/
def P6930659432347813826.Spec : Prop :=
  ∀ n, (P6930659432347813826.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P11967758544802161226

`∩[A107003(n+1), A141830(n+1)]`
-/

namespace A205172.P11967758544802161226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P11967758544802161226

namespace A205172

/-- `∩[A107003(n+1), A141830(n+1)]` -/
def P11967758544802161226.Spec : Prop :=
  ∀ n, (P11967758544802161226.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P10743763796511156249

`∩[A107003(n+1), A181747(n+1)]`
-/

namespace A205172.P10743763796511156249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P10743763796511156249

namespace A205172

/-- `∩[A107003(n+1), A181747(n+1)]` -/
def P10743763796511156249.Spec : Prop :=
  ∀ n, (P10743763796511156249.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P8757553473763924055

`∩[A107003(n+1), A229064(n+1)]`
-/

namespace A205172.P8757553473763924055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P8757553473763924055

namespace A205172

/-- `∩[A107003(n+1), A229064(n+1)]` -/
def P8757553473763924055.Spec : Prop :=
  ∀ n, (P8757553473763924055.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P14331644376314388607

`∩[A107003(n+1), A238528(n+1)]`
-/

namespace A205172.P14331644376314388607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P14331644376314388607

namespace A205172

/-- `∩[A107003(n+1), A238528(n+1)]` -/
def P14331644376314388607.Spec : Prop :=
  ∀ n, (P14331644376314388607.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P12777306221189012234

`∩[A107003(n+1), A280255(n+1)]`
-/

namespace A205172.P12777306221189012234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P12777306221189012234

namespace A205172

/-- `∩[A107003(n+1), A280255(n+1)]` -/
def P12777306221189012234.Spec : Prop :=
  ∀ n, (P12777306221189012234.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P6622082895298088610

`∩[A107003(n+1), A280590(n+1)]`
-/

namespace A205172.P6622082895298088610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P6622082895298088610

namespace A205172

/-- `∩[A107003(n+1), A280590(n+1)]` -/
def P6622082895298088610.Spec : Prop :=
  ∀ n, (P6622082895298088610.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P15201357953238818107

`∩[A107003(n+1), A378983(n+1)]`
-/

namespace A205172.P15201357953238818107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P15201357953238818107

namespace A205172

/-- `∩[A107003(n+1), A378983(n+1)]` -/
def P15201357953238818107.Spec : Prop :=
  ∀ n, (P15201357953238818107.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P6854868611742738823

`∩[A395788(n+1), A107003(n+1)]`
-/

namespace A205172.P6854868611742738823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P6854868611742738823

namespace A205172

/-- `∩[A395788(n+1), A107003(n+1)]` -/
def P6854868611742738823.Spec : Prop :=
  ∀ n, (P6854868611742738823.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P8603027303715561916

`∩[A107003(n+1), A339692(n+1)-2]`
-/

namespace A205172.P8603027303715561916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205172.P8603027303715561916

namespace A205172

/-- `∩[A107003(n+1), A339692(n+1)-2]` -/
def P8603027303715561916.Spec : Prop :=
  ∀ n, (P8603027303715561916.a n : ℤ) = A205172 (n + 1)

end A205172

/-! ## A205172.P5901409640680694692

`p?[p?[a(n-1)+24]-2]` with `a(0)=2, a(1)=7`
-/

namespace A205172.P5901409640680694692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205172.P5901409640680694692

namespace A205172

/-- `p?[p?[a(n-1)+24]-2]` -/
def P5901409640680694692.Spec : Prop :=
  ∀ n, P5901409640680694692.a n = A205172 (n + 1)

end A205172

/-!
# A205173: Number of (n+1)X(n+1) 0..3 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205173, there is no canonical definition to state claims against.
-/

/-! ## A205173.P13794817488356256791

`A205181(∑[4*n]+1)`
-/

namespace A205173.P13794817488356256791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205173.P13794817488356256791

/-!
# A205174: Number of (n+1)X2 0..3 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205174, there is no canonical definition to state claims against.
-/

/-! ## A205174.P10859708362945778767

`A205181(∑[n]+1)`
-/

namespace A205174.P10859708362945778767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205174.P10859708362945778767

/-! ## A205174.P993950686885760548

`record[root(A205181(n+1), A100862(n))]`
-/

namespace A205174.P993950686885760548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205181 (n + 1) : ℝ) ^ (1 / (A100862 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205174.P993950686885760548

/-! ## A205174.P8116014286505185802

`record[root(A205181(n+1), A213999(n))]`
-/

namespace A205174.P8116014286505185802
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205181 (n + 1) : ℝ) ^ (1 / (A213999 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205174.P8116014286505185802

/-! ## A205174.P812128892784410982

`record[gcd(A139600(n), A205181(n+1))]`
-/

namespace A205174.P812128892784410982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139600 n) (A205181 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205174.P812128892784410982

/-! ## A205174.P11625330818475351172

`record[root(A205181(n+1), A056242(n+1))]`
-/

namespace A205174.P11625330818475351172
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205181 (n + 1) : ℝ) ^ (1 / (A056242 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205174.P11625330818475351172

/-!
# A205175: Number of (n+1)X3 0..3 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205175, there is no canonical definition to state claims against.
-/

/-! ## A205175.P2706755041180472400

`A205181(∑[n+1]+2)`
-/

namespace A205175.P2706755041180472400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205175.P2706755041180472400

/-! ## A205175.P12026243524829919214

`record[root(A205181(n+2), A213999(n))]`
-/

namespace A205175.P12026243524829919214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205181 (n + 2) : ℝ) ^ (1 / (A213999 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205175.P12026243524829919214

/-! ## A205175.P15763423557831594217

`record[gcd(A139600(n), A205181(n+2))]`
-/

namespace A205175.P15763423557831594217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139600 n) (A205181 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205175.P15763423557831594217

/-! ## A205175.P8553621269562082582

`record[root(A205181(n+2), A056242(n+1))]`
-/

namespace A205175.P8553621269562082582
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205181 (n + 2) : ℝ) ^ (1 / (A056242 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205175.P8553621269562082582

/-! ## A205175.P4750766470482185284

`record[A205181(abs(A201163(n)))]`
-/

namespace A205175.P4750766470482185284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205175.P4750766470482185284

/-!
# A205176: Number of (n+1) X 4 0..3 arrays with the permanents of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205176, there is no canonical definition to state claims against.
-/

/-! ## A205176.P4214512206811625253

`A205181(∑[n+2]+4)`
-/

namespace A205176.P4214512206811625253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205176.P4214512206811625253

/-! ## A205176.P1859123586471955310

`A205181(A167614(n+1))+A160145(n)`
-/

namespace A205176.P1859123586471955310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (A167614 (n + 1)).toNat + A160145 n

end

end A205176.P1859123586471955310

/-! ## A205176.P9325310455200432461

`A309630(n)+A205181(A167614(n+1))`
-/

namespace A205176.P9325310455200432461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309630 n + A205181 (A167614 (n + 1)).toNat

end

end A205176.P9325310455200432461

/-! ## A205176.P9574456695313673172

`A347689(n)+A205181(A167614(n+1))`
-/

namespace A205176.P9574456695313673172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A205181 (A167614 (n + 1)).toNat

end

end A205176.P9574456695313673172

/-! ## A205176.P7422984132002550103

`A205181(A167614(n+1))*A350494(n+1)`
-/

namespace A205176.P7422984132002550103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (A167614 (n + 1)).toNat * A350494 (n + 1)

end

end A205176.P7422984132002550103

/-!
# A205177: Number of (n+1)X5 0..3 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205177, there is no canonical definition to state claims against.
-/

/-! ## A205177.P10308782913806804634

`A205181(A167614(n+2)+1)`
-/

namespace A205177.P10308782913806804634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (A167614 (n + 2) + 1).toNat

end

end A205177.P10308782913806804634

/-! ## A205177.P7232391517653457587

`A205181(lt[A053120(n), A106270(n)])`
-/

namespace A205177.P7232391517653457587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205177.P7232391517653457587

/-! ## A205177.P1935204021826939659

`A205181(eq[4, A185782(n+1)])`
-/

namespace A205177.P1935204021826939659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205177.P1935204021826939659

/-!
# A205178: Number of (n+1) X 6 0..3 arrays with the permanents of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205178, there is no canonical definition to state claims against.
-/

/-! ## A205178.P16832941424662900432

`A205181(A374005(n+1))`
-/

namespace A205178.P16832941424662900432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (A374005 (n + 1)).toNat

end

end A205178.P16832941424662900432

/-! ## A205178.P6293814840736730370

`A205181(A155212(n)+13)`
-/

namespace A205178.P6293814840736730370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (A155212 n + 13).toNat

end

end A205178.P6293814840736730370

/-! ## A205178.P140295845644540130

`A205181(A056000(n)+15)`
-/

namespace A205178.P140295845644540130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (A056000 n + 15).toNat

end

end A205178.P140295845644540130

/-!
# A205179: 

The programs for A205179, there is no canonical definition to state claims against.
-/

/-! ## A205179.P8383360361641415062

`A205181(eq[8, A185782(n+1)])`
-/

namespace A205179.P8383360361641415062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205179.P8383360361641415062

/-!
# A205180: 

The programs for A205180, there is no canonical definition to state claims against.
-/

/-! ## A205180.P10959964687321461099

`A205181(eq[10, A185782(n+1)])`
-/

namespace A205180.P10959964687321461099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205180.P10959964687321461099

/-!
# A205182: E.g.f.: (cosh(x) + sin(x)) / (cos(x) - sinh(x)).

The programs for A205182, there is no canonical definition to state claims against.
-/

/-! ## A205182.P5250777254218347588

`abs(A013068(n+1))`
-/

namespace A205182.P5250777254218347588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013068 (n + 1)|

end

end A205182.P5250777254218347588

/-! ## A205182.P10790067562632614224

`A013068(n+1)*A033999(n)`
-/

namespace A205182.P10790067562632614224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013068 (n + 1) * A033999 n

end

end A205182.P10790067562632614224

/-! ## A205182.P4730219941612104268

`gcd(A000038(n), A013068(n+1))`
-/

namespace A205182.P4730219941612104268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A013068 (n + 1))

end

end A205182.P4730219941612104268

/-! ## A205182.P1289891348038662929

`lcm(A001316(n), A013068(n+1))`
-/

namespace A205182.P1289891348038662929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A013068 (n + 1))

end

end A205182.P1289891348038662929

/-! ## A205182.P9321573086253594501

`A010815(A000326(n))*A013068(n+1)`
-/

namespace A205182.P9321573086253594501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A013068 (n + 1)

end

end A205182.P9321573086253594501

/-! ## A205182.P17757146418890930087

`lcm(A013068(n+1)*A040001(2*n+1), A040001(n+1))`
-/

namespace A205182.P17757146418890930087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013068 (n + 1) * A040001 (2 * n + 1)) (A040001 (n + 1))

end

end A205182.P17757146418890930087

/-!
# A205183: Euler transform of period 5 sequence [ 2, 1, 1, 2, 1, ...].

The programs for A205183, there is no canonical definition to state claims against.
-/

/-! ## A205183.P1319581083493770282

`A005041(A001792(n)-A019425(n))`
-/

namespace A205183.P1319581083493770282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A001792 n - A019425 n).toNat

end

end A205183.P1319581083493770282

/-! ## A205183.P16276788244685290459

`∑[A118168(A320787(n+2))]`
-/

namespace A205183.P16276788244685290459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A320787 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205183.P16276788244685290459

/-! ## A205183.P11814666384413720214

`A002024(A022814(n)+A000129(n))`
-/

namespace A205183.P11814666384413720214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A022814 n + A000129 n).toNat

end

end A205183.P11814666384413720214

/-! ## A205183.P10925355476165778091

`A210713(n)+A002024(A048497(n))`
-/

namespace A205183.P10925355476165778091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 n + A002024 (A048497 n).toNat

end

end A205183.P10925355476165778091

/-! ## A205183.P12903571811009262770

`A003056(A088578(n))-A124761(n)`
-/

namespace A205183.P12903571811009262770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A088578 n).toNat - A124761 n

end

end A205183.P12903571811009262770

/-!
# A205184: Period 12: repeat (1, 8, 4, 9, 7, 8, 7, 9, 4, 8, 1, 9).

The programs for A205184, the canonical program `A205184.P8246376870640168148` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205184 has offset 1).

The definition of A205184 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A205184.anchor (n : ℕ) (hn : 1 ≤ n) : A205184 n = [1, 8, 4, 9, 7, 8, 7, 9, 4, 8, 1, 9].getD ((n - 1) % 12) 0` in `Proof.A205.A205184`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A205184.P8246376870640168148

`a(n-2)-a(n-6)+a(n-8)` with `a(0)=1, a(1)=8, a(2)=4, a(3)=9, a(4)=7, a(5)=8, a(6)=7, a(7)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205184

/-- `a(n-2)-a(n-6)+a(n-8)` -/
def P8246376870640168148.Spec : Prop :=
  ∀ n, P8246376870640168148.a n = A205184 (n + 1)

theorem P8246376870640168148.correct : P8246376870640168148.Spec := by
  intro n
  simp only [A205184, Nat.add_sub_cancel]

end A205184

/-!
# A205185: Period 6: repeat [1, 8, 9, 8, 1, 0].

The programs for A205185, the canonical program `A205185.P18376031486671213983` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205185 has offset 1).

The definition of A205185 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A205185.anchor (n : ℕ) (hn : 1 ≤ n) : A205185 n = [1, 8, 9, 8, 1, 0].getD ((n - 1) % 6) 0` in `Proof.A205.A205185`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A205185.P18376031486671213983

`9-a(n-3)` with `a(0)=1, a(1)=8, a(2)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205185

/-- `9-a(n-3)` -/
def P18376031486671213983.Spec : Prop :=
  ∀ n, P18376031486671213983.a n = A205185 (n + 1)

theorem P18376031486671213983.correct : P18376031486671213983.Spec := by
  intro n
  simp only [A205185, Nat.add_sub_cancel]

end A205185

/-!
# A205186: Number of (n+1) X (n+1) 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205186, the canonical program `A205186.P5184661369533014844` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205186 has offset 1).

The definition of A205186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205186.P8915790799765913968

`(A184418(3*n+4)+6)*A000079(n)`
-/

namespace A205186.P8915790799765913968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A184418 (3 * n + 4) + 6) * A000079 n

end

end A205186.P8915790799765913968

namespace A205186

/-- `(A184418(3*n+4)+6)*A000079(n)` -/
def P8915790799765913968.Spec : Prop :=
  ∀ n, P8915790799765913968.a n = A205186 (n + 1)

end A205186

/-! ## A205186.P5980221249686648334

`ogf((16+40x-4x^2-64x^3)/(1-8x^2+16x^4))`
-/

namespace A205186.P5980221249686648334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 40, -4, -64] [1, 0, -8, 0, 16] n

end

end A205186.P5980221249686648334

namespace A205186

/-- `ogf((16+40x-4x^2-64x^3)/(1-8x^2+16x^4))` -/
def P5980221249686648334.Spec : Prop :=
  ∀ n, P5980221249686648334.a n = A205186 (n + 1)

end A205186

/-! ## A205186.P5184661369533014844

`8*a(n-2)-16*a(n-4)` with `a(0)=16, a(1)=40, a(2)=124, a(3)=256`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205186

/-- `8*a(n-2)-16*a(n-4)` -/
def P5184661369533014844.Spec : Prop :=
  ∀ n, P5184661369533014844.a n = A205186 (n + 1)

theorem P5184661369533014844.correct : P5184661369533014844.Spec := by
  intro n
  simp only [A205186, Nat.add_sub_cancel]

end A205186

/-! ## A205186.P13272826266563649606

`A205193(∑[4*n]+1)`
-/

namespace A205186.P13272826266563649606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205186.P13272826266563649606

namespace A205186

/-- `A205193(∑[4*n]+1)` -/
def P13272826266563649606.Spec : Prop :=
  ∀ n, P13272826266563649606.a n = A205186 (n + 1)

end A205186

/-! ## A205186.P11473746981283100325

`lcm(2, A205193(A001844(n)))`
-/

namespace A205186.P11473746981283100325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205193 (A001844 n).toNat)

end

end A205186.P11473746981283100325

namespace A205186

/-- `lcm(2, A205193(A001844(n)))` -/
def P11473746981283100325.Spec : Prop :=
  ∀ n, (P11473746981283100325.a n : ℤ) = A205186 (n + 1)

end A205186

/-!
# A205187: Number of (n+1)X2 0..1 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205187, the canonical program `A205187.P15223913048801798390` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205187 has offset 1).

The definition of A205187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205187.P11752331061164921742

`ogf((16+24x)/(1-3x^2))`
-/

namespace A205187.P11752331061164921742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 24] [1, 0, -3] n

end

end A205187.P11752331061164921742

namespace A205187

/-- `ogf((16+24x)/(1-3x^2))` -/
def P11752331061164921742.Spec : Prop :=
  ∀ n, P11752331061164921742.a n = A205187 (n + 1)

end A205187

/-! ## A205187.P15223913048801798390

`3*a(n-2)` with `a(0)=16, a(1)=24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205187

/-- `3*a(n-2)` -/
def P15223913048801798390.Spec : Prop :=
  ∀ n, (P15223913048801798390.a n : ℤ) = A205187 (n + 1)

theorem P15223913048801798390.correct : P15223913048801798390.Spec := by
  intro n
  simp only [A205187, Nat.add_sub_cancel]

end A205187

/-! ## A205187.P7755977881565969259

`8*(∑[3^floor(n/2)]+1)`
-/

namespace A205187.P7755977881565969259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205187.P7755977881565969259

namespace A205187

/-- `8*(∑[3^floor(n/2)]+1)` -/
def P7755977881565969259.Spec : Prop :=
  ∀ n, P7755977881565969259.a n = (A205187 (n + 1) : ℚ)

end A205187

/-! ## A205187.P11811218923603906621

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=16, a(1)=24`
-/

namespace A205187.P11811218923603906621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16, 24] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A205187.P11811218923603906621

namespace A205187

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P11811218923603906621.Spec : Prop :=
  ∀ n, (P11811218923603906621.a n : ℤ) = A205187 (n + 1)

theorem P11811218923603906621.correct : P11811218923603906621.Spec := by
  intro n
  simp only [A205187, Nat.add_sub_cancel, A205187.P11811218923603906621.a, A205187.P15223913048801798390.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A205187

/-! ## A205187.P2460074835415068568

`A153339(n+3)+A153339(n+3)`
-/

namespace A205187.P2460074835415068568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153339 (n + 3) + A153339 (n + 3)

end

end A205187.P2460074835415068568

namespace A205187

/-- `A153339(n+3)+A153339(n+3)` -/
def P2460074835415068568.Spec : Prop :=
  ∀ n, P2460074835415068568.a n = A205187 (n + 1)

end A205187

/-! ## A205187.P9590894811132868128

`Δ[8*A087503(n)]`
-/

namespace A205187.P9590894811132868128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A087503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205187.P9590894811132868128

namespace A205187

/-- `Δ[8*A087503(n)]` -/
def P9590894811132868128.Spec : Prop :=
  ∀ n, P9590894811132868128.a n = A205187 (n + 1)

end A205187

/-! ## A205187.P18373533695244531259

`Δ[4*A083658(n+3)]`
-/

namespace A205187.P18373533695244531259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083658 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205187.P18373533695244531259

namespace A205187

/-- `Δ[4*A083658(n+3)]` -/
def P18373533695244531259.Spec : Prop :=
  ∀ n, P18373533695244531259.a n = A205187 (n + 1)

end A205187

/-! ## A205187.P3902736165031277999

`Δ[Δ[2*A090993(n+2)]]`
-/

namespace A205187.P3902736165031277999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090993 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205187.P3902736165031277999

namespace A205187

/-- `Δ[Δ[2*A090993(n+2)]]` -/
def P3902736165031277999.Spec : Prop :=
  ∀ n, P3902736165031277999.a n = A205187 (n + 1)

end A205187

/-! ## A205187.P3100959724402746563

`A282023(n+1)/2^(n-2)`
-/

namespace A205187.P3100959724402746563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282023 (n + 1) : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A205187.P3100959724402746563

namespace A205187

/-- `A282023(n+1)/2^(n-2)` -/
def P3100959724402746563.Spec : Prop :=
  ∀ n, P3100959724402746563.a n = (A205187 (n + 1) : ℚ)

end A205187

/-! ## A205187.P11136871547021529151

`A205193(∑[n]+1)`
-/

namespace A205187.P11136871547021529151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205187.P11136871547021529151

namespace A205187

/-- `A205193(∑[n]+1)` -/
def P11136871547021529151.Spec : Prop :=
  ∀ n, P11136871547021529151.a n = A205187 (n + 1)

end A205187

/-!
# A205188: Number of (n+1) X 4 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205188, the canonical program `A205188.P2354239860963755580` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205188 has offset 1).

The definition of A205188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205188.P2030921023499460425

`ogf((48+64x+28x^2+32x^3-4x^4)/(1-2x^2-x^4))`
-/

namespace A205188.P2030921023499460425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [48, 64, 28, 32, -4] [1, 0, -2, 0, -1] n

end

end A205188.P2030921023499460425

namespace A205188

/-- `ogf((48+64x+28x^2+32x^3-4x^4)/(1-2x^2-x^4))` -/
def P2030921023499460425.Spec : Prop :=
  ∀ n, P2030921023499460425.a n = A205188 (n + 1)

end A205188

/-! ## A205188.P2354239860963755580

`2*a(n-2)+a(n-4)` with `a(0)=48, a(1)=64, a(2)=124, a(3)=160, a(4)=292`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205188

/-- `2*a(n-2)+a(n-4)` -/
def P2354239860963755580.Spec : Prop :=
  ∀ n, (P2354239860963755580.a n : ℤ) = A205188 (n + 1)

theorem P2354239860963755580.correct : P2354239860963755580.Spec := by
  intro n
  simp only [A205188, Nat.add_sub_cancel]

end A205188

/-! ## A205188.P12005143643217583994

`A205193(∑[n+2]+4)`
-/

namespace A205188.P12005143643217583994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205188.P12005143643217583994

namespace A205188

/-- `A205193(∑[n+2]+4)` -/
def P12005143643217583994.Spec : Prop :=
  ∀ n, P12005143643217583994.a n = A205188 (n + 1)

end A205188

/-! ## A205188.P13538251466328019515

`lcm(2, A205193(A167614(n+1)))`
-/

namespace A205188.P13538251466328019515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205193 (A167614 (n + 1)).toNat)

end

end A205188.P13538251466328019515

namespace A205188

/-- `lcm(2, A205193(A167614(n+1)))` -/
def P13538251466328019515.Spec : Prop :=
  ∀ n, (P13538251466328019515.a n : ℤ) = A205188 (n + 1)

end A205188

/-! ## A205188.P1544925894821823442

`xor(1, A205193(A034856(n+1)+5)+1)`
-/

namespace A205188.P1544925894821823442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A205193 (A034856 (n + 1) + 5).toNat + 1)

end

end A205188.P1544925894821823442

namespace A205188

/-- `xor(1, A205193(A034856(n+1)+5)+1)` -/
def P1544925894821823442.Spec : Prop :=
  ∀ n, P1544925894821823442.a n = A205188 (n + 1)

end A205188

/-!
# A205189: Number of (n+1) X 5 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205189, the canonical program `A205189.P11595608176223012585` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205189 has offset 1).

The definition of A205189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205189.P133738377004429217

`ogf((72+32x-16x^2+64x^3-8x^5)/(1-x-x^2+x^3-x^4))`
-/

namespace A205189.P133738377004429217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [72, 32, -16, 64, 0, -8] [1, -1, -1, 1, -1] n

end

end A205189.P133738377004429217

namespace A205189

/-- `ogf((72+32x-16x^2+64x^3-8x^5)/(1-x-x^2+x^3-x^4))` -/
def P133738377004429217.Spec : Prop :=
  ∀ n, P133738377004429217.a n = A205189 (n + 1)

end A205189

/-! ## A205189.P11595608176223012585

`a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=72, a(1)=104, a(2)=160, a(3)=256, a(4)=384, a(5)=576`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205189

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P11595608176223012585.Spec : Prop :=
  ∀ n, P11595608176223012585.a n = A205189 (n + 1)

theorem P11595608176223012585.correct : P11595608176223012585.Spec := by
  intro n
  simp only [A205189, Nat.add_sub_cancel]

end A205189

/-! ## A205189.P5357882142417242929

`A205193(∑[n+3]+7)`
-/

namespace A205189.P5357882142417242929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205189.P5357882142417242929

namespace A205189

/-- `A205193(∑[n+3]+7)` -/
def P5357882142417242929.Spec : Prop :=
  ∀ n, P5357882142417242929.a n = A205189 (n + 1)

end A205189

/-! ## A205189.P1715863553712560542

`lcm(2, A205193(A167614(n+2)+1))`
-/

namespace A205189.P1715863553712560542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205193 (A167614 (n + 2) + 1).toNat)

end

end A205189.P1715863553712560542

namespace A205189

/-- `lcm(2, A205193(A167614(n+2)+1))` -/
def P1715863553712560542.Spec : Prop :=
  ∀ n, (P1715863553712560542.a n : ℤ) = A205189 (n + 1)

end A205189

/-! ## A205189.P17301270764543800974

`or(1, A205193(A052905(n)+9))-1`
-/

namespace A205189.P17301270764543800974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A205193 (A052905 n + 9).toNat) - 1

end

end A205189.P17301270764543800974

namespace A205189

/-- `or(1, A205193(A052905(n)+9))-1` -/
def P17301270764543800974.Spec : Prop :=
  ∀ n, P17301270764543800974.a n = A205189 (n + 1)

end A205189

/-!
# A205190: Number of (n+1) X 6 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205190, the canonical program `A205190.P6273062335714138707` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205190 has offset 1).

The definition of A205190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205190.P6273062335714138707

`ogf((144+168x+4x^2+48x^3+152x^4+128x^5-48x^6-40x^7-36x^8)/(1-2x^2-x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205190

/-- `ogf((144+168x+4x^2+48x^3+152x^4+128x^5-48x^6-40x^7-36x^8)/(1-2x^2-x^6))` -/
def P6273062335714138707.Spec : Prop :=
  ∀ n, P6273062335714138707.a n = A205190 (n + 1)

theorem P6273062335714138707.correct : P6273062335714138707.Spec := by
  intro n
  simp only [A205190, Nat.add_sub_cancel]

end A205190

/-! ## A205190.P11193590277836486585

`A205193(∑[n+4]+11)`
-/

namespace A205190.P11193590277836486585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A205190.P11193590277836486585

namespace A205190

/-- `A205193(∑[n+4]+11)` -/
def P11193590277836486585.Spec : Prop :=
  ∀ n, P11193590277836486585.a n = A205190 (n + 1)

end A205190

/-! ## A205190.P16234146101679617363

`lcm(2, A205193(A155212(n)+13))`
-/

namespace A205190.P16234146101679617363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205193 (A155212 n + 13).toNat)

end

end A205190.P16234146101679617363

namespace A205190

/-- `lcm(2, A205193(A155212(n)+13))` -/
def P16234146101679617363.Spec : Prop :=
  ∀ n, (P16234146101679617363.a n : ℤ) = A205190 (n + 1)

end A205190

/-! ## A205190.P16749155951774901953

`A007318(C(n, 2))*A205193(A000124(n+4)+4)`
-/

namespace A205190.P16749155951774901953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A205193 (A000124 (n + 4) + 4).toNat

end

end A205190.P16749155951774901953

namespace A205190

/-- `A007318(C(n, 2))*A205193(A000124(n+4)+4)` -/
def P16749155951774901953.Spec : Prop :=
  ∀ n, P16749155951774901953.a n = A205190 (n + 1)

end A205190

/-! ## A205190.P3504556609434276947

`A205193(A000124(n+4)+4)/A007318(C(2, n))`
-/

namespace A205190.P3504556609434276947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205193 (A000124 (n + 4) + 4).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A205190.P3504556609434276947

namespace A205190

/-- `A205193(A000124(n+4)+4)/A007318(C(2, n))` -/
def P3504556609434276947.Spec : Prop :=
  ∀ n, P3504556609434276947.a n = (A205190 (n + 1) : ℚ)

end A205190

/-!
# A205191: Number of (n+1) X 7 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205191, there is no canonical definition to state claims against.
-/

/-! ## A205191.P12762486051203924670

`A205193(A374007(n+1))`
-/

namespace A205191.P12762486051203924670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A374007 (n + 1)).toNat

end

end A205191.P12762486051203924670

/-! ## A205191.P822750157874216041

`A205193(A166136(n+4))`
-/

namespace A205191.P822750157874216041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A166136 (n + 4)).toNat

end

end A205191.P822750157874216041

/-! ## A205191.P906524231537448814

`A205193(A056115(n)+21)`
-/

namespace A205191.P906524231537448814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A056115 n + 21).toNat

end

end A205191.P906524231537448814

/-! ## A205191.P14560255274171731596

`A205193(A167499(n+4)+1)`
-/

namespace A205191.P14560255274171731596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A167499 (n + 4) + 1).toNat

end

end A205191.P14560255274171731596

/-! ## A205191.P15898935709986898875

`A205193(A167487(n+4)-1)`
-/

namespace A205191.P15898935709986898875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A167487 (n + 4) - 1).toNat

end

end A205191.P15898935709986898875

/-!
# A205192: Number of (n+1) X 8 0..1 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205192, there is no canonical definition to state claims against.
-/

/-! ## A205192.P8629055721174616012

`A205193(A374008(n+1))`
-/

namespace A205192.P8629055721174616012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A374008 (n + 1)).toNat

end

end A205192.P8629055721174616012

/-! ## A205192.P10472637894674367224

`A205193(A167487(n+5))`
-/

namespace A205192.P10472637894674367224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A167487 (n + 5)).toNat

end

end A205192.P10472637894674367224

/-! ## A205192.P11546379340006608959

`A205193(A166136(n+5)+1)`
-/

namespace A205192.P11546379340006608959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A166136 (n + 5) + 1).toNat

end

end A205192.P11546379340006608959

/-! ## A205192.P10796937585178918489

`A205193(A167499(n+5)+2)`
-/

namespace A205192.P10796937585178918489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A167499 (n + 5) + 2).toNat

end

end A205192.P10796937585178918489

/-! ## A205192.P13021686884524529366

`A205193(A167614(n+5)+4)`
-/

namespace A205192.P13021686884524529366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205193 (A167614 (n + 5) + 4).toNat

end

end A205192.P13021686884524529366

/-!
# A205194: Number of (n+1)X2 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205194, there is no canonical definition to state claims against.
-/

/-! ## A205194.P4803083878893355520

`A205198(∑[n]+1)`
-/

namespace A205194.P4803083878893355520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205194.P4803083878893355520

/-! ## A205194.P9868886036005005284

`record[A205198(A114091(n+1))]`
-/

namespace A205194.P9868886036005005284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205194.P9868886036005005284

/-! ## A205194.P9254337718923289744

`record[A010054(n)*A205198(n+1)]`
-/

namespace A205194.P9254337718923289744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205194.P9254337718923289744

/-! ## A205194.P14058415353660816597

`record[A176270(n)*A205198(n+1)]`
-/

namespace A205194.P14058415353660816597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A205198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205194.P14058415353660816597

/-! ## A205194.P12555575804881454972

`record[A205198(n+1)/A015116(n)]`
-/

namespace A205194.P12555575804881454972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205198 (n + 1) : ℚ) / (A015116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205194.P12555575804881454972

/-!
# A205195: Number of (n+1)X3 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205195, there is no canonical definition to state claims against.
-/

/-! ## A205195.P3484162832519302625

`A205198(∑[n+1]+2)`
-/

namespace A205195.P3484162832519302625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205195.P3484162832519302625

/-! ## A205195.P6540514961629136612

`record[A205198(A114091(n+1)+1)]`
-/

namespace A205195.P6540514961629136612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205195.P6540514961629136612

/-! ## A205195.P16556725547193783335

`record[A010054(n)*A205198(n+2)]`
-/

namespace A205195.P16556725547193783335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205195.P16556725547193783335

/-! ## A205195.P15398702611138124644

`record[A205198(3-A049780(n)+n)]`
-/

namespace A205195.P15398702611138124644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (3 - A049780 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205195.P15398702611138124644

/-!
# A205196: Number of (n+1)X4 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205196, there is no canonical definition to state claims against.
-/

/-! ## A205196.P9201663483606945565

`A205198(∑[n+2]+4)`
-/

namespace A205196.P9201663483606945565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205196.P9201663483606945565

/-! ## A205196.P12647528520494442906

`or(char[1], A205198(A167614(n+1)))`
-/

namespace A205196.P12647528520494442906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A205198 (A167614 (n + 1)).toNat)

end

end A205196.P12647528520494442906

/-! ## A205196.P8474592195252256383

`A205198(A167614(n+1))+A025442(n)`
-/

namespace A205196.P8474592195252256383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (A167614 (n + 1)).toNat + A025442 n

end

end A205196.P8474592195252256383

/-!
# A205197: Number of (n+1)X5 0..3 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing, and all 2X2 permanents nonzero.

The programs for A205197, there is no canonical definition to state claims against.
-/

/-! ## A205197.P8534235180946158235

`A205198(A020752(n+1))`
-/

namespace A205197.P8534235180946158235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205198 (A020752 (n + 1)).toNat

end

end A205197.P8534235180946158235

/-!
# A205199: Number of (n+1)X(n+1) 0..2 arrays with the permanents of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205199, there is no canonical definition to state claims against.
-/

/-! ## A205199.P13835362520915919796

`A205206((n+1)²+n²)`
-/

namespace A205199.P13835362520915919796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 ((n + 1) ^ 2 + n ^ 2)

end

end A205199.P13835362520915919796

/-! ## A205199.P13949160240319503307

`A205206(A001844(n))+A025443(n)`
-/

namespace A205199.P13949160240319503307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (A001844 n).toNat + A025443 n

end

end A205199.P13949160240319503307

/-! ## A205199.P7146769915517664509

`or(A011658(n), A205206(A001844(n)))`
-/

namespace A205199.P7146769915517664509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011658 n) (A205206 (A001844 n).toNat)

end

end A205199.P7146769915517664509

