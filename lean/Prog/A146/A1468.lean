import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A146800: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146800, there is no canonical definition to state claims against.
-/

/-! ## A146800.P3202447830055784778

`or(A146776(n+1), A210955(A212385(n)))`
-/

namespace A146800.P3202447830055784778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (n + 1)) (A210955 (A212385 n).toNat)

end

end A146800.P3202447830055784778

/-! ## A146800.P11506212174599326044

`or(A147202(n+1), A210955(A212385(n)))`
-/

namespace A146800.P11506212174599326044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147202 (n + 1)) (A210955 (A212385 n).toNat)

end

end A146800.P11506212174599326044

/-! ## A146800.P3401055205279652224

`or(A146776(n+1), A316897(A123289(n)))`
-/

namespace A146800.P3401055205279652224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146776 (n + 1)) (A316897 (A123289 (n + 32)).toNat)

end

end A146800.P3401055205279652224

/-! ## A146800.P2081629970920728932

`or(A147202(n+1), A316897(A123289(n)))`
-/

namespace A146800.P2081629970920728932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147202 (n + 1)) (A316897 (A123289 (n + 32)).toNat)

end

end A146800.P2081629970920728932

/-!
# A146802: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146802, there is no canonical definition to state claims against.
-/

/-! ## A146802.P1989518054934796932

`A146804(2*(n+2))`
-/

namespace A146802.P1989518054934796932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146804 (2 * (n + 2))

end

end A146802.P1989518054934796932

/-! ## A146802.P8042250261300577672

`∏{d}[n, A146804(A062545(#))]`
-/

namespace A146802.P8042250261300577672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A146804 (A062545 d).toNat

end

end A146802.P8042250261300577672

/-! ## A146802.P13720738918756213297

`or(1, A146804(A288464(n+1)))`
-/

namespace A146802.P13720738918756213297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146804 (A288464 (n + 1)).toNat)

end

end A146802.P13720738918756213297

/-! ## A146802.P10575842227116289395

`or(1, A146804(A336408(n+1)))`
-/

namespace A146802.P10575842227116289395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146804 (A336408 (n + 1)).toNat)

end

end A146802.P10575842227116289395

/-! ## A146802.P16441800403154412776

`∏{d}[A288464(n+1), A146804(#)]`
-/

namespace A146802.P16441800403154412776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146804 d

end

end A146802.P16441800403154412776

/-!
# A146803: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146803, there is no canonical definition to state claims against.
-/

/-! ## A146803.P6997942082010379083

`or(A067168(A068044(n)), A146638(n+1))`
-/

namespace A146803.P6997942082010379083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067168 ((A068044 n).toNat + 10)) (A146638 (n + 1))

end

end A146803.P6997942082010379083

/-! ## A146803.P11257970383201329988

`A239737(A184955(n+4))+A146710(n+1)`
-/

namespace A146803.P11257970383201329988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239737 (A184955 (n + 4)).toNat + A146710 (n + 1)

end

end A146803.P11257970383201329988

/-! ## A146803.P15003883768834513802

`or(A001221(A146691(n+1)), A146710(n+1))`
-/

namespace A146803.P15003883768834513802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A146691 (n + 1)).toNat) (A146710 (n + 1))

end

end A146803.P15003883768834513802

/-! ## A146803.P14724803892344821113

`or(A034253(A147025(n+1)), A147055(n+1))`
-/

namespace A146803.P14724803892344821113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034253 (A147025 (n + 1)).toNat) (A147055 (n + 1))

end

end A146803.P14724803892344821113

/-! ## A146803.P4322172786496861399

`or(A122315(A146638(n+1)), A146630(n+1))`
-/

namespace A146803.P4322172786496861399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122315 (A146638 (n + 1)).toNat) (A146630 (n + 1))

end

end A146803.P4322172786496861399

/-!
# A146804: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146804, there is no canonical definition to state claims against.
-/

/-! ## A146804.P3292893082913751500

`A146802(A028310(floor(n/2)))`
-/

namespace A146804.P3292893082913751500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146802 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146804.P3292893082913751500

/-!
# A146805: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146805, there is no canonical definition to state claims against.
-/

/-! ## A146805.P11280075956131426574

`A147057(n+1)-A339089(A146710(n+1))`
-/

namespace A146805.P11280075956131426574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147057 (n + 1) - A339089 (A146710 (n + 1)).toNat

end

end A146805.P11280075956131426574

/-! ## A146805.P17724969854105047966

`A147057(n+1)-A339089(A146819(n+1))`
-/

namespace A146805.P17724969854105047966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147057 (n + 1) - A339089 (A146819 (n + 1)).toNat

end

end A146805.P17724969854105047966

/-! ## A146805.P4733663745186943667

`A147057((n+1)*∑[char[10*n]])`
-/

namespace A146805.P4733663745186943667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147057 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A146805.P4733663745186943667

/-! ## A146805.P14300077899085178837

`A284565(A292080(n))`
-/

namespace A146805.P14300077899085178837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (A292080 n).toNat

end

end A146805.P14300077899085178837

/-! ## A146805.P2414970966604005232

`filter[A147057(n+1), A089939(#)]`
-/

namespace A146805.P2414970966604005232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A146805.P2414970966604005232

/-!
# A146806: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146806, there is no canonical definition to state claims against.
-/

/-! ## A146806.P4091004823551421869

`A114513(C(n, 4)-A114511(n))`
-/

namespace A146806.P4091004823551421869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114513 ((Nat.choose n 4 : ℤ) - A114511 n).toNat

end

end A146806.P4091004823551421869

/-! ## A146806.P7189176016716552485

`A285486(A001384(n)^floor(2*n/5))`
-/

namespace A146806.P7189176016716552485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285486 (SequenceMachineLib.roundAway ((A001384 n : ℚ) ^ (⌊2 * ((n : ℚ) / 5)⌋ : ℤ))).toNat

end

end A146806.P7189176016716552485

/-! ## A146806.P15288737268149795619

`A141345(A347999(n)+A000088(n))`
-/

namespace A146806.P15288737268149795619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141345 (A347999 n + A000088 n).toNat

end

end A146806.P15288737268149795619

/-! ## A146806.P15863059723769793800

`A114513(A000332(n)-A114511(n))`
-/

namespace A146806.P15863059723769793800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114513 (A000332 n - A114511 n).toNat

end

end A146806.P15863059723769793800

/-!
# A146807: Number of n X n binary arrays with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146807, there is no canonical definition to state claims against.
-/

/-! ## A146807.P1876465288613039403

`A146809(2*(n+2))`
-/

namespace A146807.P1876465288613039403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146809 (2 * (n + 2))

end

end A146807.P1876465288613039403

/-! ## A146807.P6973874920882431433

`or(1, A146809(A144396(n+1)))`
-/

namespace A146807.P6973874920882431433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146809 (A144396 (n + 1)).toNat)

end

end A146807.P6973874920882431433

/-! ## A146807.P15255212882284143305

`A261424(n)+A146809(A144396(n+1))`
-/

namespace A146807.P15255212882284143305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n + A146809 (A144396 (n + 1)).toNat

end

end A146807.P15255212882284143305

/-! ## A146807.P9968803665580728231

`A146809(A144396(n+1))/A125950(n)`
-/

namespace A146807.P9968803665580728231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146809 (A144396 (n + 1)).toNat : ℚ) / (A125950 n : ℚ)

end

end A146807.P9968803665580728231

/-! ## A146807.P10522532647139039312

`gcd(A058276(n), A146809(A144396(n+1)))`
-/

namespace A146807.P10522532647139039312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058276 n) (A146809 (A144396 (n + 1)).toNat)

end

end A146807.P10522532647139039312

/-!
# A146808: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146808, there is no canonical definition to state claims against.
-/

/-! ## A146808.P8534314940327951542

`and(A147232(n+1), A147250(A168204(n+1)))`
-/

namespace A146808.P8534314940327951542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147232 (n + 1)) (A147250 (A168204 (n + 1)).toNat)

end

end A146808.P8534314940327951542

/-!
# A146809: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146809, there is no canonical definition to state claims against.
-/

/-! ## A146809.P7202711327543949367

`A146817(A051053(n)+1)`
-/

namespace A146809.P7202711327543949367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146817 (A051053 n + 1).toNat

end

end A146809.P7202711327543949367

/-! ## A146809.P14284925735766116757

`A093413(A146447(n+1))`
-/

namespace A146809.P14284925735766116757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A146447 (n + 1)).toNat

end

end A146809.P14284925735766116757

/-! ## A146809.P8708373715311351762

`A128006(A147093(n+1))`
-/

namespace A146809.P8708373715311351762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (A147093 (n + 1)).toNat

end

end A146809.P8708373715311351762

/-! ## A146809.P3256257626103208667

`A128006(A147101(n+1))`
-/

namespace A146809.P3256257626103208667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (A147101 (n + 1)).toNat

end

end A146809.P3256257626103208667

/-! ## A146809.P8921580137728302242

`A128006(A147141(n+1))`
-/

namespace A146809.P8921580137728302242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128006 (A147141 (n + 1)).toNat

end

end A146809.P8921580137728302242

/-!
# A146810: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146810, there is no canonical definition to state claims against.
-/

/-! ## A146810.P8010044882584550187

`A146812(2*(n+2))`
-/

namespace A146810.P8010044882584550187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146812 (2 * (n + 2))

end

end A146810.P8010044882584550187

/-! ## A146810.P6762294047410228833

`or(1, A146812(A184809(n+1)))`
-/

namespace A146810.P6762294047410228833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146812 (A184809 (n + 1)).toNat)

end

end A146810.P6762294047410228833

/-! ## A146810.P10771476678180011043

`or(1, A146812(A284534(n+1)))`
-/

namespace A146810.P10771476678180011043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146812 (A284534 (n + 1)).toNat)

end

end A146810.P10771476678180011043

/-! ## A146810.P14908235828962094225

`A000027(A146812(n+3+n))`
-/

namespace A146810.P14908235828962094225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146812 (n + 3 + n)).toNat

end

end A146810.P14908235828962094225

/-! ## A146810.P5917258548129169882

`A028310(A146812(Δ[(n+1)²]))`
-/

namespace A146810.P5917258548129169882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146810.P5917258548129169882

/-!
# A146811: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146811, there is no canonical definition to state claims against.
-/

/-! ## A146811.P117634840977201056

`A347520(a(n-1))+a(n-1)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A146811.P117634840977201056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  A347520 (a (n - 1)).toNat + a (n - 1) + 1

end

end A146811.P117634840977201056

/-! ## A146811.P6938421524828741729

`A160014(C(A336010(n), 2))`
-/

namespace A146811.P6938421524828741729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (Nat.choose (A336010 n).toNat 2)

end

end A146811.P6938421524828741729

/-! ## A146811.P12917741202957959915

`A000194(A147235(n+1)²)`
-/

namespace A146811.P12917741202957959915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A147235 (n + 1) ^ 2).toNat

end

end A146811.P12917741202957959915

/-! ## A146811.P134627727884802855

`A003557(A147235(n+1)²)`
-/

namespace A146811.P134627727884802855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A147235 (n + 1) ^ 2).toNat

end

end A146811.P134627727884802855

/-! ## A146811.P15930098078628876652

`A046692(A147235(n+1)^2)`
-/

namespace A146811.P15930098078628876652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A147235 (n + 1) ^ 2).toNat

end

end A146811.P15930098078628876652

/-!
# A146812: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146812, there is no canonical definition to state claims against.
-/

/-! ## A146812.P1705653342464181808

`A146810(A028310(floor(n/2)))`
-/

namespace A146812.P1705653342464181808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146810 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146812.P1705653342464181808

/-! ## A146812.P13634497384039408453

`A146836(n+1)+A077600(A146599(n+1))`
-/

namespace A146812.P13634497384039408453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146836 (n + 1) + A077600 (A146599 (n + 1)).toNat

end

end A146812.P13634497384039408453

/-! ## A146812.P16582590405749690193

`A146836(n+1)+A077600(A147236(n+1))`
-/

namespace A146812.P16582590405749690193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146836 (n + 1) + A077600 (A147236 (n + 1)).toNat

end

end A146812.P16582590405749690193

/-! ## A146812.P12840618313460659489

`A146442(n+1)-A077600(A146836(n+1))`
-/

namespace A146812.P12840618313460659489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146442 (n + 1) - A077600 (A146836 (n + 1)).toNat

end

end A146812.P12840618313460659489

/-! ## A146812.P12720020989203446978

`A147236(n+1)-A294137(A146599(n+1))`
-/

namespace A146812.P12720020989203446978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147236 (n + 1) - A294137 (A146599 (n + 1)).toNat

end

end A146812.P12720020989203446978

/-!
# A146813: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146813, there is no canonical definition to state claims against.
-/

/-! ## A146813.P12137028450456622990

`A095274(A146371(n+1))`
-/

namespace A146813.P12137028450456622990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A146371 (n + 1)).toNat

end

end A146813.P12137028450456622990

/-! ## A146813.P903239590819712176

`A095274(A146379(n+1))`
-/

namespace A146813.P903239590819712176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A146379 (n + 1)).toNat

end

end A146813.P903239590819712176

/-! ## A146813.P15963591240115417133

`A114033(A307856(n+1))`
-/

namespace A146813.P15963591240115417133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114033 (A307856 (n + 1)).toNat

end

end A146813.P15963591240115417133

/-! ## A146813.P7485002751620336415

`A256537(A010750(n))`
-/

namespace A146813.P7485002751620336415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (A010750 n).toNat

end

end A146813.P7485002751620336415

/-! ## A146813.P6792258006670831063

`A293682(A038503(n))`
-/

namespace A146813.P6792258006670831063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293682 (A038503 n).toNat

end

end A146813.P6792258006670831063

/-!
# A146814: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1010-1111 pattern in any orientation.

The programs for A146814, there is no canonical definition to state claims against.
-/

/-! ## A146814.P13864851079028424489

`or(1, A008617(A340598(n+2)))`
-/

namespace A146814.P13864851079028424489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008617 (A340598 (n + 2)).toNat)

end

end A146814.P13864851079028424489

/-! ## A146814.P6498301222554806348

`A247282(A055879(n+1)+A000142(n))`
-/

namespace A146814.P6498301222554806348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247282 (A055879 (n + 1) + A000142 n).toNat

end

end A146814.P6498301222554806348

/-!
# A146815: Number of n X n binary arrays with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146815, there is no canonical definition to state claims against.
-/

/-! ## A146815.P12208749861563340835

`A146817(2*(n+2))`
-/

namespace A146815.P12208749861563340835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146817 (2 * (n + 2))

end

end A146815.P12208749861563340835

/-! ## A146815.P1620385122176789034

`or(1, A146817(A144396(n+1)))`
-/

namespace A146815.P1620385122176789034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146817 (A144396 (n + 1)).toNat)

end

end A146815.P1620385122176789034

/-!
# A146817: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146817, there is no canonical definition to state claims against.
-/

/-! ## A146817.P13534107250585265073

`A146815(A028310(floor(n/2)))`
-/

namespace A146817.P13534107250585265073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146815 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146817.P13534107250585265073

/-!
# A146818: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146818, there is no canonical definition to state claims against.
-/

/-! ## A146818.P7391382955548294690

`A146820(2*n+3)`
-/

namespace A146818.P7391382955548294690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146820 (2 * n + 3)

end

end A146818.P7391382955548294690

/-! ## A146818.P7010271246704663820

`or(1, A146820(A144396(n+1)))`
-/

namespace A146818.P7010271246704663820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146820 (A144396 (n + 1)).toNat)

end

end A146818.P7010271246704663820

/-! ## A146818.P13478014695643331602

`or(1, A146820(A160217(n+1)))`
-/

namespace A146818.P13478014695643331602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146820 (A160217 (n + 1)).toNat)

end

end A146818.P13478014695643331602

/-! ## A146818.P8268642105585842698

`or(1, A146820(A346302(n+1)))`
-/

namespace A146818.P8268642105585842698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146820 (A346302 (n + 1)).toNat)

end

end A146818.P8268642105585842698

/-! ## A146818.P12177032039484212636

`∏{d}[A005408(n+1), A146820(#)]`
-/

namespace A146818.P12177032039484212636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146820 d

end

end A146818.P12177032039484212636

/-!
# A146819: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146819, there is no canonical definition to state claims against.
-/

/-! ## A146819.P13057657836903103523

`A147213(A120397(2*(n+1)))`
-/

namespace A146819.P13057657836903103523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147213 (A120397 (2 * (n + 1))).toNat

end

end A146819.P13057657836903103523

/-! ## A146819.P12335972809477899109

`A147213(A008835(n+4)+n)`
-/

namespace A146819.P12335972809477899109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147213 (A008835 (n + 4) + (n : ℤ)).toNat

end

end A146819.P12335972809477899109

/-! ## A146819.P9858794320148881172

`filter[A147213(n+1), A079421(#)]`
-/

namespace A146819.P9858794320148881172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A146819.P9858794320148881172

/-! ## A146819.P18110337063205527900

`filter[A147213(n+1), A122255(#)]`
-/

namespace A146819.P18110337063205527900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A146819.P18110337063205527900

/-! ## A146819.P17696514377014750983

`filter[A147213(n+1), A167020(#)]`
-/

namespace A146819.P17696514377014750983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A146819.P17696514377014750983

/-!
# A146820: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146820, there is no canonical definition to state claims against.
-/

/-! ## A146820.P4333906654457509327

`or(1, A003005(A147244(n+1)))`
-/

namespace A146820.P4333906654457509327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003005 (A147244 (n + 1)).toNat)

end

end A146820.P4333906654457509327

/-! ## A146820.P8656744003412087930

`or(1, A088725(A146812(n+1)))`
-/

namespace A146820.P8656744003412087930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A088725 (A146812 (n + 1)).toNat)

