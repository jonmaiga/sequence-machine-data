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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A304100: a(n) = A003602(A048679(n)).

The programs for A304100, there is no canonical definition to state claims against.
-/

/-! ## A304100.P15526602866567266899

`A003602(A048679(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304100.P15526602866567266899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A048679 (n + 1)).toNat

end

end A304100.P15526602866567266899

/-! ## A304100.P10326495205134326076

`A074050(A003603(n+1))`
-/

namespace A304100.P10326495205134326076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074050 (A003603 (n + 1)).toNat

end

end A304100.P10326495205134326076

/-! ## A304100.P9505848939210555280

`A048679(A019586(n+1))+1`
-/

namespace A304100.P9505848939210555280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A019586 (n + 1)).toNat + 1

end

end A304100.P9505848939210555280

/-! ## A304100.P9051252458031564181

`A048679(A003603(n+1)-1)+1`
-/

namespace A304100.P9051252458031564181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A003603 (n + 1) - 1).toNat + 1

end

end A304100.P9051252458031564181

/-! ## A304100.P4005477819216002518

`A110963(or(1, A048679(n)))`
-/

namespace A304100.P4005477819216002518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (Int.lor 1 (A048679 n)).toNat

end

end A304100.P4005477819216002518

/-! ## A304100.P11727359261455621547

`A003602(A106151(A003714(n+1)))`
-/

namespace A304100.P11727359261455621547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A106151 (A003714 (n + 1)).toNat).toNat

end

end A304100.P11727359261455621547

/-! ## A304100.P12128180237640629517

`A003602(A371176(n+1))`
-/

namespace A304100.P12128180237640629517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A371176 (n + 1)).toNat

end

end A304100.P12128180237640629517

/-!
# A304101: Restricted growth sequence transform of A278222(A048679(n)).

The programs for A304101, there is no canonical definition to state claims against.
-/

/-! ## A304101.P4560618578992836428

`A322794(A006530(n+1))*A322868(A277006(n))`
-/

namespace A304101.P4560618578992836428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A006530 (n + 1)).toNat * A322868 (A277006 n).toNat

end

end A304101.P4560618578992836428

/-! ## A304101.P6687290805347854151

`A322794(A039634(n+1))*A322868(A277006(n))`
-/

namespace A304101.P6687290805347854151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A039634 (n + 1)).toNat * A322868 (A277006 n).toNat

end

end A304101.P6687290805347854151

/-! ## A304101.P1495023010235158098

`A322868(A277006(n))%A234516(A113957(n+2))`
-/

namespace A304101.P1495023010235158098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322868 (A277006 n).toNat) (A234516 (A113957 (n + 2)).toNat)

end

end A304101.P1495023010235158098

/-! ## A304101.P3088396579058347788

`A322794(A056609(2*n+1))*A322868(A277006(n))`
-/

namespace A304101.P3088396579058347788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A056609 (2 * n + 1)).toNat * A322868 (A277006 n).toNat

end

end A304101.P3088396579058347788

/-! ## A304101.P8079428027132047181

`A322868(A277006(n))+A000038(A038620(n))`
-/

namespace A304101.P8079428027132047181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (A277006 n).toNat + A000038 (A038620 n).toNat

end

end A304101.P8079428027132047181

/-! ## A304101.P10988745142727916650

`or(A322868(A277006(n)), A341509(A061638(n+1)))`
-/

namespace A304101.P10988745142727916650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322868 (A277006 n).toNat) (A341509 (A061638 (n + 1)).toNat)

end

end A304101.P10988745142727916650

/-! ## A304101.P16008843795517755519

`A322794(A006530(n+2))+A322868(A277006(n))-1`
-/

namespace A304101.P16008843795517755519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A006530 (n + 2)).toNat + (A322868 (A277006 n).toNat - 1)

end

end A304101.P16008843795517755519

/-! ## A304101.P14970444535413940904

`A322868(A277006(n))+A008683(A001248(n+1))`
-/

namespace A304101.P14970444535413940904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (A277006 n).toNat + A008683 (A001248 (n + 1)).toNat

end

end A304101.P14970444535413940904

/-!
# A304102: a(n) = Product_{d|n, d

The programs for A304102, there is no canonical definition to state claims against.
-/

/-! ## A304102.P9696517718437126520

`2*A304104(n+1)/A000040(A304101(n+1)-1)`
-/

namespace A304102.P9696517718437126520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A304104 (n + 1) : ℚ) / (A000040 (A304101 (n + 1) - 1).toNat : ℚ)

end

end A304102.P9696517718437126520

/-! ## A304102.P4429732984041119601

`A004277(A300716(n+1)^A300711(n+1))`
-/

namespace A304102.P4429732984041119601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A300716 (n + 1) : ℚ) ^ (A300711 (n + 1) : ℤ))).toNat

end

end A304102.P4429732984041119601

/-! ## A304102.P4213854078484037549

`A004277(A300716(n+1)%A347750(3*n+4))`
-/

namespace A304102.P4213854078484037549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A300716 (n + 1)) (A347750 (3 * n + 4))).toNat

end

end A304102.P4213854078484037549

/-!
# A304103: Restricted growth sequence transform of A304102, a filter sequence related to the proper divisors of n expressed in Fibonacci number system.

The programs for A304103, there is no canonical definition to state claims against.
-/

/-! ## A304103.P18125305853306625763

`A167263(A127218(n))+A077462(n+1)`
-/

namespace A304103.P18125305853306625763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167263 (A127218 n).toNat + A077462 (n + 1)

end

end A304103.P18125305853306625763

/-! ## A304103.P3621431347179985076

`or(A077462(n+1), A345952(A295358(n)))`
-/

namespace A304103.P3621431347179985076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077462 (n + 1)) (A345952 (A295358 n).toNat)

end

end A304103.P3621431347179985076

/-! ## A304103.P3388007656936609818

`A318809(A063967(n+3))+A079616(n+1)`
-/

namespace A304103.P3388007656936609818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A063967 (n + 3)).toNat + A079616 (n + 1)

end

end A304103.P3388007656936609818

/-! ## A304103.P10888152906432970136

`A319355(n+1)-A353626(A233268(n+1))`
-/

namespace A304103.P10888152906432970136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319355 (n + 1) - A353626 (A233268 (n + 1)).toNat

end

end A304103.P10888152906432970136

/-! ## A304103.P9617598090886102523

`A284256(A063804(n+3))+A181819(n+1)`
-/

namespace A304103.P9617598090886102523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A063804 (n + 3)).toNat + A181819 (n + 1)

end

end A304103.P9617598090886102523

/-!
# A304104: a(n) = Product_{d|n, d>1} prime(A304101(d)-1).

The programs for A304104, there is no canonical definition to state claims against.
-/

/-! ## A304104.P17823232488338086833

`1/2*A304102(n+1)*A000040(A304101(n+1)-1)`
-/

namespace A304104.P17823232488338086833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A304102 (n + 1) : ℚ) * (A000040 (A304101 (n + 1) - 1).toNat : ℚ)

end

end A304104.P17823232488338086833

/-!
# A304105: Restricted growth sequence transform of A304104, a filter sequence related to how the divisors of n are expressed in Fibonacci number system.

The programs for A304105, there is no canonical definition to state claims against.
-/

/-! ## A304105.P16288679201713592720

`A265718(A085880(3*n))+A059897(n+1)`
-/

namespace A304105.P16288679201713592720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265718 (A085880 (3 * n)).toNat + A059897 (n + 1)

end

end A304105.P16288679201713592720

/-! ## A304105.P2740486889992891578

`A059897(n+1)+A035263(A115925(3*n+1))`
-/

namespace A304105.P2740486889992891578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (n + 1) + A035263 (A115925 (3 * n + 1)).toNat

end

end A304105.P2740486889992891578

/-!
# A304107: Analog for squarefree numbers when n is factored in polynomial ring GF(2)[X], so that the binary expansion of n defines the corresponding (0,1)-polynomial. These are numbers n such that the said polynomial doesn't have any duplicated irreducible divisors.

The programs for A304107, there is no canonical definition to state claims against.
-/

/-! ## A304107.P15688718069206790946

`lt[0, A304109(n+1)]+1`
-/

namespace A304107.P15688718069206790946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A304107.P15688718069206790946

/-! ## A304107.P10554925343821248444

`record[(n+1)*(A304111(n+1)-A304111(n))]`
-/

namespace A304107.P10554925343821248444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A304111 (n + 1) - A304111 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304107.P10554925343821248444

/-! ## A304107.P13671908871036287042

`lt[A278233(val(A278233(n+1), 4)+1), 2]+1`
-/

namespace A304107.P13671908871036287042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (SequenceMachineLib.valuation (A278233 (n + 1)).toNat 4 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A304107.P13671908871036287042

/-! ## A304107.P7293740616025162052

`filter[A042968(n+1), A304109(#)]`
-/

namespace A304107.P7293740616025162052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A304107.P7293740616025162052

/-! ## A304107.P6940166247542652466

`filter[A359794(n+1), A304109(#)]`
-/

namespace A304107.P6940166247542652466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A304107.P6940166247542652466

/-! ## A304107.P9163466130945437067

`filter[A047592(n+1), A304109(#)]`
-/

namespace A304107.P9163466130945437067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A304107.P9163466130945437067

/-! ## A304107.P12124599247299335480

`filter[A317468(n+1), A304109(#)]`
-/

namespace A304107.P12124599247299335480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A304107.P12124599247299335480

/-! ## A304107.P16581650309029692848

`filter[A168186(n+1), A304109(#)]`
-/

namespace A304107.P16581650309029692848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A304107.P16581650309029692848

/-! ## A304107.P12221517930439980409

`filter[A110303(n+1), A304109(#)]`
-/

namespace A304107.P12221517930439980409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A304107.P12221517930439980409

/-! ## A304107.P9407535973247596178

`filter[n+1, A304109(#)]`
-/

namespace A304107.P9407535973247596178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j) = 1) n)

end

end A304107.P9407535973247596178

/-! ## A304107.P15172028682633897017

`record[(n+1)*A304109(char[1]+1+n)]`
-/

namespace A304107.P15172028682633897017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A304109 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304107.P15172028682633897017

/-! ## A304107.P12714069414349953393

`eq[A091221(n+1), A091222(n+1)]+1`
-/

namespace A304107.P12714069414349953393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304107.P12714069414349953393

/-! ## A304107.P15691239202352416444

`eq[A000035(2*n+1), A304109(n+1)]+1`
-/

namespace A304107.P15691239202352416444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304107.P15691239202352416444

/-! ## A304107.P15541679759742532394

`record[(n+1)*A014577(A278233(n+1)+2)]`
-/

namespace A304107.P15541679759742532394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014577 (A278233 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304107.P15541679759742532394

/-!
# A304108: Numbers n such that the (0,1)-polynomial encoded in binary expansion of n has at least one duplicated irreducible divisor when the factorization is done in polynomial ring GF(2)[X].

The programs for A304108, there is no canonical definition to state claims against.
-/

/-! ## A304108.P8909101214105565429

`eq[0, A304109(n+1)]+1`
-/

namespace A304108.P8909101214105565429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304108.P8909101214105565429

/-! ## A304108.P17962566039990867946

`lt[A304109(n+1), A000035(2*n+1)]+1`
-/

namespace A304108.P17962566039990867946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A304108.P17962566039990867946

/-! ## A304108.P12571847709663040253

`eq[0, A304109(A065033(A005843(n)))]`
-/

namespace A304108.P12571847709663040253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (A065033 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304108.P12571847709663040253

/-! ## A304108.P7380522602775814445

`lt[A304109(n+1), A038500(3*n+4)]+1`
-/

namespace A304108.P7380522602775814445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A304108.P7380522602775814445

/-! ## A304108.P14075992332174042220

`eq[1, A014577(A278233(n+2))]+2`
-/

namespace A304108.P14075992332174042220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A278233 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A304108.P14075992332174042220

/-! ## A304108.P637474497354173498

`eq[1, A249442(A091203(n))]`
-/

namespace A304108.P637474497354173498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A091203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304108.P637474497354173498

/-! ## A304108.P15076007049189921999

`eq[1, A007423(A091203(n+1))]+1`
-/

namespace A304108.P15076007049189921999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A091203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304108.P15076007049189921999

/-! ## A304108.P5386129453326667541

`eq[1, A007423(A091205(n+1))]+1`
-/

namespace A304108.P5386129453326667541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A091205 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304108.P5386129453326667541

/-! ## A304108.P9800983913635398400

`eq[8, gcd(8, A278238(n+1))]+1`
-/

namespace A304108.P9800983913635398400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A278238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304108.P9800983913635398400

/-!
# A304109: a(n) = 1 if binary expansion of n encodes a squarefree (0,1)-polynomial when the factorization is done in polynomial ring GF(2)[X], 0 otherwise.

The programs for A304109, there is no canonical definition to state claims against.
-/

/-! ## A304109.P18078928405961334897

`abs(A091219(n+1))`
-/

namespace A304109.P18078928405961334897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091219 (n + 1)|

end

end A304109.P18078928405961334897

/-! ## A304109.P15101238538747664916

`A008966(A278233(n+1))`
-/

namespace A304109.P15101238538747664916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A278233 (n + 1)).toNat

end

end A304109.P15101238538747664916

/-! ## A304109.P6792049665791731379

`C(A091221(n+1), A091222(n+1))`
-/

namespace A304109.P6792049665791731379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091221 (n + 1)).toNat (A091222 (n + 1)).toNat

end

end A304109.P6792049665791731379

/-! ## A304109.P11781425173698247351

`A278233(val(A278233(n+1), 4)+1)%2`
-/

namespace A304109.P11781425173698247351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278233 (SequenceMachineLib.valuation (A278233 (n + 1)).toNat 4 + 1)) 2

end

end A304109.P11781425173698247351

/-! ## A304109.P2915235714894691444

`val(A014580(val(A278233(n+1), 4)+1), 2)`
-/

namespace A304109.P2915235714894691444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014580 (SequenceMachineLib.valuation (A278233 (n + 1)).toNat 4 + 1)).toNat 2

end

end A304109.P2915235714894691444

/-! ## A304109.P7565355400595527728

`A008683(A278233(n+1))^A035008(n)`
-/

namespace A304109.P7565355400595527728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A278233 (n + 1)).toNat : ℚ) ^ (A035008 n : ℤ)

end

end A304109.P7565355400595527728

/-! ## A304109.P1365769994030693658

`A008683(A278233(n+1))^A085001(n)`
-/

namespace A304109.P1365769994030693658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A278233 (n + 1)).toNat : ℚ) ^ (A085001 n : ℤ)

end

end A304109.P1365769994030693658

/-! ## A304109.P6019908114087821575

`A122458(A304111(n+1)-A304111(n)+1)`
-/

namespace A304109.P6019908114087821575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A304111 (n + 1) - A304111 n + 1).toNat

end

end A304109.P6019908114087821575

/-! ## A304109.P14874479019279867727

`A324660(A304111(n+1)-A304111(n)+1)`
-/

namespace A304109.P14874479019279867727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 (A304111 (n + 1) - A304111 n + 1).toNat

end

end A304109.P14874479019279867727

/-! ## A304109.P6373982546409780360

`A178472(A304111(n+1)-A304111(n)+2)`
-/

namespace A304109.P6373982546409780360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178472 (A304111 (n + 1) - A304111 n + 2).toNat

end

end A304109.P6373982546409780360

/-! ## A304109.P4245739732733224987

`A193231(A304111(n+1)-A304111(n)+1)/3`
-/

namespace A304109.P4245739732733224987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193231 (A304111 (n + 1) - A304111 n + 1).toNat : ℚ) / 3

end

end A304109.P4245739732733224987

/-! ## A304109.P9938901689586714032

`A014963(A317848(A278233(n+1)+4))-1`
-/

namespace A304109.P9938901689586714032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A317848 (A278233 (n + 1) + 4).toNat).toNat - 1

end

end A304109.P9938901689586714032

/-! ## A304109.P4611086322314207762

`A008966(A091203(n+1))`
-/

namespace A304109.P4611086322314207762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A091203 (n + 1)).toNat

end

end A304109.P4611086322314207762

/-! ## A304109.P17884095689508536467

`A008966(A091205(n+1))`
-/

namespace A304109.P17884095689508536467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A091205 (n + 1)).toNat

end

end A304109.P17884095689508536467

/-! ## A304109.P9940383018867690416

`A008683(A091205(n+1))^A303809(n+1)`
-/

namespace A304109.P9940383018867690416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A091205 (n + 1)).toNat : ℚ) ^ (A303809 (n + 1) : ℤ)

end

end A304109.P9940383018867690416

/-! ## A304109.P8878133430914053792

`A008683(A091205(n+1))^A305792(n+1)`
-/

namespace A304109.P8878133430914053792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A091205 (n + 1)).toNat : ℚ) ^ (A305792 (n + 1) : ℤ)

end

end A304109.P8878133430914053792

/-! ## A304109.P1000143038209089991

`A008683(A091205(n+1))^A075171(A032741(n))`
-/

namespace A304109.P1000143038209089991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A091205 (n + 1)).toNat : ℚ) ^ (A075171 (A032741 n).toNat : ℤ)

end

end A304109.P1000143038209089991

/-! ## A304109.P11486696044154710362

`A008966(A235042(n+1))`
-/

namespace A304109.P11486696044154710362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A235042 (n + 1)).toNat

end

end A304109.P11486696044154710362

/-! ## A304109.P6089906642119361732

`A014577(A278233(n+1)+2)`
-/

namespace A304109.P6089906642119361732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A278233 (n + 1) + 2).toNat

end

end A304109.P6089906642119361732

/-! ## A304109.P2801972246335421931

`A008683(A091205(n+1))^A250250(2*(n+2))`
-/

namespace A304109.P2801972246335421931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A091205 (n + 1)).toNat : ℚ) ^ (A250250 (2 * (n + 2)) : ℤ)

end

end A304109.P2801972246335421931

/-!
# A304110: a(n) is the number of terms of A304107 <= n; Partial sums of A304109.

The programs for A304110, there is no canonical definition to state claims against.
-/

/-! ## A304110.P17780378787346614104

