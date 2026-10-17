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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A245701: Permutation of natural numbers: a(1) = 1, a(A014580(n)) = 2*a(n), a(A091242(n)) = 2*a(n)+1, where A014580(n) = binary code for n-th irreducible polynomial over GF(2), A091242(n) = binary code for n-th reducible polynomial over GF(2).

The programs for A245701, there is no canonical definition to state claims against.
-/

/-! ## A245701.P12784362218841842836

`A135141(A245704(n+1))`
-/

namespace A245701.P12784362218841842836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A245704 (n + 1)).toNat

end

end A245701.P12784362218841842836

/-! ## A245701.P18036706206062825540

`A135141(A245820(n+2)-1)`
-/

namespace A245701.P18036706206062825540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A245820 (n + 2) - 1).toNat

end

end A245701.P18036706206062825540

/-! ## A245701.P7407296874895389011

`A233279(A246161(n+1))`
-/

namespace A245701.P7407296874895389011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A246161 (n + 1)).toNat

end

end A245701.P7407296874895389011

/-! ## A245701.P7997625448314722137

`A054429(A246201(n+1))`
-/

namespace A245701.P7997625448314722137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A246201 (n + 1)).toNat

end

end A245701.P7997625448314722137

/-! ## A245701.P2378930091726344073

`A234025(A246163(n+1))`
-/

namespace A245701.P2378930091726344073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A246163 (n + 1)).toNat

end

end A245701.P2378930091726344073

/-! ## A245701.P13043196469613523958

`A054429(A246203(A234612(A003188(n+1))))`
-/

namespace A245701.P13043196469613523958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A246203 (A234612 (A003188 (n + 1)).toNat).toNat).toNat

end

end A245701.P13043196469613523958

/-! ## A245701.P15025535124068752285

`A234025(A193231(A246203(A193231(n+1))))`
-/

namespace A245701.P15025535124068752285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A193231 (A246203 (A193231 (n + 1)).toNat).toNat).toNat

end

end A245701.P15025535124068752285

/-! ## A245701.P3819993022594096472

`A054429(A193231(A246163(A054429(A054429(n+1)))))`
-/

namespace A245701.P3819993022594096472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A193231 (A246163 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A245701.P3819993022594096472

/-! ## A245701.P12828487020615470913

`A234027(A054429(A246163(A059893(A059893(n+1)))))`
-/

namespace A245701.P12828487020615470913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A054429 (A246163 (A059893 (A059893 (n + 1)).toNat).toNat).toNat).toNat

end

end A245701.P12828487020615470913

/-! ## A245701.P15046804926473164932

`A234027(A054429(A246163(A234024(A234024(n+1)))))`
-/

namespace A245701.P15046804926473164932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A054429 (A246163 (A234024 (A234024 (n + 1)).toNat).toNat).toNat).toNat

end

end A245701.P15046804926473164932

/-! ## A245701.P17867031110541771409

`A234027(A054429(A246163(A234027(A234027(n+1)))))`
-/

namespace A245701.P17867031110541771409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (A054429 (A246163 (A234027 (A234027 (n + 1)).toNat).toNat).toNat).toNat

end

end A245701.P17867031110541771409

/-!
# A245702: Permutation of natural numbers: a(1) = 1, a(2n) = A014580(a(n)), a(2n+1) = A091242(a(n)), where A014580(n) = binary code for n-th irreducible polynomial over GF(2) and A091242(n) = binary code for n-th reducible polynomial over GF(2).

The programs for A245702, there is no canonical definition to state claims against.
-/

/-! ## A245702.P625789982257238719

`A246202(A054429(n+1))`
-/

namespace A245702.P625789982257238719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A054429 (n + 1)).toNat

end

end A245702.P625789982257238719

/-! ## A245702.P2952740202821262358

`A246202(A234025(A193231(n+1)))`
-/

namespace A245702.P2952740202821262358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A234025 (A193231 (n + 1)).toNat).toNat

end

end A245702.P2952740202821262358

/-! ## A245702.P7395282533329232878

`A246202(xor(A086099(n), A086799(n+1)))`
-/

namespace A245702.P7395282533329232878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (Int.xor (A086099 n) (A086799 (n + 1))).toNat

end

end A245702.P7395282533329232878

/-! ## A245702.P16471840961309172598

`A246202(A004756(n+1)-A144396(n+1))`
-/

namespace A245702.P16471840961309172598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A004756 (n + 1) - A144396 (n + 1)).toNat

end

end A245702.P16471840961309172598

/-! ## A245702.P3345571169758911111

`A246202(A004758(n+1)-A171763(n+1))`
-/

namespace A245702.P3345571169758911111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A004758 (n + 1) - A171763 (n + 1)).toNat

end

end A245702.P3345571169758911111

/-! ## A245702.P11361614308130509001

`A246202(A004756(n+1)%A144396(n+1))`
-/

namespace A245702.P11361614308130509001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (Int.tmod (A004756 (n + 1)) (A144396 (n + 1))).toNat

end

end A245702.P11361614308130509001

/-! ## A245702.P3697662204634184085

`A246202(A004758(n+1)%A171763(n+1))`
-/

namespace A245702.P3697662204634184085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (Int.tmod (A004758 (n + 1)) (A171763 (n + 1))).toNat

end

end A245702.P3697662204634184085

/-! ## A245702.P7675608783077534694

`A245703(A227413(n+1))`
-/

namespace A245702.P7675608783077534694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A227413 (n + 1)).toNat

end

end A245702.P7675608783077534694

/-! ## A245702.P7037626751450085068

`A246162(A233280(n+1))`
-/

namespace A245702.P7037626751450085068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A233280 (n + 1)).toNat

end

end A245702.P7037626751450085068

/-! ## A245702.P10688895958920897989

`A246164(A234026(n+1))`
-/

namespace A245702.P10688895958920897989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A234026 (n + 1)).toNat

end

end A245702.P10688895958920897989

/-! ## A245702.P9814575840847915736

`A246162(A063946(A003188(n+1)))`
-/

namespace A245702.P9814575840847915736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A063946 (A003188 (n + 1)).toNat).toNat

end

end A245702.P9814575840847915736

/-! ## A245702.P5574511517874314594

`A246164(A054429(A234027(n+1)))`
-/

namespace A245702.P5574511517874314594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A054429 (A234027 (n + 1)).toNat).toNat

end

end A245702.P5574511517874314594

/-! ## A245702.P14321966770340052670

`A246164(A234027(A245812(n+1)))`
-/

namespace A245702.P14321966770340052670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A234027 (A245812 (n + 1)).toNat).toNat

end

end A245702.P14321966770340052670

/-! ## A245702.P3203962226872101336

`A246162(A003188(A003188(A180200(n+1))))`
-/

namespace A245702.P3203962226872101336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A003188 (A003188 (A180200 (n + 1)).toNat).toNat).toNat

end

end A245702.P3203962226872101336

/-! ## A245702.P9063313681819567438

`A246164(A059893(A234027(A234024(n+1))))`
-/

namespace A245702.P9063313681819567438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A059893 (A234027 (A234024 (n + 1)).toNat).toNat).toNat

end

end A245702.P9063313681819567438

/-! ## A245702.P12554848708774159656

`A246164(A245812(A054429(A234025(n+1))))`
-/

namespace A245702.P12554848708774159656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246164 (A245812 (A054429 (A234025 (n + 1)).toNat).toNat).toNat

end

end A245702.P12554848708774159656

/-! ## A245702.P1966750379765095014

`A245703(A246378(A135141(A246378(n+1))))`
-/

namespace A245702.P1966750379765095014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245703 (A246378 (A135141 (A246378 (n + 1)).toNat).toNat).toNat

end

end A245702.P1966750379765095014

/-!
# A245703: Permutation of natural numbers: a(1) = 1, a(p_n) = A014580(a(n)), a(c_n) = A091242(a(n)), where p_n = n-th prime, c_n = n-th composite number and A014580(n) and A091242(n) are binary codes for n-th irreducible and n-th reducible polynomials over GF(2), respectively.

The programs for A245703, there is no canonical definition to state claims against.
-/

/-! ## A245703.P2990546824074843526

`A091204(A245821(n+1))`
-/

namespace A245703.P2990546824074843526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (A245821 (n + 1)).toNat

end

end A245703.P2990546824074843526

/-! ## A245703.P9818194181022574417

`A245819(n+2)-1`
-/

namespace A245703.P9818194181022574417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245819 (n + 2) - 1

end

end A245703.P9818194181022574417

/-! ## A245703.P5500255006458111824

`abs(∑[-Δ[A245819(n+1)]])`
-/

namespace A245703.P5500255006458111824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A245703.P5500255006458111824

/-! ## A245703.P4388173385759681967

`∑[Δ[A245819(n+1)]%A338667(n+1)]`
-/

namespace A245703.P4388173385759681967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A338667 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245703.P4388173385759681967

/-! ## A245703.P9210987140197865928

`A260426(A260423(n+1))`
-/

namespace A245703.P9210987140197865928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260426 (A260423 (n + 1)).toNat

end

end A245703.P9210987140197865928

/-! ## A245703.P16112982162193956390

`A023443(A245819(n+2))`
-/

namespace A245703.P16112982162193956390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A245819 (n + 2)).toNat

end

end A245703.P16112982162193956390

/-! ## A245703.P15579721421052541806

`A260426(A260422(A246377(n+1)))`
-/

namespace A245703.P15579721421052541806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260426 (A260422 (A246377 (n + 1)).toNat).toNat

end

end A245703.P15579721421052541806

/-! ## A245703.P10651824419847419080

`A245814(A245815(n+2))-1`
-/

namespace A245703.P10651824419847419080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245814 (A245815 (n + 2)).toNat - 1

end

end A245703.P10651824419847419080

/-! ## A245703.P3556518266598698991

`A245702(A135141(n+1))`
-/

namespace A245703.P3556518266598698991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245702 (A135141 (n + 1)).toNat

end

end A245703.P3556518266598698991

/-! ## A245703.P18411679273969413588

`A246202(A246377(n+1))`
-/

namespace A245703.P18411679273969413588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A246377 (n + 1)).toNat

end

end A245703.P18411679273969413588

/-!
# A245704: Permutation of natural numbers: a(1) = 1, a(A014580(n)) = A000040(a(n)), a(A091242(n)) = A002808(a(n)), where A000040(n) = n-th prime, A002808(n) = n-th composite number, and A014580(n) and A091242(n) are binary codes for n-th irreducible and n-th reducible polynomial over GF(2), respectively.

The programs for A245704, there is no canonical definition to state claims against.
-/

/-! ## A245704.P18350259787049148196

`A245820(n+2)-1`
-/

namespace A245704.P18350259787049148196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245820 (n + 2) - 1

end

end A245704.P18350259787049148196

/-! ## A245704.P12730861661051707253

`A023443(A245820(n+2))`
-/

namespace A245704.P12730861661051707253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A245820 (n + 2)).toNat

end

end A245704.P12730861661051707253

/-! ## A245704.P2013871029302583220

`A000720(p?[A008578(A245820(n+1))])`
-/

namespace A245704.P2013871029302583220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A245820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245704.P2013871029302583220

/-! ## A245704.P18063120676288245849

`A245822(A091205(n+1))`
-/

namespace A245704.P18063120676288245849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245822 (A091205 (n + 1)).toNat

end

end A245704.P18063120676288245849

/-! ## A245704.P11237707255285406073

`A260424(A260425(n+1))`
-/

namespace A245704.P11237707255285406073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260424 (A260425 (n + 1)).toNat

end

end A245704.P11237707255285406073

/-! ## A245704.P15783663838673845220

`A245816(A245813(n+2))-1`
-/

namespace A245704.P15783663838673845220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245816 (A245813 (n + 2)).toNat - 1

end

end A245704.P15783663838673845220

/-! ## A245704.P15843598814461077913

`A260424(A260422(A246201(n+1)))`
-/

namespace A245704.P15843598814461077913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260424 (A260422 (A246201 (n + 1)).toNat).toNat

end

end A245704.P15843598814461077913

/-! ## A245704.P3088494602374006080

`A246378(A246201(n+1))`
-/

namespace A245704.P3088494602374006080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A246201 (n + 1)).toNat

end

end A245704.P3088494602374006080

/-! ## A245704.P13233667831967504418

`A246378(A260421(A260425(A260422(A260421(n+1)))))`
-/

namespace A245704.P13233667831967504418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A260421 (A260425 (A260422 (A260421 (n + 1)).toNat).toNat).toNat).toNat

end

end A245704.P13233667831967504418

/-! ## A245704.P11504360034166768802

`A227413(A245701(n+1))`
-/

namespace A245704.P11504360034166768802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A245701 (n + 1)).toNat

end

end A245704.P11504360034166768802

/-!
# A245705: Permutation of natural numbers: a(n) = A245607(A245708(n)).

The programs for A245705, there is no canonical definition to state claims against.
-/

/-! ## A245705.P11591743970514053434

`A245607(A245708(n+1))`
-/

namespace A245705.P11591743970514053434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245607 (A245708 (n + 1)).toNat

end

end A245705.P11591743970514053434

/-! ## A245705.P4144914958284246171

`A245605(A064216(A245708(A245708(A245707(n+1)))))`
-/

namespace A245705.P4144914958284246171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (A064216 (A245708 (A245708 (A245707 (n + 1)).toNat).toNat).toNat).toNat

end

end A245705.P4144914958284246171

/-! ## A245705.P5818524344954022409

`A245605(A064989(A245606(2*n+1)))`
-/

namespace A245705.P5818524344954022409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (A064989 (A245606 (2 * n + 1)).toNat).toNat

end

end A245705.P5818524344954022409

/-!
# A245706: Permutation of natural numbers: a(n) = A245707(A245608(n)).

The programs for A245706, there is no canonical definition to state claims against.
-/

/-! ## A245706.P215950063238931523

`A245707(A245608(n+1))`
-/

namespace A245706.P215950063238931523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245707 (A245608 (n + 1)).toNat

end

end A245706.P215950063238931523

/-! ## A245706.P8115003207174048321

`A245707(A245606(2*(n+1))/2)`
-/

namespace A245706.P8115003207174048321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245707 (SequenceMachineLib.roundAway ((A245606 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A245706.P8115003207174048321

/-! ## A245706.P1520321585606956016

`A245707(floor(A245606(n+2+n)/2))`
-/

namespace A245706.P1520321585606956016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245707 ⌊(A245606 (n + 2 + n) : ℚ) / 2⌋.toNat

end

end A245706.P1520321585606956016

/-! ## A245706.P17493121155784039062

`A245707(A048673(A245606(n+1)))`
-/

namespace A245706.P17493121155784039062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245707 (A048673 (A245606 (n + 1)).toNat).toNat

end

end A245706.P17493121155784039062

/-!
# A245707: Permutation of natural numbers, the odd bisection of A245605 incremented by one and halved: a(n) = (1+A245605((2*n)-1))/2.

The programs for A245707, there is no canonical definition to state claims against.
-/

/-! ## A245707.P745045001679705256

`ceil(A245605(2*n+1)/2)`
-/

namespace A245707.P745045001679705256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245605 (2 * n + 1) : ℚ) / 2⌉

end

end A245707.P745045001679705256

/-! ## A245707.P17407488159206933099

`round(A245605(A005408(n))/2)`
-/

namespace A245707.P17407488159206933099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245605 (A005408 n).toNat : ℚ) / 2)

end

end A245707.P17407488159206933099

/-! ## A245707.P6390675179588302126

`ceil(1/A100041(n)+A245605(A005408(n))/2)`
-/

namespace A245707.P6390675179588302126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A100041 n : ℚ) + (A245605 (A005408 n).toNat : ℚ) / 2⌉

end

end A245707.P6390675179588302126

/-! ## A245707.P8940005546424237788

`ceil(A245605(A005408(n))/2)%A027569(n+1)`
-/

namespace A245707.P8940005546424237788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A245605 (A005408 n).toNat : ℚ) / 2⌉ (A027569 (n + 1))

end

end A245707.P8940005546424237788

/-! ## A245707.P7828100032342573331

`ceil(A245607(A254049(n+1))/2)`
-/

namespace A245707.P7828100032342573331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245607 (A254049 (n + 1)).toNat : ℚ) / 2⌉

end

end A245707.P7828100032342573331

/-! ## A245707.P16450642930951944414

`ceil(A245607(A048673(2*n+1))/2)`
-/

namespace A245707.P16450642930951944414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245607 (A048673 (2 * n + 1)).toNat : ℚ) / 2⌉

end

end A245707.P16450642930951944414

/-! ## A245707.P9875293085282066528

`A014682(A245605(2*n+1)+1)`
-/

namespace A245707.P9875293085282066528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245605 (2 * n + 1) + 1).toNat

end

end A245707.P9875293085282066528

/-! ## A245707.P9103176690782593230

`A318518(A245605(2*n+1)+1)`
-/

namespace A245707.P9103176690782593230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A245605 (2 * n + 1) + 1).toNat

end

end A245707.P9103176690782593230

/-! ## A245707.P16590616852990983012

`A246425(A245605(2*n+1))`
-/

namespace A245707.P16590616852990983012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A245605 (2 * n + 1)).toNat

end

end A245707.P16590616852990983012

/-! ## A245707.P2935602588065533664

`A245706(A245607(n+1))`
-/

namespace A245707.P2935602588065533664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245706 (A245607 (n + 1)).toNat

end

end A245707.P2935602588065533664

/-! ## A245707.P15339280809257452063

`A245706(A245605(2*(n+1))/2)`
-/

namespace A245707.P15339280809257452063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245706 (SequenceMachineLib.roundAway ((A245605 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A245707.P15339280809257452063

/-! ## A245707.P5323141022174991039

`A245706(A245605(A064216(n+1)))`
-/

namespace A245707.P5323141022174991039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245706 (A245605 (A064216 (n + 1)).toNat).toNat

end

end A245707.P5323141022174991039

/-! ## A245707.P8528291837610738305

`A245706(A245605(A064989(2*n+1)))`
-/

namespace A245707.P8528291837610738305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245706 (A245605 (A064989 (2 * n + 1)).toNat).toNat

end

end A245707.P8528291837610738305

/-! ## A245707.P17424979874439060411

`A078898(A245605(2*n+1)+1)`
-/

namespace A245707.P17424979874439060411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A245605 (2 * n + 1) + 1).toNat

end

end A245707.P17424979874439060411

/-! ## A245707.P7826332631703475709

`A246277(A245605(2*n+1)+1)`
-/

namespace A245707.P7826332631703475709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A245605 (2 * n + 1) + 1).toNat

end

end A245707.P7826332631703475709

/-! ## A245707.P15421577708094250019

`A003602(A245607(A048673(2*n+1)))`
-/

namespace A245707.P15421577708094250019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A245607 (A048673 (2 * n + 1)).toNat).toNat