end

end A146820.P8656744003412087930

/-! ## A146820.P10001705235697660163

`or(A146442(n+1), A195310(A146836(n+1)))`
-/

namespace A146820.P10001705235697660163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146442 (n + 1)) (A195310 (A146836 (n + 1)).toNat)

end

end A146820.P10001705235697660163

/-!
# A146821: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146821, there is no canonical definition to state claims against.
-/

/-! ## A146821.P9032831703093740371

`A238256(A068043(n+1))`
-/

namespace A146821.P9032831703093740371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (A068043 (n + 1)).toNat

end

end A146821.P9032831703093740371

/-! ## A146821.P1916517171486604238

`A365078(A365079(n)+A365067(n+3))`
-/

namespace A146821.P1916517171486604238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365078 (A365079 n + A365067 (n + 3)).toNat

end

end A146821.P1916517171486604238

/-! ## A146821.P5475538420619695885

`A095274(or(A146371(n+1), A279519(n)))`
-/

namespace A146821.P5475538420619695885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (Int.lor (A146371 (n + 1)) (A279519 n)).toNat

end

end A146821.P5475538420619695885

/-! ## A146821.P11523498105895705047

`A095274(or(A146379(n+1), A279519(n)))`
-/

namespace A146821.P11523498105895705047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (Int.lor (A146379 (n + 1)) (A279519 n)).toNat

end

end A146821.P11523498105895705047

/-! ## A146821.P15164248271653899222

`or(A033665(A133033(n+1)), A147215(n+1))`
-/

namespace A146821.P15164248271653899222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A133033 (n + 1)).toNat) (A147215 (n + 1))

end

end A146821.P15164248271653899222

/-!
# A146822: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1110-0111 pattern in any orientation.

The programs for A146822, there is no canonical definition to state claims against.
-/

/-! ## A146822.P2568622334292094579

`A326546(A147240(n+1))+A147216(n+1)`
-/

namespace A146822.P2568622334292094579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 (A147240 (n + 1)).toNat + A147216 (n + 1)

end

end A146822.P2568622334292094579

/-!
# A146823: Number of n X n binary arrays with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146823, there is no canonical definition to state claims against.
-/

/-! ## A146823.P11837788197945510216

`A146825(2*(n+2))`
-/

namespace A146823.P11837788197945510216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146825 (2 * (n + 2))

end

end A146823.P11837788197945510216

/-! ## A146823.P9906267391904757819

`or(1, A146825(A144396(n+1)))`
-/

namespace A146823.P9906267391904757819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146825 (A144396 (n + 1)).toNat)

end

end A146823.P9906267391904757819

/-! ## A146823.P5891343192000673012

`A146825(A144396(n+1))^A265404(n)`
-/

namespace A146823.P5891343192000673012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146825 (A144396 (n + 1)).toNat : ℚ) ^ (A265404 n : ℤ)

end

end A146823.P5891343192000673012

/-! ## A146823.P15252983743792908517

`A146825(A144396(n+1))%A134497(n)`
-/

namespace A146823.P15252983743792908517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146825 (A144396 (n + 1)).toNat) (A134497 n)

end

end A146823.P15252983743792908517

/-! ## A146823.P10901933104434965580

`A146825(A144396(n+1))^A007318(∑[n])`
-/

namespace A146823.P10901933104434965580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146825 (A144396 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A146823.P10901933104434965580

/-!
# A146824: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146824, there is no canonical definition to state claims against.
-/

/-! ## A146824.P12268035835603269009

`A147171(∑[A147187(n+1)])`
-/

namespace A146824.P12268035835603269009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146824.P12268035835603269009

/-! ## A146824.P9201435325955505591

`A147171(A181661(∑[n+1]))`
-/

namespace A146824.P9201435325955505591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147171 (A181661 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146824.P9201435325955505591

/-! ## A146824.P6734604347891310973

`A147171(A363365(∑[n+1]))`
-/

namespace A146824.P6734604347891310973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147171 (A363365 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146824.P6734604347891310973

/-! ## A146824.P13534564445671566663

`A147171(A247813(n+1)+1)`
-/

namespace A146824.P13534564445671566663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147171 (A247813 (n + 1) + 1).toNat

end

end A146824.P13534564445671566663

/-! ## A146824.P15523179535227424573

`A185392(A147171(n+1))/2`
-/

namespace A146824.P15523179535227424573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185392 (A147171 (n + 1)).toNat : ℚ) / 2

end

end A146824.P15523179535227424573

/-!
# A146825: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146825, there is no canonical definition to state claims against.
-/

/-! ## A146825.P96051151248831824

`A004526(2*A147172(n+1))`
-/

namespace A146825.P96051151248831824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A147172 (n + 1)).toNat

end

end A146825.P96051151248831824

/-! ## A146825.P13903229636485597439

`A026741(2*A147172(n+1))`
-/

namespace A146825.P13903229636485597439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A147172 (n + 1)).toNat

end

end A146825.P13903229636485597439

/-! ## A146825.P18169538850041916779

`A123108(2*A147172(n+1))`
-/

namespace A146825.P18169538850041916779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A147172 (n + 1)).toNat

end

end A146825.P18169538850041916779

/-! ## A146825.P17084767430222909395

`A147172(or(n, A147152(n+1)))`
-/

namespace A146825.P17084767430222909395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147172 (Int.lor (n : ℤ) (A147152 (n + 1))).toNat

end

end A146825.P17084767430222909395

/-! ## A146825.P18383427871024236958

`filter[A147172(n+1), A030324(#)]`
-/

namespace A146825.P18383427871024236958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030324 (f1 j).toNat = 1) n)

end

end A146825.P18383427871024236958

/-!
# A146826: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146826, there is no canonical definition to state claims against.
-/

/-! ## A146826.P6095875753991876233

`A146828(2*(n+2))`
-/

namespace A146826.P6095875753991876233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146828 (2 * (n + 2))

end

end A146826.P6095875753991876233

/-! ## A146826.P14228876327116084670

`or(1, A146828(A092858(n+1)))`
-/

namespace A146826.P14228876327116084670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146828 (A092858 (n + 1)).toNat)

end

end A146826.P14228876327116084670

/-! ## A146826.P11925403206608440282

`or(1, A146828(A144396(n+1)))`
-/

namespace A146826.P11925403206608440282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146828 (A144396 (n + 1)).toNat)

end

end A146826.P11925403206608440282

/-! ## A146826.P16324406990905597404

`or(1, A146828(A329838(n+1)))`
-/

namespace A146826.P16324406990905597404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146828 (A329838 (n + 1)).toNat)

end

end A146826.P16324406990905597404

/-! ## A146826.P4569668064911333152

`A028310(A146828(Δ[(n+1)²]))`
-/

namespace A146826.P4569668064911333152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146828 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146826.P4569668064911333152

/-!
# A146827: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146827, there is no canonical definition to state claims against.
-/

/-! ## A146827.P16299026315815261282

`A112649(A147189(n+1))`
-/

namespace A146827.P16299026315815261282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112649 (A147189 (n + 1)).toNat

end

end A146827.P16299026315815261282

/-! ## A146827.P2024197694945314465

`A194057(A147401(n+2))`
-/

namespace A146827.P2024197694945314465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194057 (A147401 (n + 2)).toNat

end

end A146827.P2024197694945314465

/-! ## A146827.P14384085339643744046

`filter[A133847(n+2), A145099(#)]`
-/

namespace A146827.P14384085339643744046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145099 (f1 j).toNat = 1) n)

end

end A146827.P14384085339643744046

/-! ## A146827.P17281479138518586059

`A161700(∏{d}[A309438(n+3), #])`
-/

namespace A146827.P17281479138518586059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309438 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161700 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A146827.P17281479138518586059

/-! ## A146827.P2852128730154601276

`A300362(∑[∑[A258204(n+1)]])`
-/

namespace A146827.P2852128730154601276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146827.P2852128730154601276

/-!
# A146828: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146828, there is no canonical definition to state claims against.
-/

/-! ## A146828.P4467159560836264935

`A105362(A146607(n+1))`
-/

namespace A146828.P4467159560836264935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105362 (A146607 (n + 1)).toNat

end

end A146828.P4467159560836264935

/-! ## A146828.P1015059622010535777

`A131319(A147190(n+1))`
-/

namespace A146828.P1015059622010535777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A147190 (n + 1)).toNat

end

end A146828.P1015059622010535777

/-!
# A146829: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1111-0100-0100 pattern in any orientation.

The programs for A146829, there is no canonical definition to state claims against.
-/

/-! ## A146829.P2935939135271378879

`A249620(A218629(n))`
-/

namespace A146829.P2935939135271378879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249620 (A218629 n).toNat

end

end A146829.P2935939135271378879

/-! ## A146829.P7274579220248541369

`A323495(2*A060455(n))`
-/

namespace A146829.P7274579220248541369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323495 (2 * A060455 n).toNat

end

end A146829.P7274579220248541369

/-! ## A146829.P2803580440191402255

`and(63, A320800(A001678(n)))`
-/

namespace A146829.P2803580440191402255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A320800 (A001678 n).toNat)

end

end A146829.P2803580440191402255

/-! ## A146829.P2186894605692685129

`A381770(∑[A169696(n+1)])`
-/

namespace A146829.P2186894605692685129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146829.P2186894605692685129

/-! ## A146829.P13156631231773821374

`A323495(A060455(n+1)+1)`
-/

namespace A146829.P13156631231773821374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323495 (A060455 (n + 1) + 1).toNat

end

end A146829.P13156631231773821374

/-!
# A146831: Number of n X n binary arrays with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146831, there is no canonical definition to state claims against.
-/

/-! ## A146831.P10276531135881193314

`A146833(2*(n+2))`
-/

namespace A146831.P10276531135881193314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146833 (2 * (n + 2))

end

end A146831.P10276531135881193314

/-! ## A146831.P10791227652040434514

`A000265(A146833(Δ[n²]+3))`
-/

namespace A146831.P10791227652040434514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A146833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat).toNat

end

end A146831.P10791227652040434514

/-! ## A146831.P16365680045279342038

`C(A146833(A306683(n+1)), A146833(n+1))`
-/

namespace A146831.P16365680045279342038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A146833 (A306683 (n + 1)).toNat).toNat (A146833 (n + 1)).toNat

end

end A146831.P16365680045279342038

/-!
# A146832: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146832, there is no canonical definition to state claims against.
-/

/-! ## A146832.P17632060652303808566

`and(p?[A077851(n)], A146611(n+1))`
-/