`A304109(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A304110.P17780378787346614104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304109 (n + 1) + a (n - 1)

end

end A304110.P17780378787346614104

/-! ## A304110.P3598485700277093856

`∑[A304109(n+1)]`
-/

namespace A304110.P3598485700277093856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P3598485700277093856

/-! ## A304110.P533644845888951975

`(A304111(n+1)+n+1)/2`
-/

namespace A304110.P533644845888951975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304111 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A304110.P533644845888951975

/-! ## A304110.P8099670029618181460

`∑[A008966(A278233(n+1))]`
-/

namespace A304110.P8099670029618181460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A278233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P8099670029618181460

/-! ## A304110.P13390520211948375529

`∑[C(A091221(n+1), A091222(n+1))]`
-/

namespace A304110.P13390520211948375529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091221 (n + 1)).toNat (A091222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P13390520211948375529

/-! ## A304110.P16563310170363707286

`∑[A008966(A091203(n+1))]`
-/

namespace A304110.P16563310170363707286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A091203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P16563310170363707286

/-! ## A304110.P1462306612332593734

`∑[A008966(A091205(n+1))]`
-/

namespace A304110.P1462306612332593734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A091205 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P1462306612332593734

/-! ## A304110.P6146075652993790211

`∑[A008966(A235042(n+1))]`
-/

namespace A304110.P6146075652993790211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A235042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P6146075652993790211

/-! ## A304110.P5916709932037454709

`∑[C(A091221(n+1), A106493(n+1))]`
-/

namespace A304110.P5916709932037454709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091221 (n + 1)).toNat (A106493 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P5916709932037454709

/-! ## A304110.P2378492412068897516

`∑[C(A106495(n+1), A091222(n+1))]`
-/

namespace A304110.P2378492412068897516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106495 (n + 1)).toNat (A091222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304110.P2378492412068897516

/-!
# A304111: Partial sums of f(n) = (-1)^(1-A304109(n)).

The programs for A304111, there is no canonical definition to state claims against.
-/

/-! ## A304111.P233587863130848611

`a(n-1)+(-1)^(1-A304109(n))` with `a(0)=0`
-/

namespace A304111.P233587863130848611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ (1 - A304109 n : ℤ)

end

end A304111.P233587863130848611

/-! ## A304111.P12308777540207719882

`A266161(n)+A055029(A000124(A200570(n+1)))`
-/

namespace A304111.P12308777540207719882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266161 n + A055029 (A000124 (A200570 (n + 1)).toNat).toNat

end

end A304111.P12308777540207719882

/-! ## A304111.P13136299915229127580

`∑[A011623(∑[A293674(n)])]`
-/

namespace A304111.P13136299915229127580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293674 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011623 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304111.P13136299915229127580

/-! ## A304111.P9190477775322871940

`A038698(lt[A050761(n), A331277(n+4)])`
-/

namespace A304111.P9190477775322871940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A304111.P9190477775322871940

/-! ## A304111.P4564001239712557115

`A178226(A000079(n))*A303536(3*n+2)`
-/

namespace A304111.P4564001239712557115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A000079 n).toNat * A303536 (3 * n + 2)

end

end A304111.P4564001239712557115

/-!
# A304114: Restricted growth sequence transform of A246277(A098550(n)), related to indices in the prime factorization of Yellowstone permutation.

The programs for A304114, there is no canonical definition to state claims against.
-/

/-! ## A304114.P1686560881041542922

`A304115(n+1)+A107846(A180362(n+1))`
-/

namespace A304114.P1686560881041542922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304115 (n + 1) + A107846 (A180362 (n + 1)).toNat

end

end A304114.P1686560881041542922

/-! ## A304114.P5258147115034976016

`A304115(A187829(n+1))+A304095(n+1)`
-/

namespace A304114.P5258147115034976016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304115 (A187829 (n + 1)).toNat + A304095 (n + 1)

end

end A304114.P5258147115034976016

/-! ## A304114.P4255833872792265143

`A333627(n)+A124766(A005250(n+3))`
-/

namespace A304114.P4255833872792265143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 n + A124766 (A005250 (n + 3)).toNat

end

end A304114.P4255833872792265143

/-! ## A304114.P6429678910684827030

`A139353(2*n+1)+A000120(A331802(n+1))`
-/

namespace A304114.P6429678910684827030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 (2 * n + 1) + A000120 (A331802 (n + 1)).toNat

end

end A304114.P6429678910684827030

/-! ## A304114.P4818939089885337793

`A304115(n+1)+A304095(n+1)^A304124(n+1)`
-/

namespace A304114.P4818939089885337793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304115 (n + 1) : ℚ) + (A304095 (n + 1) : ℚ) ^ (A304124 (n + 1) : ℤ)

end

end A304114.P4818939089885337793

/-!
# A304115: Restricted growth sequence transform of A046523(A098550(n)), a filter sequence based on the prime signature of the Yellowstone permutation.

The programs for A304115, there is no canonical definition to state claims against.
-/

/-! ## A304115.P8854623947479824645

`A304114(n+1)-A107846(A180362(n+1))`
-/

namespace A304115.P8854623947479824645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304114 (n + 1) - A107846 (A180362 (n + 1)).toNat

end

end A304115.P8854623947479824645

/-! ## A304115.P5053320767234845780

`A304114(A187829(n+1))-A304095(n+1)`
-/

namespace A304115.P5053320767234845780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304114 (A187829 (n + 1)).toNat - A304095 (n + 1)

end

end A304115.P5053320767234845780

/-! ## A304115.P686547351979894746

`A124770(n)+A025142(A316983(n))`
-/

namespace A304115.P686547351979894746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n + A025142 (A316983 n).toNat

end

end A304115.P686547351979894746

/-! ## A304115.P12993343725984053876

`A124771(n)+A108737(A124791(n))`
-/

namespace A304115.P12993343725984053876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n + A108737 (A124791 n).toNat

end

end A304115.P12993343725984053876

/-! ## A304115.P10887210081630765773

`or(A124771(n), A288375(A054355(n)))`
-/

namespace A304115.P10887210081630765773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124771 n) (A288375 (A054355 n).toNat)

end

end A304115.P10887210081630765773

/-!
# A304116: Numbers k such that A304036(k) = 2.

The programs for A304116, there is no canonical definition to state claims against.
-/

/-! ## A304116.P17165093474275715925

`eq[2, A304036(n)]`
-/

namespace A304116.P17165093474275715925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A304116.P17165093474275715925

/-! ## A304116.P8873077763162419552

`lt[A040155(n)*A303940(A304036(n)), 1]`
-/

namespace A304116.P8873077763162419552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040155 n * A303940 (A304036 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304116.P8873077763162419552

/-! ## A304116.P3551414439162423782

`lt[A303940(n)*A303940(A304036(n)), 1]`
-/

namespace A304116.P3551414439162423782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 n * A303940 (A304036 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304116.P3551414439162423782

/-! ## A304116.P2933987776416872147

`lt[A222521(A304036(n+1)), 2]+1`
-/

namespace A304116.P2933987776416872147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222521 (A304036 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A304116.P2933987776416872147

/-! ## A304116.P13842712655086177167

`lt[A222521(A304036(2*n-n)), 2]`
-/

namespace A304116.P13842712655086177167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222521 (A304036 (2 * n - n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304116.P13842712655086177167

/-!
# A304117: If n = Product (p_j^k_j) then a(n) = Product (pi(p_j)*k_j), where pi() = A000720.

The programs for A304117, the canonical program `A304117.P17898694006949313711` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304117 has offset 1).

The definition of A304117 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A156061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304117.P17898694006949313711

`A005361(n+1)*A156061(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A304117

/-- `A005361(n+1)*A156061(n+1)` -/
def P17898694006949313711.Spec : Prop :=
  ∀ n, P17898694006949313711.a n = A304117 (n + 1)

theorem P17898694006949313711.correct : P17898694006949313711.Spec := by
  intro n
  simp only [A304117, Nat.add_sub_cancel]

end A304117

/-! ## A304117.P2285768423518527019

`A003963(A353832(n+1))`
-/

namespace A304117.P2285768423518527019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A353832 (n + 1)).toNat

end

end A304117.P2285768423518527019

namespace A304117

/-- `A003963(A353832(n+1))` -/
def P2285768423518527019.Spec : Prop :=
  ∀ n, P2285768423518527019.a n = A304117 (n + 1)

end A304117

/-! ## A304117.P264474339939656696

`A000005(A003557(n+1))*A156061(n+1)`
-/

namespace A304117.P264474339939656696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A156061 (n + 1)

end

end A304117.P264474339939656696

namespace A304117

/-- `A000005(A003557(n+1))*A156061(n+1)` -/
def P264474339939656696.Spec : Prop :=
  ∀ n, P264474339939656696.a n = A304117 (n + 1)

end A304117

/-! ## A304117.P14571793689339081575

`A003963(A181819(n+1))*A156061(n+1)`
-/

namespace A304117.P14571793689339081575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A181819 (n + 1)).toNat * A156061 (n + 1)

end

end A304117.P14571793689339081575

namespace A304117

/-- `A003963(A181819(n+1))*A156061(n+1)` -/
def P14571793689339081575.Spec : Prop :=
  ∀ n, P14571793689339081575.a n = A304117 (n + 1)

end A304117

/-! ## A304117.P1118373616482967070

`A003963(A007947(n+1))*A003963(A181819(n+1))`
-/

namespace A304117.P1118373616482967070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A007947 (n + 1)).toNat * A003963 (A181819 (n + 1)).toNat

end

end A304117.P1118373616482967070

namespace A304117

/-- `A003963(A007947(n+1))*A003963(A181819(n+1))` -/
def P1118373616482967070.Spec : Prop :=
  ∀ n, P1118373616482967070.a n = A304117 (n + 1)

end A304117

/-! ## A304117.P4266422509552885651

`A003963(A007947(n+1)*A181819(n+1))`
-/

namespace A304117.P4266422509552885651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A007947 (n + 1) * A181819 (n + 1)).toNat

end

end A304117.P4266422509552885651

namespace A304117

/-- `A003963(A007947(n+1)*A181819(n+1))` -/
def P4266422509552885651.Spec : Prop :=
  ∀ n, P4266422509552885651.a n = A304117 (n + 1)

end A304117

/-! ## A304117.P4555309534299879849

`A005361(n+1)*A225395(A341042(n+1)²)`
-/

namespace A304117.P4555309534299879849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A225395 (A341042 (n + 1) ^ 2).toNat

end

end A304117.P4555309534299879849

namespace A304117

/-- `A005361(n+1)*A225395(A341042(n+1)²)` -/
def P4555309534299879849.Spec : Prop :=
  ∀ n, P4555309534299879849.a n = A304117 (n + 1)

end A304117

/-!
# A304118: Number of z-blobs with least common multiple n > 1.

The programs for A304118, there is no canonical definition to state claims against.
-/

/-! ## A304118.P12224863808195795426

`ceil(A000045(A350338(n+1))/8)`
-/

namespace A304118.P12224863808195795426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (A350338 (n + 1)).toNat : ℚ) / 8⌉

end

end A304118.P12224863808195795426

/-! ## A304118.P1447273572758332543

`A344971(A008480(n+1))%(n+1)`
-/

namespace A304118.P1447273572758332543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344971 (A008480 (n + 1)).toNat) (n + 1 : ℤ)

end

end A304118.P1447273572758332543

/-! ## A304118.P3687245864755446294

`A070548(A285572(n+1))%(n+1)`
-/

namespace A304118.P3687245864755446294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070548 (A285572 (n + 1)).toNat) (n + 1 : ℤ)

end

end A304118.P3687245864755446294

/-! ## A304118.P8702941169136003911

`A042959(A335447(n+1))%(n+1)`
-/

namespace A304118.P8702941169136003911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042959 (A335447 (n + 1)).toNat) (n + 1 : ℤ)

end

end A304118.P8702941169136003911

/-! ## A304118.P5886295441747631054

`A344971(A008480(n*a(n-1)+1))` with `a(0)=0`
-/

namespace A304118.P5886295441747631054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A344971 (A008480 ((n : ℤ) * a (n - 1) + 1).toNat).toNat

end

end A304118.P5886295441747631054

/-! ## A304118.P9029815291904870420

`A070548(A285572(n*a(n-1)+1))` with `a(0)=0`
-/

namespace A304118.P9029815291904870420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A070548 (A285572 ((n : ℤ) * a (n - 1) + 1).toNat).toNat

end

end A304118.P9029815291904870420

/-! ## A304118.P14533831318762928885

`A298353(floor(A050328(n+1)/10))%(n+1)`
-/

namespace A304118.P14533831318762928885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298353 ⌊(A050328 (n + 1) : ℚ) / 10⌋.toNat) (n + 1 : ℤ)

end

end A304118.P14533831318762928885

/-! ## A304118.P17368875690701317325

`dr(A108037(A024641(A168324(n+1))))`
-/

namespace A304118.P17368875690701317325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A108037 (A024641 (A168324 (n + 1)).toNat).toNat)

end

end A304118.P17368875690701317325

/-! ## A304118.P4243208235474580879

`A344971(A008480(n+1))-A000007(n)`
-/

namespace A304118.P4243208235474580879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344971 (A008480 (n + 1)).toNat - A000007 n

end

end A304118.P4243208235474580879

/-! ## A304118.P16122901043693388775

`A344971(A008480(n+1))+A008683(lcm(2, (n+1)²))`
-/

namespace A304118.P16122901043693388775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344971 (A008480 (n + 1)).toNat + A008683 (Nat.lcm 2 ((n + 1) ^ 2))

end

end A304118.P16122901043693388775

/-!
# A304121: Expansion of A(x) = 1 + x + x*A(x) + x^2*A(x)^2 + x^3*A(x)^3.

The programs for A304121, there is no canonical definition to state claims against.
-/

/-! ## A304121.P7992177770580625193

`A026819(A115083(n)+2)`
-/

namespace A304121.P7992177770580625193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A115083 n + 2).toNat

end

end A304121.P7992177770580625193

/-! ## A304121.P2523407875249744703

`A046155(A115083(n)+2)`
-/

namespace A304121.P2523407875249744703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A115083 n + 2).toNat

end

end A304121.P2523407875249744703

/-! ## A304121.P7213685323189494805

`A087011(or(2, A051945(n)))`
-/

namespace A304121.P7213685323189494805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (Int.lor 2 (A051945 n)).toNat

end

end A304121.P7213685323189494805

/-!
# A304122: Squarefree numbers of the form 2^k + 5^m, where k is a positive integer and m is a nonnegative integer.

The programs for A304122, there is no canonical definition to state claims against.
-/

/-! ## A304122.P8722524709547054819

`filter[A226808(n+1), A359590(#)]`
-/

namespace A304122.P8722524709547054819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A304122.P8722524709547054819

/-! ## A304122.P6616104863360722758

`filter[A226808(n+1), A359592(#)]`
-/

namespace A304122.P6616104863360722758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A304122.P6616104863360722758

/-! ## A304122.P17735323502988469401

`filter[A226808(n+1), A323239(#)]`
-/

namespace A304122.P17735323502988469401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A304122.P17735323502988469401

/-! ## A304122.P6218817208346669773

`∩[A056911(n+1), A226808(n+1)]`
-/

namespace A304122.P6218817208346669773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304122.P6218817208346669773

/-! ## A304122.P15120762594902079231

`∩[A091428(n+1), A226808(n+1)]`
-/

namespace A304122.P15120762594902079231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A304122.P15120762594902079231

/-!
# A304123: Denominators of records low values of the ratio n*3^A006667(n)/2^A006666(n).

The programs for A304123, there is no canonical definition to state claims against.
-/

/-! ## A304123.P3858877459929007000

`2^A006666(A127789(n+1))`
-/

namespace A304123.P3858877459929007000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006666 (A127789 (n + 1)).toNat : ℤ)

end

end A304123.P3858877459929007000

/-! ## A304123.P1092255782953639871

`A000079(A006666(A127789(n+1)))`
-/

namespace A304123.P1092255782953639871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A006666 (A127789 (n + 1)).toNat).toNat

end

end A304123.P1092255782953639871

/-!
# A304124: Number of simple graphs with n vertices which contain no K4 subgraph.

The programs for A304124, there is no canonical definition to state claims against.
-/

/-! ## A304124.P4756623069873203246

`1+A052450(n+1)+A052451(n+1)`
-/

namespace A304124.P4756623069873203246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A052450 (n + 1) + A052451 (n + 1)

end

end A304124.P4756623069873203246

/-! ## A304124.P17793454295998872319

`A052451(n+1)+A006785(n+1)`
-/

namespace A304124.P17793454295998872319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052451 (n + 1) + A006785 (n + 1)

end

end A304124.P17793454295998872319

/-! ## A304124.P11719805527466466533

`A304125(n+1)-A052452(n+1)`
-/

namespace A304124.P11719805527466466533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - A052452 (n + 1)

end

end A304124.P11719805527466466533

/-! ## A304124.P381689757235114870

`A052451(n+1)+∑[A372169(comp[98*2^n-12*n²-60*n-97])]`
-/

namespace A304124.P381689757235114870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (98 * 2 ^ n : ℤ) - (12 * n ^ 2 : ℤ) - (60 * n : ℤ) - 97

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372169 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052451 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304124.P381689757235114870

/-! ## A304124.P8938189919907120333

`A052451(n+1)+A052450(A005555(n))+1`
-/

namespace A304124.P8938189919907120333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052451 (n + 1) + (A052450 (A005555 n).toNat + 1)

end

end A304124.P8938189919907120333

/-!
# A304125: Number of simple graphs with n vertices which contain no K5 subgraph.

The programs for A304125, there is no canonical definition to state claims against.
-/

/-! ## A304125.P14631627981129470270

`1+A052450(n+1)+A052451(n+1)+A052452(n+1)`
-/

namespace A304125.P14631627981129470270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A052450 (n + 1) + A052451 (n + 1) + A052452 (n + 1)

end

end A304125.P14631627981129470270

/-! ## A304125.P8383268175842649305

`A304124(n+1)+A052452(n+1)`
-/

namespace A304125.P8383268175842649305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304124 (n + 1) + A052452 (n + 1)

end

end A304125.P8383268175842649305

/-! ## A304125.P529571322558278752

`A006785(n+1)+A052452(n+1)+A052451(n+1)`
-/

namespace A304125.P529571322558278752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) + (A052452 (n + 1) + A052451 (n + 1))

end

end A304125.P529571322558278752

/-! ## A304125.P11692409642766298902

`A052452(A291769(n))+A052451(n+1)+A006785(n+1)`
-/

namespace A304125.P11692409642766298902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052452 (A291769 n).toNat + (A052451 (n + 1) + A006785 (n + 1))

end

end A304125.P11692409642766298902

/-! ## A304125.P6783012895711303858

`A052452(A348553(n))+A052451(n+1)+A006785(n+1)`
-/

namespace A304125.P6783012895711303858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052452 (A348553 n).toNat + (A052451 (n + 1) + A006785 (n + 1))

end

end A304125.P6783012895711303858

/-!
# A304126: a(n) = (6*n)!*(4*n)!/((2*n)!*(3*n)!*(5*n)!).

The programs for A304126, there is no canonical definition to state claims against.
-/

/-! ## A304126.P3692884817949393174

`A004355(n)/A000984(n)*A005810(n)`
-/

namespace A304126.P3692884817949393174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (A000984 n : ℚ) * (A005810 n : ℚ)

end

end A304126.P3692884817949393174

/-! ## A304126.P5413145045120062174

`A000897(n)/A001451(n)*A066802(n)`
-/

namespace A304126.P5413145045120062174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000897 n : ℚ) / (A001451 n : ℚ) * (A066802 n : ℚ)

end

end A304126.P5413145045120062174

/-! ## A304126.P368677718211286032

`A182411(A062728(n))`
-/

namespace A304126.P368677718211286032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182411 (A062728 n).toNat

end

end A304126.P368677718211286032

/-! ## A304126.P15312841389060181348

`A113424(n)/A001449(n)`
-/

namespace A304126.P15312841389060181348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113424 n : ℚ) / (A001449 n : ℚ)

end

end A304126.P15312841389060181348

/-! ## A304126.P8897113762911753140

`A005810(n)/A001451(n)*A113424(n)`
-/