end

end A245707.P15421577708094250019

/-! ## A245707.P1278426727128675520

`A003602(A245607(A003602(A003961(2*n+1))))`
-/

namespace A245707.P1278426727128675520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A245607 (A003602 (A003961 (2 * n + 1)).toNat).toNat).toNat

end

end A245707.P1278426727128675520

/-!
# A245708: Permutation of natural numbers, the odd bisection of A245606 incremented by one and halved: a(n) = (1+A245606((2*n)-1))/2.

The programs for A245708, there is no canonical definition to state claims against.
-/

/-! ## A245708.P14318165085288596698

`round(A245606(Δ[n²])/2)`
-/

namespace A245708.P14318165085288596698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)

end

end A245708.P14318165085288596698

/-! ## A245708.P1971113056030034017

`ceil(A245606(2*n+1)/2)`
-/

namespace A245708.P1971113056030034017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245606 (2 * n + 1) : ℚ) / 2⌉

end

end A245708.P1971113056030034017

/-! ## A245708.P8264477701366252237

`floor(A245606(Δ[n²])/2)+A033999(n)²`
-/

namespace A245708.P8264477701366252237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋ + A033999 n ^ 2

end

end A245708.P8264477701366252237

/-! ## A245708.P12656407090639829626

`(A245606(2*n+1)+A033999(2*n))/2`
-/

namespace A245708.P12656407090639829626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245606 (2 * n + 1) + A033999 (2 * n) : ℚ) / 2

end

end A245708.P12656407090639829626

/-! ## A245708.P9405545924748148288

`(A245606(2*n+1)+A141459(2*n+1))/2`
-/

namespace A245708.P9405545924748148288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245606 (2 * n + 1) + A141459 (2 * n + 1) : ℚ) / 2

end

end A245708.P9405545924748148288

/-! ## A245708.P15852291927456298680

`floor(A014963(10*(n+1))+A245606(Δ[n²])/2)`
-/

namespace A245708.P15852291927456298680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (10 * (n + 1)) : ℚ) + (A245606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A245708.P15852291927456298680

/-! ## A245708.P13593428584455611610

`A014682(A245606(2*n+1)+1)`
-/

namespace A245708.P13593428584455611610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245606 (2 * n + 1) + 1).toNat

end

end A245708.P13593428584455611610

/-! ## A245708.P1483766056566397120

`A273943(A245606(2*n+1)+1)`
-/

namespace A245708.P1483766056566397120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A245606 (2 * n + 1) + 1).toNat

end

end A245708.P1483766056566397120

/-! ## A245708.P4691701545169016001

`A000217(A245606(n+1+n))/A245606(n+1+n)`
-/

namespace A245708.P4691701545169016001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A245606 (n + 1 + n)).toNat : ℚ) / (A245606 (n + 1 + n) : ℚ)

end

end A245708.P4691701545169016001

/-! ## A245708.P15408633794982698807

`A246425(A245606(2*n+1))`
-/

namespace A245708.P15408633794982698807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A245606 (2 * n + 1)).toNat

end

end A245708.P15408633794982698807

/-! ## A245708.P8728883703521974596

`A008619(A245606(Δ[n²]))`
-/

namespace A245708.P8728883703521974596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A245606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A245708.P8728883703521974596

/-! ## A245708.P1696642889896459927

`A000463(A245606(n+1+n))`
-/

namespace A245708.P1696642889896459927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A245606 (n + 1 + n)).toNat

end

end A245708.P1696642889896459927

/-! ## A245708.P7517201964341204811

`A078898(A245606(2*n+1)+1)`
-/

namespace A245708.P7517201964341204811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A245606 (2 * n + 1) + 1).toNat

end

end A245708.P7517201964341204811

/-! ## A245708.P10806227426596461305

`A110654(A245606(2*n+1)+1)`
-/

namespace A245708.P10806227426596461305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A245606 (2 * n + 1) + 1).toNat

end

end A245708.P10806227426596461305

/-! ## A245708.P2169942322881455455

`A008619(A245606(2*n+1)-1)`
-/

namespace A245708.P2169942322881455455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A245606 (2 * n + 1) - 1).toNat

end

end A245708.P2169942322881455455

/-!
# A245709: Fixed points of A245705 and A245706.

The programs for A245709, there is no canonical definition to state claims against.
-/

/-! ## A245709.P17763703659222570823

`eq[n, A245705(abs(1-n)+1)]`
-/

namespace A245709.P17763703659222570823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245709.P17763703659222570823

/-! ## A245709.P2810853476931860698

`eq[n+1, A245705(n+1)]+1`
-/

namespace A245709.P2810853476931860698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245709.P2810853476931860698

/-! ## A245709.P1621687476927123809

`eq[n+1, A245706(n+1)]+1`
-/

namespace A245709.P1621687476927123809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245709.P1621687476927123809

/-! ## A245709.P18311150912918133572

`eq[A242784(A242784(n)), A365431(n+1)]+1`
-/

namespace A245709.P18311150912918133572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A242784 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A245709.P18311150912918133572

/-! ## A245709.P6099203775917835719

`record[gcd(A164000(n+1), A245705(n+1))]`
-/

namespace A245709.P6099203775917835719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164000 (n + 1)) (A245705 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245709.P6099203775917835719

/-!
# A245710: Number of nonzero evil numbers <= n, see A001969.

The programs for A245710, the canonical program `A245710.P15631509805562168488` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245710 has offset 0).

The definition of A245710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245710.P16800682499587364598

`A159481(n)-1`
-/

namespace A245710.P16800682499587364598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n - 1

end

end A245710.P16800682499587364598

namespace A245710

/-- `A159481(n)-1` -/
def P16800682499587364598.Spec : Prop :=
  ∀ n, P16800682499587364598.a n = A245710 n

end A245710

/-! ## A245710.P12608435189145381361

`n-A115384(n)`
-/

namespace A245710.P12608435189145381361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A115384 n

end

end A245710.P12608435189145381361

namespace A245710

/-- `n-A115384(n)` -/
def P12608435189145381361.Spec : Prop :=
  ∀ n, P12608435189145381361.a n = A245710 n

end A245710

/-! ## A245710.P15631509805562168488

`A010059(n)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245710

/-- `A010059(n)+a(n-1)` -/
def P15631509805562168488.Spec : Prop :=
  ∀ n, P15631509805562168488.a n = A245710 n

theorem P15631509805562168488.correct : P15631509805562168488.Spec := by
  intro n
  simp only [A245710]

end A245710

/-! ## A245710.P8692850568969031325

`log2(A101651(n))`
-/

namespace A245710.P8692850568969031325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A101651 n : ℝ)

end

end A245710.P8692850568969031325

namespace A245710

/-- `log2(A101651(n))` -/
def P8692850568969031325.Spec : Prop :=
  ∀ n, P8692850568969031325.a n = (A245710 n : ℝ)

end A245710

/-! ## A245710.P6735686252953666158

`∑[char[xor(n, 2*n)]]-1`
-/

namespace A245710.P6735686252953666158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A245710.P6735686252953666158

namespace A245710

/-- `∑[char[xor(n, 2*n)]]-1` -/
def P6735686252953666158.Spec : Prop :=
  ∀ n, P6735686252953666158.a n = A245710 n

end A245710

/-! ## A245710.P6383338965574909521

`n-∑[char[xor(n, Δ[n²])]]`
-/

namespace A245710.P6383338965574909521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245710.P6383338965574909521

namespace A245710

/-- `n-∑[char[xor(n, Δ[n²])]]` -/
def P6383338965574909521.Spec : Prop :=
  ∀ n, P6383338965574909521.a n = A245710 n

end A245710

/-! ## A245710.P5184750007678915579

`xor(-∑[char[xor(n, 2*n)]], -1)`
-/

namespace A245710.P5184750007678915579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (-1)

end

end A245710.P5184750007678915579

namespace A245710

/-- `xor(-∑[char[xor(n, 2*n)]], -1)` -/
def P5184750007678915579.Spec : Prop :=
  ∀ n, P5184750007678915579.a n = A245710 n

end A245710

/-! ## A245710.P1868827403082713899

`∑[char[xor(n+1, 2*(n+1))]]`
-/

namespace A245710.P1868827403082713899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245710.P1868827403082713899

namespace A245710

/-- `∑[char[xor(n+1, 2*(n+1))]]` -/
def P1868827403082713899.Spec : Prop :=
  ∀ n, (P1868827403082713899.a n : ℤ) = A245710 n

end A245710

/-! ## A245710.P1773509832732840145

`floor((n-char[xor(n, Δ[n²])])/2)`
-/

namespace A245710.P1773509832732840145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2⌋

end

end A245710.P1773509832732840145

namespace A245710

/-- `floor((n-char[xor(n, Δ[n²])])/2)` -/
def P1773509832732840145.Spec : Prop :=
  ∀ n, P1773509832732840145.a n = A245710 n

end A245710

/-! ## A245710.P3226019823774188134

`∑[(a(floor(n/2))+n)%2]` with `a(0)=0, a(1)=0`
-/

namespace A245710.P3226019823774188134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245710.P3226019823774188134

namespace A245710

/-- `∑[(a(floor(n/2))+n)%2]` -/
def P3226019823774188134.Spec : Prop :=
  ∀ n, (P3226019823774188134.a n : ℤ) = A245710 n

end A245710

/-! ## A245710.P8540992202286766630

`char[xor(n, 2*n)]+a(n-1)` with `a(0)=0`
-/

namespace A245710.P8540992202286766630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A245710.P8540992202286766630

namespace A245710

/-- `char[xor(n, 2*n)]+a(n-1)` -/
def P8540992202286766630.Spec : Prop :=
  ∀ n, (P8540992202286766630.a n : ℤ) = A245710 n

end A245710

/-! ## A245710.P4300753181788852889

`n-∑[comp[xor(n, 2*n+1)]%2]`
-/

namespace A245710.P4300753181788852889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245710.P4300753181788852889

namespace A245710

/-- `n-∑[comp[xor(n, 2*n+1)]%2]` -/
def P4300753181788852889.Spec : Prop :=
  ∀ n, P4300753181788852889.a n = A245710 n

end A245710

/-! ## A245710.P9561105146570294258

`a(n-1)+1-char[xor(n, Δ[n²])]` with `a(0)=0`
-/

namespace A245710.P9561105146570294258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245710.P9561105146570294258

namespace A245710

/-- `a(n-1)+1-char[xor(n, Δ[n²])]` -/
def P9561105146570294258.Spec : Prop :=
  ∀ n, P9561105146570294258.a n = A245710 n

end A245710

/-! ## A245710.P10076451944197844409

`n-∑[comp[2*n]-comp[xor(n, 2*n)]]`
-/

namespace A245710.P10076451944197844409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245710.P10076451944197844409

namespace A245710

/-- `n-∑[comp[2*n]-comp[xor(n, 2*n)]]` -/
def P10076451944197844409.Spec : Prop :=
  ∀ n, P10076451944197844409.a n = A245710 n

end A245710

/-! ## A245710.P1275511828652019055

`n-∑[char[xor(n+1, n+1+n)+1]]`
-/

namespace A245710.P1275511828652019055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 1 + n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245710.P1275511828652019055

namespace A245710

/-- `n-∑[char[xor(n+1, n+1+n)+1]]` -/
def P1275511828652019055.Spec : Prop :=
  ∀ n, P1275511828652019055.a n = A245710 n

end A245710

/-! ## A245710.P13400175999905859197

`∑[A010059(n)]-1`
-/

namespace A245710.P13400175999905859197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A245710.P13400175999905859197

namespace A245710

/-- `∑[A010059(n)]-1` -/
def P13400175999905859197.Spec : Prop :=
  ∀ n, P13400175999905859197.a n = A245710 n

end A245710

/-! ## A245710.P1286128837625547086

`n-∑[A010060(n)]`
-/

namespace A245710.P1286128837625547086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245710.P1286128837625547086

namespace A245710

/-- `n-∑[A010060(n)]` -/
def P1286128837625547086.Spec : Prop :=
  ∀ n, P1286128837625547086.a n = A245710 n

end A245710

/-! ## A245710.P9966996375058553787

`(n-A076826(n))/2`
-/

namespace A245710.P9966996375058553787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A076826 n : ℚ) / 2

end

end A245710.P9966996375058553787

namespace A245710

/-- `(n-A076826(n))/2` -/
def P9966996375058553787.Spec : Prop :=
  ∀ n, P9966996375058553787.a n = (A245710 n : ℚ)

end A245710

/-! ## A245710.P14701881617032929052

`∑[char[A048724(n+1)]]`
-/

namespace A245710.P14701881617032929052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245710.P14701881617032929052

namespace A245710

/-- `∑[char[A048724(n+1)]]` -/
def P14701881617032929052.Spec : Prop :=
  ∀ n, (P14701881617032929052.a n : ℤ) = A245710 n

end A245710

/-!
# A245711: Permutation of natural numbers, odd bisection of A245705 incremented by one and halved: a(n) = (1+A245705((2*n)-1)) / 2.

The programs for A245711, there is no canonical definition to state claims against.
-/

/-! ## A245711.P13486320518930137881

`round(A245705(Δ[n²])/2)`
-/

namespace A245711.P13486320518930137881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)

end

end A245711.P13486320518930137881

/-! ## A245711.P8700237516141076581

`ceil(A245705(2*n+1)/2)`
-/

namespace A245711.P8700237516141076581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245705 (2 * n + 1) : ℚ) / 2⌉

end

end A245711.P8700237516141076581

/-! ## A245711.P15239800109880568830

`(A245705(Δ[n²])+A309873(n+1)²)/2`
-/

namespace A245711.P15239800109880568830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A309873 (n + 1) ^ 2 : ℚ) / 2

end

end A245711.P15239800109880568830

/-! ## A245711.P7858653458574709571

`(A245705(2*n+1)+(A004442(n)-n)²)/2`
-/

namespace A245711.P7858653458574709571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245705 (2 * n + 1) + (A004442 n - (n : ℤ)) ^ 2 : ℚ) / 2

end

end A245711.P7858653458574709571

/-! ## A245711.P11101095082456355277

`(A309873(2*n+1)+A245705(2*n+1))/2`
-/

namespace A245711.P11101095082456355277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309873 (2 * n + 1) + A245705 (2 * n + 1) : ℚ) / 2

end

end A245711.P11101095082456355277

/-! ## A245711.P11029710708865500932

`(A245705(Δ[n²])-A008683(A006450(n+1)))/2`
-/

namespace A245711.P11029710708865500932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A008683 (A006450 (n + 1)).toNat : ℚ) / 2

end

end A245711.P11029710708865500932

/-! ## A245711.P1386484009820676591

`ceil(A245607(A245708(2*n+1))/2)`
-/

namespace A245711.P1386484009820676591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245607 (A245708 (2 * n + 1)).toNat : ℚ) / 2⌉

end

end A245711.P1386484009820676591

/-! ## A245711.P15037498097827340469

`A014682(A245705(2*n+1)+1)`
-/

namespace A245711.P15037498097827340469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245705 (2 * n + 1) + 1).toNat

end

end A245711.P15037498097827340469

/-! ## A245711.P4425735573560750951

`A246425(A245705(Δ[n²]))`
-/

namespace A245711.P4425735573560750951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A245705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A245711.P4425735573560750951

/-!
# A245712: Permutation of natural numbers, odd bisection of A245706 incremented by one and halved: a(n) = (1+A245706((2*n)-1)) / 2.

The programs for A245712, there is no canonical definition to state claims against.
-/

/-! ## A245712.P2039654652228298103

`(A245706(Δ[n²])+1)/2`
-/

namespace A245712.P2039654652228298103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1 : ℚ) / 2

end

end A245712.P2039654652228298103

/-! ## A245712.P17572486333620696211

`ceil(A245706(2*n+1)/2)`
-/

namespace A245712.P17572486333620696211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245706 (2 * n + 1) : ℚ) / 2⌉

end

end A245712.P17572486333620696211

/-! ## A245712.P14505554977157295530

`round(A245706(n+n+1)/2)`
-/

namespace A245712.P14505554977157295530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245706 (n + n + 1) : ℚ) / 2)

end

end A245712.P14505554977157295530

/-! ## A245712.P17221007593808471792

`floor(A245706(n+1+n)/2)+1`
-/

namespace A245712.P17221007593808471792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245706 (n + 1 + n) : ℚ) / 2⌋ + 1

end

end A245712.P17221007593808471792

/-! ## A245712.P16106392789631004852

`lcm(A245706(2*n+1)+1, A280193(n))/2`
-/

namespace A245712.P16106392789631004852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A245706 (2 * n + 1) + 1) (A280193 n) : ℚ) / 2

end

end A245712.P16106392789631004852

/-! ## A245712.P136119592699900262

`A014682(A245706(2*n+1)+1)`
-/

namespace A245712.P136119592699900262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245706 (2 * n + 1) + 1).toNat

end

end A245712.P136119592699900262

/-! ## A245712.P13539407291897956077

`ceil(A245707(A245608(2*n+1))/2)`
-/

namespace A245712.P13539407291897956077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245707 (A245608 (2 * n + 1)).toNat : ℚ) / 2⌉

end

end A245712.P13539407291897956077

/-!
# A245713: Sorted imperfect powers b^p with b > 0, p > 2, with multiplicity.

The programs for A245713, there is no canonical definition to state claims against.
-/

/-! ## A245713.P8793416972247334185

`A076467(A153249(n)%A057183(n+1))`
-/

namespace A245713.P8793416972247334185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (Int.tmod (A153249 n) (A057183 (n + 1))).toNat

end

end A245713.P8793416972247334185

/-! ## A245713.P11727686522063762389

`A076467(A153249(n))%A219663(n+5)`
-/

namespace A245713.P11727686522063762389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076467 (A153249 n).toNat) (A219663 (n + 5))

end

end A245713.P11727686522063762389

/-! ## A245713.P2546770988466549604

`A036966(A269169(n+1)%A260794(n+3))`
-/

namespace A245713.P2546770988466549604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (Int.tmod (A269169 (n + 1)) (A260794 (n + 3))).toNat

end

end A245713.P2546770988466549604

/-! ## A245713.P2220897930257992325

`A076467(∑[gcd(3, A180722(n+1))%3])`
-/

namespace A245713.P2220897930257992325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A180722 (n + 1)) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245713.P2220897930257992325

/-! ## A245713.P5366174968681271315

`A036966(∑[A293899(2*n+3)^(3*n+5)])`
-/

namespace A245713.P5366174968681271315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293899 (2 * n + 3) ^ (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245713.P5366174968681271315

/-!
# A245714: Least number k > 0 such that n + k! is prime, or 0 if no such k exists.

The programs for A245714, there is no canonical definition to state claims against.
-/

/-! ## A245714.P4543603960370164488

`and(A057217(n+1), A285719(A045665(n)))`
-/

namespace A245714.P4543603960370164488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057217 (n + 1)) (A285719 (A045665 n).toNat)

end

end A245714.P4543603960370164488

/-! ## A245714.P1404603642363402614

`A225084(A013632(n+1))+A185284(2*n+1)`
-/

namespace A245714.P1404603642363402614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (A013632 (n + 1)).toNat + A185284 (2 * n + 1)

end

end A245714.P1404603642363402614

/-! ## A245714.P13681833005837437909

`A225084(A123317(n+1))+A185284(2*n+1)`
-/

namespace A245714.P13681833005837437909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225084 (A123317 (n + 1)).toNat + A185284 (2 * n + 1)

end

end A245714.P13681833005837437909

/-! ## A245714.P9432742883394678365

`A206588(9*A243145(n+1))`
-/

namespace A245714.P9432742883394678365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206588 (9 * A243145 (n + 1)).toNat

end

end A245714.P9432742883394678365

/-! ## A245714.P14924969640944357214

`xor(A040001(n), A257000(A088066(2*(n+1))))`
-/

namespace A245714.P14924969640944357214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040001 n) (A257000 (A088066 (2 * (n + 1))).toNat)

end

end A245714.P14924969640944357214

/-!
# A245715: Least number k > 0 such that n - k! is prime, or 0 if no such k exists.

The programs for A245715, there is no canonical definition to state claims against.
-/

/-! ## A245715.P17431110752450943247

`A035614(∑{e}[A005578(n), #])`
-/

namespace A245715.P17431110752450943247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245715.P17431110752450943247

/-! ## A245715.P4316675616959794298

`A082375(∑{e}[A005578(n), #])`
-/

namespace A245715.P4316675616959794298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245715.P4316675616959794298

/-! ## A245715.P14287656400460397465

`A124754(∑{e}[A005578(n), #])`
-/

namespace A245715.P14287656400460397465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245715.P14287656400460397465

/-! ## A245715.P12338556539129214952

`A255308(∑{e}[A005578(n), #])`
-/

namespace A245715.P12338556539129214952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245715.P12338556539129214952

/-! ## A245715.P7967901203874350329

`A268726(∑{e}[A005578(n), #])`
-/

namespace A245715.P7967901203874350329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245715.P7967901203874350329

/-!
# A245716: Least number k > 0 such that n + k! and n - k! are both prime, or 0 if no such k exists.

The programs for A245716, there is no canonical definition to state claims against.
-/

/-! ## A245716.P1891406031629264617

`A241425(n+1)+A072784(A185238(n))`
-/

namespace A245716.P1891406031629264617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (n + 1) + A072784 (A185238 n).toNat

end

end A245716.P1891406031629264617

/-! ## A245716.P9799425444711248253

`A241425(n+1)+A072784(A185284(n+2))`
-/

namespace A245716.P9799425444711248253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (n + 1) + A072784 (A185284 (n + 2)).toNat

end

end A245716.P9799425444711248253

/-! ## A245716.P12115786090313252723

`A241425(n+1)-A341619(A100178(n+1))`
-/

namespace A245716.P12115786090313252723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (n + 1) - A341619 (A100178 (n + 1)).toNat

end

end A245716.P12115786090313252723

/-! ## A245716.P1104474135610044462

`A241425(n+1)-A185284(A032513(n*A185284(n)))`
-/

namespace A245716.P1104474135610044462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (n + 1) - A185284 (A032513 ((n : ℤ) * A185284 n).toNat).toNat

end

end A245716.P1104474135610044462

/-! ## A245716.P16320289126821320233

`A241425(n+1)-A185284(A032513(n))`
-/

namespace A245716.P16320289126821320233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (n + 1) - A185284 (A032513 n).toNat

end

end A245716.P16320289126821320233

/-!
# A245717: Triangle read by rows: T(n,k) = gcd(n,k^2), 1 <= k <= n.

The programs for A245717, the canonical program `A245717.P9037708983292649843` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245717 has offset 1).

The definition of A245717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245717.P18295437549178525495

`gcd(A002260(n+1)², round(sqrt(2*n)))`
-/

namespace A245717.P18295437549178525495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1) ^ 2) (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)))