namespace A146832.P17632060652303808566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A146611 (n + 1))

end

end A146832.P17632060652303808566

/-! ## A146832.P10446910469291220273

`and(p?[A077851(n)], A146643(n+1))`
-/

namespace A146832.P10446910469291220273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A146643 (n + 1))

end

end A146832.P10446910469291220273

/-! ## A146832.P13992952529426170316

`and(p?[A077851(n)], A146848(n+1))`
-/

namespace A146832.P13992952529426170316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A146848 (n + 1))

end

end A146832.P13992952529426170316

/-! ## A146832.P15582323181835649421

`and(A007810(n+1), A146643(n+1))`
-/

namespace A146832.P15582323181835649421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007810 (n + 1)) (A146643 (n + 1))

end

end A146832.P15582323181835649421

/-! ## A146832.P13583984953370221510

`and(A007810(n+1), A146848(n+1))`
-/

namespace A146832.P13583984953370221510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007810 (n + 1)) (A146848 (n + 1))

end

end A146832.P13583984953370221510

/-!
# A146833: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146833, there is no canonical definition to state claims against.
-/

/-! ## A146833.P10235580330763556380

`or(A122675(A146647(n+1)), A146588(n+1))`
-/

namespace A146833.P10235580330763556380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122675 (A146647 (n + 1)).toNat) (A146588 (n + 1))

end

end A146833.P10235580330763556380

/-! ## A146833.P11524350974858366215

`or(A122675(A146647(n+1)), A146628(n+1))`
-/

namespace A146833.P11524350974858366215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122675 (A146647 (n + 1)).toNat) (A146628 (n + 1))

end

end A146833.P11524350974858366215

/-! ## A146833.P9671710554548175789

`or(A122675(A146647(n+1)), A146636(n+1))`
-/

namespace A146833.P9671710554548175789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122675 (A146647 (n + 1)).toNat) (A146636 (n + 1))

end

end A146833.P9671710554548175789

/-! ## A146833.P205934706828315711

`or(A146020(A146020(n+1)), A146628(n+1))`
-/

namespace A146833.P205934706828315711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146020 (A146020 (n + 1)).toNat) (A146628 (n + 1))

end

end A146833.P205934706828315711

/-! ## A146833.P1815445023510412536

`or(A146020(A146020(n+1)), A146636(n+1))`
-/

namespace A146833.P1815445023510412536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146020 (A146020 (n + 1)).toNat) (A146636 (n + 1))

end

end A146833.P1815445023510412536

/-!
# A146834: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146834, there is no canonical definition to state claims against.
-/

/-! ## A146834.P1317568159393280021

`A146836(2*(n+2))`
-/

namespace A146834.P1317568159393280021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146836 (2 * (n + 2))

end

end A146834.P1317568159393280021

/-! ## A146834.P8633438016724984998

`or(1, A146836(A144396(n+1)))`
-/

namespace A146834.P8633438016724984998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146836 (A144396 (n + 1)).toNat)

end

end A146834.P8633438016724984998

/-! ## A146834.P8931060136667178557

`or(1, A146836(A182318(n+1)))`
-/

namespace A146834.P8931060136667178557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146836 (A182318 (n + 1)).toNat)

end

end A146834.P8931060136667178557

/-! ## A146834.P4961995532376855255

`or(1, A146836(A336408(n+1)))`
-/

namespace A146834.P4961995532376855255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146836 (A336408 (n + 1)).toNat)

end

end A146834.P4961995532376855255

/-! ## A146834.P1354135085515846613

`∏{d}[A144396(n+1), A146836(#)]`
-/

namespace A146834.P1354135085515846613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146836 d

end

end A146834.P1354135085515846613

/-!
# A146836: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146836, there is no canonical definition to state claims against.
-/

/-! ## A146836.P9630268210668322822

`A146834(A028310(floor(n/2)))`
-/

namespace A146836.P9630268210668322822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146834 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146836.P9630268210668322822

/-! ## A146836.P10949831874159648311

`or(A146796(n+1), A185284(A278996(n+1)))`
-/

namespace A146836.P10949831874159648311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146796 (n + 1)) (A185284 (A278996 (n + 1)).toNat)

end

end A146836.P10949831874159648311

/-!
# A146837: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146837, there is no canonical definition to state claims against.
-/

/-! ## A146837.P1248055497244632700

`∏{d}[n, A146044(A051022(#))]`
-/

namespace A146837.P1248055497244632700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A146044 (A051022 d).toNat

end

end A146837.P1248055497244632700

/-! ## A146837.P12294850812869831060

`∏{d}[n, A146044(A338831(#))]`
-/

namespace A146837.P12294850812869831060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A146044 (A338831 d).toNat

end

end A146837.P12294850812869831060

/-! ## A146837.P11290926526917901236

`∏{d}[A276697(n+1), A146044(#)]`
-/

namespace A146837.P11290926526917901236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146044 d

end

end A146837.P11290926526917901236

/-! ## A146837.P14377806779679528327

`A146044(round(A146020(n+1)/acot(n)))`
-/

namespace A146837.P14377806779679528327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146044 (SequenceMachineLib.roundAway ((A146020 (n + 1) : ℝ) / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A146837.P14377806779679528327

/-! ## A146837.P10653112619562192323

`A146044(round(A146068(n+1)/acot(n)))`
-/

namespace A146837.P10653112619562192323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146044 (SequenceMachineLib.roundAway ((A146068 (n + 1) : ℝ) / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A146837.P10653112619562192323

/-!
# A146838: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1001-1111-0100 pattern in any orientation.

The programs for A146838, there is no canonical definition to state claims against.
-/

/-! ## A146838.P18035011811814015728

`A327415(A001629(n)^A002266(n))`
-/

namespace A146838.P18035011811814015728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327415 (SequenceMachineLib.roundAway ((A001629 n : ℚ) ^ (A002266 n : ℤ))).toNat

end

end A146838.P18035011811814015728

/-! ## A146838.P6901587947624261294

`A327415(C(A001629(n), A002266(n)))`
-/

namespace A146838.P6901587947624261294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327415 (Nat.choose (A001629 n).toNat (A002266 n).toNat)

end

end A146838.P6901587947624261294

/-! ## A146838.P14617380848008460284

`A005041(A005029(3*n)%A005035(n+1))`
-/

namespace A146838.P14617380848008460284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.tmod (A005029 (3 * n)) (A005035 (n + 1))).toNat

end

end A146838.P14617380848008460284

/-!
# A146839: Number of n X n binary arrays with all ones connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146839, there is no canonical definition to state claims against.
-/

/-! ## A146839.P9155487739852680014

`A146841(2*(n+2))`
-/

namespace A146839.P9155487739852680014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146841 (2 * (n + 2))

end

end A146839.P9155487739852680014

/-! ## A146839.P1695337532160827260

`or(1, A146841(A144396(n+1)))`
-/

namespace A146839.P1695337532160827260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146841 (A144396 (n + 1)).toNat)

end

end A146839.P1695337532160827260

/-! ## A146839.P3169083973654357229

`or(1, A146841(A160217(n+1)))`
-/

namespace A146839.P3169083973654357229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146841 (A160217 (n + 1)).toNat)

end

end A146839.P3169083973654357229

/-! ## A146839.P15562333310297708516

`or(1, A146841(A346302(n+1)))`
-/

namespace A146839.P15562333310297708516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146841 (A346302 (n + 1)).toNat)

end

end A146839.P15562333310297708516

/-! ## A146839.P4896854267975022645

`or(1, A146841(A211218(n+3)))`
-/

namespace A146839.P4896854267975022645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146841 (A211218 (n + 3)).toNat)

end

end A146839.P4896854267975022645

/-!
# A146840: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146840, there is no canonical definition to state claims against.
-/

/-! ## A146840.P9758037177399632591

`and(A117949(3^n), A146398(n+1))`
-/

namespace A146840.P9758037177399632591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117949 (3 ^ n)) (A146398 (n + 1))

end

end A146840.P9758037177399632591

/-! ## A146840.P2559654723304486487

`and(A002061(A335634(n)), A147210(n+1))`
-/

namespace A146840.P2559654723304486487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002061 (A335634 n).toNat) (A147210 (n + 1))

end

end A146840.P2559654723304486487

/-! ## A146840.P6646592817656140117

`A353846(A147100(n+1))+A147132(n+1)`
-/

namespace A146840.P6646592817656140117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A147100 (n + 1)).toNat + A147132 (n + 1)

end

end A146840.P6646592817656140117

/-! ## A146840.P8811420237063889562

`A146611(n+1)-A202704(A146845(n+1))`
-/

namespace A146840.P8811420237063889562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146611 (n + 1) - A202704 (A146845 (n + 1)).toNat

end

end A146840.P8811420237063889562

/-! ## A146840.P2203741264505376742

`and(A007810(A005940(n+1)), A146643(n+1))`
-/

namespace A146840.P2203741264505376742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007810 (A005940 (n + 1)).toNat) (A146643 (n + 1))

end

end A146840.P2203741264505376742

/-!
# A146842: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146842, there is no canonical definition to state claims against.
-/

/-! ## A146842.P9795028563506695084

`A146844(2*(n+2))`
-/

namespace A146842.P9795028563506695084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146844 (2 * (n + 2))

end

end A146842.P9795028563506695084

/-! ## A146842.P9085963869789188462

`or(1, A146844(A172458(n+1)))`
-/

namespace A146842.P9085963869789188462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146844 (A172458 (n + 1)).toNat)

end

end A146842.P9085963869789188462

/-! ## A146842.P8479276722904335072

`or(1, A146844(A334420(n+1)))`
-/

namespace A146842.P8479276722904335072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146844 (A334420 (n + 1)).toNat)

end

end A146842.P8479276722904335072

/-! ## A146842.P4241234571479689633

`or(1, A146844(A336066(n+1)))`
-/

namespace A146842.P4241234571479689633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146844 (A336066 (n + 1)).toNat)

end

end A146842.P4241234571479689633

/-! ## A146842.P12257146712115500701

`∏{d}[A172458(n+1), A146844(#)]`
-/

namespace A146842.P12257146712115500701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146844 d

end

end A146842.P12257146712115500701

/-!
# A146843: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all 1's connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146843, there is no canonical definition to state claims against.
-/

/-! ## A146843.P13653975039095862249

`A146710(A121373(n)+A029957(n+1))`
-/

namespace A146843.P13653975039095862249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146710 (A121373 n + A029957 (n + 1)).toNat

end

end A146843.P13653975039095862249

/-! ## A146843.P5551451361214072146

`A058058(A051053(n))`
-/

namespace A146843.P5551451361214072146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058058 (A051053 n).toNat

end

end A146843.P5551451361214072146

/-! ## A146843.P9395901591691074760

`A167743(A068044(n))`
-/

namespace A146843.P9395901591691074760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A068044 n).toNat

end

end A146843.P9395901591691074760

/-! ## A146843.P13934865327579535524

`A146184(A250266(n))`
-/

namespace A146843.P13934865327579535524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146184 (A250266 n).toNat

end

end A146843.P13934865327579535524

/-! ## A146843.P17694432048267557955

`A147119(A051053(n)+1)`
-/

namespace A146843.P17694432048267557955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147119 (A051053 n + 1).toNat

end

end A146843.P17694432048267557955

/-!
# A146844: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146844, there is no canonical definition to state claims against.
-/

/-! ## A146844.P14030694265790200278

`A146842(A028310(floor(n/2)))`
-/

namespace A146844.P14030694265790200278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146842 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146844.P14030694265790200278

/-! ## A146844.P13358924006588567182

`A298536(A147190(n+1))`
-/

namespace A146844.P13358924006588567182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298536 (A147190 (n + 1)).toNat

end

end A146844.P13358924006588567182

/-! ## A146844.P6177517495564730560

`A360676(A147032(n+1))+A356903(A146607(n+1))`
-/

namespace A146844.P6177517495564730560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A147032 (n + 1)).toNat + A356903 (A146607 (n + 1)).toNat

end

end A146844.P6177517495564730560

/-! ## A146844.P9798418716518741500

`A360676(A147136(n+1))+A356903(A146607(n+1))`
-/

namespace A146844.P9798418716518741500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A147136 (n + 1)).toNat + A356903 (A146607 (n + 1)).toNat

end

end A146844.P9798418716518741500

/-! ## A146844.P1977799664960147842

`A256855(A056475(n+1))`
-/

namespace A146844.P1977799664960147842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256855 (A056475 (n + 1)).toNat

end

end A146844.P1977799664960147842

/-!
# A146845: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146845, there is no canonical definition to state claims against.
-/

/-! ## A146845.P4342053006093779900

`A304681(A005676(n))`
-/

namespace A146845.P4342053006093779900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (A005676 n).toNat

end

end A146845.P4342053006093779900

/-! ## A146845.P11852818921711210685

`A304681(A229885(n))`
-/

namespace A146845.P11852818921711210685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (A229885 n).toNat

end

end A146845.P11852818921711210685

/-! ## A146845.P14490574428198436663

`A304681(A352066(n))`
-/

namespace A146845.P14490574428198436663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (A352066 n).toNat

end

end A146845.P14490574428198436663

/-! ## A146845.P11408844699599572349

`A304681(A365079(n))`
-/

namespace A146845.P11408844699599572349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (A365079 n).toNat

end

end A146845.P11408844699599572349

/-! ## A146845.P4953223892167538082

`A304681(A365245(n))`
-/

namespace A146845.P4953223892167538082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304681 (A365245 n).toNat

end

end A146845.P4953223892167538082

/-!
# A146846: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1001-1111-1000 pattern in any orientation.

The programs for A146846, there is no canonical definition to state claims against.
-/

/-! ## A146846.P6921544439345797066

`A099375(A149487(n)+A112492(n))`
-/

namespace A146846.P6921544439345797066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A149487 n + A112492 n).toNat

end

end A146846.P6921544439345797066

/-! ## A146846.P13041246537704375863

`A212321(A025479(n+1)+A000111(n))`
-/

namespace A146846.P13041246537704375863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212321 (A025479 (n + 1) + A000111 n).toNat

end

end A146846.P13041246537704375863

/-! ## A146846.P15561246421596411004

`A106950(n+1)%A129739(A325325(n))`
-/