namespace A304126.P8897113762911753140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n : ℚ) / (A001451 n : ℚ) * (A113424 n : ℚ)

end

end A304126.P8897113762911753140

/-!
# A304127: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304127, there is no canonical definition to state claims against.
-/

/-! ## A304127.P13490005066253216712

`A304133(∑[4*n]+1)`
-/

namespace A304127.P13490005066253216712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304127.P13490005066253216712

/-! ## A304127.P5132073882306288220

`record[A304133(Δ[A235355(n)])]`
-/

namespace A304127.P5132073882306288220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304127.P5132073882306288220

/-! ## A304127.P13421503998732698960

`record[A304133(A330613(n+1))]`
-/

namespace A304127.P13421503998732698960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304127.P13421503998732698960

/-! ## A304127.P14945517668947803678

`A304133(A001844(n))+char[16]`
-/

namespace A304127.P14945517668947803678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304127.P14945517668947803678

/-! ## A304127.P11155986049552832601

`record[A304133(or(1, A240134(n+1)))]`
-/

namespace A304127.P11155986049552832601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (Int.lor 1 (A240134 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304127.P11155986049552832601

/-!
# A304128: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304128, the canonical program `A304128.P4560462002256047551` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304128 has offset 1).

The definition of A304128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304128.P4560462002256047551

`a(n-1)+2*a(n-3)` with `a(0)=3, a(1)=7, a(2)=9, a(3)=19, a(4)=33, a(5)=53, a(6)=89`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304128

/-- `a(n-1)+2*a(n-3)` -/
def P4560462002256047551.Spec : Prop :=
  ∀ n, (P4560462002256047551.a n : ℤ) = A304128 (n + 1)

theorem P4560462002256047551.correct : P4560462002256047551.Spec := by
  intro n
  simp only [A304128, Nat.add_sub_cancel]

end A304128

/-! ## A304128.P8639412529059829024

`A304133(∑[n+2]+4)`
-/

namespace A304128.P8639412529059829024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304128.P8639412529059829024

namespace A304128

/-- `A304133(∑[n+2]+4)` -/
def P8639412529059829024.Spec : Prop :=
  ∀ n, P8639412529059829024.a n = A304128 (n + 1)

end A304128

/-! ## A304128.P12150304032400567698

`or(1, A304133(A167614(n+1)))`
-/

namespace A304128.P12150304032400567698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304133 (A167614 (n + 1)).toNat)

end

end A304128.P12150304032400567698

namespace A304128

/-- `or(1, A304133(A167614(n+1)))` -/
def P12150304032400567698.Spec : Prop :=
  ∀ n, P12150304032400567698.a n = A304128 (n + 1)

end A304128

/-! ## A304128.P8648795378908911788

`or(1, A304133(A046691(n)+7))`
-/

namespace A304128.P8648795378908911788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304133 (A046691 n + 7).toNat)

end

end A304128.P8648795378908911788

namespace A304128

/-- `or(1, A304133(A046691(n)+7))` -/
def P8648795378908911788.Spec : Prop :=
  ∀ n, P8648795378908911788.a n = A304128 (n + 1)

end A304128

/-! ## A304128.P11092809888500754082

`record[A304133(n+4)/A135857(n)]`
-/

namespace A304128.P11092809888500754082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304133 (n + 4) : ℚ) / (A135857 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304128.P11092809888500754082

namespace A304128

/-- `record[A304133(n+4)/A135857(n)]` -/
def P11092809888500754082.Spec : Prop :=
  ∀ n, P11092809888500754082.a n = (A304128 (n + 1) : ℚ)

end A304128

/-!
# A304129: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304129, there is no canonical definition to state claims against.
-/

/-! ## A304129.P11807836225036912889

`A304133(∑[n+3]+7)`
-/

namespace A304129.P11807836225036912889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304129.P11807836225036912889

/-! ## A304129.P9139955639517200794

`or(char[1], A304133(A141214(n)+7))`
-/

namespace A304129.P9139955639517200794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304133 (A141214 n + 7).toNat)

end

end A304129.P9139955639517200794

/-! ## A304129.P15288915880305266332

`A007318(C(n, 2))*A304133(A141214(n)+7)`
-/

namespace A304129.P15288915880305266332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304133 (A141214 n + 7).toNat

end

end A304129.P15288915880305266332

/-! ## A304129.P17573712230657699000

`A007318(floor(n/10))*A304133(A141214(n)+7)`
-/

namespace A304129.P17573712230657699000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 10⌋.toNat * A304133 (A141214 n + 7).toNat

end

end A304129.P17573712230657699000

/-! ## A304129.P15586543802798495612

`A304133(A141214(n+1))+A000035(2*n)`
-/

namespace A304129.P15586543802798495612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A141214 (n + 1)).toNat + A000035 (2 * n)

end

end A304129.P15586543802798495612

/-!
# A304130: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304130, there is no canonical definition to state claims against.
-/

/-! ## A304130.P11787777557807051858

`A304133(C(n+5, 2)+5)`
-/

namespace A304130.P11787777557807051858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (Nat.choose (n + 5) 2 + 5)

end

end A304130.P11787777557807051858

/-! ## A304130.P3054101625714441312

`A304133(A167499(n+3))`
-/

namespace A304130.P3054101625714441312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A167499 (n + 3)).toNat

end

end A304130.P3054101625714441312

/-! ## A304130.P9625170620722115

`A304133(A155212(n)+13)`
-/

namespace A304130.P9625170620722115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A155212 n + 13).toNat

end

end A304130.P9625170620722115

/-! ## A304130.P17213324421162369794

`A304133(A056000(n)+15)`
-/

namespace A304130.P17213324421162369794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A056000 n + 15).toNat

end

end A304130.P17213324421162369794

/-!
# A304131: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304131, there is no canonical definition to state claims against.
-/

/-! ## A304131.P15974522694068421963

`A304133(∑[n+5]+16)`
-/

namespace A304131.P15974522694068421963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304131.P15974522694068421963

/-! ## A304131.P15912613646584707799

`A304118(n+3)*A304133(A166136(n+4))`
-/

namespace A304131.P15912613646584707799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 3) * A304133 (A166136 (n + 4)).toNat

end

end A304131.P15912613646584707799

/-! ## A304131.P12134025972646130167

`A304133(A166136(n+4))%A002486(n+4)`
-/

namespace A304131.P12134025972646130167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304133 (A166136 (n + 4)).toNat) (A002486 (n + 4))

end

end A304131.P12134025972646130167

/-! ## A304131.P2868505911228686736

`A304133(A166136(n+4))+A000122(3*n+2)`
-/

namespace A304131.P2868505911228686736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A166136 (n + 4)).toNat + A000122 (3 * n + 2)

end

end A304131.P2868505911228686736

/-! ## A304131.P7124483627519736383

`A304133(A166136(n+4))+A154272(2*n+5)`
-/

namespace A304131.P7124483627519736383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A166136 (n + 4)).toNat + A154272 (2 * n + 5)

end

end A304131.P7124483627519736383

/-!
# A304132: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304132, there is no canonical definition to state claims against.
-/

/-! ## A304132.P10738085118163981094

`A304133(A056119(n)+28)`
-/

namespace A304132.P10738085118163981094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A056119 n + 28).toNat

end

end A304132.P10738085118163981094

/-! ## A304132.P2616552505852205361

`A304133(A167499(n+5)+2)`
-/

namespace A304132.P2616552505852205361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A167499 (n + 5) + 2).toNat

end

end A304132.P2616552505852205361

/-! ## A304132.P17622202946476514018

`A304133(A000124(n+6)+6)`
-/

namespace A304132.P17622202946476514018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A000124 (n + 6) + 6).toNat

end

end A304132.P17622202946476514018

/-! ## A304132.P7349031082003708172

`A304133(A000217(n+6)+7)`
-/

namespace A304132.P7349031082003708172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A000217 (n + 6) + 7).toNat

end

end A304132.P7349031082003708172

/-! ## A304132.P6224102649274640950

`A304133(A027379(n+4)+10)`
-/

namespace A304132.P6224102649274640950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (A027379 (n + 4) + 10).toNat

end

end A304132.P6224102649274640950

/-!
# A304133: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304133, there is no canonical definition to state claims against.
-/

/-! ## A304133.P10770127991480664748

`A303682(n+1)+A065040(A296548(n))`
-/

namespace A304133.P10770127991480664748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303682 (n + 1) + A065040 (A296548 n).toNat

end

end A304133.P10770127991480664748

/-! ## A304133.P11045040597807387484

`A305482(n+1)-A184159(A099594(n))`
-/

namespace A304133.P11045040597807387484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (n + 1) - A184159 (A099594 n).toNat

end

end A304133.P11045040597807387484

/-! ## A304133.P14334453976900870004

`A305482(n+1)-A163510(A157273(n))`
-/

namespace A304133.P14334453976900870004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (n + 1) - A163510 (A157273 n).toNat

end

end A304133.P14334453976900870004

/-! ## A304133.P4016681339519373044

`A072088(A303682(n+1)%A270613(2*n+3))`
-/

namespace A304133.P4016681339519373044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (Int.tmod (A303682 (n + 1)) (A270613 (2 * n + 3))).toNat

end

end A304133.P4016681339519373044

/-!
# A304134: Number of partitions of 5n into exactly n parts.

The programs for A304134, there is no canonical definition to state claims against.
-/

/-! ## A304134.P15807055637248583047

`A008284(A153785(n)+A008458(n))`
-/

namespace A304134.P15807055637248583047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A153785 n + A008458 n).toNat

end

end A304134.P15807055637248583047

/-! ## A304134.P15588051660573110827

`A058400(A058331(2*n)+n)`
-/

namespace A304134.P15588051660573110827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058400 (A058331 (2 * n) + (n : ℤ)).toNat

end

end A304134.P15588051660573110827

/-! ## A304134.P172192972089848536

`A026820(A014635(n)+round(sqrt(n²+1)))`
-/

namespace A304134.P172192972089848536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A014635 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A304134.P172192972089848536

/-! ## A304134.P6586599544133935913

`A026820(A038722(n*(8*n+1)+1))`
-/

namespace A304134.P6586599544133935913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A038722 (n * (8 * n + 1) + 1)).toNat

end

end A304134.P6586599544133935913

/-! ## A304134.P17940000384226916672

`A026820(A139274(A000007(n)+n))`
-/

namespace A304134.P17940000384226916672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A139274 (A000007 n + (n : ℤ)).toNat).toNat

end

end A304134.P17940000384226916672

/-!
# A304135: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304135, there is no canonical definition to state claims against.
-/

/-! ## A304135.P16444736385091111000

`A304141(∑[4*n]+1)`
-/

namespace A304135.P16444736385091111000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304135.P16444736385091111000

/-! ## A304135.P8475182798528345412

`and(-1, A304141(A001844(n)))`
-/

namespace A304135.P8475182798528345412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304141 (A001844 n).toNat)

end

end A304135.P8475182798528345412

/-! ## A304135.P16934570825594443507

`A304141(A001844(n))+A025439(n)`
-/

namespace A304135.P16934570825594443507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A001844 n).toNat + A025439 n

end

end A304135.P16934570825594443507

/-! ## A304135.P12201132755019884364

`A304141(A001844(n))+A025442(n)`
-/

namespace A304135.P12201132755019884364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A001844 n).toNat + A025442 n

end

end A304135.P12201132755019884364

/-! ## A304135.P17937381444388816249

`A304141(A001844(n))+A065718(n)`
-/

namespace A304135.P17937381444388816249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A001844 n).toNat + A065718 n

end

end A304135.P17937381444388816249

/-!
# A304136: Number of n X 3 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304136, there is no canonical definition to state claims against.
-/

/-! ## A304136.P8568624156509607752

`A304141(∑[n+2]+4)`
-/

namespace A304136.P8568624156509607752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304136.P8568624156509607752

/-! ## A304136.P11222945205574031275

`and(-1, A304141(A167614(n+1)))`
-/

namespace A304136.P11222945205574031275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304141 (A167614 (n + 1)).toNat)

end

end A304136.P11222945205574031275

/-! ## A304136.P15279201235012626462

`A304141(A167614(n+1))+A025469(n)`
-/

namespace A304136.P15279201235012626462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A167614 (n + 1)).toNat + A025469 n

end

end A304136.P15279201235012626462

/-! ## A304136.P734565920316940182

`A304141(A167614(n+1))+A185238(n)`
-/

namespace A304136.P734565920316940182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A167614 (n + 1)).toNat + A185238 n

end

end A304136.P734565920316940182

/-! ## A304136.P3252006752079624413

`A304141(A167614(n+1))%A118372(n+1)`
-/

namespace A304136.P3252006752079624413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304141 (A167614 (n + 1)).toNat) (A118372 (n + 1))

end

end A304136.P3252006752079624413

/-!
# A304137: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304137, the canonical program `A304137.P4888076965709298098` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304137 has offset 1).

The definition of A304137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304137.P4888076965709298098

`2*a(n-1)+2*a(n-3)-6*a(n-4)+3*a(n-6)` with `a(0)=1, a(1)=13, a(2)=9, a(3)=11, a(4)=20, a(5)=17, a(6)=25, a(7)=62, a(8)=59, a(9)=93`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304137

/-- `2*a(n-1)+2*a(n-3)-6*a(n-4)+3*a(n-6)` -/
def P4888076965709298098.Spec : Prop :=
  ∀ n, P4888076965709298098.a n = A304137 (n + 1)

theorem P4888076965709298098.correct : P4888076965709298098.Spec := by
  intro n
  simp only [A304137, Nat.add_sub_cancel]

end A304137

/-! ## A304137.P3887355795234088749

`A304141(∑[n+3]+7)`
-/

namespace A304137.P3887355795234088749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304137.P3887355795234088749

namespace A304137

/-- `A304141(∑[n+3]+7)` -/
def P3887355795234088749.Spec : Prop :=
  ∀ n, P3887355795234088749.a n = A304137 (n + 1)

end A304137

/-! ## A304137.P10457003256454963092

`or(char[1], A304141(A052905(n)+9))`
-/

namespace A304137.P10457003256454963092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304141 (A052905 n + 9).toNat)

end

end A304137.P10457003256454963092

namespace A304137

/-- `or(char[1], A304141(A052905(n)+9))` -/
def P10457003256454963092.Spec : Prop :=
  ∀ n, P10457003256454963092.a n = A304137 (n + 1)

end A304137

/-! ## A304137.P9304197645626658269

`or(char[1], A304141(A167614(n+2)+1))`
-/

namespace A304137.P9304197645626658269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304141 (A167614 (n + 2) + 1).toNat)

end

end A304137.P9304197645626658269

namespace A304137

/-- `or(char[1], A304141(A167614(n+2)+1))` -/
def P9304197645626658269.Spec : Prop :=
  ∀ n, P9304197645626658269.a n = A304137 (n + 1)

end A304137

/-! ## A304137.P1648294615542659433

`A304141(A052905(n)+9)%A000032(n+7)`
-/

namespace A304137.P1648294615542659433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304141 (A052905 n + 9).toNat) (A000032 (n + 7))

end

end A304137.P1648294615542659433

namespace A304137

/-- `A304141(A052905(n)+9)%A000032(n+7)` -/
def P1648294615542659433.Spec : Prop :=
  ∀ n, P1648294615542659433.a n = A304137 (n + 1)

end A304137

/-!
# A304138: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304138, there is no canonical definition to state claims against.
-/

/-! ## A304138.P5255801187653479758

`A304141(A374005(n+1))`
-/

namespace A304138.P5255801187653479758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A374005 (n + 1)).toNat

end

end A304138.P5255801187653479758

/-! ## A304138.P15978179971151949204

`A304141(A167499(n+3))`
-/

namespace A304138.P15978179971151949204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A167499 (n + 3)).toNat

end

end A304138.P15978179971151949204

/-! ## A304138.P12562508228584046114

`A304141(A155212(n)+13)`
-/

namespace A304138.P12562508228584046114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A155212 n + 13).toNat

end

end A304138.P12562508228584046114

/-! ## A304138.P16432799370395708981

`A304141(A056000(n)+15)`
-/

namespace A304138.P16432799370395708981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A056000 n + 15).toNat

end

end A304138.P16432799370395708981

/-! ## A304138.P12132321566534186857

`A304141(eq[7, A066657(n)])`
-/

namespace A304138.P12132321566534186857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304138.P12132321566534186857

/-!
# A304139: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304139, there is no canonical definition to state claims against.
-/

/-! ## A304139.P1004736361270883281

`A304141(A374007(n+1))`
-/

namespace A304139.P1004736361270883281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A374007 (n + 1)).toNat

end

end A304139.P1004736361270883281

/-! ## A304139.P13572384423665648795

`A304141(A056115(n)+21)`
-/

namespace A304139.P13572384423665648795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A056115 n + 21).toNat

end

end A304139.P13572384423665648795

/-! ## A304139.P455554869871849918

`A304141(A167499(n+4)+1)`
-/

namespace A304139.P455554869871849918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A167499 (n + 4) + 1).toNat

end

end A304139.P455554869871849918

/-! ## A304139.P12082706261574716991

`A304141(A167614(n+4)+3)`
-/

namespace A304139.P12082706261574716991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A167614 (n + 4) + 3).toNat

end

end A304139.P12082706261574716991

/-! ## A304139.P6435787598656822160

`A304141(A000124(n+5)+5)`
-/

namespace A304139.P6435787598656822160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A000124 (n + 5) + 5).toNat

end

end A304139.P6435787598656822160

/-!
# A304140: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304140, there is no canonical definition to state claims against.
-/

/-! ## A304140.P15009994868188014217

`A304141(A374008(n+1))`
-/

namespace A304140.P15009994868188014217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A374008 (n + 1)).toNat

end

end A304140.P15009994868188014217

/-! ## A304140.P4408429864280036914

`A304141(A056119(n)+28)`
-/

namespace A304140.P4408429864280036914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A056119 n + 28).toNat

end

end A304140.P4408429864280036914

/-! ## A304140.P15656697826964069323

`A304141(A166136(n+5)+1)`
-/

namespace A304140.P15656697826964069323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A166136 (n + 5) + 1).toNat

end

end A304140.P15656697826964069323

/-! ## A304140.P6237670266042737650

`A304141(A000124(n+6)+6)`
-/

namespace A304140.P6237670266042737650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A000124 (n + 6) + 6).toNat

end

end A304140.P6237670266042737650

/-! ## A304140.P7879439369064321526

`A304141(A000096(n+5)+8)`
-/

namespace A304140.P7879439369064321526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A000096 (n + 5) + 8).toNat

end

end A304140.P7879439369064321526

/-!
# A304141: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304141, there is no canonical definition to state claims against.
-/

/-! ## A304141.P4973938057799532310

`A305047(n+1)-A230135(A305047(n+1))`
-/

namespace A304141.P4973938057799532310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (n + 1) - A230135 (A305047 (n + 1)).toNat

end

end A304141.P4973938057799532310

/-! ## A304141.P1738119015900356439

`A316733(n+1)-A230135(A316733(n+1))`
-/

namespace A304141.P1738119015900356439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) - A230135 (A316733 (n + 1)).toNat

end

end A304141.P1738119015900356439

/-!
# A304142: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304142, there is no canonical definition to state claims against.
-/