end

end A245717.P18295437549178525495

namespace A245717

/-- `gcd(A002260(n+1)², round(sqrt(2*n)))` -/
def P18295437549178525495.Spec : Prop :=
  ∀ n, (P18295437549178525495.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P9037708983292649843

`gcd(A105020(n), A123578(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A245717

/-- `gcd(A105020(n), A123578(n))` -/
def P9037708983292649843.Spec : Prop :=
  ∀ n, (P9037708983292649843.a n : ℤ) = A245717 (n + 1)

theorem P9037708983292649843.correct : P9037708983292649843.Spec := by
  intro n
  simp only [A245717, Nat.add_sub_cancel]

end A245717

/-! ## A245717.P9178684775838186266

`gcd(A127738(n+1), A130855(n))`
-/

namespace A245717.P9178684775838186266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127738 (n + 1)) (A130855 n)

end

end A245717.P9178684775838186266

namespace A245717

/-- `gcd(A127738(n+1), A130855(n))` -/
def P9178684775838186266.Spec : Prop :=
  ∀ n, (P9178684775838186266.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P13775750170969043496

`gcd(A215630(n+1), A274093(n))`
-/

namespace A245717.P13775750170969043496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215630 (n + 1)) (A274093 n)

end

end A245717.P13775750170969043496

namespace A245717

/-- `gcd(A215630(n+1), A274093(n))` -/
def P13775750170969043496.Spec : Prop :=
  ∀ n, (P13775750170969043496.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P11557065122868480478

`gcd(A025581(n)², ∑[A010054(n)])`
-/

namespace A245717.P11557065122868480478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245717.P11557065122868480478

namespace A245717

/-- `gcd(A025581(n)², ∑[A010054(n)])` -/
def P11557065122868480478.Spec : Prop :=
  ∀ n, (P11557065122868480478.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P3775464332250233313

`gcd(A128140(n+1)², A056942(n))`
-/

namespace A245717.P3775464332250233313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128140 (n + 1) ^ 2) (A056942 n)

end

end A245717.P3775464332250233313

namespace A245717

/-- `gcd(A128140(n+1)², A056942(n))` -/
def P3775464332250233313.Spec : Prop :=
  ∀ n, (P3775464332250233313.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P10038032278854149350

`gcd(A330613(n+1)², A274094(n))`
-/

namespace A245717.P10038032278854149350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330613 (n + 1) ^ 2) (A274094 n)

end

end A245717.P10038032278854149350

namespace A245717

/-- `gcd(A330613(n+1)², A274094(n))` -/
def P10038032278854149350.Spec : Prop :=
  ∀ n, (P10038032278854149350.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P17329869502558836474

`gcd(A002024(n+1), A048152(n+1))`
-/

namespace A245717.P17329869502558836474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A048152 (n + 1))

end

end A245717.P17329869502558836474

namespace A245717

/-- `gcd(A002024(n+1), A048152(n+1))` -/
def P17329869502558836474.Spec : Prop :=
  ∀ n, (P17329869502558836474.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P6886078577210509170

`gcd(A051173(n+1), A092283(n+1))`
-/

namespace A245717.P6886078577210509170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051173 (n + 1)) (A092283 (n + 1))

end

end A245717.P6886078577210509170

namespace A245717

/-- `gcd(A051173(n+1), A092283(n+1))` -/
def P6886078577210509170.Spec : Prop :=
  ∀ n, (P6886078577210509170.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P3961926736837275248

`gcd(A095831(n+1), A095833(n+1))`
-/

namespace A245717.P3961926736837275248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095831 (n + 1)) (A095833 (n + 1))

end

end A245717.P3961926736837275248

namespace A245717

/-- `gcd(A095831(n+1), A095833(n+1))` -/
def P3961926736837275248.Spec : Prop :=
  ∀ n, (P3961926736837275248.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P1168483534653541431

`gcd(A079297(n+1), A133819(n+1))`
-/

namespace A245717.P1168483534653541431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079297 (n + 1)) (A133819 (n + 1))

end

end A245717.P1168483534653541431

namespace A245717

/-- `gcd(A079297(n+1), A133819(n+1))` -/
def P1168483534653541431.Spec : Prop :=
  ∀ n, (P1168483534653541431.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P2457786519667900242

`gcd(A094053(n+1), A128226(n+1))`
-/

namespace A245717.P2457786519667900242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094053 (n + 1)) (A128226 (n + 1))

end

end A245717.P2457786519667900242

namespace A245717

/-- `gcd(A094053(n+1), A128226(n+1))` -/
def P2457786519667900242.Spec : Prop :=
  ∀ n, (P2457786519667900242.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P585876116966894114

`gcd(A002262(n+1)², A003056(n)+1)`
-/

namespace A245717.P585876116966894114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1) ^ 2) (A003056 n + 1)

end

end A245717.P585876116966894114

namespace A245717

/-- `gcd(A002262(n+1)², A003056(n)+1)` -/
def P585876116966894114.Spec : Prop :=
  ∀ n, (P585876116966894114.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P11434455457058866092

`gcd(A050873(n+1)², A277227(n+1))`
-/

namespace A245717.P11434455457058866092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050873 (n + 1) ^ 2) (A277227 (n + 1))

end

end A245717.P11434455457058866092

namespace A245717

/-- `gcd(A050873(n+1)², A277227(n+1))` -/
def P11434455457058866092.Spec : Prop :=
  ∀ n, (P11434455457058866092.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P758849651377525237

`gcd(A002260(n+1)-A004247(n), A004247(n)²)`
-/

namespace A245717.P758849651377525237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1) - A004247 n) (A004247 n ^ 2)

end

end A245717.P758849651377525237

namespace A245717

/-- `gcd(A002260(n+1)-A004247(n), A004247(n)²)` -/
def P758849651377525237.Spec : Prop :=
  ∀ n, (P758849651377525237.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P13963073886198367285

`gcd(A004201(n+1)-A063656(n), A063656(n)²)`
-/

namespace A245717.P13963073886198367285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004201 (n + 1) - A063656 n) (A063656 n ^ 2)

end

end A245717.P13963073886198367285

namespace A245717

/-- `gcd(A004201(n+1)-A063656(n), A063656(n)²)` -/
def P13963073886198367285.Spec : Prop :=
  ∀ n, (P13963073886198367285.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P5697789963124452110

`gcd(A004201(n+1)-A004202(n+1), A004201(n+1)²)`
-/

namespace A245717.P5697789963124452110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004201 (n + 1) - A004202 (n + 1)) (A004201 (n + 1) ^ 2)

end

end A245717.P5697789963124452110

namespace A245717

/-- `gcd(A004201(n+1)-A004202(n+1), A004201(n+1)²)` -/
def P5697789963124452110.Spec : Prop :=
  ∀ n, (P5697789963124452110.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P13213551297697117232

`gcd(A004202(n+1)-A063657(n+1), A004202(n+1)²)`
-/

namespace A245717.P13213551297697117232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004202 (n + 1) - A063657 (n + 1)) (A004202 (n + 1) ^ 2)

end

end A245717.P13213551297697117232

namespace A245717

/-- `gcd(A004202(n+1)-A063657(n+1), A004202(n+1)²)` -/
def P13213551297697117232.Spec : Prop :=
  ∀ n, (P13213551297697117232.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P9075301313956719161

`gcd(A349520(2*n+1)², A349520(2*(n+1)))`
-/

namespace A245717.P9075301313956719161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A349520 (2 * n + 1) ^ 2) (A349520 (2 * (n + 1)))

end

end A245717.P9075301313956719161

namespace A245717

/-- `gcd(A349520(2*n+1)², A349520(2*(n+1)))` -/
def P9075301313956719161.Spec : Prop :=
  ∀ n, (P9075301313956719161.a n : ℤ) = A245717 (n + 1)

end A245717

/-! ## A245717.P5030353154549758417

`gcd(A133819(n+1), A138057(n))`
-/

namespace A245717.P5030353154549758417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133819 (n + 1)) (A138057 n)

end

end A245717.P5030353154549758417

namespace A245717

/-- `gcd(A133819(n+1), A138057(n))` -/
def P5030353154549758417.Spec : Prop :=
  ∀ n, (P5030353154549758417.a n : ℤ) = A245717 (n + 1)

end A245717

/-!
# A245718: Integer part of sum of fractions A182972(k) / A182973(k) such that A182972(k) + A182973(k) = n.

The programs for A245718, there is no canonical definition to state claims against.
-/

/-! ## A245718.P4780154136192141234

`floor(A245677(n+3)/A245678(n+3))`
-/

namespace A245718.P4780154136192141234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245677 (n + 3) : ℚ) / (A245678 (n + 3) : ℚ)⌋

end

end A245718.P4780154136192141234

/-! ## A245718.P5283840342346836588

`A302643(n+4)%A241476(A288821(n+1))`
-/

namespace A245718.P5283840342346836588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302643 (n + 4)) (A241476 (A288821 (n + 1)).toNat)

end

end A245718.P5283840342346836588

/-! ## A245718.P5374170531901178623

`gcd(A007814(A157151(n)), A302643(n+4))`
-/

namespace A245718.P5374170531901178623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A157151 n).toNat) (A302643 (n + 4))

end

end A245718.P5374170531901178623

/-! ## A245718.P1500841392613862101

`A356225(A326830(n)+1)`
-/

namespace A245718.P1500841392613862101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A326830 n + 1).toNat

end

end A245718.P1500841392613862101

/-! ## A245718.P11224661089830975435

`A339846(xor(4, A126646(n)))`
-/

namespace A245718.P11224661089830975435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (Int.xor 4 (A126646 n)).toNat

end

end A245718.P11224661089830975435

/-!
# A245721: The set of 16 consecutive primes forming a 4 X 4 pandiagonal magic square with the smallest magic constant, 682775764735680 = A256234(1).

The programs for A245721, there is no canonical definition to state claims against.
-/

/-! ## A245721.P2598724276211052294

`A320874(A063539(n+1)-A189024(n+1))`
-/

namespace A245721.P2598724276211052294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320874 (A063539 (n + 1) - A189024 (n + 1)).toNat

end

end A245721.P2598724276211052294

/-!
# A245722: Row products of table A244365.

The programs for A245722, there is no canonical definition to state claims against.
-/

/-! ## A245722.P11313502413047919539

`lcm(p?[A165253(n)], A245396(n+1))`
-/

namespace A245722.P11313502413047919539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A245396 (n + 1))

end

end A245722.P11313502413047919539

/-! ## A245722.P15893768342899357561

`lcm(A144574(n+1), A280702(A030078(n+1)))`
-/

namespace A245722.P15893768342899357561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144574 (n + 1)) (A280702 (A030078 (n + 1)).toNat)

end

end A245722.P15893768342899357561

/-! ## A245722.P12721055544961478910

`filter[A068113(n), A361113(#)]`
-/

namespace A245722.P12721055544961478910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361113 (f1 j).toNat = 1) n)

end

end A245722.P12721055544961478910

/-!
# A245723: a(n) = position of the first occurrence of n in A245714.

The programs for A245723, there is no canonical definition to state claims against.
-/

/-! ## A245723.P14845738197990364034

`A129748(∑[A130380(n)])`
-/

namespace A245723.P14845738197990364034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245723.P14845738197990364034

/-! ## A245723.P6081315226693692327

`A241686(∑[A229741(n)])`
-/

namespace A245723.P6081315226693692327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245723.P6081315226693692327

/-!
# A245727: Least number k >= 0 such that n concatenated with n + k is prime.

The programs for A245727, there is no canonical definition to state claims against.
-/

/-! ## A245727.P12743803710989091820

`(A228325(n+1)+n)%A005408(n)`
-/

namespace A245727.P12743803710989091820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228325 (n + 1) + (n : ℤ)) (A005408 n)

end

end A245727.P12743803710989091820

/-! ## A245727.P18199550492657586180

`(n+1-A228325(n+1))*A057428(n)`
-/

namespace A245727.P18199550492657586180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A228325 (n + 1)) * A057428 n

end

end A245727.P18199550492657586180

/-! ## A245727.P10057796505106342708

`(A228325(n+1)-(n+1))%A005891(n)`
-/

namespace A245727.P10057796505106342708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228325 (n + 1) - (n + 1 : ℤ)) (A005891 n)

end

end A245727.P10057796505106342708

/-! ## A245727.P3231528917726318579

`A228325(n+1)-A038572(A051755(n+2))`
-/

namespace A245727.P3231528917726318579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (n + 1) - A038572 (A051755 (n + 2)).toNat

end

end A245727.P3231528917726318579

/-! ## A245727.P5506870190152079314

`(A228325(n+1)+A111708(n))%A103517(n)`
-/

namespace A245727.P5506870190152079314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228325 (n + 1) + A111708 n) (A103517 n)

end

end A245727.P5506870190152079314

/-! ## A245727.P17866671062134888286

`A007920(lcm(A020338(n+1), A090107(n+1)))`
-/

namespace A245727.P17866671062134888286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (Int.lcm (A020338 (n + 1)) (A090107 (n + 1)))

end

end A245727.P17866671062134888286

/-!
# A245729: Composite numbers n = A020639(n) * A032742(n) where the greatest proper divisor A032742(n) is greater than the square of the smallest prime factor A020639(n), and that greatest proper divisor A032742(n) is either a prime or satisfies the same condition (i.e., is itself the term of this sequence).

The programs for A245729, there is no canonical definition to state claims against.
-/

/-! ## A245729.P8521413354814356166

`∩[A253785(n+1), A325389(n+1)]`
-/

namespace A245729.P8521413354814356166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245729.P8521413354814356166

/-! ## A245729.P9682733217276801380

`∩[A253785(n+1), A390364(n+1)]`
-/

namespace A245729.P9682733217276801380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245729.P9682733217276801380

/-! ## A245729.P15237434521830718095