namespace A146846.P15561246421596411004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106950 (n + 1)) (A129739 (A325325 n).toNat)

end

end A146846.P15561246421596411004

/-! ## A146846.P15911645386466401978

`and(A143567(n), A143577(A135255(n+1)))`
-/

namespace A146846.P15911645386466401978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143567 n) (A143577 (A135255 (n + 1)).toNat)

end

end A146846.P15911645386466401978

/-!
# A146847: Number of n X n binary arrays with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146847, there is no canonical definition to state claims against.
-/

/-! ## A146847.P4140537242172538105

`A146849(2*(n+2))`
-/

namespace A146847.P4140537242172538105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146849 (2 * (n + 2))

end

end A146847.P4140537242172538105

/-! ## A146847.P17919242067309976982

`or(1, A146849(A322660(n+1)))`
-/

namespace A146847.P17919242067309976982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146849 (A322660 (n + 1)).toNat)

end

end A146847.P17919242067309976982

/-! ## A146847.P14617573174748936389

`or(1, A146849(A165754(2*n)))`
-/

namespace A146847.P14617573174748936389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146849 (A165754 (2 * n)).toNat)

end

end A146847.P14617573174748936389

/-! ## A146847.P16313305170021256202

`∏{d}[A322660(n+1), A146849(#)]`
-/

namespace A146847.P16313305170021256202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146849 d

end

end A146847.P16313305170021256202

/-! ## A146847.P7547060011477312961

`A151949(n)+A146849(A322660(n+1))`
-/

namespace A146847.P7547060011477312961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + A146849 (A322660 (n + 1)).toNat

end

end A146847.P7547060011477312961

/-!
# A146848: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146848, there is no canonical definition to state claims against.
-/

/-! ## A146848.P9005488370856424132

`or(A146643(n+1), A211111(A000111(n)))`
-/

namespace A146848.P9005488370856424132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146643 (n + 1)) (A211111 (A000111 n).toNat)

end

end A146848.P9005488370856424132

/-! ## A146848.P11114887996737399391

`or(A146715(n+1), A211111(A000111(n)))`
-/

namespace A146848.P11114887996737399391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146715 (n + 1)) (A211111 (A000111 n).toNat)

end

end A146848.P11114887996737399391

/-! ## A146848.P14311628288086225279

`or(A056974(A151451(n))², A146715(n+1))`
-/

namespace A146848.P14311628288086225279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056974 (A151451 n).toNat ^ 2) (A146715 (n + 1))

end

end A146848.P14311628288086225279

/-! ## A146848.P6878753531448530316

`or(A146643(n+1), A146663(A146646(n+1)))`
-/

namespace A146848.P6878753531448530316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146643 (n + 1)) (A146663 (A146646 (n + 1)).toNat)

end

end A146848.P6878753531448530316

/-! ## A146848.P3956393369415507670

`or(A146663(A146646(n+1)), A146715(n+1))`
-/

namespace A146848.P3956393369415507670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146663 (A146646 (n + 1)).toNat) (A146715 (n + 1))

end

end A146848.P3956393369415507670

/-!
# A146850: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146850, there is no canonical definition to state claims against.
-/

/-! ## A146850.P8178347343170635570

`A146852(2*(n+2))`
-/

namespace A146850.P8178347343170635570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146852 (2 * (n + 2))

end

end A146850.P8178347343170635570

/-! ## A146850.P10092253161996371555

`or(1, A146852(A144396(n+1)))`
-/

namespace A146850.P10092253161996371555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146852 (A144396 (n + 1)).toNat)

end

end A146850.P10092253161996371555

/-! ## A146850.P7181508124852885608

`or(1, A146852(A160217(n+1)))`
-/

namespace A146850.P7181508124852885608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146852 (A160217 (n + 1)).toNat)

end

end A146850.P7181508124852885608

/-! ## A146850.P10769559705916564909

`or(1, A146852(A187225(n+1)))`
-/

namespace A146850.P10769559705916564909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146852 (A187225 (n + 1)).toNat)

end

end A146850.P10769559705916564909

/-! ## A146850.P18134915840501266411

`or(1, A146852(A325038(n+1)))`
-/

namespace A146850.P18134915840501266411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146852 (A325038 (n + 1)).toNat)

end

end A146850.P18134915840501266411

/-!
# A146851: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146851, there is no canonical definition to state claims against.
-/

/-! ## A146851.P9364648951204150522

`A156070(A033439(n+1))`
-/

namespace A146851.P9364648951204150522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A033439 (n + 1)).toNat

end

end A146851.P9364648951204150522

/-! ## A146851.P9757560641747004602

`A156070(A194082(n+1))`
-/

namespace A146851.P9757560641747004602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A194082 (n + 1)).toNat

end

end A146851.P9757560641747004602

/-! ## A146851.P11655008516031684623

`or(1, A118168(A288113(n)))`
-/

namespace A146851.P11655008516031684623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A118168 (A288113 n).toNat)

end

end A146851.P11655008516031684623

/-! ## A146851.P5054036071472496008

`A156070(∑[∑[A109720(n)]])`
-/

namespace A146851.P5054036071472496008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146851.P5054036071472496008

/-! ## A146851.P5829301531625193067

`filter[A147182(n+1), A071031(#)]`
-/

namespace A146851.P5829301531625193067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071031 (f1 j).toNat = 1) n)

end

end A146851.P5829301531625193067

/-!
# A146852: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146852, there is no canonical definition to state claims against.
-/

/-! ## A146852.P6876527175446856955

`A146850(A028310(floor(n/2)))`
-/

namespace A146852.P6876527175446856955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146850 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146852.P6876527175446856955

/-! ## A146852.P14690696195805011473

`A147206((n+1)*∏{p}[floor(n/6), #-1])`
-/

namespace A146852.P14690696195805011473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147206 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1))).toNat

end

end A146852.P14690696195805011473

/-! ## A146852.P12179026743710809211

`A056670(A147093(n+1))`
-/

namespace A146852.P12179026743710809211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A147093 (n + 1)).toNat

end

end A146852.P12179026743710809211

/-! ## A146852.P74449802328711029

`A089868(A146876(n+1))`
-/

namespace A146852.P74449802328711029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A146876 (n + 1)).toNat

end

end A146852.P74449802328711029

/-! ## A146852.P14349569457449839802

`A089868(A147206(n+1))`
-/

namespace A146852.P14349569457449839802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A147206 (n + 1)).toNat

end

end A146852.P14349569457449839802

/-!
# A146853: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146853, there is no canonical definition to state claims against.
-/

/-! ## A146853.P1726062734405068099

`A183106(A100135(n))`
-/

namespace A146853.P1726062734405068099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (A100135 n).toNat

end

end A146853.P1726062734405068099

/-! ## A146853.P2580016310887528433

`A356378(A099132(n))`
-/

namespace A146853.P2580016310887528433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356378 (A099132 n).toNat

end

end A146853.P2580016310887528433

/-! ## A146853.P8255599776568044108

`A183106(A393250(n))`
-/

namespace A146853.P8255599776568044108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (A393250 n).toNat

end

end A146853.P8255599776568044108

/-! ## A146853.P11996790511852590271

`A356378(A365736(n))`
-/

namespace A146853.P11996790511852590271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356378 (A365736 n).toNat

end

end A146853.P11996790511852590271

/-! ## A146853.P7260881006012297169

`A356378(A365798(n))`
-/

namespace A146853.P7260881006012297169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356378 (A365798 n).toNat

end

end A146853.P7260881006012297169

/-!
# A146854: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1111-0001 pattern in any orientation.

The programs for A146854, there is no canonical definition to state claims against.
-/

/-! ## A146854.P2891390965710624234

`A265384(A251176(n))`
-/

namespace A146854.P2891390965710624234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A251176 n).toNat

end

end A146854.P2891390965710624234

/-! ## A146854.P14045029151619308365

`or(A108142(n+1), A141099(A027994(n)))`
-/

namespace A146854.P14045029151619308365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108142 (n + 1)) (A141099 (A027994 n).toNat)

end

end A146854.P14045029151619308365

/-! ## A146854.P13760923747152998292

`or(A134332(A147281(n+4)), A147260(n+1))`
-/

namespace A146854.P13760923747152998292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134332 (A147281 (n + 4)).toNat) (A147260 (n + 1))

end

end A146854.P13760923747152998292

/-!
# A146855: Number of n X n binary arrays with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146855, there is no canonical definition to state claims against.
-/

/-! ## A146855.P10722316790017097762

`A146857(2*(n+2))`
-/

namespace A146855.P10722316790017097762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146857 (2 * (n + 2))

end

end A146855.P10722316790017097762

/-! ## A146855.P4122421202210659713

`or(1, A146857(A005408(n+1)))`
-/

namespace A146855.P4122421202210659713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146857 (A005408 (n + 1)).toNat)

end

end A146855.P4122421202210659713

/-! ## A146855.P9754694959817623942

`∏{d}[A005408(n+1), A146857(#)]`
-/

namespace A146855.P9754694959817623942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146857 d

end

end A146855.P9754694959817623942

/-! ## A146855.P14436464079433942450

`A146857(A005408(n+1))%A020549(n)`
-/

namespace A146855.P14436464079433942450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146857 (A005408 (n + 1)).toNat) (A020549 n)

end

end A146855.P14436464079433942450

/-! ## A146855.P11727742734803604682

`A146857(A005408(n+1))/A007318(∑[n])`
-/

namespace A146855.P11727742734803604682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146857 (A005408 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146855.P11727742734803604682

/-!
# A146856: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146856, there is no canonical definition to state claims against.
-/

/-! ## A146856.P16453984832474299249

`A187794(A291242(n))+A146832(n+1)`
-/

namespace A146856.P16453984832474299249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187794 (A291242 n).toNat + A146832 (n + 1)

end

end A146856.P16453984832474299249

/-! ## A146856.P5080589251915702066

`A335784(A309861(n))+A146776(n+1)`
-/

namespace A146856.P5080589251915702066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335784 (A309861 n).toNat + A146776 (n + 1)

end

end A146856.P5080589251915702066

/-! ## A146856.P16776223131031686160

`A335784(A309861(n))+A147202(n+1)`
-/

namespace A146856.P16776223131031686160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335784 (A309861 n).toNat + A147202 (n + 1)

end

end A146856.P16776223131031686160

/-! ## A146856.P16549802185239763855

`A314397(A000001(n+2)*A165655(n))`
-/

namespace A146856.P16549802185239763855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314397 (A000001 (n + 2) * A165655 n).toNat

end

end A146856.P16549802185239763855

/-! ## A146856.P8145681894836357588

`A007599(xor(A050048(n+1), A353999(n)))`
-/

namespace A146856.P8145681894836357588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (Int.xor (A050048 (n + 1)) (A353999 n)).toNat

end

end A146856.P8145681894836357588

/-!
# A146857: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146857, there is no canonical definition to state claims against.
-/

/-! ## A146857.P18021183203336040880

`A146855(∏{e}[A258439(n), #])`
-/

namespace A146857.P18021183203336040880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146855 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A146857.P18021183203336040880

/-! ## A146857.P11092834519917494739

`A219931(A146367(n+1))`
-/

namespace A146857.P11092834519917494739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219931 (A146367 (n + 1)).toNat

end

end A146857.P11092834519917494739

/-! ## A146857.P6807970009669474430

`and(A146732(A077168(n)), A267924(n))`
-/

namespace A146857.P6807970009669474430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146732 (A077168 n).toNat) (A267924 n)

end

end A146857.P6807970009669474430

/-!
# A146858: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146858, there is no canonical definition to state claims against.
-/

/-! ## A146858.P54020238093673274

`A146860(2*(n+2))`
-/

namespace A146858.P54020238093673274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146860 (2 * (n + 2))

end

end A146858.P54020238093673274

/-! ## A146858.P18020961621753427362

`or(1, A146860(A083022(n+1)))`
-/

namespace A146858.P18020961621753427362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146860 (A083022 (n + 1)).toNat)

end

end A146858.P18020961621753427362

/-! ## A146858.P6762616562764801565

`or(1, A146860(A144396(n+1)))`
-/

namespace A146858.P6762616562764801565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146860 (A144396 (n + 1)).toNat)

end

end A146858.P6762616562764801565

/-! ## A146858.P2067537870928489109

`or(1, A146860(A184809(n+1)))`
-/

namespace A146858.P2067537870928489109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146860 (A184809 (n + 1)).toNat)

end

end A146858.P2067537870928489109

/-! ## A146858.P6376519393943910827

`or(1, A146860(A187575(n+1)))`
-/

namespace A146858.P6376519393943910827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146860 (A187575 (n + 1)).toNat)

end

end A146858.P6376519393943910827

/-!
# A146859: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146859, there is no canonical definition to state claims against.
-/

/-! ## A146859.P4368817737632938753

`or(A146779(n+1), A184964(A165110(n)))`
-/

namespace A146859.P4368817737632938753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146779 (n + 1)) (A184964 (A165110 n).toNat)

end

end A146859.P4368817737632938753

/-!
# A146861: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146861, there is no canonical definition to state claims against.
-/

/-! ## A146861.P7195623057477115252

`A145265(A146904(n+1))`
-/

namespace A146861.P7195623057477115252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145265 (A146904 (n + 1)).toNat

end

end A146861.P7195623057477115252

/-! ## A146861.P15995549338913713095

`A347689(A229885(n))+A229885(n)`
-/

namespace A146861.P15995549338913713095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A229885 n).toNat + A229885 n

end

end A146861.P15995549338913713095

/-! ## A146861.P7322602890613472400

`A193592(A053156(n+1)%A173253(n))`
-/

namespace A146861.P7322602890613472400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.tmod (A053156 (n + 1)) (A173253 n)).toNat

end

end A146861.P7322602890613472400

/-! ## A146861.P192389284885472699

`or(A022307(A146850(n+1)), A146781(n+1))`
-/

namespace A146861.P192389284885472699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022307 (A146850 (n + 1)).toNat) (A146781 (n + 1))

end

end A146861.P192389284885472699

/-! ## A146861.P11044808707272031102

`or(A146781(n+1), A187470(A146904(n+1)))`
-/