/-! ## A304142.P8292363431221422670

`A304149(∑[4*n]+1)`
-/

namespace A304142.P8292363431221422670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304142.P8292363431221422670

/-! ## A304142.P12618422029076684754

`A304149(A001844(n))+char[12]`
-/

namespace A304142.P12618422029076684754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304142.P12618422029076684754

/-! ## A304142.P14679111614869932741

`A057427(n)*A304149(A001844(n))`
-/

namespace A304142.P14679111614869932741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A304149 (A001844 n).toNat

end

end A304142.P14679111614869932741

/-! ## A304142.P17953547026170516086

`A304149(A001844(n))*A332649(n)`
-/

namespace A304142.P17953547026170516086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A001844 n).toNat * A332649 n

end

end A304142.P17953547026170516086

/-! ## A304142.P8072602585525088693

`A304149(A001844(n))%A084482(n+1)`
-/

namespace A304142.P8072602585525088693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304149 (A001844 n).toNat) (A084482 (n + 1))

end

end A304142.P8072602585525088693

/-!
# A304143: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304143, the canonical program `A304143.P16625252342008015632` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304143 has offset 1).

The definition of A304143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304143.P16625252342008015632

`A297860(n+3)+A171449(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304143

/-- `A297860(n+3)+A171449(n)` -/
def P16625252342008015632.Spec : Prop :=
  ∀ n, P16625252342008015632.a n = A304143 (n + 1)

theorem P16625252342008015632.correct : P16625252342008015632.Spec := by
  intro n
  simp only [A304143, Nat.add_sub_cancel]

end A304143

/-! ## A304143.P8220976297529200169

`A304149(∑[n+1]+2)`
-/

namespace A304143.P8220976297529200169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304143.P8220976297529200169

namespace A304143

/-- `A304149(∑[n+1]+2)` -/
def P8220976297529200169.Spec : Prop :=
  ∀ n, P8220976297529200169.a n = A304143 (n + 1)

end A304143

/-! ## A304143.P5158057000517208567

`record[A010054(n)*A304149(n+2)]`
-/

namespace A304143.P5158057000517208567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304143.P5158057000517208567

namespace A304143

/-- `record[A010054(n)*A304149(n+2)]` -/
def P5158057000517208567.Spec : Prop :=
  ∀ n, P5158057000517208567.a n = A304143 (n + 1)

end A304143

/-! ## A304143.P2915617477343185894

`record[A103451(n)*A304149(n+2)]`
-/

namespace A304143.P2915617477343185894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A304149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304143.P2915617477343185894

namespace A304143

/-- `record[A103451(n)*A304149(n+2)]` -/
def P2915617477343185894.Spec : Prop :=
  ∀ n, P2915617477343185894.a n = A304143 (n + 1)

end A304143

/-! ## A304143.P6313904150453844282

`record[A304149(n+2)/A007318(n)]`
-/

namespace A304143.P6313904150453844282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304149 (n + 2) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304143.P6313904150453844282

namespace A304143

/-- `record[A304149(n+2)/A007318(n)]` -/
def P6313904150453844282.Spec : Prop :=
  ∀ n, P6313904150453844282.a n = (A304143 (n + 1) : ℚ)

end A304143

/-!
# A304144: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304144, there is no canonical definition to state claims against.
-/

/-! ## A304144.P18388586185037897268

`A304149(∑[n+2]+4)`
-/

namespace A304144.P18388586185037897268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304144.P18388586185037897268

/-! ## A304144.P5264538097688013516

`or(char[3], A304149(A167614(n+1)))`
-/

namespace A304144.P5264538097688013516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304149 (A167614 (n + 1)).toNat)

end

end A304144.P5264538097688013516

/-! ## A304144.P8666255671205913139

`record[gcd(A292795(n), A304149(n+4))]`
-/

namespace A304144.P8666255671205913139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292795 n) (A304149 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304144.P8666255671205913139

/-! ## A304144.P14503345308321395985

`A304149(A167614(n+1))+A243832(n)`
-/

namespace A304144.P14503345308321395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A167614 (n + 1)).toNat + A243832 n

end

end A304144.P14503345308321395985

/-! ## A304144.P2900091771633483176

`A304149(A167614(n+1))%A291016(n)`
-/

namespace A304144.P2900091771633483176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304149 (A167614 (n + 1)).toNat) (A291016 n)

end

end A304144.P2900091771633483176

/-!
# A304145: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304145, there is no canonical definition to state claims against.
-/

/-! ## A304145.P6607931440518358760

`A304149(∑[n+3]+7)`
-/

namespace A304145.P6607931440518358760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304145.P6607931440518358760

/-! ## A304145.P1612787799793031713

`A304149(A052905(n)+9)+char[20]`
-/

namespace A304145.P1612787799793031713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304145.P1612787799793031713

/-! ## A304145.P14208061427818021485

`A304149(A167614(n+2)+1)+char[41]`
-/

namespace A304145.P14208061427818021485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304145.P14208061427818021485

/-! ## A304145.P11763476419086226118

`∏{p}[n, A001221(#)]*A304149(A052905(n)+9)`
-/

namespace A304145.P11763476419086226118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A304149 (A052905 n + 9).toNat

end

end A304145.P11763476419086226118

/-! ## A304145.P8077408251564790048

`A007318(C(2, n²))*A304149(A052905(n)+9)`
-/

namespace A304145.P8077408251564790048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n ^ 2)) * A304149 (A052905 n + 9).toNat

end

end A304145.P8077408251564790048

/-!
# A304146: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304146, there is no canonical definition to state claims against.
-/

/-! ## A304146.P15167464680044189848

`A304149(∑[n+3]+n+12)`
-/

namespace A304146.P15167464680044189848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A304146.P15167464680044189848

/-! ## A304146.P16392130403536370813

`A057427(Δ[n²])*A304149(A056000(n)+15)`
-/

namespace A304146.P16392130403536370813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A304149 (A056000 n + 15).toNat

end

end A304146.P16392130403536370813

/-! ## A304146.P8149284860686774886

`A304149(A374005(n+1))%A147655(3*(n+1))`
-/

namespace A304146.P8149284860686774886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304149 (A374005 (n + 1)).toNat) (A147655 (3 * (n + 1)))

end

end A304146.P8149284860686774886

/-! ## A304146.P16027027808056663025

`A304149(Δ[A008778(n+1)]+7)%A304148(n+1)`
-/

namespace A304146.P16027027808056663025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304149 (f1 (n + 1) - f1 n + 7).toNat) (A304148 (n + 1))

end

end A304146.P16027027808056663025

/-! ## A304146.P78556350390334518

`A304149(A374005(n+1))%A316740(A374008(n+1))`
-/

namespace A304146.P78556350390334518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304149 (A374005 (n + 1)).toNat) (A316740 (A374008 (n + 1)).toNat)

end

end A304146.P78556350390334518

/-!
# A304147: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304147, there is no canonical definition to state claims against.
-/

/-! ## A304147.P1584955624418129876

`A304149(∑[n+5]+16)`
-/

namespace A304147.P1584955624418129876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304147.P1584955624418129876

/-! ## A304147.P16505393874100196929

`A326291(n+1)+A304149(A374007(n+1))`
-/

namespace A304147.P16505393874100196929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A304149 (A374007 (n + 1)).toNat

end

end A304147.P16505393874100196929

/-! ## A304147.P3587386664778080229

`A304149(A374007(n+1))%A134245(n+5)`
-/

namespace A304147.P3587386664778080229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304149 (A374007 (n + 1)).toNat) (A134245 (n + 5))

end

end A304147.P3587386664778080229

/-! ## A304147.P12631528353836764663

`or(A186718(2*n+1), A304149(A374007(n+1)))`
-/

namespace A304147.P12631528353836764663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186718 (2 * n + 1)) (A304149 (A374007 (n + 1)).toNat)

end

end A304147.P12631528353836764663

/-! ## A304147.P8843605529124267260

`A304149(A052905(n+3))+char[20]`
-/

namespace A304147.P8843605529124267260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A052905 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304147.P8843605529124267260

/-!
# A304148: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304148, there is no canonical definition to state claims against.
-/

/-! ## A304148.P17290600110518091344

`A304149(A374008(n+1))`
-/

namespace A304148.P17290600110518091344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A374008 (n + 1)).toNat

end

end A304148.P17290600110518091344

/-! ## A304148.P2273380569072309150

`A304149(A167487(n+5))`
-/

namespace A304148.P2273380569072309150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A167487 (n + 5)).toNat

end

end A304148.P2273380569072309150

/-! ## A304148.P3852864935245129863

`A304149(A056119(n)+28)`
-/

namespace A304148.P3852864935245129863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A056119 n + 28).toNat

end

end A304148.P3852864935245129863

/-! ## A304148.P108969103802479645

`A304149(eq[11, A066657(n)])`
-/

namespace A304148.P108969103802479645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304148.P108969103802479645

/-! ## A304148.P14331507727711751327

`A304149(A166136(n+5)+1)`
-/

namespace A304148.P14331507727711751327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (A166136 (n + 5) + 1).toNat

end

end A304148.P14331507727711751327

/-!
# A304149: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304149, there is no canonical definition to state claims against.
-/

/-! ## A304149.P412612075163692148

`A305489(n+1)-A037800(A188910(n+1))`
-/

namespace A304149.P412612075163692148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (n + 1) - A037800 (A188910 (n + 1)).toNat

end

end A304149.P412612075163692148

/-! ## A304149.P13088058922710584615

`A305489(n+1)-A037800(A189111(n+1))`
-/

namespace A304149.P13088058922710584615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (n + 1) - A037800 (A189111 (n + 1)).toNat

end

end A304149.P13088058922710584615

/-! ## A304149.P13237736147513904062

`A305489(n+1)-A045698(A000071(n+4))`
-/

namespace A304149.P13237736147513904062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (n + 1) - A045698 (A000071 (n + 4)).toNat

end

end A304149.P13237736147513904062

/-! ## A304149.P2004149625150120578

`A305489(n+1)-A181153(A350970(n))`
-/

namespace A304149.P2004149625150120578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (n + 1) - A181153 (A350970 n).toNat

end

end A304149.P2004149625150120578

/-! ## A304149.P2724458840014899819

`A305489(n+1)-A295659(A045690(n+3))`
-/

namespace A304149.P2724458840014899819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (n + 1) - A295659 (A045690 (n + 3)).toNat

end

end A304149.P2724458840014899819

/-!
# A304150: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304150, there is no canonical definition to state claims against.
-/

/-! ## A304150.P8156067471676989510

`A304156(∑[4*n]+1)`
-/

namespace A304150.P8156067471676989510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304150.P8156067471676989510

/-! ## A304150.P15311597826409839185

`record[A304156(A272267(n+1))]`
-/

namespace A304150.P15311597826409839185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304150.P15311597826409839185

/-! ## A304150.P7869636147469219581

`A304156(A001844(n))+char[9]`
-/

namespace A304150.P7869636147469219581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304150.P7869636147469219581

/-! ## A304150.P11973035039579467549

`record[A304156(A001844(val(n+1, 2)))]`
-/

namespace A304150.P11973035039579467549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304150.P11973035039579467549

/-! ## A304150.P13947534666771726541

`A036225(n)*A304156(A001844(n))`
-/

namespace A304150.P13947534666771726541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A304156 (A001844 n).toNat

end

end A304150.P13947534666771726541

/-!
# A304151: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304151, there is no canonical definition to state claims against.
-/

/-! ## A304151.P9753014973202741269

`A304156(∑[n+2]+4)`
-/

namespace A304151.P9753014973202741269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304151.P9753014973202741269

/-! ## A304151.P4103821788470618538

`A305509(∑[n+2]+4)`
-/

namespace A304151.P4103821788470618538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304151.P4103821788470618538

/-! ## A304151.P6304806793947872825

`A304156(A167614(n+1))+char[20]`
-/

namespace A304151.P6304806793947872825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304151.P6304806793947872825

/-! ## A304151.P12105217502165816506

`A304156(A034856(n+1)+5)+char[18]`
-/

namespace A304151.P12105217502165816506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304151.P12105217502165816506

/-! ## A304151.P13149740281217550096

`A305509(A167614(n+1))+A025469(n)`
-/

namespace A304151.P13149740281217550096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A167614 (n + 1)).toNat + A025469 n

end

end A304151.P13149740281217550096

/-!
# A304152: Number of n X 4 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304152, there is no canonical definition to state claims against.
-/

/-! ## A304152.P13989738841463468083

`A304156(∑[n+3]+7)`
-/

namespace A304152.P13989738841463468083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304152.P13989738841463468083

/-! ## A304152.P10258029834751244969

`A305509(∑[n+3]+7)`
-/

namespace A304152.P10258029834751244969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304152.P10258029834751244969

/-! ## A304152.P3074210324007053085

`A304156(A000217(n+3)+4)+char[18]`
-/

namespace A304152.P3074210324007053085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304152.P3074210324007053085

/-! ## A304152.P9306079654864672262

`A000040(n+1)%2*A304156(A000217(n+3)+4)`
-/

namespace A304152.P9306079654864672262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A304156 (A000217 (n + 3) + 4).toNat

end

end A304152.P9306079654864672262

/-! ## A304152.P1822361800208703076

`A000041(C(2, n+2))*A304156(A000217(n+3)+4)`
-/

namespace A304152.P1822361800208703076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A304156 (A000217 (n + 3) + 4).toNat

end

end A304152.P1822361800208703076

/-!
# A304153: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304153, there is no canonical definition to state claims against.
-/

/-! ## A304153.P8989475667702310489

`A304156(A374005(n+1))`
-/

namespace A304153.P8989475667702310489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A374005 (n + 1)).toNat

end

end A304153.P8989475667702310489

/-! ## A304153.P4091789285621008931

`A304156(A167499(n+3))`
-/

namespace A304153.P4091789285621008931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A167499 (n + 3)).toNat

end

end A304153.P4091789285621008931

/-! ## A304153.P12568812366751183690

`A304156(A155212(n)+13)`
-/

namespace A304153.P12568812366751183690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A155212 n + 13).toNat

end

end A304153.P12568812366751183690

/-! ## A304153.P2803689211255010548

`A304156(A056000(n)+15)`
-/

namespace A304153.P2803689211255010548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A056000 n + 15).toNat

end

end A304153.P2803689211255010548

/-! ## A304153.P6050218395706339821

`A304156(eq[7, A066657(n)])`
-/

namespace A304153.P6050218395706339821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304153.P6050218395706339821

/-!
# A304154: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304154, there is no canonical definition to state claims against.
-/

/-! ## A304154.P14445437619317815517

`A304156(A374007(n+1))`
-/

namespace A304154.P14445437619317815517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A374007 (n + 1)).toNat

end

end A304154.P14445437619317815517

/-! ## A304154.P5597341847493252894

`A304156(eq[6, A256910(n)])`
-/

namespace A304154.P5597341847493252894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304154.P5597341847493252894

/-! ## A304154.P2151733087952010909

`A304156(A134869(n+5)+5)`
-/

namespace A304154.P2151733087952010909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A134869 (n + 5) + 5).toNat

end

end A304154.P2151733087952010909

/-! ## A304154.P2048773673345634542

`A304156(A161680(n+6)+6)`
-/

namespace A304154.P2048773673345634542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A161680 (n + 6) + 6).toNat

end

end A304154.P2048773673345634542

/-! ## A304154.P7229449450433332686

`A304156(A052905(n+2)+11)`
-/

namespace A304154.P7229449450433332686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A052905 (n + 2) + 11).toNat

end

end A304154.P7229449450433332686

/-!
# A304155: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304155, there is no canonical definition to state claims against.
-/

/-! ## A304155.P3842098586166575907

`A304156(A374008(n+1))`
-/

namespace A304155.P3842098586166575907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A374008 (n + 1)).toNat

end

end A304155.P3842098586166575907

/-! ## A304155.P2625759748366328855

`A304156(A167487(n+5))`
-/

namespace A304155.P2625759748366328855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A167487 (n + 5)).toNat

end

end A304155.P2625759748366328855

/-! ## A304155.P5407299886199303698

`A304156(A056119(n)+28)`
-/

namespace A304155.P5407299886199303698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A056119 n + 28).toNat

end

end A304155.P5407299886199303698

/-! ## A304155.P3539654046763490211

`A304156(eq[11, A066657(n)])`
-/

namespace A304155.P3539654046763490211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304155.P3539654046763490211

/-! ## A304155.P13373422205805668508

`A304156(A167499(n+5)+2)`
-/

namespace A304155.P13373422205805668508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304156 (A167499 (n + 5) + 2).toNat

end

end A304155.P13373422205805668508

/-!
# A304156: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A304156, there is no canonical definition to state claims against.
-/

/-! ## A304156.P4782271073515338595

`A305509(n+1)%∑{d}[2^floor(n/2), #]`
-/

namespace A304156.P4782271073515338595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305509 (n + 1)) ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ)

end

end A304156.P4782271073515338595

/-! ## A304156.P16959875801932269390

`A305509(∑[A010894(n)!])`
-/

namespace A304156.P16959875801932269390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304156.P16959875801932269390

/-! ## A304156.P17117000484544248153

`A305509(A010894(n)!+n)`
-/

namespace A304156.P17117000484544248153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A304156.P17117000484544248153

/-! ## A304156.P13820799972798322830

`A305509(n+1)%A007825(n)`
-/

namespace A304156.P13820799972798322830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305509 (n + 1)) (A007825 n)

end

end A304156.P13820799972798322830

/-! ## A304156.P18323036314771802912

`A305509(n+1)^(C(A010894(n), 2)+1)`
-/

namespace A304156.P18323036314771802912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (n + 1) ^ (Nat.choose (A010894 (n + 21)).toNat 2 + 1)

end

end A304156.P18323036314771802912

/-!
# A304157: a(n) is the first Zagreb index of the linear phenylene G[n], defined pictorially in the Darafsheh reference.

The programs for A304157, the canonical program `A304157.P9913014979865334882` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304157 has offset 1).

The definition of A304157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304157.P9913014979865334882

`44*(n+1)-20`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304157

/-- `44*(n+1)-20` -/
def P9913014979865334882.Spec : Prop :=
  ∀ n, P9913014979865334882.a n = A304157 (n + 1)

theorem P9913014979865334882.correct : P9913014979865334882.Spec := by
  intro n
  simp only [A304157, Nat.add_sub_cancel]

end A304157

/-!
# A304158: a(n) is the second Zagreb index of the linear phenylene G[n], defined pictorially in the Darafsheh reference (Fig. 3).

The programs for A304158, the canonical program `A304158.P6951445338957783995` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304158 has offset 1).

The definition of A304158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304158.P6951445338957783995

`60*(n+1)-36`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304158

/-- `60*(n+1)-36` -/
def P6951445338957783995.Spec : Prop :=
  ∀ n, P6951445338957783995.a n = A304158 (n + 1)

theorem P6951445338957783995.correct : P6951445338957783995.Spec := by
  intro n
  simp only [A304158, Nat.add_sub_cancel]

end A304158

/-!
# A304159: a(n) = 2*n^3 - 4*n^2 + 6*n - 2 (n>=1).

The programs for A304159, the canonical program `A304159.P11492822921262313000` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304159 has offset 1).