`∩[A307516(n+1), A328369(n+1)]`
-/

namespace A245729.P15237434521830718095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245729.P15237434521830718095

/-! ## A245729.P9939667824268281545

`∩[A328369(n+1), A362982(n+1)]`
-/

namespace A245729.P9939667824268281545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245729.P9939667824268281545

/-! ## A245729.P17567538192853344010

`∩[A253785(n+1), A325400(n+1)]`
-/

namespace A245729.P17567538192853344010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245729.P17567538192853344010

/-!
# A245730: Primes of the form 1+2^k+2^(2*k)+...+2^((j-1)*k) for some k>0, j>0.

The programs for A245730, there is no canonical definition to state claims against.
-/

/-! ## A245730.P5690929105381016426

`∩[A140797(n+1), A143027(n+1)]`
-/

namespace A245730.P5690929105381016426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245730.P5690929105381016426

/-! ## A245730.P5239064235978981903

`∩[A003424(n+1), A064896(n+1)]`
-/

namespace A245730.P5239064235978981903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245730.P5239064235978981903

/-! ## A245730.P11708820194789927589

`∩[A003424(n+1), A235264(n+1)]`
-/

namespace A245730.P11708820194789927589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245730.P11708820194789927589

/-! ## A245730.P1496863867520127199

`∩[A140797(n+1), A144755(n+1)]`
-/

namespace A245730.P1496863867520127199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245730.P1496863867520127199

/-! ## A245730.P4455284040225689000

`∩[A140797(n+1), A153602(n+1)]`
-/

namespace A245730.P4455284040225689000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245730.P4455284040225689000

/-!
# A245731: Number of connected labeled transitive relations on an n-set.

The programs for A245731, there is no canonical definition to state claims against.
-/

/-! ## A245731.P28371572792645390

`record[A343882(n)]`
-/

namespace A245731.P28371572792645390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245731.P28371572792645390

/-! ## A245731.P2857944629385562194

`A343882(∑[char[1]+n])`
-/

namespace A245731.P2857944629385562194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245731.P2857944629385562194

/-!
# A245733: Number T(n,k) of endofunctions on [n] such that at least one preimage with cardinality k exists and, if j is the largest value with a nonempty preimage, the preimage cardinality of i is >=k for all i<=j and equal to k for at least one i<=j; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A245733, there is no canonical definition to state claims against.
-/

/-! ## A245733.P9433522071322083364

`gcd(Δ[A245732(n)], A127648(n))`
-/

namespace A245733.P9433522071322083364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A127648 n)

end

end A245733.P9433522071322083364

/-!
# A245734: G.f. A(x) satisfies 0 = A(0) and 0 = f(x, A(x)) where f(u, v) = (v - u) * (1 + u*v) - v * (v + u).

The programs for A245734, there is no canonical definition to state claims against.
-/

/-! ## A245734.P8425765139164403674

`∑[A307733(n)]-A307733(n)`
-/

namespace A245734.P8425765139164403674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307733 n

end

end A245734.P8425765139164403674

/-! ## A245734.P7429081548675442267

`A137588(A150754(n))`
-/

namespace A245734.P7429081548675442267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A150754 n).toNat

end

end A245734.P7429081548675442267

/-! ## A245734.P1823027488583024595

`A365312(A233968(n+1))`
-/

namespace A245734.P1823027488583024595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365312 (A233968 (n + 1)).toNat

end

end A245734.P1823027488583024595

/-!
# A245738: Number of compositions of n into parts 1 and 2 with both parts present.

The programs for A245738, the canonical program `A245738.P17389580106459038268` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245738 has offset 3).

The definition of A245738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245738.P17389580106459038268

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A245738

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P17389580106459038268.Spec : Prop :=
  ∀ n, P17389580106459038268.a n = A245738 (n + 3)

theorem P17389580106459038268.correct : P17389580106459038268.Spec := by
  intro n
  simp only [A245738, Nat.add_sub_cancel]

end A245738

/-! ## A245738.P2250212140403192407

`∑[a(n-3)+2*a(n-2)]` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A245738.P2250212140403192407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P2250212140403192407

namespace A245738

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P2250212140403192407.Spec : Prop :=
  ∀ n, (P2250212140403192407.a n : ℤ) = A245738 (n + 3)

end A245738

/-! ## A245738.P3496145293992251831

`gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A245738.P3496145293992251831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.gcd 2 n + (a (n - 1) + a (n - 2))

end

end A245738.P3496145293992251831

namespace A245738

/-- `gcd(2, n)+a(n-1)+a(n-2)` -/
def P3496145293992251831.Spec : Prop :=
  ∀ n, (P3496145293992251831.a n : ℤ) = A245738 (n + 3)

end A245738

/-! ## A245738.P16709963315366634743

`∑[a(n-1)+a(n-2)+(-1)^n]` with `a(0)=2, a(1)=1`
-/

namespace A245738.P16709963315366634743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P16709963315366634743

namespace A245738

/-- `∑[a(n-1)+a(n-2)+(-1)^n]` -/
def P16709963315366634743.Spec : Prop :=
  ∀ n, P16709963315366634743.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P1749509657480764972

`2-n%2+a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A245738.P1749509657480764972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - ((n % 2 : ℕ) : ℤ) + (a (n - 1) + a (n - 2))

end

end A245738.P1749509657480764972

namespace A245738

/-- `2-n%2+a(n-1)+a(n-2)` -/
def P1749509657480764972.Spec : Prop :=
  ∀ n, P1749509657480764972.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P13674087343794456393

`∑[A008346(n+2)]`
-/

namespace A245738.P13674087343794456393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P13674087343794456393

namespace A245738

/-- `∑[A008346(n+2)]` -/
def P13674087343794456393.Spec : Prop :=
  ∀ n, P13674087343794456393.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P2570516975617717771

`A052952(n+2)-1`
-/

namespace A245738.P2570516975617717771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (n + 2) - 1

end

end A245738.P2570516975617717771

namespace A245738

/-- `A052952(n+2)-1` -/
def P2570516975617717771.Spec : Prop :=
  ∀ n, P2570516975617717771.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P16119079933450062271

`A074331(n+3)-1`
-/

namespace A245738.P16119079933450062271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (n + 3) - 1

end

end A245738.P16119079933450062271

namespace A245738

/-- `A074331(n+3)-1` -/
def P16119079933450062271.Spec : Prop :=
  ∀ n, P16119079933450062271.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P9924972387782510236

`A127968(n+3)-2`
-/

namespace A245738.P9924972387782510236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (n + 3) - 2

end

end A245738.P9924972387782510236

namespace A245738

/-- `A127968(n+3)-2` -/
def P9924972387782510236.Spec : Prop :=
  ∀ n, P9924972387782510236.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P15665915175174845204

`∑[abs(A355020(n+2))]`
-/

namespace A245738.P15665915175174845204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355020 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P15665915175174845204

namespace A245738

/-- `∑[abs(A355020(n+2))]` -/
def P15665915175174845204.Spec : Prop :=
  ∀ n, P15665915175174845204.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P15239849953878187334

`∑[abs(A119282(n+3))]`
-/

namespace A245738.P15239849953878187334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P15239849953878187334

namespace A245738

/-- `∑[abs(A119282(n+3))]` -/
def P15239849953878187334.Spec : Prop :=
  ∀ n, P15239849953878187334.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P414427365536493086

`∑[∑[A078024(n+2)]]`
-/

namespace A245738.P414427365536493086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P414427365536493086

namespace A245738

/-- `∑[∑[A078024(n+2)]]` -/
def P414427365536493086.Spec : Prop :=
  ∀ n, P414427365536493086.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P3165036941520984586

`∑[abs(Δ[A052952(n+1)])]`
-/

namespace A245738.P3165036941520984586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P3165036941520984586

namespace A245738

/-- `∑[abs(Δ[A052952(n+1)])]` -/
def P3165036941520984586.Spec : Prop :=
  ∀ n, P3165036941520984586.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P4280891113112549756

`A006327(n+4)+gcd(2, n)`
-/

namespace A245738.P4280891113112549756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) + (Nat.gcd 2 n : ℤ)

end

end A245738.P4280891113112549756

namespace A245738

/-- `A006327(n+4)+gcd(2, n)` -/
def P4280891113112549756.Spec : Prop :=
  ∀ n, P4280891113112549756.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P16628320401839187023

`A020695(n)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A245738.P16628320401839187023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A020695 n + a (n - 2)

end

end A245738.P16628320401839187023

namespace A245738

/-- `A020695(n)+a(n-2)` -/
def P16628320401839187023.Spec : Prop :=
  ∀ n, P16628320401839187023.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P18244992383259858900

`A000045(n+4)-(n%2+1)`
-/

namespace A245738.P18244992383259858900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - ((n % 2 + 1 : ℕ) : ℤ)

end

end A245738.P18244992383259858900

namespace A245738

/-- `A000045(n+4)-(n%2+1)` -/
def P18244992383259858900.Spec : Prop :=
  ∀ n, P18244992383259858900.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P8487042169818790966

`∑[A000045(n+2)+(-1)^n]`
-/

namespace A245738.P8487042169818790966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245738.P8487042169818790966

namespace A245738

/-- `∑[A000045(n+2)+(-1)^n]` -/
def P8487042169818790966.Spec : Prop :=
  ∀ n, P8487042169818790966.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P15346822124216768269

`A000045(n+3)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A245738.P15346822124216768269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000045 (n + 3) + a (n - 2)

end

end A245738.P15346822124216768269

namespace A245738

/-- `A000045(n+3)+a(n-2)` -/
def P15346822124216768269.Spec : Prop :=
  ∀ n, P15346822124216768269.a n = A245738 (n + 3)

end A245738

/-! ## A245738.P5383359911307944006

`A226538(A042964(n+1))`
-/

namespace A245738.P5383359911307944006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (A042964 (n + 1)).toNat

end

end A245738.P5383359911307944006

namespace A245738

/-- `A226538(A042964(n+1))` -/
def P5383359911307944006.Spec : Prop :=
  ∀ n, P5383359911307944006.a n = A245738 (n + 3)

end A245738

/-!
# A245742: Primes p such that p + d is also prime, where d is the largest digit of p.

The programs for A245742, the canonical program `A245742.P1630487989177979838` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245742 has offset 1).

The definition of A245742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245742.P1630487989177979838