namespace A146861.P11044808707272031102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146781 (n + 1)) (A187470 (A146904 (n + 1)).toNat)

end

end A146861.P11044808707272031102

/-!
# A146862: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1101-0111-0100 pattern in any orientation.

The programs for A146862, there is no canonical definition to state claims against.
-/

/-! ## A146862.P4091473416508816415

`A007306(C(A000900(n), 2))`
-/

namespace A146862.P4091473416508816415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Nat.choose (A000900 n).toNat 2)

end

end A146862.P4091473416508816415

/-! ## A146862.P16668864342417591433

`8*A289120(A326341(n))+1`
-/

namespace A146862.P16668864342417591433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A289120 (A326341 n).toNat + 1

end

end A146862.P16668864342417591433

/-! ## A146862.P16352707577155917658

`and(A186935(n+1), A323358(2*n+3))+1`
-/

namespace A146862.P16352707577155917658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186935 (n + 1)) (A323358 (2 * n + 3)) + 1

end

end A146862.P16352707577155917658

/-! ## A146862.P2633310516485698094

`A114512(A341576(3*n)%A351935(n))`
-/

namespace A146862.P2633310516485698094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114512 (Int.tmod (A341576 (3 * n)) (A351935 n)).toNat

end

end A146862.P2633310516485698094

/-!
# A146863: Number of n X n binary arrays with all ones connected only in a 1101-1111 pattern in any orientation.

The programs for A146863, there is no canonical definition to state claims against.
-/

/-! ## A146863.P16131782904983155527

`A146865(2*(n+2))`
-/

namespace A146863.P16131782904983155527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146865 (2 * (n + 2))

end

end A146863.P16131782904983155527

/-! ## A146863.P11910693980208731808

`or(1, A146865(A144396(n+1)))`
-/

namespace A146863.P11910693980208731808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146865 (A144396 (n + 1)).toNat)

end

end A146863.P11910693980208731808

/-! ## A146863.P4882409183377232990

`∏{d}[A144396(n+1), A146865(#)]`
-/

namespace A146863.P4882409183377232990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146865 d

end

end A146863.P4882409183377232990

/-! ## A146863.P3578980261961725151

`A146865(A005843(n+2))+C(n+1, 37)`
-/

namespace A146863.P3578980261961725151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146865 (A005843 (n + 2)).toNat + (Nat.choose (n + 1) 37 : ℤ)

end

end A146863.P3578980261961725151

/-! ## A146863.P16072015012370772149

`A185063(n)+A146865(A144396(n+1))`
-/

namespace A146863.P16072015012370772149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + A146865 (A144396 (n + 1)).toNat

end

end A146863.P16072015012370772149

/-!
# A146865: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1101-1111 pattern in any orientation.

The programs for A146865, there is no canonical definition to state claims against.
-/

/-! ## A146865.P3424491937102255593

`A113005(A146367(n+1))`
-/

namespace A146865.P3424491937102255593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113005 (A146367 (n + 1)).toNat

end

end A146865.P3424491937102255593

/-! ## A146865.P1033178966688438473

`A113005(A147430(n+1))`
-/

namespace A146865.P1033178966688438473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113005 (A147430 (n + 1)).toNat

end

end A146865.P1033178966688438473

/-! ## A146865.P9333617692729147845

`A113005(A147462(n+1))`
-/

namespace A146865.P9333617692729147845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113005 (A147462 (n + 1)).toNat

end

end A146865.P9333617692729147845

/-! ## A146865.P10442112311996069767

`A200922(A146471(n+1))`
-/

namespace A146865.P10442112311996069767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200922 (A146471 (n + 1)).toNat

end

end A146865.P10442112311996069767

/-! ## A146865.P4163870819838035234

`A215824(A147045(n+1))`
-/

namespace A146865.P4163870819838035234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215824 (A147045 (n + 1)).toNat

end

end A146865.P4163870819838035234

/-!
# A146866: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1101-1111 pattern in any orientation.

The programs for A146866, there is no canonical definition to state claims against.
-/

/-! ## A146866.P13064728001248682271

`A146868(2*(n+2))`
-/

namespace A146866.P13064728001248682271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146868 (2 * (n + 2))

end

end A146866.P13064728001248682271

/-! ## A146866.P9566249239900145121

`or(1, A146868(A144396(n+1)))`
-/

namespace A146866.P9566249239900145121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146868 (A144396 (n + 1)).toNat)

end

end A146866.P9566249239900145121

/-! ## A146866.P2412664625536749003

`or(1, A146868(A184809(n+1)))`
-/

namespace A146866.P2412664625536749003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146868 (A184809 (n + 1)).toNat)

end

end A146866.P2412664625536749003

/-! ## A146866.P1524604624721878171

`or(1, A146868(A284534(n+1)))`
-/

namespace A146866.P1524604624721878171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146868 (A284534 (n + 1)).toNat)

end

end A146866.P1524604624721878171

/-! ## A146866.P10698745787069148695

`∏{d}[A047845(n+1), A146868(#)]`
-/

namespace A146866.P10698745787069148695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146868 d

end

end A146866.P10698745787069148695

/-!
# A146867: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1101-1111 pattern in any orientation.

The programs for A146867, there is no canonical definition to state claims against.
-/

/-! ## A146867.P14275754248227501086

`A366568(A274142(n)+A000196(n))`
-/

namespace A146867.P14275754248227501086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366568 (A274142 n + A000196 n).toNat

end

end A146867.P14275754248227501086

/-! ## A146867.P781725200619608705

`A277604(A067953(n+1))`
-/

namespace A146867.P781725200619608705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277604 (A067953 (n + 1)).toNat

end

end A146867.P781725200619608705

/-! ## A146867.P3352840170606150577

`A112649(A147189(n+2))`
-/

namespace A146867.P3352840170606150577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112649 (A147189 (n + 2)).toNat

end

end A146867.P3352840170606150577

/-! ## A146867.P18190412899458767752

`∑[A228110(Δ[A354789(n)])]`
-/

namespace A146867.P18190412899458767752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228110 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146867.P18190412899458767752

/-! ## A146867.P11319483899514797559

`filter[A146827(n+2), A085357(#)]`
-/

namespace A146867.P11319483899514797559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146827 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A146867.P11319483899514797559

/-!
# A146869: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1101-1111 pattern in any orientation.

The programs for A146869, there is no canonical definition to state claims against.
-/

/-! ## A146869.P16156832087584515323

`A095289(A146236(n+2))`
-/

namespace A146869.P16156832087584515323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095289 (A146236 (n + 2)).toNat

end

end A146869.P16156832087584515323

/-! ## A146869.P17107206582888880805

`or(1, A292373(A336616(n)))`
-/

namespace A146869.P17107206582888880805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A292373 (A336616 n).toNat)

end

end A146869.P17107206582888880805

/-! ## A146869.P7548700540726807054

`A287730(5*A023425(n)²)`
-/

namespace A146869.P7548700540726807054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (5 * A023425 n ^ 2).toNat

end

end A146869.P7548700540726807054

/-! ## A146869.P16595867177280001197

`A299988(A324240(n+1))+1`
-/

namespace A146869.P16595867177280001197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299988 (A324240 (n + 1)).toNat + 1

end

end A146869.P16595867177280001197

/-! ## A146869.P13038155217923078580

`or(1, A067032(A153678(n+1)))`
-/

namespace A146869.P13038155217923078580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067032 (A153678 (n + 1)).toNat)

end

end A146869.P13038155217923078580

/-!
# A146871: Number of n X n binary arrays with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146871, there is no canonical definition to state claims against.
-/

/-! ## A146871.P11172867003972803139

`A146873(2*(n+2))`
-/

namespace A146871.P11172867003972803139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146873 (2 * (n + 2))

end

end A146871.P11172867003972803139

/-! ## A146871.P15211818389907871375

`or(1, A146873(A077797(n+1)))`
-/

namespace A146871.P15211818389907871375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146873 (A077797 (n + 1)).toNat)

end

end A146871.P15211818389907871375

/-! ## A146871.P8704858501026994152

`or(1, A146873(A081874(n+1)))`
-/

namespace A146871.P8704858501026994152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146873 (A081874 (n + 1)).toNat)

end

end A146871.P8704858501026994152

/-! ## A146871.P458526205558482301

`or(1, A146873(A144396(n+1)))`
-/

namespace A146871.P458526205558482301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146873 (A144396 (n + 1)).toNat)

end

end A146871.P458526205558482301

/-! ## A146871.P9511699347707911038

`or(1, A146873(A160217(n+1)))`
-/

namespace A146871.P9511699347707911038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146873 (A160217 (n + 1)).toNat)

end

end A146871.P9511699347707911038

/-!
# A146872: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146872, there is no canonical definition to state claims against.
-/

/-! ## A146872.P3805080141510974849

`and(-A146778(A146779(n+1)), A146792(n+1))`
-/

namespace A146872.P3805080141510974849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A146778 (A146779 (n + 1)).toNat) (A146792 (n + 1))

end

end A146872.P3805080141510974849

/-! ## A146872.P3960979951870986742

`and(-A146789(A146787(n+1)), A146792(n+1))`
-/

namespace A146872.P3960979951870986742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A146789 (A146787 (n + 1)).toNat) (A146792 (n + 1))

end

end A146872.P3960979951870986742

/-! ## A146872.P10045913307542577062

`and(-A146778(A146795(n+1)), A146792(n+1))`
-/

namespace A146872.P10045913307542577062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A146778 (A146795 (n + 1)).toNat) (A146792 (n + 1))

end

end A146872.P10045913307542577062

/-!
# A146874: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146874, there is no canonical definition to state claims against.
-/

/-! ## A146874.P12021968136291770042

`A146876(2*(n+2))`
-/

namespace A146874.P12021968136291770042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146876 (2 * (n + 2))

end

end A146874.P12021968136291770042

/-! ## A146874.P6339035290524051303

`or(1, A146876(A144396(n+1)))`
-/

namespace A146874.P6339035290524051303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146876 (A144396 (n + 1)).toNat)

end

end A146874.P6339035290524051303

/-! ## A146874.P14782743114638254145

`or(1, A146876(A322660(n+1)))`
-/

namespace A146874.P14782743114638254145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146876 (A322660 (n + 1)).toNat)

end

end A146874.P14782743114638254145

/-! ## A146874.P10021155885294738932

`∏{d}[A144396(n+1), A146876(#)]`
-/

namespace A146874.P10021155885294738932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146876 d

end

end A146874.P10021155885294738932

/-! ## A146874.P11052757420618712522

`∏{d}[A322660(n+1), A146876(#)]`
-/

namespace A146874.P11052757420618712522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146876 d

end

end A146874.P11052757420618712522

/-!
# A146875: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146875, there is no canonical definition to state claims against.
-/

/-! ## A146875.P15127238806719451453

`A351870(A147205(n+1))`
-/

namespace A146875.P15127238806719451453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A147205 (n + 1)).toNat

end

end A146875.P15127238806719451453

/-! ## A146875.P5697300260029388383

`filter[A147205(n+1), A071035(#)]`
-/

namespace A146875.P5697300260029388383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071035 (f1 j).toNat = 1) n)

end

end A146875.P5697300260029388383

/-! ## A146875.P8691757630508790960

`filter[A147205(n+1), A077051(#)]`
-/

namespace A146875.P8691757630508790960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A077051 (f1 j).toNat = 1) n)

end

end A146875.P8691757630508790960

/-! ## A146875.P7055778262345006706

`filter[A147205(n+1), A087755(#)]`
-/

namespace A146875.P7055778262345006706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087755 (f1 j).toNat = 1) n)

end

end A146875.P7055778262345006706

/-!
# A146876: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146876, there is no canonical definition to state claims against.
-/

/-! ## A146876.P12347537956431446308

`A146874(A130779(n)+A004526(n))`
-/

namespace A146876.P12347537956431446308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146874 (A130779 n + A004526 n).toNat

end

end A146876.P12347537956431446308

/-!
# A146877: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146877, there is no canonical definition to state claims against.
-/

/-! ## A146877.P12326874590842696603

`A355072(A229885(n))`
-/

namespace A146877.P12326874590842696603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355072 (A229885 n).toNat

end

end A146877.P12326874590842696603

/-! ## A146877.P5320191180203522540

`A391187(A307397(n+1))`
-/

namespace A146877.P5320191180203522540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391187 (A307397 (n + 1)).toNat

end

end A146877.P5320191180203522540

/-! ## A146877.P17645702983448627038

`A000194(A147207(n+1)²)`
-/

namespace A146877.P17645702983448627038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A147207 (n + 1) ^ 2).toNat

end

end A146877.P17645702983448627038

/-! ## A146877.P7024888124931941819

`A147207(∑[A147187(n+1)])`
-/

namespace A146877.P7024888124931941819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146877.P7024888124931941819

/-! ## A146877.P13783119961343332743

`A147207(∑[A147249(n+1)])`
-/

namespace A146877.P13783119961343332743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146877.P13783119961343332743

/-!
# A146878: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1110-0100-0111 pattern in any orientation.

The programs for A146878, there is no canonical definition to state claims against.
-/

/-! ## A146878.P7952356326296442982

`A283977(abs(∑[9*a(n-1)]))` with `a(0)=2, a(1)=-4, a(2)=0, a(3)=1`
-/

namespace A146878.P7952356326296442982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -4, 0, 1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A146878.P7952356326296442982

/-! ## A146878.P7800461731793354682

`A005707(A052947(n)!)`
-/

namespace A146878.P7800461731793354682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005707 (Nat.factorial (A052947 n).toNat)

end

end A146878.P7800461731793354682

/-! ## A146878.P18321538328836238741

`A078898(or(5, A267385(n)))`
-/

namespace A146878.P18321538328836238741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.lor 5 (A267385 n)).toNat

end

end A146878.P18321538328836238741

/-! ## A146878.P9222259893641875494

`∑[and(A010563(n), A130915(n))]`
-/

namespace A146878.P9222259893641875494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010563 n) (A130915 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146878.P9222259893641875494

/-!
# A146880: A symmetrical triangle sequence of coefficients : p(x,n)=If[n == 0, 1, (x + 1)^n + Sum[(1 + Mod[Binomial[n, m], 2])*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146880, there is no canonical definition to state claims against.
-/

/-! ## A146880.P13675301368691987639

`xor(-A173741(n), -2)`
-/

namespace A146880.P13675301368691987639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A173741 n) (-2)