The definition of A304159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)^3-4*(n+1)²+6*(n+1)-2` (program `A304159.P11492822921262313000`, by `A304159.P11492822921262313000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304159.P11492822921262313000

`2*(n+1)^3-4*(n+1)²+6*(n+1)-2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304159

/-- `2*(n+1)^3-4*(n+1)²+6*(n+1)-2` -/
def P11492822921262313000.Spec : Prop :=
  ∀ n, P11492822921262313000.a n = A304159 (n + 1)

theorem P11492822921262313000.correct : P11492822921262313000.Spec := by
  intro n
  simp only [A304159, Nat.add_sub_cancel]

end A304159

/-! ## A304159.P16942130451244427703

`2*A100705(n)`
-/

namespace A304159.P16942130451244427703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100705 n

end

end A304159.P16942130451244427703

namespace A304159

/-- `2*A100705(n)` -/
def P16942130451244427703.Spec : Prop :=
  ∀ n, P16942130451244427703.a n = A304159 (n + 1)

end A304159

/-! ## A304159.P964955408277159489

`lcm(2, n^3+(n+1)²)`
-/

namespace A304159.P964955408277159489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 3 + (n + 1) ^ 2)

end

end A304159.P964955408277159489

namespace A304159

/-- `lcm(2, n^3+(n+1)²)` -/
def P964955408277159489.Spec : Prop :=
  ∀ n, (P964955408277159489.a n : ℤ) = A304159 (n + 1)

end A304159

/-! ## A304159.P12074363500575972459

`or(2, 4*n*(∑[n]+1))`
-/

namespace A304159.P12074363500575972459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * (n * (∑ j ∈ Finset.range (n + 1), f1 j + 1)))

end

end A304159.P12074363500575972459

namespace A304159

/-- `or(2, 4*n*(∑[n]+1))` -/
def P12074363500575972459.Spec : Prop :=
  ∀ n, (P12074363500575972459.a n : ℤ) = A304159 (n + 1)

end A304159

/-! ## A304159.P2379374137844330817

`xor(2, (∑[n]+1)*4*n)`
-/

namespace A304159.P2379374137844330817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (4 * n))

end

end A304159.P2379374137844330817

namespace A304159

/-- `xor(2, (∑[n]+1)*4*n)` -/
def P2379374137844330817.Spec : Prop :=
  ∀ n, (P2379374137844330817.a n : ℤ) = A304159 (n + 1)

end A304159

/-! ## A304159.P1252754608426793320

`∑[2*(A005918(n)-n)]`
-/

namespace A304159.P1252754608426793320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005918 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304159.P1252754608426793320

namespace A304159

/-- `∑[2*(A005918(n)-n)]` -/
def P1252754608426793320.Spec : Prop :=
  ∀ n, P1252754608426793320.a n = A304159 (n + 1)

end A304159

/-!
# A304160: a(n) = n^4 - 3*n^3 + 6*n^2 - 5*n + 2 (n >= 1).

The programs for A304160, the canonical program `A304160.P1434691264105739224` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304160 has offset 1).

The definition of A304160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-3*(n+1)^3+6*(n+1)²-5*(n+1)+2` (program `A304160.P1434691264105739224`, by `A304160.P1434691264105739224.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304160.P1434691264105739224

`(n+1)^4-3*(n+1)^3+6*(n+1)²-5*(n+1)+2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304160

/-- `(n+1)^4-3*(n+1)^3+6*(n+1)²-5*(n+1)+2` -/
def P1434691264105739224.Spec : Prop :=
  ∀ n, P1434691264105739224.a n = A304160 (n + 1)

theorem P1434691264105739224.correct : P1434691264105739224.Spec := by
  intro n
  simp only [A304160, Nat.add_sub_cancel]

end A304160

/-! ## A304160.P14018537826534416134

`abs(A027444(n)-A072025(n))`
-/

namespace A304160.P14018537826534416134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027444 n - A072025 n|

end

end A304160.P14018537826534416134

namespace A304160

/-- `abs(A027444(n)-A072025(n))` -/
def P14018537826534416134.Spec : Prop :=
  ∀ n, P14018537826534416134.a n = A304160 (n + 1)

end A304160

/-! ## A304160.P5323449427867493722

`abs(A128091(n+1)-A045991(n))`
-/

namespace A304160.P5323449427867493722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128091 (n + 1) - A045991 n|

end

end A304160.P5323449427867493722

namespace A304160

/-- `abs(A128091(n+1)-A045991(n))` -/
def P5323449427867493722.Spec : Prop :=
  ∀ n, P5323449427867493722.a n = A304160 (n + 1)

end A304160

/-! ## A304160.P1985943117255068426

`abs(A002061(n+1)²-A000578(n))`
-/

namespace A304160.P1985943117255068426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002061 (n + 1) ^ 2 - A000578 n|

end

end A304160.P1985943117255068426

namespace A304160

/-- `abs(A002061(n+1)²-A000578(n))` -/
def P1985943117255068426.Spec : Prop :=
  ∀ n, P1985943117255068426.a n = A304160 (n + 1)

end A304160

/-! ## A304160.P15234918760072587290

`Δ[∑[A100606(n)]-A071253(n)]`
-/

namespace A304160.P15234918760072587290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100606 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A071253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304160.P15234918760072587290

namespace A304160

/-- `Δ[∑[A100606(n)]-A071253(n)]` -/
def P15234918760072587290.Spec : Prop :=
  ∀ n, P15234918760072587290.a n = A304160 (n + 1)

end A304160

/-! ## A304160.P1435684080619641790

`(A128091(n+1)-A045991(n))/A178334(A190572(n+1))`
-/

namespace A304160.P1435684080619641790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128091 (n + 1) - A045991 n : ℚ) / (A178334 (A190572 (n + 1)).toNat : ℚ)

end

end A304160.P1435684080619641790

namespace A304160

/-- `(A128091(n+1)-A045991(n))/A178334(A190572(n+1))` -/
def P1435684080619641790.Spec : Prop :=
  ∀ n, P1435684080619641790.a n = (A304160 (n + 1) : ℚ)

end A304160

/-!
# A304161: a(n) = 2*n^3 - 4*n^2 + 10*n - 2 (n>=1).

The programs for A304161, the canonical program `A304161.P5729332154079171390` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304161 has offset 1).

The definition of A304161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)^3-4*(n+1)²+10*(n+1)-2` (program `A304161.P5729332154079171390`, by `A304161.P5729332154079171390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304161.P5729332154079171390

`2*(n+1)^3-4*(n+1)²+10*(n+1)-2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304161

/-- `2*(n+1)^3-4*(n+1)²+10*(n+1)-2` -/
def P5729332154079171390.Spec : Prop :=
  ∀ n, P5729332154079171390.a n = A304161 (n + 1)

theorem P5729332154079171390.correct : P5729332154079171390.Spec := by
  intro n
  simp only [A304161, Nat.add_sub_cancel]

end A304161

/-!
# A304162: a(n) = n^4 - 3*n^3 + 9*n^2 - 7*n + 5 (n>=1).

The programs for A304162, the canonical program `A304162.P17674494425025660569` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304162 has offset 1).

The definition of A304162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-3*(n+1)^3+9*(n+1)²-7*(n+1)+5` (program `A304162.P17674494425025660569`, by `A304162.P17674494425025660569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304162.P2328791636594097162

`(n+1)*n*((n+1)²-2*(n+1)+7)+5`
-/

namespace A304162.P2328791636594097162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * (((n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 7)) + 5

end

end A304162.P2328791636594097162

namespace A304162

/-- `(n+1)*n*((n+1)²-2*(n+1)+7)+5` -/
def P2328791636594097162.Spec : Prop :=
  ∀ n, P2328791636594097162.a n = A304162 (n + 1)

theorem P2328791636594097162.correct : P2328791636594097162.Spec := by
  intro n
  simp only [A304162, Nat.add_sub_cancel, A304162.P2328791636594097162.a, A304162.P17674494425025660569.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304162

/-! ## A304162.P17674494425025660569

`(n+1)^4-3*(n+1)^3+9*(n+1)²-7*(n+1)+5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304162

/-- `(n+1)^4-3*(n+1)^3+9*(n+1)²-7*(n+1)+5` -/
def P17674494425025660569.Spec : Prop :=
  ∀ n, P17674494425025660569.a n = A304162 (n + 1)

theorem P17674494425025660569.correct : P17674494425025660569.Spec := by
  intro n
  simp only [A304162, Nat.add_sub_cancel]

end A304162

/-! ## A304162.P2053670848149269644

`abs(A005492(n+4)+Δ[n²]+n^3)`
-/

namespace A304162.P2053670848149269644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005492 (n + 4) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 3 : ℤ))|

end

end A304162.P2053670848149269644

namespace A304162

/-- `abs(A005492(n+4)+Δ[n²]+n^3)` -/
def P2053670848149269644.Spec : Prop :=
  ∀ n, P2053670848149269644.a n = A304162 (n + 1)

end A304162

/-! ## A304162.P16444645099615570956

`or(1, A079908(n+1)+(n²+1)²+n²)`
-/

namespace A304162.P16444645099615570956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A079908 (n + 1) + ((n ^ 2 + 1) ^ 2 + n ^ 2 : ℤ))

end

end A304162.P16444645099615570956

namespace A304162

/-- `or(1, A079908(n+1)+(n²+1)²+n²)` -/
def P16444645099615570956.Spec : Prop :=
  ∀ n, P16444645099615570956.a n = A304162 (n + 1)

end A304162

/-! ## A304162.P12448656967197132032

`abs(A135859(n+1)+(n+1)^4+3-4*n^3)`
-/

namespace A304162.P12448656967197132032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135859 (n + 1) + (((n + 1) ^ 4 : ℤ) + (3 - (4 * n ^ 3 : ℤ)))|

end

end A304162.P12448656967197132032

namespace A304162

/-- `abs(A135859(n+1)+(n+1)^4+3-4*n^3)` -/
def P12448656967197132032.Spec : Prop :=
  ∀ n, P12448656967197132032.a n = A304162 (n + 1)

end A304162

/-!
# A304163: a(n) = 9*n^2 - 3*n + 1 with n>0.

The programs for A304163, the canonical program `A304163.P8672911586747893723` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304163 has offset 1).

The definition of A304163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²-3*(n+1)+1` (program `A304163.P8672911586747893723`, by `A304163.P8672911586747893723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304163.P8672911586747893723

`9*(n+1)²-3*(n+1)+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304163

/-- `9*(n+1)²-3*(n+1)+1` -/
def P8672911586747893723.Spec : Prop :=
  ∀ n, P8672911586747893723.a n = A304163 (n + 1)

theorem P8672911586747893723.correct : P8672911586747893723.Spec := by
  intro n
  simp only [A304163, Nat.add_sub_cancel]

end A304163

/-! ## A304163.P16423985646750310291

`∑[a(n-1)+18]` with `a(0)=7, a(1)=24`
-/

namespace A304163.P16423985646750310291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 24] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304163.P16423985646750310291

namespace A304163

/-- `∑[a(n-1)+18]` -/
def P16423985646750310291.Spec : Prop :=
  ∀ n, (P16423985646750310291.a n : ℤ) = A304163 (n + 1)

end A304163

/-! ## A304163.P2682789736220751270

`Δ[n*(6*C(n+1, 2)+1)]`
-/

namespace A304163.P2682789736220751270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * Nat.choose (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A304163.P2682789736220751270

namespace A304163

/-- `Δ[n*(6*C(n+1, 2)+1)]` -/
def P2682789736220751270.Spec : Prop :=
  ∀ n, P2682789736220751270.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P11312848314467538455

`ceil(A016970(n)/4)`
-/

namespace A304163.P11312848314467538455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016970 n : ℚ) / 4⌉

end

end A304163.P11312848314467538455

namespace A304163

/-- `ceil(A016970(n)/4)` -/
def P11312848314467538455.Spec : Prop :=
  ∀ n, P11312848314467538455.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P5029665827078031382

`∑[A063136(n+1)]`
-/

namespace A304163.P5029665827078031382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304163.P5029665827078031382

namespace A304163

/-- `∑[A063136(n+1)]` -/
def P5029665827078031382.Spec : Prop :=
  ∀ n, P5029665827078031382.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P1187026383916035095

`xor(1, A085001(n)+2)`
-/

namespace A304163.P1187026383916035095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A085001 n + 2)

end

end A304163.P1187026383916035095

namespace A304163

/-- `xor(1, A085001(n)+2)` -/
def P1187026383916035095.Spec : Prop :=
  ∀ n, P1187026383916035095.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P3338333415769054245

`ceil((A016969(n)/2)²)`
-/

namespace A304163.P3338333415769054245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A016969 n : ℚ) / 2) ^ 2⌉

end

end A304163.P3338333415769054245

namespace A304163

/-- `ceil((A016969(n)/2)²)` -/
def P3338333415769054245.Spec : Prop :=
  ∀ n, P3338333415769054245.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P9343303712847391886

`ceil(A298037(2*n+1)/2)`
-/

namespace A304163.P9343303712847391886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298037 (2 * n + 1) : ℚ) / 2⌉

end

end A304163.P9343303712847391886

namespace A304163

/-- `ceil(A298037(2*n+1)/2)` -/
def P9343303712847391886.Spec : Prop :=
  ∀ n, P9343303712847391886.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P5505740112617852924

`Δ[A249354(n)]`
-/

namespace A304163.P5505740112617852924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P5505740112617852924

namespace A304163

/-- `Δ[A249354(n)]` -/
def P5505740112617852924.Spec : Prop :=
  ∀ n, P5505740112617852924.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P11041514654444761785

`Δ[n*A003215(n)]`
-/

namespace A304163.P11041514654444761785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P11041514654444761785

namespace A304163

/-- `Δ[n*A003215(n)]` -/
def P11041514654444761785.Spec : Prop :=
  ∀ n, P11041514654444761785.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P819312583944890668

`Δ[A067389(n)+n²]`
-/

namespace A304163.P819312583944890668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P819312583944890668

namespace A304163

/-- `Δ[A067389(n)+n²]` -/
def P819312583944890668.Spec : Prop :=
  ∀ n, P819312583944890668.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P3141545980043296597

`Δ[A130884(n)+n²]`
-/

namespace A304163.P3141545980043296597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130884 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P3141545980043296597

namespace A304163

/-- `Δ[A130884(n)+n²]` -/
def P3141545980043296597.Spec : Prop :=
  ∀ n, P3141545980043296597.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P4103801013876722138

`Δ[A027903(n)-n²]`
-/

namespace A304163.P4103801013876722138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P4103801013876722138

namespace A304163

/-- `Δ[A027903(n)-n²]` -/
def P4103801013876722138.Spec : Prop :=
  ∀ n, P4103801013876722138.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P9581457744861535858

`Δ[n*∑[A008458(n)]]`
-/

namespace A304163.P9581457744861535858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P9581457744861535858

namespace A304163

/-- `Δ[n*∑[A008458(n)]]` -/
def P9581457744861535858.Spec : Prop :=
  ∀ n, P9581457744861535858.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P17683349813722286300

`Δ[n*Δ[A000578(n)]]`
-/

namespace A304163.P17683349813722286300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P17683349813722286300

namespace A304163

/-- `Δ[n*Δ[A000578(n)]]` -/
def P17683349813722286300.Spec : Prop :=
  ∀ n, P17683349813722286300.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P7366675860003393980

`Δ[n*A298125(n+2)]`
-/

namespace A304163.P7366675860003393980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A298125 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304163.P7366675860003393980

namespace A304163

/-- `Δ[n*A298125(n+2)]` -/
def P7366675860003393980.Spec : Prop :=
  ∀ n, P7366675860003393980.a n = A304163 (n + 1)

end A304163

/-! ## A304163.P14214509934375728920

`A298027(Δ[n²])`
-/

namespace A304163.P14214509934375728920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A304163.P14214509934375728920

namespace A304163

/-- `A298027(Δ[n²])` -/
def P14214509934375728920.Spec : Prop :=
  ∀ n, P14214509934375728920.a n = A304163 (n + 1)

end A304163

/-!
# A304164: a(n) = 27*n^2 - 21*n + 6 (n>=1).

The programs for A304164, the canonical program `A304164.P10733911914510998447` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304164 has offset 1).

The definition of A304164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*(n+1)²-21*(n+1)+6` (program `A304164.P10733911914510998447`, by `A304164.P10733911914510998447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304164.P10733911914510998447

`27*(n+1)²-21*(n+1)+6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304164

/-- `27*(n+1)²-21*(n+1)+6` -/
def P10733911914510998447.Spec : Prop :=
  ∀ n, P10733911914510998447.a n = A304164 (n + 1)

theorem P10733911914510998447.correct : P10733911914510998447.Spec := by
  intro n
  simp only [A304164, Nat.add_sub_cancel]

end A304164

/-! ## A304164.P8895354265777109069

`lcm(2, 3*((3*n+2)²-n))`
-/

namespace A304164.P8895354265777109069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * (((3 * n + 2) ^ 2 : ℤ) - (n : ℤ)))

end

end A304164.P8895354265777109069

namespace A304164

/-- `lcm(2, 3*((3*n+2)²-n))` -/
def P8895354265777109069.Spec : Prop :=
  ∀ n, (P8895354265777109069.a n : ℤ) = A304164 (n + 1)

end A304164

/-! ## A304164.P1047432620175942115

`3*(A154254(n+1)+n+1)`
-/

namespace A304164.P1047432620175942115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A154254 (n + 1) + (n + 1 : ℤ))

end

end A304164.P1047432620175942115

namespace A304164

/-- `3*(A154254(n+1)+n+1)` -/
def P1047432620175942115.Spec : Prop :=
  ∀ n, P1047432620175942115.a n = A304164 (n + 1)

end A304164

/-! ## A304164.P1567126284300511129

`3*(A185939(n+1)-(n+1))`
-/

namespace A304164.P1567126284300511129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A185939 (n + 1) - (n + 1 : ℤ))

end

end A304164.P1567126284300511129

namespace A304164

/-- `3*(A185939(n+1)-(n+1))` -/
def P1567126284300511129.Spec : Prop :=
  ∀ n, P1567126284300511129.a n = A304164 (n + 1)

end A304164

/-! ## A304164.P16105159313051554026

`abs(Δ[2*n*A000217(3*n)])`
-/

namespace A304164.P16105159313051554026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000217 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A304164.P16105159313051554026

namespace A304164

/-- `abs(Δ[2*n*A000217(3*n)])` -/
def P16105159313051554026.Spec : Prop :=
  ∀ n, P16105159313051554026.a n = A304164 (n + 1)

end A304164

/-! ## A304164.P1492110935823581985

`Δ[A087887(n)]/2`
-/

namespace A304164.P1492110935823581985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087887 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A304164.P1492110935823581985

namespace A304164

/-- `Δ[A087887(n)]/2` -/
def P1492110935823581985.Spec : Prop :=
  ∀ n, P1492110935823581985.a n = (A304164 (n + 1) : ℚ)

end A304164

/-! ## A304164.P12214626724550517216

`6*A117625(n+1)`
-/

namespace A304164.P12214626724550517216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A117625 (n + 1)

end

end A304164.P12214626724550517216