`p?[A095824(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245742

/-- `p?[A095824(n+1)]` -/
def P1630487989177979838.Spec : Prop :=
  ∀ n, P1630487989177979838.a n = A245742 (n + 1)

theorem P1630487989177979838.correct : P1630487989177979838.Spec := by
  intro n
  simp only [A245742, Nat.add_sub_cancel]

end A245742

/-! ## A245742.P5703275708997005130

`∩[A038617(n+1), A095824(n+1)]`
-/

namespace A245742.P5703275708997005130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P5703275708997005130

namespace A245742

/-- `∩[A038617(n+1), A095824(n+1)]` -/
def P5703275708997005130.Spec : Prop :=
  ∀ n, (P5703275708997005130.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P14308430092959435173

`∩[A042986(n+1), A095824(n+1)]`
-/

namespace A245742.P14308430092959435173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P14308430092959435173

namespace A245742

/-- `∩[A042986(n+1), A095824(n+1)]` -/
def P14308430092959435173.Spec : Prop :=
  ∀ n, (P14308430092959435173.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P4921584668275596160

`∩[A045321(n+1), A095824(n+1)]`
-/

namespace A245742.P4921584668275596160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P4921584668275596160

namespace A245742

/-- `∩[A045321(n+1), A095824(n+1)]` -/
def P4921584668275596160.Spec : Prop :=
  ∀ n, (P4921584668275596160.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P4075415580521478217

`∩[A045405(n+1), A095824(n+1)]`
-/

namespace A245742.P4075415580521478217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P4075415580521478217

namespace A245742

/-- `∩[A045405(n+1), A095824(n+1)]` -/
def P4075415580521478217.Spec : Prop :=
  ∀ n, (P4075415580521478217.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P7156700759001857238

`∩[A045407(n+1), A095824(n+1)]`
-/

namespace A245742.P7156700759001857238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P7156700759001857238

namespace A245742

/-- `∩[A045407(n+1), A095824(n+1)]` -/
def P7156700759001857238.Spec : Prop :=
  ∀ n, (P7156700759001857238.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P6051802566368344292

`∩[A045428(n+1), A095824(n+1)]`
-/

namespace A245742.P6051802566368344292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P6051802566368344292

namespace A245742

/-- `∩[A045428(n+1), A095824(n+1)]` -/
def P6051802566368344292.Spec : Prop :=
  ∀ n, (P6051802566368344292.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P17235492434699089102

`∩[A045429(n+1), A095824(n+1)]`
-/

namespace A245742.P17235492434699089102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P17235492434699089102

namespace A245742

/-- `∩[A045429(n+1), A095824(n+1)]` -/
def P17235492434699089102.Spec : Prop :=
  ∀ n, (P17235492434699089102.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P6475268785665878611

`∩[A095824(n+1), A154767(n+1)]`
-/

namespace A245742.P6475268785665878611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P6475268785665878611

namespace A245742

/-- `∩[A095824(n+1), A154767(n+1)]` -/
def P6475268785665878611.Spec : Prop :=
  ∀ n, (P6475268785665878611.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P8276530924893405008

`∩[A095824(n+1), A215927(n+1)]`
-/

namespace A245742.P8276530924893405008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P8276530924893405008

namespace A245742

/-- `∩[A095824(n+1), A215927(n+1)]` -/
def P8276530924893405008.Spec : Prop :=
  ∀ n, (P8276530924893405008.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P5581210300308878635

`∩[A000040(n+1), A095824(n+1)]`
-/

namespace A245742.P5581210300308878635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P5581210300308878635

namespace A245742

/-- `∩[A000040(n+1), A095824(n+1)]` -/
def P5581210300308878635.Spec : Prop :=
  ∀ n, (P5581210300308878635.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P2974499084841805526

`∩[A004139(n+1), A095824(n+1)]`
-/

namespace A245742.P2974499084841805526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P2974499084841805526

namespace A245742

/-- `∩[A004139(n+1), A095824(n+1)]` -/
def P2974499084841805526.Spec : Prop :=
  ∀ n, (P2974499084841805526.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P9960446966052092500

`∩[A045319(n+1), A095824(n+1)]`
-/

namespace A245742.P9960446966052092500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P9960446966052092500

namespace A245742

/-- `∩[A045319(n+1), A095824(n+1)]` -/
def P9960446966052092500.Spec : Prop :=
  ∀ n, (P9960446966052092500.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P12137147683905402648

`∩[A045344(n+1), A095824(n+1)]`
-/

namespace A245742.P12137147683905402648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P12137147683905402648

namespace A245742

/-- `∩[A045344(n+1), A095824(n+1)]` -/
def P12137147683905402648.Spec : Prop :=
  ∀ n, (P12137147683905402648.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P9836340270213399082

`∩[A051948(n+1), A095824(n+1)]`
-/

namespace A245742.P9836340270213399082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P9836340270213399082

namespace A245742

/-- `∩[A051948(n+1), A095824(n+1)]` -/
def P9836340270213399082.Spec : Prop :=
  ∀ n, (P9836340270213399082.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P8633835881837508015

`∩[A053813(n+1), A095824(n+1)]`
-/

namespace A245742.P8633835881837508015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P8633835881837508015

namespace A245742

/-- `∩[A053813(n+1), A095824(n+1)]` -/
def P8633835881837508015.Spec : Prop :=
  ∀ n, (P8633835881837508015.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P3594059000993165823

`∩[A064728(n+1), A095824(n+1)]`
-/

namespace A245742.P3594059000993165823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P3594059000993165823

namespace A245742

/-- `∩[A064728(n+1), A095824(n+1)]` -/
def P3594059000993165823.Spec : Prop :=
  ∀ n, (P3594059000993165823.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P11407772000443173213

`∩[A065091(n+1), A095824(n+1)]`
-/

namespace A245742.P11407772000443173213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P11407772000443173213

namespace A245742

/-- `∩[A065091(n+1), A095824(n+1)]` -/
def P11407772000443173213.Spec : Prop :=
  ∀ n, (P11407772000443173213.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P7375939503606320974

`∩[A066542(n+1), A095824(n+1)]`
-/

namespace A245742.P7375939503606320974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P7375939503606320974

namespace A245742

/-- `∩[A066542(n+1), A095824(n+1)]` -/
def P7375939503606320974.Spec : Prop :=
  ∀ n, (P7375939503606320974.a n : ℤ) = A245742 (n + 1)

end A245742

/-! ## A245742.P1172024583431201041

`∩[A070957(n+1), A095824(n+1)]`
-/

namespace A245742.P1172024583431201041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245742.P1172024583431201041

namespace A245742

/-- `∩[A070957(n+1), A095824(n+1)]` -/
def P1172024583431201041.Spec : Prop :=
  ∀ n, (P1172024583431201041.a n : ℤ) = A245742 (n + 1)

end A245742

/-!
# A245743: Primes p such that p - d is also prime, where d is the largest digit of p.

The programs for A245743, the canonical program `A245743.P6282690513620818783` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245743 has offset 1).

The definition of A245743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245743.P6282690513620818783

`p?[A095994(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A245743

/-- `p?[A095994(n+1)]` -/
def P6282690513620818783.Spec : Prop :=
  ∀ n, P6282690513620818783.a n = A245743 (n + 1)

theorem P6282690513620818783.correct : P6282690513620818783.Spec := by
  intro n
  simp only [A245743, Nat.add_sub_cancel]

end A245743

/-! ## A245743.P12323947502287818349

`∩[A038617(n+1), A095994(n+1)]`
-/

namespace A245743.P12323947502287818349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P12323947502287818349

namespace A245743

/-- `∩[A038617(n+1), A095994(n+1)]` -/
def P12323947502287818349.Spec : Prop :=
  ∀ n, (P12323947502287818349.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P17947474952893711161

`∩[A042986(n+1), A095994(n+1)]`
-/

namespace A245743.P17947474952893711161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P17947474952893711161

namespace A245743

/-- `∩[A042986(n+1), A095994(n+1)]` -/
def P17947474952893711161.Spec : Prop :=
  ∀ n, (P17947474952893711161.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P554387381516023913

`∩[A045321(n+1), A095994(n+1)]`
-/

namespace A245743.P554387381516023913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P554387381516023913

namespace A245743

/-- `∩[A045321(n+1), A095994(n+1)]` -/
def P554387381516023913.Spec : Prop :=
  ∀ n, (P554387381516023913.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P6514376440830973974

`∩[A095994(n+1), A154767(n+1)]`
-/

namespace A245743.P6514376440830973974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P6514376440830973974

namespace A245743

/-- `∩[A095994(n+1), A154767(n+1)]` -/
def P6514376440830973974.Spec : Prop :=
  ∀ n, (P6514376440830973974.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P9367394772741970244

`∩[A095994(n+1), A215927(n+1)]`
-/

namespace A245743.P9367394772741970244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P9367394772741970244

namespace A245743

/-- `∩[A095994(n+1), A215927(n+1)]` -/
def P9367394772741970244.Spec : Prop :=
  ∀ n, (P9367394772741970244.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P18023202118357564308

`∩[A000040(n+1), A095994(n+1)]`
-/

namespace A245743.P18023202118357564308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P18023202118357564308

namespace A245743

/-- `∩[A000040(n+1), A095994(n+1)]` -/
def P18023202118357564308.Spec : Prop :=
  ∀ n, (P18023202118357564308.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P17835701117485998966

`∩[A004139(n+1), A095994(n+1)]`
-/

namespace A245743.P17835701117485998966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P17835701117485998966

namespace A245743

/-- `∩[A004139(n+1), A095994(n+1)]` -/
def P17835701117485998966.Spec : Prop :=
  ∀ n, (P17835701117485998966.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P4647186425397531959

`∩[A006005(n+1), A095994(n+1)]`
-/

namespace A245743.P4647186425397531959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P4647186425397531959

namespace A245743

/-- `∩[A006005(n+1), A095994(n+1)]` -/
def P4647186425397531959.Spec : Prop :=
  ∀ n, (P4647186425397531959.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P15162967351090925052

`∩[A008578(n+1), A095994(n+1)]`
-/

namespace A245743.P15162967351090925052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P15162967351090925052

namespace A245743

/-- `∩[A008578(n+1), A095994(n+1)]` -/
def P15162967351090925052.Spec : Prop :=
  ∀ n, (P15162967351090925052.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P11619427768418715488

`∩[A033946(n+1), A095994(n+1)]`
-/

namespace A245743.P11619427768418715488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P11619427768418715488

namespace A245743

/-- `∩[A033946(n+1), A095994(n+1)]` -/
def P11619427768418715488.Spec : Prop :=
  ∀ n, (P11619427768418715488.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P12734435677516551898

`∩[A038672(n+1), A095994(n+1)]`
-/

namespace A245743.P12734435677516551898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P12734435677516551898

namespace A245743

/-- `∩[A038672(n+1), A095994(n+1)]` -/
def P12734435677516551898.Spec : Prop :=
  ∀ n, (P12734435677516551898.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P15515689943513520558

`∩[A045319(n+1), A095994(n+1)]`
-/

namespace A245743.P15515689943513520558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P15515689943513520558

namespace A245743

/-- `∩[A045319(n+1), A095994(n+1)]` -/
def P15515689943513520558.Spec : Prop :=
  ∀ n, (P15515689943513520558.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P11577658061334087806

`∩[A045344(n+1), A095994(n+1)]`
-/

namespace A245743.P11577658061334087806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P11577658061334087806

namespace A245743

/-- `∩[A045344(n+1), A095994(n+1)]` -/
def P11577658061334087806.Spec : Prop :=
  ∀ n, (P11577658061334087806.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P10595598987384432841

`∩[A046022(n+1), A095994(n+1)]`
-/

namespace A245743.P10595598987384432841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P10595598987384432841

namespace A245743

/-- `∩[A046022(n+1), A095994(n+1)]` -/
def P10595598987384432841.Spec : Prop :=
  ∀ n, (P10595598987384432841.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P8463652733949258344

`∩[A051948(n+1), A095994(n+1)]`
-/

namespace A245743.P8463652733949258344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P8463652733949258344

namespace A245743

/-- `∩[A051948(n+1), A095994(n+1)]` -/
def P8463652733949258344.Spec : Prop :=
  ∀ n, (P8463652733949258344.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P9728909507891850504

`∩[A062972(n+1), A095994(n+1)]`
-/

namespace A245743.P9728909507891850504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P9728909507891850504

namespace A245743

/-- `∩[A062972(n+1), A095994(n+1)]` -/
def P9728909507891850504.Spec : Prop :=
  ∀ n, (P9728909507891850504.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P12843932496962011304

`∩[A064728(n+1), A095994(n+1)]`
-/

namespace A245743.P12843932496962011304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P12843932496962011304

namespace A245743

/-- `∩[A064728(n+1), A095994(n+1)]` -/
def P12843932496962011304.Spec : Prop :=
  ∀ n, (P12843932496962011304.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P11793016981758183619

`∩[A065091(n+1), A095994(n+1)]`
-/

namespace A245743.P11793016981758183619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P11793016981758183619

namespace A245743

/-- `∩[A065091(n+1), A095994(n+1)]` -/
def P11793016981758183619.Spec : Prop :=
  ∀ n, (P11793016981758183619.a n : ℤ) = A245743 (n + 1)

end A245743

/-! ## A245743.P2054031865115299241

`∩[A065376(n+1), A095994(n+1)]`
-/

namespace A245743.P2054031865115299241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245743.P2054031865115299241

namespace A245743

/-- `∩[A065376(n+1), A095994(n+1)]` -/
def P2054031865115299241.Spec : Prop :=
  ∀ n, (P2054031865115299241.a n : ℤ) = A245743 (n + 1)

end A245743

/-!
# A245744: Primes p such that p + d is also prime, where d is the smallest nonzero digit of p.

The programs for A245744, there is no canonical definition to state claims against.
-/

/-! ## A245744.P15597387818441212874

`∩[A247896(n+1), A116641(n)]`
-/

namespace A245744.P15597387818441212874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245744.P15597387818441212874

/-! ## A245744.P17101600404147405193

`p?[A033862(p?[A107836(n+1)])]`
-/

namespace A245744.P17101600404147405193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245744.P17101600404147405193

/-!
# A245747: Number of identity trees with n nodes where the maximal outdegree (branching factor) equals 2.

The programs for A245747, there is no canonical definition to state claims against.
-/

/-! ## A245747.P9070293348185922556

`A063895(n+5)-1`
-/

namespace A245747.P9070293348185922556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063895 (n + 5) - 1

end

end A245747.P9070293348185922556

/-! ## A245747.P18001763366486427862

`record[A063895(n+1)+A057428(n)]`
-/

namespace A245747.P18001763366486427862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063895 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245747.P18001763366486427862

/-! ## A245747.P9438248681237812459

`record[A134824(n)+A063895(n+1)]`
-/

namespace A245747.P9438248681237812459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A063895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245747.P9438248681237812459

/-! ## A245747.P130685599054983396

`record[gcd(A244523(n+1), A244523(n+3))]`
-/

namespace A245747.P130685599054983396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244523 (n + 1)) (A244523 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245747.P130685599054983396

/-! ## A245747.P5193958539855239151

`floor(A063895(n+5)/(1/A207436(n+1)+1))`
-/

namespace A245747.P5193958539855239151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063895 (n + 5) : ℚ) / (1 / (A207436 (n + 1) : ℚ) + 1)⌋

end

end A245747.P5193958539855239151

/-! ## A245747.P17287385604815770873

`A321800(A196222(n))+A063895(n+5)`
-/

namespace A245747.P17287385604815770873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A196222 n).toNat + A063895 (n + 5)

end

end A245747.P17287385604815770873

/-!
# A245748: Number of identity trees with n nodes where the maximal outdegree (branching factor) equals 3.

The programs for A245748, there is no canonical definition to state claims against.
-/

/-! ## A245748.P16396062492571072681

`A116379(n+7)-A063895(n+8)`
-/

namespace A245748.P16396062492571072681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116379 (n + 7) - A063895 (n + 8)

end

end A245748.P16396062492571072681

/-! ## A245748.P15820665713546955603

`record[and(a(n-1)-1, A244523(n+1))]` with `a(0)=1`
-/

namespace A245748.P15820665713546955603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (f1 (n - 1) - 1) (A244523 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245748.P15820665713546955603

/-! ## A245748.P4074434378206149816

`record[C(A244523(n+3), A244523(n+1))]`
-/

namespace A245748.P4074434378206149816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A244523 (n + 3)).toNat (A244523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245748.P4074434378206149816

/-!
# A245749: Number of identity trees with n nodes where the maximal outdegree (branching factor) equals 4.

The programs for A245749, there is no canonical definition to state claims against.
-/

/-! ## A245749.P12106037497065416561

`A116380(n+11)-A116379(n+11)`
-/

namespace A245749.P12106037497065416561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116380 (n + 11) - A116379 (n + 11)

end

end A245749.P12106037497065416561

/-! ## A245749.P7731545689093217197

`A333519(n)+A333483(A005579(2*n+1))`
-/

namespace A245749.P7731545689093217197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333519 n + A333483 (A005579 (2 * n + 1)).toNat

end

end A245749.P7731545689093217197

/-!
# A245750: Number of identity trees with n nodes where the maximal outdegree (branching factor) equals 5.

The programs for A245750, there is no canonical definition to state claims against.
-/

/-! ## A245750.P11917919314856998874

`A220522(A023608(n))`
-/

namespace A245750.P11917919314856998874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (A023608 n).toNat

end

end A245750.P11917919314856998874

/-!
# A245751: Number of identity trees with n nodes where the maximal outdegree (branching factor) equals 6.

The programs for A245751, there is no canonical definition to state claims against.
-/

/-! ## A245751.P6226449313180511707

`A210681(floor(10^(n+1)/(2*(n+1))))+A072469(A072515(3*n+2))`
-/

namespace A245751.P6226449313180511707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210681 ⌊(10 ^ (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋.toNat + A072469 (A072515 (3 * n + 2)).toNat

end

end A245751.P6226449313180511707

/-!
# A245756: Least number k such that (k! + n)/k is prime, or 0 if no such k exists.

The programs for A245756, there is no canonical definition to state claims against.
-/

/-! ## A245756.P11553960754626703980

`xor(1, A066745(n+2))`
-/

namespace A245756.P11553960754626703980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A066745 (n + 2))

end

end A245756.P11553960754626703980

/-! ## A245756.P16334627579914849320

`A035184(A000124(n)^A342656(n+2))`
-/

namespace A245756.P16334627579914849320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A342656 (n + 2) : ℤ))).toNat

end

end A245756.P16334627579914849320

/-! ## A245756.P7137276599836075932

`A210850(A001222(n+2)^A056992(n+1))`
-/

namespace A245756.P7137276599836075932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (SequenceMachineLib.roundAway ((A001222 (n + 2) : ℚ) ^ (A056992 (n + 1) : ℤ))).toNat

end

end A245756.P7137276599836075932

/-! ## A245756.P9233830422467814863

`A344213(A344178(n+2))%A074724(n+1)`
-/

namespace A245756.P9233830422467814863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344213 (A344178 (n + 2)).toNat) (A074724 (n + 1))

end

end A245756.P9233830422467814863

/-! ## A245756.P4630361405443780375

`gcd(A008683(A218323(n+2)), A063958(3*(n+1)))`
-/

namespace A245756.P4630361405443780375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A218323 (n + 2)).toNat) (A063958 (3 * (n + 1)))

end

end A245756.P4630361405443780375

/-!
# A245757: Numbers m such that (k! + m)/k is never prime for any k.

The programs for A245757, there is no canonical definition to state claims against.
-/

/-! ## A245757.P16061981584035159637

`eq[0, A245756(n+1)]+1`
-/

namespace A245757.P16061981584035159637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245757.P16061981584035159637

/-! ## A245757.P16024572167906114999

`eq[0, A245756(A028310(n))]`
-/

namespace A245757.P16024572167906114999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245757.P16024572167906114999

/-! ## A245757.P15225367960202230115

`A020725(eq[0, A245756(n+1)])`
-/

namespace A245757.P15225367960202230115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245757.P15225367960202230115

/-! ## A245757.P13036167773563996762

`A065475(eq[0, A245756(n+1)])`
-/

namespace A245757.P13036167773563996762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245757.P13036167773563996762

/-! ## A245757.P6269947479112916418

`lt[A245756(A000007(n)+n), 1]`
-/

namespace A245757.P6269947479112916418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245757.P6269947479112916418

/-! ## A245757.P13836528580061105675

`lt[A245756(A000038(n)+n), 1]`
-/

namespace A245757.P13836528580061105675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245757.P13836528580061105675

/-! ## A245757.P12522601384802063176

`eq[0, A245756(A233583(n+1))]`
-/

namespace A245757.P12522601384802063176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245756 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245757.P12522601384802063176

/-!
# A245759: Primes p such that concatenation of p with its digit sum is also prime.

The programs for A245759, there is no canonical definition to state claims against.
-/

/-! ## A245759.P13993894524562768787

`p?[n-A072480(A108773(n))]`
-/

namespace A245759.P13993894524562768787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A072480 (A108773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245759.P13993894524562768787

/-! ## A245759.P14080596225782579655

`eq[A007920(n), A072480(A108773(n))]`
-/

namespace A245759.P14080596225782579655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A108773 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245759.P14080596225782579655

/-! ## A245759.P15492097067717058460

`p?[A001489(n)*A107393(A108773(n))]`
-/

namespace A245759.P15492097067717058460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 (A108773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245759.P15492097067717058460

/-! ## A245759.P6589573880736965486

`eq[n, A072480(A108773(n))+A007918(n)]`
-/

namespace A245759.P6589573880736965486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A108773 n).toNat + A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245759.P6589573880736965486

/-! ## A245759.P10707703467849554999

`eq[n, A072480(A108773(n))+A035031(n+1)]`
-/

namespace A245759.P10707703467849554999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A108773 n).toNat + A035031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245759.P10707703467849554999

/-!
# A245760: Maximal multiplicative persistence of n in any base.

The programs for A245760, there is no canonical definition to state claims against.
-/

/-! ## A245760.P6286863935762860730

`A008676(A140485(n+1)-A330015(3*n))`
-/

namespace A245760.P6286863935762860730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A140485 (n + 1) - A330015 (3 * n)).toNat

end

end A245760.P6286863935762860730

/-!
# A245763: Primes p such that the concatenation of p with its digit sum and the concatenation of the digit sum of p with p are both prime.

The programs for A245763, there is no canonical definition to state claims against.
-/

/-! ## A245763.P5032639750320582522

`∩[A245759(n+1), A246428(n+1)]`
-/

namespace A245763.P5032639750320582522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245763.P5032639750320582522

/-!
# A245764: a(n) = 2*(n^2 + 1) + n*(1 + (-1)^n).

The programs for A245764, the canonical program `A245764.P17401525769056029324` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245764 has offset 0).

The definition of A245764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n²+1)+n*(1+(-1)^n)` (program `A245764.P17401525769056029324`, by `A245764.P17401525769056029324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245764.P17401525769056029324

`2*(n²+1)+n*(1+(-1)^n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A245764

/-- `2*(n²+1)+n*(1+(-1)^n)` -/
def P17401525769056029324.Spec : Prop :=
  ∀ n, P17401525769056029324.a n = A245764 n

theorem P17401525769056029324.correct : P17401525769056029324.Spec := by
  intro n
  simp only [A245764]

end A245764

/-! ## A245764.P2303259868632353465

`2*(n*or(1, n)+1)`
-/

namespace A245764.P2303259868632353465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.lor 1 n + 1)

end

end A245764.P2303259868632353465

namespace A245764

/-- `2*(n*or(1, n)+1)` -/
def P2303259868632353465.Spec : Prop :=
  ∀ n, (P2303259868632353465.a n : ℤ) = A245764 n

end A245764

/-! ## A245764.P11805835328578889467

`2*((n+1)²-lcm(2, n))`
-/

namespace A245764.P11805835328578889467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 2 : ℤ) - (Nat.lcm 2 n : ℤ))

end

end A245764.P11805835328578889467

namespace A245764

/-- `2*((n+1)²-lcm(2, n))` -/
def P11805835328578889467.Spec : Prop :=
  ∀ n, P11805835328578889467.a n = A245764 n

end A245764

/-! ## A245764.P11408417902631743235

`2*(n*(and(n, -2)+1)+1)`
-/

namespace A245764.P11408417902631743235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (Int.land (n : ℤ) (-2) + 1) + 1)

end

end A245764.P11408417902631743235

namespace A245764

/-- `2*(n*(and(n, -2)+1)+1)` -/
def P11408417902631743235.Spec : Prop :=
  ∀ n, P11408417902631743235.a n = A245764 n

end A245764

/-! ## A245764.P1615884105565913599

`abs(n-2-n*or(3, 2*n))`
-/

namespace A245764.P1615884105565913599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 - (n * Nat.lor 3 (2 * n) : ℤ)|

end

end A245764.P1615884105565913599

namespace A245764

/-- `abs(n-2-n*or(3, 2*n))` -/
def P1615884105565913599.Spec : Prop :=
  ∀ n, P1615884105565913599.a n = A245764 n

end A245764

/-! ## A245764.P10050809630601630079

`2*(gcd(n+1, n%2)+n²)`
-/

namespace A245764.P10050809630601630079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.gcd (n + 1) (n % 2) + n ^ 2)

end

end A245764.P10050809630601630079

namespace A245764

/-- `2*(gcd(n+1, n%2)+n²)` -/
def P10050809630601630079.Spec : Prop :=
  ∀ n, (P10050809630601630079.a n : ℤ) = A245764 n

end A245764

/-! ## A245764.P11435179041892101434

`2*(n*(gcd(2, n)+n-1)+1)`
-/

namespace A245764.P11435179041892101434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)) + 1)

end

end A245764.P11435179041892101434

namespace A245764

/-- `2*(n*(gcd(2, n)+n-1)+1)` -/
def P11435179041892101434.Spec : Prop :=
  ∀ n, P11435179041892101434.a n = A245764 n

end A245764

/-! ## A245764.P6832896846842982033

`2*(n*(n-and(1, n)+1)+1)`
-/

namespace A245764.P6832896846842982033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - (Nat.land 1 n : ℤ) + 1) + 1)

end

end A245764.P6832896846842982033

namespace A245764

/-- `2*(n*(n-and(1, n)+1)+1)` -/
def P6832896846842982033.Spec : Prop :=
  ∀ n, P6832896846842982033.a n = A245764 n

end A245764

/-! ## A245764.P6909039147121013168

`2*((n+1)^((n+1)%2)+n²)`
-/

namespace A245764.P6909039147121013168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) ^ ((n + 1) % 2) + n ^ 2)

end

end A245764.P6909039147121013168

namespace A245764

/-- `2*((n+1)^((n+1)%2)+n²)` -/
def P6909039147121013168.Spec : Prop :=
  ∀ n, (P6909039147121013168.a n : ℤ) = A245764 n

end A245764

/-! ## A245764.P16411725457513391601

`2*(n*A109613(n)+1)`
-/

namespace A245764.P16411725457513391601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A109613 n + 1)

end

end A245764.P16411725457513391601

namespace A245764

/-- `2*(n*A109613(n)+1)` -/
def P16411725457513391601.Spec : Prop :=
  ∀ n, P16411725457513391601.a n = A245764 n

end A245764

/-! ## A245764.P14891466903881046182

`2*(A022998(n)+A002061(n))`
-/

namespace A245764.P14891466903881046182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022998 n + A002061 n)

end

end A245764.P14891466903881046182

namespace A245764

/-- `2*(A022998(n)+A002061(n))` -/
def P14891466903881046182.Spec : Prop :=
  ∀ n, P14891466903881046182.a n = A245764 n

end A245764

/-! ## A245764.P7694629649952450742

`2*(A257083(n)+A004526(n)²)`
-/

namespace A245764.P7694629649952450742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A257083 n + A004526 n ^ 2)

end

end A245764.P7694629649952450742

namespace A245764

/-- `2*(A257083(n)+A004526(n)²)` -/
def P7694629649952450742.Spec : Prop :=
  ∀ n, P7694629649952450742.a n = A245764 n

end A245764

/-! ## A245764.P8337751690567484474

`A333574(A042964(n+1))`
-/

namespace A245764.P8337751690567484474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (A042964 (n + 1)).toNat

end

end A245764.P8337751690567484474

namespace A245764

/-- `A333574(A042964(n+1))` -/
def P8337751690567484474.Spec : Prop :=
  ∀ n, P8337751690567484474.a n = A245764 n

end A245764

/-! ## A245764.P13485856614473835730

`A333574(A053438(n+1))`
-/

namespace A245764.P13485856614473835730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (A053438 (n + 1)).toNat

end

end A245764.P13485856614473835730

namespace A245764

/-- `A333574(A053438(n+1))` -/
def P13485856614473835730.Spec : Prop :=
  ∀ n, P13485856614473835730.a n = A245764 n

end A245764

/-! ## A245764.P12454331592144570413

`A008815(A047471(n+1))`
-/

namespace A245764.P12454331592144570413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008815 (A047471 (n + 1)).toNat

end

end A245764.P12454331592144570413

namespace A245764

/-- `A008815(A047471(n+1))` -/
def P12454331592144570413.Spec : Prop :=
  ∀ n, P12454331592144570413.a n = A245764 n

end A245764

/-! ## A245764.P10786114063330928034

`A004277(n*A109613(n)+1)`
-/

namespace A245764.P10786114063330928034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) * A109613 n + 1).toNat

end

end A245764.P10786114063330928034

namespace A245764

/-- `A004277(n*A109613(n)+1)` -/
def P10786114063330928034.Spec : Prop :=
  ∀ n, P10786114063330928034.a n = A245764 n

end A245764

/-! ## A245764.P12685843340601095168

`A005843(n*A109613(n)+1)`
-/

namespace A245764.P12685843340601095168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) * A109613 n + 1).toNat

end

end A245764.P12685843340601095168

namespace A245764

/-- `A005843(n*A109613(n)+1)` -/
def P12685843340601095168.Spec : Prop :=
  ∀ n, P12685843340601095168.a n = A245764 n

end A245764

/-! ## A245764.P8732176476878552087

`A004275(n*A109613(n)+2)`
-/

namespace A245764.P8732176476878552087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ((n : ℤ) * A109613 n + 2).toNat

end

end A245764.P8732176476878552087

namespace A245764

/-- `A004275(n*A109613(n)+2)` -/
def P8732176476878552087.Spec : Prop :=
  ∀ n, P8732176476878552087.a n = A245764 n

end A245764

/-!
# A245765: a(n) = (n+1)! * int(Gamma(n+x)/Gamma(x), x = 0..1).

The programs for A245765, there is no canonical definition to state claims against.
-/

/-! ## A245765.P15130348091720893977

`A002401(n)*A025527(n+1)`
-/

namespace A245765.P15130348091720893977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002401 n * A025527 (n + 1)

end

end A245765.P15130348091720893977

/-! ## A245765.P13364297123259911206

`∏[A048671(n+1)]*A002401(n)`
-/

namespace A245765.P13364297123259911206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002401 n

end

end A245765.P13364297123259911206

/-! ## A245765.P9629944113067422763

`A027486(n+1)/A002398(n)*A002401(n)`
-/

namespace A245765.P9629944113067422763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027486 (n + 1) : ℚ) / (A002398 n : ℚ) * (A002401 n : ℚ)

end

end A245765.P9629944113067422763

/-!
# A245766: a(n) = 2*(n^2 + 1) - n*(1 + (-1)^n).

The programs for A245766, the canonical program `A245766.P6295863776385833269` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245766 has offset 0).

The definition of A245766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n²+1)-n*(1+(-1)^n)` (program `A245766.P6295863776385833269`, by `A245766.P6295863776385833269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245766.P6295863776385833269

`2*(n²+1)-n*(1+(-1)^n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A245766

/-- `2*(n²+1)-n*(1+(-1)^n)` -/
def P6295863776385833269.Spec : Prop :=
  ∀ n, P6295863776385833269.a n = A245766 n

theorem P6295863776385833269.correct : P6295863776385833269.Spec := by
  intro n
  simp only [A245766]

end A245766

/-! ## A245766.P7152826929117519275

`2*(lcm(2, n)+(1-n)²)`
-/

namespace A245766.P7152826929117519275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm 2 n : ℤ) + (1 - (n : ℤ)) ^ 2)

end

end A245766.P7152826929117519275

namespace A245766

/-- `2*(lcm(2, n)+(1-n)²)` -/
def P7152826929117519275.Spec : Prop :=
  ∀ n, P7152826929117519275.a n = A245766 n

end A245766

/-! ## A245766.P423887369126235617

`2*(n*or(1, n-1)+1)`
-/

namespace A245766.P423887369126235617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * Int.lor 1 ((n : ℤ) - 1) + 1)

end

end A245766.P423887369126235617

namespace A245766

/-- `2*(n*or(1, n-1)+1)` -/
def P423887369126235617.Spec : Prop :=
  ∀ n, P423887369126235617.a n = A245766 n

end A245766

/-! ## A245766.P16478366454183765676

`abs(2-((n+1)%2-n)*2*n)`
-/

namespace A245766.P16478366454183765676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((((n + 1) % 2 : ℕ) : ℤ) - (n : ℤ)) * (2 * n : ℤ)|

end

end A245766.P16478366454183765676

namespace A245766

/-- `abs(2-((n+1)%2-n)*2*n)` -/
def P16478366454183765676.Spec : Prop :=
  ∀ n, P16478366454183765676.a n = A245766 n

end A245766

/-! ## A245766.P10815703888479340965

`abs(2-(1-n%2-n)*2*n)`
-/

namespace A245766.P10815703888479340965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (1 - ((n % 2 : ℕ) : ℤ) - (n : ℤ)) * (2 * n : ℤ)|

end

end A245766.P10815703888479340965

namespace A245766

/-- `abs(2-(1-n%2-n)*2*n)` -/
def P10815703888479340965.Spec : Prop :=
  ∀ n, P10815703888479340965.a n = A245766 n

end A245766

/-! ## A245766.P2861229418684623474

`2*(n*A109613(abs(1-n))+1)`
-/

namespace A245766.P2861229418684623474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A109613 |1 - (n : ℤ)|.toNat + 1)

end

end A245766.P2861229418684623474

namespace A245766

/-- `2*(n*A109613(abs(1-n))+1)` -/
def P2861229418684623474.Spec : Prop :=
  ∀ n, P2861229418684623474.a n = A245766 n

end A245766

/-! ## A245766.P4912600985514192484

`ceil(((2-(A109613(n+1)+n))²+3)/2)`
-/

namespace A245766.P4912600985514192484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 - (A109613 (n + 1) + (n : ℤ))) ^ 2 + 3 : ℚ) / 2⌉

end

end A245766.P4912600985514192484

namespace A245766

/-- `ceil(((2-(A109613(n+1)+n))²+3)/2)` -/
def P4912600985514192484.Spec : Prop :=
  ∀ n, P4912600985514192484.a n = A245766 n

end A245766

/-! ## A245766.P6496916963073135885

`2*(∑[A004277(n)]-A022998(n))`
-/

namespace A245766.P6496916963073135885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A022998 n)

end

end A245766.P6496916963073135885

namespace A245766

/-- `2*(∑[A004277(n)]-A022998(n))` -/
def P6496916963073135885.Spec : Prop :=
  ∀ n, P6496916963073135885.a n = A245766 n

end A245766

/-! ## A245766.P2349258997713101520

`2*(A325657(n+1)-2*n)`
-/

namespace A245766.P2349258997713101520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A325657 (n + 1) - (2 * n : ℤ))

end

end A245766.P2349258997713101520

namespace A245766

/-- `2*(A325657(n+1)-2*n)` -/
def P2349258997713101520.Spec : Prop :=
  ∀ n, P2349258997713101520.a n = A245766 n

end A245766

/-! ## A245766.P11404600724823739713

`2*(A002061(n+1)-A281098(2*n))`
-/

namespace A245766.P11404600724823739713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002061 (n + 1) - A281098 (2 * n))

end

end A245766.P11404600724823739713

namespace A245766

/-- `2*(A002061(n+1)-A281098(2*n))` -/
def P11404600724823739713.Spec : Prop :=
  ∀ n, P11404600724823739713.a n = A245766 n

end A245766

/-! ## A245766.P13881375453139084331

`A333574(A053438(n)+1)`
-/

namespace A245766.P13881375453139084331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (A053438 n + 1).toNat

end

end A245766.P13881375453139084331

namespace A245766

/-- `A333574(A053438(n)+1)` -/
def P13881375453139084331.Spec : Prop :=
  ∀ n, P13881375453139084331.a n = A245766 n

end A245766

/-! ## A245766.P9641896500290271182

`record[A004525(n)*A348717(n+1)+2]`
-/

namespace A245766.P9641896500290271182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n * A348717 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245766.P9641896500290271182

namespace A245766

/-- `record[A004525(n)*A348717(n+1)+2]` -/
def P9641896500290271182.Spec : Prop :=
  ∀ n, P9641896500290271182.a n = A245766 n

end A245766

/-! ## A245766.P5627216282440673158

`record[2-n*A186422(n)]`
-/

namespace A245766.P5627216282440673158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ) * A186422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245766.P5627216282440673158

namespace A245766

/-- `record[2-n*A186422(n)]` -/
def P5627216282440673158.Spec : Prop :=
  ∀ n, P5627216282440673158.a n = A245766 n

end A245766

/-! ## A245766.P17336486436676664086

`2*(n²+1+n-A283971(2*n))`
-/

namespace A245766.P17336486436676664086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 + 1 + n : ℤ) - A283971 (2 * n))