end

end A146880.P13675301368691987639

/-! ## A146880.P17721639417206627375

`3-xor(1, 4-abs(2-A173742(n)))`
-/

namespace A146880.P17721639417206627375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor 1 (4 - |2 - A173742 n|)

end

end A146880.P17721639417206627375

/-! ## A146880.P15546950252489881614

`A004442(A173741(n)-1)`
-/

namespace A146880.P15546950252489881614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A173741 n - 1).toNat

end

end A146880.P15546950252489881614

/-! ## A146880.P813652334576447297

`xor(1, A114637(A173740(n)))`
-/

namespace A146880.P813652334576447297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A114637 (A173740 n).toNat)

end

end A146880.P813652334576447297

/-! ## A146880.P3437839037788030181

`xor(1, A074764(A132735(n))-1)`
-/

namespace A146880.P3437839037788030181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074764 (A132735 n).toNat - 1)

end

end A146880.P3437839037788030181

/-! ## A146880.P16320177304687633770

`A173740(n)+and(2, A132046(n))`
-/

namespace A146880.P16320177304687633770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 2 (A132046 n)

end

end A146880.P16320177304687633770

/-! ## A146880.P14667383424383450425

`A173740(n)+and(2, A132729(n))`
-/

namespace A146880.P14667383424383450425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 2 (A132729 n)

end

end A146880.P14667383424383450425

/-! ## A146880.P2710087283620715930

`A173740(n)+and(2, A132737(n))`
-/

namespace A146880.P2710087283620715930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 2 (A132737 n)

end

end A146880.P2710087283620715930

/-! ## A146880.P9380439623328933385

`A173740(n)+and(2, A152236(n))`
-/

namespace A146880.P9380439623328933385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 2 (A152236 n)

end

end A146880.P9380439623328933385

/-! ## A146880.P8162818773997906607

`A173741(n)-and(2, A132731(n))`
-/

namespace A146880.P8162818773997906607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173741 n - Int.land 2 (A132731 n)

end

end A146880.P8162818773997906607

/-!
# A146881: A symmetrical triangle sequence of coefficients : p(x,n)=If[n == 0, 1, (x + 1)^n + Sum[(1 + Mod[Binomial[n, m], 4])*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146881, there is no canonical definition to state claims against.
-/

/-! ## A146881.P4339585944518944258

`xor(2, A146880(n)+1)+1`
-/

namespace A146881.P4339585944518944258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A146880 n + 1) + 1

end

end A146881.P4339585944518944258

/-! ## A146881.P2217036837002772680

`xor(2, A014681(A173741(n)))+1`
-/

namespace A146881.P2217036837002772680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A014681 (A173741 n).toNat) + 1

end

end A146881.P2217036837002772680

/-! ## A146881.P2394073369480394082

`A146880(n)+and(4, A132046(n))`
-/

namespace A146881.P2394073369480394082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146880 n + Int.land 4 (A132046 n)

end

end A146881.P2394073369480394082

/-! ## A146881.P16160197018742065749

`A146880(n)+and(4, A152236(n))`
-/

namespace A146881.P16160197018742065749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146880 n + Int.land 4 (A152236 n)

end

end A146881.P16160197018742065749

/-! ## A146881.P15513226656318627466

`A173740(n)+and(6, A132046(n))`
-/

namespace A146881.P15513226656318627466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 6 (A132046 n)

end

end A146881.P15513226656318627466

/-! ## A146881.P13341022365935919590

`A173740(n)+and(6, A132737(n))`
-/

namespace A146881.P13341022365935919590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 6 (A132737 n)

end

end A146881.P13341022365935919590

/-! ## A146881.P6833356643098422690

`A173740(n)+and(6, A152236(n))`
-/

namespace A146881.P6833356643098422690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + Int.land 6 (A152236 n)

end

end A146881.P6833356643098422690

/-!
# A146882: a(n) = 5*(4^(n+1) - 1)/3.

The programs for A146882, the canonical program `A146882.P15500143620439515073` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146882 has offset 0).

The definition of A146882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(4^(n+1)-1)/3` (program `A146882.P13489786538087814931`, by `A146882.P13489786538087814931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146882.P3893661356404191241

`5/3*(2^(2*n+2)-1)`
-/

namespace A146882.P3893661356404191241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * ((2 ^ (2 * n + 2) : ℤ) - 1 : ℚ)

end

end A146882.P3893661356404191241

namespace A146882

/-- `5/3*(2^(2*n+2)-1)` -/
def P3893661356404191241.Spec : Prop :=
  ∀ n, P3893661356404191241.a n = (A146882 n : ℚ)

end A146882

/-! ## A146882.P13489786538087814931

`5*(4^(n+1)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146882.P13489786538087814931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((4 ^ (n + 1) : ℤ) - 1) : ℚ) / 3

end

end A146882.P13489786538087814931

namespace A146882

/-- `5*(4^(n+1)-1)/3` -/
def P13489786538087814931.Spec : Prop :=
  ∀ n, P13489786538087814931.a n = (A146882 n : ℚ)

theorem P13489786538087814931.correct : P13489786538087814931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A146882, Nat.add_sub_cancel, A146882.P13489786538087814931.a, A146882.P15500143620439515073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A146882, Nat.add_sub_cancel, A146882.P13489786538087814931.a, A146882.P15500143620439515073.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A146882

/-! ## A146882.P351714264188884449

`ogf(5/(1-5x+4x^2))`
-/

namespace A146882.P351714264188884449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -5, 4] n

end

end A146882.P351714264188884449

namespace A146882

/-- `ogf(5/(1-5x+4x^2))` -/
def P351714264188884449.Spec : Prop :=
  ∀ n, P351714264188884449.a n = A146882 n

end A146882

/-! ## A146882.P11268847569335424328

`∑[4*a(n-1)]` with `a(0)=5`
-/

namespace A146882.P11268847569335424328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P11268847569335424328

namespace A146882

/-- `∑[4*a(n-1)]` -/
def P11268847569335424328.Spec : Prop :=
  ∀ n, (P11268847569335424328.a n : ℤ) = A146882 n

end A146882

/-! ## A146882.P18373282645956752293

`4*a(n-1)+5` with `a(0)=5`
-/

namespace A146882.P18373282645956752293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) + 5

end

end A146882.P18373282645956752293

namespace A146882

/-- `4*a(n-1)+5` -/
def P18373282645956752293.Spec : Prop :=
  ∀ n, (P18373282645956752293.a n : ℤ) = A146882 n

end A146882

/-! ## A146882.P12218231590155010351

`lcm(4, a(n-1))+5` with `a(0)=5`
-/

namespace A146882.P12218231590155010351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 5

end

end A146882.P12218231590155010351

namespace A146882

/-- `lcm(4, a(n-1))+5` -/
def P12218231590155010351.Spec : Prop :=
  ∀ n, (P12218231590155010351.a n : ℤ) = A146882 n

end A146882

/-! ## A146882.P7397991226240495805

`xor(13, 4*a(n-1))` with `a(0)=5`
-/

namespace A146882.P7397991226240495805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 13 (4 * a (n - 1))

end

end A146882.P7397991226240495805

namespace A146882

/-- `xor(13, 4*a(n-1))` -/
def P7397991226240495805.Spec : Prop :=
  ∀ n, (P7397991226240495805.a n : ℤ) = A146882 n

end A146882

/-! ## A146882.P9686486767324575858

`9-4*(1-a(n-1))` with `a(0)=5`
-/

namespace A146882.P9686486767324575858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  9 - 4 * (1 - a (n - 1))

end

end A146882.P9686486767324575858

namespace A146882

/-- `9-4*(1-a(n-1))` -/
def P9686486767324575858.Spec : Prop :=
  ∀ n, P9686486767324575858.a n = A146882 n

end A146882

/-! ## A146882.P13523899736050764321

`∑[a(n-1)/(1/2)²]` with `a(0)=5`
-/

namespace A146882.P13523899736050764321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P13523899736050764321

namespace A146882

/-- `∑[a(n-1)/(1/2)²]` -/
def P13523899736050764321.Spec : Prop :=
  ∀ n, P13523899736050764321.a n = (A146882 n : ℚ)

end A146882

/-! ## A146882.P15509697063597593381

`a(n-1)/(1/2)²+5` with `a(0)=5`
-/

namespace A146882.P15509697063597593381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 5

end

end A146882.P15509697063597593381

namespace A146882

/-- `a(n-1)/(1/2)²+5` -/
def P15509697063597593381.Spec : Prop :=
  ∀ n, P15509697063597593381.a n = (A146882 n : ℚ)

end A146882

/-! ## A146882.P4979094315163469196

`5-a(n-1)/(3/4-1)` with `a(0)=5`
-/

namespace A146882.P4979094315163469196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  5 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A146882.P4979094315163469196

namespace A146882

/-- `5-a(n-1)/(3/4-1)` -/
def P4979094315163469196.Spec : Prop :=
  ∀ n, P4979094315163469196.a n = (A146882 n : ℚ)

end A146882

/-! ## A146882.P15500143620439515073

`4^(n+1)+a(n-1)+4^n` with `a(0)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146882

/-- `4^(n+1)+a(n-1)+4^n` -/
def P15500143620439515073.Spec : Prop :=
  ∀ n, (P15500143620439515073.a n : ℤ) = A146882 n

theorem P15500143620439515073.correct : P15500143620439515073.Spec := by
  intro n
  simp only [A146882]

end A146882

/-! ## A146882.P15627277377770822111

`A159290(Δ[n²])`
-/

namespace A146882.P15627277377770822111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146882.P15627277377770822111

namespace A146882

/-- `A159290(Δ[n²])` -/
def P15627277377770822111.Spec : Prop :=
  ∀ n, P15627277377770822111.a n = A146882 n

end A146882

/-! ## A146882.P11752595410151833832

`∑[A003947(n+1)]`
-/

namespace A146882.P11752595410151833832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P11752595410151833832

namespace A146882

/-- `∑[A003947(n+1)]` -/
def P11752595410151833832.Spec : Prop :=
  ∀ n, P11752595410151833832.a n = A146882 n

end A146882

/-! ## A146882.P16036341939688197035

`∑[A156760(n)+1]`
-/

namespace A146882.P16036341939688197035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156760 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P16036341939688197035

namespace A146882

/-- `∑[A156760(n)+1]` -/
def P16036341939688197035.Spec : Prop :=
  ∀ n, P16036341939688197035.a n = A146882 n

end A146882

/-! ## A146882.P5070157667069211389

`∑[A199115(n)-1]`
-/

namespace A146882.P5070157667069211389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199115 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P5070157667069211389

namespace A146882

/-- `∑[A199115(n)-1]` -/
def P5070157667069211389.Spec : Prop :=
  ∀ n, P5070157667069211389.a n = A146882 n

end A146882

/-! ## A146882.P17172684291338161212

`∑[A020714(2*n)]`
-/

namespace A146882.P17172684291338161212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P17172684291338161212

namespace A146882

/-- `∑[A020714(2*n)]` -/
def P17172684291338161212.Spec : Prop :=
  ∀ n, P17172684291338161212.a n = A146882 n

end A146882

/-! ## A146882.P2193725177001500880

`∑[A002066(n)/2]`
-/

namespace A146882.P2193725177001500880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002066 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P2193725177001500880

namespace A146882

/-- `∑[A002066(n)/2]` -/
def P2193725177001500880.Spec : Prop :=
  ∀ n, P2193725177001500880.a n = (A146882 n : ℚ)

end A146882

/-! ## A146882.P2599029346521285030

`∑[A070875(4*n)]`
-/

namespace A146882.P2599029346521285030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P2599029346521285030

namespace A146882

/-- `∑[A070875(4*n)]` -/
def P2599029346521285030.Spec : Prop :=
  ∀ n, P2599029346521285030.a n = A146882 n

end A146882

/-! ## A146882.P11458555738071062912

`∑[5*A000302(n)]`
-/

namespace A146882.P11458555738071062912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146882.P11458555738071062912

namespace A146882

/-- `∑[5*A000302(n)]` -/
def P11458555738071062912.Spec : Prop :=
  ∀ n, P11458555738071062912.a n = A146882 n

end A146882

/-!
# A146883: a(n) = 6 * Sum_{m=0..n} 5^m.

The programs for A146883, the canonical program `A146883.P14978134997887096401` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146883 has offset 0).

The definition of A146883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146883.P10162103576770054322

`3*(5^(n+1)-1)/2`
-/