namespace A304164

/-- `6*A117625(n+1)` -/
def P12214626724550517216.Spec : Prop :=
  ∀ n, P12214626724550517216.a n = A304164 (n + 1)

end A304164

/-!
# A304165: a(n) = 324*n^2 - 336*n + 102 (n >= 1).

The programs for A304165, the canonical program `A304165.P6673393331140760876` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304165 has offset 1).

The definition of A304165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*(n+1)²-336*(n+1)+102` (program `A304165.P6673393331140760876`, by `A304165.P6673393331140760876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304165.P6673393331140760876

`324*(n+1)²-336*(n+1)+102`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304165

/-- `324*(n+1)²-336*(n+1)+102` -/
def P6673393331140760876.Spec : Prop :=
  ∀ n, P6673393331140760876.a n = A304165 (n + 1)

theorem P6673393331140760876.correct : P6673393331140760876.Spec := by
  intro n
  simp only [A304165, Nat.add_sub_cancel]

end A304165

/-!
# A304166: a(n) = 972*n^2 - 1224*n + 414 with n > 0.

The programs for A304166, the canonical program `A304166.P13045705159784561138` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304166 has offset 1).

The definition of A304166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304166.P13045705159784561138

`18*(54*(n+1)²-68*(n+1)+23)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304166

/-- `18*(54*(n+1)²-68*(n+1)+23)` -/
def P13045705159784561138.Spec : Prop :=
  ∀ n, P13045705159784561138.a n = A304166 (n + 1)

theorem P13045705159784561138.correct : P13045705159784561138.Spec := by
  intro n
  simp only [A304166, Nat.add_sub_cancel]

end A304166

/-! ## A304166.P16995378782916460427

`A014641(A017197(n))+29`
-/

namespace A304166.P16995378782916460427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 (A017197 n).toNat + 29

end

end A304166.P16995378782916460427

namespace A304166

/-- `A014641(A017197(n))+29` -/
def P16995378782916460427.Spec : Prop :=
  ∀ n, P16995378782916460427.a n = A304166 (n + 1)

end A304166

/-! ## A304166.P2663846037029178105

`A000567(A007310(A016945(n)))+29`
-/

namespace A304166.P2663846037029178105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A007310 (A016945 n).toNat).toNat + 29

end

end A304166.P2663846037029178105

namespace A304166

/-- `A000567(A007310(A016945(n)))+29` -/
def P2663846037029178105.Spec : Prop :=
  ∀ n, P2663846037029178105.a n = A304166 (n + 1)

end A304166

/-! ## A304166.P12587026857276706126

`A033627(A250120(5*n+4))+A005914(9*n+3)`
-/

namespace A304166.P12587026857276706126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A250120 (5 * n + 4)).toNat + A005914 (9 * n + 3)

end

end A304166.P12587026857276706126

namespace A304166

/-- `A033627(A250120(5*n+4))+A005914(9*n+3)` -/
def P12587026857276706126.Spec : Prop :=
  ∀ n, P12587026857276706126.a n = A304166 (n + 1)

end A304166

/-! ## A304166.P9588508337803838506

`A298036(A010008(n))+A033581(A017581(n))`
-/

namespace A304166.P9588508337803838506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (A010008 n).toNat + A033581 (A017581 n).toNat

end

end A304166.P9588508337803838506

namespace A304166

/-- `A298036(A010008(n))+A033581(A017581(n))` -/
def P9588508337803838506.Spec : Prop :=
  ∀ n, P9588508337803838506.a n = A304166 (n + 1)

end A304166

/-!
# A304167: a(n) = 3^n - 2^(n-1) + 2 (n>=1).

The programs for A304167, the canonical program `A304167.P2106200455075284885` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304167 has offset 1).

The definition of A304167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)-2^n+2` (program `A304167.P2106200455075284885`, by `A304167.P2106200455075284885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304167.P2106200455075284885

`3^(n+1)-2^n+2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304167

/-- `3^(n+1)-2^n+2` -/
def P2106200455075284885.Spec : Prop :=
  ∀ n, P2106200455075284885.a n = A304167 (n + 1)

theorem P2106200455075284885.correct : P2106200455075284885.Spec := by
  intro n
  simp only [A304167, Nat.add_sub_cancel]

end A304167

/-! ## A304167.P1837005025968552126

`abs(∑[3*a(n-1)]-2^n)` with `a(0)=5, a(1)=6`
-/

namespace A304167.P1837005025968552126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)|

end

end A304167.P1837005025968552126

namespace A304167

/-- `abs(∑[3*a(n-1)]-2^n)` -/
def P1837005025968552126.Spec : Prop :=
  ∀ n, P1837005025968552126.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P14191197411346622763

`floor(∑[3*a(n-1)]-2^n)` with `a(0)=5, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A304167.P14191197411346622763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A304167.P14191197411346622763

namespace A304167

/-- `floor(∑[3*a(n-1)]-2^n)` -/
def P14191197411346622763.Spec : Prop :=
  ∀ n, P14191197411346622763.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P10307652014135551757

`ceil(∑[3*a(n-1)]-2^n)` with `a(0)=5, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A304167.P10307652014135551757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A304167.P10307652014135551757

namespace A304167

/-- `ceil(∑[3*a(n-1)]-2^n)` -/
def P10307652014135551757.Spec : Prop :=
  ∀ n, P10307652014135551757.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P12830163275553603582

`round(∑[3*a(n-1)]-2^n)` with `a(0)=5, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A304167.P12830163275553603582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A304167.P12830163275553603582

namespace A304167

/-- `round(∑[3*a(n-1)]-2^n)` -/
def P12830163275553603582.Spec : Prop :=
  ∀ n, P12830163275553603582.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P17669421692347777014

`record[Δ[A258439(n+1)]+2]`
-/

namespace A304167.P17669421692347777014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304167.P17669421692347777014

namespace A304167

/-- `record[Δ[A258439(n+1)]+2]` -/
def P17669421692347777014.Spec : Prop :=
  ∀ n, P17669421692347777014.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P15443861152546854674

`Δ[A053152(n+1)+2*n]`
-/

namespace A304167.P15443861152546854674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304167.P15443861152546854674

namespace A304167

/-- `Δ[A053152(n+1)+2*n]` -/
def P15443861152546854674.Spec : Prop :=
  ∀ n, P15443861152546854674.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P3571314450130388735

`Δ[A053156(n+1)+2*n]`
-/

namespace A304167.P3571314450130388735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304167.P3571314450130388735

namespace A304167

/-- `Δ[A053156(n+1)+2*n]` -/
def P3571314450130388735.Spec : Prop :=
  ∀ n, P3571314450130388735.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P5093585828094904820

`Δ[∑[A083313(n)]+2*(n+3)]`
-/

namespace A304167.P5093585828094904820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304167.P5093585828094904820

namespace A304167

/-- `Δ[∑[A083313(n)]+2*(n+3)]` -/
def P5093585828094904820.Spec : Prop :=
  ∀ n, P5093585828094904820.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P1197498047169248136

`abs(A168607(n+1)-A000079(n))`
-/

namespace A304167.P1197498047169248136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168607 (n + 1) - A000079 n|

end

end A304167.P1197498047169248136

namespace A304167

/-- `abs(A168607(n+1)-A000079(n))` -/
def P1197498047169248136.Spec : Prop :=
  ∀ n, P1197498047169248136.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P16716109925072243076

`abs(A140429(n+2)-A000918(n))`
-/

namespace A304167.P16716109925072243076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140429 (n + 2) - A000918 n|

end

end A304167.P16716109925072243076

namespace A304167

/-- `abs(A140429(n+2)-A000918(n))` -/
def P16716109925072243076.Spec : Prop :=
  ∀ n, P16716109925072243076.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P15436147068651905602

`abs(A000244(n+1)-A000079(n)+2)`
-/

namespace A304167.P15436147068651905602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 (n + 1) - A000079 n + 2|

end

end A304167.P15436147068651905602

namespace A304167

/-- `abs(A000244(n+1)-A000079(n)+2)` -/
def P15436147068651905602.Spec : Prop :=
  ∀ n, P15436147068651905602.a n = A304167 (n + 1)

end A304167

/-! ## A304167.P17310625568467090886

`(A027649(n+1)+4)/2`
-/

namespace A304167.P17310625568467090886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 (n + 1) + 4 : ℚ) / 2

end

end A304167.P17310625568467090886

namespace A304167

/-- `(A027649(n+1)+4)/2` -/
def P17310625568467090886.Spec : Prop :=
  ∀ n, P17310625568467090886.a n = (A304167 (n + 1) : ℚ)

end A304167

/-! ## A304167.P16029271108789681024

`abs(Δ[A126644(n+1)/6]+2)`
-/

namespace A304167.P16029271108789681024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126644 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A304167.P16029271108789681024

namespace A304167

/-- `abs(Δ[A126644(n+1)/6]+2)` -/
def P16029271108789681024.Spec : Prop :=
  ∀ n, P16029271108789681024.a n = (A304167 (n + 1) : ℚ)

end A304167

/-! ## A304167.P5401126621705482704

`record[Δ[A175840(n)]+2]`
-/

namespace A304167.P5401126621705482704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304167.P5401126621705482704

namespace A304167

/-- `record[Δ[A175840(n)]+2]` -/
def P5401126621705482704.Spec : Prop :=
  ∀ n, P5401126621705482704.a n = A304167 (n + 1)

end A304167

/-!
# A304168: a(n) = 2*3^n - 2^(n-1) (n>=1).

The programs for A304168, the canonical program `A304168.P5038810226415938535` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304168 has offset 1).

The definition of A304168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^(n+1)-2^n` (program `A304168.P5038810226415938535`, by `A304168.P5038810226415938535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304168.P5038810226415938535

`2*3^(n+1)-2^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304168

/-- `2*3^(n+1)-2^n` -/
def P5038810226415938535.Spec : Prop :=
  ∀ n, P5038810226415938535.a n = A304168 (n + 1)

theorem P5038810226415938535.correct : P5038810226415938535.Spec := by
  intro n
  simp only [A304168, Nat.add_sub_cancel]

end A304168

/-! ## A304168.P746081739722825449

`Δ[A083313(n+1)]`
-/

namespace A304168.P746081739722825449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P746081739722825449

namespace A304168

/-- `Δ[A083313(n+1)]` -/
def P746081739722825449.Spec : Prop :=
  ∀ n, P746081739722825449.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P15654617833735638853

`Δ[A304167(n+1)]`
-/

namespace A304168.P15654617833735638853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P15654617833735638853

namespace A304168

/-- `Δ[A304167(n+1)]` -/
def P15654617833735638853.Spec : Prop :=
  ∀ n, P15654617833735638853.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P15146866364329890104

`Δ[A064686(n+2)]`
-/

namespace A304168.P15146866364329890104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P15146866364329890104

namespace A304168

/-- `Δ[A064686(n+2)]` -/
def P15146866364329890104.Spec : Prop :=
  ∀ n, P15146866364329890104.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P7150004560065055118

`A053581(n+2)/2`
-/

namespace A304168.P7150004560065055118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053581 (n + 2) : ℚ) / 2

end

end A304168.P7150004560065055118

namespace A304168

/-- `A053581(n+2)/2` -/
def P7150004560065055118.Spec : Prop :=
  ∀ n, P7150004560065055118.a n = (A304168 (n + 1) : ℚ)

end A304168

/-! ## A304168.P15111027328954984030

`Δ[Δ[A053152(n+1)]]`
-/

namespace A304168.P15111027328954984030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P15111027328954984030

namespace A304168

/-- `Δ[Δ[A053152(n+1)]]` -/
def P15111027328954984030.Spec : Prop :=
  ∀ n, P15111027328954984030.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P6586210303014382762

`Δ[Δ[A053156(n+1)]]`
-/

namespace A304168.P6586210303014382762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P6586210303014382762

namespace A304168

/-- `Δ[Δ[A053156(n+1)]]` -/
def P6586210303014382762.Spec : Prop :=
  ∀ n, P6586210303014382762.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P1059938063410167575

`Δ[3^(n+1)-A000051(n)]`
-/

namespace A304168.P1059938063410167575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P1059938063410167575

namespace A304168

/-- `Δ[3^(n+1)-A000051(n)]` -/
def P1059938063410167575.Spec : Prop :=
  ∀ n, P1059938063410167575.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P7960209108650181748

`Δ[3^(n+1)-A000079(n)]`
-/

namespace A304168.P7960209108650181748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P7960209108650181748

namespace A304168

/-- `Δ[3^(n+1)-A000079(n)]` -/
def P7960209108650181748.Spec : Prop :=
  ∀ n, P7960209108650181748.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P16223445474245905122

`Δ[A000079(n)+Δ[A036550(n)]]`
-/

namespace A304168.P16223445474245905122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P16223445474245905122

namespace A304168

/-- `Δ[A000079(n)+Δ[A036550(n)]]` -/
def P16223445474245905122.Spec : Prop :=
  ∀ n, P16223445474245905122.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P735306878650685288

`Δ[A168616(n)+A001047(n+1)]`
-/

namespace A304168.P735306878650685288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n + A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P735306878650685288

namespace A304168

/-- `Δ[A168616(n)+A001047(n+1)]` -/
def P735306878650685288.Spec : Prop :=
  ∀ n, P735306878650685288.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P14003306265957009082

`Δ[A000244(n+1)-A000225(n)]`
-/

namespace A304168.P14003306265957009082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P14003306265957009082

namespace A304168

/-- `Δ[A000244(n+1)-A000225(n)]` -/
def P14003306265957009082.Spec : Prop :=
  ∀ n, P14003306265957009082.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P8412515740328355965

`Δ[A024023(n+1)-A000225(n)]`
-/

namespace A304168.P8412515740328355965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1) - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P8412515740328355965

namespace A304168

/-- `Δ[A024023(n+1)-A000225(n)]` -/
def P8412515740328355965.Spec : Prop :=
  ∀ n, P8412515740328355965.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P8817425044992158325

`Δ[A034472(n+1)-A052548(n)]`
-/

namespace A304168.P8817425044992158325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 1) - A052548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P8817425044992158325

namespace A304168

/-- `Δ[A034472(n+1)-A052548(n)]` -/
def P8817425044992158325.Spec : Prop :=
  ∀ n, P8817425044992158325.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P8755540089308510625

`Δ[A024023(n+1)-A011782(n+1)]`
-/

namespace A304168.P8755540089308510625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1) - A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P8755540089308510625

namespace A304168

/-- `Δ[A024023(n+1)-A011782(n+1)]` -/
def P8755540089308510625.Spec : Prop :=
  ∀ n, P8755540089308510625.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P1916841373940366336

`Δ[A060546(2*n)+A001047(n+1)]`
-/

namespace A304168.P1916841373940366336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) + A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304168.P1916841373940366336

namespace A304168

/-- `Δ[A060546(2*n)+A001047(n+1)]` -/
def P1916841373940366336.Spec : Prop :=
  ∀ n, P1916841373940366336.a n = A304168 (n + 1)

end A304168

/-! ## A304168.P10912227489611777140

`(A027649(n+1)+A008776(n+1))/2`
-/

namespace A304168.P10912227489611777140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 (n + 1) + A008776 (n + 1) : ℚ) / 2

end

end A304168.P10912227489611777140

namespace A304168

/-- `(A027649(n+1)+A008776(n+1))/2` -/
def P10912227489611777140.Spec : Prop :=
  ∀ n, P10912227489611777140.a n = (A304168 (n + 1) : ℚ)

end A304168

/-! ## A304168.P16560031962505839157

`(A171498(n+1)-A000225(n+1))/2`
-/

namespace A304168.P16560031962505839157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171498 (n + 1) - A000225 (n + 1) : ℚ) / 2

end

end A304168.P16560031962505839157

namespace A304168

/-- `(A171498(n+1)-A000225(n+1))/2` -/
def P16560031962505839157.Spec : Prop :=
  ∀ n, P16560031962505839157.a n = (A304168 (n + 1) : ℚ)

end A304168

/-!
# A304169: a(n) = 16*3^n + 2^(n+1) - 26 (n>=1).

The programs for A304169, the canonical program `A304169.P5285886497541621886` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304169 has offset 1).

The definition of A304169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*3^(n+1)+2^(n+2)-26` (program `A304169.P5285886497541621886`, by `A304169.P5285886497541621886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304169.P5285886497541621886

`16*3^(n+1)+2^(n+2)-26`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304169

/-- `16*3^(n+1)+2^(n+2)-26` -/
def P5285886497541621886.Spec : Prop :=
  ∀ n, P5285886497541621886.a n = A304169 (n + 1)

theorem P5285886497541621886.correct : P5285886497541621886.Spec := by
  intro n
  simp only [A304169, Nat.add_sub_cancel]

end A304169

/-! ## A304169.P14908827018952791242

`2*(A277106(n+1)+A000225(n+1))`
-/

namespace A304169.P14908827018952791242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A277106 (n + 1) + A000225 (n + 1))

end

end A304169.P14908827018952791242

namespace A304169

/-- `2*(A277106(n+1)+A000225(n+1))` -/
def P14908827018952791242.Spec : Prop :=
  ∀ n, P14908827018952791242.a n = A304169 (n + 1)

end A304169

/-!
# A304170: a(n) = 32*3^n + 18*2^n - 116 (n>=1).

The programs for A304170, the canonical program `A304170.P4196361369610342050` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304170 has offset 0).

The definition of A304170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304170.P4196361369610342050

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=16, a(1)=244, a(2)=892`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304170

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P4196361369610342050.Spec : Prop :=
  ∀ n, P4196361369610342050.a n = A304170 n

theorem P4196361369610342050.correct : P4196361369610342050.Spec := by
  intro n
  simp only [A304170]

end A304170

/-!
# A304171: a(n) = 87*2^n - 38 (n>=0).

The programs for A304171, the canonical program `A304171.P15913547196741165118` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304171 has offset 0).

The definition of A304171 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `87*2^n-38` (program `A304171.P15913547196741165118`, by `A304171.P15913547196741165118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304171.P15913547196741165118

`87*2^n-38`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304171

/-- `87*2^n-38` -/
def P15913547196741165118.Spec : Prop :=
  ∀ n, P15913547196741165118.a n = A304171 n

theorem P15913547196741165118.correct : P15913547196741165118.Spec := by
  intro n
  simp only [A304171]

end A304171

/-! ## A304171.P4902926294456363517

`2*(a(n-1)+19)` with `a(0)=49`
-/

namespace A304171.P4902926294456363517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [49] fun n a =>
  2 * (a (n - 1) + 19)

end

end A304171.P4902926294456363517

namespace A304171

/-- `2*(a(n-1)+19)` -/
def P4902926294456363517.Spec : Prop :=
  ∀ n, (P4902926294456363517.a n : ℤ) = A304171 n

theorem P4902926294456363517.correct : P4902926294456363517.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304171, Nat.add_sub_cancel, A304171.P4902926294456363517.a, A304171.P15913547196741165118.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304171, Nat.add_sub_cancel, A304171.P4902926294456363517.a, A304171.P15913547196741165118.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304171

/-! ## A304171.P5408938078942388639

`-(A304613(n)+7)*(1-4/2)`
-/