end

end A245766.P17336486436676664086

namespace A245766

/-- `2*(n²+1+n-A283971(2*n))` -/
def P17336486436676664086.Spec : Prop :=
  ∀ n, P17336486436676664086.a n = A245766 n

end A245766

/-! ## A245766.P11005050315917982172

`A004277(n*(n-char[2*n])+1)`
-/

namespace A245766.P11005050315917982172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) * ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1).toNat

end

end A245766.P11005050315917982172

namespace A245766

/-- `A004277(n*(n-char[2*n])+1)` -/
def P11005050315917982172.Spec : Prop :=
  ∀ n, P11005050315917982172.a n = A245766 n

end A245766

/-! ## A245766.P14531049386514693310

`A005843(A325657(n+1)-2*n)`
-/

namespace A245766.P14531049386514693310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A325657 (n + 1) - (2 * n : ℤ)).toNat

end

end A245766.P14531049386514693310

namespace A245766

/-- `A005843(A325657(n+1)-2*n)` -/
def P14531049386514693310.Spec : Prop :=
  ∀ n, P14531049386514693310.a n = A245766 n

end A245766

/-!
# A245768: G.f. satisfies: A(x) = 1 + x*A(x)^4 / (A(x) - x*A'(x)).

The programs for A245768, there is no canonical definition to state claims against.
-/

/-! ## A245768.P10215470117798734781

`A152407(n)-A025442(A002026(2*n))`
-/

namespace A245768.P10215470117798734781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152407 n - A025442 (A002026 (2 * n)).toNat

end

end A245768.P10215470117798734781

/-! ## A245768.P5699874609450621584

`A362075(A288757(n+1)*A351149(2*(n+2)))`
-/

namespace A245768.P5699874609450621584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362075 (A288757 (n + 1) * A351149 (2 * (n + 2))).toNat

end

end A245768.P5699874609450621584

/-!
# A245769: a(n) = Sum_{k=0..n} C(n, k)*C(n+k, k)/(2k-1), where C(n, k) denotes the binomial coefficient n!/(k!*(n-k)!).

The programs for A245769, the canonical program `A245769.P9071487461412164535` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245769 has offset 0).

The definition of A245769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245769.P9071487461412164535