namespace A146883.P10162103576770054322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((5 ^ (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A146883.P10162103576770054322

namespace A146883

/-- `3*(5^(n+1)-1)/2` -/
def P10162103576770054322.Spec : Prop :=
  ∀ n, P10162103576770054322.a n = (A146883 n : ℚ)

end A146883

/-! ## A146883.P14978134997887096401

`6*A003463(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A146883

/-- `6*A003463(n+1)` -/
def P14978134997887096401.Spec : Prop :=
  ∀ n, P14978134997887096401.a n = A146883 n

theorem P14978134997887096401.correct : P14978134997887096401.Spec := by
  intro n
  simp only [A146883]

end A146883

/-! ## A146883.P13784333371401515938

`ogf(6/(1-6x+5x^2))`
-/

namespace A146883.P13784333371401515938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -6, 5] n

end

end A146883.P13784333371401515938

namespace A146883

/-- `ogf(6/(1-6x+5x^2))` -/
def P13784333371401515938.Spec : Prop :=
  ∀ n, P13784333371401515938.a n = A146883 n

end A146883

/-! ## A146883.P15839526386777721216

`lcm(2, ∑[6*5^n])`
-/

namespace A146883.P15839526386777721216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146883.P15839526386777721216

namespace A146883

/-- `lcm(2, ∑[6*5^n])` -/
def P15839526386777721216.Spec : Prop :=
  ∀ n, (P15839526386777721216.a n : ℤ) = A146883 n

end A146883

/-! ## A146883.P15276152810824410346

`∑[5*a(n-1)]` with `a(0)=6`
-/

namespace A146883.P15276152810824410346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146883.P15276152810824410346

namespace A146883

/-- `∑[5*a(n-1)]` -/
def P15276152810824410346.Spec : Prop :=
  ∀ n, (P15276152810824410346.a n : ℤ) = A146883 n

end A146883

/-! ## A146883.P16135922558279530202

`5*a(n-1)+6` with `a(0)=6`
-/

namespace A146883.P16135922558279530202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  5 * a (n - 1) + 6

end

end A146883.P16135922558279530202

namespace A146883

/-- `5*a(n-1)+6` -/
def P16135922558279530202.Spec : Prop :=
  ∀ n, (P16135922558279530202.a n : ℤ) = A146883 n

end A146883

/-! ## A146883.P14493558156238035609

`lcm(5, a(n-1))+6` with `a(0)=6`
-/

namespace A146883.P14493558156238035609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 6

end

end A146883.P14493558156238035609

namespace A146883

/-- `lcm(5, a(n-1))+6` -/
def P14493558156238035609.Spec : Prop :=
  ∀ n, (P14493558156238035609.a n : ℤ) = A146883 n

end A146883

/-! ## A146883.P11234267103471097479

`6-(a(n-1)-6*a(n-1))` with `a(0)=6`
-/

namespace A146883.P11234267103471097479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 - (a (n - 1) - 6 * a (n - 1))

end

end A146883.P11234267103471097479

namespace A146883

/-- `6-(a(n-1)-6*a(n-1))` -/
def P11234267103471097479.Spec : Prop :=
  ∀ n, P11234267103471097479.a n = A146883 n

end A146883

/-! ## A146883.P5831747163318938377

`∑[A003948(n+1)]`
-/

namespace A146883.P5831747163318938377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146883.P5831747163318938377

namespace A146883

/-- `∑[A003948(n+1)]` -/
def P5831747163318938377.Spec : Prop :=
  ∀ n, P5831747163318938377.a n = A146883 n

end A146883

/-! ## A146883.P13542204365290894373

`A057651(n+1)-1`
-/

namespace A146883.P13542204365290894373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 (n + 1) - 1

end

end A146883.P13542204365290894373

namespace A146883

/-- `A057651(n+1)-1` -/
def P13542204365290894373.Spec : Prop :=
  ∀ n, P13542204365290894373.a n = A146883 n

end A146883

/-! ## A146883.P317536936090553952

`1-A165755(n+1)`
-/

namespace A146883.P317536936090553952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165755 (n + 1)

end

end A146883.P317536936090553952

namespace A146883

/-- `1-A165755(n+1)` -/
def P317536936090553952.Spec : Prop :=
  ∀ n, P317536936090553952.a n = A146883 n

end A146883

/-! ## A146883.P1326843403149882524

`A199213(n+1)-2`
-/

namespace A146883.P1326843403149882524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199213 (n + 1) - 2

end

end A146883.P1326843403149882524

namespace A146883

/-- `A199213(n+1)-2` -/
def P1326843403149882524.Spec : Prop :=
  ∀ n, P1326843403149882524.a n = A146883 n

end A146883

/-! ## A146883.P13435381862621465353

`2*A125833(n+1)`
-/

namespace A146883.P13435381862621465353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125833 (n + 1)

end

end A146883.P13435381862621465353

namespace A146883

/-- `2*A125833(n+1)` -/
def P13435381862621465353.Spec : Prop :=
  ∀ n, P13435381862621465353.a n = A146883 n

end A146883

/-! ## A146883.P15814186924124528849

`3*A121177(n+2)`
-/

namespace A146883.P15814186924124528849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A121177 (n + 2)

end

end A146883.P15814186924124528849

namespace A146883

/-- `3*A121177(n+2)` -/
def P15814186924124528849.Spec : Prop :=
  ∀ n, P15814186924124528849.a n = A146883 n

end A146883

/-! ## A146883.P208418444622957307

`5*A057651(n)+1`
-/

namespace A146883.P208418444622957307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A057651 n + 1

end

end A146883.P208418444622957307

namespace A146883

/-- `5*A057651(n)+1` -/
def P208418444622957307.Spec : Prop :=
  ∀ n, P208418444622957307.a n = A146883 n

end A146883

/-! ## A146883.P3757864702630349942

`5*A199213(n)-4`
-/

namespace A146883.P3757864702630349942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A199213 n - 4

end

end A146883.P3757864702630349942

namespace A146883

/-- `5*A199213(n)-4` -/
def P3757864702630349942.Spec : Prop :=
  ∀ n, P3757864702630349942.a n = A146883 n

end A146883

/-! ## A146883.P4948977022512813151

`A026396(Δ[n²])-1`
-/

namespace A146883.P4948977022512813151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026396 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A146883.P4948977022512813151

namespace A146883

/-- `A026396(Δ[n²])-1` -/
def P4948977022512813151.Spec : Prop :=
  ∀ n, P4948977022512813151.a n = A146883 n

end A146883

/-! ## A146883.P11583894596715182522

`2*A026384(Δ[n²])`
-/

namespace A146883.P11583894596715182522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026384 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146883.P11583894596715182522

namespace A146883

/-- `2*A026384(Δ[n²])` -/
def P11583894596715182522.Spec : Prop :=
  ∀ n, P11583894596715182522.a n = A146883 n

end A146883

/-! ## A146883.P3265364300083180329

`3*A238366(Δ[n²])`
-/

namespace A146883.P3265364300083180329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A238366 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146883.P3265364300083180329

namespace A146883

/-- `3*A238366(Δ[n²])` -/
def P3265364300083180329.Spec : Prop :=
  ∀ n, P3265364300083180329.a n = A146883 n

end A146883

/-! ## A146883.P5376173104113897505

`Δ[3*A185055(n+1)]`
-/

namespace A146883.P5376173104113897505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A185055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A146883.P5376173104113897505

namespace A146883

/-- `Δ[3*A185055(n+1)]` -/
def P5376173104113897505.Spec : Prop :=
  ∀ n, P5376173104113897505.a n = A146883 n

end A146883

/-!
# A146884: a(n) = 7*Sum_{k=0..n} 6^k.

The programs for A146884, the canonical program `A146884.P12799212425996541917` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146884 has offset 0).

The definition of A146884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146884.P6162300820593619448

`7/5*(6^(n+1)-1)`
-/

namespace A146884.P6162300820593619448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 5 * ((6 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A146884.P6162300820593619448

namespace A146884

/-- `7/5*(6^(n+1)-1)` -/
def P6162300820593619448.Spec : Prop :=
  ∀ n, P6162300820593619448.a n = (A146884 n : ℚ)

theorem P6162300820593619448.correct : P6162300820593619448.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A146884, Nat.add_sub_cancel, A146884.P6162300820593619448.a, A146884.P12799212425996541917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A146884, Nat.add_sub_cancel, A146884.P6162300820593619448.a, A146884.P12799212425996541917.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A146884

/-! ## A146884.P12799212425996541917

`7*a(n-1)-6*a(n-2)` with `a(0)=7, a(1)=49`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146884

/-- `7*a(n-1)-6*a(n-2)` -/
def P12799212425996541917.Spec : Prop :=
  ∀ n, P12799212425996541917.a n = A146884 n

theorem P12799212425996541917.correct : P12799212425996541917.Spec := by
  intro n
  simp only [A146884]

end A146884

/-! ## A146884.P14169900683908704361

`ogf(7/(1-7x+6x^2))`
-/

namespace A146884.P14169900683908704361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7] [1, -7, 6] n

end

end A146884.P14169900683908704361

namespace A146884

/-- `ogf(7/(1-7x+6x^2))` -/
def P14169900683908704361.Spec : Prop :=
  ∀ n, P14169900683908704361.a n = A146884 n

end A146884

/-! ## A146884.P2338822263355467179

`∑[6*a(n-1)]` with `a(0)=7`
-/

namespace A146884.P2338822263355467179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146884.P2338822263355467179

namespace A146884

/-- `∑[6*a(n-1)]` -/
def P2338822263355467179.Spec : Prop :=
  ∀ n, (P2338822263355467179.a n : ℤ) = A146884 n

end A146884

/-! ## A146884.P2101167764856066956

`6*a(n-1)+7` with `a(0)=7`
-/

namespace A146884.P2101167764856066956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  6 * a (n - 1) + 7

end

end A146884.P2101167764856066956

namespace A146884

/-- `6*a(n-1)+7` -/
def P2101167764856066956.Spec : Prop :=
  ∀ n, (P2101167764856066956.a n : ℤ) = A146884 n

end A146884

/-! ## A146884.P8175874948842106733

`lcm(6, a(n-1))+7` with `a(0)=7`
-/

namespace A146884.P8175874948842106733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lcm 6 (a (n - 1)) + 7

end

end A146884.P8175874948842106733

namespace A146884

/-- `lcm(6, a(n-1))+7` -/
def P8175874948842106733.Spec : Prop :=
  ∀ n, (P8175874948842106733.a n : ℤ) = A146884 n

end A146884

/-! ## A146884.P9691216015332242744

`7-(a(n-1)-7*a(n-1))` with `a(0)=7`
-/

namespace A146884.P9691216015332242744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  7 - (a (n - 1) - 7 * a (n - 1))

end

end A146884.P9691216015332242744

namespace A146884

/-- `7-(a(n-1)-7*a(n-1))` -/
def P9691216015332242744.Spec : Prop :=
  ∀ n, P9691216015332242744.a n = A146884 n

end A146884

/-! ## A146884.P9493894479959240191

`∑[A003949(n+1)]`
-/

namespace A146884.P9493894479959240191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146884.P9493894479959240191

namespace A146884

/-- `∑[A003949(n+1)]` -/
def P9493894479959240191.Spec : Prop :=
  ∀ n, P9493894479959240191.a n = A146884 n

end A146884

/-! ## A146884.P13671287456382556719

`A061801(n+1)-1`
-/

namespace A146884.P13671287456382556719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061801 (n + 1) - 1

end

end A146884.P13671287456382556719

namespace A146884

/-- `A061801(n+1)-1` -/
def P13671287456382556719.Spec : Prop :=
  ∀ n, P13671287456382556719.a n = A146884 n

end A146884

/-! ## A146884.P10989197657927510008

`1-A165758(n+1)`
-/

namespace A146884.P10989197657927510008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165758 (n + 1)

end

end A146884.P10989197657927510008

namespace A146884

/-- `1-A165758(n+1)` -/
def P10989197657927510008.Spec : Prop :=
  ∀ n, P10989197657927510008.a n = A146884 n

end A146884

/-! ## A146884.P4645377217466251486

`∑[A038478(∑[n+1])]`
-/

namespace A146884.P4645377217466251486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038478 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146884.P4645377217466251486

namespace A146884

/-- `∑[A038478(∑[n+1])]` -/
def P4645377217466251486.Spec : Prop :=
  ∀ n, P4645377217466251486.a n = A146884 n

end A146884

/-! ## A146884.P16868430704176876096

`A198307(2*n+3)-1`
-/

namespace A146884.P16868430704176876096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198307 (2 * n + 3) - 1

end

end A146884.P16868430704176876096

namespace A146884

/-- `A198307(2*n+3)-1` -/
def P16868430704176876096.Spec : Prop :=
  ∀ n, P16868430704176876096.a n = A146884 n

end A146884

/-! ## A146884.P9061351688592100041

`A125687(n+1)+A125682(n+1)`
-/

namespace A146884.P9061351688592100041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125687 (n + 1) + A125682 (n + 1)

end

end A146884.P9061351688592100041

namespace A146884

/-- `A125687(n+1)+A125682(n+1)` -/
def P9061351688592100041.Spec : Prop :=
  ∀ n, P9061351688592100041.a n = A146884 n

end A146884

/-! ## A146884.P17671896949821848964

`A026551(2*n)+A026534(2*(n+1))`
-/

namespace A146884.P17671896949821848964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026551 (2 * n) + A026534 (2 * (n + 1))

end

end A146884.P17671896949821848964

namespace A146884

/-- `A026551(2*n)+A026534(2*(n+1))` -/
def P17671896949821848964.Spec : Prop :=
  ∀ n, P17671896949821848964.a n = A146884 n

end A146884

/-! ## A146884.P5766051311694188593

`A026567(2*n+1)+A026532(2*(n+1))`
-/

namespace A146884.P5766051311694188593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026567 (2 * n + 1) + A026532 (2 * (n + 1))

end

end A146884.P5766051311694188593

namespace A146884

/-- `A026567(2*n+1)+A026532(2*(n+1))` -/
def P5766051311694188593.Spec : Prop :=
  ∀ n, P5766051311694188593.a n = A146884 n

end A146884

/-! ## A146884.P4068160565230629330

`A026567(2*n+1)+A026565(2*n+1)`
-/

namespace A146884.P4068160565230629330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026567 (2 * n + 1) + A026565 (2 * n + 1)

end

end A146884.P4068160565230629330

namespace A146884

/-- `A026567(2*n+1)+A026565(2*n+1)` -/
def P4068160565230629330.Spec : Prop :=
  ∀ n, P4068160565230629330.a n = A146884 n

end A146884

/-! ## A146884.P6953699420503319907

`2*A026567(2*n+1)-A026567(2*n)`
-/

namespace A146884.P6953699420503319907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026567 (2 * n + 1) - A026567 (2 * n)

end

end A146884.P6953699420503319907

namespace A146884

/-- `2*A026567(2*n+1)-A026567(2*n)` -/
def P6953699420503319907.Spec : Prop :=
  ∀ n, P6953699420503319907.a n = A146884 n

end A146884

/-!
# A146885: a(n) = 8*Sum_{k=0..n} 7^k.

The programs for A146885, the canonical program `A146885.P13554045488808289029` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146885 has offset 0).

The definition of A146885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146885.P17303777887346245592

`4/3*(7^(n+1)-1)`
-/

namespace A146885.P17303777887346245592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * ((7 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A146885.P17303777887346245592

namespace A146885

/-- `4/3*(7^(n+1)-1)` -/
def P17303777887346245592.Spec : Prop :=
  ∀ n, P17303777887346245592.a n = (A146885 n : ℚ)

theorem P17303777887346245592.correct : P17303777887346245592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A146885, Nat.add_sub_cancel, A146885.P17303777887346245592.a, A146885.P13554045488808289029.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A146885, Nat.add_sub_cancel, A146885.P17303777887346245592.a, A146885.P13554045488808289029.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A146885

/-! ## A146885.P13554045488808289029

`8*a(n-1)-7*a(n-2)` with `a(0)=8, a(1)=64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A146885

/-- `8*a(n-1)-7*a(n-2)` -/
def P13554045488808289029.Spec : Prop :=
  ∀ n, P13554045488808289029.a n = A146885 n

theorem P13554045488808289029.correct : P13554045488808289029.Spec := by
  intro n
  simp only [A146885]

end A146885

/-! ## A146885.P1764034090541466084

`ogf(8/(1-8x+7x^2))`
-/

namespace A146885.P1764034090541466084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -8, 7] n

end

end A146885.P1764034090541466084

namespace A146885

/-- `ogf(8/(1-8x+7x^2))` -/
def P1764034090541466084.Spec : Prop :=
  ∀ n, P1764034090541466084.a n = A146885 n

end A146885

/-! ## A146885.P4219769633621513206

`∑[7*a(n-1)]` with `a(0)=8`
-/

namespace A146885.P4219769633621513206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146885.P4219769633621513206

namespace A146885

/-- `∑[7*a(n-1)]` -/
def P4219769633621513206.Spec : Prop :=
  ∀ n, (P4219769633621513206.a n : ℤ) = A146885 n

end A146885

/-! ## A146885.P14933716042095058236

`7*a(n-1)+8` with `a(0)=8`
-/

namespace A146885.P14933716042095058236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  7 * a (n - 1) + 8

end

end A146885.P14933716042095058236

namespace A146885

/-- `7*a(n-1)+8` -/
def P14933716042095058236.Spec : Prop :=
  ∀ n, (P14933716042095058236.a n : ℤ) = A146885 n

end A146885

/-! ## A146885.P12179987683307940980

`lcm(7, a(n-1))+8` with `a(0)=8`
-/

namespace A146885.P12179987683307940980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 8

end

end A146885.P12179987683307940980

namespace A146885

/-- `lcm(7, a(n-1))+8` -/
def P12179987683307940980.Spec : Prop :=
  ∀ n, (P12179987683307940980.a n : ℤ) = A146885 n

end A146885

/-! ## A146885.P4701918131016024397

`8-(a(n-1)-8*a(n-1))` with `a(0)=8`
-/

namespace A146885.P4701918131016024397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  8 - (a (n - 1) - 8 * a (n - 1))

end

end A146885.P4701918131016024397

namespace A146885

/-- `8-(a(n-1)-8*a(n-1))` -/
def P4701918131016024397.Spec : Prop :=
  ∀ n, P4701918131016024397.a n = A146885 n

end A146885

/-! ## A146885.P14577927102398434273

`∑[A003950(n+1)]`
-/

namespace A146885.P14577927102398434273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146885.P14577927102398434273

namespace A146885

/-- `∑[A003950(n+1)]` -/
def P14577927102398434273.Spec : Prop :=
  ∀ n, P14577927102398434273.a n = A146885 n

end A146885

/-! ## A146885.P17939247843211759905

`1-A165759(n+1)`
-/

namespace A146885.P17939247843211759905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165759 (n + 1)

end

end A146885.P17939247843211759905

namespace A146885

/-- `1-A165759(n+1)` -/
def P17939247843211759905.Spec : Prop :=
  ∀ n, P17939247843211759905.a n = A146885 n

end A146885

/-! ## A146885.P12661417218246353482

`A238275(n+1)-1`
-/

namespace A146885.P12661417218246353482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238275 (n + 1) - 1

end

end A146885.P12661417218246353482

namespace A146885

/-- `A238275(n+1)-1` -/
def P12661417218246353482.Spec : Prop :=
  ∀ n, P12661417218246353482.a n = A146885 n

end A146885

/-! ## A146885.P7830367934410822054

`A198308(2*n+3)-1`
-/

namespace A146885.P7830367934410822054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198308 (2 * n + 3) - 1

end

end A146885.P7830367934410822054

namespace A146885

/-- `A198308(2*n+3)-1` -/
def P7830367934410822054.Spec : Prop :=
  ∀ n, P7830367934410822054.a n = A146885 n

end A146885

/-! ## A146885.P8649835915124653721

`A034494(n+1)+A083067(n+1)-2`
-/

namespace A146885.P8649835915124653721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 (n + 1) + (A083067 (n + 1) - 2)

end

end A146885.P8649835915124653721

namespace A146885

/-- `A034494(n+1)+A083067(n+1)-2` -/
def P8649835915124653721.Spec : Prop :=
  ∀ n, P8649835915124653721.a n = A146885 n

end A146885

/-! ## A146885.P18073423473767520580

`A199417(n+1)-(A023000(n+1)+2)`
-/

namespace A146885.P18073423473767520580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 (n + 1) - (A023000 (n + 1) + 2)

end

end A146885.P18073423473767520580

namespace A146885

/-- `A199417(n+1)-(A023000(n+1)+2)` -/
def P18073423473767520580.Spec : Prop :=
  ∀ n, P18073423473767520580.a n = A146885 n

end A146885

/-!
# A146887: a(n) = prime(n)*a(n-1) - a(n-2).

The programs for A146887, there is no canonical definition to state claims against.
-/

/-! ## A146887.P7857132267255511430

`a(n-1)*record[∑{p}[n, #]]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146887.P7857132267255511430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - a (n - 2)

end

end A146887.P7857132267255511430

/-! ## A146887.P7407122749649130508

`a(n-1)*A000040(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146887.P7407122749649130508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A000040 n - a (n - 2)

end

end A146887.P7407122749649130508

/-! ## A146887.P7555389285194433427

`(A006093(n)+1)*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146887.P7555389285194433427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A006093 n + 1) * a (n - 1) - a (n - 2)

end

end A146887.P7555389285194433427

/-! ## A146887.P15446030656259197436

`a(n-1)*A008578(n+1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146887.P15446030656259197436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A008578 (n + 1) - a (n - 2)

end

end A146887.P15446030656259197436

/-!
# A146892: For definition see comments lines.

The programs for A146892, there is no canonical definition to state claims against.
-/

/-! ## A146892.P12174473457408492432

`A036038(A146891(n))`
-/

namespace A146892.P12174473457408492432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (A146891 n).toNat

end

end A146892.P12174473457408492432

/-! ## A146892.P2355852028565809306

`A002322(A146891(n)+1)`
-/

namespace A146892.P2355852028565809306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A146891 n + 1).toNat

end

end A146892.P2355852028565809306

/-! ## A146892.P15464154135585870407

`A344969(or(1, A146891(n)))`
-/

namespace A146892.P15464154135585870407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (Int.lor 1 (A146891 n)).toNat

end

end A146892.P15464154135585870407

/-! ## A146892.P15575813815837866995

`A122416(A146891(n)+1)-2`
-/

namespace A146892.P15575813815837866995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (A146891 n + 1).toNat - 2

end

end A146892.P15575813815837866995

/-! ## A146892.P12901561628506078246

`A345910(a(A026323(n+1)))` with `a(0)=1`
-/

namespace A146892.P12901561628506078246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345910 (a (A026323 (n + 1)).toNat).toNat

end

end A146892.P12901561628506078246

/-!
# A146894: Weight distribution of [60,30,12] double circulant code.

The programs for A146894, there is no canonical definition to state claims against.
-/

/-! ## A146894.P13177010351840534671

`C(5*n, 3^(a(n-1)+3))` with `a(0)=1`
-/

namespace A146894.P13177010351840534671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (5 * n) (3 ^ (a (n - 1) + 3))

end

end A146894.P13177010351840534671

/-! ## A146894.P1212228168774785391

`C(5*n, A120126(10*n))`
-/

namespace A146894.P1212228168774785391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) (A120126 (10 * n)).toNat

end

end A146894.P1212228168774785391

/-! ## A146894.P5362071009193233492

`A182435(C(C(n, 5), ∑{e}[n+1, #²]))`
-/

namespace A146894.P5362071009193233492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 (Nat.choose (Nat.choose n 5) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2))

end

end A146894.P5362071009193233492

/-!
# A146895: Weight distribution of [76,38,12] double circulant code.

The programs for A146895, there is no canonical definition to state claims against.
-/

/-! ## A146895.P3429050851059364948

`round(∑[7*2^(n-3)])*A341981(2^n-1)`
-/

namespace A146895.P3429050851059364948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) * A341981 (2 ^ n - 1 + 101)