namespace A304171.P5408938078942388639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A304613 n + 7 : ℚ) * (1 - (4 : ℚ) / 2))

end

end A304171.P5408938078942388639

namespace A304171

/-- `-(A304613(n)+7)*(1-4/2)` -/
def P5408938078942388639.Spec : Prop :=
  ∀ n, P5408938078942388639.a n = (A304171 n : ℚ)

end A304171

/-! ## A304171.P15394151129212761157

`(A304613(n)+7)*A106400(n)²`
-/

namespace A304171.P15394151129212761157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * A106400 n ^ 2

end

end A304171.P15394151129212761157

namespace A304171

/-- `(A304613(n)+7)*A106400(n)²` -/
def P15394151129212761157.Spec : Prop :=
  ∀ n, P15394151129212761157.a n = A304171 n

end A304171

/-! ## A304171.P17157056345610511412

`(A304613(n)+7)*char[A262677(n)]`
-/

namespace A304171.P17157056345610511412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262677 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304171.P17157056345610511412

namespace A304171

/-- `(A304613(n)+7)*char[A262677(n)]` -/
def P17157056345610511412.Spec : Prop :=
  ∀ n, P17157056345610511412.a n = A304171 n

end A304171

/-! ## A304171.P5753102263018477939

`(A304613(n)+7)*A000034(2*n)`
-/

namespace A304171.P5753102263018477939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * A000034 (2 * n)

end

end A304171.P5753102263018477939

namespace A304171

/-- `(A304613(n)+7)*A000034(2*n)` -/
def P5753102263018477939.Spec : Prop :=
  ∀ n, P5753102263018477939.a n = A304171 n

end A304171

/-! ## A304171.P9575666579679132460

`gcd(A304613(n)+7, A008683(4*(n+1)))`
-/

namespace A304171.P9575666579679132460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304613 n + 7) (A008683 (4 * (n + 1)))

end

end A304171.P9575666579679132460

namespace A304171

/-- `gcd(A304613(n)+7, A008683(4*(n+1)))` -/
def P9575666579679132460.Spec : Prop :=
  ∀ n, (P9575666579679132460.a n : ℤ) = A304171 n

end A304171

/-! ## A304171.P5721744269295874931

`(A304613(n)+7)*ceil(1/A000010(n+1))`
-/

namespace A304171.P5721744269295874931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * ⌈1 / (A000010 (n + 1) : ℚ)⌉

end

end A304171.P5721744269295874931

namespace A304171

/-- `(A304613(n)+7)*ceil(1/A000010(n+1))` -/
def P5721744269295874931.Spec : Prop :=
  ∀ n, P5721744269295874931.a n = A304171 n

end A304171

/-! ## A304171.P17749954007916277092

`(A304613(n)+7)*A001222(A040992(n+1))`
-/

namespace A304171.P17749954007916277092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * A001222 (A040992 (n + 1)).toNat

end

end A304171.P17749954007916277092

namespace A304171

/-- `(A304613(n)+7)*A001222(A040992(n+1))` -/
def P17749954007916277092.Spec : Prop :=
  ∀ n, P17749954007916277092.a n = A304171 n

end A304171

/-! ## A304171.P16163432214459316808

`(A304613(n)+7)*A001222(A068828(n+1))`
-/

namespace A304171.P16163432214459316808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * A001222 (A068828 (n + 1)).toNat

end

end A304171.P16163432214459316808

namespace A304171

/-- `(A304613(n)+7)*A001222(A068828(n+1))` -/
def P16163432214459316808.Spec : Prop :=
  ∀ n, P16163432214459316808.a n = A304171 n

end A304171

/-! ## A304171.P81460157301609488

`(A304613(n)+7)%A304614(n)`
-/

namespace A304171.P81460157301609488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304613 n + 7) (A304614 n)

end

end A304171.P81460157301609488

namespace A304171

/-- `(A304613(n)+7)%A304614(n)` -/
def P81460157301609488.Spec : Prop :=
  ∀ n, P81460157301609488.a n = A304171 n

end A304171

/-! ## A304171.P11854168796110832056

`xor(A304613(n)+7, A114855(A114840(n+1)))`
-/

namespace A304171.P11854168796110832056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A304613 n + 7) (A114855 (A114840 (n + 1)).toNat)

end

end A304171.P11854168796110832056

namespace A304171

/-- `xor(A304613(n)+7, A114855(A114840(n+1)))` -/
def P11854168796110832056.Spec : Prop :=
  ∀ n, P11854168796110832056.a n = A304171 n

end A304171

/-! ## A304171.P1337891091025954079

`(A304613(n)+7)*A001222(A038562(n+2))`
-/

namespace A304171.P1337891091025954079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304613 n + 7) * A001222 (A038562 (n + 2)).toNat

end

end A304171.P1337891091025954079

namespace A304171

/-- `(A304613(n)+7)*A001222(A038562(n+2))` -/
def P1337891091025954079.Spec : Prop :=
  ∀ n, P1337891091025954079.a n = A304171 n

end A304171

/-!
# A304172: a(n) = 99*2^n - 45 (n>=0).

The programs for A304172, the canonical program `A304172.P12365819046870217472` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304172 has offset 0).

The definition of A304172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `99*2^n-45` (program `A304172.P12365819046870217472`, by `A304172.P12365819046870217472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304172.P12365819046870217472

`99*2^n-45`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A304172

/-- `99*2^n-45` -/
def P12365819046870217472.Spec : Prop :=
  ∀ n, P12365819046870217472.a n = A304172 n

theorem P12365819046870217472.correct : P12365819046870217472.Spec := by
  intro n
  simp only [A304172]

end A304172

/-! ## A304172.P17419816633287478278

`9*(A086225(n)-4)`
-/

namespace A304172.P17419816633287478278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A086225 n - 4)

end

end A304172.P17419816633287478278

namespace A304172

/-- `9*(A086225(n)-4)` -/
def P17419816633287478278.Spec : Prop :=
  ∀ n, P17419816633287478278.a n = A304172 n

end A304172

/-! ## A304172.P934744804630205234

`9*(A005015(n)-5)`
-/

namespace A304172.P934744804630205234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A005015 n - 5)

end

end A304172.P934744804630205234

namespace A304172

/-- `9*(A005015(n)-5)` -/
def P934744804630205234.Spec : Prop :=
  ∀ n, P934744804630205234.a n = A304172 n

end A304172

/-! ## A304172.P802957436811358866

`9*(A156198(n+1)-2)`
-/

namespace A304172.P802957436811358866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A156198 (n + 1) - 2)

end

end A304172.P802957436811358866

namespace A304172

/-- `9*(A156198(n+1)-2)` -/
def P802957436811358866.Spec : Prop :=
  ∀ n, P802957436811358866.a n = A304172 n

end A304172

/-! ## A304172.P18306824205888645947

`(5-1/2)*A139635(n+2)`
-/

namespace A304172.P18306824205888645947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (1 : ℚ) / 2) * (A139635 (n + 2) : ℚ)

end

end A304172.P18306824205888645947

namespace A304172

/-- `(5-1/2)*A139635(n+2)` -/
def P18306824205888645947.Spec : Prop :=
  ∀ n, P18306824205888645947.a n = (A304172 n : ℚ)

end A304172

/-! ## A304172.P826351656118328309

`Δ[∑[A304613(n)]-A304612(n)]`
-/

namespace A304172.P826351656118328309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A304612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304172.P826351656118328309

namespace A304172

/-- `Δ[∑[A304613(n)]-A304612(n)]` -/
def P826351656118328309.Spec : Prop :=
  ∀ n, P826351656118328309.a n = A304172 n

end A304172

/-!
# A304173: Number of rooted plane trees where every branch that has a predecessor (a branch directly to its left and emanating from the same root) has at least as many leaves as its predecessor.

The programs for A304173, there is no canonical definition to state claims against.
-/

/-! ## A304173.P15259761211559677341

`A261664(n)+A002264(A124302(n))`
-/

namespace A304173.P15259761211559677341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 n + A002264 (A124302 n).toNat

end

end A304173.P15259761211559677341

/-! ## A304173.P7312623396360484753

`A109610(A383499(n))`
-/

namespace A304173.P7312623396360484753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109610 (A383499 n).toNat

end

end A304173.P7312623396360484753

/-! ## A304173.P12733757138755436826

`Δ[A152225(n)%A285876(n)]`
-/

namespace A304173.P12733757138755436826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152225 n) (A285876 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304173.P12733757138755436826

/-! ## A304173.P17737810142310082591

`Δ[record[A025265(A158440(n+1))]]`
-/

namespace A304173.P17737810142310082591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (A158440 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304173.P17737810142310082591

/-! ## A304173.P1267465952859839635

`Δ[A025265(n+2)%A123457(n+1)]`
-/

namespace A304173.P1267465952859839635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025265 (n + 2)) (A123457 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304173.P1267465952859839635

/-!
# A304175: Number of leaf-balanced rooted plane trees with n nodes.

The programs for A304175, there is no canonical definition to state claims against.
-/

/-! ## A304175.P18397369774640753966

`Δ[A086161(ceil((n+3)*2^(n-2)))]`
-/

namespace A304175.P18397369774640753966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 ⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304175.P18397369774640753966

/-! ## A304175.P3346301933797358617

`A008615((n+5)*round(2^(n-1))+1)`
-/

namespace A304175.P3346301933797358617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n + 5 : ℤ) * SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1).toNat

end

end A304175.P3346301933797358617

/-! ## A304175.P7431939760936731820

`ceil((n+3)*2^(n-2))-A002264((n+2)*floor(2^(n-1))+1)`
-/

namespace A304175.P7431939760936731820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ - A002264 ((n + 2 : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

end

end A304175.P7431939760936731820

/-! ## A304175.P5169899622388247237

`A103221(∑[A129955(n)])`
-/

namespace A304175.P5169899622388247237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304175.P5169899622388247237

/-! ## A304175.P10072907900984834415

`Δ[A002264(A045623(n)+1)]`
-/

namespace A304175.P10072907900984834415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045623 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304175.P10072907900984834415

/-!
# A304176: Number of partitions of n^3 into exactly n parts.

The programs for A304176, there is no canonical definition to state claims against.
-/

/-! ## A304176.P5074820255757447303

`A238608(n)+A347604(n)-A128854(n)`
-/

namespace A304176.P5074820255757447303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238608 n + (A347604 n - A128854 n)

end

end A304176.P5074820255757447303

/-! ## A304176.P9430498509239275470

`A347617(∑[n+4]+2)`
-/

namespace A304176.P9430498509239275470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347617 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304176.P9430498509239275470

/-! ## A304176.P5519885566047893496

`A347617(A046691(n+2))+A025469(n)`
-/

namespace A304176.P5519885566047893496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347617 (A046691 (n + 2)).toNat + A025469 n

end

end A304176.P5519885566047893496

/-! ## A304176.P16367840389166935539

`A347617(A046691(n+2))+A036633(n)`
-/

namespace A304176.P16367840389166935539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347617 (A046691 (n + 2)).toNat + A036633 n

end

end A304176.P16367840389166935539

/-!
# A304178: Number of distinct sets of palindrome prefix lengths, over all binary palindromes of length n.

The programs for A304178, there is no canonical definition to state claims against.
-/

/-! ## A304178.P16463635625990674159

`Δ[A323595(A028310(n))%(2^n)]`
-/

namespace A304178.P16463635625990674159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323595 (A028310 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304178.P16463635625990674159

/-! ## A304178.P331579093010133717

`A000007(n)+Δ[A323595(A028310(n))]`
-/

namespace A304178.P331579093010133717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323595 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A304178.P331579093010133717

/-! ## A304178.P10396198307036782126

`Δ[A323595(A028310(n))+A057427(n)]`
-/

namespace A304178.P10396198307036782126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323595 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304178.P10396198307036782126

/-! ## A304178.P5225579024354940893

`A151933(n)+Δ[A323595(A028310(n))]`
-/

namespace A304178.P5225579024354940893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323595 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (f1 (n + 1) - f1 n)

end

end A304178.P5225579024354940893

/-!
# A304179: Number of "forceless" (or "useless") sequences in n-column Nonogram puzzle.

The programs for A304179, there is no canonical definition to state claims against.
-/

/-! ## A304179.P5139505540083327334

`A113218(A113166(n+1))-A113204(n+1)`
-/

namespace A304179.P5139505540083327334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A113166 (n + 1)).toNat - A113204 (n + 1)

end

end A304179.P5139505540083327334

/-! ## A304179.P10335539157014692648

`A331383(A081123(n))+A086543(n)`
-/

namespace A304179.P10335539157014692648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A081123 n).toNat + A086543 n

end

end A304179.P10335539157014692648

/-! ## A304179.P12843492539287465798

`A326034(A035041(n+2))+A086543(n)`
-/

namespace A304179.P12843492539287465798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326034 (A035041 (n + 2)).toNat + A086543 n

end

end A304179.P12843492539287465798

/-! ## A304179.P679990654249737992

`A325831(n+2)-A135265(A325791(n))`
-/

namespace A304179.P679990654249737992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325831 (n + 2) - A135265 (A325791 n).toNat

end

end A304179.P679990654249737992

/-!
# A304180: If n = Product (p_j^k_j) then a(n) = max{p_j}^max{k_j}.

The programs for A304180, the canonical program `A304180.P7270068340037446333` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304180 has offset 1).

The definition of A304180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304180.P7270068340037446333

`A006530(n+1)^A051903(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A304180

/-- `A006530(n+1)^A051903(n+1)` -/
def P7270068340037446333.Spec : Prop :=
  ∀ n, P7270068340037446333.a n = (A304180 (n + 1) : ℚ)

end A304180

/-! ## A304180.P11142901131886000567

`gcd(A068795(n+1), A085079(n+1))`
-/

namespace A304180.P11142901131886000567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068795 (n + 1)) (A085079 (n + 1))

end

end A304180.P11142901131886000567

namespace A304180

/-- `gcd(A068795(n+1), A085079(n+1))` -/
def P11142901131886000567.Spec : Prop :=
  ∀ n, (P11142901131886000567.a n : ℤ) = A304180 (n + 1)

end A304180

/-! ## A304180.P5914958211102702098

`A006530(n+1)^val(A046523(n+1), 2)`
-/

namespace A304180.P5914958211102702098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2

end

end A304180.P5914958211102702098

namespace A304180

/-- `A006530(n+1)^val(A046523(n+1), 2)` -/
def P5914958211102702098.Spec : Prop :=
  ∀ n, P5914958211102702098.a n = A304180 (n + 1)

end A304180

/-! ## A304180.P8867215289424323517

`gcd(∑[12*n²+1], A111089(n+1))^A051903(n+1)`
-/

namespace A304180.P8867215289424323517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A111089 (n + 1)) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A304180.P8867215289424323517

namespace A304180

/-- `gcd(∑[12*n²+1], A111089(n+1))^A051903(n+1)` -/
def P8867215289424323517.Spec : Prop :=
  ∀ n, P8867215289424323517.a n = (A304180 (n + 1) : ℚ)

end A304180

/-! ## A304180.P10265793770687614632

`A006530(n+1)^A067029(A089247(n+1))`
-/

namespace A304180.P10265793770687614632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A067029 (A089247 (n + 1)).toNat : ℤ)

end

end A304180.P10265793770687614632

namespace A304180

/-- `A006530(n+1)^A067029(A089247(n+1))` -/
def P10265793770687614632.Spec : Prop :=
  ∀ n, P10265793770687614632.a n = (A304180 (n + 1) : ℚ)

end A304180

/-! ## A304180.P7169549181341063899

`A006530(n+1)^A001222(A238745(n+1))`
-/

namespace A304180.P7169549181341063899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A001222 (A238745 (n + 1)).toNat : ℤ)

end

end A304180.P7169549181341063899

namespace A304180

/-- `A006530(n+1)^A001222(A238745(n+1))` -/
def P7169549181341063899.Spec : Prop :=
  ∀ n, P7169549181341063899.a n = (A304180 (n + 1) : ℚ)

end A304180

/-! ## A304180.P14594532123399160031

`gcd(A046021(n+1), A066638(n+1))`
-/

namespace A304180.P14594532123399160031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046021 (n + 1)) (A066638 (n + 1))

end

end A304180.P14594532123399160031

namespace A304180

/-- `gcd(A046021(n+1), A066638(n+1))` -/
def P14594532123399160031.Spec : Prop :=
  ∀ n, (P14594532123399160031.a n : ℤ) = A304180 (n + 1)

end A304180

/-! ## A304180.P4259223684238636266

`A034699(A085079(n+1))`
-/

namespace A304180.P4259223684238636266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A085079 (n + 1)).toNat

end

end A304180.P4259223684238636266

namespace A304180

/-- `A034699(A085079(n+1))` -/
def P4259223684238636266.Spec : Prop :=
  ∀ n, P4259223684238636266.a n = A304180 (n + 1)

end A304180

/-! ## A304180.P3156649370547617238

`A034699(A066638(n+1))`
-/

namespace A304180.P3156649370547617238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A066638 (n + 1)).toNat

end

end A304180.P3156649370547617238

namespace A304180

/-- `A034699(A066638(n+1))` -/
def P3156649370547617238.Spec : Prop :=
  ∀ n, P3156649370547617238.a n = A304180 (n + 1)

end A304180

/-! ## A304180.P11322867973908224854

`A006530(n+1)^A001221(A124859(n+1))`
-/

namespace A304180.P11322867973908224854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A001221 (A124859 (n + 1)).toNat : ℤ)

end

end A304180.P11322867973908224854

namespace A304180

/-- `A006530(n+1)^A001221(A124859(n+1))` -/
def P11322867973908224854.Spec : Prop :=
  ∀ n, P11322867973908224854.a n = (A304180 (n + 1) : ℚ)

end A304180

/-!
# A304181: If n = Product (p_j^k_j) then a(n) = min{p_j}^min{k_j}.

The programs for A304181, there is no canonical definition to state claims against.
-/

/-! ## A304181.P1315367440086100815

`A020639(n+1)^A051904(n+1)`
-/

namespace A304181.P1315367440086100815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ)

end

end A304181.P1315367440086100815

/-! ## A304181.P12511589033048800479

`A028233(A062759(n+1))`
-/

namespace A304181.P12511589033048800479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A062759 (n + 1)).toNat

end

end A304181.P12511589033048800479

/-! ## A304181.P7130630414745115880

`A028233((n+1)/A062760(n+1))`
-/

namespace A304181.P7130630414745115880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062760 (n + 1) : ℚ))).toNat

end

end A304181.P7130630414745115880

/-! ## A304181.P1262925496016969528

`gcd(A068794(n+1), A085079(n+1))`
-/

namespace A304181.P1262925496016969528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068794 (n + 1)) (A085079 (n + 1))

end

end A304181.P1262925496016969528

/-! ## A304181.P4051371882808436317

`sqrt(A088377(n+1)^A051904(n+1))`
-/

namespace A304181.P4051371882808436317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A088377 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ) : ℝ)

end

end A304181.P4051371882808436317

/-! ## A304181.P2954720273329403462

`A014963(A028233(n+1))^A051904(n+1)`
-/

namespace A304181.P2954720273329403462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A028233 (n + 1)).toNat : ℚ) ^ (A051904 (n + 1) : ℤ)

end

end A304181.P2954720273329403462