`1-∑[∑[2*A085403(n)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A245769

/-- `1-∑[∑[2*A085403(n)]]` -/
def P9071487461412164535.Spec : Prop :=
  ∀ n, P9071487461412164535.a n = A245769 n

theorem P9071487461412164535.correct : P9071487461412164535.Spec := by
  intro n
  simp only [A245769]

end A245769

/-! ## A245769.P15287084468319446398

`A110107(A000124(n))-A054977(n)`
-/

namespace A245769.P15287084468319446398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110107 (A000124 n).toNat - A054977 n

end

end A245769.P15287084468319446398

namespace A245769

/-- `A110107(A000124(n))-A054977(n)` -/
def P15287084468319446398.Spec : Prop :=
  ∀ n, P15287084468319446398.a n = A245769 n

end A245769

/-! ## A245769.P3853646546498035075

`A110107(A000124(n))-gcd(2, A058943(n+1))`
-/

namespace A245769.P3853646546498035075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110107 (A000124 n).toNat - (Int.gcd 2 (A058943 (n + 1)) : ℤ)

end

end A245769.P3853646546498035075

namespace A245769

/-- `A110107(A000124(n))-gcd(2, A058943(n+1))` -/
def P3853646546498035075.Spec : Prop :=
  ∀ n, P3853646546498035075.a n = A245769 n

end A245769

/-! ## A245769.P15457644174436690009

`A110107(A000124(n))-A265331(A000040(n+1))`
-/

namespace A245769.P15457644174436690009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110107 (A000124 n).toNat - A265331 (A000040 (n + 1)).toNat

end

end A245769.P15457644174436690009

namespace A245769

/-- `A110107(A000124(n))-A265331(A000040(n+1))` -/
def P15457644174436690009.Spec : Prop :=
  ∀ n, P15457644174436690009.a n = A245769 n

end A245769

/-! ## A245769.P15864327325205463796

`A110107(A000124(n))-A265331(A038897(n+1))`
-/

namespace A245769.P15864327325205463796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110107 (A000124 n).toNat - A265331 (A038897 (n + 1)).toNat

end

end A245769.P15864327325205463796

namespace A245769

/-- `A110107(A000124(n))-A265331(A038897(n+1))` -/
def P15864327325205463796.Spec : Prop :=
  ∀ n, P15864327325205463796.a n = A245769 n

end A245769

/-!
# A245773: a(n) = n*sigma(n) - Sum_{(d

The programs for A245773, the canonical program `A245773.P11491610189230660149` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245773 has offset 1).

The definition of A245773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, A245484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245773.P11491610189230660149

`A064987(n+1)-A245484(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245773

/-- `A064987(n+1)-A245484(n+1)` -/
def P11491610189230660149.Spec : Prop :=
  ∀ n, P11491610189230660149.a n = A245773 (n + 1)

theorem P11491610189230660149.correct : P11491610189230660149.Spec := by
  intro n
  simp only [A245773, Nat.add_sub_cancel]

end A245773

/-! ## A245773.P3110960034894421940

`2*A064987(n+1)-A001001(n+1)`
-/

namespace A245773.P3110960034894421940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064987 (n + 1) - A001001 (n + 1)

end

end A245773.P3110960034894421940

namespace A245773

/-- `2*A064987(n+1)-A001001(n+1)` -/
def P3110960034894421940.Spec : Prop :=
  ∀ n, P3110960034894421940.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P6126296788962973239

`A001001(n+1)-2*A245484(n+1)`
-/

namespace A245773.P6126296788962973239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (n + 1) - 2 * A245484 (n + 1)

end

end A245773.P6126296788962973239

namespace A245773

/-- `A001001(n+1)-2*A245484(n+1)` -/
def P6126296788962973239.Spec : Prop :=
  ∀ n, P6126296788962973239.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P10925734593101386557

`∑{d}[n+1, A000290(#)*A033879((n+1)/#)]`
-/

namespace A245773.P10925734593101386557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A033879 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P10925734593101386557

namespace A245773

/-- `∑{d}[n+1, A000290(#)*A033879((n+1)/#)]` -/
def P10925734593101386557.Spec : Prop :=
  ∀ n, P10925734593101386557.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P13982105070985209195

`∑{d}[n+1, A001157(#)*A083254((n+1)/#)]`
-/

namespace A245773.P13982105070985209195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P13982105070985209195

namespace A245773

/-- `∑{d}[n+1, A001157(#)*A083254((n+1)/#)]` -/
def P13982105070985209195.Spec : Prop :=
  ∀ n, P13982105070985209195.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P11403522082320643004

`∑{d}[n+1, A064987(#)*A153881((n+1)/#)]`
-/

namespace A245773.P11403522082320643004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P11403522082320643004

namespace A245773

/-- `∑{d}[n+1, A064987(#)*A153881((n+1)/#)]` -/
def P11403522082320643004.Spec : Prop :=
  ∀ n, P11403522082320643004.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P2370340718318809922

`∑{d}[n+1, A002618(#)*A245212((n+1)/#)]`
-/

namespace A245773.P2370340718318809922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A245212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P2370340718318809922

namespace A245773

/-- `∑{d}[n+1, A002618(#)*A245212((n+1)/#)]` -/
def P2370340718318809922.Spec : Prop :=
  ∀ n, P2370340718318809922.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P8817043886237191340

`∑{d}[n+1, A007434(#)*A296075((n+1)/#)]`
-/

namespace A245773.P8817043886237191340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A296075 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P8817043886237191340

namespace A245773

/-- `∑{d}[n+1, A007434(#)*A296075((n+1)/#)]` -/
def P8817043886237191340.Spec : Prop :=
  ∀ n, P8817043886237191340.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P12269773796871199926

`∑{d}[n+1, A001001(#)*A378225((n+1)/#)]`
-/

namespace A245773.P12269773796871199926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P12269773796871199926

namespace A245773

/-- `∑{d}[n+1, A001001(#)*A378225((n+1)/#)]` -/
def P12269773796871199926.Spec : Prop :=
  ∀ n, P12269773796871199926.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P11866688321722085887

`∑{d}[n+1, A069097(#)*A378216((n+1)/#)]`
-/

namespace A245773.P11866688321722085887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P11866688321722085887

namespace A245773

/-- `∑{d}[n+1, A069097(#)*A378216((n+1)/#)]` -/
def P11866688321722085887.Spec : Prop :=
  ∀ n, P11866688321722085887.a n = A245773 (n + 1)

end A245773

/-! ## A245773.P9017520799768218171

`∑{d}[n+1, A174468(#)*A378211((n+1)/#)]`
-/

namespace A245773.P9017520799768218171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174468 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245773.P9017520799768218171

namespace A245773

/-- `∑{d}[n+1, A174468(#)*A378211((n+1)/#)]` -/
def P9017520799768218171.Spec : Prop :=
  ∀ n, P9017520799768218171.a n = A245773 (n + 1)

end A245773

/-!
# A245774: Numbers k that divide 3*sigma(k).

The programs for A245774, there is no canonical definition to state claims against.
-/

/-! ## A245774.P13927110915944913234

`∪[A007691(n+1), A245775(n+1)]`
-/

namespace A245774.P13927110915944913234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245774.P13927110915944913234

/-! ## A245774.P6415049997209961211

`A000027(∪[A245775(n+1), A348031(n+1)])`
-/

namespace A245774.P6415049997209961211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A245774.P6415049997209961211

/-! ## A245774.P14888152879535637410

`eq[8*n, gcd(8*n, A006352(n))]`
-/

namespace A245774.P14888152879535637410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * n : ℤ) (A006352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245774.P14888152879535637410

/-! ## A245774.P4471339050018116422

`A028310(∪[A245775(n+1), A348031(n+1)])`
-/

namespace A245774.P4471339050018116422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A245774.P4471339050018116422

/-!
# A245775: Numbers k such that A017666(k) = denominator(sigma(k)/k) = 3.

The programs for A245775, there is no canonical definition to state claims against.
-/

/-! ## A245775.P11061295458531820207

`∪[A160320(n+1), A160321(n+1)]`
-/

namespace A245775.P11061295458531820207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245775.P11061295458531820207

/-! ## A245775.P9834746565305840893

`eq[3, A017666(round(acot(n)+n))]`
-/

namespace A245775.P9834746565305840893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245775.P9834746565305840893

/-! ## A245775.P1006459958898697268

`eq[3, A017666(A028310(n))]`
-/

namespace A245775.P1006459958898697268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245775.P1006459958898697268

/-! ## A245775.P4590868057310635541

`A020725(eq[3, A017666(n+1)])`
-/

namespace A245775.P4590868057310635541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245775.P4590868057310635541

/-! ## A245775.P5542141187799048966

`A065475(eq[3, A017666(n+1)])`
-/

namespace A245775.P5542141187799048966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245775.P5542141187799048966

/-!
# A245782: Refactorable multiply-perfect numbers.

The programs for A245782, there is no canonical definition to state claims against.
-/

/-! ## A245782.P4762749096270936251

`A245786(comp[A309691(n+2)]+1)`
-/

namespace A245782.P4762749096270936251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309691 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A245782.P4762749096270936251

/-! ## A245782.P17444367499002876744

`A245786(comp[A014567(3*n+1)-1])`
-/

namespace A245782.P17444367499002876744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (3 * n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A245782.P17444367499002876744

/-! ## A245782.P5031179674933554149

`A245786(lt[(n+1)²+C(n, 3)+1, A048390(3*n+1)])`
-/

namespace A245782.P5031179674933554149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (Nat.choose n 3 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A245782.P5031179674933554149

/-! ## A245782.P2489617288817496366

`A245786(lt[A102377(n), A048390(3*n+1)])`
-/

namespace A245782.P2489617288817496366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245786 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245782.P2489617288817496366

/-! ## A245782.P8745141348500450598

`A245786(comp[A070231(n+1)*A225399(n+4)])`
-/

namespace A245782.P8745141348500450598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070231 (n + 1) * A225399 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A245782.P8745141348500450598

/-!
# A245783: Numbers n such that the hexagonal number H(n) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

The programs for A245783, the canonical program `A245783.P3831324765394607800` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245783 has offset 1).

The definition of A245783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245783.P3517476100002438773

`ceil(A249164(n+1)/2)`
-/

namespace A245783.P3517476100002438773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249164 (n + 1) : ℚ) / 2⌉

end

end A245783.P3517476100002438773

namespace A245783

/-- `ceil(A249164(n+1)/2)` -/
def P3517476100002438773.Spec : Prop :=
  ∀ n, P3517476100002438773.a n = A245783 (n + 1)

end A245783

/-! ## A245783.P13488615009692566360

`A249164(n+1)/2+A178334(n)!/2`
-/

namespace A245783.P13488615009692566360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249164 (n + 1) : ℚ) / 2 + (Nat.factorial (A178334 n).toNat : ℚ) / 2

end

end A245783.P13488615009692566360

namespace A245783

/-- `A249164(n+1)/2+A178334(n)!/2` -/
def P13488615009692566360.Spec : Prop :=
  ∀ n, P13488615009692566360.a n = (A245783 (n + 1) : ℚ)

end A245783

/-! ## A245783.P16155574177805783226

`A007318(C(2, n+2))/2+A249164(n+1)/2`
-/

namespace A245783.P16155574177805783226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 (n + 2)) : ℚ) / 2 + (A249164 (n + 1) : ℚ) / 2

end

end A245783.P16155574177805783226

namespace A245783

/-- `A007318(C(2, n+2))/2+A249164(n+1)/2` -/
def P16155574177805783226.Spec : Prop :=
  ∀ n, P16155574177805783226.a n = (A245783 (n + 1) : ℚ)

end A245783

/-! ## A245783.P3831324765394607800

`A080806(A042963(n+1))-A098297(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245783

/-- `A080806(A042963(n+1))-A098297(n)` -/
def P3831324765394607800.Spec : Prop :=
  ∀ n, P3831324765394607800.a n = A245783 (n + 1)

theorem P3831324765394607800.correct : P3831324765394607800.Spec := by
  intro n
  simp only [A245783, Nat.add_sub_cancel]

end A245783

/-! ## A245783.P5164248217619785380

`ceil((A132596(n)+A072256(A109613(n)))/2)`
-/

namespace A245783.P5164248217619785380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132596 n + A072256 (A109613 n).toNat : ℚ) / 2⌉

end

end A245783.P5164248217619785380

namespace A245783

/-- `ceil((A132596(n)+A072256(A109613(n)))/2)` -/
def P5164248217619785380.Spec : Prop :=
  ∀ n, P5164248217619785380.a n = A245783 (n + 1)

end A245783

/-! ## A245783.P13145520647646432861

`ceil(A080806(A042963(n+1))-A001079(n)/4)`
-/

namespace A245783.P13145520647646432861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080806 (A042963 (n + 1)).toNat : ℚ) - (A001079 n : ℚ) / 4⌉

end

end A245783.P13145520647646432861

namespace A245783

/-- `ceil(A080806(A042963(n+1))-A001079(n)/4)` -/
def P13145520647646432861.Spec : Prop :=
  ∀ n, P13145520647646432861.a n = A245783 (n + 1)

end A245783

/-!
# A245786: Numbers n such that k(n) = (n/tau(n) + sigma(n)/n) is an integer.

The programs for A245786, there is no canonical definition to state claims against.
-/

/-! ## A245786.P6289118250188355213

`A245778(∑[A018783(n)!])`
-/

namespace A245786.P6289118250188355213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A018783 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245778 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245786.P6289118250188355213

/-! ## A245786.P14052377384977511413

`A245778(∑[A054251(n)!])`
-/

namespace A245786.P14052377384977511413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A054251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245778 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245786.P14052377384977511413

/-!
# A245788: n times the number of 1's in the binary expansion of n.

The programs for A245788, the canonical program `A245788.P10796889760857720878` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245788 has offset 0).

The definition of A245788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245788.P10796889760857720878

`n*∑[∑{e}[xor(n, -n), 2-#]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A245788

/-- `n*∑[∑{e}[xor(n, -n), 2-#]]` -/
def P10796889760857720878.Spec : Prop :=
  ∀ n, P10796889760857720878.a n = A245788 n

theorem P10796889760857720878.correct : P10796889760857720878.Spec := by
  intro n
  simp only [A245788]

end A245788

/-! ## A245788.P4635598224526703595

`n*(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A245788.P4635598224526703595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A245788.P4635598224526703595

namespace A245788

/-- `n*(∑[1-∑{e}[or(n, -n), #]]-1)` -/
def P4635598224526703595.Spec : Prop :=
  ∀ n, P4635598224526703595.a n = A245788 n

end A245788

/-! ## A245788.P2976692869443381428

`n*∑[1-val(n, 2)*a(n-1)]` with `a(0)=0`
-/

namespace A245788.P2976692869443381428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (SequenceMachineLib.valuation n 2 : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245788.P2976692869443381428

namespace A245788

/-- `n*∑[1-val(n, 2)*a(n-1)]` -/
def P2976692869443381428.Spec : Prop :=
  ∀ n, P2976692869443381428.a n = A245788 n

end A245788

/-! ## A245788.P15233386274665384727

`n*(val(n+1, 2)+n-∑[val(n+1, 2)])`
-/

namespace A245788.P15233386274665384727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A245788.P15233386274665384727

namespace A245788

/-- `n*(val(n+1, 2)+n-∑[val(n+1, 2)])` -/
def P15233386274665384727.Spec : Prop :=
  ∀ n, P15233386274665384727.a n = A245788 n

end A245788

/-! ## A245788.P15898068225580862906

`n/3*∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A245788.P15898068225580862906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A245788.P15898068225580862906

namespace A245788

/-- `n/3*∑[a(floor(n/2))-a(n-1)]` -/
def P15898068225580862906.Spec : Prop :=
  ∀ n, P15898068225580862906.a n = (A245788 n : ℚ)

end A245788

/-! ## A245788.P2829955448347545349

`n*A000120(n)`
-/

namespace A245788.P2829955448347545349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n

end

end A245788.P2829955448347545349

namespace A245788

/-- `n*A000120(n)` -/
def P2829955448347545349.Spec : Prop :=
  ∀ n, P2829955448347545349.a n = A245788 n

end A245788

/-! ## A245788.P1664427981943552201

`n*log2(A001316(n))`
-/

namespace A245788.P1664427981943552201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (A001316 n : ℝ)

end

end A245788.P1664427981943552201

namespace A245788

/-- `n*log2(A001316(n))` -/
def P1664427981943552201.Spec : Prop :=
  ∀ n, P1664427981943552201.a n = (A245788 n : ℝ)

end A245788

/-! ## A245788.P1509050932733341369

`n*∑[A088705(n)]`
-/

namespace A245788.P1509050932733341369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245788.P1509050932733341369

namespace A245788

/-- `n*∑[A088705(n)]` -/
def P1509050932733341369.Spec : Prop :=
  ∀ n, P1509050932733341369.a n = A245788 n

end A245788

/-! ## A245788.P11774538773758247143

`n*val(A102377(n), 2)`
-/

namespace A245788.P11774538773758247143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A102377 n).toNat 2

end

end A245788.P11774538773758247143

namespace A245788

/-- `n*val(A102377(n), 2)` -/
def P11774538773758247143.Spec : Prop :=
  ∀ n, (P11774538773758247143.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P2254313418453167805

`n*val(A160713(n), 2)`
-/

namespace A245788.P2254313418453167805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A160713 n).toNat 2

end

end A245788.P2254313418453167805

namespace A245788

/-- `n*val(A160713(n), 2)` -/
def P2254313418453167805.Spec : Prop :=
  ∀ n, (P2254313418453167805.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P17714439663266282181

`n*val(A246037(n), 2)`
-/

namespace A245788.P17714439663266282181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A246037 n).toNat 2

end

end A245788.P17714439663266282181

namespace A245788

/-- `n*val(A246037(n), 2)` -/
def P17714439663266282181.Spec : Prop :=
  ∀ n, (P17714439663266282181.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P2792189826426053115

`n*val(A283477(n), 2)`
-/

namespace A245788.P2792189826426053115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A283477 n).toNat 2

end

end A245788.P2792189826426053115

namespace A245788

/-- `n*val(A283477(n), 2)` -/
def P2792189826426053115.Spec : Prop :=
  ∀ n, (P2792189826426053115.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P4516376522104226506

`n*val(A329886(n), 2)`
-/

namespace A245788.P4516376522104226506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A329886 n).toNat 2

end

end A245788.P4516376522104226506

namespace A245788

/-- `n*val(A329886(n), 2)` -/
def P4516376522104226506.Spec : Prop :=
  ∀ n, (P4516376522104226506.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P3436531685378396844

`n*(n-A011371(n))`
-/

namespace A245788.P3436531685378396844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A011371 n)

end

end A245788.P3436531685378396844

namespace A245788

/-- `n*(n-A011371(n))` -/
def P3436531685378396844.Spec : Prop :=
  ∀ n, P3436531685378396844.a n = A245788 n

end A245788

/-! ## A245788.P12071427632773479872

`n*(A092391(n)-n)`
-/

namespace A245788.P12071427632773479872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092391 n - (n : ℤ))

end

end A245788.P12071427632773479872

namespace A245788

/-- `n*(A092391(n)-n)` -/
def P12071427632773479872.Spec : Prop :=
  ∀ n, P12071427632773479872.a n = A245788 n

end A245788

/-! ## A245788.P16746221332253371710

`n*floor(log2(A209639(n)))`
-/

namespace A245788.P16746221332253371710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.log 2 (A209639 n).toNat

end

end A245788.P16746221332253371710

namespace A245788

/-- `n*floor(log2(A209639(n)))` -/
def P16746221332253371710.Spec : Prop :=
  ∀ n, (P16746221332253371710.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P4316846053970256528

`n*log2(Δ[A006046(n)])`
-/

namespace A245788.P4316846053970256528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A245788.P4316846053970256528

namespace A245788

/-- `n*log2(Δ[A006046(n)])` -/
def P4316846053970256528.Spec : Prop :=
  ∀ n, P4316846053970256528.a n = (A245788 n : ℝ)

end A245788

/-! ## A245788.P18297805442597516833

`n*∑{e}[A071044(n), #]`
-/

namespace A245788.P18297805442597516833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245788.P18297805442597516833

namespace A245788

/-- `n*∑{e}[A071044(n), #]` -/
def P18297805442597516833.Spec : Prop :=
  ∀ n, (P18297805442597516833.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P614818754065514721

`n*∑{e}[A278222(n), #]`
-/

namespace A245788.P614818754065514721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A245788.P614818754065514721

namespace A245788

/-- `n*∑{e}[A278222(n), #]` -/
def P614818754065514721.Spec : Prop :=
  ∀ n, (P614818754065514721.a n : ℤ) = A245788 n

end A245788

/-! ## A245788.P2118282284616550426

`n*log2(A060632(2*n))`
-/

namespace A245788.P2118282284616550426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (A060632 (2 * n) : ℝ)

end

end A245788.P2118282284616550426

namespace A245788

/-- `n*log2(A060632(2*n))` -/
def P2118282284616550426.Spec : Prop :=
  ∀ n, P2118282284616550426.a n = (A245788 n : ℝ)

end A245788

/-!
# A245789: Rectangular array A read by upward antidiagonals: A(k,n) = (2^k-1)^n, n,k >= 1.

The programs for A245789, the canonical program `A245789.P13312650202951324483` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245789 has offset 1).

The definition of A245789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245789.P13312650202951324483

`A000203(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245789

/-- `A000203(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)` -/
def P13312650202951324483.Spec : Prop :=
  ∀ n, P13312650202951324483.a n = (A245789 (n + 1) : ℚ)

end A245789

/-! ## A245789.P1206647245083967417

`A000203(A059268(n))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A245789.P1206647245083967417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A059268 n).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A245789.P1206647245083967417

namespace A245789

/-- `A000203(A059268(n))^(C(comp[∑[n]]-n, 2)-n)` -/
def P1206647245083967417.Spec : Prop :=
  ∀ n, P1206647245083967417.a n = (A245789 (n + 1) : ℚ)

end A245789

/-! ## A245789.P136687856545565295

`A000203(2^(n-C(∑[char[∑[n]]], 2)))^A193592(n)`
-/

namespace A245789.P136687856545565295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ (A193592 n : ℤ)

end

end A245789.P136687856545565295

namespace A245789

/-- `A000203(2^(n-C(∑[char[∑[n]]], 2)))^A193592(n)` -/
def P136687856545565295.Spec : Prop :=
  ∀ n, P136687856545565295.a n = (A245789 (n + 1) : ℚ)

end A245789

/-! ## A245789.P2029328714528372728

`A000203(2^(n-C(∑[char[∑[n]]], 2)))^A193739(n)`
-/

namespace A245789.P2029328714528372728
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ (A193739 n : ℤ)

end

end A245789.P2029328714528372728

namespace A245789

/-- `A000203(2^(n-C(∑[char[∑[n]]], 2)))^A193739(n)` -/
def P2029328714528372728.Spec : Prop :=
  ∀ n, P2029328714528372728.a n = (A245789 (n + 1) : ℚ)

end A245789

/-! ## A245789.P3464695454643802023

`A000203(A059268(n))^A004736(n+1)`
-/

namespace A245789.P3464695454643802023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A059268 n).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A245789.P3464695454643802023

namespace A245789

/-- `A000203(A059268(n))^A004736(n+1)` -/
def P3464695454643802023.Spec : Prop :=
  ∀ n, P3464695454643802023.a n = (A245789 (n + 1) : ℚ)

end A245789

/-!
# A245790: Number of preferential arrangements of n labeled elements when at least k=5 elements per rank are required.

The programs for A245790, there is no canonical definition to state claims against.
-/

/-! ## A245790.P3074605824709334740

`A004273(A057814(n))`
-/

namespace A245790.P3074605824709334740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A057814 n).toNat

end

end A245790.P3074605824709334740

/-! ## A245790.P6220773035181197128

`A273943(A339027(n))`
-/

namespace A245790.P6220773035181197128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A339027 n).toNat

end

end A245790.P6220773035181197128

/-! ## A245790.P8444670945360864689

`A047242(A057814(n)+1)`
-/

namespace A245790.P8444670945360864689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A057814 n + 1).toNat

end

end A245790.P8444670945360864689

/-! ## A245790.P3940847677024836001

`A014682(lcm(2, A339027(n)))`
-/

namespace A245790.P3940847677024836001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A339027 n))