end

end A146895.P3429050851059364948

/-! ## A146895.P2605262653663903689

`A346421(A212995(n)²)`
-/

namespace A146895.P2605262653663903689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346421 (A212995 n ^ 2).toNat

end

end A146895.P2605262653663903689

/-! ## A146895.P9665085228757528893

`A286385(A146894(n)+2)`
-/

namespace A146895.P9665085228757528893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A146894 n + 2).toNat

end

end A146895.P9665085228757528893

/-!
# A146896: Weight distribution of [88,44,16] double circulant code.

The programs for A146896, there is no canonical definition to state claims against.
-/

/-! ## A146896.P11201780580202879508

`A029224(A264147(n)^4)`
-/

namespace A146896.P11201780580202879508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (A264147 n ^ 4).toNat

end

end A146896.P11201780580202879508

/-!
# A146898: Lower polynomial approximation of Eulerian numbers: t0(n,m)=If[Mod[2*Binomial[n, m], 2] - Mod[Binomial[n, m], 2] == 0, Binomial[n, m]/2, Binomial[n, m] + 1]; p(x,n)=If[n == 0, 1, (x + 1)^n + Sum[t0(n,m)*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146898, there is no canonical definition to state claims against.
-/

/-! ## A146898.P8713704144745012581

`2*A146900(n)-A007318(n)`
-/

namespace A146898.P8713704144745012581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146900 n - A007318 n

end

end A146898.P8713704144745012581

/-! ## A146898.P4266013264660907513

`A152237(n)+and(2, A132046(n))`
-/

namespace A146898.P4266013264660907513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 n + Int.land 2 (A132046 n)

end

end A146898.P4266013264660907513

/-! ## A146898.P12567743422119544715

`A152237(n)+and(2, A132729(n))`
-/

namespace A146898.P12567743422119544715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 n + Int.land 2 (A132729 n)

end

end A146898.P12567743422119544715

/-! ## A146898.P11287033389779993037

`A152237(n)+and(2, A143200(n))`
-/

namespace A146898.P11287033389779993037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 n + Int.land 2 (A143200 n)

end

end A146898.P11287033389779993037

/-! ## A146898.P13970972981619356704

`A152237(n)+and(2, A152236(n))`
-/

namespace A146898.P13970972981619356704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 n + Int.land 2 (A152236 n)

end

end A146898.P13970972981619356704

/-! ## A146898.P5265727097140697075

`2*A146900(n)-(A014473(n)+1)`
-/

namespace A146898.P5265727097140697075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146900 n - (A014473 n + 1)

end

end A146898.P5265727097140697075

/-! ## A146898.P5555516768780667480

`A005843(A146900(n))-A007318(n)`
-/

namespace A146898.P5555516768780667480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A146900 n).toNat - A007318 n

end

end A146898.P5555516768780667480

/-! ## A146898.P10657377367530137663

`A004273(A146900(n))-A014473(n)`
-/

namespace A146898.P10657377367530137663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A146900 n).toNat - A014473 n

end

end A146898.P10657377367530137663

/-! ## A146898.P7238337319356771681

`A146880(n)+A152237(n)-A173740(n)`
-/

namespace A146898.P7238337319356771681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146880 n + (A152237 n - A173740 n)

end

end A146898.P7238337319356771681

/-! ## A146898.P12012425599587359609

`A132046(n)+A173740(n)%A146880(n)`
-/

namespace A146898.P12012425599587359609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + Int.tmod (A173740 n) (A146880 n)

end

end A146898.P12012425599587359609

/-!
# A146899: An additive term polynomial as a stand-alone polynomial: t(n,m) = binomial(n, m)/2 if binomial(n, m) is even, binomial(n, m) + 1 otherwise; p(x,n) = (Sum_{m=1..n-1} t(n, m)*x^m*(1 + x^(n - 2*m)))/(2*x).

The programs for A146899, there is no canonical definition to state claims against.
-/

/-! ## A146899.P9084952531848402726

`A097362(A014430(n))`
-/

namespace A146899.P9084952531848402726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A014430 n).toNat

end

end A146899.P9084952531848402726

/-! ## A146899.P12918938529724639103

`A131508(A028327(n)+1)`
-/

namespace A146899.P12918938529724639103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A028327 n + 1).toNat

end

end A146899.P12918938529724639103

/-! ## A146899.P17412589553628215494

`A065423(A014430(n)+3)`
-/

namespace A146899.P17412589553628215494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A014430 n + 3).toNat

end

end A146899.P17412589553628215494

/-! ## A146899.P15864755922236983085

`A097362(floor(sqrt(A065420(n))))`
-/

namespace A146899.P15864755922236983085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (Int.sqrt (A065420 n)).toNat

end

end A146899.P15864755922236983085

/-! ## A146899.P18249308670847586637

`A097362(round(sqrt(A065420(n))))`
-/

namespace A146899.P18249308670847586637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (SequenceMachineLib.roundAway (Real.sqrt (A065420 n : ℝ))).toNat

end

end A146899.P18249308670847586637

/-! ## A146899.P4855978812247673341

`A065423(A014410(n+2)+2)`
-/

namespace A146899.P4855978812247673341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A014410 (n + 2) + 2).toNat

end

end A146899.P4855978812247673341

/-! ## A146899.P743478826761124628

`A097362(A014410(n+2)-1)`
-/

namespace A146899.P743478826761124628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A014410 (n + 2) - 1).toNat

end

end A146899.P743478826761124628

/-! ## A146899.P12628446568359651629

`A066104(A014430(n)+1)/2`
-/

namespace A146899.P12628446568359651629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066104 (A014430 n + 1).toNat : ℚ) / 2

end

end A146899.P12628446568359651629