/-! ## A304181.P6674409680209589724

`A020639(n+1)^A071178(A089247(n+1))`
-/

namespace A304181.P6674409680209589724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A071178 (A089247 (n + 1)).toNat : ℤ)

end

end A304181.P6674409680209589724

/-! ## A304181.P3022484352484682026

`A020639(n+1)^A071178(A238745(n+1))`
-/

namespace A304181.P3022484352484682026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A071178 (A238745 (n + 1)).toNat : ℤ)

end

end A304181.P3022484352484682026

/-! ## A304181.P16035178250280595405

`A028233(A085079(n+1))`
-/

namespace A304181.P16035178250280595405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A085079 (n + 1)).toNat

end

end A304181.P16035178250280595405

/-! ## A304181.P2877603352097624882

`A074828(A066048(n+1))^A051904(n+1)`
-/

namespace A304181.P2877603352097624882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074828 (A066048 (n + 1)).toNat : ℚ) ^ (A051904 (n + 1) : ℤ)

end

end A304181.P2877603352097624882

/-! ## A304181.P15455592320860127067

`A074828((n+1)²)^A051904(n+1)`
-/

namespace A304181.P15455592320860127067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074828 ((n + 1) ^ 2) : ℚ) ^ (A051904 (n + 1) : ℤ)

end

end A304181.P15455592320860127067

/-! ## A304181.P16804810832780530151

`A014673((n+1)²)^A051904(n+1)`
-/

namespace A304181.P16804810832780530151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014673 ((n + 1) ^ 2) : ℚ) ^ (A051904 (n + 1) : ℤ)

end

end A304181.P16804810832780530151

/-! ## A304181.P5995539460016016104

`A034684(A000188(A062759((n+1)²)))`
-/

namespace A304181.P5995539460016016104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A000188 (A062759 ((n + 1) ^ 2)).toNat).toNat

end

end A304181.P5995539460016016104

/-!
# A304182: Number of primitive inequivalent mirror-symmetric sublattices of rectangular lattice of index n.

The programs for A304182, the canonical program `A304182.P17931139108651068119` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304182 has offset 1).

The definition of A304182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304182.P4645674873761844443

`A001615(n+1)-2*A304183(n+1)`
-/

namespace A304182.P4645674873761844443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - 2 * A304183 (n + 1)

end

end A304182.P4645674873761844443

namespace A304182

/-- `A001615(n+1)-2*A304183(n+1)` -/
def P4645674873761844443.Spec : Prop :=
  ∀ n, P4645674873761844443.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P5672825209192981213

`∑{d}[n+1, A019590(#)*A034444((n+1)/#)]`
-/

namespace A304182.P5672825209192981213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304182.P5672825209192981213

namespace A304182

/-- `∑{d}[n+1, A019590(#)*A034444((n+1)/#)]` -/
def P5672825209192981213.Spec : Prop :=
  ∀ n, P5672825209192981213.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P7236563232507234588

`∑{d}[n+1, A069735(#)*A271102((n+1)/#)]`
-/

namespace A304182.P7236563232507234588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304182.P7236563232507234588

namespace A304182

/-- `∑{d}[n+1, A069735(#)*A271102((n+1)/#)]` -/
def P7236563232507234588.Spec : Prop :=
  ∀ n, P7236563232507234588.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P17931139108651068119

`∑{d}[n+1, A091379(#)*A284059((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A304182

/-- `∑{d}[n+1, A091379(#)*A284059((n+1)/#)]` -/
def P17931139108651068119.Spec : Prop :=
  ∀ n, P17931139108651068119.a n = A304182 (n + 1)

theorem P17931139108651068119.correct : P17931139108651068119.Spec := by
  intro n
  simp only [A304182, Nat.add_sub_cancel]

end A304182

/-! ## A304182.P9525368215832176115

`∑{d}[n+1, A048691(#)*A359591((n+1)/#)]`
-/

namespace A304182.P9525368215832176115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A359591 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304182.P9525368215832176115

namespace A304182

/-- `∑{d}[n+1, A048691(#)*A359591((n+1)/#)]` -/
def P9525368215832176115.Spec : Prop :=
  ∀ n, P9525368215832176115.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P5944900384971993090

`∑{d}[n+1, A359377(#)*A382488((n+1)/#)]`
-/

namespace A304182.P5944900384971993090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359377 d * A382488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304182.P5944900384971993090

namespace A304182

/-- `∑{d}[n+1, A359377(#)*A382488((n+1)/#)]` -/
def P5944900384971993090.Spec : Prop :=
  ∀ n, P5944900384971993090.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P12214576425307862560

`∑{d}[n+1, A000034(#-1)*A008966((n+1)/#)]`
-/

namespace A304182.P12214576425307862560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304182.P12214576425307862560

namespace A304182

/-- `∑{d}[n+1, A000034(#-1)*A008966((n+1)/#)]` -/
def P12214576425307862560.Spec : Prop :=
  ∀ n, P12214576425307862560.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P10816939197047350244

`∑{d}[A007947(n+1), A001511(A007947((n+1)/#))]`
-/

namespace A304182.P10816939197047350244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001511 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A304182.P10816939197047350244

namespace A304182

/-- `∑{d}[A007947(n+1), A001511(A007947((n+1)/#))]` -/
def P10816939197047350244.Spec : Prop :=
  ∀ n, P10816939197047350244.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P12420976688156434565

`∑{d}[A007947(n+1), A007947(A006519((n+1)/#))]`
-/

namespace A304182.P12420976688156434565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007947 (A006519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A304182.P12420976688156434565

namespace A304182

/-- `∑{d}[A007947(n+1), A007947(A006519((n+1)/#))]` -/
def P12420976688156434565.Spec : Prop :=
  ∀ n, P12420976688156434565.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P2924091161073611001

`A034444(n+1)+A147848(n+1)-A060594(n+1)`
-/

namespace A304182.P2924091161073611001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A147848 (n + 1) - A060594 (n + 1))

end

end A304182.P2924091161073611001

namespace A304182

/-- `A034444(n+1)+A147848(n+1)-A060594(n+1)` -/
def P2924091161073611001.Spec : Prop :=
  ∀ n, P2924091161073611001.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P9464738910876155410

`A034444(n+1)+A000035(n)*A034444(A008619(n))`
-/

namespace A304182.P9464738910876155410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + A000035 n * A034444 (A008619 n).toNat

end

end A304182.P9464738910876155410

namespace A304182

/-- `A034444(n+1)+A000035(n)*A034444(A008619(n))` -/
def P9464738910876155410.Spec : Prop :=
  ∀ n, P9464738910876155410.a n = A304182 (n + 1)

end A304182

/-! ## A304182.P9008092982895852212

`A019590(n+1)+2*A157226(n+1)`
-/

namespace A304182.P9008092982895852212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + 2 * A157226 (n + 1)

end

end A304182.P9008092982895852212

namespace A304182

/-- `A019590(n+1)+2*A157226(n+1)` -/
def P9008092982895852212.Spec : Prop :=
  ∀ n, P9008092982895852212.a n = A304182 (n + 1)

end A304182

/-!
# A304183: Number of primitive inequivalent oblique sublattices of rectangular lattice of index n.

The programs for A304183, the canonical program `A304183.P16998250907067850540` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304183 has offset 1).

The definition of A304183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A304182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304183.P16998250907067850540

`(A001615(n+1)-A304182(n+1))/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A304183

/-- `(A001615(n+1)-A304182(n+1))/2` -/
def P16998250907067850540.Spec : Prop :=
  ∀ n, P16998250907067850540.a n = (A304183 (n + 1) : ℚ)

end A304183

/-! ## A304183.P8185079612406353425

`∑{d}[A007947(n+1), floor(n/(2*#))]`
-/

namespace A304183.P8185079612406353425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌊(n : ℚ) / (2 * d : ℚ)⌋

end

end A304183.P8185079612406353425

namespace A304183

/-- `∑{d}[A007947(n+1), floor(n/(2*#))]` -/
def P8185079612406353425.Spec : Prop :=
  ∀ n, P8185079612406353425.a n = A304183 (n + 1)

end A304183

/-! ## A304183.P9798225241096932495

`∑{d}[n+1, A048691(#)*A397788((n+1)/#)]`
-/

namespace A304183.P9798225241096932495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A397788 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304183.P9798225241096932495

namespace A304183

/-- `∑{d}[n+1, A048691(#)*A397788((n+1)/#)]` -/
def P9798225241096932495.Spec : Prop :=
  ∀ n, P9798225241096932495.a n = A304183 (n + 1)

end A304183

/-! ## A304183.P13507120528995133866

`∑{d}[n+1, A226107(#)*A323239((n+1)/#)]`
-/

namespace A304183.P13507120528995133866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226107 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304183.P13507120528995133866

namespace A304183

/-- `∑{d}[n+1, A226107(#)*A323239((n+1)/#)]` -/
def P13507120528995133866.Spec : Prop :=
  ∀ n, P13507120528995133866.a n = A304183 (n + 1)

end A304183

/-! ## A304183.P4916382576288431628

`∑{d}[n+1, A004526(#-1)*A008966((n+1)/#)]`
-/

namespace A304183.P4916382576288431628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (d - 1) * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304183.P4916382576288431628

namespace A304183

/-- `∑{d}[n+1, A004526(#-1)*A008966((n+1)/#)]` -/
def P4916382576288431628.Spec : Prop :=
  ∀ n, P4916382576288431628.a n = A304183 (n + 1)

end A304183

/-! ## A304183.P15006067883072145777

`A004526(A001615(n+1))-A157226(n+1)`
-/

namespace A304183.P15006067883072145777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001615 (n + 1)).toNat - A157226 (n + 1)

end

end A304183.P15006067883072145777

namespace A304183

/-- `A004526(A001615(n+1))-A157226(n+1)` -/
def P15006067883072145777.Spec : Prop :=
  ∀ n, P15006067883072145777.a n = A304183 (n + 1)

end A304183

/-! ## A304183.P2678240187216541504

`A001281(A001615(n+1)-A304182(n+1))`
-/

namespace A304183.P2678240187216541504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001615 (n + 1) - A304182 (n + 1)).toNat

end

end A304183.P2678240187216541504

namespace A304183

/-- `A001281(A001615(n+1)-A304182(n+1))` -/
def P2678240187216541504.Spec : Prop :=
  ∀ n, P2678240187216541504.a n = A304183 (n + 1)

end A304183

/-! ## A304183.P210084574568817945

`A004525(A001615(n+1)-A304182(n+1))`
-/

namespace A304183.P210084574568817945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001615 (n + 1) - A304182 (n + 1)).toNat

end

end A304183.P210084574568817945

namespace A304183

/-- `A004525(A001615(n+1)-A304182(n+1))` -/
def P210084574568817945.Spec : Prop :=
  ∀ n, P210084574568817945.a n = A304183 (n + 1)

end A304183

/-!
# A304184: G.f. A(x) satisfies: 0 = [x^n] (1+x)^(n*(n-1)/2) / A(x) for n>0.

The programs for A304184, there is no canonical definition to state claims against.
-/

/-! ## A304184.P13777172923409412746

`A321378(n*ceil(n²/2))`
-/

namespace A304184.P13777172923409412746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 ((n : ℤ) * ⌈(n ^ 2 : ℚ) / 2⌉).toNat

end

end A304184.P13777172923409412746

/-! ## A304184.P6220055732174886093

`A110701(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A304184.P6220055732174886093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A110701 (a (n - 1)).toNat

end

end A304184.P6220055732174886093

/-!
# A304185: G.f. A(x) satisfies: 0 = [x^n] (1+x)^(n*(n+1)/2) / A(x) for n>0.

The programs for A304185, there is no canonical definition to state claims against.
-/

/-! ## A304185.P822246404779082841

`∏{p}[A002295(ceil(C(n, 2)/2)), #]`
-/

namespace A304185.P822246404779082841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 ⌈(Nat.choose n 2 : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A304185.P822246404779082841

/-! ## A304185.P3365632841159341118

`∏{p}[A002295(floor(2^n/(n+1))), #]`
-/

namespace A304185.P3365632841159341118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A304185.P3365632841159341118

/-!
# A304186: G.f. A(x) satisfies: 0 = [x^n] (1+x)^((n+1)*(n+2)/2) / A(x) for n>0.

The programs for A304186, there is no canonical definition to state claims against.
-/

/-! ## A304186.P14208850107418384264

`A110532(A000312(n))+A004793(n+1)`
-/

namespace A304186.P14208850107418384264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (A000312 n).toNat + A004793 (n + 1)

end

end A304186.P14208850107418384264

/-! ## A304186.P10742030090760984879

`A004396(A292462(n)+A034448(n+1))`
-/

namespace A304186.P10742030090760984879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A292462 n + A034448 (n + 1)).toNat

end

end A304186.P10742030090760984879

/-!
# A304187: G.f. A(x) satisfies: 0 = [x^n] (1+x)^((n+2)*(n+3)/2) / A(x) for n>0.

The programs for A304187, there is no canonical definition to state claims against.
-/

/-! ## A304187.P612790358737967905

`A008619(∑[10*n]+floor(10^n/9))`
-/

namespace A304187.P612790358737967905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(10 ^ n : ℚ) / 9⌋).toNat

end

end A304187.P612790358737967905

/-!
# A304189: G.f. A(x) satisfies: [x^n] (1+x)^(n*(n-1)) / A(x) = 0 for n>0.

The programs for A304189, there is no canonical definition to state claims against.
-/

/-! ## A304189.P15480586671040249778

`A325190(2^(n+1))/2`
-/

namespace A304189.P15480586671040249778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325190 (2 ^ (n + 1)) : ℚ) / 2

end

end A304189.P15480586671040249778

/-!
# A304190: G.f. A(x) satisfies: [x^n] (1+x)^((n-1)^2) / A(x) = 0 for n>0.

The programs for A304190, there is no canonical definition to state claims against.
-/

/-! ## A304190.P6236149623918376332

`A002473(A098620(n))%A006126(n)`
-/

namespace A304190.P6236149623918376332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002473 (A098620 n).toNat) (A006126 n)

end

end A304190.P6236149623918376332

/-! ## A304190.P5589019086071937230

`lcm(A065730(n+1), A325788(A000098(n)))`
-/

namespace A304190.P5589019086071937230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065730 (n + 1)) (A325788 (A000098 n).toNat)

end

end A304190.P5589019086071937230

/-!
# A304191: G.f. A(x) satisfies: [x^n] (1+x)^(n^2) / A(x) = 0 for n > 0.

The programs for A304191, there is no canonical definition to state claims against.
-/

/-! ## A304191.P5980192431653120736

`A062968(∑[n!²])`
-/

namespace A304191.P5980192431653120736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304191.P5980192431653120736

/-!
# A304192: G.f. A(x) satisfies: [x^n] (1+x)^(n*(n+1)) / A(x) = 0 for n>0.

The programs for A304192, there is no canonical definition to state claims against.
-/

/-! ## A304192.P8223635430286017593

`A132345(10*(a(n-1)+a(n-2)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A304192.P8223635430286017593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  A132345 (10 * (a (n - 1) + a (n - 2) - a (n - 3))).toNat

end

end A304192.P8223635430286017593

/-!
# A304193: G.f. A(x) satisfies: [x^n] (1+x)^((n+1)^2) / A(x) = 0 for n>0.

The programs for A304193, there is no canonical definition to state claims against.
-/

/-! ## A304193.P8945147520375590806

`A320628(A000040(a(n-1)))+2` with `a(0)=1`
-/

namespace A304193.P8945147520375590806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320628 (A000040 (a (n - 1)).toNat).toNat + 2

end

end A304193.P8945147520375590806

/-!
# A304194: Numbers k such that k = Product (p_j^e_j) = Product (pi(p_j)*p_j), where pi() = A000720.

The programs for A304194, there is no canonical definition to state claims against.
-/

/-! ## A304194.P6205624656991115878

`eq[A003557(n+1), A156061(n+1)]+1`
-/

namespace A304194.P6205624656991115878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304194.P6205624656991115878

/-! ## A304194.P7573072099892663706

`eq[A203639(n+1), A304117(n+1)]+1`
-/

namespace A304194.P7573072099892663706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A304194.P7573072099892663706

/-!
# A304196: Number of free tree-like polycubes of size n in three dimensions.

The programs for A304196, there is no canonical definition to state claims against.
-/

/-! ## A304196.P7321539227815051549

`A034973(3*A134055(n))`
-/

namespace A304196.P7321539227815051549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (3 * A134055 n).toNat

end

end A304196.P7321539227815051549

/-! ## A304196.P17898609943920799094

`A059169(5*A002135(n))`
-/

namespace A304196.P17898609943920799094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (5 * A002135 n).toNat

end

end A304196.P17898609943920799094

/-! ## A304196.P1761867344314286036

`A289438(5*A002135(n))`
-/

namespace A304196.P1761867344314286036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (5 * A002135 n).toNat

end

end A304196.P1761867344314286036

/-!
# A304197: Number of fully-leafed free tree-like 3d-polycubes of size n.

The programs for A304197, there is no canonical definition to state claims against.
-/

/-! ## A304197.P2595482698132418662

`A057593(A003418(n)+A000110(n))`
-/

namespace A304197.P2595482698132418662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057593 (A003418 n + A000110 n).toNat

end

end A304197.P2595482698132418662

/-! ## A304197.P9101453655473695704

`A003557(A151897(n)*A155212(n))`
-/

namespace A304197.P9101453655473695704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A151897 n * A155212 n).toNat

end

end A304197.P9101453655473695704

/-! ## A304197.P3888044966832386723

`A000010(A000267(n)^A144385(n))`
-/

namespace A304197.P3888044966832386723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000267 n : ℚ) ^ (A144385 n : ℤ))).toNat

end

end A304197.P3888044966832386723

/-! ## A304197.P18356361886082597554

`A133388(A225812(n)^A306641(n))`
-/

namespace A304197.P18356361886082597554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (SequenceMachineLib.roundAway ((A225812 n : ℚ) ^ (A306641 n : ℤ))).toNat

end

end A304197.P18356361886082597554

/-! ## A304197.P17664046745309522440

`A241061(A274824(n+1)^A295260(n+1))`
-/

namespace A304197.P17664046745309522440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241061 (SequenceMachineLib.roundAway ((A274824 (n + 1) : ℚ) ^ (A295260 (n + 1) : ℤ))).toNat

end

end A304197.P17664046745309522440

/-!
# A304198: Number of free tree-like 4d-polycubes of size n.

The programs for A304198, there is no canonical definition to state claims against.
-/

/-! ## A304198.P5942882017205224565

`A230513(A000104(n))+A000142(n)`
-/

namespace A304198.P5942882017205224565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A000104 n).toNat + A000142 n

end

end A304198.P5942882017205224565

/-! ## A304198.P18331332515328404441

`A230513(A000105(n))+A000142(n)`
-/

namespace A304198.P18331332515328404441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A000105 n).toNat + A000142 n

end

end A304198.P18331332515328404441

/-! ## A304198.P2293355057651328236

`A230513(A002905(n))+A000142(n)`
-/

namespace A304198.P2293355057651328236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230513 (A002905 n).toNat + A000142 n

end

end A304198.P2293355057651328236