end

end A245790.P3940847677024836001

/-! ## A245790.P2247484305294641424

`A004273(ceil(A339027(n)/4))`
-/

namespace A245790.P2247484305294641424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈(A339027 n : ℚ) / 4⌉.toNat

end

end A245790.P2247484305294641424

/-!
# A245791: Number of preferential arrangements of n labeled elements when at least k=6 elements per rank are required.

The programs for A245791, there is no canonical definition to state claims against.
-/

/-! ## A245791.P17937556352695918213

`A004273(A293025(n))`
-/

namespace A245791.P17937556352695918213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A293025 n).toNat

end

end A245791.P17937556352695918213

/-! ## A245791.P9210361993513325687

`A047242(A293025(n)+1)`
-/

namespace A245791.P9210361993513325687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A293025 n + 1).toNat

end

end A245791.P9210361993513325687

/-! ## A245791.P206395822403190227

`A047266(A293025(n)+1)`
-/

namespace A245791.P206395822403190227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A293025 n + 1).toNat

end

end A245791.P206395822403190227

/-! ## A245791.P5052322575209214568

`A014681(2*A293025(n))`
-/

namespace A245791.P5052322575209214568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A293025 n).toNat

end

end A245791.P5052322575209214568

/-! ## A245791.P2506337434055347763

`A064429(2*A293025(n))`
-/

namespace A245791.P2506337434055347763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * A293025 n).toNat

end

end A245791.P2506337434055347763

/-!
# A245792: Number of preferential arrangements of n labeled elements when at least k=7 elements per rank are required.

The programs for A245792, there is no canonical definition to state claims against.
-/

/-! ## A245792.P10747843974779228745

`A245791(A043320(n+1)-A082055(n+1))`
-/

namespace A245792.P10747843974779228745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245791 (A043320 (n + 1) - A082055 (n + 1)).toNat

end

end A245792.P10747843974779228745

/-! ## A245792.P5204501038324619732

`A243742(n+7)^A151755(n)^A243742(n+7)`
-/

namespace A245792.P5204501038324619732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243742 (n + 7) : ℝ) ^ ((A151755 n : ℚ) ^ (A243742 (n + 7) : ℤ) : ℝ)

end

end A245792.P5204501038324619732

/-!
# A245793: Number of preferential arrangements of n labeled elements when at least k=8 elements per rank are required.

The programs for A245793, there is no canonical definition to state claims against.
-/

/-! ## A245793.P17740490471894860687

`A245792(A267458(n))^A019425(n)`
-/

namespace A245793.P17740490471894860687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245792 (A267458 n).toNat : ℚ) ^ (A019425 n : ℤ)

end

end A245793.P17740490471894860687

/-! ## A245793.P4917039975443801719

`A245792(A267458(n))^A117292(n+1)`
-/

namespace A245793.P4917039975443801719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245792 (A267458 n).toNat : ℚ) ^ (A117292 (n + 1) : ℤ)

end

end A245793.P4917039975443801719

/-! ## A245793.P15315857943183675155

`or(A007814(A334887(n)), A244171(n+8))`
-/

namespace A245793.P15315857943183675155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A334887 n).toNat) (A244171 (n + 8))

end

end A245793.P15315857943183675155

/-!
# A245794: Number of preferential arrangements of n labeled elements when at least k=9 elements per rank are required.

The programs for A245794, there is no canonical definition to state claims against.
-/

/-! ## A245794.P8398813491021225005

`A244172(n+9)+A170958(A027828(n))`
-/

namespace A245794.P8398813491021225005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244172 (n + 9) + A170958 (A027828 n).toNat

end

end A245794.P8398813491021225005

/-! ## A245794.P14298819323000845027

`gcd(A170958(A027828(n)), A243744(n+9))`
-/

namespace A245794.P14298819323000845027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170958 (A027828 n).toNat) (A243744 (n + 9))

end

end A245794.P14298819323000845027

/-! ## A245794.P15004936776865446282

`or(A000045(A245795(n+1)), A244172(n+9))`
-/

namespace A245794.P15004936776865446282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 (A245795 (n + 1)).toNat) (A244172 (n + 9))

end

end A245794.P15004936776865446282

/-! ## A245794.P17086779167618092685

`A243744(n+9)^xor(A128936(n), A243744(n+9))`
-/

namespace A245794.P17086779167618092685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243744 (n + 9) : ℚ) ^ (Int.xor (A128936 n) (A243744 (n + 9)) : ℤ)

end

end A245794.P17086779167618092685

/-!
# A245795: Number of preferential arrangements of n labeled elements when at least k=10 elements per rank are required.

The programs for A245795, there is no canonical definition to state claims against.
-/

/-! ## A245795.P7474462105500079206

`A243745(A070565(n)^A025155(n))`
-/

namespace A245795.P7474462105500079206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243745 ((SequenceMachineLib.roundAway ((A070565 n : ℚ) ^ (A025155 n : ℤ))).toNat + 10)

end

end A245795.P7474462105500079206

/-! ## A245795.P9876087534908293659

`A245794(A267458(n))^A019425(n)`
-/

namespace A245795.P9876087534908293659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245794 (A267458 n).toNat : ℚ) ^ (A019425 n : ℤ)

end

end A245795.P9876087534908293659

/-! ## A245795.P14835142086704375165

`A243745(A326678(n)^A025155(n))`
-/

namespace A245795.P14835142086704375165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243745 ((SequenceMachineLib.roundAway ((A326678 n : ℚ) ^ (A025155 n : ℤ))).toNat + 10)

end

end A245795.P14835142086704375165

/-!
# A245797: The number of labeled graphs of n vertices that have endpoints, where an endpoint is a vertex with degree 1.

The programs for A245797, there is no canonical definition to state claims against.
-/

/-! ## A245797.P10191370654730217023

`∏[A000079(n)]-A059167(n+1)`
-/

namespace A245797.P10191370654730217023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A059167 (n + 1)

end

end A245797.P10191370654730217023

/-! ## A245797.P15541601873798824043

`A006125(n+1)-A059167(n+1)`
-/

namespace A245797.P15541601873798824043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A059167 (n + 1)

end

end A245797.P15541601873798824043

/-! ## A245797.P7430944642717544602

`A006125(n+1)-A327369(∑[n+1])`
-/

namespace A245797.P7430944642717544602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A327369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245797.P7430944642717544602

/-! ## A245797.P11360356086244132325

`A000079(A000217(n))-A059167(n+1)`
-/

namespace A245797.P11360356086244132325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000217 n).toNat - A059167 (n + 1)

end

end A245797.P11360356086244132325

/-! ## A245797.P13164758010015173661

`A006129(n+1)+A327367(n+1)-A059167(n+1)`
-/

namespace A245797.P13164758010015173661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (n + 1) + (A327367 (n + 1) - A059167 (n + 1))

end

end A245797.P13164758010015173661

/-!
# A245798: Catalan number analogs for totienomial coefficients (A238453).

The programs for A245798, the canonical program `A245798.P156287280549702739` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245798 has offset 0).

The definition of A245798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245798.P156287280549702739

`2*A072451(n)/A055034(n+1)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245798

/-- `2*A072451(n)/A055034(n+1)*a(n-1)` -/
def P156287280549702739.Spec : Prop :=
  ∀ n, P156287280549702739.a n = (A245798 n : ℚ)

end A245798

/-! ## A245798.P3649318640422383942

`A238453(A046092(n))/A000010(n+1)`
-/

namespace A245798.P3649318640422383942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 (A046092 n).toNat : ℚ) / (A000010 (n + 1) : ℚ)

end

end A245798.P3649318640422383942

namespace A245798

/-- `A238453(A046092(n))/A000010(n+1)` -/
def P3649318640422383942.Spec : Prop :=
  ∀ n, P3649318640422383942.a n = (A245798 n : ℚ)

end A245798

/-! ## A245798.P6045174425393748826

`A238453(A046092(n))/(A000040(n+1)-A104192(n+1))`
-/

namespace A245798.P6045174425393748826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 (A046092 n).toNat : ℚ) / (A000040 (n + 1) - A104192 (n + 1) : ℚ)

end

end A245798.P6045174425393748826

namespace A245798

/-- `A238453(A046092(n))/(A000040(n+1)-A104192(n+1))` -/
def P6045174425393748826.Spec : Prop :=
  ∀ n, P6045174425393748826.a n = (A245798 n : ℚ)

end A245798

/-! ## A245798.P3883118751424757838

`A000010(A246458(n))*A246466(n)`
-/

namespace A245798.P3883118751424757838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A246458 n).toNat * A246466 n

end

end A245798.P3883118751424757838

namespace A245798

/-- `A000010(A246458(n))*A246466(n)` -/
def P3883118751424757838.Spec : Prop :=
  ∀ n, P3883118751424757838.a n = A245798 n

end A245798

/-! ## A245798.P13046002886359333958

`A000108(n)/A246458(n)*A000010(A246458(n))`
-/

namespace A245798.P13046002886359333958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A246458 n : ℚ) * (A000010 (A246458 n).toNat : ℚ)

end

end A245798.P13046002886359333958

namespace A245798

/-- `A000108(n)/A246458(n)*A000010(A246458(n))` -/
def P13046002886359333958.Spec : Prop :=
  ∀ n, P13046002886359333958.a n = (A245798 n : ℚ)

end A245798

/-!
# A245799: a(n) = Lucas(3*n) - Fibonacci(n).

The programs for A245799, the canonical program `A245799.P3433551107463058925` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245799 has offset 0).

The definition of A245799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245799.P3433551107463058925

`A014448(n)-A000045(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245799

/-- `A014448(n)-A000045(n)` -/
def P3433551107463058925.Spec : Prop :=
  ∀ n, P3433551107463058925.a n = A245799 n

theorem P3433551107463058925.correct : P3433551107463058925.Spec := by
  intro n
  simp only [A245799]

end A245799

/-! ## A245799.P14662130915536676399

`A014448(n)-abs(A236191(n))`
-/

namespace A245799.P14662130915536676399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n - |A236191 n|

end

end A245799.P14662130915536676399

namespace A245799

/-- `A014448(n)-abs(A236191(n))` -/
def P14662130915536676399.Spec : Prop :=
  ∀ n, P14662130915536676399.a n = A245799 n

end A245799

/-! ## A245799.P2911703122500325766

`A100233(n)+1-A000045(n)`
-/

namespace A245799.P2911703122500325766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 n + (1 - A000045 n)

end

end A245799.P2911703122500325766

namespace A245799

/-- `A100233(n)+1-A000045(n)` -/
def P2911703122500325766.Spec : Prop :=
  ∀ n, P2911703122500325766.a n = A245799 n

end A245799

/-! ## A245799.P1821089104664100189

`2*A001077(n)-A000045(n)`
-/

namespace A245799.P1821089104664100189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001077 n - A000045 n

end

end A245799.P1821089104664100189

namespace A245799

/-- `2*A001077(n)-A000045(n)` -/
def P1821089104664100189.Spec : Prop :=
  ∀ n, P1821089104664100189.a n = A245799 n

end A245799

/-! ## A245799.P17858117738271096775

`A000032(3*n)-A000045(n)`
-/

namespace A245799.P17858117738271096775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - A000045 n

end

end A245799.P17858117738271096775

namespace A245799

/-- `A000032(3*n)-A000045(n)` -/
def P17858117738271096775.Spec : Prop :=
  ∀ n, P17858117738271096775.a n = A245799 n

end A245799

/-! ## A245799.P7437188783556187572

`A001612(3*n)-A001611(n)`
-/

namespace A245799.P7437188783556187572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (3 * n) - A001611 n

end

end A245799.P7437188783556187572

namespace A245799

/-- `A001612(3*n)-A001611(n)` -/
def P7437188783556187572.Spec : Prop :=
  ∀ n, P7437188783556187572.a n = A245799 n

end A245799

/-! ## A245799.P15125594689115889476

`A303427(6*n)-A000045(n)`
-/

namespace A245799.P15125594689115889476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (6 * n) - A000045 n

end

end A245799.P15125594689115889476

namespace A245799

/-- `A303427(6*n)-A000045(n)` -/
def P15125594689115889476.Spec : Prop :=
  ∀ n, P15125594689115889476.a n = A245799 n

end A245799

/-! ## A245799.P94332128320763596

`A000032(3*n)-abs(A236191(n))`
-/

namespace A245799.P94332128320763596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - |A236191 n|

end

end A245799.P94332128320763596

namespace A245799

/-- `A000032(3*n)-abs(A236191(n))` -/
def P94332128320763596.Spec : Prop :=
  ∀ n, P94332128320763596.a n = A245799 n

end A245799

/-! ## A245799.P12935544551848465242

`A000032(3*n)-A212804(n+1)`
-/

namespace A245799.P12935544551848465242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - A212804 (n + 1)

end

end A245799.P12935544551848465242

namespace A245799

/-- `A000032(3*n)-A212804(n+1)` -/
def P12935544551848465242.Spec : Prop :=
  ∀ n, P12935544551848465242.a n = A245799 n

end A245799

/-! ## A245799.P15000168555213109978

`A000032(3*n)-(A001611(n)-1)`
-/

namespace A245799.P15000168555213109978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - (A001611 n - 1)

end

end A245799.P15000168555213109978

namespace A245799

/-- `A000032(3*n)-(A001611(n)-1)` -/
def P15000168555213109978.Spec : Prop :=
  ∀ n, P15000168555213109978.a n = A245799 n

end A245799

/-! ## A245799.P7215786393206387191

`A000032(3*n)-(A157725(n)-2)`
-/

namespace A245799.P7215786393206387191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - (A157725 n - 2)

end

end A245799.P7215786393206387191

namespace A245799

/-- `A000032(3*n)-(A157725(n)-2)` -/
def P7215786393206387191.Spec : Prop :=
  ∀ n, P7215786393206387191.a n = A245799 n

end A245799

/-! ## A245799.P2497722025626219153

`A000032(3*n)-A053602(2*n)`
-/

namespace A245799.P2497722025626219153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - A053602 (2 * n)

end

end A245799.P2497722025626219153

namespace A245799

/-- `A000032(3*n)-A053602(2*n)` -/
def P2497722025626219153.Spec : Prop :=
  ∀ n, P2497722025626219153.a n = A245799 n

end A245799

/-! ## A245799.P11287216588771759167

`A000032(3*n)-A103609(2*n)`
-/

namespace A245799.P11287216588771759167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - A103609 (2 * n)

end

end A245799.P11287216588771759167

namespace A245799

/-- `A000032(3*n)-A103609(2*n)` -/
def P11287216588771759167.Spec : Prop :=
  ∀ n, P11287216588771759167.a n = A245799 n

end A245799

/-! ## A245799.P14737217585933396664

`A000032(3*n)-A303427(2*n+1)`
-/

namespace A245799.P14737217585933396664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n) - A303427 (2 * n + 1)

end

end A245799.P14737217585933396664

namespace A245799

/-- `A000032(3*n)-A303427(2*n+1)` -/
def P14737217585933396664.Spec : Prop :=
  ∀ n, P14737217585933396664.a n = A245799 n

end A245799

/-! ## A245799.P12677439170099938183

`A000032(3*n)-A006355(n+1)/2`
-/

namespace A245799.P12677439170099938183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * n) : ℚ) - (A006355 (n + 1) : ℚ) / 2

end

end A245799.P12677439170099938183

namespace A245799

/-- `A000032(3*n)-A006355(n+1)/2` -/
def P12677439170099938183.Spec : Prop :=
  ∀ n, P12677439170099938183.a n = (A245799 n : ℚ)

end A245799

/-! ## A245799.P4437202671878219325

`A000032(3*n)-A118658(n+1)/2`
-/

namespace A245799.P4437202671878219325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * n) : ℚ) - (A118658 (n + 1) : ℚ) / 2

end

end A245799.P4437202671878219325

namespace A245799

/-- `A000032(3*n)-A118658(n+1)/2` -/
def P4437202671878219325.Spec : Prop :=
  ∀ n, P4437202671878219325.a n = (A245799 n : ℚ)

end A245799

/-! ## A245799.P15980247040263405729

`A302126(6*n+1)-A302126(2*n)`
-/

namespace A245799.P15980247040263405729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (6 * n + 1) - A302126 (2 * n)

end

end A245799.P15980247040263405729

namespace A245799

/-- `A302126(6*n+1)-A302126(2*n)` -/
def P15980247040263405729.Spec : Prop :=
  ∀ n, P15980247040263405729.a n = A245799 n

end A245799

/-! ## A245799.P16380014335817430990

`A329723(A016789(n))-A000045(n)`
-/

namespace A245799.P16380014335817430990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A016789 n).toNat - A000045 n

end

end A245799.P16380014335817430990

namespace A245799

/-- `A329723(A016789(n))-A000045(n)` -/
def P16380014335817430990.Spec : Prop :=
  ∀ n, P16380014335817430990.a n = A245799 n

end A245799

/-! ## A245799.P13341809778202135727

`A015448(n)+A033887(n)-A000045(n)`
-/

namespace A245799.P13341809778202135727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n + (A033887 n - A000045 n)

end

end A245799.P13341809778202135727

namespace A245799

/-- `A015448(n)+A033887(n)-A000045(n)` -/
def P13341809778202135727.Spec : Prop :=
  ∀ n, P13341809778202135727.a n = A245799 n

end A245799

/-! ## A245799.P7552441169870712706

`Δ[A000045(3*n)]-A000045(3*n)-A000045(n)`
-/

namespace A245799.P7552441169870712706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 (3 * n) - A000045 n

end

end A245799.P7552441169870712706

namespace A245799

/-- `Δ[A000045(3*n)]-A000045(3*n)-A000045(n)` -/
def P7552441169870712706.Spec : Prop :=
  ∀ n, P7552441169870712706.a n = A245799 n

end A245799

